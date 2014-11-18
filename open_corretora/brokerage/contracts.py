 #-*- coding: utf-8 -*-
##############################################################################
#
#    OpenERP, Open Source Management Solution
#    Copyright (C) 2004-2010 Tiny SPRL (<http://tiny.be>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

from openerp.osv import fields, osv
import time


class finance_fond(osv.Model):
    _name = "finance.fond"

    _columns = {
        'name': fields.char("Fundo de Investimento", size=128, required=True),
        'description': fields.text("Descrição"),
        'isin': fields.char("Número", size=64),
        "valeurs": fields.one2many("finance.fond.historique", "fond_id", "Valor")
    }

class finance_fond_historique(osv.Model):
    _name = "finance.fond.historique"

    _columns = {
        "date": fields.date("Data", required=True),
        "valeur": fields.float("Valor", required=True),
        "fond_id": fields.many2one("finance.fond", "Fundo", required=True)
    }

class finance_fond_contract(osv.Model):
    _name = "finance.fond.contract"


    _columns = {
        "contract_id": fields.many2one("finance.contract", "Contract", required=True),
        "fond_id": fields.many2one("finance.fond", "Fund", required=True),
        "pourcentage": fields.integer("Percentage distribution"),
        "isin": fields.related("fond_id", "isin", type="char", size=64, string="ISIN code", store=False),
        "sequence": fields.integer("Sequence")
    }

    _defaults = {
        "sequence": 10
    }

    _order = "sequence"

class finance_contract_type(osv.Model):
    _name = "finance.contract.type"

    def write(self, cr, uid, ids, vals, context=None):
        res = super(finance_contract_type, self).write(cr, uid, ids, vals, context=context)
        if 'multiple_vers' in vals:
            model_pool = self.pool.get("finance.contract.model")
            models = model_pool.search(cr, uid, [('type_id', '=', ids[0])], context=context)
            model_pool.write(cr, uid, models, {'multiple_vers': vals['multiple_vers']}, context=context)
        return res

    _columns = {
        'name': fields.char('Nome', size=64),
        'birthdate_req': fields.boolean('Obrigatório Data Nascimento'),
        'adherent_req': fields.boolean("Obrigatório assinatura"),
        'fond_req': fields.boolean('Obrigatório Fundo de Investimento'),
        'secu_req': fields.boolean('CPF/CNPJ Obrigatório'),
        'bene_req': fields.boolean('Obrigatório Beneficiário'),
        'contract_ids': fields.one2many('finance.contract.model', 'type_id', 'Produto'),
        'multiple_vers': fields.boolean("Aceita pagamento parcelado")
    }

class finance_contract_risk(osv.Model):
    _name = "finance.contract.risk"

    _columns = {
        'name': fields.char('Nome', size=128, required="1"),
        'description': fields.text('Descrição'),
        'model_id': fields.many2one('finance.contract.model', "Produtos relacionados", required="1")
    }


class finance_contract_model(osv.Model):
    _name="finance.contract.model"
    _inherit = ['mail.thread', 'ir.needaction_mixin']

    def onchange_type_id(self, cr, uid, ids, type_id, context=None):
        if type_id:
            type = self.pool.get('finance.contract.type').browse(cr, uid, type_id, context)
            return {
                'value': {
                        'multiple_vers': type.multiple_vers,
                    }
            }
        return {}

    def onchange_vers(self, cr, uid, ids, vers, type_id, context=None):
        res = True
        if vers:
            type = self.pool.get('finance.contract.type').browse(cr, uid, type_id, context)
            if type.multiple_vers == vers :
                res = False
        return {
            'value': {
                    'show_vers_message': res,
                }
        }

    _columns = {
        'name': fields.char('Nome', required=True),
        'company_id': fields.many2one('res.partner', 'Empresa', required=True),
        'supplier_id': fields.many2one('res.partner', 'Fornecedor', required=True),
        'risk_ids': fields.one2many('finance.contract.risk', 'model_id', 'Opções'),
        'type_id': fields.many2one('finance.contract.type', 'Tipo de produto', required=True),
        'description': fields.text('Descrição'),
        'sale_des': fields.text('Instruções Vendas'),
        'multiple_vers': fields.boolean("Aceita parcelamento"),
        'show_vers_message': fields.boolean("Exibir Mensagem")
    }

