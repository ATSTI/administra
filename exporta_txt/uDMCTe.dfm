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
  object cdsProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProd'
    Left = 448
    Top = 120
  end
  object dspProd: TDataSetProvider
    DataSet = qProd
    Left = 368
    Top = 120
  end
  object qProd: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from produtos where ((usa = null) or (usa = '#39'S'#39'));')
    Params = <>
    Left = 304
    Top = 120
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
  object cdsGen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGen'
    Left = 387
    Top = 246
    object cdsGenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
  end
  object dspGen: TDataSetProvider
    Options = [poAllowCommandText]
    Left = 339
    Top = 246
  end
  object dsMot: TDataSource
    Left = 519
    Top = 126
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
    Left = 110
    Top = 128
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
    DataSet = qEmp
    Left = 110
    Top = 72
  end
  object dsNFe: TDataSource
    Left = 415
    Top = 366
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
    Left = 367
    Top = 367
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
    Left = 319
    Top = 367
  end
  object qEmp: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from Empresa')
    Params = <>
    Left = 110
    Top = 26
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
end
