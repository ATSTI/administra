 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, timedelta
from openerp import tools
#import pdb


class crm_claim(osv.Model):
    _inherit = 'crm.claim'

    _columns = {
        "legal_name": fields.related('partner_id', 'legal_name', type='char', string='Razão Social'),
        "fornece_fone": fields.related('partner_id', 'fornece_fone', type='boolean', string='Pode fornecer telefone ?'),
        "fornece_email": fields.related('partner_id', 'fornece_email', type='boolean', string='Pode fornecer email ?'),
        "title": fields.related('partner_id', 'title', type='char', string='Ramo Atividade'),
        "motivo_ausencia": fields.related('partner_id', 'motivo_ausencia', type='char', string='Motivo Ausencia'),
    }

    def onchange_partner_id(self, cr, uid, ids, partner_id, email=False, context=None):
        """This function returns value of partner address based on partner
           :param email: ignored
        """
        if not partner_id:
            return {'value': {'email_from': False, 'partner_phone': False, 'legal_name': False, 'fornece_fone': False, 'title': False, 'fornece_email': False, 'motivo_ausencia': False}}
        address = self.pool.get('res.partner').browse(cr, uid, partner_id, context=context)
        return {'value': {'email_from': address.email, 'partner_phone': address.phone, 'legal_name': address.legal_name, 'fornece_fone':address.fornece_fone, 'title': address.title.name, 'fornece_email':address.fornece_email, 'motivo_ausencia':address.motivo_ausencia}}
crm_claim()

