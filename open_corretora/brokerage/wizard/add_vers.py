 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv



class finance_add_vers(osv.osv_memory):
    _name = "finance.add.vers"

    def _get_aff_libre(self, cr, uid, ids, name, args, context=None):
        res = {}
        for vers in self.browse(cr, uid, ids, context=context):
            res[vers.id] = False
            if vers.contract_id.rem_id:
                for rem_line in vers.contract_id.rem_id.line_ids:
                    if rem_line.based_on == "frais_vers":
                        res[vers.id] = True
        return res

    _columns = {
        'date': fields.date('Date', required=True),
        'amount': fields.integer('Montant', required=True),
        "aff_libre": fields.function(_get_aff_libre, type="boolean", store=False, string="Afficher frais libres"),
        'description': fields.text('Memo'),
        'contract_id': fields.many2one('finance.contract', 'Contrat', required=True)
    }

    def set_vers(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        vals = {
            'date': obj.date,
            'amount': obj.amount,
            'description': obj.description and obj.description or False,
            'contract_id': obj.contract_id.id
        }
        return self.pool.get('finance.contract.vers').create(cr, uid, vals, context)

