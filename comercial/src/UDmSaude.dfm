object DMSaude: TDMSaude
  OldCreateOrder = False
  Left = 55
  Top = 93
  Height = 630
  Width = 914
  object sds_param: TSQLDataSet
    CommandText = 'select * from PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 423
    object StringField5: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object StringField8: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_paramDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object sds_paramD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object sds_paramD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object sds_paramD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object sds_paramD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object sds_paramD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object sds_paramD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object sds_paramD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object sds_paramD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object sds_paramD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object sds_paramINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object dsp_param: TDataSetProvider
    DataSet = sds_param
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 423
  end
  object cds_param: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_param'
    Left = 120
    Top = 423
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField10: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_paramDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object cds_paramD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object cds_paramD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object cds_paramD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object cds_paramD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object cds_paramD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object cds_paramD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object cds_paramD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object cds_paramD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object cds_paramD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object cds_paramINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
    object cds_paramCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
  end
  object sds_Empresa: TSQLDataSet
    CommandText = 'select * from EMPRESA '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 312
    object sdsEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sdsRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sdsCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sdsDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsWEB: TStringField
      FieldName = 'WEB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_EmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_EmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_empresa: TDataSetProvider
    DataSet = sds_Empresa
    Left = 104
    Top = 312
  end
  object cds_empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_empresa'
    Left = 144
    Top = 312
    object cds_empresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cds_empresaRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cds_empresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_empresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_empresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cds_empresaDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_empresaFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaWEB: TStringField
      FieldName = 'WEB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cds_empresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_empresaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_empresaIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_empresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_empresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object sds_usuario: TSQLDataSet
    CommandText = 'select * from USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 22
    Top = 519
    object sdsCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object sdsSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sdsPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
  end
  object dsp_usuario: TDataSetProvider
    DataSet = sds_usuario
    UpdateMode = upWhereKeyOnly
    Left = 86
    Top = 532
  end
  object cds_usuario_cadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_usuario'
    Left = 198
    Top = 528
    object cds_usuario_cadastroCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_usuario_cadastroNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object cds_usuario_cadastroSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_usuario_cadastroPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
  end
  object cds_Usuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 69
    Top = 481
    object cds_UsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object cds_UsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cds_UsuarioPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object cds_UsuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    UpdateMode = upWhereKeyOnly
    Left = 141
    Top = 377
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select * from acesso_senha'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 61
    Top = 377
    object SQLDataSet1LOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object SQLDataSet1SENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object SQLDataSet1PERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object SQLDataSet1CODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspEndereco'
    Left = 160
    Top = 8
    object cdsEnderecoCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEnderecoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEnderecoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEnderecoCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsEnderecoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEnderecoTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsEnderecoDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoDDD2: TStringField
      FieldName = 'DDD2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoDDD3: TStringField
      FieldName = 'DDD3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoDDD1: TStringField
      FieldName = 'DDD1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dspEndereco: TDataSetProvider
    DataSet = sqlEndereco
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 8
  end
  object sqlEndereco: TSQLDataSet
    CommandText = 'select * from ENDERECOCLIENTE where CODCLIENTE = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 8
    object sdsEnderecoCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEnderecoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsEnderecoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsEnderecoCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsEnderecoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsEnderecoTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsEnderecoDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoDDD2: TStringField
      FieldName = 'DDD2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoDDD3: TStringField
      FieldName = 'DDD3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoDDD1: TStringField
      FieldName = 'DDD1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    Left = 152
    Top = 64
    object cdsClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      EditMask = '000.000.000-00;1;_'
      Size = 18
    end
    object cdsClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cdsClienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cdsClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cdsClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsClienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object cdsClienteTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object cdsClienteSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsClienteCOD_FAIXA: TIntegerField
      DisplayLabel = 'PLANO FAIXA'
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClienteRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      EditMask = '!99/99/00;1;_'
    end
    object cdsClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 64
  end
  object sdsCliente: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, CONTATO, TIPOFIRMA,' +
      ' CPF, CNPJ, INSCESTADUAL, RG, SEGMENTO, REGIAO, LIMITECREDITO, D' +
      'ATACADASTRO, CODUSUARIO, STATUS, HOMEPAGE, PRAZORECEBIMENTO, PRA' +
      'ZOENTREGA, CODBANCO, BASE_ICMS, DATANASC, CONTA_CLIENTE, OBS, TE' +
      'M_IE, ID_COB, DATARESC, NOMEMAE, SEXO, FORMA_CORRESPOND, GRUPO_C' +
      'LIENTE, CODINCLUCANC, EXIST_COBERT, EXISTCOPART, DATAREINC, GERA' +
      'AVISO, GERAENV, GERABOL, EMVIAGEM, DTAALTERA, SERIE, COD_FAIXA, ' +
      'RA, SITUACAOESCOLAR,ESTADORG,PARCELA,DATAEMISSAORG,COMUNICAALUNO' +
      ','#13#10'(case when STATUS=0 then '#39'ATIVO'#39' else '#39'DESLIGADO'#39' end) as SIT' +
      'UACAO,'#13#10'(case when TIPOFIRMA=0 then '#39'FISICA'#39' else '#39'JURIDICA'#39' end' +
      ') as TIPO'#13#10'from CLIENTES where CODCLIENTE = :pcod or :pcod = 0 O' +
      'RDER BY NOMECLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 64
    object sdsClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sdsClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sdsClienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object sdsClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object sdsClienteTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object sdsClienteSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClienteRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sdsClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
  end
  object scdCliente: TSQLClientDataSet
    CommandText = 
      'select * from CLIENTES where  NOMECLIENTE like :PCLIENTE or  COD' +
      'CLIENTE=:pCODCLI order by NOMECLIENTE'#13#10#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODCLI'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 112
    Top = 112
    object scdClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scdClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object cdsDependente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sit'
        ParamType = ptInput
      end>
    ProviderName = 'dspDependente'
    OnNewRecord = cdsDependenteNewRecord
    Left = 179
    Top = 168
    object cdsDependenteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDependenteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsDependenteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsDependenteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsDependenteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDependenteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsDependenteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsDependenteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cdsDependenteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsDependenteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDependenteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDependenteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependenteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDependenteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDependenteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDependenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsDependentePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependentePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependenteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependenteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependenteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDependenteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsDependenteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsDependenteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDependenteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependenteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDependenteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsDependenteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDependenteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsDependenteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsDependenteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependenteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsDependenteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsDependenteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsDependenteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDependenteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDependenteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDependenteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDependenteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDependenteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cdsDependenteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsDependenteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsDependenteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cdsDependenteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsDependenteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsDependenteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsDependenteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      EditMask = '!99/99/00;1;_'
    end
  end
  object dspDependente: TDataSetProvider
    DataSet = sdsDependente
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 168
  end
  object sdsDependente: TSQLDataSet
    CommandText = 
      'select *  from CLIENTES where RAZAOSOCIAL = :id and segmento = 1' +
      ' AND GRUPO_CLIENTE = :tipo  and ID_COB = :sit order by nomeclien' +
      'te '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sit'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 168
    object sdsDependenteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDependenteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsDependenteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsDependenteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsDependenteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDependenteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsDependenteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sdsDependenteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sdsDependenteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsDependenteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDependenteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDependenteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDependenteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDependenteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDependenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsDependentePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependentePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsDependenteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsDependenteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDependenteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsDependenteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDependenteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsDependenteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsDependenteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsDependenteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsDependenteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDependenteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDependenteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDependenteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDependenteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsDependenteSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsDependenteRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDependenteCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsDependenteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDependenteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsDependenteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsDependenteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
  end
  object cdsFaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dspFaixa'
    Left = 168
    Top = 240
    object cdsFaixaCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFaixaIDADE_MIN: TSmallintField
      FieldName = 'IDADE_MIN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaIDADE_MAX: TSmallintField
      FieldName = 'IDADE_MAX'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaVALOR_PLANO: TFloatField
      FieldName = 'VALOR_PLANO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cdsFaixaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaCODIGOS: TIntegerField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFaixa: TDataSetProvider
    DataSet = sdsFaixa
    Left = 120
    Top = 240
  end
  object sdsFaixa: TSQLDataSet
    CommandText = 'select * from FAIXA_ETARIA where USO = :id order by CODIGOS'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 240
    object sdsFaixaCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFaixaIDADE_MIN: TSmallintField
      FieldName = 'IDADE_MIN'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaIDADE_MAX: TSmallintField
      FieldName = 'IDADE_MAX'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaVALOR_PLANO: TFloatField
      FieldName = 'VALOR_PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaCODIGOS: TIntegerField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCombo: TDataSetProvider
    DataSet = sdsCombo
    Left = 272
    Top = 88
  end
  object cdsCombo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    ProviderName = 'dspCombo'
    Left = 272
    Top = 136
    object cdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object cdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object cdsComboCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object cdsComboDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object cdsComboDESC1: TStringField
      FieldName = 'DESC1'
      Size = 80
    end
    object cdsComboDESC2: TStringField
      FieldName = 'DESC2'
      Size = 80
    end
    object cdsComboDESC3: TStringField
      FieldName = 'DESC3'
      Size = 80
    end
    object cdsComboDESC4: TStringField
      FieldName = 'DESC4'
      Size = 80
    end
    object cdsComboDESC5: TStringField
      FieldName = 'DESC5'
      Size = 80
    end
    object cdsComboDESC6: TStringField
      FieldName = 'DESC6'
      Size = 80
    end
  end
  object sdsCombo: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS where uso =:puso order by DESCRICAO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 40
    object sdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object sdsComboCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object sdsComboDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object sdsComboDESC1: TStringField
      FieldName = 'DESC1'
      Size = 80
    end
    object sdsComboDESC2: TStringField
      FieldName = 'DESC2'
      Size = 80
    end
    object sdsComboDESC3: TStringField
      FieldName = 'DESC3'
      Size = 80
    end
    object sdsComboDESC4: TStringField
      FieldName = 'DESC4'
      Size = 80
    end
    object sdsComboDESC5: TStringField
      FieldName = 'DESC5'
      Size = 80
    end
    object sdsComboDESC6: TStringField
      FieldName = 'DESC6'
      Size = 80
    end
  end
  object procgrupo: TSQLClientDataSet
    CommandText = 
      'select * from CLIENTES where GRUPO_CLIENTE  = :grupo and segment' +
      'o = 0'#13#10'order by NOMECLIENTE '#13#10#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 176
    Top = 112
    object procgrupoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object procgrupoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object procgrupoRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object scdsGuias: TSQLDataSet
    CommandText = 'select * from GUIAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 256
    Top = 232
    object scdsGuiasID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scdsGuiasREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object scdsGuiasNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasNUMERO_CARTAO_BENEFICIARIO: TStringField
      FieldName = 'NUMERO_CARTAO_BENEFICIARIO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object scdsGuiasVALIDADE_CARTEIRA: TDateField
      FieldName = 'VALIDADE_CARTEIRA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object scdsGuiasNUMERO_CARTAO_NACIONAL: TStringField
      FieldName = 'NUMERO_CARTAO_NACIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object scdsGuiasCODIGO_OPERADORA: TStringField
      FieldName = 'CODIGO_OPERADORA'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object scdsGuiasNOME_CONTRATADO: TStringField
      FieldName = 'NOME_CONTRATADO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object scdsGuiasCODIGO_CNES: TStringField
      FieldName = 'CODIGO_CNES'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object scdsGuiasLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object scdsGuiasNOME_LOGRADOURO: TStringField
      FieldName = 'NOME_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object scdsGuiasNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object scdsGuiasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object scdsGuiasMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object scdsGuiasSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object scdsGuiasCODIGO_MUNICIPIO: TStringField
      FieldName = 'CODIGO_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object scdsGuiasCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object scdsGuiasNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object scdsGuiasSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object scdsGuiasNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object scdsGuiasSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object scdsGuiasCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object scdsGuiasCODIGO_DOENCA: TStringField
      FieldName = 'CODIGO_DOENCA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object scdsGuiasTEMPO_DOENCA: TStringField
      FieldName = 'TEMPO_DOENCA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object scdsGuiasACIDENTE_TRABALHO: TIntegerField
      FieldName = 'ACIDENTE_TRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object scdsGuiasCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object scdsGuiasCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object scdsGuiasCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object scdsGuiasDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasCODIGO_PROCEDIMENTOS: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object scdsGuiasCODIGO_PROCEDIMENTOS_REALIZADO: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS_REALIZADO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object scdsGuiasTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object scdsGuiasTIPO_SAIDA: TIntegerField
      FieldName = 'TIPO_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 240
    end
    object scdsGuiasCODIGO_PRESTADORA: TStringField
      FieldName = 'CODIGO_PRESTADORA'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object scdsGuiasCARATER_SOLICITACAO: TStringField
      FieldName = 'CARATER_SOLICITACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object scdsGuiasNUMERO_CARTEIRA: TStringField
      FieldName = 'NUMERO_CARTEIRA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasDATA_AUT: TDateField
      FieldName = 'DATA_AUT'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object scdsGuiasDATA_VAL_SENHA: TDateField
      FieldName = 'DATA_VAL_SENHA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsGuiasNAOPERADORA: TStringField
      FieldName = 'NAOPERADORA'
      Size = 14
    end
    object scdsGuiasNOME_PRESTADOR: TStringField
      FieldName = 'NOME_PRESTADOR'
      Size = 70
    end
    object scdsGuiasNOME_EXECUTANTE1: TStringField
      FieldName = 'NOME_EXECUTANTE1'
      Size = 70
    end
    object scdsGuiasSIGLA_CONSELHO1: TStringField
      FieldName = 'SIGLA_CONSELHO1'
      Size = 7
    end
    object scdsGuiasNUMERO_PROFISSIONAL1: TStringField
      FieldName = 'NUMERO_PROFISSIONAL1'
      Size = 15
    end
    object scdsGuiasSIGLA_UNIDADE1: TStringField
      FieldName = 'SIGLA_UNIDADE1'
      Size = 2
    end
    object scdsGuiasCODIGO_ESPECIALIDADE1: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE1'
      Size = 5
    end
    object scdsGuiasCODIGO_CNES1: TStringField
      FieldName = 'CODIGO_CNES1'
      Size = 7
    end
    object scdsGuiasLOGRADOURO1: TStringField
      FieldName = 'LOGRADOURO1'
      Size = 3
    end
    object scdsGuiasNOME_LOGRADOURO1: TStringField
      FieldName = 'NOME_LOGRADOURO1'
      Size = 40
    end
    object scdsGuiasNUMERO1: TStringField
      FieldName = 'NUMERO1'
      Size = 5
    end
    object scdsGuiasCOMPLEMENTO1: TStringField
      FieldName = 'COMPLEMENTO1'
      Size = 15
    end
    object scdsGuiasMUNICIPIO1: TStringField
      FieldName = 'MUNICIPIO1'
      Size = 40
    end
    object scdsGuiasSIGLA1: TStringField
      FieldName = 'SIGLA1'
      Size = 2
    end
    object scdsGuiasCODIGO_MUNICIPIO1: TStringField
      FieldName = 'CODIGO_MUNICIPIO1'
      Size = 10
    end
    object scdsGuiasCEP1: TStringField
      FieldName = 'CEP1'
      Size = 8
    end
    object scdsGuiasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
  end
  object dspGuias: TDataSetProvider
    DataSet = scdsGuias
    Left = 256
    Top = 296
  end
  object cdsGuias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGuias'
    Left = 256
    Top = 352
    object cdsGuiasID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object cdsGuiasREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Size = 6
    end
    object cdsGuiasNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object cdsGuiasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsGuiasNUMERO_CARTAO_BENEFICIARIO: TStringField
      FieldName = 'NUMERO_CARTAO_BENEFICIARIO'
    end
    object cdsGuiasNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Size = 40
    end
    object cdsGuiasVALIDADE_CARTEIRA: TDateField
      FieldName = 'VALIDADE_CARTEIRA'
    end
    object cdsGuiasNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Size = 70
    end
    object cdsGuiasNUMERO_CARTAO_NACIONAL: TStringField
      FieldName = 'NUMERO_CARTAO_NACIONAL'
      Size = 15
    end
    object cdsGuiasCODIGO_OPERADORA: TStringField
      FieldName = 'CODIGO_OPERADORA'
      Size = 14
    end
    object cdsGuiasNOME_CONTRATADO: TStringField
      FieldName = 'NOME_CONTRATADO'
      Size = 70
    end
    object cdsGuiasCODIGO_CNES: TStringField
      FieldName = 'CODIGO_CNES'
      Size = 7
    end
    object cdsGuiasLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 3
    end
    object cdsGuiasNOME_LOGRADOURO: TStringField
      FieldName = 'NOME_LOGRADOURO'
      Size = 40
    end
    object cdsGuiasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsGuiasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object cdsGuiasMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 40
    end
    object cdsGuiasSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object cdsGuiasCODIGO_MUNICIPIO: TStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Size = 10
    end
    object cdsGuiasCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsGuiasNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 70
    end
    object cdsGuiasSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object cdsGuiasNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object cdsGuiasSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object cdsGuiasCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object cdsGuiasCODIGO_DOENCA: TStringField
      FieldName = 'CODIGO_DOENCA'
      Size = 1
    end
    object cdsGuiasTEMPO_DOENCA: TStringField
      FieldName = 'TEMPO_DOENCA'
      Size = 1
    end
    object cdsGuiasACIDENTE_TRABALHO: TIntegerField
      FieldName = 'ACIDENTE_TRABALHO'
    end
    object cdsGuiasCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object cdsGuiasCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object cdsGuiasCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object cdsGuiasCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object cdsGuiasDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsGuiasCODIGO_PROCEDIMENTOS: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS'
      Size = 2
    end
    object cdsGuiasCODIGO_PROCEDIMENTOS_REALIZADO: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS_REALIZADO'
      Size = 10
    end
    object cdsGuiasTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object cdsGuiasTIPO_SAIDA: TIntegerField
      FieldName = 'TIPO_SAIDA'
    end
    object cdsGuiasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cdsGuiasCODIGO_PRESTADORA: TStringField
      FieldName = 'CODIGO_PRESTADORA'
      Size = 14
    end
    object cdsGuiasCARATER_SOLICITACAO: TStringField
      FieldName = 'CARATER_SOLICITACAO'
      Size = 50
    end
    object cdsGuiasNUMERO_CARTEIRA: TStringField
      FieldName = 'NUMERO_CARTEIRA'
    end
    object cdsGuiasTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object cdsGuiasDATA_AUT: TDateField
      FieldName = 'DATA_AUT'
    end
    object cdsGuiasSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsGuiasDATA_VAL_SENHA: TDateField
      FieldName = 'DATA_VAL_SENHA'
    end
    object cdsGuiasNAOPERADORA: TStringField
      FieldName = 'NAOPERADORA'
      Size = 14
    end
    object cdsGuiasNOME_PRESTADOR: TStringField
      FieldName = 'NOME_PRESTADOR'
      Size = 70
    end
    object cdsGuiasNOME_EXECUTANTE1: TStringField
      FieldName = 'NOME_EXECUTANTE1'
      Size = 70
    end
    object cdsGuiasSIGLA_CONSELHO1: TStringField
      FieldName = 'SIGLA_CONSELHO1'
      Size = 7
    end
    object cdsGuiasNUMERO_PROFISSIONAL1: TStringField
      FieldName = 'NUMERO_PROFISSIONAL1'
      Size = 15
    end
    object cdsGuiasSIGLA_UNIDADE1: TStringField
      FieldName = 'SIGLA_UNIDADE1'
      Size = 2
    end
    object cdsGuiasCODIGO_ESPECIALIDADE1: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE1'
      Size = 5
    end
    object cdsGuiasCODIGO_CNES1: TStringField
      FieldName = 'CODIGO_CNES1'
      Size = 7
    end
    object cdsGuiasLOGRADOURO1: TStringField
      FieldName = 'LOGRADOURO1'
      Size = 3
    end
    object cdsGuiasNOME_LOGRADOURO1: TStringField
      FieldName = 'NOME_LOGRADOURO1'
      Size = 40
    end
    object cdsGuiasNUMERO1: TStringField
      FieldName = 'NUMERO1'
      Size = 5
    end
    object cdsGuiasCOMPLEMENTO1: TStringField
      FieldName = 'COMPLEMENTO1'
      Size = 15
    end
    object cdsGuiasMUNICIPIO1: TStringField
      FieldName = 'MUNICIPIO1'
      Size = 40
    end
    object cdsGuiasSIGLA1: TStringField
      FieldName = 'SIGLA1'
      Size = 2
    end
    object cdsGuiasCODIGO_MUNICIPIO1: TStringField
      FieldName = 'CODIGO_MUNICIPIO1'
      Size = 10
    end
    object cdsGuiasCEP1: TStringField
      FieldName = 'CEP1'
      Size = 8
    end
    object cdsGuiasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscaCliente'
    Left = 592
    Top = 424
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object dspBuscaCliente: TDataSetProvider
    DataSet = sdsClienteBusca
    Options = [poAllowCommandText]
    Left = 488
    Top = 424
  end
  object sdsClienteBusca: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA from CLIENTES'#13#10' ' +
      'where  status = 0 and segmento = 0  '#13#10'ORDER BY NOMECLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 424
  end
  object dsClienteBusca: TDataSource
    DataSet = cdsClienteBusca
    Left = 696
    Top = 416
  end
  object sdsFornecedor: TSQLDataSet
    CommandText = 
      'select  codfornecedor, nomefornecedor from FORNECEDOR '#13#10'where  (' +
      '(REGIAO =  :pRegiao) or (REGIAO = :pRegiao1)  or (REGIAO = :pReg' +
      'iao2) or (REGIAO = :pRegiao3) or (:pRegiao = 0))'#13#10'order by nomef' +
      'ornecedor'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao3'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 64
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 408
    Top = 112
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao3'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end>
    ProviderName = 'dspFornecedor'
    Left = 408
    Top = 160
    object cdsFornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsFornecedorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 408
    Top = 208
  end
  object cdsClienteBuscaP: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end>
    ProviderName = 'dspBuscaClienteP'
    Left = 568
    Top = 344
    object cdsClienteBuscaPCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBuscaPNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaPRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaPRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object dspBuscaClienteP: TDataSetProvider
    DataSet = sdsClienteBuscaP
    Options = [poAllowCommandText]
    Left = 472
    Top = 344
  end
  object sdsClienteBuscaP: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA from CLIENTES'#13#10' ' +
      'where  status = 0 and GRUPO_CLIENTE = :pCC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 368
    Top = 344
  end
  object dsCombo: TDataSource
    DataSet = cdsCombo
    Left = 272
    Top = 179
  end
  object sdsExame: TSQLDataSet
    CommandText = 
      'select labe.*, cli.NOMECLIENTE from labexame labe , CLIENTES cli' +
      ' where cli.CODCLIENTE = labe.CODCLIENTE and codExame = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 504
    Top = 64
    object sdsExameCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsExameDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsExameMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameCONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsExameVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsExameMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsExameNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object sdsExameCOBRANCA: TStringField
      FieldName = 'COBRANCA'
      FixedChar = True
      Size = 1
    end
  end
  object dspExame: TDataSetProvider
    DataSet = sdsExame
    Left = 504
    Top = 112
  end
  object cdsExame: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspExame'
    Left = 504
    Top = 160
    object cdsExameCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      Required = True
    end
    object cdsExameDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
    end
    object cdsExameDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
    end
    object cdsExameDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
    end
    object cdsExameDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
    end
    object cdsExameDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
    end
    object cdsExameCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsExameTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      Size = 100
    end
    object cdsExameMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
    end
    object cdsExameCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 50
    end
    object cdsExameVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsExameSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsExameMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object cdsExameNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object cdsExameCOBRANCA: TStringField
      FieldName = 'COBRANCA'
      FixedChar = True
      Size = 1
    end
  end
  object sqlVencimentoPCMSO: TSQLDataSet
    CommandText = 
      'select * from DADOS_COMBOS where USO = '#39'VENCIMENTO'#39' and OUTROS =' +
      ' '#39'PCMSO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 656
    Top = 96
    object sqlVencimentoPCMSOCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sqlVencimentoPCMSODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlVencimentoPCMSOUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sqlVencimentoPCMSOCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sqlVencimentoPCMSOOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
  object sqlVencimentoASH: TSQLDataSet
    CommandText = 
      'select * from DADOS_COMBOS where USO = '#39'VENCIMENTO'#39' and OUTROS =' +
      ' '#39'ASH'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 664
    Top = 160
    object sqlVencimentoASHCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sqlVencimentoASHDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlVencimentoASHUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sqlVencimentoASHCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sqlVencimentoASHOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
  object sdslote: TSQLDataSet
    CommandText = 
      'select distinct(NUMEROLOTE) from FATURAMENTO where tipo_guia =:p' +
      'uso'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'puso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 528
    Top = 488
    object sdsloteNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
  end
  object dsplote: TDataSetProvider
    DataSet = sdslote
    Left = 576
    Top = 488
  end
  object cdslote: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'puso'
        ParamType = ptInput
      end>
    ProviderName = 'dsplote'
    Left = 624
    Top = 488
    object cdsloteNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
  end
  object dslote: TDataSource
    DataSet = cdslote
    Left = 672
    Top = 491
  end
  object dspFaturamento: TDataSetProvider
    DataSet = sdsFaturamento
    Left = 616
    Top = 544
  end
  object sdsFaturamento: TSQLDataSet
    CommandText = 'select *  from FATURAMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 528
    Top = 544
    object sdsFaturamentoID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object sdsFaturamentoREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Size = 6
    end
    object sdsFaturamentoNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object sdsFaturamentoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sdsFaturamentoNUMERO_CARTAO_BENEFICIARIO: TStringField
      FieldName = 'NUMERO_CARTAO_BENEFICIARIO'
    end
    object sdsFaturamentoNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Size = 40
    end
    object sdsFaturamentoVALIDADE_CARTEIRA: TDateField
      FieldName = 'VALIDADE_CARTEIRA'
    end
    object sdsFaturamentoNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Size = 70
    end
    object sdsFaturamentoNUMERO_CARTAO_NACIONAL: TStringField
      FieldName = 'NUMERO_CARTAO_NACIONAL'
      Size = 15
    end
    object sdsFaturamentoCODIGO_OPERADORA: TStringField
      FieldName = 'CODIGO_OPERADORA'
      Size = 14
    end
    object sdsFaturamentoNOME_CONTRATADO: TStringField
      FieldName = 'NOME_CONTRATADO'
      Size = 70
    end
    object sdsFaturamentoCODIGO_CNES: TStringField
      FieldName = 'CODIGO_CNES'
      Size = 7
    end
    object sdsFaturamentoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 3
    end
    object sdsFaturamentoNOME_LOGRADOURO: TStringField
      FieldName = 'NOME_LOGRADOURO'
      Size = 40
    end
    object sdsFaturamentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsFaturamentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object sdsFaturamentoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 40
    end
    object sdsFaturamentoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object sdsFaturamentoCODIGO_MUNICIPIO: TStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Size = 10
    end
    object sdsFaturamentoCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsFaturamentoNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 70
    end
    object sdsFaturamentoSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object sdsFaturamentoNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object sdsFaturamentoSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object sdsFaturamentoCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object sdsFaturamentoCODIGO_DOENCA: TStringField
      FieldName = 'CODIGO_DOENCA'
      Size = 1
    end
    object sdsFaturamentoTEMPO_DOENCA: TStringField
      FieldName = 'TEMPO_DOENCA'
      Size = 1
    end
    object sdsFaturamentoACIDENTE_TRABALHO: TIntegerField
      FieldName = 'ACIDENTE_TRABALHO'
    end
    object sdsFaturamentoCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object sdsFaturamentoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object sdsFaturamentoCODIGO_PROCEDIMENTOS: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS'
      Size = 2
    end
    object sdsFaturamentoCODIGO_PROCEDIMENTOS_REALIZADO: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS_REALIZADO'
      Size = 10
    end
    object sdsFaturamentoTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object sdsFaturamentoTIPO_SAIDA: TIntegerField
      FieldName = 'TIPO_SAIDA'
    end
    object sdsFaturamentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object sdsFaturamentoCODIGO_PRESTADORA: TStringField
      FieldName = 'CODIGO_PRESTADORA'
      Size = 14
    end
    object sdsFaturamentoCARATER_SOLICITACAO: TStringField
      FieldName = 'CARATER_SOLICITACAO'
      Size = 50
    end
    object sdsFaturamentoNUMERO_CARTEIRA: TStringField
      FieldName = 'NUMERO_CARTEIRA'
    end
    object sdsFaturamentoTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object sdsFaturamentoDATA_AUT: TDateField
      FieldName = 'DATA_AUT'
    end
    object sdsFaturamentoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sdsFaturamentoDATA_VAL_SENHA: TDateField
      FieldName = 'DATA_VAL_SENHA'
    end
    object sdsFaturamentoNAOPERADORA: TStringField
      FieldName = 'NAOPERADORA'
      Size = 14
    end
    object sdsFaturamentoNOME_PRESTADOR: TStringField
      FieldName = 'NOME_PRESTADOR'
      Size = 70
    end
    object sdsFaturamentoNOME_EXECUTANTE1: TStringField
      FieldName = 'NOME_EXECUTANTE1'
      Size = 70
    end
    object sdsFaturamentoSIGLA_CONSELHO1: TStringField
      FieldName = 'SIGLA_CONSELHO1'
      Size = 7
    end
    object sdsFaturamentoNUMERO_PROFISSIONAL1: TStringField
      FieldName = 'NUMERO_PROFISSIONAL1'
      Size = 15
    end
    object sdsFaturamentoSIGLA_UNIDADE1: TStringField
      FieldName = 'SIGLA_UNIDADE1'
      Size = 2
    end
    object sdsFaturamentoCODIGO_ESPECIALIDADE1: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE1'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CNES1: TStringField
      FieldName = 'CODIGO_CNES1'
      Size = 7
    end
    object sdsFaturamentoLOGRADOURO1: TStringField
      FieldName = 'LOGRADOURO1'
      Size = 3
    end
    object sdsFaturamentoNOME_LOGRADOURO1: TStringField
      FieldName = 'NOME_LOGRADOURO1'
      Size = 40
    end
    object sdsFaturamentoNUMERO1: TStringField
      FieldName = 'NUMERO1'
      Size = 5
    end
    object sdsFaturamentoCOMPLEMENTO1: TStringField
      FieldName = 'COMPLEMENTO1'
      Size = 15
    end
    object sdsFaturamentoMUNICIPIO1: TStringField
      FieldName = 'MUNICIPIO1'
      Size = 40
    end
    object sdsFaturamentoSIGLA1: TStringField
      FieldName = 'SIGLA1'
      Size = 2
    end
    object sdsFaturamentoCODIGO_MUNICIPIO1: TStringField
      FieldName = 'CODIGO_MUNICIPIO1'
      Size = 10
    end
    object sdsFaturamentoCEP1: TStringField
      FieldName = 'CEP1'
      Size = 8
    end
    object sdsFaturamentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsFaturamentoTIPO_FATURA: TIntegerField
      FieldName = 'TIPO_FATURA'
    end
    object sdsFaturamentoNUMERO_GUIA_PRESTADOR: TStringField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
    end
    object sdsFaturamentoTOTAL_GERAL_GUIA: TFloatField
      FieldName = 'TOTAL_GERAL_GUIA'
    end
    object sdsFaturamentoNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
    object sdsFaturamentoDATA_IMPORTACAO: TDateField
      FieldName = 'DATA_IMPORTACAO'
    end
  end
  object cdsFaturamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaturamento'
    Left = 712
    Top = 544
    object cdsFaturamentoID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object cdsFaturamentoREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Size = 6
    end
    object cdsFaturamentoNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object cdsFaturamentoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsFaturamentoNUMERO_CARTAO_BENEFICIARIO: TStringField
      FieldName = 'NUMERO_CARTAO_BENEFICIARIO'
    end
    object cdsFaturamentoNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Size = 40
    end
    object cdsFaturamentoVALIDADE_CARTEIRA: TDateField
      FieldName = 'VALIDADE_CARTEIRA'
    end
    object cdsFaturamentoNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Size = 70
    end
    object cdsFaturamentoNUMERO_CARTAO_NACIONAL: TStringField
      FieldName = 'NUMERO_CARTAO_NACIONAL'
      Size = 15
    end
    object cdsFaturamentoCODIGO_OPERADORA: TStringField
      FieldName = 'CODIGO_OPERADORA'
      Size = 14
    end
    object cdsFaturamentoNOME_CONTRATADO: TStringField
      FieldName = 'NOME_CONTRATADO'
      Size = 70
    end
    object cdsFaturamentoCODIGO_CNES: TStringField
      FieldName = 'CODIGO_CNES'
      Size = 7
    end
    object cdsFaturamentoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 3
    end
    object cdsFaturamentoNOME_LOGRADOURO: TStringField
      FieldName = 'NOME_LOGRADOURO'
      Size = 40
    end
    object cdsFaturamentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsFaturamentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object cdsFaturamentoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 40
    end
    object cdsFaturamentoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object cdsFaturamentoCODIGO_MUNICIPIO: TStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Size = 10
    end
    object cdsFaturamentoCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsFaturamentoNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 70
    end
    object cdsFaturamentoSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object cdsFaturamentoNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object cdsFaturamentoSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object cdsFaturamentoCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object cdsFaturamentoCODIGO_DOENCA: TStringField
      FieldName = 'CODIGO_DOENCA'
      Size = 1
    end
    object cdsFaturamentoTEMPO_DOENCA: TStringField
      FieldName = 'TEMPO_DOENCA'
      Size = 1
    end
    object cdsFaturamentoACIDENTE_TRABALHO: TIntegerField
      FieldName = 'ACIDENTE_TRABALHO'
    end
    object cdsFaturamentoCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object cdsFaturamentoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsFaturamentoCODIGO_PROCEDIMENTOS: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS'
      Size = 2
    end
    object cdsFaturamentoCODIGO_PROCEDIMENTOS_REALIZADO: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS_REALIZADO'
      Size = 10
    end
    object cdsFaturamentoTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object cdsFaturamentoTIPO_SAIDA: TIntegerField
      FieldName = 'TIPO_SAIDA'
    end
    object cdsFaturamentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cdsFaturamentoCODIGO_PRESTADORA: TStringField
      FieldName = 'CODIGO_PRESTADORA'
      Size = 14
    end
    object cdsFaturamentoCARATER_SOLICITACAO: TStringField
      FieldName = 'CARATER_SOLICITACAO'
      Size = 50
    end
    object cdsFaturamentoNUMERO_CARTEIRA: TStringField
      FieldName = 'NUMERO_CARTEIRA'
    end
    object cdsFaturamentoTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object cdsFaturamentoDATA_AUT: TDateField
      FieldName = 'DATA_AUT'
    end
    object cdsFaturamentoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsFaturamentoDATA_VAL_SENHA: TDateField
      FieldName = 'DATA_VAL_SENHA'
    end
    object cdsFaturamentoNAOPERADORA: TStringField
      FieldName = 'NAOPERADORA'
      Size = 14
    end
    object cdsFaturamentoNOME_PRESTADOR: TStringField
      FieldName = 'NOME_PRESTADOR'
      Size = 70
    end
    object cdsFaturamentoNOME_EXECUTANTE1: TStringField
      FieldName = 'NOME_EXECUTANTE1'
      Size = 70
    end
    object cdsFaturamentoSIGLA_CONSELHO1: TStringField
      FieldName = 'SIGLA_CONSELHO1'
      Size = 7
    end
    object cdsFaturamentoNUMERO_PROFISSIONAL1: TStringField
      FieldName = 'NUMERO_PROFISSIONAL1'
      Size = 15
    end
    object cdsFaturamentoSIGLA_UNIDADE1: TStringField
      FieldName = 'SIGLA_UNIDADE1'
      Size = 2
    end
    object cdsFaturamentoCODIGO_ESPECIALIDADE1: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE1'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CNES1: TStringField
      FieldName = 'CODIGO_CNES1'
      Size = 7
    end
    object cdsFaturamentoLOGRADOURO1: TStringField
      FieldName = 'LOGRADOURO1'
      Size = 3
    end
    object cdsFaturamentoNOME_LOGRADOURO1: TStringField
      FieldName = 'NOME_LOGRADOURO1'
      Size = 40
    end
    object cdsFaturamentoNUMERO1: TStringField
      FieldName = 'NUMERO1'
      Size = 5
    end
    object cdsFaturamentoCOMPLEMENTO1: TStringField
      FieldName = 'COMPLEMENTO1'
      Size = 15
    end
    object cdsFaturamentoMUNICIPIO1: TStringField
      FieldName = 'MUNICIPIO1'
      Size = 40
    end
    object cdsFaturamentoSIGLA1: TStringField
      FieldName = 'SIGLA1'
      Size = 2
    end
    object cdsFaturamentoCODIGO_MUNICIPIO1: TStringField
      FieldName = 'CODIGO_MUNICIPIO1'
      Size = 10
    end
    object cdsFaturamentoCEP1: TStringField
      FieldName = 'CEP1'
      Size = 8
    end
    object cdsFaturamentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsFaturamentoTIPO_FATURA: TIntegerField
      FieldName = 'TIPO_FATURA'
    end
    object cdsFaturamentoNUMERO_GUIA_PRESTADOR: TStringField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
    end
    object cdsFaturamentoTOTAL_GERAL_GUIA: TFloatField
      FieldName = 'TOTAL_GERAL_GUIA'
    end
    object cdsFaturamentoNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
    object cdsFaturamentoDATA_IMPORTACAO: TDateField
      FieldName = 'DATA_IMPORTACAO'
    end
  end
end
