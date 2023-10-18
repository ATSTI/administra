#-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, date, timedelta
import time
from dateutil import relativedelta

class finance_rem_config(osv.Model):
    _name = "finance.rem.config"

    _columns = {
        "nbr_mois_c": fields.integer("Número de meses no contrato"),
        "nbr_mois_g": fields.integer(u"Número de meses para a projeção geral"),
        "show_all": fields.boolean(u"Projeção a partir da data de criação do contrato")
    }

class finance_rem(osv.Model):
    _name = "finance.rem"
    _description = "Regras de compensação de contratos de financiamento"

    _columns = {
        "name": fields.char("Nome regra", size=128, required=True),
        "description": fields.text("Descrição"),
        "line_ids": fields.one2many("finance.rem.line", "rem_id", "Linhas cálculo"),
        "contract_ids": fields.one2many("finance.contract", "rem_id", "Contratos")
    }
class finance_rem_line(osv.Model):
    _name = "finance.rem.line"
    _description = "Linhas regras de remuneração"

    def onchange_based_on(self, cr, uid, ids, based_on, context=None):
        res = {}
        if based_on == "frais_vers":
            res['rem_base'] = 'unique'
            res['calcul'] = 'pourcent'
        elif based_on == 'frais_contrat':
            res['rem_base'] = 'unique'
            res['calcul'] = 'pourcent'
            res['type'] = 'reversement_c'
            res['depart'] = 'effet'
        return {'value': res}
    
    _columns = {
        "name": fields.char("Nome", size=128, required=True),
        "description": fields.text("Descrição"),
        "type": fields.selection([('prime', 'Prêmio'),('reversement_c',u'Reembolso à empresa'),('reversement_co', u'Pagamento comissão')], "Tipo", required=True),
        "based_on": fields.selection([('prime','Prêmio'), ('vers','Pagamentos'), ('frais_contrat', 'Gratuito'), ('frais_vers', 'Livre de pagamento')], u"Base de cálculo", required=True),
        "rem_base": fields.selection([('unique', u'Único'), ('mensuel', "Mensal"), ("annuel", "Anual")], u"Périodo base", required=True),
        "calcul": fields.selection([('pourcent', 'Porcentagem'), ('fixe',"Fixo"), ('age', 'Idade')], "Modo de cálculo", required=True),
        #TODO: Tester que le pourcentage ou la somme des pourcentage est inferieur à 100
        "pourcent": fields.float("Porcentagem"),
        "montant_fixe": fields.float("Total Fixo"),
        "depart": fields.selection([('effet', "Data assinatura"), ('month', u"Efetivo Número de meses da data de vigência")], "Data da aplicação", required=True),
        "delai": fields.integer("Meses a partir da data efetiva"),
        "date_limit": fields.integer("Limite de dia para pagamento"),
        #TODO: Tester que le jour est inférieur à 31
        "date_rem": fields.integer("Dia pagamento"),
        "duree": fields.integer("Duração em meses (0 = ilimitado)"),
        "duree_an": fields.integer("Duração em anos"),
        "age": fields.one2many("finance.rem.age", "line_id", "Percentagem baseada em idade"),
        "facture": fields.boolean("Editar a fatura"),
        "rem_id": fields.many2one("finance.rem", "Remuneração")
    }

    _defaults = {
        "duree": 0,
        "depart": 'effet',
        "type": "prime",
        "duree_an": 1,
        "date_rem": 15,
        "calcul": 'pourcent'

    }
class finance_rem_age(osv.Model):
    _name = "finance.rem.age"

    #TODO: Permettre el calcul de l'age sur le millésime ou le réel. Prévoir des options pour le réglage
    #TODO: Permettre de choisir la date de base du calcul
    _columns = {
        "age": fields.integer("Idade limite", required=True),
        "pourcent": fields.float(u"Percentagem da remuneração", required=True),
        "line_id": fields.many2one("finance.rem.line", u"Linha de remuneração")
    }

    _order = "age"


class finance_contract_vers(osv.Model):
    _inherit = "finance.contract.vers"

    _columns = {
        "libre": fields.float("Taxas fixas"),
    }

class finance_projection(osv.Model):
    _name = "finance.projection"

    def _get_total(self, cr, uid, ids, name, args, context=None):
        res = {}
        for proj in self.browse(cr, uid, ids, context=context):
            res[proj.id] = proj.montant - proj.montant_c - proj.montant_r
        return res

    _columns = {
        "contract_id": fields.many2one("finance.contract", "Contrato"),
        "date": fields.date("Data"),
        "montant": fields.float("Valor"),
        "montant_r": fields.float(u"Voltou para a empresa"),
        "montant_c": fields.float(u"Voltou para o representante"),
        "total": fields.function(_get_total, type="float", string="Total", store=True)
    }

