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
from dateutil.relativedelta import relativedelta
import datetime
import logging
import time

from openerp.osv import osv, fields
import openerp.tools
from openerp.tools.translate import _
#from openerp import netsvc
from openerp import workflow
#import pdb

_logger = logging.getLogger(__name__)

class account_analytic_account(osv.osv):
    _name = "account.analytic.account"
    _inherit = "account.analytic.account"

    # Executa o faturamento das vendas existentes
    def faturar_invoice(self, cr, uid, ids, context=None):
        venda = self.pool.get('sale.order')
        order_obj = self.pool.get('sale.order')
        venda_ids = venda.search(cr, uid, [('state', '=', 'manual')],context=context)
        #newinv = []
        cliente = 0
        id = 0
        mk = {'grouped': True}
        vnd = self.pool.get('sale.make.invoice')
        contabil = self.pool.get('account.invoice')
        boleto_obj = self.pool.get('boleto.boleto_create')
        id_mk = vnd.create(cr, uid, mk)
        data = vnd.read(cr, uid, id_mk)
        boleto = {}
        for vnd_cli in venda.browse(cr, uid, venda_ids, context=context):
            if cliente != vnd_cli.partner_id.id:
                import pudb;pudb.set_trace()
                cliente = vnd_cli.partner_id.id
                # validando dados do cliente
                venda_cli = venda.search(cr, uid, [('state', '=', 'manual'),('partner_id','=',vnd_cli.partner_id.id)],context=context)
                grp_msg = boleto.setdefault(vnd_cli.partner_id.name, [])
                cli = vnd_cli.partner_id
                if not cli.cnpj_cpf or not cli.legal_name or not cli.zip or not cli.street or not cli.number or not cli.l10n_br_city_id or not cli.district or not cli.state_id or not cli.country_id:
                    boleto['erro0'] = u'Falta preencher campos obrigatórios no cadastro do cliente(CNPJ/CPF, Contratante, Endereço completo)'  
                    grp_msg.append(boleto)
                    continue

                for sale_order in venda.browse(cr, uid, venda_cli, context=context):
                    if sale_order.state != 'manual':
                        raise osv.except_osv(_('Warning!'), _("You shouldn't manually invoice the following sale order %s") % (sale_order.name))

                # cria a fatura
                    order_obj.action_invoice_create(cr, uid, venda_cli, data['grouped'], date_invoice=data['invoice_date'])
                #print 'FEITO - ' + vnd_cli.partner_id.name
                orders = order_obj.browse(cr, uid, venda_cli, context=context)
                # @@@@@@@@@@@@@@@@@@  19/06/2015 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
                # comentei aqui , pois, precisamos primeiro confirmar todas que estao la, pra depois usar isto
                order_obj.signal_workflow(cr, uid, [o.id for o in orders if o.order_policy == 'manual'], 'manual_invoice')
                # @@@@@@@@@@@@@@@@@@  19/06/2015 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 

                # Localiza as faturas com status pendente para confirmar e gerar o boleto
                cont_ids = contabil.search(cr, uid, [('state', '=', 'draft'), ('type','=', 'out_invoice'),('partner_id', '=', vnd_cli.partner_id.id),('date_invoice','>','2015-07-30')],context=context)
                #import pudb;pudb.set_trace()
                # gerar BOLETO
                msg_erro = {}
                for id in contabil.browse(cr, uid, cont_ids, context=context):
                    # @@@@@@@@@@@@@@@@@@  19/06/2015 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
                    # comentei aqui , pois, precisamos primeiro confirmar todas que estao la, pra depois usar isto
                    if not id.payment_term:
                        id.payment_term = vnd_cli.partner_id.property_payment_term
                    try:
                        # valida a Fatura
                        workflow.trg_validate(uid, 'account.invoice', id.id, 'invoice_open', cr)
                        boleto['fatura'] = id.internal_number
                    except:
                        boleto['fatura'] = id.id
                        msg_erro['erro0'] = "Conta de cliente e/ou produto diferente da Unidade/Empresa."
                        #msg_erro['fatura'] = id.id
                        continue
                    context['active_ids'] = [id.id] 
                    context['active_id'] = id.id 
                    context['active_model'] = 'account.invoice'
                    context['origem'] = 'contract'
                    if not len(msg_erro):
                        boleto = boleto_obj.create_boleto(cr, uid, ids, context)
                    else:
                        boleto['erro0'] = msg_erro['erro0']
                        boleto['id'] = 0
                    if len(boleto) and boleto['id'] == 0:
                        #boleto['cliente'] = vnd_cli.partner_id.name
                        grp_msg.append(boleto)
                        print "enviar email deu erro : %s " %(boleto)
                    else:
                        print "passou ........"

                    # @@@@@@@@@@@@@@@@@@  19/06/2015 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
                    #boleto_nome = id.number + str(id.id) + '.pdf'
                    # gerar o PDF da BOLETO
                    # @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    #PRECISO GERAR O PDF AQUI, dai ele ficara salvo no BOLETO_CREATE
                    # @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    #
                    # OPS JA TENHO ELAS NO BOLETO_CREATE
                    # COMENTEI AQUI - 17/06/2015
                    #boletos = boleto_obj.search(cr,uid,[('pdf_name', '=', boleto_nome)],context=context)
                    #for blt in boletos_obj.browse(cr, uid, boletos, context=context):
                    #    boleto_file = blt.pdf_stream
                    
        if len(boleto):
            #boleto['cliente'] = vnd_cli.partner_id.name
            print "enviar email deu erro : %s " %(boleto)
                    


        return id


    # transforma a cotação em pedido de venda
    def _confirma_invoice(self, cr, uid, ids, context=None):
        #wf_service = openerp.workflow("workflow") 
        #wf_service = netsvc.LocalService("workflow")
        #venda = self.pool.get('sale.order')
        #so_ids = venda.search(cr, uid, [('id', '=', ids)],context=context)
        #id = 0
        workflow.trg_validate(uid, 'sale.order', ids, 'order_confirm', cr)
        #for id in so_ids:
        #    workflow.trg_validate(uid, 'sale.order', id, 'order_confirm', cr)
        #    workflow.trg_validate(uid, 'sale.order', id, 'manual_invoice', cr)
        #contabil = self.pool.get('account.invoice')
        #cont_ids = contabil.search(cr, uid, [('state', '=', 'draft'), ('type','=', 'out_invoice')],context=context)
        #for id in cont_ids:
        #    workflow.trg_validate(uid, 'account.invoice', ids, 'invoice_open', cr)
        self.faturar_invoice(cr, uid, ids, context)

        return ids

    def message_new(self, cr, uid, msg, custom_values=None, context=None):
        if custom_values is None:
            custom_values = {}
        context = dict(context or {}, state_to='draft')
        defaults = {
            'name':  msg.get('subject') or _("No Subject"),

            'partner_id': msg.get('author_id', False),
            'user_id': False,
        }
        defaults.update(custom_values)
        res_id = super(account_analytic_account, self).message_new(cr, uid, msg, custom_values=defaults, context=context)
        return res_id

    def _recurring_create_invoice(self, cr, uid, ids, automatic=False, context=None):
        context = context or {}
        current_date =  time.strftime('%Y-%m-%d')
        if ids:
            contract_ids = ids
        else:
            contract_ids = self.search(cr, uid, [('recurring_next_date','<=', current_date), ('state','=', 'open'), ('recurring_invoices','=', True), ('type', '=', 'contract')])
        if contract_ids:
            cr.execute('SELECT company_id, array_agg(id) as ids FROM account_analytic_account WHERE id IN %s GROUP BY company_id', (tuple(contract_ids),))
            
            for company_id, ids in cr.fetchall():
                print 'Empresa - ' + str(company_id)
                for contract in self.browse(cr, uid, ids, context=dict(context, company_id=company_id, force_company=company_id)):
                    invoice_ids = []
                    try:
                        #invoice_values = self._prepare_invoice(cr, uid, contract, context=context)
                        venda_values = self._prepare_invoice(cr, uid, contract, context=context)
                        #invoice_ids.append(self.pool['account.invoice'].create(cr, uid, invoice_values, context=context))
                        invoice_ids.append(self.pool['sale.order'].create(cr, uid, venda_values, context=context))
                        # 'order_id': order.id,
                        linha_venda = self._prepare_invoice_lines(cr, uid, contract, invoice_ids[0], context=context)
                        #self.pool.get('sale.order.line').create(cr, uid, linha_venda, context)
                        self._confirma_invoice(cr, uid, invoice_ids[0], context=context)
                        next_date = datetime.datetime.strptime(contract.recurring_next_date or current_date, "%Y-%m-%d")
                        interval = contract.recurring_interval
                        if contract.recurring_rule_type == 'daily':
                            new_date = next_date+relativedelta(days=+interval)
                        elif contract.recurring_rule_type == 'weekly':
                            new_date = next_date+relativedelta(weeks=+interval)
                        elif contract.recurring_rule_type == 'monthly':
                            new_date = next_date+relativedelta(months=+interval)
                        else:
                            new_date = next_date+relativedelta(years=+interval)
                        self.write(cr, uid, [contract.id], {'recurring_next_date': new_date.strftime('%Y-%m-%d')}, context=context)
                        if automatic:
                            cr.commit()
                            print 'CONTRATO - ' + str(contract)
                    except Exception:
                        if automatic:
                            cr.rollback()
                            print ' ERRO CONTRATO - ' + str(contract)
                            context['email_to'] = contract.manager_id.email
                            context['partnername'] = contract.partner_id.name
                            context['subject'] = u'Erro para gerar fatura do contrato'
                            context['body'] = u'Contrato ' + contract.code
                            template_id =self.pool.get('ir.model.data').get_object_reference(cr,uid, 'myplace','email_erro_fatura')[1]
                            self.pool.get('email.template').send_mail(cr, uid,template_id, uid, force_send=True, context=context)
                            _logger.exception('Fail to create recurring invoice for contract %s', contract.code)
                        else:
                            raise
        return invoice_ids

    def _prepare_invoice_data(self, cr, uid, contract, context=None):
        context = context or {}
        #pdb.set_trace()
        journal_obj = self.pool.get('account.journal')

        if not contract.partner_id:
            raise osv.except_osv(_('No Customer Defined!'),_("You must first select a Customer for Contract %s!") % contract.name )

        fpos = contract.partner_id.property_account_position or False
        journal_ids = journal_obj.search(cr, uid, [('type', '=','sale'),('company_id', '=', contract.company_id.id or False)], limit=1)
        if not journal_ids:
            raise osv.except_osv(_('Error!'),
            _('Please define a sale journal for the company "%s".') % (contract.company_id.name or '', ))

        partner_payment_term = contract.partner_id.property_payment_term and contract.partner_id.property_payment_term.id or False

        currency_id = False
        if contract.pricelist_id:
            currency_id = contract.pricelist_id.currency_id.id
        elif contract.partner_id.property_product_pricelist:
            currency_id = contract.partner_id.property_product_pricelist.currency_id.id
        elif contract.company_id:
            currency_id = contract.company_id.currency_id.id

        invoice = {
            # conta analitica
            #'project_id': contract.partner_id.property_account_receivable.id, 
            #'invoice_type_id': 1,
            'partner_id': contract.partner_id.id,
            #'currency_id': currency_id,
            #'journal_id': len(journal_ids) and journal_ids[0] or False,
            'date_order': contract.recurring_next_date,
            'origin': contract.code,
            'fiscal_position': fpos and fpos.id,
            'payment_term': partner_payment_term,
            'company_id': contract.company_id.id or False,
            'user_id': contract.manager_id.id,
        }
        return invoice

    def _prepare_invoice_lines(self, cr, uid, contract, order_id, context=None):
        """fpos_obj = self.pool.get('account.fiscal.position')
        fiscal_position = None
        if fiscal_position_id:
            fiscal_position = fpos_obj.browse(cr, uid,  fiscal_position_id, context=context)
        """
        invoice_lines = []
        for line in contract.recurring_invoice_line_ids:

            res = line.product_id
            account_id = res.property_account_income.id
            if not account_id:
                account_id = res.categ_id.property_account_income_categ.id
            #account_id = fpos_obj.map_account(cr, uid, fiscal_position, account_id)

            #taxes = res.taxes_id or False
            #tax_id = fpos_obj.map_tax(cr, uid, fiscal_position, taxes)

            invoice_lines = {
                'order_id': order_id,
                'name': line.name,
                #'account_id': account_id,
                #'account_analytic_id': contract.id,
                'price_unit': line.price_unit or 0.0,
                'product_uom_qty': line.quantity,
                #'product_uom': line.uom_id.id or False,
                'product_id': line.product_id.id or False,
                #'invoice_line_tax_id': [(6, 0, tax_id)],
            }
            self.pool.get('sale.order.line').create(cr, uid, invoice_lines, context)
        return invoice_lines

    def _prepare_invoice(self, cr, uid, contract, context=None):
        invoice = self._prepare_invoice_data(cr, uid, contract, context=context)
        #invoice['order_line'] = self._prepare_invoice_lines(cr, uid, contract, invoice['fiscal_position'], context=context)
        return invoice
