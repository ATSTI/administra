# -*- coding: utf-8 -*-
##############################################################################
#
#    OpenERP, Open Source Management Solution
#    Copyright (C) 2004-2010 Tiny SPRL (<http://tiny.be>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################
import logging

from datetime import datetime, timedelta
from dateutil.relativedelta import relativedelta
from dateutil import parser
import time
from openerp import pooler
from openerp.osv import fields, osv
from openerp.tools.translate import _
from openerp.tools import DEFAULT_SERVER_DATE_FORMAT, DEFAULT_SERVER_DATETIME_FORMAT, DATETIME_FORMATS_MAP, float_compare
import openerp.addons.decimal_precision as dp
from openerp import netsvc
#import pdb

class ats_rotinas(osv.osv):
    _name = "ats.rotinas"
    _description = "Rotinas ATS"


    def _send_mail(self, cr, uid, ids, mail_to, email_from=None, context=None):
        """
        Send mail for event invitation to event attendees.
        @param email_from: email address for user sending the mail
        @return: True
        """
        company = self.pool.get('res.users').browse(cr, uid, uid, context=context).company_id.name
        for att in self.browse(cr, uid, ids, context=context):
            #sign = att.sent_by_uid and att.sent_by_uid.signature or ''
            #sign = '<br>'.join(sign and sign.split('\n') or [])
            """
                #dates and times are gonna be expressed in `tz` time (local timezone of the `uid`)
                tz = context.get('tz', pytz.timezone('UTC'))
                #res_obj.date and res_obj.date_deadline are in UTC in database so we use context_timestamp() to transform them in the `tz` timezone
                date_start = fields.datetime.context_timestamp(cr, uid, datetime.strptime(res_obj.date, tools.DEFAULT_SERVER_DATETIME_FORMAT), context=context)
                date_stop = False
                if res_obj.date_deadline:
                    date_stop = fields.datetime.context_timestamp(cr, uid, datetime.strptime(res_obj.date_deadline, tools.DEFAULT_SERVER_DATETIME_FORMAT), context=context)
                    
                body_vals = {'name': res_obj.name,
                        'start_date': date_start,
                        'end_date': date_stop,
                        'timezone': tz,
                        'description': res_obj.description or '-',
                        'location': res_obj.location or '-',
                        'attendees': '<br>'.join(att_infos),
                        'user': res_obj.user_id and res_obj.user_id.name or 'OpenERP User',
                        'sign': sign,
                        'company': company
                }
                
                body = html_invitation2 % body_vals
            """
            body = ' Teste'
            if mail_to and email_from:
                    #ics_file = self.get_ics_file(cr, uid, res_obj, context=context)
                invoice_id = context.get('invoice')
                attachment_ids = self.pool['ir.attachment'].search(cr, uid, [ ('res_model','=','account.invoice'),
                    ('res_id','=', invoice_id )])
                attac_ids = self.pool['ir.attachment'].browse(cr, uid, attachment_ids)
                vals = {'email_from': email_from,
                        'email_to': mail_to,
                        'state': 'outgoing',
                        'subject': 'assunto do meail',
                        'body_html': body,
                        'auto_delete': True}
                if attachment_ids:
                    vals['attachment_ids'] = [(0,0,{'name': attac_ids.name,
                                                    'datas_fname': attac_ids.datas_fname,
                                                    'datas': attac_ids.datas,
                                                    'type': 'binary'})]
                    #'datas': str(attachment_ids).encode('base64'),
                    #vals['attachment_ids'] = {'attachment_ids': [(6, 0, attachment_ids)]}
                    #Create an attachment base on a generated file   
                    #attachment_id = self.pool.get('ir.attachment').create(cr, uid, {  
                    #    'name': attac_ids.name,  
                    #    'datas': attac_ids.datas,  
                    #    'datas_fname': attac_ids.file_name,  
                    #    'type': 'binary',  
                    #})
                self.pool.get('mail.mail').create(cr, uid, vals, context=context)
            return True

    def automatico_invoice(self, cr, uid, ids, context=None):
        """ create invoices for the given sales orders (ids), and open the form
            view of one of the newly created invoices
        """
        wf_service = netsvc.LocalService("workflow")

        venda = self.pool.get('sale.order')
        #so_ids = execute('sale.order', 'search', [('state','=','draft')])
        so_ids = venda.search(cr, uid, [('state', '=', 'draft')],context=context)
        

        id = 0
        # create invoices through the sales orders' workflow
        #inv_ids0 = set(inv.id for sale in so_ids)
        for id in so_ids:
            wf_service.trg_validate(uid, 'sale.order', id, 'order_confirm', cr)
            wf_service.trg_validate(uid, 'sale.order', id, 'manual_invoice', cr)
            print ' PEDIDO %s'  %id
        
        contabil = self.pool.get('account.invoice')
        cont_ids = contabil.search(cr, uid, [('state', '=', 'draft'), ('type','=', 'out_invoice')],context=context)
        for id in cont_ids:
            wf_service.trg_validate(uid, 'account.invoice', id, 'invoice_open', cr)

        return id

    def cron_aniversario(self, cr, uid, context=None):
        if context is None:
            context = {}
        aniversariantes = []
        aniversariantes_titular = []
        partner_obj = self.pool.get('res.partner')

        base_domain = [
            ('active', '=', 'True'),
            ('customer', '=', 'True'),
          ]
        partner_ids = partner_obj.search(cr, uid, base_domain, context=context, order='name asc')
        partner = 1
        current_date = datetime.now()
        c_mnth = int(current_date.strftime('%m'))
        c_dt = int(current_date.strftime('%d'))
        context['base_url'] = self.pool.get('ir.config_parameter').get_param(cr, uid, 'web.base.url')
        template_id =self.pool.get('ir.model.data').get_object_reference(cr,uid, 'ats_rotinas','aniversario_cron_email_template')[1]
        tem_aniversario = 'N'
        for partner in self.pool.get('res.partner').browse(cr,uid, partner_ids, context):
            context['subject']=u'Feliz Aniversário'
            if partner.email == False:
                context['email_to']='administrativo@somaseguros.com.br'
                context['partnername']=partner.name
                context['subject']=u'Aniversariante sem email'
                context['firstname'] = partner.name 
            else: 
                if partner.firstname != False:
                    context['firstname']=partner.firstname + ', Bom Dia,'
                else:
                    context['firstname']=partner.name + ', Bom Dia,'
 
                context['email_to']=partner.email
                context['partnername']=partner.name
            if partner.birthdate_n:
                birth_dt = datetime.strptime(partner.birthdate_n, '%Y-%m-%d')
                b_mnth = int(birth_dt.strftime('%m'))
                if b_mnth == c_mnth:
                    b_dt = int(birth_dt.strftime('%d'))
                    if b_dt == c_dt:
                        #pdb.set_trace()
                        print("Aniversario -  %s" % (partner.name))
                        tem_aniversario = 'S'
                        aniversariantes.append('Titular :'+partner.name +', '+str(datetime.strptime(partner.birthdate_n,'%Y-%m-%d')) + '\n')
                        #pdb.set_trace()
                        if partner.email == False:
                            context['tipo']=u''
                            context['tipo1']=u''
                        else:
                            context['tipo']=u'Parabéns pelo seu aniversário comemorado hoje.'
                            context['tipo1']=u'Muita Paz e Saúde para você e toda a sua Família.'

                        #_logger.debug("Sending aniversario to %s", partner.name)
                        self.pool.get('email.template').send_mail(cr, uid,template_id, uid, force_send=True, context=context)

            # verifica se tem  dependente fazendo aniversario
            sql_meg = ("SELECT rp.birthdate_n "\
                       ",CASE WHEN STRPOS(name, ' ') > 0 THEN LEFT(name, "\
                       "STRPOS(name, ' ')) ELSE name END "\
                       "FROM res_partner rp, magellanes_partner_family_rel mf "\
                       "WHERE rp.id = mf.cible_id "\
                       "  AND rp.customer = False "\
                       "  AND mf.partner_id = %s ") % (partner.id,)
            cr.execute(sql_meg)
            for t in cr.dictfetchall():
                if not t['birthdate_n']: 
                    continue
                birth_dt = datetime.strptime(t['birthdate_n'], '%Y-%m-%d')
                familiar = t['name']
                b_mnth = int(birth_dt.strftime('%m'))
                if b_mnth == c_mnth:
                    b_dt = int(birth_dt.strftime('%d'))
                    if b_dt == c_dt:
                        tem_aniversario = 'S'
                        if partner.sexo == 'M':
                            context['tipo']=u'Parabéns pelo aniversário do %s' % (familiar) + ' comemorado hoje.'
                        else:
                            context['tipo']=u'Parabéns pelo aniversário da %s' % (familiar) + ' comemorado hoje.'
                        context['tipo1']=u'Muita Paz e Saúde para você e toda a sua Família.'
                        print("Aniversario -  %s - %s" % (partner.name, familiar))

                        aniversariantes.append('Titular: '+partner.name+' - Dependente: ' + familiar + '-' + str(t['birthdate_n']) + '\n')
                        
                        self.pool.get('email.template').send_mail(cr, uid,template_id, uid, force_send=True, context=context)


        #pdb.set_trace()

        # enviando email dos aniversariantes para o Administrador
        context['firstname']=' Lista de Aniversariantes'
        #context['email_to']='marcio@somaseguros.com.br'
        context['email_to']='administrativo@somaseguros.com.br'
        context['subject']='Aniversariantes do dia'
        if tem_aniversario != 'N':
            context['tipo1']= ' '.join(aniversariantes)
            #context['tipo']= aniversariantes

            self.pool.get('email.template').send_mail(cr, uid,template_id, uid, force_send=True, context=context)
 
        return True

    def cron_envia_boleto(self, cr, uid, context=None):
        if context is None:
            context = {}
        remind = {}
        import pudb;pudb.set_trace()
        invoice_obj = self.pool.get('account.invoice')
        attach_obj = pooler.get_pool(cr.dbname).get('ir.attachment')
        dia_vencimento = (datetime.now() + timedelta(5)).strftime("%Y-%m-%d")
        base_domain = [('date_due', '=', dia_vencimento), ('state','=','open')]
        invoice_ids = invoice_obj.search(cr, uid, base_domain, context=context, order='partner_id')
        for inv in invoice_obj.browse(cr, uid, invoice_ids, context=context):
            context['invoice'] = inv.id
            # get datas from related attachments
            print inv.name
            print inv.partner_id.email
            print inv.partner_id.name
            attch_ids = []
            attachment_ids = self.pool['ir.attachment'].search(cr, uid, [ ('res_model','=','account.invoice'),
                ('res_id','=', inv.id )])
            for att in attach_obj.browse(cr, uid, attachment_ids):
                # boleto anexo , enviar email
                print att.name
                user_id = inv.partner_id.name
                template_id =self.pool.get('ir.model.data').get_object_reference(cr,uid,'ats_rotinas','envia_boleto_cron_email_template')[1]
                attch_ids.append(att.id)
                #self.pool.get('email.template').send_mail(cr, uid, template_id, user_id, force_send=True, context=context)
                #vals['attachment_ids'] = [(0,0,{'name': 'invitation.ics',
                #    'datas_fname': 'invitation.ics',
                #    'datas': str(ics_file).encode('base64')})]
                #template_id['attachment_ids'].extend(attachment_ids[0])
                #self.pool.get('email.template').send_mail(cr, uid, template_id, user_id, force_send=True, context=context)
                email_from = 'ats@atsti.com.br'
                #self.pool.get('email.template').write(cr,uid,template_id,{'attachment_ids':[(6,0,attch_ids)]})
                self.pool.get('email.template').write(cr,uid,template_id,{'attachment_ids':[(6,0,attch_ids)]})
                #template_id.write(cr,uid,template_id,{'attachment_ids':[(6,0,attch_ids)]})
                self._send_mail(cr, uid, template_id, user_id, email_from, context=context)

        # Primeira parcela vencendo hoje
        #data_atual = (datetime.datetime.now() + datetime.timedelta(30)).strftime("%Y-%m-%d")
        #fill_remind("novo",(('date_primparc', '!=', False), ('date_primparc','=',time.strftime('%Y-%m-%d'))))
        #context['base_url'] = self.pool.get('ir.config_parameter').get_param(cr, uid, 'web.base.url')
        #for user_id, data in remind.items():
        #    context["data"] = data
        #pdb.set_trace()
    
        return True

    def cron_primparc_cliente(self, cr, uid, context=None):
        if context is None:
            context = {}
        #remind = {}
        #pdb.set_trace()
        task_obj = self.pool.get('project.task')
        base_domain = [
            ('state', '!=', 'done'),
            ('stage_id.state', '!=', 'done'),
            ('date_primparc', '!=', False),
            ('date_primparc','=',time.strftime('%Y-%m-%d'))
        ]

        context['base_url'] = self.pool.get('ir.config_parameter').get_param(cr, uid, 'web.base.url')
        def fill_remind(key, domain):
            #pdb.set_trace()
            base_domain.extend(domain)

        task_ids = task_obj.search(cr, uid, base_domain, context=context, order='date_primparc asc')
        tasks = task_obj.browse(cr, uid, task_ids, context=context)
        for tarefa in tasks:
            #remind_user = remind.setdefault(tarefa.user_id.id, {})
            #remind_partner = remind_user.setdefault(tarefa.partner_id,[]).append(tarefa)
            context['email_to'] = tarefa.partner_id.email
            context['partnername'] = tarefa.partner_id.firstname
            user_id = tarefa.user_id.id
            seguro = ''
            if tarefa.project_id.produto_auto:
                seguro=u'seguro Auto'
                context['subject']=u'vencimento do pagamento do seu seguro Auto' 
            if tarefa.project_id.produto_resid:
                seguro=u'seguro Residencial'
                context['subject']=u'vencimento do pagamento do seu seguro Residencial' 
            if tarefa.project_id.produto_vida:
                seguro=u'seguro de Vida'
                context['subject']=u'vencimento do pagamento do seu seguro de Vida' 
            if tarefa.project_id.produto_previ:
                seguro=u'Previdência'
                context['subject']=u'vencimento do pagamento da sua Previdência' 
            if tarefa.project_id.produto_saude:
                seguro=u'Saúde'
                context['subject']=u'vencimento do pagamento do seu seguro Saúde' 
            if tarefa.project_id.produto_dsop:
                seguro=u'DSOP'
            if tarefa.project_id.produto_empresa:
                seguro=u'seguro Empresa'
                context['subject']=u'vencimento do pagamento do seu seguro Empresarial' 

            #if tarefa.project_id.produto_educacional:
            #    seguro=u'seguro Educacional'
            #    context['subject']=u'vencimento do pagamento do seu seguro Educacional' 

            tipo_pagamento = ''
            if tarefa.tipo_primparc == 'boleto':
                tipo_pagamento = u' por meio de boleto'

            if tarefa.tipo_primparc == 'debito':
                tipo_pagamento = u' para débito em sua conta corrente'

            context['seguro']= '%s%s' %(seguro, tipo_pagamento)
            my_date = parser.parse(tarefa.date_primparc)
            data_pp = my_date.strftime('%d-%m-%Y')
            context['data_primparc']= data_pp

            # Primeira parcela vencendo hoje
            #fill_remind("novo",(('date_primparc', '!=', False), ('date_primparc','=',time.strftime('%Y-%m-%d'))))
            template_id=self.pool.get('ir.model.data').get_object_reference(cr,uid,'ats_rotinas','prim_parc_cliente_template')[1]
            self.pool.get('email.template').send_mail(cr, uid, template_id, user_id, force_send=True, context=context)
    
        return True

    def cron_vistoria(self, cr, uid, context=None):
        if context is None:
            context = {}
        remind = {}
        #pdb.set_trace()
        task_obj = self.pool.get('project.task')

        def fill_remind(key, domain):
            #pdb.set_trace()
            base_domain = [
                ('state', '!=', 'done'),
                ('stage_id.state', '!=', 'done'),
            ]
            base_domain.extend(domain)

            task_ids = task_obj.search(cr, uid, base_domain, context=context,order='date_vistoria asc')
            tasks = task_obj.browse(cr, uid, task_ids, context=context)
            for tarefa in tasks:
                remind_user = remind.setdefault(tarefa.user_id.id, {})
                remind_type = remind_user.setdefault(key, {})
                remind_partner = remind_type.setdefault(tarefa.partner_id,[]).append(tarefa)


        # Primeira parcela vencendo hoje
        #data_atual = (datetime.datetime.now() + datetime.timedelta(30)).strftime("%Y-%m-%d")
        fill_remind("novo",(('date_vistoria', '!=', False), ('date_vistoria','=',time.strftime('%Y-%m-%d'))))
        context['base_url'] = self.pool.get('ir.config_parameter').get_param(cr, uid, 'web.base.url')
        template_id=self.pool.get('ir.model.data').get_object_reference(cr,uid,'ats_rotinas','vistoria_cron_email_template')[1]
        for user_id, data in remind.items():
            context["data"] = data
            self.pool.get('email.template').send_mail(cr, uid, template_id, user_id, force_send=True, context=context)
        #pdb.set_trace()
    
        return True
