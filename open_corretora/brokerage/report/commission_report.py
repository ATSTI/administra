# -*- coding: utf-8 -*-

from openerp import tools
from openerp.osv import fields,osv
import openerp.addons.decimal_precision as dp

class commission_report(osv.Model):
    _name = "commission.report"
    _description = "Projection des commissionements"
    _auto = False

    def _get_label_state(self, cr, uid, ids, name, args, context=None):
        res = {}
        contract_obj = self.pool.get('finance.contract')
        for id in ids:
            contract_open = contract_obj.search_count(cr, uid, [('state','=','open')], context=context)
            contract_sr = contract_obj.search_count(cr, uid, [('rem_id','=',False), ('state','=','open')], context=context)

            if contract_open > contract_sr:
                res[id] = u"Sur %s contrats ouverts, %s sont intégrés dans cette projection. Veuillez renseigner les règles manquantes." % (contract_open, contract_sr)
        return res

    _columns = {
        'label_state': fields.function(_get_label_state, type='char', size=256, string='label_state', store=False),
        'montant': fields.float(u'Montant rémunéré', readonly=True),
        'montant_r': fields.float(u'Montant reversé à la compagnie', readonly=True),
        'montant_c': fields.float(u'Montant reversé au commercial', readonly=True),
        'montant_c': fields.float(u'Montant reversé au commercial', readonly=True),
        'total': fields.float(u'Total', readonly=True),
        'date': fields.date('Date de paiement', readonly=True),
    }

    _order = 'date asc'

    def init(self, cr):
        tools.drop_view_if_exists(cr, 'commission_report')
        cr.execute("""
            create or replace view commission_report as (
            select
                p.contract_id as id,
                sum(p.montant) as montant,
                sum(p.montant_c) as montant_c,
                sum(p.montant_r) as montant_r,
                sum(montant - montant_c - montant_r) as total,
                p.date as date
            from
                finance_projection p
            group by p.date, p.contract_id
            order by p.date asc
            )
        """)
commission_report()