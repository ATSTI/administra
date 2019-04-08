object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 707
  Width = 900
  object con: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'WIN1252'
    Catalog = ''
    Properties.Strings = (
      'codepage=WIN1252'
      'AutoEncodeStrings=ON'
      'controls_cp=CP_UTF16')
    AutoCommit = False
    HostName = 'localhost'
    Port = 3050
    Database = ''
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebirdd-2.5'
    LibraryLocation = 'C:\home\cte\fbclient.dll'
    Left = 32
    Top = 40
  end
  object ZQueryCTe: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from mdfe')
    Params = <>
    Left = 112
    Top = 32
  end
  object Cte: TZQuery
    Connection = con
    Params = <>
    Left = 184
    Top = 32
  end
  object QueryCli: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 112
    Top = 96
    object QueryCliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object QueryCliNOMECLIENTE: TWideStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object QueryCliRAZAOSOCIAL: TWideStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object QueryCliCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object QueryCliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object QueryCliCPF: TWideStringField
      FieldName = 'CPF'
      Size = 14
    end
    object QueryCliCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object QueryCliINSCESTADUAL: TWideStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object QueryCliRG: TWideStringField
      FieldName = 'RG'
      Size = 14
    end
    object QueryCliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object QueryCliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object QueryCliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object QueryCliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object QueryCliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object QueryCliSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object QueryCliHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object QueryCliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object QueryCliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object QueryCliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object QueryCliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object QueryCliDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object QueryCliCONTA_CLIENTE: TWideStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object QueryCliOBS: TWideStringField
      FieldName = 'OBS'
      Size = 200
    end
    object QueryCliTEM_IE: TWideStringField
      FieldName = 'TEM_IE'
      Size = 1
    end
    object QueryCliDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object QueryCliNOMEMAE: TWideStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object QueryCliSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object QueryCliFORMA_CORRESPOND: TWideStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object QueryCliGRUPO_CLIENTE: TWideStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object QueryCliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object QueryCliEXIST_COBERT: TWideStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object QueryCliEXISTCOPART: TWideStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object QueryCliDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object QueryCliGERAAVISO: TWideStringField
      FieldName = 'GERAAVISO'
      Size = 1
    end
    object QueryCliGERAENV: TWideStringField
      FieldName = 'GERAENV'
      Size = 1
    end
    object QueryCliGERABOL: TWideStringField
      FieldName = 'GERABOL'
      Size = 1
    end
    object QueryCliEMVIAGEM: TWideStringField
      FieldName = 'EMVIAGEM'
      Size = 1
    end
    object QueryCliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object QueryCliSERIELETRA: TWideStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object QueryCliSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object QueryCliRA: TWideStringField
      FieldName = 'RA'
      Size = 10
    end
    object QueryCliCURSO: TWideStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object QueryCliIP: TWideStringField
      FieldName = 'IP'
      Size = 60
    end
    object QueryCliN_CONTRATO: TWideStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object QueryCliMAC: TWideStringField
      FieldName = 'MAC'
      Size = 60
    end
    object QueryCliMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object QueryCliBANDA_UPLOAD: TWideStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object QueryCliBANDA_DOWLOAD: TWideStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object QueryCliTORRE_CONECCAO: TWideStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object QueryCliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object QueryCliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QueryCliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object QueryCliANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object QueryCliPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object QueryCliPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object QueryCliNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QueryCliDATANASCIMENTO: TDateTimeField
      FieldName = 'DATANASCIMENTO'
    end
    object QueryCliANOLETIVO: TWideStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object QueryCliSITUACAOESCOLAR: TWideStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object QueryCliRGMAE: TWideStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object QueryCliCPFMAE: TWideStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object QueryCliPAI: TWideStringField
      FieldName = 'PAI'
      Size = 30
    end
    object QueryCliRGPAI: TWideStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object QueryCliCPFPAI: TWideStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object QueryCliLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object QueryCliTRANSPORTE: TWideStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object QueryCliCIDADENASC: TWideStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object QueryCliUFNASC: TWideStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object QueryCliNACIONALIDADE: TWideStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object QueryCliCERTIDAONASCNUM: TWideStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object QueryCliLIVRONASC: TWideStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object QueryCliFLLIVRONASC: TWideStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object QueryCliLOCALTRABPAI: TWideStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object QueryCliLOCALTRABMAE: TWideStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object QueryCliTELTRABPAI: TWideStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object QueryCliTELTRABMAE: TWideStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object QueryCliINFONECESSARIAS: TWideStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object QueryCliCARTEIRAVACINACAO: TWideStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object QueryCliRAPRODESP: TWideStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object QueryCliLOCALTRABALUNO: TWideStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object QueryCliTELTRABALUNO: TWideStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object QueryCliRAPROD: TWideStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object QueryCliCERT_NAS_COMARCA: TWideStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object QueryCliCERT_NAS_UF: TWideStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object QueryCliCERT_NAS_MUNICIPIO: TWideStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object QueryCliCERT_NAS_DISTRITO: TWideStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object QueryCliCERT_NAS_SUBDISTRITO: TWideStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object QueryCliDIVERSO1: TWideStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object QueryCliDIVERSO2: TWideStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object QueryCliDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object QueryCliESTADORG: TWideStringField
      FieldName = 'ESTADORG'
      Size = 2
    end
    object QueryCliCOMUNICAALUNO: TWideStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object QueryCliFONEMAE: TWideStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object QueryCliCELULARMAE: TWideStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object QueryCliCOMUNICAMAE: TWideStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object QueryCliFONEPAI: TWideStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object QueryCliCELULARPAI: TWideStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object QueryCliCOMUNICAPAI: TWideStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object QueryCliVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object QueryCliDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object QueryCliCOR_RACA: TWideStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object QueryCliPERIODO: TWideStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object QueryCliFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object QueryCliDATA_MATRICULA: TDateTimeField
      FieldName = 'DATA_MATRICULA'
    end
    object QueryCliCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object QueryCliID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object QueryCliCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object QueryCliBLOQUEADO: TWideStringField
      FieldName = 'BLOQUEADO'
      Size = 1
    end
    object QueryCliBLOQUEIO: TWideStringField
      FieldName = 'BLOQUEIO'
      Size = 1
    end
    object QueryCliCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object QueryCliCOD_CLI: TWideStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object QueryCliCORTESIA: TWideStringField
      FieldName = 'CORTESIA'
      Size = 1
    end
    object QueryCliVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object QueryCliVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object QueryCliE_FORNECEDOR: TWideStringField
      FieldName = 'E_FORNECEDOR'
      Size = 1
    end
    object QueryCliCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object QueryCliCODFISCAL: TWideStringField
      FieldName = 'CODFISCAL'
      Size = 1
    end
    object QueryCliSUFRAMA: TWideStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object QueryCliCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
  end
  object QueryEndCli: TZQuery
    Connection = con
    SQL.Strings = (
      'selet * from ENDERECOCLIENTE where CODCLIENTE = :pcod')
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptUnknown
      end>
    Left = 192
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptUnknown
      end>
  end
  object cdsCliEnd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliEnd'
    Left = 432
    Top = 32
    object cdsCliEndCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsCliEndNOMECLIENTE: TWideStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object cdsCliEndRAZAOSOCIAL: TWideStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object cdsCliEndCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsCliEndINSCESTADUAL: TWideStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsCliEndCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cdsCliEndCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object cdsCliEndLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsCliEndBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsCliEndCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsCliEndCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsCliEndUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCliEndCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsCliEndTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object cdsCliEndTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Size = 12
    end
    object cdsCliEndTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Size = 12
    end
    object cdsCliEndFAX: TWideStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cdsCliEndE_MAIL: TWideStringField
      FieldName = 'E_MAIL'
      Size = 256
    end
    object cdsCliEndRAMAL: TWideStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cdsCliEndTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cdsCliEndDADOSADICIONAIS: TWideStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cdsCliEndDDD: TWideStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cdsCliEndDDD1: TWideStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cdsCliEndDDD2: TWideStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsCliEndDDD3: TWideStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsCliEndNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsCliEndCD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsCliEndPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspCliEnd: TDataSetProvider
    DataSet = sqlCliEnd
    Left = 368
    Top = 32
  end
  object sqlCliEnd: TZQuery
    Connection = con
    SQL.Strings = (
      
        'select cli.codcliente ,cli.nomecliente , cli.razaosocial  ,cli.c' +
        'npj ,cli.inscestadual, en.* '
      'from clientes cli '
      'inner join enderecocliente en on cli.codcliente = en.codcliente'
      '')
    Params = <>
    Left = 296
    Top = 32
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 448
    Top = 120
    object cdsCFOPCFCOD: TWideStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 30
    end
    object cdsCFOPCFNOME: TWideStringField
      FieldName = 'CFNOME'
      Size = 250
    end
    object cdsCFOPCFNOTA: TWideMemoField
      FieldName = 'CFNOTA'
      BlobType = ftWideMemo
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = qCfop
    Left = 368
    Top = 120
  end
  object qCfop: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CFOP')
    Params = <>
    Left = 304
    Top = 120
    object qCfopCFCOD: TWideStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 30
    end
    object qCfopCFNOME: TWideStringField
      FieldName = 'CFNOME'
      Size = 250
    end
    object qCfopCFNOTA: TWideMemoField
      FieldName = 'CFNOTA'
      BlobType = ftWideMemo
    end
  end
  object qUF: TZQuery
    Connection = con
    SQL.Strings = (
      'select distinct(CD_UF) from TB_IBGE')
    Params = <>
    Left = 96
    Top = 184
    object qUFCD_UF: TWideStringField
      FieldName = 'CD_UF'
      Size = 2
    end
  end
  object qCidade: TZQuery
    Connection = con
    SQL.Strings = (
      'select   NM_LOCALIDADE, CD_IBGE '
      ', NM_MUNICIPIO'
      ', NM_TIPO_LOCALIDADE '
      ', SQ_IBGE '
      ', CD_UF  from TB_IBGE'
      'where CD_UF =:pUF'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptUnknown
      end>
    Left = 160
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptUnknown
      end>
    object qCidadeNM_LOCALIDADE: TWideStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object qCidadeCD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object qCidadeNM_MUNICIPIO: TWideStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object qCidadeNM_TIPO_LOCALIDADE: TWideStringField
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object qCidadeSQ_IBGE: TIntegerField
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object qCidadeCD_UF: TWideStringField
      FieldName = 'CD_UF'
      Size = 2
    end
  end
  object qcidadeE: TZQuery
    Connection = con
    SQL.Strings = (
      'select   NM_LOCALIDADE, CD_IBGE '
      ', NM_MUNICIPIO'
      ', NM_TIPO_LOCALIDADE '
      ', SQ_IBGE '
      ', CD_UF  from TB_IBGE'
      'where upper(NM_LOCALIDADE) =:pNM_LOCALIDADE'
      'and CD_UF =:pUF'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'pNM_LOCALIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'pNM_LOCALIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptUnknown
      end>
    object qcidadeENM_LOCALIDADE: TWideStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object qcidadeECD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object qcidadeENM_MUNICIPIO: TWideStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object qcidadeENM_TIPO_LOCALIDADE: TWideStringField
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object qcidadeESQ_IBGE: TIntegerField
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object qcidadeECD_UF: TWideStringField
      FieldName = 'CD_UF'
      Size = 2
    end
  end
  object qCD_IBGE: TZQuery
    Connection = con
    SQL.Strings = (
      'select   NM_LOCALIDADE, CD_IBGE '
      ', NM_MUNICIPIO'
      ', NM_TIPO_LOCALIDADE '
      ', SQ_IBGE '
      ', CD_UF  from TB_IBGE'
      'where CD_IBGE =:pCD_IBGE')
    Params = <
      item
        DataType = ftString
        Name = 'pCD_IBGE'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'pCD_IBGE'
        ParamType = ptUnknown
      end>
    object qCD_IBGENM_LOCALIDADE: TWideStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object qCD_IBGECD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object qCD_IBGENM_MUNICIPIO: TWideStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object qCD_IBGENM_TIPO_LOCALIDADE: TWideStringField
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object qCD_IBGESQ_IBGE: TIntegerField
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object qCD_IBGECD_UF: TWideStringField
      FieldName = 'CD_UF'
      Size = 2
    end
  end
  object dspCD_IBGE: TDataSetProvider
    DataSet = qCD_IBGE
    Left = 376
    Top = 200
  end
  object cdsCD_IBGE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCD_IBGE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCD_IBGE'
    Left = 456
    Top = 200
    object cdsCD_IBGENM_LOCALIDADE: TWideStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object cdsCD_IBGECD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object cdsCD_IBGENM_MUNICIPIO: TWideStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object cdsCD_IBGENM_TIPO_LOCALIDADE: TWideStringField
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object cdsCD_IBGESQ_IBGE: TIntegerField
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object cdsCD_IBGECD_UF: TWideStringField
      FieldName = 'CD_UF'
      Size = 2
    end
  end
  object qBuscaSerie: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from series')
    Params = <>
    Left = 128
    Top = 280
    object qBuscaSerieSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 3
    end
    object qBuscaSerieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
  end
  object cdsGen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGen'
    Left = 715
    Top = 174
    object cdsGenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
  end
  object dspGen: TDataSetProvider
    DataSet = qGen
    Options = [poAllowCommandText]
    Left = 667
    Top = 174
  end
  object qGen: TZQuery
    Connection = con
    SQL.Strings = (
      
        'SELECT CAST(GEN_ID(gen_cte_QC, 1) AS INTEGER) AS CODIGO FROM RDB' +
        '$DATABASE;')
    Params = <>
    Left = 624
    Top = 176
    object qGenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
  end
  object qMot: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE_MOTORISTA  where COD_CTE =:pCTE')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    Left = 295
    Top = 303
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    object qMotCOD_CTE_MOTORISTA: TIntegerField
      FieldName = 'COD_CTE_MOTORISTA'
    end
    object qMotCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object qMotCPF: TWideStringField
      FieldName = 'CPF'
      Size = 15
    end
    object qMotNOME: TWideStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspMot: TDataSetProvider
    DataSet = qMot
    Left = 343
    Top = 303
  end
  object cdsMot: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspMot'
    Left = 399
    Top = 303
    object cdsMotCOD_CTE_MOTORISTA: TIntegerField
      FieldName = 'COD_CTE_MOTORISTA'
    end
    object cdsMotCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object cdsMotCPF: TWideStringField
      FieldName = 'CPF'
      Size = 15
    end
    object cdsMotNOME: TWideStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsMot: TDataSource
    DataSet = qMot
    Left = 447
    Top = 302
  end
  object qVeic: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE_VEICULOS  where COD_CTE =:pCTE')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    Left = 295
    Top = 351
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    object qVeicCOD_CTE_VEICULOS: TIntegerField
      FieldName = 'COD_CTE_VEICULOS'
    end
    object qVeicCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object qVeicCINT: TWideStringField
      FieldName = 'CINT'
      Size = 10
    end
    object qVeicRENAVAM: TWideStringField
      FieldName = 'RENAVAM'
      Size = 11
    end
    object qVeicPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object qVeicTARA: TIntegerField
      FieldName = 'TARA'
    end
    object qVeicCAPKG: TIntegerField
      FieldName = 'CAPKG'
    end
    object qVeicCAPM3: TIntegerField
      FieldName = 'CAPM3'
    end
    object qVeicTPROD: TWideStringField
      FieldName = 'TPROD'
      Size = 2
    end
    object qVeicTPCAR: TWideStringField
      FieldName = 'TPCAR'
      Size = 2
    end
    object qVeicTPVEIC: TWideStringField
      FieldName = 'TPVEIC'
      Size = 1
    end
    object qVeicTPPROP: TWideStringField
      FieldName = 'TPPROP'
      Size = 1
    end
    object qVeicUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qVeicCNPJ: TWideStringField
      FieldName = 'CNPJ'
    end
    object qVeicRNTRC: TWideStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object qVeicNOME: TWideStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qVeicIE: TWideStringField
      FieldName = 'IE'
    end
    object qVeicVTPPROP: TIntegerField
      FieldName = 'VTPPROP'
    end
    object qVeicVUF: TWideStringField
      FieldName = 'VUF'
      Size = 2
    end
  end
  object dspVeic: TDataSetProvider
    DataSet = qVeic
    Left = 343
    Top = 351
  end
  object cdsVeic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVeic'
    Left = 399
    Top = 351
    object cdsVeicCOD_CTE_VEICULOS: TIntegerField
      FieldName = 'COD_CTE_VEICULOS'
    end
    object cdsVeicCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object cdsVeicCINT: TWideStringField
      FieldName = 'CINT'
      Size = 10
    end
    object cdsVeicRENAVAM: TWideStringField
      FieldName = 'RENAVAM'
      Size = 11
    end
    object cdsVeicPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsVeicTARA: TIntegerField
      FieldName = 'TARA'
    end
    object cdsVeicCAPKG: TIntegerField
      FieldName = 'CAPKG'
    end
    object cdsVeicCAPM3: TIntegerField
      FieldName = 'CAPM3'
    end
    object cdsVeicTPROD: TWideStringField
      FieldName = 'TPROD'
      Size = 2
    end
    object cdsVeicTPCAR: TWideStringField
      FieldName = 'TPCAR'
      Size = 2
    end
    object cdsVeicTPVEIC: TWideStringField
      FieldName = 'TPVEIC'
      Size = 1
    end
    object cdsVeicTPPROP: TWideStringField
      FieldName = 'TPPROP'
      Size = 1
    end
    object cdsVeicUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsVeicCNPJ: TWideStringField
      FieldName = 'CNPJ'
    end
    object cdsVeicRNTRC: TWideStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object cdsVeicNOME: TWideStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVeicIE: TWideStringField
      FieldName = 'IE'
    end
    object cdsVeicVTPPROP: TIntegerField
      FieldName = 'VTPPROP'
    end
    object cdsVeicVUF: TWideStringField
      FieldName = 'VUF'
      Size = 2
    end
  end
  object dsVeic: TDataSource
    DataSet = qVeic
    Left = 447
    Top = 350
  end
  object qSeg: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE_SEGURO  where COD_CTE =:pCTE')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    Left = 295
    Top = 407
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    object qSegCOD_CTE_SEGURO: TIntegerField
      FieldName = 'COD_CTE_SEGURO'
    end
    object qSegCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object qSegRESP: TIntegerField
      FieldName = 'RESP'
    end
    object qSegNOME_SEGURADORA: TWideStringField
      FieldName = 'NOME_SEGURADORA'
      Size = 30
    end
    object qSegNUMERO_APOLICE: TWideStringField
      FieldName = 'NUMERO_APOLICE'
    end
    object qSegVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qSegNUMERO_AVERBACAO: TWideStringField
      FieldName = 'NUMERO_AVERBACAO'
    end
  end
  object dspSeg: TDataSetProvider
    DataSet = qSeg
    Left = 343
    Top = 407
  end
  object cdsSeg: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspSeg'
    Left = 399
    Top = 407
    object cdsSegCOD_CTE_SEGURO: TIntegerField
      FieldName = 'COD_CTE_SEGURO'
    end
    object cdsSegCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object cdsSegRESP: TIntegerField
      FieldName = 'RESP'
    end
    object cdsSegNOME_SEGURADORA: TWideStringField
      FieldName = 'NOME_SEGURADORA'
      Size = 30
    end
    object cdsSegNUMERO_APOLICE: TWideStringField
      FieldName = 'NUMERO_APOLICE'
    end
    object cdsSegVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsSegNUMERO_AVERBACAO: TWideStringField
      FieldName = 'NUMERO_AVERBACAO'
    end
  end
  object dsSeg: TDataSource
    DataSet = qSeg
    Left = 447
    Top = 406
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pRazao'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspEmpresa'
    Left = 734
    Top = 256
    object cdsEmpresaEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object cdsEmpresaRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object cdsEmpresaCNPJ_CPF: TWideStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object cdsEmpresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsEmpresaLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object cdsEmpresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsEmpresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsEmpresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEmpresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsEmpresaDDD: TWideStringField
      FieldName = 'DDD'
      Size = 2
    end
    object cdsEmpresaFONE: TWideStringField
      FieldName = 'FONE'
      Size = 12
    end
    object cdsEmpresaFONE_1: TWideStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object cdsEmpresaFONE_2: TWideStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object cdsEmpresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 12
    end
    object cdsEmpresaE_MAIL: TWideStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cdsEmpresaWEB: TWideStringField
      FieldName = 'WEB'
      Size = 50
    end
    object cdsEmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
    end
    object cdsEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsEmpresaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsEmpresaIE_RG: TWideStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object cdsEmpresaSLOGAN: TWideStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object cdsEmpresaOUTRAS_INFO: TWideStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object cdsEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object cdsEmpresaDIVERSOS1: TWideStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object cdsEmpresaDIVERSOS2: TWideStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object cdsEmpresaDIVERSOS3: TWideStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object cdsEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object cdsEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object cdsEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object cdsEmpresaSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 60
    end
    object cdsEmpresaSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object cdsEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cdsEmpresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsEmpresaCD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cdsEmpresaIM: TWideStringField
      FieldName = 'IM'
      Size = 15
    end
    object cdsEmpresaTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object cdsEmpresaCONTADOR: TWideStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object cdsEmpresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
    end
    object cdsEmpresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 14
    end
    object cdsEmpresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
      Size = 11
    end
    object cdsEmpresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object cdsEmpresaCONTADOR_END: TWideStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object cdsEmpresaCONTADOR_NUMEND: TWideStringField
      FieldName = 'CONTADOR_NUMEND'
      Size = 7
    end
    object cdsEmpresaCONTADOR_COMPL: TWideStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object cdsEmpresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object cdsEmpresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 14
    end
    object cdsEmpresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 14
    end
    object cdsEmpresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object cdsEmpresaCONTADOR_COD_MUN: TWideStringField
      FieldName = 'CONTADOR_COD_MUN'
      Size = 10
    end
    object cdsEmpresaCNPJPREFEITURA: TWideStringField
      FieldName = 'CNPJPREFEITURA'
      Size = 14
    end
    object cdsEmpresaNOMEPREFEITURA: TWideStringField
      FieldName = 'NOMEPREFEITURA'
      Size = 50
    end
    object cdsEmpresaCHAVELIC: TWideStringField
      FieldName = 'CHAVELIC'
      Size = 50
    end
    object cdsEmpresaCHAVECONT: TWideStringField
      FieldName = 'CHAVECONT'
      Size = 50
    end
    object cdsEmpresaMODELOCUPOM: TWideStringField
      FieldName = 'MODELOCUPOM'
      Size = 2
    end
    object cdsEmpresaECFMOD: TWideStringField
      FieldName = 'ECFMOD'
    end
    object cdsEmpresaECFFAB: TWideStringField
      FieldName = 'ECFFAB'
    end
    object cdsEmpresaECFCX: TWideStringField
      FieldName = 'ECFCX'
      Size = 3
    end
    object cdsEmpresaCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object cdsEmpresaINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object cdsEmpresaCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object cdsEmpresaINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object cdsEmpresaINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object cdsEmpresaINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object cdsEmpresaCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object cdsEmpresaINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object cdsEmpresaINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object cdsEmpresaINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object cdsEmpresaINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object cdsEmpresaBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object cdsEmpresaCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object cdsEmpresaINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object cdsEmpresaCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object cdsEmpresaNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object cdsEmpresaINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object cdsEmpresaINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object cdsEmpresaCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object cdsEmpresaINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object cdsEmpresaINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object cdsEmpresaINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object cdsEmpresaINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
    object cdsEmpresaINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = zEmpresa
    Left = 670
    Top = 256
  end
  object zEmpresa: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from empresa where RAZAO =:pRazao'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'pRazao'
        ParamType = ptUnknown
      end>
    Left = 606
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'pRazao'
        ParamType = ptUnknown
      end>
    object zEmpresaEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object zEmpresaRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object zEmpresaCNPJ_CPF: TWideStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object zEmpresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object zEmpresaLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object zEmpresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object zEmpresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object zEmpresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object zEmpresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object zEmpresaDDD: TWideStringField
      FieldName = 'DDD'
      Size = 2
    end
    object zEmpresaFONE: TWideStringField
      FieldName = 'FONE'
      Size = 12
    end
    object zEmpresaFONE_1: TWideStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object zEmpresaFONE_2: TWideStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object zEmpresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 12
    end
    object zEmpresaE_MAIL: TWideStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object zEmpresaWEB: TWideStringField
      FieldName = 'WEB'
      Size = 50
    end
    object zEmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
    end
    object zEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object zEmpresaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object zEmpresaIE_RG: TWideStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object zEmpresaSLOGAN: TWideStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object zEmpresaOUTRAS_INFO: TWideStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object zEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object zEmpresaDIVERSOS1: TWideStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object zEmpresaDIVERSOS2: TWideStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object zEmpresaDIVERSOS3: TWideStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object zEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object zEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object zEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object zEmpresaSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 60
    end
    object zEmpresaSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object zEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object zEmpresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object zEmpresaCD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object zEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object zEmpresaIM: TWideStringField
      FieldName = 'IM'
      Size = 15
    end
    object zEmpresaTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object zEmpresaCONTADOR: TWideStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object zEmpresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
    end
    object zEmpresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 14
    end
    object zEmpresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
      Size = 11
    end
    object zEmpresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object zEmpresaCONTADOR_END: TWideStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object zEmpresaCONTADOR_NUMEND: TWideStringField
      FieldName = 'CONTADOR_NUMEND'
      Size = 7
    end
    object zEmpresaCONTADOR_COMPL: TWideStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object zEmpresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object zEmpresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 14
    end
    object zEmpresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 14
    end
    object zEmpresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object zEmpresaCONTADOR_COD_MUN: TWideStringField
      FieldName = 'CONTADOR_COD_MUN'
      Size = 10
    end
    object zEmpresaCNPJPREFEITURA: TWideStringField
      FieldName = 'CNPJPREFEITURA'
      Size = 14
    end
    object zEmpresaNOMEPREFEITURA: TWideStringField
      FieldName = 'NOMEPREFEITURA'
      Size = 50
    end
    object zEmpresaCHAVELIC: TWideStringField
      FieldName = 'CHAVELIC'
      Size = 50
    end
    object zEmpresaCHAVECONT: TWideStringField
      FieldName = 'CHAVECONT'
      Size = 50
    end
    object zEmpresaMODELOCUPOM: TWideStringField
      FieldName = 'MODELOCUPOM'
      Size = 2
    end
    object zEmpresaECFMOD: TWideStringField
      FieldName = 'ECFMOD'
    end
    object zEmpresaECFFAB: TWideStringField
      FieldName = 'ECFFAB'
    end
    object zEmpresaECFCX: TWideStringField
      FieldName = 'ECFCX'
      Size = 3
    end
    object zEmpresaCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object zEmpresaINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object zEmpresaCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object zEmpresaINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object zEmpresaINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object zEmpresaINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object zEmpresaCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object zEmpresaINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object zEmpresaINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object zEmpresaINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object zEmpresaINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object zEmpresaBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object zEmpresaCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object zEmpresaINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object zEmpresaCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object zEmpresaNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object zEmpresaINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object zEmpresaINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object zEmpresaCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object zEmpresaINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object zEmpresaINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object zEmpresaINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object zEmpresaINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
    object zEmpresaINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
  end
  object dsNFe: TDataSource
    DataSet = qNFe
    Left = 759
    Top = 326
  end
  object cdsNFe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspNFe'
    Left = 711
    Top = 327
    object cdsNFeCOD_CTE_NFE: TIntegerField
      FieldName = 'COD_CTE_NFE'
    end
    object cdsNFeCTE_NFE: TIntegerField
      FieldName = 'CTE_NFE'
    end
    object cdsNFeCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 80
    end
    object cdsNFePIN: TIntegerField
      FieldName = 'PIN'
    end
    object cdsNFeDPREV: TDateField
      FieldName = 'DPREV'
    end
  end
  object dspNFe: TDataSetProvider
    DataSet = qNFe
    Left = 663
    Top = 327
  end
  object qNFe: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE_NFE where CTE_NFE =:pCTE')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    Left = 607
    Top = 326
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    object qNFeCOD_CTE_NFE: TIntegerField
      FieldName = 'COD_CTE_NFE'
    end
    object qNFeCTE_NFE: TIntegerField
      FieldName = 'CTE_NFE'
    end
    object qNFeCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 80
    end
    object qNFePIN: TIntegerField
      FieldName = 'PIN'
    end
    object qNFeDPREV: TDateField
      FieldName = 'DPREV'
    end
  end
  object dsComp: TDataSource
    DataSet = qCOMP
    Left = 451
    Top = 476
  end
  object cdsCOMP: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCOMP'
    Left = 403
    Top = 476
    object cdsCOMPCOD_CTE_COMP: TIntegerField
      FieldName = 'COD_CTE_COMP'
    end
    object cdsCOMPCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object cdsCOMPCOMP_NOME: TWideStringField
      FieldName = 'COMP_NOME'
      Size = 15
    end
    object cdsCOMPCOMP_VALOR: TFloatField
      FieldName = 'COMP_VALOR'
    end
  end
  object dspCOMP: TDataSetProvider
    DataSet = qCOMP
    Left = 347
    Top = 476
  end
  object qCOMP: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE_COMP where COD_CTE  = :pCTE')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    Left = 299
    Top = 476
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    object qCOMPCOD_CTE_COMP: TIntegerField
      FieldName = 'COD_CTE_COMP'
    end
    object qCOMPCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object qCOMPCOMP_NOME: TWideStringField
      FieldName = 'COMP_NOME'
      Size = 15
    end
    object qCOMPCOMP_VALOR: TFloatField
      FieldName = 'COMP_VALOR'
    end
  end
  object dsQC: TDataSource
    DataSet = qQC
    Left = 447
    Top = 542
  end
  object cdsQC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspQC'
    Left = 399
    Top = 543
    object cdsQCCOD_CTE_QC: TIntegerField
      FieldName = 'COD_CTE_QC'
      Required = True
    end
    object cdsQCCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object cdsQCUNID: TWideStringField
      FieldName = 'UNID'
      Size = 2
    end
    object cdsQCMEDIDA: TWideStringField
      FieldName = 'MEDIDA'
    end
    object cdsQCQUANT: TFloatField
      FieldName = 'QUANT'
    end
  end
  object dspQC: TDataSetProvider
    DataSet = qQC
    Left = 351
    Top = 543
  end
  object qCTE: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE '
      'where ((emitente  =:pEmi )'
      '    and ((cte_numero = :num_cte) or (:num_cte = 0)))'
      'order by CTE_NUMERO desc'
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'pEmi'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'num_cte'
        ParamType = ptUnknown
      end>
    Left = 560
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pEmi'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'num_cte'
        ParamType = ptUnknown
      end>
    object qCTECOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
      Required = True
    end
    object qCTECODEMITENTE: TIntegerField
      FieldName = 'CODEMITENTE'
    end
    object qCTECTE_ESTADO: TIntegerField
      FieldName = 'CTE_ESTADO'
    end
    object qCTECTE_CHAVE: TIntegerField
      FieldName = 'CTE_CHAVE'
    end
    object qCTECTE_CFOP: TIntegerField
      FieldName = 'CTE_CFOP'
    end
    object qCTECTE_NATOP: TWideStringField
      FieldName = 'CTE_NATOP'
      Size = 60
    end
    object qCTEIFORPAG: TIntegerField
      FieldName = 'IFORPAG'
    end
    object qCTEMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qCTECTE_SERIE: TWideStringField
      FieldName = 'CTE_SERIE'
      Size = 6
    end
    object qCTECTE_NUMERO: TIntegerField
      FieldName = 'CTE_NUMERO'
    end
    object qCTEDHEMI: TDateTimeField
      FieldName = 'DHEMI'
    end
    object qCTETPIMP: TIntegerField
      FieldName = 'TPIMP'
    end
    object qCTETPOEMISSAO: TIntegerField
      FieldName = 'TPOEMISSAO'
    end
    object qCTETIPOAMBIENTE: TIntegerField
      FieldName = 'TIPOAMBIENTE'
    end
    object qCTETIPOCTE: TIntegerField
      FieldName = 'TIPOCTE'
    end
    object qCTEPROCEMI: TIntegerField
      FieldName = 'PROCEMI'
    end
    object qCTEVERPROC: TWideStringField
      FieldName = 'VERPROC'
    end
    object qCTEREFCTE: TWideStringField
      FieldName = 'REFCTE'
      Size = 60
    end
    object qCTECODIGOMUNICIPIO: TWideStringField
      FieldName = 'CODIGOMUNICIPIO'
      Size = 10
    end
    object qCTEEMPRESACIDADE: TWideStringField
      FieldName = 'EMPRESACIDADE'
      Size = 60
    end
    object qCTEEMPRESAESTADO: TWideStringField
      FieldName = 'EMPRESAESTADO'
      Size = 2
    end
    object qCTEMODAL: TWideStringField
      FieldName = 'MODAL'
      Size = 2
    end
    object qCTETIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
    end
    object qCTEENV_CODCIDADE: TWideStringField
      FieldName = 'ENV_CODCIDADE'
      Size = 10
    end
    object qCTEENV_CIDADE: TWideStringField
      FieldName = 'ENV_CIDADE'
      Size = 60
    end
    object qCTEENV_ESTADO: TWideStringField
      FieldName = 'ENV_ESTADO'
      Size = 2
    end
    object qCTEINI_CODCIDADE: TWideStringField
      FieldName = 'INI_CODCIDADE'
      Size = 10
    end
    object qCTEINI_CIDADE: TWideStringField
      FieldName = 'INI_CIDADE'
      Size = 60
    end
    object qCTEINI_ESTADO: TWideStringField
      FieldName = 'INI_ESTADO'
      Size = 2
    end
    object qCTEFIM_CODCIDADE: TWideStringField
      FieldName = 'FIM_CODCIDADE'
      Size = 10
    end
    object qCTEFIM_CIDADE: TWideStringField
      FieldName = 'FIM_CIDADE'
      Size = 60
    end
    object qCTEFIM_ESTADO: TWideStringField
      FieldName = 'FIM_ESTADO'
      Size = 2
    end
    object qCTERETIRA: TIntegerField
      FieldName = 'RETIRA'
    end
    object qCTEDETRETIRA: TWideStringField
      FieldName = 'DETRETIRA'
      Size = 60
    end
    object qCTEEMITENTE: TIntegerField
      FieldName = 'EMITENTE'
    end
    object qCTEE_RG: TWideStringField
      FieldName = 'E_RG'
    end
    object qCTEE_CNPJCPF: TWideStringField
      FieldName = 'E_CNPJCPF'
    end
    object qCTEE_IESTADUAL: TWideStringField
      FieldName = 'E_IESTADUAL'
    end
    object qCTEE_RSOCIAL: TWideStringField
      FieldName = 'E_RSOCIAL'
      Size = 60
    end
    object qCTEE_FANTASIA: TWideStringField
      FieldName = 'E_FANTASIA'
      Size = 60
    end
    object qCTEE_TELEFONE: TWideStringField
      FieldName = 'E_TELEFONE'
      Size = 15
    end
    object qCTEE_ENDERECO: TWideStringField
      FieldName = 'E_ENDERECO'
      Size = 60
    end
    object qCTEE_NUMERO: TWideStringField
      FieldName = 'E_NUMERO'
      Size = 10
    end
    object qCTEE_COMPLEMENTO: TWideStringField
      FieldName = 'E_COMPLEMENTO'
      Size = 60
    end
    object qCTEE_BAIRRO: TWideStringField
      FieldName = 'E_BAIRRO'
      Size = 60
    end
    object qCTEE_CODIGOMUNICIPI: TWideStringField
      FieldName = 'E_CODIGOMUNICIPI'
      Size = 10
    end
    object qCTEE_CIDADE: TWideStringField
      FieldName = 'E_CIDADE'
      Size = 60
    end
    object qCTEE_CEP: TWideStringField
      FieldName = 'E_CEP'
      Size = 10
    end
    object qCTEE_ESTADO: TWideStringField
      FieldName = 'E_ESTADO'
      Size = 2
    end
    object qCTEE_CODIGOPAIS: TIntegerField
      FieldName = 'E_CODIGOPAIS'
    end
    object qCTEE_PAIS: TWideStringField
      FieldName = 'E_PAIS'
      Size = 60
    end
    object qCTETOMADORSERVICO: TIntegerField
      FieldName = 'TOMADORSERVICO'
    end
    object qCTET_RG: TWideStringField
      FieldName = 'T_RG'
    end
    object qCTET_CNPJCPF: TWideStringField
      FieldName = 'T_CNPJCPF'
    end
    object qCTET_IESTADUAL: TWideStringField
      FieldName = 'T_IESTADUAL'
    end
    object qCTET_RSOCIAL: TWideStringField
      FieldName = 'T_RSOCIAL'
      Size = 60
    end
    object qCTET_FANTASIA: TWideStringField
      FieldName = 'T_FANTASIA'
      Size = 60
    end
    object qCTET_TELEFONE: TWideStringField
      FieldName = 'T_TELEFONE'
      Size = 15
    end
    object qCTET_ENDERECO: TWideStringField
      FieldName = 'T_ENDERECO'
      Size = 60
    end
    object qCTET_NUMERO: TWideStringField
      FieldName = 'T_NUMERO'
      Size = 10
    end
    object qCTET_COMPLEMENTO: TWideStringField
      FieldName = 'T_COMPLEMENTO'
      Size = 60
    end
    object qCTET_BAIRRO: TWideStringField
      FieldName = 'T_BAIRRO'
      Size = 60
    end
    object qCTET_CODIGOMUNICIPI: TWideStringField
      FieldName = 'T_CODIGOMUNICIPI'
      Size = 10
    end
    object qCTET_CIDADE: TWideStringField
      FieldName = 'T_CIDADE'
      Size = 60
    end
    object qCTET_CEP: TWideStringField
      FieldName = 'T_CEP'
      Size = 10
    end
    object qCTET_ESTADO: TWideStringField
      FieldName = 'T_ESTADO'
      Size = 2
    end
    object qCTET_CODIGOPAIS: TIntegerField
      FieldName = 'T_CODIGOPAIS'
    end
    object qCTET_PAIS: TWideStringField
      FieldName = 'T_PAIS'
      Size = 60
    end
    object qCTEREMETENTE: TIntegerField
      FieldName = 'REMETENTE'
    end
    object qCTER_RG: TWideStringField
      FieldName = 'R_RG'
    end
    object qCTER_CNPJCPF: TWideStringField
      FieldName = 'R_CNPJCPF'
    end
    object qCTER_IESTADUAL: TWideStringField
      FieldName = 'R_IESTADUAL'
    end
    object qCTER_RSOCIAL: TWideStringField
      FieldName = 'R_RSOCIAL'
      Size = 60
    end
    object qCTER_FANTASIA: TWideStringField
      FieldName = 'R_FANTASIA'
      Size = 60
    end
    object qCTER_TELEFONE: TWideStringField
      FieldName = 'R_TELEFONE'
      Size = 15
    end
    object qCTER_ENDERECO: TWideStringField
      FieldName = 'R_ENDERECO'
      Size = 60
    end
    object qCTER_NUMERO: TWideStringField
      FieldName = 'R_NUMERO'
      Size = 10
    end
    object qCTER_COMPLEMENTO: TWideStringField
      FieldName = 'R_COMPLEMENTO'
      Size = 60
    end
    object qCTER_BAIRRO: TWideStringField
      FieldName = 'R_BAIRRO'
      Size = 60
    end
    object qCTER_CODIGOMUNICIPI: TWideStringField
      FieldName = 'R_CODIGOMUNICIPI'
      Size = 10
    end
    object qCTER_CIDADE: TWideStringField
      FieldName = 'R_CIDADE'
      Size = 60
    end
    object qCTER_CEP: TWideStringField
      FieldName = 'R_CEP'
      Size = 10
    end
    object qCTER_ESTADO: TWideStringField
      FieldName = 'R_ESTADO'
      Size = 2
    end
    object qCTER_CODIGOPAIS: TIntegerField
      FieldName = 'R_CODIGOPAIS'
    end
    object qCTER_PAIS: TWideStringField
      FieldName = 'R_PAIS'
      Size = 60
    end
    object qCTEDESTINATARIO: TIntegerField
      FieldName = 'DESTINATARIO'
    end
    object qCTED_RG: TWideStringField
      FieldName = 'D_RG'
    end
    object qCTED_CNPJCPF: TWideStringField
      FieldName = 'D_CNPJCPF'
    end
    object qCTED_IESTADUAL: TWideStringField
      FieldName = 'D_IESTADUAL'
    end
    object qCTED_RSOCIAL: TWideStringField
      FieldName = 'D_RSOCIAL'
      Size = 60
    end
    object qCTED_FANTASIA: TWideStringField
      FieldName = 'D_FANTASIA'
      Size = 60
    end
    object qCTED_TELEFONE: TWideStringField
      FieldName = 'D_TELEFONE'
      Size = 15
    end
    object qCTED_ENDERECO: TWideStringField
      FieldName = 'D_ENDERECO'
      Size = 60
    end
    object qCTED_NUMERO: TWideStringField
      FieldName = 'D_NUMERO'
      Size = 10
    end
    object qCTED_COMPLEMENTO: TWideStringField
      FieldName = 'D_COMPLEMENTO'
      Size = 60
    end
    object qCTED_BAIRRO: TWideStringField
      FieldName = 'D_BAIRRO'
      Size = 60
    end
    object qCTED_CODIGOMUNICIPI: TWideStringField
      FieldName = 'D_CODIGOMUNICIPI'
      Size = 10
    end
    object qCTED_CIDADE: TWideStringField
      FieldName = 'D_CIDADE'
      Size = 60
    end
    object qCTED_CEP: TWideStringField
      FieldName = 'D_CEP'
      Size = 10
    end
    object qCTED_ESTADO: TWideStringField
      FieldName = 'D_ESTADO'
      Size = 2
    end
    object qCTED_CODIGOPAIS: TIntegerField
      FieldName = 'D_CODIGOPAIS'
    end
    object qCTED_PAIS: TWideStringField
      FieldName = 'D_PAIS'
      Size = 60
    end
    object qCTEEXPEDITOR: TIntegerField
      FieldName = 'EXPEDITOR'
    end
    object qCTEEX_RG: TWideStringField
      FieldName = 'EX_RG'
    end
    object qCTEEX_CNPJCPF: TWideStringField
      FieldName = 'EX_CNPJCPF'
    end
    object qCTEEX_IESTADUAL: TWideStringField
      FieldName = 'EX_IESTADUAL'
    end
    object qCTEEX_RSOCIAL: TWideStringField
      FieldName = 'EX_RSOCIAL'
      Size = 60
    end
    object qCTEEX_FANTASIA: TWideStringField
      FieldName = 'EX_FANTASIA'
      Size = 60
    end
    object qCTEEX_TELEFONE: TWideStringField
      FieldName = 'EX_TELEFONE'
      Size = 15
    end
    object qCTEEX_ENDERECO: TWideStringField
      FieldName = 'EX_ENDERECO'
      Size = 60
    end
    object qCTEEX_NUMERO: TWideStringField
      FieldName = 'EX_NUMERO'
      Size = 10
    end
    object qCTEEX_COMPLEMENTO: TWideStringField
      FieldName = 'EX_COMPLEMENTO'
      Size = 60
    end
    object qCTEEX_BAIRRO: TWideStringField
      FieldName = 'EX_BAIRRO'
      Size = 60
    end
    object qCTEEX_CODIGOMUNICIPI: TWideStringField
      FieldName = 'EX_CODIGOMUNICIPI'
      Size = 10
    end
    object qCTEEX_CIDADE: TWideStringField
      FieldName = 'EX_CIDADE'
      Size = 60
    end
    object qCTEEX_CEP: TWideStringField
      FieldName = 'EX_CEP'
      Size = 10
    end
    object qCTEEX_ESTADO: TWideStringField
      FieldName = 'EX_ESTADO'
      Size = 2
    end
    object qCTEEX_CODIGOPAIS: TIntegerField
      FieldName = 'EX_CODIGOPAIS'
    end
    object qCTEEX_PAIS: TWideStringField
      FieldName = 'EX_PAIS'
      Size = 60
    end
    object qCTECARAC_TRANSP: TWideStringField
      FieldName = 'CARAC_TRANSP'
      Size = 15
    end
    object qCTECARAC_SERV: TWideStringField
      FieldName = 'CARAC_SERV'
      Size = 30
    end
    object qCTEFUNC_EMI: TWideStringField
      FieldName = 'FUNC_EMI'
    end
    object qCTEDET_RETIRA: TWideStringField
      FieldName = 'DET_RETIRA'
      Size = 160
    end
    object qCTEVPREST: TFloatField
      FieldName = 'VPREST'
    end
    object qCTEVREC: TFloatField
      FieldName = 'VREC'
    end
    object qCTECOMPONENTE: TWideStringField
      FieldName = 'COMPONENTE'
      Size = 15
    end
    object qCTEVCOMPONENTE: TFloatField
      FieldName = 'VCOMPONENTE'
    end
    object qCTEVALTOTTRI: TFloatField
      FieldName = 'VALTOTTRI'
    end
    object qCTECOMBCODSITTRIB: TIntegerField
      FieldName = 'COMBCODSITTRIB'
    end
    object qCTEVALINFCARGA: TFloatField
      FieldName = 'VALINFCARGA'
    end
    object qCTEPROPRED: TWideStringField
      FieldName = 'PROPRED'
      Size = 60
    end
    object qCTEOUTCAT: TWideStringField
      FieldName = 'OUTCAT'
      Size = 30
    end
    object qCTERNTRC: TWideStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object qCTEDATARODPREV: TDateField
      FieldName = 'DATARODPREV'
    end
    object qCTERGRODLOTACAO: TIntegerField
      FieldName = 'RGRODLOTACAO'
    end
    object qCTEOBS_GERAL: TWideStringField
      FieldName = 'OBS_GERAL'
      Size = 300
    end
    object qCTESTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 60
    end
    object qCTENPROT: TWideStringField
      FieldName = 'NPROT'
    end
    object qCTECHCTE: TWideStringField
      FieldName = 'CHCTE'
      Size = 50
    end
    object qCTERECEBEDOR: TIntegerField
      FieldName = 'RECEBEDOR'
    end
    object qCTERE_RG: TWideStringField
      FieldName = 'RE_RG'
    end
    object qCTERE_CNPJCPF: TWideStringField
      FieldName = 'RE_CNPJCPF'
    end
    object qCTERE_IESTADUAL: TWideStringField
      FieldName = 'RE_IESTADUAL'
    end
    object qCTERE_RSOCIAL: TWideStringField
      FieldName = 'RE_RSOCIAL'
      Size = 60
    end
    object qCTERE_FANTASIA: TWideStringField
      FieldName = 'RE_FANTASIA'
      Size = 60
    end
    object qCTERE_TELEFONE: TWideStringField
      FieldName = 'RE_TELEFONE'
      Size = 15
    end
    object qCTERE_ENDERECO: TWideStringField
      FieldName = 'RE_ENDERECO'
      Size = 60
    end
    object qCTERE_NUMERO: TWideStringField
      FieldName = 'RE_NUMERO'
      Size = 10
    end
    object qCTERE_COMPLEMENTO: TWideStringField
      FieldName = 'RE_COMPLEMENTO'
      Size = 60
    end
    object qCTERE_BAIRRO: TWideStringField
      FieldName = 'RE_BAIRRO'
      Size = 60
    end
    object qCTERE_CODIGOMUNICIPI: TWideStringField
      FieldName = 'RE_CODIGOMUNICIPI'
      Size = 10
    end
    object qCTERE_CIDADE: TWideStringField
      FieldName = 'RE_CIDADE'
      Size = 60
    end
    object qCTERE_CEP: TWideStringField
      FieldName = 'RE_CEP'
      Size = 10
    end
    object qCTERE_ESTADO: TWideStringField
      FieldName = 'RE_ESTADO'
      Size = 2
    end
    object qCTERE_CODIGOPAIS: TIntegerField
      FieldName = 'RE_CODIGOPAIS'
    end
    object qCTERE_PAIS: TWideStringField
      FieldName = 'RE_PAIS'
      Size = 60
    end
  end
  object dsCTE: TDataSource
    DataSet = cdsCTE
    Left = 752
    Top = 424
  end
  object cdsCTE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pEmi'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'num_cte'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCTE'
    Left = 680
    Top = 424
    object cdsCTECOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
      Required = True
    end
    object cdsCTECODEMITENTE: TIntegerField
      FieldName = 'CODEMITENTE'
    end
    object cdsCTECTE_ESTADO: TIntegerField
      FieldName = 'CTE_ESTADO'
    end
    object cdsCTECTE_CHAVE: TIntegerField
      FieldName = 'CTE_CHAVE'
    end
    object cdsCTECTE_CFOP: TIntegerField
      FieldName = 'CTE_CFOP'
    end
    object cdsCTECTE_NATOP: TWideStringField
      FieldName = 'CTE_NATOP'
      Size = 60
    end
    object cdsCTEIFORPAG: TIntegerField
      FieldName = 'IFORPAG'
    end
    object cdsCTEMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsCTECTE_SERIE: TWideStringField
      FieldName = 'CTE_SERIE'
      Size = 6
    end
    object cdsCTECTE_NUMERO: TIntegerField
      FieldName = 'CTE_NUMERO'
    end
    object cdsCTEDHEMI: TDateTimeField
      FieldName = 'DHEMI'
    end
    object cdsCTETPIMP: TIntegerField
      FieldName = 'TPIMP'
    end
    object cdsCTETPOEMISSAO: TIntegerField
      FieldName = 'TPOEMISSAO'
    end
    object cdsCTETIPOAMBIENTE: TIntegerField
      FieldName = 'TIPOAMBIENTE'
    end
    object cdsCTETIPOCTE: TIntegerField
      FieldName = 'TIPOCTE'
    end
    object cdsCTEPROCEMI: TIntegerField
      FieldName = 'PROCEMI'
    end
    object cdsCTEVERPROC: TWideStringField
      FieldName = 'VERPROC'
    end
    object cdsCTEREFCTE: TWideStringField
      FieldName = 'REFCTE'
      Size = 60
    end
    object cdsCTECODIGOMUNICIPIO: TWideStringField
      FieldName = 'CODIGOMUNICIPIO'
      Size = 10
    end
    object cdsCTEEMPRESACIDADE: TWideStringField
      FieldName = 'EMPRESACIDADE'
      Size = 60
    end
    object cdsCTEEMPRESAESTADO: TWideStringField
      FieldName = 'EMPRESAESTADO'
      Size = 2
    end
    object cdsCTEMODAL: TWideStringField
      FieldName = 'MODAL'
      Size = 2
    end
    object cdsCTETIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
    end
    object cdsCTEENV_CODCIDADE: TWideStringField
      FieldName = 'ENV_CODCIDADE'
      Size = 10
    end
    object cdsCTEENV_CIDADE: TWideStringField
      FieldName = 'ENV_CIDADE'
      Size = 60
    end
    object cdsCTEENV_ESTADO: TWideStringField
      FieldName = 'ENV_ESTADO'
      Size = 2
    end
    object cdsCTEINI_CODCIDADE: TWideStringField
      FieldName = 'INI_CODCIDADE'
      Size = 10
    end
    object cdsCTEINI_CIDADE: TWideStringField
      FieldName = 'INI_CIDADE'
      Size = 60
    end
    object cdsCTEINI_ESTADO: TWideStringField
      FieldName = 'INI_ESTADO'
      Size = 2
    end
    object cdsCTEFIM_CODCIDADE: TWideStringField
      FieldName = 'FIM_CODCIDADE'
      Size = 10
    end
    object cdsCTEFIM_CIDADE: TWideStringField
      FieldName = 'FIM_CIDADE'
      Size = 60
    end
    object cdsCTEFIM_ESTADO: TWideStringField
      FieldName = 'FIM_ESTADO'
      Size = 2
    end
    object cdsCTERETIRA: TIntegerField
      FieldName = 'RETIRA'
    end
    object cdsCTEDETRETIRA: TWideStringField
      FieldName = 'DETRETIRA'
      Size = 60
    end
    object cdsCTEEMITENTE: TIntegerField
      FieldName = 'EMITENTE'
    end
    object cdsCTEE_RG: TWideStringField
      FieldName = 'E_RG'
    end
    object cdsCTEE_CNPJCPF: TWideStringField
      FieldName = 'E_CNPJCPF'
    end
    object cdsCTEE_IESTADUAL: TWideStringField
      FieldName = 'E_IESTADUAL'
    end
    object cdsCTEE_RSOCIAL: TWideStringField
      FieldName = 'E_RSOCIAL'
      Size = 60
    end
    object cdsCTEE_FANTASIA: TWideStringField
      FieldName = 'E_FANTASIA'
      Size = 60
    end
    object cdsCTEE_TELEFONE: TWideStringField
      FieldName = 'E_TELEFONE'
      Size = 15
    end
    object cdsCTEE_ENDERECO: TWideStringField
      FieldName = 'E_ENDERECO'
      Size = 60
    end
    object cdsCTEE_NUMERO: TWideStringField
      FieldName = 'E_NUMERO'
      Size = 10
    end
    object cdsCTEE_COMPLEMENTO: TWideStringField
      FieldName = 'E_COMPLEMENTO'
      Size = 60
    end
    object cdsCTEE_BAIRRO: TWideStringField
      FieldName = 'E_BAIRRO'
      Size = 60
    end
    object cdsCTEE_CODIGOMUNICIPI: TWideStringField
      FieldName = 'E_CODIGOMUNICIPI'
      Size = 10
    end
    object cdsCTEE_CIDADE: TWideStringField
      FieldName = 'E_CIDADE'
      Size = 60
    end
    object cdsCTEE_CEP: TWideStringField
      FieldName = 'E_CEP'
      Size = 10
    end
    object cdsCTEE_ESTADO: TWideStringField
      FieldName = 'E_ESTADO'
      Size = 2
    end
    object cdsCTEE_CODIGOPAIS: TIntegerField
      FieldName = 'E_CODIGOPAIS'
    end
    object cdsCTEE_PAIS: TWideStringField
      FieldName = 'E_PAIS'
      Size = 60
    end
    object cdsCTETOMADORSERVICO: TIntegerField
      FieldName = 'TOMADORSERVICO'
    end
    object cdsCTET_RG: TWideStringField
      FieldName = 'T_RG'
    end
    object cdsCTET_CNPJCPF: TWideStringField
      FieldName = 'T_CNPJCPF'
    end
    object cdsCTET_IESTADUAL: TWideStringField
      FieldName = 'T_IESTADUAL'
    end
    object cdsCTET_RSOCIAL: TWideStringField
      FieldName = 'T_RSOCIAL'
      Size = 60
    end
    object cdsCTET_FANTASIA: TWideStringField
      FieldName = 'T_FANTASIA'
      Size = 60
    end
    object cdsCTET_TELEFONE: TWideStringField
      FieldName = 'T_TELEFONE'
      Size = 15
    end
    object cdsCTET_ENDERECO: TWideStringField
      FieldName = 'T_ENDERECO'
      Size = 60
    end
    object cdsCTET_NUMERO: TWideStringField
      FieldName = 'T_NUMERO'
      Size = 10
    end
    object cdsCTET_COMPLEMENTO: TWideStringField
      FieldName = 'T_COMPLEMENTO'
      Size = 60
    end
    object cdsCTET_BAIRRO: TWideStringField
      FieldName = 'T_BAIRRO'
      Size = 60
    end
    object cdsCTET_CODIGOMUNICIPI: TWideStringField
      FieldName = 'T_CODIGOMUNICIPI'
      Size = 10
    end
    object cdsCTET_CIDADE: TWideStringField
      FieldName = 'T_CIDADE'
      Size = 60
    end
    object cdsCTET_CEP: TWideStringField
      FieldName = 'T_CEP'
      Size = 10
    end
    object cdsCTET_ESTADO: TWideStringField
      FieldName = 'T_ESTADO'
      Size = 2
    end
    object cdsCTET_CODIGOPAIS: TIntegerField
      FieldName = 'T_CODIGOPAIS'
    end
    object cdsCTET_PAIS: TWideStringField
      FieldName = 'T_PAIS'
      Size = 60
    end
    object cdsCTEREMETENTE: TIntegerField
      FieldName = 'REMETENTE'
    end
    object cdsCTER_RG: TWideStringField
      FieldName = 'R_RG'
    end
    object cdsCTER_CNPJCPF: TWideStringField
      FieldName = 'R_CNPJCPF'
    end
    object cdsCTER_IESTADUAL: TWideStringField
      FieldName = 'R_IESTADUAL'
    end
    object cdsCTER_RSOCIAL: TWideStringField
      FieldName = 'R_RSOCIAL'
      Size = 60
    end
    object cdsCTER_FANTASIA: TWideStringField
      FieldName = 'R_FANTASIA'
      Size = 60
    end
    object cdsCTER_TELEFONE: TWideStringField
      FieldName = 'R_TELEFONE'
      Size = 15
    end
    object cdsCTER_ENDERECO: TWideStringField
      FieldName = 'R_ENDERECO'
      Size = 60
    end
    object cdsCTER_NUMERO: TWideStringField
      FieldName = 'R_NUMERO'
      Size = 10
    end
    object cdsCTER_COMPLEMENTO: TWideStringField
      FieldName = 'R_COMPLEMENTO'
      Size = 60
    end
    object cdsCTER_BAIRRO: TWideStringField
      FieldName = 'R_BAIRRO'
      Size = 60
    end
    object cdsCTER_CODIGOMUNICIPI: TWideStringField
      FieldName = 'R_CODIGOMUNICIPI'
      Size = 10
    end
    object cdsCTER_CIDADE: TWideStringField
      FieldName = 'R_CIDADE'
      Size = 60
    end
    object cdsCTER_CEP: TWideStringField
      FieldName = 'R_CEP'
      Size = 10
    end
    object cdsCTER_ESTADO: TWideStringField
      FieldName = 'R_ESTADO'
      Size = 2
    end
    object cdsCTER_CODIGOPAIS: TIntegerField
      FieldName = 'R_CODIGOPAIS'
    end
    object cdsCTER_PAIS: TWideStringField
      FieldName = 'R_PAIS'
      Size = 60
    end
    object cdsCTEDESTINATARIO: TIntegerField
      FieldName = 'DESTINATARIO'
    end
    object cdsCTED_RG: TWideStringField
      FieldName = 'D_RG'
    end
    object cdsCTED_CNPJCPF: TWideStringField
      FieldName = 'D_CNPJCPF'
    end
    object cdsCTED_IESTADUAL: TWideStringField
      FieldName = 'D_IESTADUAL'
    end
    object cdsCTED_RSOCIAL: TWideStringField
      FieldName = 'D_RSOCIAL'
      Size = 60
    end
    object cdsCTED_FANTASIA: TWideStringField
      FieldName = 'D_FANTASIA'
      Size = 60
    end
    object cdsCTED_TELEFONE: TWideStringField
      FieldName = 'D_TELEFONE'
      Size = 15
    end
    object cdsCTED_ENDERECO: TWideStringField
      FieldName = 'D_ENDERECO'
      Size = 60
    end
    object cdsCTED_NUMERO: TWideStringField
      FieldName = 'D_NUMERO'
      Size = 10
    end
    object cdsCTED_COMPLEMENTO: TWideStringField
      FieldName = 'D_COMPLEMENTO'
      Size = 60
    end
    object cdsCTED_BAIRRO: TWideStringField
      FieldName = 'D_BAIRRO'
      Size = 60
    end
    object cdsCTED_CODIGOMUNICIPI: TWideStringField
      FieldName = 'D_CODIGOMUNICIPI'
      Size = 10
    end
    object cdsCTED_CIDADE: TWideStringField
      FieldName = 'D_CIDADE'
      Size = 60
    end
    object cdsCTED_CEP: TWideStringField
      FieldName = 'D_CEP'
      Size = 10
    end
    object cdsCTED_ESTADO: TWideStringField
      FieldName = 'D_ESTADO'
      Size = 2
    end
    object cdsCTED_CODIGOPAIS: TIntegerField
      FieldName = 'D_CODIGOPAIS'
    end
    object cdsCTED_PAIS: TWideStringField
      FieldName = 'D_PAIS'
      Size = 60
    end
    object cdsCTEEXPEDITOR: TIntegerField
      FieldName = 'EXPEDITOR'
    end
    object cdsCTEEX_RG: TWideStringField
      FieldName = 'EX_RG'
    end
    object cdsCTEEX_CNPJCPF: TWideStringField
      FieldName = 'EX_CNPJCPF'
    end
    object cdsCTEEX_IESTADUAL: TWideStringField
      FieldName = 'EX_IESTADUAL'
    end
    object cdsCTEEX_RSOCIAL: TWideStringField
      FieldName = 'EX_RSOCIAL'
      Size = 60
    end
    object cdsCTEEX_FANTASIA: TWideStringField
      FieldName = 'EX_FANTASIA'
      Size = 60
    end
    object cdsCTEEX_TELEFONE: TWideStringField
      FieldName = 'EX_TELEFONE'
      Size = 15
    end
    object cdsCTEEX_ENDERECO: TWideStringField
      FieldName = 'EX_ENDERECO'
      Size = 60
    end
    object cdsCTEEX_NUMERO: TWideStringField
      FieldName = 'EX_NUMERO'
      Size = 10
    end
    object cdsCTEEX_COMPLEMENTO: TWideStringField
      FieldName = 'EX_COMPLEMENTO'
      Size = 60
    end
    object cdsCTEEX_BAIRRO: TWideStringField
      FieldName = 'EX_BAIRRO'
      Size = 60
    end
    object cdsCTEEX_CODIGOMUNICIPI: TWideStringField
      FieldName = 'EX_CODIGOMUNICIPI'
      Size = 10
    end
    object cdsCTEEX_CIDADE: TWideStringField
      FieldName = 'EX_CIDADE'
      Size = 60
    end
    object cdsCTEEX_CEP: TWideStringField
      FieldName = 'EX_CEP'
      Size = 10
    end
    object cdsCTEEX_ESTADO: TWideStringField
      FieldName = 'EX_ESTADO'
      Size = 2
    end
    object cdsCTEEX_CODIGOPAIS: TIntegerField
      FieldName = 'EX_CODIGOPAIS'
    end
    object cdsCTEEX_PAIS: TWideStringField
      FieldName = 'EX_PAIS'
      Size = 60
    end
    object cdsCTECARAC_TRANSP: TWideStringField
      FieldName = 'CARAC_TRANSP'
      Size = 15
    end
    object cdsCTECARAC_SERV: TWideStringField
      FieldName = 'CARAC_SERV'
      Size = 30
    end
    object cdsCTEFUNC_EMI: TWideStringField
      FieldName = 'FUNC_EMI'
    end
    object cdsCTEDET_RETIRA: TWideStringField
      FieldName = 'DET_RETIRA'
      Size = 160
    end
    object cdsCTEVPREST: TFloatField
      FieldName = 'VPREST'
    end
    object cdsCTEVREC: TFloatField
      FieldName = 'VREC'
    end
    object cdsCTECOMPONENTE: TWideStringField
      FieldName = 'COMPONENTE'
      Size = 15
    end
    object cdsCTEVCOMPONENTE: TFloatField
      FieldName = 'VCOMPONENTE'
    end
    object cdsCTEVALTOTTRI: TFloatField
      FieldName = 'VALTOTTRI'
    end
    object cdsCTECOMBCODSITTRIB: TIntegerField
      FieldName = 'COMBCODSITTRIB'
    end
    object cdsCTEVALINFCARGA: TFloatField
      FieldName = 'VALINFCARGA'
    end
    object cdsCTEPROPRED: TWideStringField
      FieldName = 'PROPRED'
      Size = 60
    end
    object cdsCTEOUTCAT: TWideStringField
      FieldName = 'OUTCAT'
      Size = 30
    end
    object cdsCTERNTRC: TWideStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object cdsCTEDATARODPREV: TDateField
      FieldName = 'DATARODPREV'
    end
    object cdsCTERGRODLOTACAO: TIntegerField
      FieldName = 'RGRODLOTACAO'
    end
    object cdsCTEOBS_GERAL: TWideStringField
      FieldName = 'OBS_GERAL'
      Size = 300
    end
    object cdsCTESTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 60
    end
    object cdsCTENPROT: TWideStringField
      FieldName = 'NPROT'
    end
    object cdsCTECHCTE: TWideStringField
      FieldName = 'CHCTE'
      Size = 50
    end
    object cdsCTERECEBEDOR: TIntegerField
      FieldName = 'RECEBEDOR'
    end
    object cdsCTERE_RG: TWideStringField
      FieldName = 'RE_RG'
    end
    object cdsCTERE_CNPJCPF: TWideStringField
      FieldName = 'RE_CNPJCPF'
    end
    object cdsCTERE_IESTADUAL: TWideStringField
      FieldName = 'RE_IESTADUAL'
    end
    object cdsCTERE_RSOCIAL: TWideStringField
      FieldName = 'RE_RSOCIAL'
      Size = 60
    end
    object cdsCTERE_FANTASIA: TWideStringField
      FieldName = 'RE_FANTASIA'
      Size = 60
    end
    object cdsCTERE_TELEFONE: TWideStringField
      FieldName = 'RE_TELEFONE'
      Size = 15
    end
    object cdsCTERE_ENDERECO: TWideStringField
      FieldName = 'RE_ENDERECO'
      Size = 60
    end
    object cdsCTERE_NUMERO: TWideStringField
      FieldName = 'RE_NUMERO'
      Size = 10
    end
    object cdsCTERE_COMPLEMENTO: TWideStringField
      FieldName = 'RE_COMPLEMENTO'
      Size = 60
    end
    object cdsCTERE_BAIRRO: TWideStringField
      FieldName = 'RE_BAIRRO'
      Size = 60
    end
    object cdsCTERE_CODIGOMUNICIPI: TWideStringField
      FieldName = 'RE_CODIGOMUNICIPI'
      Size = 10
    end
    object cdsCTERE_CIDADE: TWideStringField
      FieldName = 'RE_CIDADE'
      Size = 60
    end
    object cdsCTERE_CEP: TWideStringField
      FieldName = 'RE_CEP'
      Size = 10
    end
    object cdsCTERE_ESTADO: TWideStringField
      FieldName = 'RE_ESTADO'
      Size = 2
    end
    object cdsCTERE_CODIGOPAIS: TIntegerField
      FieldName = 'RE_CODIGOPAIS'
    end
    object cdsCTERE_PAIS: TWideStringField
      FieldName = 'RE_PAIS'
      Size = 60
    end
  end
  object dspCTE: TDataSetProvider
    DataSet = qCTE
    Left = 616
    Top = 424
  end
  object dsNF: TDataSource
    DataSet = qNF
    Left = 752
    Top = 504
  end
  object dspNF: TDataSetProvider
    DataSet = qNF
    Left = 624
    Top = 496
  end
  object qQC: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE_QC where COD_CTE =:pCTE'
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    Left = 295
    Top = 542
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    object qQCCOD_CTE_QC: TIntegerField
      FieldName = 'COD_CTE_QC'
      Required = True
    end
    object qQCCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object qQCUNID: TWideStringField
      FieldName = 'UNID'
      Size = 2
    end
    object qQCMEDIDA: TWideStringField
      FieldName = 'MEDIDA'
    end
    object qQCQUANT: TFloatField
      FieldName = 'QUANT'
    end
  end
  object qNF: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from CTE_NF where COD_CTE =:pCTE'
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    Left = 559
    Top = 502
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    object qNFCOD_CTE_NF: TIntegerField
      FieldName = 'COD_CTE_NF'
      Required = True
    end
    object qNFCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object qNFNFSERIE: TWideStringField
      FieldName = 'NFSERIE'
      Size = 3
    end
    object qNFNFNUM: TWideStringField
      FieldName = 'NFNUM'
    end
    object qNFNFEMI: TDateField
      FieldName = 'NFEMI'
    end
    object qNFNFCFOP: TWideStringField
      FieldName = 'NFCFOP'
      Size = 4
    end
    object qNFNFMODELO: TWideStringField
      FieldName = 'NFMODELO'
      Size = 2
    end
    object qNFNFROMA: TWideStringField
      FieldName = 'NFROMA'
    end
    object qNFNFNUMP: TWideStringField
      FieldName = 'NFNUMP'
    end
    object qNFNFPREV: TDateField
      FieldName = 'NFPREV'
    end
    object qNFNFBASE: TFloatField
      FieldName = 'NFBASE'
    end
    object qNFNFICMS: TFloatField
      FieldName = 'NFICMS'
    end
    object qNFNFBASEST: TFloatField
      FieldName = 'NFBASEST'
    end
    object qNFNFICMSST: TFloatField
      FieldName = 'NFICMSST'
    end
    object qNFLNFPESO: TFloatField
      FieldName = 'LNFPESO'
    end
    object qNFNFPIN: TIntegerField
      FieldName = 'NFPIN'
    end
    object qNFNFVALPROD: TFloatField
      FieldName = 'NFVALPROD'
    end
    object qNFNFVALOR: TFloatField
      FieldName = 'NFVALOR'
    end
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspNF'
    Left = 680
    Top = 504
    object cdsNFCOD_CTE_NF: TIntegerField
      FieldName = 'COD_CTE_NF'
      Required = True
    end
    object cdsNFCOD_CTE: TIntegerField
      FieldName = 'COD_CTE'
    end
    object cdsNFNFSERIE: TWideStringField
      FieldName = 'NFSERIE'
      Size = 3
    end
    object cdsNFNFNUM: TWideStringField
      FieldName = 'NFNUM'
    end
    object cdsNFNFEMI: TDateField
      FieldName = 'NFEMI'
    end
    object cdsNFNFCFOP: TWideStringField
      FieldName = 'NFCFOP'
      Size = 4
    end
    object cdsNFNFMODELO: TWideStringField
      FieldName = 'NFMODELO'
      Size = 2
    end
    object cdsNFNFROMA: TWideStringField
      FieldName = 'NFROMA'
    end
    object cdsNFNFNUMP: TWideStringField
      FieldName = 'NFNUMP'
    end
    object cdsNFNFPREV: TDateField
      FieldName = 'NFPREV'
    end
    object cdsNFNFBASE: TFloatField
      FieldName = 'NFBASE'
    end
    object cdsNFNFICMS: TFloatField
      FieldName = 'NFICMS'
    end
    object cdsNFNFBASEST: TFloatField
      FieldName = 'NFBASEST'
    end
    object cdsNFNFICMSST: TFloatField
      FieldName = 'NFICMSST'
    end
    object cdsNFLNFPESO: TFloatField
      FieldName = 'LNFPESO'
    end
    object cdsNFNFPIN: TIntegerField
      FieldName = 'NFPIN'
    end
    object cdsNFNFVALPROD: TFloatField
      FieldName = 'NFVALPROD'
    end
    object cdsNFNFVALOR: TFloatField
      FieldName = 'NFVALOR'
    end
  end
  object qEmp: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from Empresa')
    Params = <>
    Left = 630
    Top = 82
    object qEmpEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object qEmpRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object qEmpCNPJ_CPF: TWideStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object qEmpENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qEmpLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object qEmpBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qEmpCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qEmpUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qEmpCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qEmpDDD: TWideStringField
      FieldName = 'DDD'
      Size = 2
    end
    object qEmpFONE: TWideStringField
      FieldName = 'FONE'
      Size = 12
    end
    object qEmpFONE_1: TWideStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object qEmpFONE_2: TWideStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object qEmpFAX: TWideStringField
      FieldName = 'FAX'
      Size = 12
    end
    object qEmpE_MAIL: TWideStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object qEmpWEB: TWideStringField
      FieldName = 'WEB'
      Size = 50
    end
    object qEmpLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
    end
    object qEmpCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qEmpTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qEmpIE_RG: TWideStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object qEmpSLOGAN: TWideStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object qEmpOUTRAS_INFO: TWideStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object qEmpCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object qEmpDIVERSOS1: TWideStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object qEmpDIVERSOS2: TWideStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object qEmpDIVERSOS3: TWideStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object qEmpANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object qEmpMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object qEmpPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qEmpSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 60
    end
    object qEmpSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object qEmpCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object qEmpNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object qEmpCD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object qEmpCRT: TIntegerField
      FieldName = 'CRT'
    end
    object qEmpIM: TWideStringField
      FieldName = 'IM'
      Size = 15
    end
    object qEmpTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object qEmpCONTADOR: TWideStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object qEmpCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
    end
    object qEmpCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 14
    end
    object qEmpCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
      Size = 11
    end
    object qEmpCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qEmpCONTADOR_END: TWideStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object qEmpCONTADOR_NUMEND: TWideStringField
      FieldName = 'CONTADOR_NUMEND'
      Size = 7
    end
    object qEmpCONTADOR_COMPL: TWideStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object qEmpCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object qEmpCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 14
    end
    object qEmpCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 14
    end
    object qEmpCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object qEmpCONTADOR_COD_MUN: TWideStringField
      FieldName = 'CONTADOR_COD_MUN'
      Size = 10
    end
    object qEmpCNPJPREFEITURA: TWideStringField
      FieldName = 'CNPJPREFEITURA'
      Size = 14
    end
    object qEmpNOMEPREFEITURA: TWideStringField
      FieldName = 'NOMEPREFEITURA'
      Size = 50
    end
    object qEmpCHAVELIC: TWideStringField
      FieldName = 'CHAVELIC'
      Size = 50
    end
    object qEmpCHAVECONT: TWideStringField
      FieldName = 'CHAVECONT'
      Size = 50
    end
    object qEmpMODELOCUPOM: TWideStringField
      FieldName = 'MODELOCUPOM'
      Size = 2
    end
    object qEmpECFMOD: TWideStringField
      FieldName = 'ECFMOD'
    end
    object qEmpECFFAB: TWideStringField
      FieldName = 'ECFFAB'
    end
    object qEmpECFCX: TWideStringField
      FieldName = 'ECFCX'
      Size = 3
    end
    object qEmpCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object qEmpINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object qEmpCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object qEmpINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object qEmpINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object qEmpINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object qEmpCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object qEmpINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object qEmpINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object qEmpINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object qEmpINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object qEmpBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object qEmpCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object qEmpINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object qEmpCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object qEmpNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object qEmpINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object qEmpINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object qEmpCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object qEmpINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object qEmpINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object qEmpINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object qEmpINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
    object qEmpINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
  end
  object qContarEmp: TZQuery
    Connection = con
    SQL.Strings = (
      'select Codigo,razao  from Empresa')
    Params = <>
    Left = 136
    Top = 352
    object qContarEmpCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qContarEmpRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
  end
end
