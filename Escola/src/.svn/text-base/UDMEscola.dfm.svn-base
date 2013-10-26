object DMEscola: TDMEscola
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 283
  Top = 255
  Height = 486
  Width = 745
  object sEscola: TSQLDataSet
    CommandText = 'select * from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 24
    object sEscolaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sEscolaRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sEscolaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sEscolaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sEscolaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sEscolaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sEscolaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sEscolaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sEscolaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sEscolaDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sEscolaFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sEscolaFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sEscolaFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sEscolaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sEscolaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sEscolaWEB: TStringField
      FieldName = 'WEB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sEscolaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sEscolaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sEscolaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sEscolaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sEscolaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sEscolaIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sEscolaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sEscolaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sEscolaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sEscolaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sEscolaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
    end
    object sEscolaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
      ProviderFlags = [pfInUpdate]
    end
    object sEscolaPORTA: TIntegerField
      FieldName = 'PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object sEscolaSMTP: TStringField
      FieldName = 'SMTP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sEscolaSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dEscola: TDataSetProvider
    DataSet = sEscola
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 24
  end
  object cdsEscola: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dEscola'
    Left = 128
    Top = 24
    object cdsEscolaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cdsEscolaRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cdsEscolaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEscolaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsEscolaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsEscolaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEscolaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEscolaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEscolaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cdsEscolaDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEscolaFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsEscolaFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsEscolaFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsEscolaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsEscolaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEscolaWEB: TStringField
      FieldName = 'WEB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEscolaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cdsEscolaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsEscolaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsEscolaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEscolaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsEscolaIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsEscolaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEscolaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEscolaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEscolaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEscolaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEscolaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEscolaPORTA: TIntegerField
      FieldName = 'PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEscolaSMTP: TStringField
      FieldName = 'SMTP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEscolaSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object sAlunos: TSQLDataSet
    CommandText = 
      'select CODCLIENTE'#13#10'        , NOMECLIENTE'#13#10'        , RAZAOSOCIAL'#13 +
      #10'        , CONTATO'#13#10'        , TIPOFIRMA'#13#10'        , CPF, CNPJ'#13#10'  ' +
      '      , INSCESTADUAL'#13#10'        , RG, SEGMENTO'#13#10'        , DATACADA' +
      'STRO'#13#10'        , REGIAO'#13#10'        , CODUSUARIO, STATUS, CODBANCO, ' +
      'DATANASC, CONTA_CLIENTE, OBS, DATARESC, NOMEMAE, SEXO, SERIELETR' +
      'A, SERIE, RA'#13#10'        , CURSO, COD_FAIXA, DESCONTO, MENSALIDADE,' +
      ' ANUIDADE, PARCELA, PARCELAGERADAS, NUMERO, DATANASCIMENTO, ANOL' +
      'ETIVO'#13#10'        , SITUACAOESCOLAR, RGMAE, CPFMAE, PAI, RGPAI, CPF' +
      'PAI, LANCADOCLASSE, TRANSPORTE, CIDADENASC, UFNASC'#13#10'        , NA' +
      'CIONALIDADE, CERTIDAONASCNUM, LIVRONASC, FLLIVRONASC'#13#10'        , ' +
      'LOCALTRABPAI, LOCALTRABMAE, TELTRABPAI, TELTRABMAE, INFONECESSAR' +
      'IAS, CARTEIRAVACINACAO'#13#10'        , RAPRODESP, LOCALTRABALUNO, TEL' +
      'TRABALUNO, RAPROD, CERT_NAS_COMARCA, CERT_NAS_UF, CERT_NAS_MUNIC' +
      'IPIO, CERT_NAS_DISTRITO'#13#10'        , CERT_NAS_SUBDISTRITO, DIVERSO' +
      '1, DIVERSO2, DATAEMISSAORG, ESTADORG, COMUNICAALUNO, FONEMAE, CE' +
      'LULARMAE, COMUNICAMAE, FONEPAI'#13#10'        , CELULARPAI, COMUNICAPA' +
      'I, VALOR_MATRICULA, DATATRANSF, COR_RACA, PERIODO, FOTO, DATA_MA' +
      'TRICULA, CODRESPONSAVEL  '#13#10'from CLIENTES where ((RA = :codra) or' +
      ' (:codra = '#39'todos'#39')) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codra'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codra'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 80
    object sAlunosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sAlunosNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sAlunosRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sAlunosCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sAlunosTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sAlunosCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sAlunosCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sAlunosINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sAlunosRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sAlunosSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sAlunosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sAlunosCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sAlunosSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sAlunosCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sAlunosDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sAlunosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sAlunosSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sAlunosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sAlunosRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sAlunosCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sAlunosSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sAlunosRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sAlunosPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sAlunosRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sAlunosLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sAlunosUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sAlunosNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sAlunosLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sAlunosFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sAlunosLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sAlunosLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sAlunosTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sAlunosCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sAlunosRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sAlunosLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sAlunosTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sAlunosCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sAlunosCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sAlunosVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sAlunosPERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sAlunosFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sAlunosDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sAlunosREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dAlunos: TDataSetProvider
    DataSet = sAlunos
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 80
  end
  object cdsAlunos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codra'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codra'
        ParamType = ptInput
      end>
    ProviderName = 'dAlunos'
    BeforePost = cdsAlunosBeforePost
    OnNewRecord = cdsAlunosNewRecord
    Left = 128
    Top = 80
    object cdsAlunosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsAlunosNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsAlunosRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsAlunosTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAlunosCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsAlunosCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsAlunosINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cdsAlunosRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsAlunosSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAlunosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAlunosCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAlunosSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAlunosCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAlunosDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsAlunosDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsAlunosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsAlunosSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsAlunosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 4
    end
    object cdsAlunosRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsAlunosCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 4
    end
    object cdsAlunosSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsAlunosRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsAlunosPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsAlunosRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsAlunosLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsAlunosUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsAlunosNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsAlunosLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsAlunosFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsAlunosLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsAlunosLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsAlunosTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsAlunosCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsAlunosRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsAlunosLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsAlunosTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsAlunosCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsAlunosCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAlunosVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cdsAlunosPERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAlunosFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cdsAlunosDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAlunosREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sEndAluno: TSQLDataSet
    CommandText = 'select * from ENDERECOCLIENTE '#13#10'where CODCLIENTE = :idcli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idcli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 136
    object sEndAlunoCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sEndAlunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sEndAlunoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sEndAlunoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sEndAlunoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sEndAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sEndAlunoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sEndAlunoCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sEndAlunoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sEndAlunoTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sEndAlunoTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sEndAlunoFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sEndAlunoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sEndAlunoRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sEndAlunoTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sEndAlunoDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sEndAlunoDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sEndAlunoDDD1: TStringField
      FieldName = 'DDD1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sEndAlunoDDD2: TStringField
      FieldName = 'DDD2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sEndAlunoDDD3: TStringField
      FieldName = 'DDD3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dEndAluno: TDataSetProvider
    DataSet = sEndAluno
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 136
  end
  object cdsEndAluno: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcli'
        ParamType = ptInput
      end>
    ProviderName = 'dEndAluno'
    BeforePost = cdsEndAlunoBeforePost
    Left = 152
    Top = 136
    object cdsEndAlunoCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cdsEndAlunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsEndAlunoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsEndAlunoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEndAlunoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsEndAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEndAlunoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEndAlunoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEndAlunoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsEndAlunoTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cdsEndAlunoTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cdsEndAlunoFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cdsEndAlunoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object cdsEndAlunoRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cdsEndAlunoTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cdsEndAlunoDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cdsEndAlunoDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cdsEndAlunoDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cdsEndAlunoDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsEndAlunoDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
  end
  object cds_ccusto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    ProviderName = 'd_2'
    Left = 315
    Top = 28
    object cds_ccustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ccustoCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_ccustoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 268
    Top = 29
  end
  object s_2: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME from PLANO where plnCtaRoot(CONTA) = ' +
      ':PCONTADESPESA AND CONSOLIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 237
    Top = 29
    object s_2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_2CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object cdsFicha: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
      end>
    ProviderName = 'dspFicha'
    Left = 177
    Top = 297
    object cdsFichaID_FICHA: TIntegerField
      FieldName = 'ID_FICHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFichaRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsFichaD_MENTAL: TStringField
      FieldName = 'D_MENTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaD_VISUAL: TStringField
      FieldName = 'D_VISUAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaD_AUDITIVA: TStringField
      FieldName = 'D_AUDITIVA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaD_FISICA: TStringField
      FieldName = 'D_FISICA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaD_MULTIPLA: TStringField
      FieldName = 'D_MULTIPLA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaSUPER_DOTADO: TStringField
      FieldName = 'SUPER_DOTADO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaCONDUTA_TIPICA: TStringField
      FieldName = 'CONDUTA_TIPICA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaOUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaOUTROS_H: TMemoField
      FieldName = 'OUTROS_H'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsFichaTEM_ACOMPANHANTE: TStringField
      FieldName = 'TEM_ACOMPANHANTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFichaTIPO_ACOMPANHANTE: TStringField
      FieldName = 'TIPO_ACOMPANHANTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsFichaCQUEMMORA: TStringField
      FieldName = 'CQUEMMORA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsFichaNOME_OUTROS: TStringField
      FieldName = 'NOME_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsFichaEMPRESA_OUTROS: TStringField
      FieldName = 'EMPRESA_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsFichaFONE_OUTROS: TStringField
      FieldName = 'FONE_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsFichaFONE1_OUTROS: TStringField
      FieldName = 'FONE1_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsFichaFONE2_OUTROS: TStringField
      FieldName = 'FONE2_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsFichaRAMAL_OUTROS: TStringField
      FieldName = 'RAMAL_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsFichaHORAS_ESTUDA: TIntegerField
      FieldName = 'HORAS_ESTUDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaPROFESSORES_PARTICULAR: TIntegerField
      FieldName = 'PROFESSORES_PARTICULAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaCANHOTO_DESTRO: TIntegerField
      FieldName = 'CANHOTO_DESTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaALERGICO: TStringField
      FieldName = 'ALERGICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFichaTIPO_ALERGIA: TStringField
      FieldName = 'TIPO_ALERGIA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsFichaMEDICO_ALUNO: TIntegerField
      FieldName = 'MEDICO_ALUNO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaTRATAMENTO_MEDICO: TIntegerField
      FieldName = 'TRATAMENTO_MEDICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaTIPO_TRATAMENTO: TStringField
      FieldName = 'TIPO_TRATAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsFichaINGERINDO_MEDICACAO: TIntegerField
      FieldName = 'INGERINDO_MEDICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaTIPO_MEDICACAO: TStringField
      FieldName = 'TIPO_MEDICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsFichaNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsFichaFONE_MEDICO: TStringField
      FieldName = 'FONE_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsFichaENDERECO_MEDICO: TStringField
      FieldName = 'ENDERECO_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsFichaPLANO_SAUDE: TIntegerField
      FieldName = 'PLANO_SAUDE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaQUAL_PLANO: TStringField
      FieldName = 'QUAL_PLANO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFichaSER_MEDICADO_POR: TStringField
      FieldName = 'SER_MEDICADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFichaDOENCA_CONGENITA: TIntegerField
      FieldName = 'DOENCA_CONGENITA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaQUAL_DOENCA: TStringField
      FieldName = 'QUAL_DOENCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFichaCONTRAIU_CAXUMBA: TStringField
      FieldName = 'CONTRAIU_CAXUMBA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaCONTRAIU_SARAMPO: TStringField
      FieldName = 'CONTRAIU_SARAMPO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaCONTRAIU_RUBEOLA: TStringField
      FieldName = 'CONTRAIU_RUBEOLA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaCONTRAIU_CATAPORA: TStringField
      FieldName = 'CONTRAIU_CATAPORA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaCONTRAIU_ESCARLATINA: TStringField
      FieldName = 'CONTRAIU_ESCARLATINA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaCONTRAIU_COQUELUCHE: TStringField
      FieldName = 'CONTRAIU_COQUELUCHE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaCONTRAIU_OUTRAS: TStringField
      FieldName = 'CONTRAIU_OUTRAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaQUAIS_OUTRA: TStringField
      FieldName = 'QUAIS_OUTRA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsFichaNOME_AVISO: TStringField
      FieldName = 'NOME_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsFichaENDERECO_AVISO: TStringField
      FieldName = 'ENDERECO_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsFichaPARENTESCO_AVISO: TStringField
      FieldName = 'PARENTESCO_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsFichaFONE_AVISO: TStringField
      FieldName = 'FONE_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsFichaHOSPITAL_AVISO: TStringField
      FieldName = 'HOSPITAL_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsFichaTEM_HIPERTENCAO: TIntegerField
      FieldName = 'TEM_HIPERTENCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaHIPERTENCAO: TStringField
      FieldName = 'HIPERTENCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaE_EPILETICO: TIntegerField
      FieldName = 'E_EPILETICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaEPILETICO: TStringField
      FieldName = 'EPILETICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaE_HEMOFILICO: TIntegerField
      FieldName = 'E_HEMOFILICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaHEMOFILICO: TStringField
      FieldName = 'HEMOFILICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaE_DEFICIENTE_AUDITIVO: TIntegerField
      FieldName = 'E_DEFICIENTE_AUDITIVO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaDEFICIENTE_AUDITIVO: TStringField
      FieldName = 'DEFICIENTE_AUDITIVO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaE_DEFICIENTE_VISUAL: TIntegerField
      FieldName = 'E_DEFICIENTE_VISUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaDEFICIENTE_VISUAL: TStringField
      FieldName = 'DEFICIENTE_VISUAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaE_DEFICIENTE_FISICO: TIntegerField
      FieldName = 'E_DEFICIENTE_FISICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaDEFICIENTE_FISICO: TStringField
      FieldName = 'DEFICIENTE_FISICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaE_DIABETICO: TIntegerField
      FieldName = 'E_DIABETICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaDIABETICO: TStringField
      FieldName = 'DIABETICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaUSA_INSULINA: TIntegerField
      FieldName = 'USA_INSULINA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaAUTORIZADO_DX_ESCOLA_SOZ: TIntegerField
      FieldName = 'AUTORIZADO_DX_ESCOLA_SOZ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsFichaMOTIVO_MEDICAMENTO: TStringField
      FieldName = 'MOTIVO_MEDICAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsFichaAPTO: TStringField
      FieldName = 'APTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFichaESPERAR_FORA_ESCOLA: TIntegerField
      FieldName = 'ESPERAR_FORA_ESCOLA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaFONE_HOSPITAL: TStringField
      FieldName = 'FONE_HOSPITAL'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsFichaNOME_RETIRA: TStringField
      FieldName = 'NOME_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsFichaENDERECO_RETIRA: TStringField
      FieldName = 'ENDERECO_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsFichaPARENTESCO_RETIRA: TStringField
      FieldName = 'PARENTESCO_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsFichaFONE_RETIRA: TStringField
      FieldName = 'FONE_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsFichaPSICOLOGO: TStringField
      FieldName = 'PSICOLOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaFISIOTERAPIA: TStringField
      FieldName = 'FISIOTERAPIA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaMEDICO: TStringField
      FieldName = 'MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaFONOAUDIOLOGO: TStringField
      FieldName = 'FONOAUDIOLOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaPSICOPEDAGOGO: TStringField
      FieldName = 'PSICOPEDAGOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaOUTRO_1: TStringField
      FieldName = 'OUTRO_1'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaNAO: TStringField
      FieldName = 'NAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsFichaE_ASMATICO: TIntegerField
      FieldName = 'E_ASMATICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFichaASMATICO: TStringField
      FieldName = 'ASMATICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsFichaALOPATA: TStringField
      FieldName = 'ALOPATA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object cdsFichaHOMEOPATA: TStringField
      FieldName = 'HOMEOPATA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dspFicha: TDataSetProvider
    DataSet = sdsFicha
    UpdateMode = upWhereKeyOnly
    Left = 178
    Top = 240
  end
  object sdsFicha: TSQLDataSet
    CommandText = 'select * from FICHAMEDICA '#13#10'where RA = :ra'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 178
    Top = 193
    object sdsFichaID_FICHA: TIntegerField
      FieldName = 'ID_FICHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFichaRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsFichaD_MENTAL: TStringField
      FieldName = 'D_MENTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_VISUAL: TStringField
      FieldName = 'D_VISUAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_AUDITIVA: TStringField
      FieldName = 'D_AUDITIVA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_FISICA: TStringField
      FieldName = 'D_FISICA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_MULTIPLA: TStringField
      FieldName = 'D_MULTIPLA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaSUPER_DOTADO: TStringField
      FieldName = 'SUPER_DOTADO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONDUTA_TIPICA: TStringField
      FieldName = 'CONDUTA_TIPICA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaOUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaOUTROS_H: TMemoField
      FieldName = 'OUTROS_H'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sdsFichaTEM_ACOMPANHANTE: TStringField
      FieldName = 'TEM_ACOMPANHANTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFichaTIPO_ACOMPANHANTE: TStringField
      FieldName = 'TIPO_ACOMPANHANTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsFichaCQUEMMORA: TStringField
      FieldName = 'CQUEMMORA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsFichaNOME_OUTROS: TStringField
      FieldName = 'NOME_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsFichaEMPRESA_OUTROS: TStringField
      FieldName = 'EMPRESA_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsFichaFONE_OUTROS: TStringField
      FieldName = 'FONE_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaFONE1_OUTROS: TStringField
      FieldName = 'FONE1_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaFONE2_OUTROS: TStringField
      FieldName = 'FONE2_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaRAMAL_OUTROS: TStringField
      FieldName = 'RAMAL_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsFichaHORAS_ESTUDA: TIntegerField
      FieldName = 'HORAS_ESTUDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaPROFESSORES_PARTICULAR: TIntegerField
      FieldName = 'PROFESSORES_PARTICULAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaCANHOTO_DESTRO: TIntegerField
      FieldName = 'CANHOTO_DESTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaALERGICO: TStringField
      FieldName = 'ALERGICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFichaTIPO_ALERGIA: TStringField
      FieldName = 'TIPO_ALERGIA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sdsFichaMEDICO_ALUNO: TIntegerField
      FieldName = 'MEDICO_ALUNO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaTRATAMENTO_MEDICO: TIntegerField
      FieldName = 'TRATAMENTO_MEDICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaTIPO_TRATAMENTO: TStringField
      FieldName = 'TIPO_TRATAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sdsFichaINGERINDO_MEDICACAO: TIntegerField
      FieldName = 'INGERINDO_MEDICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaTIPO_MEDICACAO: TStringField
      FieldName = 'TIPO_MEDICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sdsFichaNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaFONE_MEDICO: TStringField
      FieldName = 'FONE_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaENDERECO_MEDICO: TStringField
      FieldName = 'ENDERECO_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaPLANO_SAUDE: TIntegerField
      FieldName = 'PLANO_SAUDE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaQUAL_PLANO: TStringField
      FieldName = 'QUAL_PLANO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFichaSER_MEDICADO_POR: TStringField
      FieldName = 'SER_MEDICADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFichaDOENCA_CONGENITA: TIntegerField
      FieldName = 'DOENCA_CONGENITA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaQUAL_DOENCA: TStringField
      FieldName = 'QUAL_DOENCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFichaCONTRAIU_CAXUMBA: TStringField
      FieldName = 'CONTRAIU_CAXUMBA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_SARAMPO: TStringField
      FieldName = 'CONTRAIU_SARAMPO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_RUBEOLA: TStringField
      FieldName = 'CONTRAIU_RUBEOLA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_CATAPORA: TStringField
      FieldName = 'CONTRAIU_CATAPORA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_ESCARLATINA: TStringField
      FieldName = 'CONTRAIU_ESCARLATINA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_COQUELUCHE: TStringField
      FieldName = 'CONTRAIU_COQUELUCHE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_OUTRAS: TStringField
      FieldName = 'CONTRAIU_OUTRAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaQUAIS_OUTRA: TStringField
      FieldName = 'QUAIS_OUTRA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsFichaNOME_AVISO: TStringField
      FieldName = 'NOME_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaENDERECO_AVISO: TStringField
      FieldName = 'ENDERECO_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaPARENTESCO_AVISO: TStringField
      FieldName = 'PARENTESCO_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsFichaFONE_AVISO: TStringField
      FieldName = 'FONE_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaHOSPITAL_AVISO: TStringField
      FieldName = 'HOSPITAL_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaTEM_HIPERTENCAO: TIntegerField
      FieldName = 'TEM_HIPERTENCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaHIPERTENCAO: TStringField
      FieldName = 'HIPERTENCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_EPILETICO: TIntegerField
      FieldName = 'E_EPILETICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaEPILETICO: TStringField
      FieldName = 'EPILETICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_HEMOFILICO: TIntegerField
      FieldName = 'E_HEMOFILICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaHEMOFILICO: TStringField
      FieldName = 'HEMOFILICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DEFICIENTE_AUDITIVO: TIntegerField
      FieldName = 'E_DEFICIENTE_AUDITIVO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDEFICIENTE_AUDITIVO: TStringField
      FieldName = 'DEFICIENTE_AUDITIVO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DEFICIENTE_VISUAL: TIntegerField
      FieldName = 'E_DEFICIENTE_VISUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDEFICIENTE_VISUAL: TStringField
      FieldName = 'DEFICIENTE_VISUAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DEFICIENTE_FISICO: TIntegerField
      FieldName = 'E_DEFICIENTE_FISICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDEFICIENTE_FISICO: TStringField
      FieldName = 'DEFICIENTE_FISICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DIABETICO: TIntegerField
      FieldName = 'E_DIABETICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDIABETICO: TStringField
      FieldName = 'DIABETICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaUSA_INSULINA: TIntegerField
      FieldName = 'USA_INSULINA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaAUTORIZADO_DX_ESCOLA_SOZ: TIntegerField
      FieldName = 'AUTORIZADO_DX_ESCOLA_SOZ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sdsFichaMOTIVO_MEDICAMENTO: TStringField
      FieldName = 'MOTIVO_MEDICAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsFichaAPTO: TStringField
      FieldName = 'APTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFichaESPERAR_FORA_ESCOLA: TIntegerField
      FieldName = 'ESPERAR_FORA_ESCOLA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaFONE_HOSPITAL: TStringField
      FieldName = 'FONE_HOSPITAL'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaNOME_RETIRA: TStringField
      FieldName = 'NOME_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaENDERECO_RETIRA: TStringField
      FieldName = 'ENDERECO_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaPARENTESCO_RETIRA: TStringField
      FieldName = 'PARENTESCO_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsFichaFONE_RETIRA: TStringField
      FieldName = 'FONE_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaPSICOLOGO: TStringField
      FieldName = 'PSICOLOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaFISIOTERAPIA: TStringField
      FieldName = 'FISIOTERAPIA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaMEDICO: TStringField
      FieldName = 'MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaFONOAUDIOLOGO: TStringField
      FieldName = 'FONOAUDIOLOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaPSICOPEDAGOGO: TStringField
      FieldName = 'PSICOPEDAGOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaOUTRO_1: TStringField
      FieldName = 'OUTRO_1'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaNAO: TStringField
      FieldName = 'NAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaE_ASMATICO: TIntegerField
      FieldName = 'E_ASMATICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaASMATICO: TStringField
      FieldName = 'ASMATICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaALOPATA: TStringField
      FieldName = 'ALOPATA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object sdsFichaHOMEOPATA: TStringField
      FieldName = 'HOMEOPATA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object sResp: TSQLDataSet
    CommandText = 
      'select rpa.RA, '#13#10'          case when rpa.TIPO_RESPONSAVEL = '#39'0'#39' ' +
      'then '#39'Pedad'#243'gico'#39' '#13#10'          when rpa.TIPO_RESPONSAVEL = '#39'1'#39' th' +
      'en '#39'Financeiro'#39' '#13#10'          when rpa.TIPO_RESPONSAVEL = '#39'2'#39' then' +
      ' '#39'Ambos'#39'  end as TIPO,'#13#10'          re.* '#13#10'from RESP_ALUNO rpa '#13#10'i' +
      'nner join RESPONSAVEL re on re.COD_RESPONSAVEL = rpa.COD_RESPONS' +
      'AVEL '#13#10'where rpa.RA = :ra'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 232
    Top = 88
    object sRespRA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object sRespCOD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object sRespRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Required = True
      Size = 200
    end
    object sRespENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object sRespBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sRespCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sRespCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sRespUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sRespCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 14
    end
    object sRespRG: TStringField
      FieldName = 'RG'
    end
    object sRespTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object sRespTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 14
    end
    object sRespEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sRespLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 100
    end
    object sRespCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
    end
    object sRespTELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      Size = 14
    end
    object sRespTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object sRespTIPORESPONSAVEL: TStringField
      FieldName = 'TIPORESPONSAVEL'
      ReadOnly = True
    end
  end
  object dResp: TDataSetProvider
    DataSet = sResp
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 88
  end
  object cdsResp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
      end>
    ProviderName = 'dResp'
    Left = 328
    Top = 88
    object cdsRespRA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object cdsRespCOD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object cdsRespRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Required = True
      Size = 200
    end
    object cdsRespENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsRespBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsRespCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cdsRespCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsRespUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsRespCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 14
    end
    object cdsRespRG: TStringField
      FieldName = 'RG'
    end
    object cdsRespTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsRespTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 14
    end
    object cdsRespEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsRespLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 100
    end
    object cdsRespCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
    end
    object cdsRespTELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      Size = 14
    end
    object cdsRespTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object cdsRespTIPORESPONSAVEL: TStringField
      FieldName = 'TIPORESPONSAVEL'
      ReadOnly = True
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'select rec.CODRECEBIMENTO'#13#10'        , rec.TITULO'#13#10'        , rec.E' +
      'MISSAO'#13#10'        , rec.DATAVENCIMENTO'#13#10'        , rec.CODCLIENTE'#13#10 +
      '        , rec.VALORTITULO'#13#10'        , rec.VALOR_RESTO'#13#10'        , ' +
      'rec.VALOR_PRIM_VIA, rec.DESCONTO'#13#10'        , rec.STATUS'#13#10'        ' +
      ', rec.STATUS as STATUSP'#13#10'        , rec.DATARECEBIMENTO'#13#10'        ' +
      ', rec.VALORRECEBIDO'#13#10'        , UDF_PADL(CAST(UDF_TRIM(rec.VIA) A' +
      'S VARCHAR(2)),'#39'0'#39',2) || '#39'/'#39' || CAST(UDF_PADL(rec.PARCELAS,'#39'0'#39',2)' +
      ' as varchar(2)) as VIA  '#13#10'        , rec.HISTORICO '#13#10'        , re' +
      'c.N_DOCUMENTO'#13#10'        , rec.DUP_REC_NF'#13#10'        , rec.DP'#13#10'     ' +
      '   , rec.CODVENDA'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.RAZA' +
      'OSOCIAL'#13#10'        , (rec.VALORTITULO - rec.VALOR_RESTO) as VALORR' +
      'EC '#13#10' from RECEBIMENTO rec '#13#10' inner join CLIENTES cli on cli.COD' +
      'CLIENTE=rec.CODCLIENTE '#13#10' where rec.CODCLIENTE = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 232
    Top = 136
    object sdsCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = []
      Size = 15
    end
    object sdsDP: TIntegerField
      FieldName = 'DP'
    end
    object sdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sdsRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object sdsVALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSTATUSP: TStringField
      DisplayWidth = 25
      FieldName = 'STATUSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 257
    end
    object sdsCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ReadOnly = True
    end
    object sdsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 271
    Top = 136
  end
  object cdsCr_proc: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 328
    Top = 136
    object cdsCr_procCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCr_procTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsCr_procEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsCr_procDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsCr_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCr_procVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCr_procVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCr_procVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCr_procSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object cdsCr_procDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsCr_procVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCr_procN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCr_procDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = []
      Size = 15
    end
    object cdsCr_procDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCr_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsCr_procRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsCr_procVALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCr_procSTATUSP: TStringField
      FieldName = 'STATUSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object cdsCr_procHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 150
    end
    object cdsCr_procVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 257
    end
    object cdsCr_procCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ReadOnly = True
    end
    object cdsCr_procDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsCr_proctot_titulo: TAggregateField
      Alignment = taRightJustify
      FieldName = 'tot_titulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_RESTO)'
    end
    object cdsCr_proctot_recebido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'tot_recebido'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALORRECEBIDO)'
    end
    object cdsCr_procTotPend: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotPend'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_RESTO - VALORRECEBIDO - DESCONTO)'
    end
  end
  object sdsResponsavel: TSQLDataSet
    CommandText = 'select * from RESPONSAVEL '#13#10'where COD_RESPONSAVEL = :cod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 192
    object sdsResponsavelCOD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsResponsavelRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object sdsResponsavelENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsResponsavelBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsResponsavelCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object sdsResponsavelCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsResponsavelUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsResponsavelCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object sdsResponsavelRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsResponsavelTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsResponsavelTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsResponsavelEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsResponsavelLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsResponsavelCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsResponsavelTELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsResponsavelTIPORESPONSAVEL: TStringField
      FieldName = 'TIPORESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspResponsavel: TDataSetProvider
    DataSet = sdsResponsavel
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 240
  end
  object cdsResponsavel: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    ProviderName = 'dspResponsavel'
    Left = 32
    Top = 296
    object cdsResponsavelCOD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsResponsavelRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object cdsResponsavelENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsResponsavelBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsResponsavelCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdsResponsavelCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsResponsavelUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsResponsavelCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cdsResponsavelRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsResponsavelTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsResponsavelTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsResponsavelEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsResponsavelLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsResponsavelCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsResponsavelTELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsResponsavelTIPORESPONSAVEL: TStringField
      FieldName = 'TIPORESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sOcorrencia: TSQLDataSet
    CommandText = 'select * from OCORRENCIA where RA = :PRA and ANOLETIVO = :PANO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PANO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 111
    Top = 192
    object sOcorrenciaCODOCORRENCIA: TIntegerField
      FieldName = 'CODOCORRENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sOcorrenciaDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object sOcorrenciaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sOcorrenciaRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sOcorrenciaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sOcorrenciaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
    end
    object sOcorrenciaASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 30
    end
  end
  object dOcorrencia: TDataSetProvider
    DataSet = sOcorrencia
    UpdateMode = upWhereKeyOnly
    Left = 110
    Top = 240
  end
  object cdsOcorrencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PANO'
        ParamType = ptInput
      end>
    ProviderName = 'dOcorrencia'
    Left = 110
    Top = 296
    object cdsOcorrenciaCODOCORRENCIA: TIntegerField
      FieldName = 'CODOCORRENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOcorrenciaDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOcorrenciaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsOcorrenciaRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOcorrenciaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsOcorrenciaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOcorrenciaASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 30
    end
  end
  object sTablePeriodo: TSQLDataSet
    CommandText = 'TABPERIODO'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 265
    Top = 203
    object sTablePeriodoIDPERIODO: TIntegerField
      FieldName = 'IDPERIODO'
      Required = True
    end
    object sTablePeriodoPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object sTablePeriodoNOTAFINAL: TStringField
      FieldName = 'NOTAFINAL'
      FixedChar = True
      Size = 3
    end
  end
  object dTablePeriodo: TDataSetProvider
    DataSet = sTablePeriodo
    Left = 264
    Top = 249
  end
  object TablePeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dTablePeriodo'
    Left = 264
    Top = 295
    object TablePeriodoIDPERIODO: TIntegerField
      FieldName = 'IDPERIODO'
      Required = True
    end
    object TablePeriodoPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object TablePeriodoNOTAFINAL: TStringField
      FieldName = 'NOTAFINAL'
      FixedChar = True
      Size = 3
    end
  end
  object sdsSerie: TSQLDataSet
    CommandText = 'select * from TABSERIES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 344
    Top = 200
  end
  object dspSerie: TDataSetProvider
    DataSet = sdsSerie
    Left = 344
    Top = 248
  end
  object TableSeries: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSerie'
    Left = 348
    Top = 296
    object TableSeriesSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Required = True
      Size = 4
    end
    object TableSeriesTURNO: TStringField
      FieldName = 'TURNO'
      Size = 7
    end
    object TableSeriesTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object TableSeriesSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object TableSeriesDESC_CLASSE: TStringField
      FieldName = 'DESC_CLASSE'
      Size = 30
    end
  end
end
