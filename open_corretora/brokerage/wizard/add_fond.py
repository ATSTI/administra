#-*- coding: utf-8 -*-

from openerp.osv import fields, osv



class finance_add_fond(osv.osv_memory):
    _name = "finance.add.fond"

    _columns = {
        "contract_id": fields.many2one("finance.contract", "Contrat", required=True),
        "fond_id": fields.many2one("finance.fond", "Fond", required=True),
        "pourcentage": fields.integer(u"Pourcentage attribué sur le contrat", required=True),
        "value": fields.float("Valeur en date du jour")
    }

    def default_get(self, cr, uid, fields, context=None):
        res = super(finance_add_fond, self).default_get(cr, uid, fields, context)
        if 'default_contract_id' in context:
            attr_obj = self.pool.get("finance.fond.contract")
            attrs = attr_obj.search(cr, uid, [('contract_id','=',context['default_contract_id'])], context=context)
            current_pourcent = 0
            for attr in attrs:
                current_pourcent += self.browse(cr, uid, attr, context=context).pourcentage
            res['pourcentage'] = 100 - current_pourcent
        return res

    def set_fond(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        vals = {
            "contract_id": obj.contract_id.id,
            "fond_id": obj.fond_id.id,
            "pourcentage": obj.pourcentage
        }
        return self.pool.get('finance.fond.contract').create(cr, uid, vals, context)
