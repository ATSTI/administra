# -*- coding: utf-8 -*-
#################################################################################
#                                                                               #
# Copyright (C) 2011  Vinicius Dittgen - PROGE, Leonardo Santagada - PROGE      #
#                                                                               #
#This program is free software: you can redistribute it and/or modify           #
#it under the terms of the GNU Affero General Public License as published by    #
#the Free Software Foundation, either version 3 of the License, or              #
#(at your option) any later version.                                            #
#                                                                               #
#This program is distributed in the hope that it will be useful,                #
#but WITHOUT ANY WARRANTY; without even the implied warranty of                 #
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                  #
#GNU General Public License for more details.                                   #
#                                                                               #
#You should have received a copy of the GNU General Public License              #
#along with this program.  If not, see <http://www.gnu.org/licenses/>.          #
#################################################################################

from openerp.osv import osv, fields
from pyboleto.bank.real import BoletoReal
from pyboleto.bank.bradesco import BoletoBradesco
from pyboleto.bank.caixa import BoletoCaixa
from pyboleto.bank.bancodobrasil import BoletoBB
from pyboleto.bank.sicredi import BoletoSicredi
from pyboleto.bank.itau import BoletoItau
from pyboleto.pdf import BoletoPDF
from dateutil.relativedelta import relativedelta
from datetime import datetime, date

try:
    from cStringIO import StringIO
except ImportError:
    from StringIO import StringIO