class finance_contract(osv.Model):
    _inherit = "finance.contract"

    #TODO: séparation inutile des périodes de caclul mensuelles ou annuelles. Transformer duree et duree_an en periods
    def _get_projection(self, cr, uid, ids, name, args, context=None):
        res = {}
        proj_obj = self.pool.get("finance.projection")
        for contract in self.browse(cr, uid, ids, context=context):
            if contract.date_souscription is False:
                self.write(cr, uid, [contract.id], {'date_souscription': contract.date_effet}, context=context)

            unlink_ids = proj_obj.search(cr, uid, [('contract_id','=',contract.id)], context=context)
            proj_obj.unlink(cr, uid, unlink_ids, context=context)

            #Calcul de la date d'application de base de la règle de calcul
            d_effet = datetime.strptime(contract.date_effet, "%Y-%m-%d")
            d_sous = contract.date_souscription and datetime.strptime(contract.date_souscription, "%Y-%m-%d") or d_effet


            if contract.rem_id:
                for line in contract.rem_id.line_ids:

                    #Placement de la date d'effet au jour de paiement du mois suivant
                    d_eff = datetime(d_effet.year, d_effet.month, line.date_rem) + relativedelta.relativedelta(months=+1)

                    #Placement de la date de souscription (première date de paiement)
                    d_sou = datetime(d_sous.year, d_sous.month, line.date_rem) + relativedelta.relativedelta(months=+1)

                    if d_sous.day > line.date_limit :
                        d_sou = datetime(d_sous.year, d_sous.month, line.date_rem) + relativedelta.relativedelta(months=+2)

                    duree = (line.rem_base == 'mensuel' and line.duree) or (line.rem_base == 'annuel' and line.duree_an)
                    if duree == 0:
                        duree = 24 + ((datetime.today() - d_eff).days / 30)

                    if line.rem_base == 'unique':
                        duree = 1
                    i = 0
                    while (i < duree):
                        # Calcul du montant
                        montant = 0
                        montant_c = 0
                        montant_r = 0
                        if line.calcul == 'fixe':
                            montant = line.montant_fixe
                        elif line.based_on == 'prime':
                            c = contract.prim
                            if line.rem_base == 'annuel':
                                c = c * 12
                            if line.calcul == 'pourcent':
                                montant = c * line.pourcent / 100
                            elif line.calcul == "age":
                                age_obj = self.pool.get("finance.rem.age")
                                birthdate = datetime.strptime(contract.birthdate, "%Y-%m-%d")
                                age = d_effet.year - birthdate.year
                                #Calcul fin de l'age : non applicable pour différence de millésime
                                #if birthdate.month < d_effet.month or (birthdate.month == d_effet.month and birthdate.day < d_effet.day):
                                #    age = age + 1
                                age_l = age_obj.search(cr, uid, [('age','>=',age),('line_id','=',line.id)], context=context)
                                p_age = 0
                                if len(age_l) > 0:
                                    p_age = age_obj.browse(cr, uid, age_l[0], context=context).pourcent
                                montant = p_age * c / 100
                        elif line.based_on == 'frais_contrat' and line.type == 'reversement_c':
                            montant_r = contract.frais_libres * line.pourcent / 100

                        d = d_eff
                        if i == 0 and d_eff < d_sou:
                            d = d_sou
                        if line.depart == 'effet':
                            if line.rem_base == 'annuel':
                                d = d + relativedelta.relativedelta(years=+i)
                            elif line.rem_base == 'mensuel':
                                d = d + relativedelta.relativedelta(months=+i)

                        if line.depart == 'month':
                            d = d_eff
                            if i == 0 and d + relativedelta.relativedelta(months=+line.delai) < d_sou:
                                d = d_sou
                            if line.rem_base == 'annuel':
                                d = d + relativedelta.relativedelta(years=+i, months=+(i + line.delai - 1))
                            elif line.rem_base == 'mensuel':
                                d = d + relativedelta.relativedelta(months=+(i + line.delai - 1))

                        if d >= datetime.today():
                            date_paiement = d.strftime("%Y-%m-%d")

                            s_proj = proj_obj.search(cr, uid, [('contract_id','=',contract.id), ('date','=',date_paiement)], context=context)
                            if len(s_proj) == 0:
                                vals = {
                                    "contract_id": contract.id,
                                    "date": date_paiement,
                                    "montant": montant,
                                    "montant_r": montant_r,
                                    "montant_c": montant_c
                                }
                                proj = proj_obj.create(cr, uid, vals, context=context)
                            else:
                                proj_ex = proj_obj.browse(cr, uid, s_proj[0], context=context)
                                if montant != 0:
                                    proj_obj.write(cr, uid, s_proj[0], {'montant': montant + proj_ex.montant})
                                if montant_c != 0:
                                    proj_obj.write(cr, uid, s_proj[0], {'montant_c': montant_c + proj_ex.montant_c})
                                if montant_r != 0:
                                    proj_obj.write(cr, uid, s_proj[0], {'montant_r': montant_r + proj_ex.montant_r})

                        i += 1

            res[contract.id] = proj_obj.search(cr, uid, [('contract_id','=',contract.id)], context=context)
        return res

    _columns = {
        "frais_libres": fields.float("Taxas fixas"),
        "rem_id": fields.many2one("finance.rem", u"Regra de remuneração"),
        'projection': fields.function(_get_projection, type="one2many", obj="finance.projection", store=False),
    }


