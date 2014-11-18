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
import time
from openerp import pooler
from openerp.osv import fields, osv
from openerp.tools.translate import _
from openerp.tools import DEFAULT_SERVER_DATE_FORMAT, DEFAULT_SERVER_DATETIME_FORMAT, DATETIME_FORMATS_MAP, float_compare
import openerp.addons.decimal_precision as dp
from openerp import netsvc
import pdb

class ats_rotinas(osv.osv):
    _name = "ats.rotinas"
    _description = "Rotinas ATS"

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
                        pdb.set_trace()
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
                        pdb.set_trace()
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

    def cron_primparc(self, cr, uid, context=None):
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

            task_ids = task_obj.search(cr, uid, base_domain, context=context, order='date_primparc asc')
            tasks = task_obj.browse(cr, uid, task_ids, context=context)
            for tarefa in tasks:
                remind_user = remind.setdefault(tarefa.user_id.id, {})
                remind_type = remind_user.setdefault(key, {})
                remind_partner = remind_type.setdefault(tarefa.partner_id,[]).append(tarefa)


        # Primeira parcela vencendo hoje
        #data_atual = (datetime.datetime.now() + datetime.timedelta(30)).strftime("%Y-%m-%d")
        fill_remind("novo",(('date_primparc', '!=', False), ('date_primparc','=',time.strftime('%Y-%m-%d'))))
        context['base_url'] = self.pool.get('ir.config_parameter').get_param(cr, uid, 'web.base.url')
        template_id =self.pool.get('ir.model.data').get_object_reference(cr,uid,'ats_rotinas','prim_parcela_cron_email_template')[1]
        for user_id, data in remind.items():
            context["data"] = data
            self.pool.get('email.template').send_mail(cr, uid, template_id, user_id, force_send=True, context=context)
        #pdb.set_trace()
    
        return True

    def cron_primparc_cliente(self, cr, uid, context=None):
        if context is None:
            context = {}
        remind = {}
        pdb.set_trace()
        task_obj = self.pool.get('project.task')
        context['base_url'] = self.pool.get('ir.config_parameter').get_param(cr, uid, 'web.base.url')
        base_domain = [
            ('state', '!=', 'done'),
            ('stage_id.state', '!=', 'done'),
            ('date_primparc', '!=', False),
            ('date_primparc','=',time.strftime('%Y-%m-%d'))
        ]

        def fill_remind(key, domain):
            pdb.set_trace()
            base_domain.extend(domain)

        task_ids = task_obj.search(cr, uid, base_domain, context=context, order='date_primparc asc')
        tasks = task_obj.browse(cr, uid, task_ids, context=context)
        for tarefa in tasks:
            remind_user = remind.setdefault(tarefa.user_id.id, {})
            remind_partner = remind_user.setdefault(tarefa.partner_id,[]).append(tarefa)
            context['email_to'] = tarefa.partner_id.email
            context['partnername'] = tarefa.partner_id.name
            context['subject']=u'Aniversariante sem email'

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
