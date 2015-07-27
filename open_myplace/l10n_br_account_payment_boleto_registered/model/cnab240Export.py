# -*- coding: utf-8 -*-
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
import unicodedata
from openerp.tools.translate import _
from openerp.osv import orm
from openerp.osv import fields
import os
import codecs
from datetime import datetime
from cnab240 import errors
#from cnab240.bancos import cef
from cnab240.bancos import itau
from cnab240.tipos import Arquivo
from decimal import Decimal
import pdb

# Erro: quando cedente_convenio no json não possui default (e não deve possuir): Unable to get repr for <class 'cnab240.registro.cedente_convenio'>
    # Função def __unicode__ do arquivo registro, biblioteca CNAB.


template_header = {
    'cedente_nome': u'',
    'cedente_inscricao_numero': 0,
    'cedente_inscricao_tipo': 1,
    'cedente_agencia': 3,
    'cedente_conta': 1,
    'cedente_agencia_conta_dv': u'A',
    # Extras
    'arquivo_sequencia': 1,
    'cedente_codigo_agencia_cod': 1234,
    'cedente_codigo_agencia_digito': u'A',
    'cedente_codigo_codCedente': 123456,
    'nome_do_banco': U'BANCO',
    'arquivo_codigo': 1, # Remessa/Retorno,
    'reservado_banco_campo22': u'',
    'reservado_cedente_campo23': u'REMESSA-TESTE',
    'versaoAplicativo_campo24': u'',
    'servico_operacao': u'R',
}

template_segmento = {
    'arquivo_id': 1,
    'carteira_numero': 0, # Descrição G069, item 1
    'nosso_numero': 0,
    'nosso_numero_dv': 0,
    'numero_documento': u'A',
    'vencimento_titulo': 10081990,
    'valor_titulo': 1,
    'especie_titulo': 8, # Código da Nota de Crédito Comercial
    'aceite_titulo': u'A', # Codigo Febraban que identifica se o titulo foi aceito pelo sacado
    'data_emissao_titulo': 10081990,
    'juros_mora_taxa_dia': 0,
    'valor_abatimento': Decimal('0.00'), # G045: Valor do abatimento (redução do valor do documento, devido a algum problema), expresso em moeda corrente.
    'identificacao_titulo': u'A',
    'codigo_protesto': 3, # C026: não protestar
    'prazo_protesto': 0, # C027: número de dias para protesto. De 2 a 90 dias
    'codigo_baixa': 0, # C028: ‘1’ = Baixar / Devolver; ‘2’ = Não Baixar / Não Devolver
    'prazo_baixa': u'0', # C029: Número de dias para Baixa/Devolução
    'sacado_inscricao_tipo': 1,
    'sacado_inscricao_numero': 1,
    'sacado_nome': u'CLIENTE',
    'sacado_endereco': u'RUA DO CLIENTE',
    'sacado_bairro': u'BAIRRO DO CLIENTE',
    'sacado_cep': 35500,
    'sacado_cep_sufixo': 001,
    'sacado_cidade': u'BAIRRO DO CLIENTE',
    'sacado_uf': u'UF',
    'cedente_agencia': 3,
    'cedente_conta': 1,
    'cedente_agencia_conta_dv': u'A',
    # Extras
    'controlecob_numero': 1,
    # Header Lote
    'servico_operacao': u'R', # Biblioteca CNAB requeria default, como no header_lote_cobranca itau
    'servico_servico': 1, # Biblioteca CNAB requeria default, como no header_lote_cobranca itau
    'cedente_convenio': 123456,
    'cedente_agencia': 123,
    'cedente_agencia_dv': u'A',
    'cedente_cod_cedente': 1,
    'cedente_codModelo': 1, # C078
    'informacao1': u'',
    'informacao2': u'',
    'data_credito': 10081990,
    # Segmento P
    'servico_numero_registro': 1,
    'servico_codigo_movimento': 1,
    'cedente_codigoCedente': 1,
    'carteira_titulo': 1,
    'carteira_cod': 1,
    'cobranca_cadastramento': 1,
    'cobranca_emissaoBloqueto': 1,
    'cobranca_distribuicaoBloqueto': u'A',
    'juros_cod_mora': 1,
    'juros_mora_data': 10081990,
    'juros_mora_taxa_dia': Decimal('0.00'),
    'desconto1_cod': 1,
    'desconto1_data': 10081990,
    'desconto1_percentual': Decimal('1.00'),
    'valor_iof': Decimal('0.00'),
    'identificacao_titulo': u"B",
    'codigo_moeda': 1,
    # Segmento Q
    'sacador_inscricao_tipo': 1,
    'sacador_inscricao_numero': 1234,
    'sacador_nome': u'ABCDE',
    'banco_correspondente': 123,
    'numero_no_bancoCorrespondente': u'4321',
    # Trailer lote
    'cobrancasimples_quantidade_titulos': 1, # Biblioteca CNAB requeria default
    'cobrancasimples_valor_titulos': Decimal('1.00'),
    'cobrancaCaucionada_quantidade_titulos': 14, # Biblioteca CNAB requeria default
    'cobrancaCaucionada_valor_titulos': Decimal('1.00'),
    'total_desc_titulosCobranca': 1,
    'total_desc_titulosCarteira': 1,
}