class finance_contract_adherent(osv.Model):
    _name = "finance.contract.adherent"

    _columns = {
        "name": fields.char("Nome", size=128, required=True),
        "firstname": fields.char("Firstname", size=128, required=True),
        "birthdate": fields.char('Birthdate', required=True),
        "contact_id": fields.many2one('res.partner', "Contact", domain="[('supplier', '=', False)]"),
        "contract_id": fields.many2one('finance.contract', "Contract"),
        'sequence': fields.integer("Sequence"),
        'numero_secu': fields.char("Security Social number", size=128),
        'civilite': fields.selection([('mr', 'Monsieur'),('mme', 'Madame'),('mlle','Mademoiselle')], "Title"),
    }

    _order = "sequence"

class finance_contract(osv.Model):
    _name = "finance.contract"
    _description = "Contrat"
    _inherit = ['mail.thread', 'ir.needaction_mixin']

    def compose_name(self, cr, uid, ids, partner_id, contract_id, context):
        partner = self.pool.get('res.partner').browse(cr, uid, partner_id, context)
        contract = self.pool.get('finance.contract.model').browse(cr, uid, contract_id)

        name = partner.name + " "
        if partner.firstname:
            name = name + partner.firstname
        name = name + " (" + contract.name + ")"
        return name

    def onchange_name(self, cr, uid, ids, partner_id, contract_id, context=None):
        res = {}
        res['value'] = {}
        if partner_id:
            partner = self.pool.get('res.partner').browse(cr, uid, partner_id, context=context)

            res['value']['birthdate'] = partner.birthdate_n
            if partner.numero_secu :
                numero = partner.numero_secu.replace(" ", "").replace(".", "")
                res['value']['numero_secu'] = '{0} {1} {2} {3} {4} {5} {6}'.format(numero[0:1], numero[1:3], numero[3:5], numero[5:7], numero[7:10], numero[10:13], numero[13:])
            else :
                res['value']['numero_secu'] = False
        if partner_id and contract_id:
            res['value']['name'] = self.compose_name(cr, uid, ids, partner_id, contract_id, context)


        return res

    def onchange_contract(self, cr, uid, ids, partner_id, contract_id, context=None):
        res = {}
        if partner_id and contract_id:
            res =  self.onchange_name(cr, uid, ids, partner_id, contract_id, context)

        if contract_id:
            contract = self.pool.get('finance.contract.model').browse(cr, uid, contract_id, context)
            if not 'value' in res:
                res['value'] = {}
            if contract.type_id.adherent_req is True:
                res['value']['adherent_req'] = True
            else:
                res['value']['adherent_req'] = False
            if contract.type_id.fond_req is True:
                res['value']['fond_req'] = True
            else:
                res['value']['fond_req'] = False
            if contract.type_id.secu_req is True:
                res['value']['secu_req'] = True
            else:
                res['value']['secu_req'] = False
            if contract.type_id.birthdate_req is True:
                res['value']['birthdate_req'] = True
            else:
                res['value']['birthdate_req'] = False

            res['value']['allow_vers'] = contract.multiple_vers
            res['value']['company_id'] = contract.company_id.id
            res['value']['supplier_id'] = contract.supplier_id.id
            return res

        else:
            return {}

    def set_draft(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state': 'draft'}, context=context)

    def set_open(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state': 'open'}, context=context)


    def r_wizard_open(self, cr, uid, ids, context):
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'target': 'new',
            'context': context,
            'res_model': 'finance.contract.rachat',
            'name': context['w_name']
        }

    def set_rachat(self, cr, uid, ids, context=None):
        if context is None:
            context = {}
        context['default_contract_id'] = ids[0]
        context['default_act_rachat'] = True
        context['default_act_res'] = False
        context['w_name'] = "Buyback contract"
        context['form_view_ref'] = "view_contract_rachat_form"
        return self.r_wizard_open(cr, uid, ids, context)

    def set_resilie(self, cr, uid, ids, context=None):
        if context is None:
            context = {}
        context['default_contract_id'] = ids[0]
        context['default_act_res'] = True
        context['default_act_rachat'] = False
        context['w_name'] = "Contract termination"
        context['form_view_ref'] = "view_contract_res_form"
        return self.r_wizard_open(cr, uid, ids, context)

    def set2_rachat_c(self, cr, uid, ids, context=None):
        raise osv.except_osv('', 'Test')
        if context is None:
            context = {}

        contract = self.browse(cr, uid, ids[0], context)

        context['default_contract_id'] = ids[0]
        context['default_date_dem'] = contract.res_dated and contract.res_dated or False
        context['default_memo'] = contract.res_memo and contract.res_memo or ''
        context['default_motif'] = contract.res_reason and contract.res_reason or ''
        context['default_act_rachat'] = True
        context['default_act_res'] = False
        context['w_name'] = "Complete the buyback of contract"
        context['form_view_ref'] = "view_contract_rachat_form"

        return self.r_wizard_open(cr, uid, ids, context)

    def save_rachat(self, cr, uid, contract_id, vals={}, context=None):
        if vals['rachat'] is True:
            if ('res_date' in vals and vals['res_date'] is False) or 'res_date' not in vals:
                vals['state'] = 'rachat_c'
            else:
                vals['state'] = 'rachat'
        if vals['res'] is True:
            vals['state'] = 'resilie'

        return self.write(cr, uid, [contract_id], vals, context=context)



    def add_fond(self, cr, uid, ids, context=None):
        if context is None:
            context = {}

        context['default_contract_id'] = ids[0]
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'target': 'new',
            'context': context,
            'res_model': 'finance.add.fond',
            'name': 'Add a fund to the contract'
        }

    def add_adherent(self, cr, uid, ids, context=None):
        if context is None:
            context = {}

        contract = self.browse(cr, uid, ids[0], context=context)

        context['default_contract_id'] = ids[0]
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'target': 'new',
            'context': context,
            'res_model': 'finance.add.adherent',
            'name': 'Add a subscriber'
        }

    def add_versement(self, cr, uid, ids, context=None):
        if context is None:
            context = {}

        context['default_contract_id'] = ids[0]
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'target': 'new',
            'context': context,
            'res_model': 'finance.add.vers',
            'nodestroy': True,
            'name': 'Add a payment'
        }

    def set_waiting(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state': 'waiting'}, context=context)

    #SUPPRESION : A TESTER
    #def set_rachat_c(self, cr, uid, ids, context=None):
    #    return self.write(cr, uid, ids, {'state': 'rachat_c'}, context=context)

    def set_cancelled(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state': 'cancelled'}, context=context)

    def write(self, cr, uid, ids, vals, context=None):
        if isinstance(ids, int):
            ids = [ids]

        obj = self.browse(cr, uid, ids[0], context)
        vals['name'] = self.compose_name(cr, uid, ids, obj.partner_id.id, obj.contract_id.id, context)
        contract = self.pool.get('finance.contract.model').browse(cr, uid, obj.contract_id.id, context)
        vals['company_id'] = contract.company_id.id
        vals['supplier_id'] = contract.supplier_id.id
        return super(finance_contract, self).write(cr, uid, ids, vals, context)

    def _get_arg_req(self, cr, uid, ids, name, args, context=None):
        res = {}
        for id in ids:
            record = self.browse(cr, uid, id, context)
            contract_model = self.pool.get('finance.contract.model').browse(cr, uid, record.contract_id.id, context)
            contract_type = self.pool.get('finance.contract.type').browse(cr, uid, contract_model.type_id.id, context)
            if name == "secu_req":
                r = contract_type.secu_req
            elif name == "allow_vers":
                r = contract_model.multiple_vers
            elif name == "birthdate_req":
                r = contract_type.birthdate_req
            elif name == "adherent_req":
                r = contract_type.adherent_req
            elif name == "fond_req":
                r = contract_type.fond_req
            elif name == "bene_req":
                r = contract_type.bene_req
            res[id] = r
        return res

    _columns = {
        'name': fields.char('Contrato', size=256),
        'saleman_id': fields.many2one('res.users', "Representante"),
        'partner_id': fields.many2one('res.partner', 'Cliente', required=True),
        'supplier_id': fields.many2one('res.partner', 'Fornecedor'),
        'contract_id': fields.many2one('finance.contract.model', 'Produto', required=True),
        'company_id': fields.many2one('res.partner', 'Empresa'),
        'number': fields.char("Número Contrato", size=64),
        'risk_id': fields.many2one('finance.contract.risk', 'Option'),
        'prim': fields.float('Prime', required=True),
        'frequency': fields.selection([('an', 'Anual'), ('men', 'Mensal'),('tri', 'Trimestral'), ('sem', 'Semestral'), ('uni', 'Unico'), ('ini', 'Primeiro Pagamento')], 'Frequencia', required=True),
        'date_effet': fields.date('Date', required=True),
        'date_souscription': fields.date("Data contrato"),
        'duree': fields.char("Duração (ano)"),
        'allow_vers': fields.function(_get_arg_req, string="Pagamento Permitido", type="boolean", store=False),
        'versement_ids': fields.one2many('finance.contract.vers', 'contract_id', 'Pagamentos'),
        'birthdate': fields.date('Birthdate'),
        'numero_secu': fields.char("Social security number", size=64),
        'fond_ids': fields.one2many('finance.fond.contract', 'contract_id', 'Funds'),
        'adherent_ids': fields.one2many('finance.contract.adherent', 'contract_id', "subscribers"),
        'secu_req': fields.function(_get_arg_req, string="Security Social number required", type="boolean", store=False),
        'bene_req': fields.function(_get_arg_req, string="Recipiens required", type="boolean", store=False),
        'birthdate_req': fields.function(_get_arg_req, string='Birthdate required', type="boolean", store=False),
        'adherent_req': fields.function(_get_arg_req, string="Subscriber required", type="boolean", store=False),
        'fond_req': fields.function(_get_arg_req, string='Funds required', type="boolean", store=False),
        'res_reason': fields.text('Terminaison reason'),
        'res_memo': fields.text('Memo'),
        'res_date': fields.date('Terminaison date'),
        'res_dated': fields.date('date of redemption request'),
        'clause': fields.text('Clause'),
        'state': fields.selection([('draft', 'Draft'), ('waiting', 'Awaiting effects'), ('open', 'Opened'), ('rachat_c', 'Current buyback'), ('rachat', 'Buyback'), ('resilie', 'Terminated'), ('canceled', 'Cancelled')], 'State of contract')
    }

    _defaults = {
        'state': 'draft',
        'frequency': 'men',
        'date_effet': fields.datetime.now,
        'birthdate_req': False,
        'secu_req': False,
        'clause': "My spouse not legally separated, if my children born or unborn, in equal shares to my heirs default."
    }
finance_contract()

class finance_contract_vers(osv.Model):
    _name = "finance.contract.vers"

    _columns = {
        'date': fields.date('Date', required=True),
        'amount': fields.integer('Amount', required=True),
        'reason': fields.char('Motif', size=128),
        'description': fields.text('Additional informations'),
        'contract_id': fields.many2one('finance.contract', 'Contract', required=True)
    }

    _defaults = {
        'date': lambda self, cr, uid, context={}: context.get('date', time.strftime("%Y-%m-%d %H:%M:%S")),
    }

finance_contract_vers()
