 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, timedelta
from openerp import tools
#import pdb


class crm_claim(osv.Model):
    _inherit = 'crm.claim'

    _columns = {
        "legal_name": fields.related('partner_id', 'legal_name', type='char', string='Razão Social'),
        "razao_empresa": fields.related('partner_id', 'razao_empresa', type='char', string='Razão-Empresa'),
        "fornece_fone": fields.related('partner_id', 'fornece_fone', type='boolean', string='Pode fornecer telefone ?'),
        "fornece_email": fields.related('partner_id', 'fornece_email', type='boolean', string='Pode fornecer email ?'),
        "title": fields.related('partner_id', 'title', type='char', string='Ramo Atividade'),
        "transfer_recado": fields.related('partner_id', 'transfer_recado', type='char', string='Tranferencia/Recado'),
        "motivo_ausencia": fields.related('partner_id', 'motivo_ausencia', type='char', string='Motivo Ausencia'),
        "ramal_softphone1": fields.related('partner_id', 'ramal_softphone1', type='char', string='Fone Redirec.'),
        "ramal_softphone2": fields.related('partner_id', 'ramal_softphone2', type='char', string='Email Redirec.'),
        "contatos": fields.char('Contatos', store=False),
        'transferencia': fields.boolean('Transferência'),
        'recado': fields.boolean('Recado'),
    }

    def onchange_partner_id(self, cr, uid, ids, partner_id, email=False, context=None):
        """This function returns value of partner address based on partner
           :param email: ignored
        """
        #pdb.set_trace()
        if not partner_id:
            return {'value': {'email_from': False, 'partner_phone': False, 'legal_name': False, 'fornece_fone': False, 'title': False, 'fornece_email': False, 'motivo_ausencia': False, 'razao_empresa':False, 'transfer_recado': False, 'ramal_softphone1': False, 'ramal_softphone2': False}}
        address = self.pool.get('res.partner').browse(cr, uid, partner_id, context=context)
        contatos = ''
        for contact in address.child_ids: 
            if contatos != '':
                contatos = contatos + ', ' 
            if contact.function:
                contatos += '%s/%s' %(contact.name,contact.function)
            else:    
                contatos += '%s' %(contact.name)
        return {'value': {'email_from': address.email, 'partner_phone': address.phone, 'legal_name': address.legal_name, 'fornece_fone':address.fornece_fone, 'title': address.title.name, 'fornece_email':address.fornece_email, 'motivo_ausencia':address.motivo_ausencia, 'razao_empresa':address.razao_empresa, 'transfer_recado': address.transfer_recado, 'ramal_softphone1': address.ramal_softphone1, 'ramal_softphone2': address.ramal_softphone2, 'contatos': contatos}}
        
crm_claim()

