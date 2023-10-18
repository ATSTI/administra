 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, timedelta
from openerp import tools
#import pdb

class magellanes_work_type(osv.Model):
    _name = "magellanes.work.type"

    _columns = {
        'name': fields.char("Nom", size=64, required=True),
        'description': fields.text("Description"),
        'work_ids': fields.many2many("magellanes.work", "mag_work_type_rel", "type_id", "work_id", "Metiers lies")
    }
magellanes_work_type()

class magellanes_work(osv.Model):
    _name = "magellanes.work"

    def write(self, cr, uid, ids, vals, context=None):
        res = super(magellanes_work, self).write(cr, uid, ids, vals, context=context)
        #if 'update' not in context:
        #    work = self.browse(cr, uid, ids, context=context)
        #    context['update'] = True
        #    self.write(cr, uid, ids, {'type_count': len(work[0].type_ids)}, context=context)
        return res

    _columns = {
        'name': fields.char("Nom", size=64, required=True),
        'description': fields.text('Description'),
        'type_ids': fields.many2many("magellanes.work.type", "mag_work_type_rel", "work_id", "type_id", "Type"),
        'partner_ids': fields.one2many('res.partner', 'work', 'Clients associes'),
        'type_count': fields.integer('Nombre de types')
    }
magellanes_work()

class magellanes_adress(osv.Model):
    _name = "magellanes.adress"

    def onchange_phone(self, cr, uid, ids, phone, name, context=None):
        res = {}
        if phone :
            phone = phone.replace(" ", "").replace(".", "")
            res[name] = '{0} {1} {2} {3} {4} {5}'.format(phone[0:2], phone[2:4], phone[4:6], phone[6:8], phone[8:10])
        return {'value': res}

    _columns = {
        'type': fields.selection([('home', 'Home'),('work','Work'),('other','Other')], 'Type'),
        'type_t': fields.char(u"Tipo de Endereço", size=128),
        'street1': fields.char("Adresse 1", size=128),
        'street2': fields.char("Adresse 2", size=128),
        'zip': fields.char("Cep", size=8),
        'city': fields.char("City", size=64),
        'phone': fields.char("Telephone", size=20),
        'fax': fields.char("Fax", size=20),
        'mobile': fields.char("Portable", size=20),
        'email': fields.char("email", size=64),
        'partner_id': fields.many2one('res.partner', "Representante Familia"),
        'sequence': fields.integer('Sequence'),
        'country_id': fields.many2one('res.country', 'Country'),
    }

    _order = 'sequence'
magellanes_adress()

class magellanes_family_rel(osv.Model):
    _name = "magellanes.family.rel"

    def add_relation(self, cr, uid, vals, context=None):
        new_rel = self.create(cr, uid, {'name': vals['name']}, context)
        miror = self.create(cr, uid, {'name': vals['miror_name'], 'miror_rel': new_rel}, context)
        self.write(cr, uid, [new_rel], {'miror_rel': miror}, context)

        return new_rel

    _columns = {
        "name": fields.char("Nom de la relation", required=True),
        "miror_rel": fields.many2one(
            'magellanes.family.rel',
            "Relation correspondante",
            help=u"La relation dont hérite la personne ciblée. Ex: parent correspond à la relation enfant.",
            on_delete="cascade"
        )
    }