class boleto_create(osv.osv_memory):
    """ Generate Brazilian Boletos """

    _name = 'boleto.boleto_create'

    def _get_company_config_ids(self, cr, uid, context=None):
        ret = []
        if context is None:
            context = {}

        active_ids = context.get('active_ids', [])
        active_model = context.get('active_model', [])
        if len(active_ids) and active_model == 'account.invoice':
            invoice = self.pool.get('account.invoice').browse(cr, uid, active_ids[0], context=context)
            company = self.pool.get('res.company').browse(cr, uid, [invoice.company_id.id])[0]
            for bol_conf_id in company.boleto_company_config_ids:
                bc = bol_conf_id.id, bol_conf_id.name
                ret.append(bc)

            return ret
        else:
            return True

    def _default_return(self, cr, uid, ids):
        ir_model_data = self.pool.get('ir.model.data')
        __, view_id = ir_model_data.get_object_reference(
            cr, uid, 'boleto', 'view_boleto_create'
            )

        return {
            'type': 'ir.actions.act_window',
            'res_model': 'boleto.boleto_create',
            'res_id': ids[0],
            'view_type': 'form',
            'view_mode': 'form',
            'views': [(view_id, 'form')],
            'view_id': False,
            'target': 'new',
            'nodestroy': True,
        }



    _columns = {
        'boleto_company_config_ids': fields.selection(_get_company_config_ids, u'Configuração dos Boletos', required=True),
        'file': fields.binary('Arquivo', readonly=True),
        'pdf_stream': fields.binary('PDF do Boleto', readonly=True),
        'pdf_name': fields.char('Nome do Boleto', 128, readonly=True),
        'state': fields.selection([('init', 'init'),
                               ('done', 'done')], 'state', readonly=True),
        }

    _defaults = {
        'state': 'init',
        }

    def create_boleto(self, cr, uid, ids, context=None):
        if context is None:
            context = {}
        data = self.read(cr, uid, ids, [], context=context)[0]
        bol_conf_id = int(data['boleto_company_config_ids'])
        inv_obj = self.pool.get('account.invoice')
        acc_obj = self.pool.get('account.move.line')
        boleto_obj = self.pool.get('boleto.boleto')
        active_ids = context.get('active_ids', [])
        boleto_ids = []
        for invoice in inv_obj.browse(cr, uid, active_ids, context=context):
            company = self.pool.get('res.company').browse(cr, uid, [invoice.company_id.id])[0]
            partner = self.pool.get('res.partner').browse(cr, uid, [invoice.partner_id.id])[0]
            bol_conf = self.pool.get('boleto.company_config').browse(cr, uid, [bol_conf_id])[0]

            if invoice.state in ['draft']:
                raise osv.except_osv(
                    u'Para gerar o boleto e necessário validar a Fatura.',
                    u'',
                    )
            if invoice.state in ['proforma2', 'open', 'sefaz_export']:
                acc_line = acc_obj.search(cr, uid, [('move_id','=',invoice.move_id.id)], context=context)
                for move_line in self.pool.get('account.move.line').browse(cr, uid, acc_line):
                    if not partner.boleto_partner_config.carteira:
                        raise osv.except_osv(
                            u'Faltam dados na configuração do boleto no parceiro - ' + partner.name,
                            u'O número da carteira deve ser informado.',
                            )
                    if not bol_conf.banco:
                        raise osv.except_osv(
                            u'Faltam dados na configuração do boleto no cadastro da empresa".',
                            u'O banco deve ser informado.',
                            )
                    if not bol_conf.agencia_cedente:
                        raise osv.except_osv(
                            u'Faltam dados na configuração do boleto no cadastro da empresa".',
                            u'A agência do cedente deve ser informada.',
                            )
                    if not bol_conf.conta_cedente:
                        raise osv.except_osv(
                            u'Faltam dados na configuração do boleto no cadastro da empresa".',
                            u'A conta do cedente deve ser informada.',
                            )
                    if not bol_conf.convenio:
                        raise osv.except_osv(
                            u'Faltam dados na configuração do boleto no cadastro da empresa".',
                            u'O convênio deve ser informado.',
                            )
                    nome_arquivo = invoice.number + '-' + str(move_line.id)
                    boleto = {
                    'name': invoice.number + '-' + str(move_line.id),
                    'carteira': partner.boleto_partner_config.carteira,
                    'cedente': company.id,
                    'sacado': partner.id,
                    #'juros': partner.boleto_partner_config.juros,
                    #'multa': partner.boleto_partner_config.multa,
                    'instrucoes': partner.boleto_partner_config.instrucoes,
                    'banco': bol_conf.banco,
                    'agencia_cedente': bol_conf.agencia_cedente,
                    'conta_cedente': bol_conf.conta_cedente,
                    'convenio': bol_conf.convenio,
                    'nosso_numero': invoice.internal_number,
                    #'nosso_numero': '49588827',
                    'move_line_id': move_line.id,
                    #'data_vencimento': move_line.date_maturity or date.today(),
                    'data_vencimento': invoice.date_due or date.today(),
                    #'data_vencimento': '2014/09/10',
                    #'data_documento': move_line.date_created,
                    'data_documento': invoice.date_invoice,
                    #'data_documento': '2014/08/31',
                    #'valor': move_line.debit,
                    'valor': invoice.amount_total,
                    #'valor': 215.00,
                    'numero_documento': invoice.internal_number,
                    #'numero_documento': '49588827',
                    }
                    boleto_id = boleto_obj.create(cr, uid, boleto, context)
                    boleto_ids.append(boleto_id)
            boleto_file = self.gen_boleto(cr, uid, ids, boleto_ids, context)
            data = {
                'pdf_stream': boleto_file,
                'pdf_name': nome_arquivo + '.pdf',
                'state': 'done',
                'boleto_company_config_ids': bol_conf_id,
            }
            self.write(cr, uid, ids, data, context)
        return self._default_return(cr, uid, ids)

    def gen_boleto(self, cr, uid, ids, boleto_ids, context=None):
        boleto_obj = self.pool.get('boleto.boleto')
        fbuffer = StringIO()
        boleto_pdf = BoletoPDF(fbuffer)
        for bol in boleto_obj.browse(cr, uid, boleto_ids, context=context):

            if bol.banco == 'bb':
                boleto = BoletoBB(7, 2)
            elif bol.banco == 'bradesco':
                boleto = BoletoBradesco()
            elif bol.banco == 'caixa':
                boleto = BoletoCaixa()
            elif bol.banco == 'real':
                boleto = BoletoReal()
            elif bol.banco == 'sicredi':
                boleto = BoletoSicredi(5,1)
            elif bol.banco == 'itau':
                boleto = BoletoItau()
            boleto.cedente = bol.cedente.partner_id.legal_name
            boleto.cedente_documento = bol.cedente.partner_id.cnpj_cpf
            boleto.cedente_uf = bol.cedente.partner_id.state_id.code
            boleto.cedente_logradouro = bol.cedente.partner_id.street
            boleto.cedente_cidade = bol.cedente.partner_id.l10n_br_city_id.name
            boleto.cedente_bairro = bol.cedente.partner_id.district
            boleto.cedente_cep = bol.cedente.partner_id.zip
            boleto.carteira = bol.carteira
            boleto.agencia_cedente = bol.agencia_cedente
            boleto.conta_cedente = bol.conta_cedente
            boleto.data_vencimento = datetime.date(datetime.strptime(bol.data_vencimento, '%Y-%m-%d'))
            boleto.data_documento = datetime.date(datetime.strptime(bol.data_documento, '%Y-%m-%d'))
            boleto.data_processamento = date.today()
            boleto.valor_documento = bol.valor
            boleto.nosso_numero = bol.numero_documento
            boleto.numero_documento = bol.numero_documento
            boleto.convenio = bol.convenio
            # se documento de origem contrato buscar datas
            data_ini = bol.data_vencimento[8:11] + '/' + bol.data_vencimento[5:7] + '/' + bol.data_vencimento[0:4]
            data_fim = datetime.strftime(boleto.data_vencimento+relativedelta(months=+1),'%Y-%m-%d')
            data_final = data_fim[8:11] + '/' + data_fim[5:7] + '/' + data_fim[0:4]
            instrucao = bol.instrucoes %(str(bol.valor*0.02), str(bol.valor*0.1), str(data_ini), str(data_final))
            boleto.instrucoes = instrucao.split('\n') if instrucao else ""
            #boleto.instrucoes = bol.instrucao.split('\n') if bol.instrucao else ""
            boleto.sacado = [
                "%s" % (bol.sacado.legal_name or bol.sacado.name),
                "CNPJ/CPF: %s" % (bol.sacado.cnpj_cpf),
                "%s, %s - %s - %s - Cep. %s" % (bol.sacado.street, bol.sacado.number, bol.sacado.district, bol.sacado.l10n_br_city_id.name + '-' + bol.sacado.state_id.code, bol.sacado.zip),
                ]
            boleto_pdf.drawBoleto(boleto)
            boleto_pdf.nextPage()

        boleto_pdf.save()
        boleto_file = fbuffer.getvalue().encode("base64")
        fbuffer.close()
        return boleto_file

boleto_create()
