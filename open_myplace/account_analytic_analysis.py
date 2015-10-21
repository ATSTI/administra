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
from openerp.addons.l10n_br_account_payment_boleto.boleto.document import Boleto
#from openerp.report.render import render
from openerp.tools.translate import _
#from openerp import netsvc
from openerp import workflow
#import pdb

_logger = logging.getLogger(__name__)

#class external_pdf(render):
#    def __init__(self, pdf):
#        render.__init__(self)
#        self.pdf = pdf
#        self.output_type = 'pdf'

#    def _render(self):
#        return self.pdf


class account_analytic_account(osv.osv):
    _name = "account.analytic.account"
    _inherit = "account.analytic.account"

    def _total_contrato(self, cr, uid, ids, name, arg, context=None):
        import pudb;pudb.set_trace()
        res = dict([(i, {}) for i in ids])
        for account in self.browse(cr, uid, ids, context=context):
            #    res[account.id]['est_total'] = self._get_total_estimation(account)
            #    res[account.id]['invoiced_total'] =  self._get_total_invoiced(account)
            #    res[account.id]['remaining_total'] = self._get_total_remaining(account)
            #    res[account.id]['toinvoice_total'] =  self._get_total_toinvoice(account)
            # return res
            #res = {}
            for line in self.browse(cr, uid, account.recurring_invoice_line_ids, context=context):
                val += line.quantity * line.price_unit
                #if line.analytic_account_id.pricelist_id:
                #cur = line.analytic_account_id.pricelist_id.currency_id
                #res[line.id] = self.pool.get('res.currency').round(cr, uid, cur, res[line.id])
            res['account.id']['toinvoice_total'] = val
        return res
 
    columns = {
        'total_contrato': fields.function(_total_contrato, string='Sub Total', type="float",digits_compute= dp.get_precision('Account')),
    }

    def validando_info(self, cr, uid, ids, context=None):
        #import pudb;pudb.set_trace()
        if context:
            empresa = context.get('empresa')
            cliente = context.get('cliente')
            contrato = context.get('contrato')
        msg_erro = {}
        nome = {}
        nome['contrato1'] = contrato.code
        # validando diario da empresa
        journal_obj = self.pool.get('account.journal')
        journal_ids = journal_obj.search(cr, uid, [('type', '=','sale'),('company_id', '=', empresa or False)], limit=1)
        if not journal_ids:
            msg_erro['empresa'] = 'Defina um diário para a empresa' # "%s".' %(empresa.name)
        # valida contrato (cliente, empresa, unidade, produto)
        if not contrato.partner_id:
            msg_erro['cliente'] = 'Contrato sem cliente definido'
        else:
            nome['contrato2'] = contrato.partner_id.name
            cli = contrato.partner_id
            # dados necessario para gerar o boleto
            if not cli.cnpj_cpf or not cli.legal_name or not cli.zip or not cli.street or not cli.number or not cli.l10n_br_city_id or not cli.district or not cli.state_id or not cli.country_id:
                msg_erro['cliente1'] = u'Falta preencher campos obrigatórios no cadastro do cliente(CNPJ/CPF, Contratante, Endereço completo)'  
            if not cli.property_payment_term:
                msg_erro['cliente2'] = u'Falta dia do vencimento no cadastro do cliente - Condições de Pagamento do Cliente'
            if not cli.customer_payment_mode:
                msg_erro['cliente3'] = u'Falta banco para a emissão da cobrança no cadastro do cliente - Modo de Pagamento do Cliente'
            if not cli.property_account_position:
                msg_erro['cliente4'] = u'Falta Posição Fiscal no cadastro do cliente - Posição Fiscal'

            if not cli.partner_fiscal_type_id:
                msg_erro['cliente5'] = u'Falta Tipo Fiscal no cadastro do cliente - Tipo Fiscal do Parceiro'
            if empresa != cli.company_id.id:
                msg_erro['empresa1'] = u'Empresa no contrato diferente do cadastro do cliente'
            if empresa != cli.property_account_receivable.company_id.id:
                msg_erro['empresa2'] = u'Conta de Recebimento não pertence a empresa do contrato'
            if empresa != cli.property_account_position.company_id.id:
                msg_erro['empresa3'] = u'Posição Fiscal não pertence a empresa do contrato'


            # fatura invalida
            venda = self.pool.get('sale.order')
            venda_cli = venda.search(cr, uid, [('state', '=', 'manual'),('partner_id','=', cli.id)],context=context)
            for sale_order in venda.browse(cr, uid, venda_cli, context=context):
                if sale_order.state != 'manual':
                    msg_erro['pedido'] = 'Fatura com status diferente de Manual %s' %(sale_order.name)

        # validar informacoes no contrato
        if empresa != contrato.template_id.company_id.id:
            msg_erro['contrato3'] = u'Empresa diferente da Unidade no contrato'

        """        
        if invoice.state in ['draft']:
            msg_erro['erro1'] = '1-Falta Validar a Fatura: %s %s' %(invoice.origin, str(active_ids[0]))
        if not partner.boleto_partner_config.carteira:
            msg_erro['erro2'] = u'2-Numero da Carteira nao informada no cliente-%s' %(partner.name)
        if not bol_conf.banco:
            msg_erro['erro3'] = u'3-Banco nao informado.'
        if not bol_conf.agencia_cedente:
            msg_erro['erro4'] = u'4-Agencia Cedente nao informada.'
        if not bol_conf.conta_cedente:
            msg_erro['erro5'] = u'5-Conta Cedente nao informada.'
        if not bol_conf.convenio:
            msg_erro['erro6'] = u'6-Convenio nao informado.'
        msg_erro['erro0'] = "Conta de cliente e/ou produto diferente da Unidade/Empresa."
        """
        #import pudb;pudb.set_trace()
        if msg_erro:
            msg_erro['contrato1'] = nome.get('contrato1')
            msg_erro['contrato2'] = nome.get('contrato2')
            template_id =self.pool.get('ir.model.data').get_object_reference(cr,uid, 'myplace','email_erro_fatura')[1]
            self.pool.get('email.template').send_mail(cr, uid,template_id, uid, force_send=True, context=msg_erro)
            return False
        else:
            return True

    """ 5 - Gerando o boleto """
    def criar_boleto(self, cr, uid, ids, context=None):
        # @@@@@@@@@@@@@@@  colocar aqui a validacao dos campos obrigatorio para o email  ?????????
        if not context:
            context = {}
        ids_move_lines = []
        aml_obj = self.pool.get('account.move.line')
        ai_obj = self.pool.get('account.invoice')
        for account_invoice in ai_obj.browse(cr, uid, ids):
            id_invoice = account_invoice.id
            for move_line in account_invoice.move_line_receivable_id:
                ids_move_lines.append(move_line.id)

        boleto_list = aml_obj.send_payment(cr, uid, ids_move_lines)
        if not boleto_list:
            raise osv.except_osv(
                'Error !', ('Não é possível gerar os boletos\n'
                            'Certifique-se que a fatura esteja confirmada e o forma de pagamento seja duplicatas'))
        pdf_string = Boleto.get_pdfs(boleto_list).encode("base64")
        #import pudb;pudb.set_trace()
        attachment_obj = self.pool.get('ir.attachment')
        attachment_id = attachment_obj.create(cr, uid,
            {
            'name': 'nome_arquivo.pdf',
            'datas': pdf_string,
            'datas_fname': 'nome_arquivo.pdf',
            'res_model': 'account.invoice',
            'res_id': id_invoice,
            'type': 'binary'
            }, context=context)
        #msg_erro['id'] = attachment_id
        return attachment_id

    """ 4 - Finaliza as faturas em aberto """
    def faturar_invoice_done(self, cr, uid, ids, context=None):
        #import pudb;pudb.set_trace()
        id = 0
        contabil = self.pool.get('account.invoice')
        boleto_obj = self.pool.get('boleto.boleto_create')
        boleto = {}
        # Localiza as faturas com status pendente para confirmar e gerar o boleto
        cont_ids = contabil.search(cr, uid, [('state', '=', 'draft'), ('type','=', 'out_invoice'),('date_invoice','>','2015-07-30')],context=context)
        # gerar BOLETO
        msg_erro = {}
        for id in contabil.browse(cr, uid, cont_ids, context=context):
            grp_msg = boleto.setdefault(id.partner_id.name, [])
            # @@@@@@@@@@@@@@@@@@  19/06/2015 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
             # comentei aqui , pois, precisamos primeiro confirmar todas que estao la, pra depois usar isto
            if not id.payment_term:
                id.payment_term = id.partner_id.property_payment_term
            try:
                # valida a Fatura
                contabil.action_date_assign(cr, uid, id.id, context)
                contabil.action_move_create(cr, uid, id.id, context)
                contabil.action_number(cr, uid, id.id, context)
                contabil.invoice_validate(cr, uid, id.id, context)
                #contabil.signal_workflow(cr, uid, [id.id], 'invoice_open')
                boleto['fatura'] = id.internal_number
            except:
                boleto['fatura'] = id.id
                #msg_erro['fatura'] = id.id
                continue
            context['active_ids'] = [id.id] 
            context['active_id'] = id.id 
            #context['active_model'] = 'account.invoice'
            context['origem'] = 'contract'
            if not len(msg_erro):
                #boleto = boleto_obj.create_boleto(cr, uid, ids, context)
                self.criar_boleto(cr, uid, id.id, context)
            else:
                boleto['erro0'] = msg_erro.get('erro0')
                boleto['id'] = 0
            if len(boleto) and boleto.get('id') == 0:
                #boleto['cliente'] = vnd_cli.partner_id.name
                grp_msg.append(boleto)
                print "enviar email deu erro : %s " %(boleto)
            else:
                print "passou ........"
        if len(boleto) > 12:
            #boleto['cliente'] = vnd_cli.partner_id.name
            print "enviar email deu erro : %s " %(boleto)
            #template_id =self.pool.get('ir.model.data').get_object_reference(cr,uid, 'myplace','email_erro_fatura')[1]
            #self.pool.get('email.template').send_mail(cr, uid,template_id, uid, force_send=True, context=context)
        return id            

    """ 3 - Executa o faturamento das vendas existentes """
    def faturar_invoice(self, cr, uid, ids, context=None):
        venda = self.pool.get('sale.order')
        order_obj = self.pool.get('sale.order')
        venda_ids = venda.search(cr, uid, [('state', '=', 'manual')],context=context)
        #newinv = []
        cliente = 0
        id = 0
        mk = {'grouped': True}
        vnd = self.pool.get('sale.make.invoice')
        id_mk = vnd.create(cr, uid, mk)
        data = vnd.read(cr, uid, id_mk)
        # pegando os pedidos avulso, e juntando com o contrato
        for vnd_cli in venda.browse(cr, uid, venda_ids, context=context):
            id = vnd_cli.partner_id.id
            if cliente != vnd_cli.partner_id.id:
                #import pudb;pudb.set_trace()
                cliente = vnd_cli.partner_id.id
                # validando dados do cliente
                venda_cli = venda.search(cr, uid, [('state', '=', 'manual'),('partner_id','=',vnd_cli.partner_id.id)],context=context)
                #grp_msg = boleto.setdefault(vnd_cli.partner_id.name, [])
                cli = vnd_cli.partner_id

                # cria a fatura
                order_obj.action_invoice_create(cr, uid, venda_cli, data['grouped'], date_invoice=data['invoice_date'])
                #print 'FEITO - ' + vnd_cli.partner_id.name
                orders = order_obj.browse(cr, uid, venda_cli, context=context)
                # @@@@@@@@@@@@@@@@@@  19/06/2015 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
                # comentei aqui , pois, precisamos primeiro confirmar todas que estao la, pra depois usar isto
                order_obj.signal_workflow(cr, uid, [o.id for o in orders if o.order_policy == 'manual'], 'manual_invoice')
                # @@@@@@@@@@@@@@@@@@  19/06/2015 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 

        return id

    """ 2 - transforma a cotação em pedido de venda """
    def _confirma_invoice(self, cr, uid, ids, context=None):
        #import pudb;pudb.set_trace()
        workflow.trg_validate(uid, 'sale.order', ids, 'order_confirm', cr)
        self.faturar_invoice(cr, uid, ids, context)
        self.faturar_invoice_done(cr, uid, ids, context)
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

    """ 1 - Inicia o processo """
    def _recurring_create_invoice(self, cr, uid, ids, automatic=False, context=None):
        d_val = {}
        context = context or {}
        current_date =  time.strftime('%Y-%m-%d')
        invoice_ids = []
        if ids:
            contract_ids = ids
        else:
            contract_ids = self.search(cr, uid, [('recurring_next_date','<=', current_date), ('state','=', 'open'), ('recurring_invoices','=', True), ('type', '=', 'contract')])
        if contract_ids:
            cr.execute('SELECT company_id, array_agg(id) as ids FROM account_analytic_account WHERE id IN %s GROUP BY company_id', (tuple(contract_ids),))
            
            for company_id, ids in cr.fetchall():
                d_val['empresa'] = company_id
                #print 'Empresa - ' + str(company_id)
                for contract in self.browse(cr, uid, ids, context=dict(context, company_id=company_id, force_company=company_id)):
                    d_val['contrato'] = contract
                    d_val['cliente'] = contract.partner_id
                    if not self.validando_info(cr, uid, id, d_val):
                        #import pudb; pudb.set_trace() 
                        # alguma informacao errada, passando para o proximo 
                        continue 
                    try:
                        #import pudb; pudb.set_trace() 
                        #invoice_values = self._prepare_invoice(cr, uid, contract, context=context)
                        venda_values = self._prepare_invoice(cr, uid, contract, context=context)
                        #invoice_ids.append(self.pool['account.invoice'].create(cr, uid, invoice_values, context=context))
                        invoice_ids.append(self.pool['sale.order'].create(cr, uid, venda_values, context=context))
                        # 'order_id': order.id,
                        linha_venda = self._prepare_invoice_lines(cr, uid, contract, invoice_ids[0], context=context)
                        # self.pool.get('sale.order.line').create(cr, uid, linha_venda, context)
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
                            #print 'CONTRATO - ' + str(contract)
                    except Exception:
                        if automatic:
                            cr.rollback()
                            #print ' ERRO CONTRATO - ' + str(contract)
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