class magellanes_partner_family_rel(osv.Model):
    _name = "magellanes.partner.family.rel"

    def create(self, cr, uid, vals, context=None):
        res = super(magellanes_partner_family_rel, self).create(cr, uid, vals, context)

        if vals and 'updating_rel' not in context:
            vals['article'] = 'de'
            vals['verbe'] = 'Est'

            obj = self.browse(cr, uid, res, context=context)
            exist = self.search(cr, uid, [('partner_id','=',obj.cible_id.id), ('cible_id', '=', obj.partner_id.id)], context=context)
            context['updating_rel'] = True
            values = {
                'partner_id': obj.cible_id.id,
                'rel_id': obj.rel_id.miror_rel.id,
                'cible_id': obj.partner_id.id,
                'article': obj.article,
                'verbe': obj.verbe
            }
            self.create(cr, uid, values, context=context)
        return res

    def write(self, cr, uid, ids, vals, context=None):
        if isinstance(ids, (int, long)):
            ids = [ids]

        res = super(magellanes_partner_family_rel, self).write(cr, uid, ids, vals, context)

        if vals and 'updating_rel' not in context:
            vals['article'] = 'de'
            vals['verbe'] = 'Est'

            obj = self.browse(cr, uid, ids[0], context=context)
            exist = self.search(cr, uid, [('partner_id','=',obj.cible_id.id), ('cible_id', '=', obj.partner_id.id)], context=context)
            context['updating_rel'] = True
            if len(exist) > 0:
                self.write(cr, uid, exist[0], {'rel_id': obj.rel_id.miror_rel.id}, context=context)
            else:
                values = {
                    'partner_id': obj.cible_id.id,
                    'rel_id': obj.rel_id.miror_rel.id,
                    'cible_id': obj.partner_id.id,
                    'article': obj.article,
                    'verbe': obj.verbe
                }
                self.create(cr, uid, values, context=context)
        return res

    def unlink(self, cr, uid, ids, context={}):
        if 'delete_miror' not in context:
            for rel in self.browse(cr, uid, ids, context=context):
                context2 = {}
                context2['delete_miror'] = True
                cible = self.search(cr, uid, [('partner_id','=',rel.cible_id.id), ('cible_id', '=', rel.partner_id.id)], context=context)
                self.unlink(cr, uid, cible, context2)
        return super(magellanes_partner_family_rel, self).unlink(cr, uid, ids, context)

    _columns = {
        "partner_id": fields.many2one('res.partner', "Parceiro", required=True),
        "rel_id": fields.many2one('magellanes.family.rel', "Parentesco", required=True),
        "cible_id": fields.many2one('res.partner', 'Familiar', required=True),
        "email": fields.related('cible_id', 'email', type='char', string='Email'),
        "cpf": fields.related('cible_id', 'cnpj_cpf', type='char', string='CPF'),
        "birthdate": fields.related('cible_id', 'birthdate_n', type='date', string='Aniversario'),
        "remarques": fields.char('Anotações', size=256),
        "article": fields.char(' ', size=16),
        "verbe": fields.char(' ', size=5),
    }

    _defaults = {
        "article": "de",
        "verbe": "Sou"
    }

