 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv



class finance_contract_rachat(osv.osv_memory):
    _name = "finance.contract.rachat"

    _columns = {
        'date': fields.date('Date de rachat'),
        'date_dem': fields.date('Date de la demande'),
        'motif': fields.text('Motif'),
        'memo': fields.text('Memo'),
        'act_rachat': fields.boolean('Rachat'),
        'act_res': fields.boolean('Resiliation'),
        'contract_id': fields.many2one('finance.contract', 'Contrat')
    }

    def set_rachat(self, cr, uid, ids, context=None):
        obj = self.browse(cr, uid, ids[0], context=context)
        vals = {
            'res_reason': obj.motif and obj.motif or False,
            'res_memo': obj.memo and obj.memo or False,
            'res_date': obj.date and obj.date or False,
            'res_dated': obj.date_dem and obj.date_dem or False,
            'res': obj.act_res,
            'rachat': obj.act_rachat
        }
        return self.pool.get('finance.contract').save_rachat(cr, uid, obj.contract_id.id, vals)

