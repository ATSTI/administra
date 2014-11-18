 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv



class create_family_rel(osv.osv_memory):
    _name = "create.family.rel"

    _columns = {
        'name': fields.char('Nom de la relation', size=64, required=True),
        'miror_rel': fields.char("Relation correspondante", size=64, required=True)
    }

    def save_rel(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        vals = {
            "name": obj.name,
            "miror_name": obj.miror_rel
        }
        self.pool.get('magellanes.family.rel').add_relation(cr, uid, vals, context=context)
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'tree,form',
            'res_model': 'magellanes.family.rel',
            'name': 'Relations familiales'
        }