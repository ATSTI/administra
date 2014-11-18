 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv



class finance_add_adherent(osv.osv_memory):
    _name = "finance.add.adherent"

    def onchange_contact_id(self, cr, uid, ids, contact_id, context=None):
        res = {
            'name': '',
            'firstname': '',
            'birthdate': '',
            'birthplace': '',
            'civilite': ''
        }
        if contact_id:
            contact = self.pool.get('res.partner').browse(cr, uid, contact_id, context=context)
            res['name'] = contact.name
            res['firstname'] = contact.firstname
            res['birthdate'] = contact.birthdate
            res['numero_secu'] = contact.numero_secu
            res['civilite'] = contact.civilite
        return {'value': res}

    def onchange_secu(self, cr, uid, ids, numero, context=None):
        res = {}
        if numero :
            numero = numero.replace(" ", "").replace(".", "")
            res['numero_secu'] = '{0} {1} {2} {3} {4} {5} {6}'.format(numero[0:1], numero[1:3], numero[3:5], numero[5:7], numero[7:10], numero[10:13], numero[13:])
        return {'value': res}

    _columns = {
        "name": fields.char("Nom", size=128, required=True),
        "firstname": fields.char("Prenom", size=128, required=True),
        "birthdate": fields.char('Date de naissance', required=True),
        "numero_secu": fields.char(u"Numéro de sécu", size=128, required=True),
        "contact_id": fields.many2one('res.partner', "Contact", domain="[('supplier', '=', False)]"),
        'sequence': fields.integer("Sequence"),
        'contract_id': fields.many2one('finance.contract', 'Contrat', required=True),
        'civilite': fields.selection([('mr', 'Monsieur'),('mme', 'Madame'),('mlle','Mademoiselle')], u'Civilité'),
    }

    def set_adherent(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        vals = {
            'name': obj.name and obj.name or False,
            'firstname': obj.firstname and obj.firstname or False,
            'birthdate': obj.birthdate and obj.birthdate or False,
            'numero_secu': obj.numero_secu and obj.numero_secu or False,
            'contact_id': obj.contact_id.id,
            'civilite': obj.civilite,
            'sequence': obj.sequence and obj.sequence or False,
            'contract_id': obj.contract_id.id
        }
        return self.pool.get('finance.contract.adherent').create(cr, uid, vals, context)