class res_partner(osv.Model):
    _inherit = 'res.partner'
    _name = "res.partner"

    def onchange_work(self, cr, uid, ids, work_id, context=None):
        if not work_id :
            return {'value': {'type_count': 0}}

        work = self.pool.get('magellanes.work').browse(cr, uid, work_id, context=context)

        if work.type_count == 0 :
            return {'value': {'type_count': 0}, 'warning': {'title':'Attention', 'message':"Le type est manquant. Veuiller le renseigner pour cet emploi."}}

        cr.execute("SELECT type_id FROM mag_work_type_rel WHERE work_id = %s" % work_id)
        res = cr.fetchall()

        if work.type_count == 1:
            return {'value': {'type_count': work.type_count, 'work_type': res[0]}}
        if work.type_count > 1:
            return {'value': {'type_count': work.type_count}, 'domain': {'work_type': [('id', 'in', res)]}}

    def onchange_phone(self, cr, uid, ids, phone, name, context=None):
        res = {}
        if phone :
            phone = phone.replace(" ", "").replace(".", "")
            res[name] = '{0} {1} {2} {3} {4}'.format(phone[0:2], phone[2:4], phone[4:6], phone[6:8], phone[8:])


        return {'value': res}

    def onchange_secu(self, cr, uid, ids, numero, context=None):
        res = {}
        if numero :
            numero = numero.replace(" ", "").replace(".", "")
            res['numero_secu'] = '{0} {1} {2} {3} {4} {5} {6}'.format(numero[0:1], numero[1:3], numero[3:5], numero[5:7], numero[7:10], numero[10:13], numero[13:])
        return {'value': res}

    def name_get(self, cr, uid, ids, context={}):
        if isinstance(ids, (int, long)):
            ids = [ids]
        res = []
        for record in self.browse(cr, uid, ids, context=context):
            dic = [(u"é", "e"), (u"è", "e"), (u"ê", "e"), (u"ë", "e"), (u"à", "a"), (u"ô", "o"), (u"ö", "o"), (u"'", "_"), (u"û", "u"), (u"ç", "c"), (u"î", "i"), (u"ï", "i")]
            name = record.name
            for i, j in dic:
                name = name.replace(i, j)
            if record.firstname is not False:
                firstname = record.firstname
                for i, j in dic:
                    firstname = firstname.replace(i, j)
                res.append((record.id, "%s %s" % (name, firstname)))
            else :
                res.append((record.id, name))
        return res

    def create(self, cr, uid, vals, context=None):
        if context is None:
            context = {}
        res = super(res_partner, self).create(cr, uid, vals, context=context)
        self.create_prospect(cr, uid, res, context=context)
        return res

    def create_prospect(self, cr, uid, ids, context={}):
        if isinstance(ids, (int, long)):
            ids = [ids]
        if context is None:
            context = {}

        for partner in self.browse(cr, uid, ids, context=context):
            if partner.is_prospect is True:
                exist = self.pool.get("crm.lead").search_count(cr, uid, [('partner_id','=',partner.id)], context=context)
                if exist == 0:
                    context['default_phone'] = partner.phone
                    context['default_mobile'] = partner.mobile
                    context['default_email'] = partner.email
                    context['default_fax'] = partner.fax
                    context['default_street'] = partner.street
                    context['default_street2'] = partner.street2
                    context['default_zip'] = partner.zip
                    context['default_city'] = partner.city
                    context['default_country_id'] = partner.country_id.id
                    #Creation d'une opportunite
                    self.make_opportunity(cr, uid, [partner.id], partner.name, context=context)
        return True

    def write(self, cr, uid, ids, vals, context=None):
        if isinstance(ids, (int, long)):
            ids = [ids]

        res = super(res_partner, self).write(cr, uid, ids, vals, context=context)

        #Mise à jour automatique des numeros de secu
        if 'numero_secu' in vals:
            for id in ids:
                contracts = self.pool.get('finance.contract').search(cr, uid, [('partner_id', '=', id)], context=context)
                if len(contracts) > 0:
                    self.pool.get('finance.contract').write(cr, uid, contracts, {'numero_secu': vals['numero_secu']})

        opportunity = self.create_prospect(cr, uid, ids, context=context)
        return res

    def add_contact(self, cr, uid, ids, context={}):
        if context is None:
            context = {}

        partner = self.browse(cr, uid, ids[0], context=context)

        context['default_partner_id'] = ids[0]
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'target': 'new',
            'context': context,
            'res_model': 'partner.add.contact',
            'name': 'Ajouter un contact pour %s :' % partner.name
        }

    def add_adress(self, cr, uid, ids, context={}):
        if context is None:
            context = {}

        partner = self.browse(cr, uid, ids[0], context=context)

        context['default_partner_id'] = ids[0]
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'target': 'new',
            'context': context,
            'res_model': 'magellanes.add.adress',
            'name': 'Ajouter une adresse pour %s :' % partner.name
        }

    def _aniversario(self, cr, uid, ids, aniver, args, context=None):
        # pdb.set_trace()
        res = {}
        for m in self.browse(cr, uid, ids, context=context):
            if m.birthdate_n:
                birth_dt = datetime.strptime(m.birthdate_n, '%Y-%m-%d')
                b_mnth = int(birth_dt.strftime('%m'))
            else:
                b_mnth = 0
            res[m.id] = b_mnth
        return res

    _columns = {
        'company': fields.boolean("Seguradora"),
        'is_prospect': fields.boolean("Prospecto"),
        'birthdate_n': fields.date('Data de nascimento'),
        'aniversario': fields.function(_aniversario, string="Mes Aniversario",type='integer', store=True),
        'birthplace': fields.char('Local de nascimento', size=128),
        'courtier_code': fields.char('Cod. corretor', size=64),
        'companies': fields.many2many('res.partner', 'rel_supplier_company', 'supplier_id', 'company_id', 'Compagnies', domain="[('company','=',True)]", context="{'default_company':True, 'default_is_company':True,'form_view_ref':'magelanes.view_compagnie_form', 'tree_view_ref':'magelanes.view_compagnie_tree'}"),
        'suppliers': fields.many2many('res.partner', 'rel_supplier_company', 'company_id', 'supplier_id', 'Fournisseurs', domain="[('supplier','=',True)]", context="{'default_supplier':True, 'default_is_company':True,'form_view_ref':'magelanes.view_supplier_form', 'tree_view_ref':'magelanes.view_supplier_tree'}"),
        'work': fields.many2one('magellanes.work', 'Profissão'),
        'work_type': fields.many2one('magellanes.work.type', 'Tipo de profissão'),
        'type_count': fields.related('work', 'type_count', type='integer', string="Type count", store=False),
        'firstname': fields.char('Primeiro nome', size=64),
        'revised': fields.boolean('Revisado'),
        'other_adress': fields.one2many('magellanes.adress', 'partner_id','Outro endereço'),
        'adress_type': fields.selection([('home','Residencial'),('work','Trabalho'),('corresp', 'Correspondência'),('other','Outro')], 'Tipo Endereço'),
        'civilite': fields.selection([('mr', 'Senhor'),('mme','Senhora'),('mlle','Senhorita')], u'Tratamento'),
        "products_as_supplier": fields.one2many('finance.contract.model', 'supplier_id', 'Produtos'),
        "products_as_company": fields.one2many('finance.contract.model', 'company_id', 'Produtos'),
        "contracts_as_supplier": fields.one2many('finance.contract','supplier_id', 'Contratos fornecedor'),
        "contracts_as_company": fields.one2many('finance.contract','company_id', 'Contratos empresa'),
        "contracts_as_customer": fields.one2many('account.analytic.account','partner_id', 'Contratos cliente'),
        "family_rels": fields.one2many('magellanes.partner.family.rel', 'partner_id', "Familiares / Dependentes"),
        "numero_secu": fields.char('Secu', size=64),
        'matrimonial': fields.selection([('cel','Solteiro'),('maried','Casado'),('pacs', 'União Civil'),('divorced','Divorciado'), ('viuvo', 'Viúvo')], "Estado Civil"),
        'sexo': fields.selection([('F', 'Feminino'),('M', 'Masculino')], "Sexo"),
        'mat_regime': fields.char(u"Regime", size=128),
        'site_url': fields.char("Arquivo Morto", size=128),
        'site_login': fields.char("Login", size=64),
        'site_password': fields.char("Mot de passe", size=128),
        "contact_ids": fields.one2many("magellanes.contact", "partner_id", "Contatos"),
        "contact_name": fields.char("Contato principal", size=128),
        "contact_firstname": fields.char(u"Primeiro nome contato principal", size=128),
        "contact_position": fields.char("Função", size=128),
        "address_type_t": fields.char(u"Tipo de Endereço", size=128),
        "origin": fields.char('Origem', size=256),
        "recommandation_t": fields.text("Recomandações"),
        "recommande_by": fields.many2one('res.partner', u"Recomendado por"),
        "recommande_ids": fields.one2many('res.partner', 'recommande_by',u"Pessoas recomendadas"),
        'rg_emissao': fields.date('Data Emissao'),
        'rg_orgao': fields.char('Orgão emissor', size=30),
        'cnh': fields.char('CNH', size=30),
        'cnh_emissao': fields.date('Data Emissao'),
        'cnh_primhabilita': fields.date('Data Prim. Habilitação'),
        'cnh_vcto': fields.date('Data Vencimento'),
    }

    _defaults = {
        'revised': True,
        'matrimonial': 'cel',
        'country_id': 32,
        'state_id': 71
    }