class Cnab240Export(orm.Model):
    _name = 'cnab240export'
    _description = u'Principal. Exporta documentos no formato CNAB240'

    _columns = {
        'arquivo_sequencia': fields.char(u'Sequência (NSA)', size=6),
        'sacado': fields.many2one('res.partner', 'Sacado'),
        'cedente_nome': fields.char(u'Nome do Cedente', size=30),
        'cedente_inscricao_numero': fields.char(
            u'CNPJ', size=14), # CNPJ/CPF
        'cedente_inscricao_tipo': fields.integer(
            u'Tipo de inscrição do cedente', size=1,
            help=u'CPF / CNPJ / PIS...'), # CNPJ/CPF
        'cedente_conta': fields.integer(u'Conta'),
        'cedente_conta_dv': fields.char(u'Dígito Verificador', size=1),

        'segmento_ids': fields.one2many(
            'cnab240export.segmentos', 'arquivo_id', u'Segmentos'),
        # Extras
        'cedente_agencia': fields.integer(u'Cedente: Código Agência', size=5),
        'cedente_agencia_digito': fields.char(u'Cedente: Dígito Verificador Agência', size=1),
        'cedente_codCedente': fields.integer(u'Código do Convênio no Banco', size=6), # Código fornecido pelo banco para identificar o cliente
        'nome_do_banco': fields.char(u'Cedente: Nome do Banco', size=30),
        'codigo_banco': fields.selection([
            ('104',u'CEF'),
            ('341', u'Itaú'),
            ('888', u'Mercantil'),], u'Codigo Banco', select=True,
            help=u'Identifica qual banco será usado na exportação'), # TODO make this field required -> Erro de tipo de campo inviabiliza isso.
        'state': fields.selection([
            ('draft','Draft'),
            ('confirm','Confirmado'),
            ('sent','Enviado'),
            ],'Status', select=True)
    }

    _defaults = {
        'arquivo_sequencia': lambda obj, cursor, user, context: obj.pool.get('ir.sequence').get(cursor, user, 'cnab240export'),
        'state': 'draft',
        'codigo_banco': u'104',
    }

    def removeAcentos(self, palavra):
        palavra = unicodedata.normalize('NFKD', palavra.decode('utf-8')).encode('ascii', 'ignore')
        return palavra

    def montarArquivo(self, cr, uid, ids, context=None):
        res = {}
        cnab_data = dict()
        for obj_id in self.browse(cr, uid, ids, context):
            # exportation_bank = obj_id.codigo_banco
            exportation_bank = u'341'

        segmento_pool = self.pool.get('cnab240export.segmentos')

        ids_segmentos = segmento_pool.search(
            cr, uid,
            [('arquivo_id', 'in', ids)])

        #itau_data = dict()


        #itau_data['arquivo'] = dict_arquivo
        #itau_data['cobranca'] = dict_cobranca
        #arquivo = Arquivo(itau, **itau_data['arquivo'])
        #arquivo.incluir_cobranca(**itau_data['cobranca'])
        #arquivo.lotes[0].header.servico_servico = 1

        # Header
        dict_arquivo = self.get_cnab_header_data(cr, uid, ids, context)
        cnab_data['arquivo'] = dict_arquivo
        if exportation_bank == u'104':
            arquivo = Arquivo(itau, **cnab_data['arquivo'])
        elif exportation_bank == u'341':
            arquivo = Arquivo(itau, **cnab_data['arquivo'])

        #cnab_data['cobranca'] = dict_cobranca
        #arquivo.incluir_cobranca(**cnab_data['cobranca'])
        for seg in ids_segmentos:
            #pdb.set_trace()
            segmento_cobranca = self.get_cnab_segmento_data(cr, uid, seg, context)
            #cedente_nome = obj_id.cedente_nome
            #cedente_inscricao_numero = obj_id.cedente_inscricao_numero
            #cedente_inscricao_tipo = obj_id.cedente_inscricao_tipo
            #cedente_agencia = obj_id.cedente_agencia
            #cedente_conta = obj_id.cedente_conta
            #cedente_agencia_conta_dv = obj_id.cedente_agencia_digito
            #cedente_codigo_codCedente = obj_id.cedente_codCedente
            #nome_do_banco = obj_id.nome_do_banco
            #arquivo_sequencia = int(obj_id.arquivo_sequencia)
            segmento_cobranca['cedente_nome'] = dict_arquivo.get('cedente_nome')
            segmento_cobranca['cedente_inscricao_numero'] = dict_arquivo.get('cedente_inscricao_numero')
            segmento_cobranca['cedente_inscricao_tipo'] = dict_arquivo.get('cedente_inscricao_tipo')
            segmento_cobranca['cedente_agencia'] = dict_arquivo.get('cedente_agencia')
            segmento_cobranca['cedente_conta'] = dict_arquivo.get('cedente_conta')
            segmento_cobranca['cedente_agencia_conta_dv'] = dict_arquivo.get('cedente_agencia_conta_dv')
            #segmento_cobranca['dente_codCedente'] = dict_arquivo.get('cedente_codCedente')
            #segmento_cobranca['nome_do_banco'] = dict_arquivo.get('nome_do_banco')
            #segmento_cobranca[''] = dict_arquivo.get('')
            
            cnab_data['cobranca'] = segmento_cobranca
            arquivo.incluir_cobranca(**cnab_data['cobranca'])
            arquivo.lotes[0].header.servico_servico = 1

        str = unicode(arquivo)
        f = open('/tmp/arquivo_remessa.rem','w')
        f.write(str) # python will convert \n to os.linesep
        f.close()

        return True

    def get_cnab_header_data(self, cr, uid, ids, context=None):
        res = {}

        for obj_id in self.browse(cr, uid, ids, context):
            cedente_nome = obj_id.cedente_nome
            cedente_inscricao_numero = obj_id.cedente_inscricao_numero
            cedente_inscricao_tipo = obj_id.cedente_inscricao_tipo
            cedente_agencia = obj_id.cedente_agencia
            cedente_conta = obj_id.cedente_conta
            cedente_agencia_conta_dv = obj_id.cedente_agencia_digito
            cedente_codigo_codCedente = obj_id.cedente_codCedente
            nome_do_banco = obj_id.nome_do_banco
            arquivo_sequencia = int(obj_id.arquivo_sequencia)

        pdb.set_trace()
        cedente_inscricao_numero = cedente_inscricao_numero.replace(".", "").replace("/", "").replace("-", "")
        data_arq = datetime.strftime(datetime.now(),'%Y-%m-%d %H:%M:%S') 
        data_arquivo = data_arq[8:10] + data_arq[5:7] + data_arq[0:4]
        hora_arq = data_arq[11:13] + data_arq[14:16] + data_arq[17:19]

        res = {
            'cedente_inscricao_tipo': cedente_inscricao_tipo,
            'cedente_inscricao_numero': int(cedente_inscricao_numero),
            'cedente_agencia': cedente_agencia,
            'cedente_conta': cedente_conta,
            'cedente_agencia_conta_dv': int(cedente_agencia_conta_dv),
            'cedente_nome': cedente_nome,
            'arquivo_data_de_geracao': int(data_arquivo),
            'arquivo_hora_de_geracao': int(hora_arq),
            'arquivo_sequencia': arquivo_sequencia,
        }
        #resj = {
        #    'cedente_inscricao_tipo': 2,
        #    'cedente_inscricao_numero': 15594050000111,
        #    'cedente_agencia': 4459,
        #    'cedente_conta': 17600,
        #    'cedente_agencia_conta_dv': 6,
        #    'cedente_nome': u"TRACY TECNOLOGIA LTDA ME",
        #    'arquivo_data_de_geracao': 27062012,
        #    'arquivo_hora_de_geracao': 112000,
        #    'arquivo_sequencia': 900002
        #}
        #    'cedente_codigo_agencia_cod': cedente_agencia,
        #    'cedente_codigo_agencia_digito': cedente_agencia_conta_dv,
        #    'nome_do_banco': nome_do_banco,
        #    'arquivo_codigo': 1, # Remessa/Retorno,
        #    'reservado_banco_campo22': u'',
        #    'reservado_cedente_campo23': u'REMESSA-TESTE',
        #    'versaoAplicativo_campo24': u'',
        #    'servico_operacao': u'R',
        #    'cedente_codigo_codCedente': cedente_codigo_codCedente,
        #'arquivo_sequencia': arquivo_sequencia,
        #dict_arquivo = {
        #print 'inscricao_tipo - ' + str(res.get('cedente_inscricao_tipo'))
        #print    'cedente_inscricao_tipo: 2,'
        #print 'inscricao_numero - ' + str(res.get('cedente_inscricao_numero'))
        #print    'cedente_inscricao_numero: 15594050000111,'
        #print 'cedente_agencia - ' + str(res.get('cedente_agencia'))
        #print    'cedente_agencia: 4459,'
        #print 'cedente_conta - ' + str(res.get('cedente_conta'))
        #print    'cedente_conta: 17600,'
        #print 'cedente_agencia_conta_dv - ' + str(res.get('cedente_agencia_conta_dv'))
        #print    'cedente_agencia_conta_dv: 6,'
        #print 'cedente_nome - ' + str(res.get('cedente_nome'))
        #print    'cedente_nome: u"TRACY TECNOLOGIA LTDA ME",'
        #datetime.now()
        #print 'data_arquivo - ' + str(res.get('arquivo_data_de_geracao'))
        #    'arquivo_data_de_geracao': 27062012,
        #    'arquivo_hora_de_geracao': 112000,
        #    'arquivo_sequencia': 900002
        #}

        return res

    def get_cnab_segmento_data(self, cr, uid, ids, context=None):
        res = {}
        segmento_pool = self.pool.get('cnab240export.segmentos')

        if not isinstance(ids, list):
            ids = [ids]
        res = {
            #'cedente_agencia': 4459,
            #'cedente_conta': 17600,
            #'cedente_agencia_conta_dv': 6,
            #'carteira_numero': 109,
            'nosso_numero': 99999999,
            'nosso_numero_dv': 9,
            #'numero_documento': u'9999999999',
            'vencimento_titulo': 30072012,
            'valor_titulo': Decimal('100.00'),
            'especie_titulo': 8,
            'aceite_titulo': u'A',
            'data_emissao_titulo': 27062012,
            'juros_mora_taxa_dia': Decimal('2.00'),
            'valor_abatimento': Decimal('0.00'),
            'identificacao_titulo': u'BOLETO DE TESTE',
            'codigo_protesto': 3,
            'prazo_protesto': 0,
            'codigo_baixa': 0,
            'prazo_baixa': 0,
            'sacado_inscricao_tipo': 1,
            'sacado_inscricao_numero': 83351622120,
            #'sacado_nome': u'JESUS DO CEU',
            #'sacado_endereco': u'RUA AVENIDA DO CEU, 666',
            #'sacado_endereco': u'%s' %(sacado_endereco),
            #'sacado_bairro': u'JD PARAISO',
            #'sacado_cep': 60606,
            #'sacado_cep_sufixo': 666,
            #'sacado_cidade': u'PARAISO DE DEUS',
            #'sacado_cidade': u'%s' %(sacado_cidade),
            #'sacado_uf': u'SP',
        }

        for segmento in segmento_pool.browse(cr, uid, ids, context):
            #cedente_agencia = segmento.cedente_agencia
            #cedente_carteira = segmento.carteira_numero
            id_arquivo = segmento.arquivo_id
            res['numero_documento'] = str(segmento.numero_documento)
            #nosso_numero = segmento.nosso_numero
            #nosso_numero_dv = segmento.nosso_numero_dv
            juros = segmento.juros_mora_taxa_dia

            vencimento_titulo = segmento.vencimento_titulo
            vencimento_titulo = int(vencimento_titulo[-2:] +
                                    vencimento_titulo[-5:-3] +
                                    vencimento_titulo[0:4] )

            valor_titulo = Decimal(format((segmento.valor_titulo), '.2f'))

            data_emissao_titulo = segmento.data_emissao_titulo
            data_emissao_titulo = int(data_emissao_titulo[-2:] +
                                      data_emissao_titulo[-5:-3] +
                                      data_emissao_titulo[0:4])
            especie_titulo = segmento.especie_titulo

            sacado_inscricao_tipo = segmento.sacado_inscricao_tipo
            sacado_inscricao_numero = int(segmento.sacado_inscricao_numero)
            #sacado_nome = segmento.sacado_nome.encode('utf-8')

            res['sacado_nome'] = segmento.partner_id.legal_name
            res['sacado_endereco'] = segmento.partner_id.street + ', ' + segmento.partner_id.number
            res['sacado_bairro'] = segmento.partner_id.district
            res['sacado_cep'] = int(segmento.partner_id.zip[0:5])
            res['sacado_cep_sufixo'] = int(segmento.partner_id.zip[-3:])
            #pdb.set_trace()
            res['sacado_cidade'] = segmento.partner_id.l10n_br_city_id.name
            res['sacado_uf'] = segmento.partner_id.state_id.code
            cnpj_cpf = segmento.partner_id.cnpj_cpf.replace(".", "").replace("/", "").replace("-", "")
            if len(cnpj_cpf) > 11:
                res['sacado_inscricao_tipo'] = 2 # É CNPJ
            else:
                res['sacado_inscricao_tipo'] = 1
            #'sacado_inscricao_tipo': 1,
            res['sacado_inscricao_numero'] = int(cnpj_cpf)
            res['carteira_numero'] = int(segmento.partner_id.boleto_partner_config.carteira)
            
            #res['nosso_numero'] = int(segmento.nosso_numero)
            #res['nosso_numero_dv'] = int(segmento.nosso_numero_dv)

            servico_numero_registro = segmento.servico_numero_registro

        # Algumas informações já existem no header
        #if not isinstance(id_arquivo, list):
        #    id_arquivo = [id_arquivo]
        #for obj_id in self.browse(cr, uid, id_arquivo, context):
            #cedente_convenio = obj_id.cedente_codigo_codCedente

        #resx = {
        #    'cedente_agencia': cedente_agencia,
        #    'cedente_conta': cedente_conta,
        #    'cedente_agencia_conta_dv': int(cedente_agencia_conta_dv),
        #    'carteira_numero': cedente_carteira,
        #    'nosso_numero': nosso_numero,
        #    'nosso_numero_dv': nosso_numero_dv,
        #    'numero_documento': numero_documento,
        #    'vencimento_titulo': vencimento_titulo,
        #    'valor_titulo': valor_titulo,
        #    'especie_titulo': especie_titulo,
        #    'aceite_titulo': u'A', # Codigo Febraban que identifica se o titulo foi aceito pelo sacado
        #    'data_emissao_titulo': data_emissao_titulo,
        #    'juros_mora_taxa_dia': juros,
            #'arquivo_id': id_arquivo,
            #'carteira_numero': 0, # Descrição G069, item 1
            #'nosso_numero': 0,
            #'nosso_numero_dv': 0,
            #'numero_documento': numero_documento,
            #'valor_abatimento': Decimal('0.00'), # G045: Valor do abatimento (redução do valor do documento, devido a algum problema), expresso em moeda corrente.
            #'identificacao_titulo': numero_documento,
            #'codigo_protesto': 3, # C026: não protestar
            #'prazo_protesto': 0, # C027: número de dias para protesto. De 2 a 90 dias
            #'codigo_baixa': 0, # C028: ‘1’ = Baixar / Devolver; ‘2’ = Não Baixar / Não Devolver
            #'prazo_baixa': u'0', # C029: Número de dias para Baixa/Devolução
            #'sacado_inscricao_tipo': sacado_inscricao_tipo,
            #'sacado_inscricao_numero': sacado_inscricao_numero,
            #'sacado_nome': sacado_nome,
            #'sacado_endereco': sacado_endereco,
            #'sacado_bairro': sacado_bairro,
            #'sacado_cep': sacado_cep,
            #'sacado_cep_sufixo': sacado_cep_sufixo,
            #'sacado_cidade': sacado_cidade,
            #'sacado_uf': u'SP',
            #'cedente_agencia': cedente_agencia,
            #'cedente_conta': cedente_conta,
            #'cedente_agencia_conta_dv': cedente_agencia_conta_dv,
            # Extras
            #'controlecob_numero': 1,
            # Header Lote
            #'servico_operacao': u'R', # Biblioteca CNAB requeria default, como no header_lote_cobranca itau. R é o código de Remessa
            #'servico_servico': 1, # Biblioteca CNAB requeria default, como no header_lote_cobranca itau
            #'informacao1': u'INFOINFO',
            #'informacao2': u'',
            #'data_credito': 15052015,
            # Segmento P
            #'servico_numero_registro': 1,
            #'servico_codigo_movimento': 1,
            #'carteira_titulo': 1,
            #'carteira_cod': 1,
            #'cobranca_cadastramento': 1,
            #'cobranca_emissaoBloqueto': 1,
            #'cobranca_distribuicaoBloqueto': u'A',
            #'juros_cod_mora': 1,
            #'juros_mora_data': 15052015,
            #'juros_mora_taxa_dia': Decimal('0.00'),
            #'desconto1_cod': 1,
            #'desconto1_data': 15052015,
            #'desconto1_percentual': Decimal('2.00'),
            #'valor_iof': Decimal('0.00'),
            #'identificacao_titulo': u"B",
            #'codigo_moeda': 1,
            # Segmento Q
            #'sacador_inscricao_tipo': 1,
            #'sacador_inscricao_numero': 1234,
            #'sacador_nome': u'ABCDE',
            #'banco_correspondente': 123,
            #'numero_no_bancoCorrespondente': u'4321',
            # Trailer lote
            #'cobrancasimples_quantidade_titulos': 14, # Biblioteca CNAB requeria default
            #'cobrancasimples_valor_titulos': Decimal('320.00'),
            #'cobrancaCaucionada_quantidade_titulos': 14, # Biblioteca CNAB requeria default
            #'cobrancaCaucionada_valor_titulos': Decimal('320.00'),
            #'total_desc_titulosCobranca': 1,
            #'total_desc_titulosCarteira': 1,
        #}
        #res = res.encode('utf-8')
        return res

    def montarArquivoNC_IDS(self, cr, uid, ids, context=None):
        # str = unicode(arquivo)
        # f = open('/tmp/arquivo_remessa.rem','w')
        # f.write(str) # python will convert \n to os.linesep
        # f.close()

        res = {}
        cnab_data = dict()

        # Header values
        dict_arquivo = self.get_header_data(cr, uid, ids, context)
        dict_salvar = dict_arquivo
        cnab_data['arquivo'] = dict_arquivo
        arquivo = Arquivo(cef, **cnab_data['arquivo'])

        # Segmentos
        nossa_classe_pool = self.pool.get('l10n_br_account.payment_receivable')
        segmento_pool = self.pool.get('cnab240export.segmentos')
        nossa_classe_ids = []
        arquivo.lotes[0].header.servico_servico = 1
        for nc_ids in nossa_classe_ids:
            # Para os dados de cada "nossa_classe_line" e correspondente
            # "move_line", inclua os segmentos P e Q.
            id_segmento = segmento_pool.create(cr, uid, context=None)
            segmento_cobranca = segmento_pool.write_segmentos(cr, uid, id_segmento, nc_ids, context)
            cnab_data['cobranca'] = segmento_cobranca
            arquivo.incluir_cobranca(**cnab_data['cobranca'])

        self.salva_dados(cr, uid, ids, dict_salvar, context)

        return res

    def get_header_data(self, cr, uid, ids, context=None):

        res = {}

        res_bank_pool = self.pool.get('res.partner.bank')
        bank_id = res_bank_pool.search(
            cr, uid,
            [('bank_bic', '=', '104')]) # CEF

        res_my_company_pool = self.pool.get('res.partner')

        for cedente_id in res_my_company_pool.browse(cr, uid, [1], context):
            cedente_nome = cedente_id.legal_name
            cedente_inscricao_numero = int(cedente_id.cnpj_cpf.replace(".", "").\
                replace("/", "").replace("-", ""))
            if cedente_id.is_company == True:
                cedente_inscricao_tipo = 2 # É CNPJ
            else:
                cedente_inscricao_tipo = 1

        for bank_data in res_bank_pool.browse(cr, uid, bank_id, context):
            cedente_agencia = bank_data.bra_number # Numero Agencia
            cedente_conta = bank_data.acc_number
            cedente_agencia_conta_dv = bank_data.acc_number_dig

        res = {
            'cedente_nome': cedente_nome,
            'cedente_inscricao_numero': cedente_inscricao_numero,
            'cedente_inscricao_tipo': cedente_inscricao_tipo,
            'cedente_agencia': cedente_agencia,
            'cedente_conta': cedente_conta,
            'cedente_agencia_conta_dv': cedente_agencia_conta_dv,
        }

        return res

    def salva_dados(self, cr, uid, ids, res, context):

        if context == None:
            context = {}

        arquivo_id = self.write(cr, uid, ids, res)

        return True



