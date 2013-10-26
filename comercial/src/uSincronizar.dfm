object fSincronizar: TfSincronizar
  Left = 429
  Top = 174
  Width = 386
  Height = 322
  Caption = 'Sincronizar Cupom'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FlatGauge1: TFlatGauge
    Left = 72
    Top = 216
    Width = 241
    Height = 25
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
  end
  object btnExpProd: TBitBtn
    Left = 104
    Top = 40
    Width = 169
    Height = 49
    Caption = 'Exportar Produtos'
    TabOrder = 0
    OnClick = btnExpProdClick
  end
  object btnExpCli: TBitBtn
    Left = 104
    Top = 96
    Width = 169
    Height = 49
    Caption = 'Exportar Clientes'
    TabOrder = 1
    OnClick = btnExpCliClick
  end
  object btnExpCfisc: TBitBtn
    Left = 104
    Top = 150
    Width = 169
    Height = 49
    Caption = 'Exportar Cadastro Fiscal'
    TabOrder = 2
    OnClick = btnExpCfiscClick
  end
  object sProdutos: TSQLDataSet
    CommandText = 'select * from PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 7
    Top = 6
    object sProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sProdutosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object sProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object sProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sProdutosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object sProdutosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
    end
    object sProdutosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object sProdutosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object sProdutosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object sProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object sProdutosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object sProdutosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
    end
    object sProdutosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sProdutosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object sProdutosIPI: TFloatField
      FieldName = 'IPI'
    end
    object sProdutosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      Size = 30
    end
    object sProdutosCST: TStringField
      FieldName = 'CST'
      Size = 30
    end
    object sProdutosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object sProdutosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object sProdutosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object sProdutosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
    end
    object sProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object sProdutosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object sProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object sProdutosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object sProdutosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object sProdutosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object sProdutosRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object sProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sProdutosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object sProdutosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object sProdutosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object sProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object sProdutosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object sProdutosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
    end
    object sProdutosCODFORN: TStringField
      FieldName = 'CODFORN'
      Size = 60
    end
    object sProdutosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      Size = 80
    end
    object sProdutosLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object sProdutosUSA: TStringField
      FieldName = 'USA'
      Size = 3
    end
    object sProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object sProdutosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object sProdutosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object sProdutosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object sProdutosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      FixedChar = True
      Size = 1
    end
    object sProdutosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object sProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object sProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object sProdutosIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      Size = 10
    end
    object sProdutosIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      Size = 10
    end
    object sProdutosIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      Size = 10
    end
    object sProdutosQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sProdutosTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
    object sProdutosOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
  end
  object seProdutos: TSQLDataSet
    CommandText = 'select * from PRODUTOS '#13#10'where CODPRODUTO = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 39
    Top = 6
    object seProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object seProdutosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object seProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object seProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object seProdutosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object seProdutosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
    end
    object seProdutosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object seProdutosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object seProdutosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object seProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object seProdutosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object seProdutosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
    end
    object seProdutosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object seProdutosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object seProdutosIPI: TFloatField
      FieldName = 'IPI'
    end
    object seProdutosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      Size = 30
    end
    object seProdutosCST: TStringField
      FieldName = 'CST'
      Size = 30
    end
    object seProdutosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object seProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object seProdutosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object seProdutosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object seProdutosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
    end
    object seProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object seProdutosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object seProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object seProdutosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object seProdutosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object seProdutosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object seProdutosRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object seProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object seProdutosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object seProdutosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object seProdutosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object seProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object seProdutosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object seProdutosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
    end
    object seProdutosCODFORN: TStringField
      FieldName = 'CODFORN'
      Size = 60
    end
    object seProdutosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      Size = 80
    end
    object seProdutosLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object seProdutosUSA: TStringField
      FieldName = 'USA'
      Size = 3
    end
    object seProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object seProdutosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object seProdutosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object seProdutosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object seProdutosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      FixedChar = True
      Size = 1
    end
    object seProdutosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object seProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object seProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object seProdutosIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      Size = 10
    end
    object seProdutosIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      Size = 10
    end
    object seProdutosIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      Size = 10
    end
    object seProdutosQTD: TIntegerField
      FieldName = 'QTD'
    end
    object seProdutosTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
    object seProdutosOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
  end
  object sCliente: TSQLDataSet
    CommandText = 'select * from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 304
    Top = 8
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object sClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object sClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object sClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sClienteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object sClienteIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object sClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sClienteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object sClienteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object sClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object sClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object sClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object sClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object sClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object sClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object sClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object sClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object sClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object sClientePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object sClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object sClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object sClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object sClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object sClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object sClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object sClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object sClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object sClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object sClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object sClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object sClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object sClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object sClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object sClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object sClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object sClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object sClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object sClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object sClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object sClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object sClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object sClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object sClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object sClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object sClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object sClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object sClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object sClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object sClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object sClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object sClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object sClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object sClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object sClientePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object sClienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object sClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object sClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object sClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 10
    end
    object sClienteCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object sClienteCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object sClienteCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object sClienteVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object sClienteVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object sClienteE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object sClienteCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object sClienteCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object sClienteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object sClienteCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object pProdutos: TDataSetProvider
    DataSet = sProdutos
    Left = 7
    Top = 35
  end
  object peProdutos: TDataSetProvider
    DataSet = seProdutos
    UpdateMode = upWhereKeyOnly
    Left = 39
    Top = 35
  end
  object pCliente: TDataSetProvider
    DataSet = sCliente
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 37
  end
  object cProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pProdutos'
    Left = 8
    Top = 64
    object cProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cProdutosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object cProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object cProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cProdutosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cProdutosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
    end
    object cProdutosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object cProdutosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object cProdutosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object cProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object cProdutosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cProdutosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
    end
    object cProdutosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cProdutosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cProdutosIPI: TFloatField
      FieldName = 'IPI'
    end
    object cProdutosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      Size = 30
    end
    object cProdutosCST: TStringField
      FieldName = 'CST'
      Size = 30
    end
    object cProdutosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cProdutosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object cProdutosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cProdutosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
    end
    object cProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object cProdutosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object cProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cProdutosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object cProdutosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object cProdutosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object cProdutosRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object cProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cProdutosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object cProdutosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object cProdutosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object cProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object cProdutosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object cProdutosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
    end
    object cProdutosCODFORN: TStringField
      FieldName = 'CODFORN'
      Size = 60
    end
    object cProdutosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      Size = 80
    end
    object cProdutosLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object cProdutosUSA: TStringField
      FieldName = 'USA'
      Size = 3
    end
    object cProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object cProdutosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object cProdutosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object cProdutosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object cProdutosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      FixedChar = True
      Size = 1
    end
    object cProdutosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object cProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object cProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cProdutosIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      Size = 10
    end
    object cProdutosIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      Size = 10
    end
    object cProdutosIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      Size = 10
    end
    object cProdutosQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cProdutosTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
    object cProdutosOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
  end
  object ceProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'peProdutos'
    Left = 39
    Top = 64
    object ceProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object ceProdutosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object ceProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object ceProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object ceProdutosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object ceProdutosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
    end
    object ceProdutosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object ceProdutosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object ceProdutosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object ceProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object ceProdutosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object ceProdutosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
    end
    object ceProdutosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ceProdutosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object ceProdutosIPI: TFloatField
      FieldName = 'IPI'
    end
    object ceProdutosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      Size = 30
    end
    object ceProdutosCST: TStringField
      FieldName = 'CST'
      Size = 30
    end
    object ceProdutosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object ceProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object ceProdutosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object ceProdutosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object ceProdutosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
    end
    object ceProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object ceProdutosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object ceProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ceProdutosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object ceProdutosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object ceProdutosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object ceProdutosRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object ceProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object ceProdutosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object ceProdutosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object ceProdutosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object ceProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object ceProdutosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object ceProdutosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
    end
    object ceProdutosCODFORN: TStringField
      FieldName = 'CODFORN'
      Size = 60
    end
    object ceProdutosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      Size = 80
    end
    object ceProdutosLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object ceProdutosUSA: TStringField
      FieldName = 'USA'
      Size = 3
    end
    object ceProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object ceProdutosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object ceProdutosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object ceProdutosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object ceProdutosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      FixedChar = True
      Size = 1
    end
    object ceProdutosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object ceProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object ceProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object ceProdutosIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      Size = 10
    end
    object ceProdutosIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      Size = 10
    end
    object ceProdutosIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      Size = 10
    end
    object ceProdutosQTD: TIntegerField
      FieldName = 'QTD'
    end
    object ceProdutosTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
    object ceProdutosOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
  end
  object cCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCliente'
    Left = 304
    Top = 66
    object cClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object cClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cClienteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cClienteIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object cClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cClienteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object cClienteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object cClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object cClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object cClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object cClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object cClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object cClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object cClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object cClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object cClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object cClientePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object cClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object cClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object cClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object cClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object cClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object cClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object cClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object cClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object cClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object cClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object cClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object cClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object cClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object cClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object cClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object cClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object cClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object cClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object cClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object cClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object cClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object cClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object cClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object cClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object cClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object cClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object cClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object cClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object cClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object cClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object cClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object cClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object cClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object cClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object cClientePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object cClienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object cClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object cClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object cClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object cClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 10
    end
    object cClienteCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cClienteCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object cClienteCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object cClienteVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object cClienteVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object cClienteE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object cClienteCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cClienteCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object cClienteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object cClienteCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object seCliente: TSQLDataSet
    CommandText = 'select * from CLIENTES '#13#10'where CODCLIENTE = :cli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 337
    Top = 8
    object seClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object seClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object seClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object seClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object seClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object seClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object seClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object seClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object seClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object seClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object seClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object seClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object seClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object seClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object seClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object seClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object seClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object seClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object seClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object seClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object seClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object seClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object seClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object seClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object seClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object seClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object seClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object seClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object seClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object seClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object seClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object seClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object seClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object seClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object seClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object seClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object seClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object seClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object seClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object seClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object seClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object seClienteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object seClienteIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object seClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object seClienteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object seClienteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object seClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object seClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object seClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object seClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object seClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object seClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object seClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object seClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object seClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object seClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object seClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object seClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object seClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object seClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object seClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object seClientePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object seClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object seClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object seClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object seClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object seClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object seClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object seClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object seClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object seClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object seClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object seClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object seClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object seClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object seClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object seClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object seClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object seClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object seClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object seClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object seClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object seClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object seClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object seClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object seClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object seClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object seClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object seClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object seClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object seClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object seClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object seClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object seClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object seClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object seClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object seClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object seClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object seClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object seClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object seClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object seClientePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object seClienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object seClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object seClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object seClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object seClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object seClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object seClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 10
    end
    object seClienteCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object seClienteCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object seClienteCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object seClienteVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object seClienteVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object seClienteE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object seClienteCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object seClienteCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object seClienteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object seClienteCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object peCliente: TDataSetProvider
    DataSet = seCliente
    UpdateMode = upWhereKeyOnly
    Left = 336
    Top = 37
  end
  object ceCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cli'
        ParamType = ptInput
      end>
    ProviderName = 'peCliente'
    Left = 337
    Top = 66
    object ceClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object ceClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object ceClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object ceClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object ceClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object ceClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object ceClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object ceClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object ceClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object ceClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object ceClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object ceClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object ceClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object ceClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object ceClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object ceClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object ceClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object ceClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object ceClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object ceClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object ceClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object ceClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object ceClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object ceClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object ceClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object ceClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object ceClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object ceClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object ceClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object ceClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object ceClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object ceClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object ceClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object ceClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object ceClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object ceClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object ceClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object ceClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object ceClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object ceClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object ceClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object ceClienteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object ceClienteIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object ceClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object ceClienteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object ceClienteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object ceClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object ceClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object ceClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object ceClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object ceClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ceClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object ceClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object ceClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object ceClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object ceClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ceClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object ceClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object ceClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object ceClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object ceClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object ceClientePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object ceClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object ceClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object ceClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object ceClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object ceClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object ceClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object ceClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object ceClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object ceClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object ceClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object ceClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object ceClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object ceClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object ceClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object ceClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object ceClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object ceClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object ceClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object ceClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object ceClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object ceClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object ceClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object ceClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object ceClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object ceClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object ceClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object ceClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object ceClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object ceClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object ceClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object ceClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object ceClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object ceClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object ceClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object ceClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object ceClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object ceClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object ceClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object ceClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object ceClientePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object ceClienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object ceClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object ceClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object ceClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object ceClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object ceClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object ceClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 10
    end
    object ceClienteCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object ceClienteCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object ceClienteCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object ceClienteVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object ceClienteVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object ceClienteE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object ceClienteCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object ceClienteCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object ceClienteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object ceClienteCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object sFiscal: TSQLDataSet
    CommandText = 
      'select * from CLASSIFICACAOFISCALPRODUTO cfp'#13#10'where not cfp.CFOP' +
      ' like '#39'59%'#39' and not cfp.CFOP like '#39'1%'#39' and not cfp.CFOP like '#39'2%' +
      #39'  and not cfp.CFOP like '#39'6%'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 305
    Top = 102
    object sFiscalCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object sFiscalCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object sFiscalUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sFiscalICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object sFiscalICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object sFiscalICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object sFiscalICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sFiscalICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object sFiscalCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sFiscalIPI: TFloatField
      FieldName = 'IPI'
    end
    object sFiscalCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sFiscalCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sFiscalCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sFiscalCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sFiscalPIS: TFloatField
      FieldName = 'PIS'
    end
    object sFiscalCOFINS: TFloatField
      FieldName = 'COFINS'
    end
  end
  object pFiscal: TDataSetProvider
    DataSet = sFiscal
    UpdateMode = upWhereKeyOnly
    Left = 305
    Top = 131
  end
  object cFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pFiscal'
    Left = 305
    Top = 160
    object cFiscalCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object cFiscalCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object cFiscalUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cFiscalICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cFiscalICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object cFiscalICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object cFiscalICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cFiscalICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object cFiscalCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cFiscalIPI: TFloatField
      FieldName = 'IPI'
    end
    object cFiscalCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cFiscalCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cFiscalCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cFiscalCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cFiscalPIS: TFloatField
      FieldName = 'PIS'
    end
    object cFiscalCOFINS: TFloatField
      FieldName = 'COFINS'
    end
  end
  object seFiscal: TSQLDataSet
    CommandText = 
      'select * from CLASSIFICACAOFISCALPRODUTO'#13#10'where COD_PROD = :CODP' +
      'RO and CFOP = :CFOP and UF = :UF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFOP'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'UF'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 337
    Top = 102
    object IntegerField1: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object FloatField1: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object FloatField2: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object FloatField3: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object FloatField4: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField5: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object StringField3: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object FloatField6: TFloatField
      FieldName = 'IPI'
    end
    object StringField4: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object StringField5: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object FloatField7: TFloatField
      FieldName = 'PIS'
    end
    object FloatField8: TFloatField
      FieldName = 'COFINS'
    end
  end
  object peFiscal: TDataSetProvider
    DataSet = seFiscal
    UpdateMode = upWhereKeyOnly
    Left = 337
    Top = 131
  end
  object ceFiscal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFOP'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'UF'
        ParamType = ptInput
      end>
    ProviderName = 'peFiscal'
    Left = 337
    Top = 160
    object ceFiscalCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object ceFiscalCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object ceFiscalUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object ceFiscalICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object ceFiscalICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object ceFiscalICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object ceFiscalICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ceFiscalICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object ceFiscalCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object ceFiscalIPI: TFloatField
      FieldName = 'IPI'
    end
    object ceFiscalCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object ceFiscalCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object ceFiscalCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object ceFiscalCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object ceFiscalPIS: TFloatField
      FieldName = 'PIS'
    end
    object ceFiscalCOFINS: TFloatField
      FieldName = 'COFINS'
    end
  end
  object seFamilia: TSQLDataSet
    CommandText = 'SELECT * FROM FAMILIAPRODUTOS '#13#10'where COD_FAMILIA = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 39
    Top = 102
    object seFamiliaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      Required = True
      Size = 30
    end
    object seFamiliaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object seFamiliaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
  end
  object sFamilia: TSQLDataSet
    CommandText = 'SELECT * FROM FAMILIAPRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 7
    Top = 102
  end
  object pFamilia: TDataSetProvider
    DataSet = sFamilia
    Left = 7
    Top = 131
  end
  object peFamilia: TDataSetProvider
    DataSet = seFamilia
    UpdateMode = upWhereKeyOnly
    Left = 39
    Top = 131
  end
  object ceFamilia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'peFamilia'
    Left = 39
    Top = 160
    object ceFamiliaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      Required = True
      Size = 30
    end
    object ceFamiliaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ceFamiliaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
  end
  object cFamilia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pFamilia'
    Left = 8
    Top = 160
    object cFamiliaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      Required = True
      Size = 30
    end
    object cFamiliaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object cFamiliaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
  end
  object seCategoria: TSQLDataSet
    CommandText = 'SELECT * FROM CATEGORIAPRODUTO '#13#10'where COD_CATEGORIA = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 39
    Top = 198
    object seCategoriaDESCCATEGORIA: TStringField
      FieldName = 'DESCCATEGORIA'
      Required = True
      Size = 30
    end
    object seCategoriaCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object seCategoriaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      Required = True
    end
  end
  object sCategoria: TSQLDataSet
    CommandText = 'SELECT * FROM CATEGORIAPRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 7
    Top = 198
    object sCategoriaDESCCATEGORIA: TStringField
      FieldName = 'DESCCATEGORIA'
      Required = True
      Size = 30
    end
    object sCategoriaCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object sCategoriaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      Required = True
    end
  end
  object pCategoria: TDataSetProvider
    DataSet = sCategoria
    Left = 7
    Top = 227
  end
  object peCategoria: TDataSetProvider
    DataSet = seCategoria
    UpdateMode = upWhereKeyOnly
    Left = 39
    Top = 227
  end
  object ceCategoria: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'peCategoria'
    Left = 39
    Top = 256
    object ceCategoriaDESCCATEGORIA: TStringField
      FieldName = 'DESCCATEGORIA'
      Required = True
      Size = 30
    end
    object ceCategoriaCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object ceCategoriaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      Required = True
    end
  end
  object cCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCategoria'
    Left = 8
    Top = 256
    object cCategoriaDESCCATEGORIA: TStringField
      FieldName = 'DESCCATEGORIA'
      Required = True
      Size = 30
    end
    object cCategoriaCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object cCategoriaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      Required = True
    end
  end
  object seMarca: TSQLDataSet
    CommandText = 'SELECT DESCMARCAS'#13#10'FROM MARCA'#13#10'where DESCMARCAS = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 346
    Top = 195
    object seMarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      Required = True
      Size = 30
    end
  end
  object sMarca: TSQLDataSet
    CommandText = 'SELECT DESCMARCAS'#13#10'FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 314
    Top = 195
    object sMarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      Required = True
      Size = 30
    end
  end
  object pMarca: TDataSetProvider
    DataSet = sMarca
    Left = 314
    Top = 224
  end
  object peMarca: TDataSetProvider
    DataSet = seMarca
    UpdateMode = upWhereKeyOnly
    Left = 346
    Top = 224
  end
  object ceMarca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'peMarca'
    Left = 346
    Top = 253
    object ceMarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      Required = True
      Size = 30
    end
  end
  object cMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pMarca'
    Left = 315
    Top = 253
    object cMarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      Required = True
      Size = 30
    end
  end
end
