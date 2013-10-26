object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 291
  Top = 100
  Height = 476
  Width = 391
  object sqlsisAdimin: TSQLConnection
    ConnectionName = 'SISADMIN'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.100:sge_lajes'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 54
    Top = 8
  end
  object sds_parametro: TSQLDataSet
    CommandText = 
      'select param.* from PARAMETRO param where (param.PARAMETRO = :pP' +
      'ARAM) OR (:pPARAM = '#39'TODOS PARAMETROS DISPONIVEIS'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 29
    Top = 55
    object sds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_parametroDADOS: TStringField
      FieldName = 'DADOS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_parametroD1: TStringField
      FieldName = 'D1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD2: TStringField
      FieldName = 'D2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD3: TStringField
      FieldName = 'D3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD4: TStringField
      FieldName = 'D4'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD5: TStringField
      FieldName = 'D5'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD6: TStringField
      FieldName = 'D6'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD7: TStringField
      FieldName = 'D7'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD8: TStringField
      FieldName = 'D8'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroD9: TStringField
      FieldName = 'D9'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dsp_parametro: TDataSetProvider
    DataSet = sds_parametro
    UpdateMode = upWhereKeyOnly
    Left = 61
    Top = 55
  end
  object cds_parametro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_parametro'
    Left = 101
    Top = 55
    object cds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_parametroDADOS: TStringField
      FieldName = 'DADOS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroD1: TStringField
      FieldName = 'D1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD2: TStringField
      FieldName = 'D2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD3: TStringField
      FieldName = 'D3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD4: TStringField
      FieldName = 'D4'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD5: TStringField
      FieldName = 'D5'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD6: TStringField
      FieldName = 'D6'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD7: TStringField
      FieldName = 'D7'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD8: TStringField
      FieldName = 'D8'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD9: TStringField
      FieldName = 'D9'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object c_6_genid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'd_6'
    Left = 99
    Top = 102
    object c_6_genidCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object d_6: TDataSetProvider
    DataSet = s_6
    Options = [poAllowCommandText]
    Left = 51
    Top = 102
  end
  object s_6: TSQLDataSet
    CommandText = 
      'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) AS INTEGER) AS CODIGO F' +
      'ROM RDB$DATABASE;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 19
    Top = 102
    object s_6CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
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
    SQLConnection = sqlsisAdimin
    Left = 22
    Top = 152
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
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 55
    Top = 152
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
    Left = 97
    Top = 153
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
  object scds_produto_proc: TSQLClientDataSet
    CommandText = 
      'select prod.CODPRODUTO'#13#10', prod.CODPRO'#13#10', prod.PRODUTO'#13#10', prod.UN' +
      'IDADEMEDIDA'#13#10', prod.QTDE_PCT'#13#10', prod.ICMS'#13#10', prod.CODALMOXARIFAD' +
      'O'#13#10', prod.CONTA_DESPESA'#13#10', ccus.ALMOXARIFADO'#13#10', prod.VALORUNITAR' +
      'IOATUAL'#13#10', prod.VALOR_PRAZO'#13#10', prod.COD_COMISSAO'#13#10', prod.RATEIO'#13 +
      #10', prod.TIPO  '#13#10', prod.ESTOQUEATUAL '#13#10', prod.LOCALIZACAO  '#13#10'from' +
      ' PRODUTOS prod '#13#10'left outer join ALMOXARIFADO ccus '#13#10'on ccus.COD' +
      'ALMOXARIFADO = prod.CODALMOXARIFADO '#13#10'where PRODUTO like :pPROD ' +
      'or CODPRODUTO = :CODPRODUTO '#13#10'or CODPRO = :CODPRO'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pPROD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 62
    Top = 199
    object scds_produto_procCODPRODUTO: TIntegerField
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 50
    end
    object scds_produto_procUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object scds_produto_procVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object scds_produto_procICMS: TFloatField
      FieldName = 'ICMS'
    end
    object scds_produto_procCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object scds_produto_procALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
    object scds_produto_procCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object scds_produto_procRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object scds_produto_procCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object scds_produto_procCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object scds_produto_procQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object scds_produto_procVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object scds_produto_procTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object scds_produto_procESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object scds_produto_procLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 5
    end
  end
  object s_8: TSQLDataSet
    CommandText = 
      'select CODDETALHE_SERV,CODMOVIMENTO, CODSERVICO, DESCRICAO, QUAN' +
      'TIDADE, PRECO from MOV_DETALHE_SERV where  CODMOVIMENTO = :PCODM' +
      'OV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 32
    Top = 248
    object s_8CODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_8CODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object s_8DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object s_8QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object s_8PRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object s_8CODDETALHE_SERV: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODDETALHE_SERV'
      ProviderFlags = [pfInWhere, pfInKey]
    end
  end
  object d_8: TDataSetProvider
    DataSet = s_8
    Left = 72
    Top = 248
  end
  object c_8_serv: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'd_8'
    Left = 112
    Top = 248
    object c_8_servCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_8_servCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object c_8_servDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object c_8_servQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object c_8_servPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object c_8_servCODDETALHE_SERV: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODDETALHE_SERV'
      ProviderFlags = [pfInWhere, pfInKey]
    end
  end
  object cds_Marca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Marca'
    Left = 311
    Top = 64
    object cds_MarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
  end
  object dsp_Marca: TDataSetProvider
    DataSet = sds_Marca
    UpdateMode = upWhereKeyOnly
    Left = 242
    Top = 64
  end
  object sds_Marca: TSQLDataSet
    CommandText = 
      'select * from MARCA '#13#10'where ((DESCMARCAS=:pcod) or (:pcod = '#39'tod' +
      'os'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 174
    Top = 64
    object sds_MarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
  end
  object cds_familia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_familia'
    Left = 311
    Top = 112
    object cds_familiaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_familiaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
  end
  object dsp_familia: TDataSetProvider
    DataSet = sds_familia
    UpdateMode = upWhereKeyOnly
    Left = 242
    Top = 112
  end
  object sds_familia: TSQLDataSet
    CommandText = 
      'select * from FAMILIAPRODUTOS '#13#10'where ((DESCFAMILIA=:pcod) or (:' +
      'pcod = '#39'todos'#39'))'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 174
    Top = 112
    object sds_familiaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object sds_familiaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
  end
  object cds_categoria: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PFAM'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_categoria'
    Left = 312
    Top = 160
    object cds_categoriaDESCCATEGORIA: TStringField
      FieldName = 'DESCCATEGORIA'
      Size = 30
    end
    object cds_categoriaCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object cds_categoriaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      Required = True
    end
    object cds_categoriaCASE: TStringField
      FieldName = 'CASE'
      Size = 254
    end
  end
  object dsp_categoria: TDataSetProvider
    DataSet = sds_categoria
    UpdateMode = upWhereKeyOnly
    Left = 243
    Top = 160
  end
  object sds_categoria: TSQLDataSet
    CommandText = 
      'select COD_CATEGORIA, COD_FAMILIA, DESCCATEGORIA, '#13#10'CASE UDF_ISD' +
      'IGIT(DESCCATEGORIA) when 1 then (UDF_RIGHT(DESCCATEGORIA, UDF_LE' +
      'N(DESCCATEGORIA)-9)) '#13#10'when 0 then DESCCATEGORIA end '#13#10' from CAT' +
      'EGORIAPRODUTO '#13#10'where ((DESCCATEGORIA=:pcod) or (:pcod = '#39'todos'#39 +
      ')) or (COD_FAMILIA = :PFAM)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PFAM'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 174
    Top = 160
    object sds_categoriaDESCCATEGORIA: TStringField
      FieldName = 'DESCCATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object sds_categoriaCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object sds_categoriaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      Required = True
    end
    object sds_categoriaCASE: TStringField
      FieldName = 'CASE'
      ProviderFlags = []
      Size = 254
    end
  end
  object cds_Usuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_usuario'
    Left = 152
    Top = 304
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
  object dsp_usuario: TDataSetProvider
    DataSet = sds_usuario
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 304
  end
  object sds_usuario: TSQLDataSet
    CommandText = 'select * from acesso_senha'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 24
    Top = 304
    object sds_usuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object sds_usuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sds_usuarioPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object sds_usuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object sResolucao: TSQLDataSet
    CommandText = 'select * from LOG_ACESSO '#13#10'where MICRO = :mi'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'mi'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 161
    Top = 240
    object sResolucaoLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object sResolucaoMICRO: TStringField
      FieldName = 'MICRO'
      Size = 30
    end
    object sResolucaoMODULO: TStringField
      FieldName = 'MODULO'
      Size = 30
    end
    object sResolucaoID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object sResolucaoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 60
    end
  end
  object EvOneInstance1: TEvOneInstance
    Left = 256
    Top = 216
  end
end
