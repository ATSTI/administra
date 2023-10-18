 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv



class partner_add_contact(osv.osv_memory):
    _name = "partner.add.contact"

    _columns = {
        "name": fields.char("Nom", size=128, required=True),
        "partner_id": fields.many2one("res.partner", u"Partenaire associé"),
        "firstname": fields.char("Prénom", size=128, required=True),
        "phone": fields.char(u"Numéro de téléphone", size=30),
        "mobile": fields.char(u"Téléphone portable"),
        "email": fields.char("Email", size=128),
        "position": fields.char(u"Fonction dans l'entreprise", size=128),
        'civilite': fields.selection([('mr', 'Monsieur'),('mme', 'Madame'),('mlle','Mademoiselle')], u'Civilité'),
    }


    def set_contact(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        vals = {
            "name": obj.name,
            "partner_id": obj.partner_id.id,
            "firstname": obj.firstname,
            "phone": obj.phone,
            "mobile": obj.mobile,
            "email": obj.email,
            "position": obj.position,
            "civilite": obj.civilite
        }
        return self.pool.get('magellanes.contact').create(cr, uid, vals, context)
