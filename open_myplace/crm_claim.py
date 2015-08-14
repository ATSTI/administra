 #-*- coding: utf-8 -*-

from openerp.osv import fields, osv
from datetime import datetime, timedelta
from openerp import tools


class crm_claim(osv.Model):
    _inherit = 'crm.claim'

    _columns = {
        "legal_name": fields.related('partner_id', 'legal_name', type='char', string='Razão Social'),
        "razao_empresa": fields.related('partner_id', 'razao_empresa', type='char', string='Razão-Empresa'),
        "fornece_fone": fields.related('partner_id', 'fornece_fone', type='boolean', string='Pode fornecer telefone ?'),
        "fornece_email": fields.related('partner_id', 'fornece_email', type='boolean', string='Pode fornecer email ?'),
        "fornece_endereco": fields.related('partner_id', 'fornece_endereco', type='boolean', string='Pode fornecer endereco ?'),
        "title": fields.related('partner_id', 'title', type='char', string='Ramo Atividade'),
        "transfer_recado": fields.related('partner_id', 'transfer_recado', type='char', string='Tranferencia/Recado'),
        "endereco": fields.char(string='Endereco', store=False),
        "motivo_ausencia": fields.char(string='Motivo Ausencia', store=False),
        "ramal_softphone1": fields.char(string='Fone Redirec.', store=False),
        "ramal_softphone2": fields.char(string='Email Redirec.', store=False),
        "contato1": fields.html('Contato', store=False),
        "contato2": fields.html('Contato', store=False),
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
        contato1 = ''
        contato2 = ''
        funcao = ''
        email = ''
        conta = 1
        contato_html = '<div> <ul class="columns" data-columns="2">'
        contato2_html = '<div> <ul class="columns" data-columns="2">'
        for contact in address.child_ids: 
            if conta < 3:
                if contact.function:
                    funcao = contact.function + '<br>'
                if contact.email:
                    email = contact.email + '<br>'
                contato1 = contato1 + '<li>%s %s %s %s %s</li>' %(contact.name + '<br>', funcao, email, contact.phone or '', contact.mobile or '')
            if conta > 2:
                if contact.function:
                    funcao = contact.function + '<br>'
                if contact.email:
                    email = contact.email + '<br>'
                contato2 = contato2 + '<li>%s %s %s %s %s</li>' %(contact.name + '<br>', funcao, email, contact.phone or '', contact.mobile or '')
            conta = conta + 1
        if contato1 != '':
            contato_html = contato_html + contato1 + '</ul></div>'
        else:
            contato_html = ''
        if address.comment:
            contato2 = contato2 + address.comment
        if contato2 != '':
            contato2_html = contato2_html + contato2 + '</ul></div>'
        else:
            contato2_html = ''
        #pdb.set_trace()
        #if address.fornece_endereco:
        endereco_cliente = address.company_id.street + ', ' + address.company_id.number + ' - ' + address.company_id.district
        return {'value': {'email_from': address.email, 'partner_phone': address.phone, 'legal_name': address.legal_name, 'fornece_fone':address.fornece_fone, 'title': address.title.name, 'fornece_email':address.fornece_email, 'motivo_ausencia':address.motivo_ausencia, 'razao_empresa':address.razao_empresa, 'transfer_recado': address.transfer_recado, 'ramal_softphone1': address.ramal_softphone1, 'ramal_softphone2': address.ramal_softphone2, 'contato1': contato_html, 'contato2': contato2_html, 'fornece_endereco': address.fornece_endereco, 'endereco': endereco_cliente}}
        
    def action_atendimento_send(self, cr, uid, ids, context=None):
        '''
        This function opens a window to compose an email, with the edi sale template message loaded by default
        '''
        #pdb.set_trace()
        assert len(ids) == 1, 'This option should only be used for a single id at a time.'
        ir_model_data = self.pool.get('ir.model.data')
        try:
            template_id = ir_model_data.get_object_reference(cr, uid, 'myplace', 'email_template_crm_claim')[1]
        except ValueError:
            template_id = False
        try:
            compose_form_id = ir_model_data.get_object_reference(cr, uid, 'mail', 'email_compose_message_wizard_form')[1]
        except ValueError:
            compose_form_id = False 
        ctx = dict()
        ctx.update({
            'default_model': 'crm.claim',
            'default_res_id': ids[0],
            'default_use_template': bool(template_id),
            'default_template_id': template_id,
            'default_composition_mode': 'comment',
            'mark_so_as_sent': True
        })
        return {
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'res_model': 'mail.compose.message',
            'views': [(compose_form_id, 'form')],
            'view_id': compose_form_id,
            'target': 'new',
            'context': ctx,
        }

crm_claim()

