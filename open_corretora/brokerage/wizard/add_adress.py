#-*- coding: utf-8 -*-

from openerp.osv import fields, osv



class magellanes_add_adress(osv.osv_memory):
    _name = "magellanes.add.adress"

    _columns = {
        'type_t': fields.char(u"Type d'adresse", size=128),
        'street1': fields.char("Adresse 1", size=128),
        'street2': fields.char("Adresse 2", size=128),
        'zip': fields.char("Code postal", size=8),
        'city': fields.char("Ville", size=64),
        'partner_id': fields.many2one('res.partner', "Partenaire associe"),
        'country_id': fields.many2one('res.country', 'Country'),
    }


    def set_address(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        vals = {
            "type_t": obj.type_t,
            "street1": obj.street1,
            "street2": obj.street2,
            "zip": obj.zip,
            "city": obj.city,
            "partner_id": obj.partner_id.id,
            "country_id": obj.country_id
        }
        return self.pool.get('magellanes.adress').create(cr, uid, vals, context)