class Cnab240ExportSegmentos(orm.Model):

    _name = "cnab240export.segmentos"

    _columns = {
        'name': fields.char(u'Nome'),
        'arquivo_id': fields.many2one('cnab240export', u'Arquivo'),
        'move_line_id': fields.many2one('account.move.line', u'Move Line ID'),

        'carteira_numero': fields.integer(string=u'Número da carteira'),
        'nosso_numero': fields.integer(string=u'Nosso número'),
        'nosso_numero_dv': fields.integer(string=u'Dígito do nosso número'),
        'numero_documento': fields.char(string=u'Número do documento', size=11),
        'vencimento_titulo': fields.date(string=u'Vencimento do título'),
        'valor_titulo': fields.float(string=u'Valor do título'),
        'especie_titulo': fields.integer(string=u'Espécie'),
        'aceite_titulo': fields.char(string=u'Aceite do título'),
        'data_emissao_titulo': fields.date(string=u'Data de emissão'),
        'juros_mora_taxa_dia': fields.float(string=u'Taxa de juros ao dia'),
        'valor_abatimento': fields.float(string=u'Abatimento'),
        'identificacao_titulo': fields.char(string=u'Identificação do título'),
        'codigo_protesto': fields.integer(string=u'Código de protesto', help=" 1, 3 ou 9"),
        'prazo_protesto': fields.integer(string=u'Prazo do protesto'),
        'codigo_baixa': fields.integer(string=u'Código da Baixa'),
        'prazo_baixa': fields.integer(string=u'Prazo da Baixa'),
        'sacado_inscricao_tipo': fields.integer(
            string=u'Tipo de inscrição do sacado'),
        'sacado_inscricao_numero': fields.char(
            string=u'Número de inscrição do sacado'),
        'partner_id': fields.many2one('res.partner', 'Sacado', readonly=True, required=True),
        #'sacado_nome': fields.char(string=u'Nome do sacado', size=40),
        #'sacado_endereco': fields.char(string=u'Endereço do sacado', size=40),
        #'sacado_bairro': fields.char(string=u'Bairro do sacado', size=15),
        #'sacado_cep': fields.integer(string=u'CEP do Sacado'),
        #'sacado_cep_sufixo': fields.integer(string=u'Sufixo do CEP do Sacado'),
        #'sacado_cidade': fields.char(string=u'Cidade do Sacado', size=15),
        #'sacado_uf': fields.char(string=u'UF do sacado', size=2),
        # Extras
        'controlecob_numero': fields.integer(u'Número controle cobrança'), # identificar a seqüência de envio ou devolução do arquivo entre o Cedente e o Banco Cedente. Mesmo número do arquivo_sequencia
        # Header Lote
        'informacao1': fields.char(u'Informação 1', size=40),# Utilizar somente se o código de movimento for ‘01’ - Entrada/Solicitação de títulos
        'informacao2': fields.char(u'Informação 2', size=40),# Utilizar somente se o código de movimento for ‘01’ - Entrada/Solicitação de títulos
        'data_credito': fields.date(u'Data do Crédito'),
        # Segmento P
        'servico_numero_registro': fields.integer(u'Número sequencial do registro do lote'), # Número para identificar a seqüência de registros encaminhados no lote. Deve ser inicializado sempre em ‘1’, em cada novo lote.
        'servico_codigo_movimento': fields.integer(u'Código do movimento', size=2), # Código adotado pela FEBRABAN, para identificar o tipo de movimentação enviado nos registros do arquivo de remessa.
        'carteira_cod': fields.integer(u'Modalidade da Carteira', size=2), # 00
        'carteira_titulo': fields.integer(u'Identificação do Título no Banco', size=15), # 000000000000000, CAIXA responsável pela numeração
        'cobranca_cadastramento': fields.integer(u'Forma de Cadastr. do Título no Banco', size=1),
        'cobranca_emissaoBloqueto': fields.integer(u'Identificação da Emissão do Bloqueto', size=1), # default: 1
        'cobranca_distribuicaoBloqueto': fields.char(u'A', size=1), # Código adotado pela FEBRABAN para identificar o responsável pela distribuição do bloqueto. default: 2
        'juros_cod_mora': fields.integer(u'Código do Juros de Mora', size=1), # =‘1’ Informar valor; = ‘2’ Informar percentual
        'juros_mora_data': fields.date(u'Data do juros de mora'),
        'juros_mora_taxa_dia': fields.float(u'Juros de Mora', size=13), # Se juros_cod_mora =‘1’ Informar valor; = ‘2’ Informar percentual
        'desconto1_cod': fields.integer(u'Código do Desconto', size=1), # '0’ = Sem Desconto ‘1’ = Valor Fixo até a data informada; ‘2’ = Percentual até a data informada; Para os códigos ‘1’ e ‘2’ será obrigatório a informação da Data.
        'desconto1_data': fields.date(u'Data do desconto 1'),
        'desconto1_percentual': fields.float(u'Valor do juros de mora', size=13), # Se desconto1_cod = = ‘1’ Informar valor; = ‘2’ Informar percentual
        'valor_iof': fields.float(u'Valor IOF', size=13), # default Decimal('0.00')
        'identificacao_titulo': fields.char(u'Identificação do Título na Empresa', size=25),
        'codigo_moeda': fields.integer(u'Código da Moeda', size=2), # default: 09
        # Segmento Q
        'sacador_inscricao_tipo': fields.integer(u'Tipo de Inscrição', size=1),
        'sacador_inscricao_numero': fields.integer(u'Número de inscrição', size=15),
        'sacador_nome': fields.char(u'Nome do sacador/avalista', size=40),
        'banco_correspondente': fields.integer(u'Cód. Bco. Corresp. na Compensação', size=3),
        'numero_no_bancoCorrespondente': fields.char(u'Nosso Num no Banco Correspondente', size=20),
        # Trailer lote
        'cobrancasimples_quantidade_titulos': fields.integer(u'Quantidade de títulos simples', size=6), # Biblioteca CNAB requeria default
        'cobrancasimples_valor_titulos': fields.float(u'Valor dos títulos de cobrança simples'),
        'cobrancaCaucionada_quantidade_titulos': fields.integer(u'Quantidade de títulos cobrança caucionada', size=6), # Biblioteca CNAB requeria default
        'cobrancaCaucionada_valor_titulos': fields.float(u'Valor dos títulos de cobrança caucionada'),
        'total_desc_titulosCobranca': fields.integer(u'Quantidade de Títulos em Cobrança', size=6),
        'total_desc_titulosCarteira': fields.integer(u'Quantidade de Títulos em Carteiras', size=6),
    }

    def write_segmentos(self, cr, uid, ids, nc_ids, context=None):
        if context == None:
            context = {}
        res = {}

        res = self.get_segmento_data(cr, uid, ids, nc_ids, context)
        self.salva_segmento(cr, uid, ids, res, context)

        return res

    def salva_segmento(self, cr, uid, ids, res, context=None):

        if context == None:
            context = {}

        segmento_id = self.write(cr, uid, ids, res)

        return True

    def get_segmento_data(self, cr, uid, ids, nc_ids, context=None):
        #pdb.set_trace()
        if context == None:
            context = {}
        res = {}

        nc_pool = self.pool.get('l10n_br_account.payment_receivable')
        partner_pool = self.pool.get('res.partner')

        for nc_id in nc_pool.browse(cr, uid, nc_ids, context):
            vencimento_titulo = nc_id.date
            valor_titulo = nc_id.amount_currency
            juros_mora_taxa_dia = nc_id.finacial_charges

            data_emissao_titulo = datetime.now()
            data_emissao_titulo = int(data_emissao_titulo.strftime("%d%m%Y"))

            partner_id_move = nc_id.partner_id.id

            for id_partner in partner_pool.browse(cr, uid, [partner_id_move], context=None):
                if id_partner.is_company == True:
                    sacado_inscricao_tipo = 2 # É CNPJ
                else:
                    sacado_inscricao_tipo = 1 # É CPF
                sacado_inscricao_numero = int(id_partner.cnpj_cpf.replace(".", ""). \
                        replace("/", "").replace("-", ""))
                partner_id = id_partner
                #sacado_nome = id_partner.legal_name
                #sacado_endereco = id_partner.street
                #sacado_bairro = id_partner.district
                #sacado_cep = id_partner.zip[0:5]
                #sacado_cep_sufixo = id_partner.zip[-3:]
                #sacado_cidade = id_partner.city

            for pay_move_id in nc_id.payment_move_id.browse(cr, uid, ids, context):
                numero_documento = pay_move_id.name

        res = {
            'carteira_numero': 0, # Descrição G069, item 1
            'nosso_numero': 0,
            'nosso_numero_dv': 0,
            'numero_documento': numero_documento, # Número controlado pelo cliente. Alfanumérico
            'vencimento_titulo': vencimento_titulo,
            'valor_titulo': valor_titulo,
            'especie_titulo': 8, # Código da Nota de Crédito Comercial
            'aceite_titulo': u'A', # Codigo Febraban que identifica se o titulo foi aceito pelo sacado
            'data_emissao_titulo': data_emissao_titulo,
            'juros_mora_taxa_dia': juros_mora_taxa_dia,
            'valor_abatimento': Decimal('0.00'), # G045: Valor do abatimento (redução do valor do documento, devido a algum problema), expresso em moeda corrente.
            'identificacao_titulo': numero_documento,
            'codigo_protesto': 3, # C026: não protestar
            'prazo_protesto': 0, # C027: número de dias para protesto. De 2 a 90 dias
            'codigo_baixa': 0, # C028: ‘1’ = Baixar / Devolver; ‘2’ = Não Baixar / Não Devolver
            'prazo_baixa': 0, # C029: Número de dias para Baixa/Devolução
            'sacado_inscricao_tipo': sacado_inscricao_tipo,
            'sacado_inscricao_numero': sacado_inscricao_numero,
            #'sacado_nome': sacado_nome,
            #'sacado_endereco': sacado_endereco,
            'sacado_bairro': sacado_bairro,
            'sacado_cep': sacado_cep,
            'sacado_cep_sufixo': sacado_cep_sufixo,
            'sacado_cidade': sacado_cidade,
            # 'sacado_uf': ,
        }
        return res