res_partner()

class magellanes_contact(osv.Model):
    _name = "magellanes.contact"

    _columns = {
        "name": fields.char("Nom", size=128, required=True),
        'civilite': fields.selection([('mr', 'Senhor'),('mme','Senhora'),('mlle','Senhorita')], u'Tratamento'),
        "partner_id": fields.many2one("res.partner", u"Parceiro"),
        "firstname": fields.char(u"Pré-nome", size=128, required=True),
        "phone": fields.char(u"Fone", size=30),
        "mobile": fields.char(u"Celular", size=30),
        "email": fields.char("Email", size=128),
        "position": fields.char(u"Função", size=128),
        "sequence": fields.integer("Sequencia")
    }

    _defaults = {
        "sequence": 0
    }

    _order = "sequence"


class partner_aniversario(osv.osv):
    _name = "partner_aniversario"
    _description = "tree map"
    _auto = False
    _columns = {
        "partner": fields.char("Cliente", size=128),
        "partner_id": fields.many2one("res.partner", u"Parceiro", store=False),
        "familiar":fields.char("Familiar", size=128),
        "relacao": fields.char("Relação", size=30),
        'niver': fields.date('Date de nascimento'),
        "email": fields.char("Email", size=128),
        "phone": fields.char("Fone", size=30),
        'dia_nasc': fields.integer('Dia nascimento'),
        'mes_nasc': fields.integer('Mes nascimento'),
        'ordem': fields.integer('Ordem'),
       }

    _order = "partner, ordem"

    def init(self, cr):
        tools.drop_view_if_exists(cr, 'partner_aniversario')
        cr.execute(""" create or replace view partner_aniversario AS (
                  (select distinct rp.name partner, rp.id, rp.birthdate_n, 'Titular'
                     familiar, 'Titular' relacao 
                     ,extract(day from rp.birthdate_n) as dia_nasc
                     ,extract(month from rp.birthdate_n) as mes_nasc
                     ,rp.birthdate_n niver, rp.email, rp.phone, 0 ordem
                     ,rp.id partner_id
                   from res_partner rp
                  where rp.customer = true
                 )
  
                 UNION

                (select distinct rpt.name partner, rp.id, rp.birthdate_n,
                    rp.name familiar, rel.name relacao
                    ,extract(day from rp.birthdate_n) as dia_nasc
                    ,extract(month from rp.birthdate_n) as mes_nasc
                    ,rp.birthdate_n niver, rp.email, rp.phone, 1 ordem
                    ,rpt.id partner_id
                  from res_partner rp, magellanes_partner_family_rel mm , res_partner rpt,
                       magellanes_family_rel rel 
                 where mm.cible_id = rp.id
                   and rpt.id = mm.partner_id 
                   and mm.rel_id = rel.id 
                   and rp.customer = false
                )   
                order by partner, ordem 
                )
        """)
