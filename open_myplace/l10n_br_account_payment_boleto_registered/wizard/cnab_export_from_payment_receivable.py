# coding: utf-8
# ###########################################################################
#
#    Author: Luis Felipe Mileo
#            Fernando Marcato Rodrigues
#            Daniel Sadamo Hirayama
#    Copyright 2015 KMEE - www.kmee.com.br
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

import time

from openerp.osv import fields, osv, orm
from decimal import Decimal
from datetime import datetime
from openerp.tools.translate import _
import pdb


class CnabFromAccountPaymentReceivable(orm.TransientModel):
    """
    Generate Entries by Statement from Invoices
    """
    _name = "cnab.from.account.payment.receivable"
    _description = "Entries by Statement from Invoices"
    _columns = {
        # 'line_ids': fields.many2many('account.move.line', 'account_move_line_relation', 'move_id', 'line_id', 'Invoices'),
        'line_ids': fields.many2many('account.move.line', 'account_move_line_cnab_segmentos', 'move_id', 'line_id', 'Invoices'),
    }

    def populate_statement(self, cr, uid, ids, context=None):
        if context is None:
            context = {}


        statement_id = context.get('statement_id', False)
        # if not statement_id:
        #     return {'type': 'ir.actions.act_window_close'}
        data = self.read(cr, uid, ids, context=context)[0]

        id_arquivo = context.get('active_id')

        line_ids = data['line_ids']
        if not line_ids:
            return {'type': 'ir.actions.act_window_close'}

        line_obj = self.pool.get('account.move.line')
        move_pool = self.pool.get('account.move')
        segmento_pool = self.pool.get('cnab240export.segmentos')
        partner_pool = self.pool.get('res.partner')
        res_bank_pool = self.pool.get('res.partner.bank')

        # carlos
        #for invoice in inv_obj.browse(cr, uid, active_ids, context=context):
        #    company = self.pool.get('res.company').browse(cr, uid, [invoice.company_id.id])[0]


        # Header arquivo
        res_cedente = {}

        res_bank_pool = self.pool.get('res.partner.bank')

        res_my_company_pool = self.pool.get('res.company')



        actual_model = context.get('active_ids')
        arquivo_pool = self.pool.get('cnab240export')
        arquivo_id = arquivo_pool.write(cr, uid, actual_model, res_cedente)

        # Segmento
        # for each selected move lines
        for line in line_obj.browse(cr, uid, line_ids, context=context):
            voucher_res = {}
            segmento_res = {}
            ctx = context.copy()

            context.update({'move_line_ids': [line.id],
                            'invoice_id': line.invoice.id})

            vencimento_titulo = line.date

            partner_id_move = line.partner_id.id
            company_id_move = line.company_id.id
            bank_id_move = line.company_id.bank_ids.id
            move_id_moveLine = line.move_id.id

            # cedente
            for cedente_id in res_my_company_pool.browse(cr, uid, [company_id_move], context):
                cedente_nome = cedente_id.legal_name
                cedente_inscricao_numero = int(cedente_id.cnpj_cpf.replace(".", "").\
                    replace("/", "").replace("-", ""))
                #if cedente_id.is_company == True:  
                cedente_inscricao_tipo = 2 # É CNPJ
                #else:
                #    cedente_inscricao_tipo = 1

                #bank_id = res_bank_pool.search(cr, uid,[('bank_bic', '=', '104')]) # CEF
                #pdb.set_trace()

                #for bank_data in res_bank_pool.browse(cr, uid, bank_id, context):
                for bank_data in res_bank_pool.browse(cr, uid, [bank_id_move], context):
                    cedente_agencia = bank_data.bra_number # Numero Agencia
                    cedente_conta = bank_data.acc_number
                    cedente_agencia_conta_dv = bank_data.acc_number_dig
                    nome_do_banco = bank_data.bank_name

            res_cedente = {
                'cedente_nome': cedente_nome,
                'cedente_inscricao_numero': cedente_inscricao_numero,
                'cedente_inscricao_tipo': cedente_inscricao_tipo,
                'cedente_agencia': cedente_agencia,
                'cedente_conta': cedente_conta,
                'cedente_agencia_conta_dv': cedente_agencia_conta_dv,
                'nome_do_banco': nome_do_banco,
            }

            # Sacado
            for id_partner in partner_pool.browse(cr, uid, [partner_id_move], context=None):
                if id_partner.is_company == True:
                    sacado_inscricao_tipo = 2 # É CNPJ
                else:
                    sacado_inscricao_tipo = 1 # É CPF
                sacado_inscricao_numero = id_partner.cnpj_cpf.replace(".", "").replace("/", "").replace("-", "")
                partner_id = id_partner.id
                #sacado_nome = id_partner.legal_name
                #sacado_endereco = id_partner.street
                #sacado_bairro = id_partner.district
                #sacado_cep = id_partner.zip[0:5]
                #sacado_cep_sufixo = id_partner.zip[-3:]
                #sacado_cidade = id_partner.city

            for id_move in move_pool.browse(cr, uid, [move_id_moveLine], context=None):
                numero_documento = id_move.name

            """ Carlos @@@ coloquei acima
            # Cedente 
            #for id_partner in partner_pool.browse(cr, uid, [1], context=None):
            #    pass

            #for bank_data in res_bank_pool.browse(cr, uid, bank_id, context):
            #    cedente_conta = bank_data.acc_number
            #    cedente_conta_dv = bank_data.acc_number_dig
            #    cedente_agencia = bank_data.bra_number # Numero Agencia
            #    cedente_agencia_conta_dv = bank_data.bra_number_dig
            """

            data_emissao_titulo = datetime.now()
            # data_emissao_titulo = int(data_emissao_titulo.strftime("%d%m%Y"))

            # For servico_numero_registro.
            x = 1

            segmento_res = {
                'arquivo_id': id_arquivo,
                'carteira_numero': 0, # Descrição G069, item 1
                'nosso_numero': 0,
                'nosso_numero_dv': 0,
                'numero_documento': numero_documento,
                'vencimento_titulo': vencimento_titulo,
                'valor_titulo': line.credit,
                'especie_titulo': 8, # Código da Nota de Crédito Comercial
                'aceite_titulo': u'A', # Codigo Febraban que identifica se o titulo foi aceito pelo sacado
                'data_emissao_titulo': data_emissao_titulo,
                'juros_mora_taxa_dia': 0,
                'valor_abatimento': Decimal('0.00'), # G045: Valor do abatimento (redução do valor do documento, devido a algum problema), expresso em moeda corrente.
                'identificacao_titulo': numero_documento,
                'codigo_protesto': 3, # C026: não protestar
                'prazo_protesto': 0, # C027: número de dias para protesto. De 2 a 90 dias
                'codigo_baixa': 0, # C028: ‘1’ = Baixar / Devolver; ‘2’ = Não Baixar / Não Devolver
                'prazo_baixa': 0, # C029: Número de dias para Baixa/Devolução
                'sacado_inscricao_tipo': sacado_inscricao_tipo,
                'sacado_inscricao_numero': sacado_inscricao_numero,
                'partner_id': partner_id,
                #'sacado_nome': sacado_nome,
                #'sacado_endereco': sacado_endereco,
                #'sacado_bairro': sacado_bairro,
                #'sacado_cep': sacado_cep,
                #'sacado_cep_sufixo': sacado_cep_sufixo,
                #'sacado_cidade': sacado_cidade,
                #'sacado_uf': u'SP',
                # Extras
                # 'cedente_agencia': int(cedente_agencia),
                # 'cedente_conta': int(cedente_conta),
                # 'cedente_agencia_conta_dv': int(cedente_agencia_conta_dv),
            }

            segmento_id = segmento_pool.create(cr, uid, segmento_res, context=context)

        return {'type': 'ir.actions.act_window_close'}
