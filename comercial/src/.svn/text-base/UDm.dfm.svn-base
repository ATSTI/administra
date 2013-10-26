object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 206
  Top = 111
  Height = 738
  Width = 1152
  object sqlsisAdimin: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=quad:sge_luciana'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq21'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\sisadmin\relatorio\')
    VendorLib = 'fbclient.dll'
    Left = 112
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
    Left = 45
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
    Left = 109
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
    Left = 173
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
    Left = 179
    Top = 102
    object c_6_genidCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object d_6: TDataSetProvider
    DataSet = s_6
    Options = [poAllowCommandText]
    Left = 107
    Top = 102
  end
  object s_6: TSQLDataSet
    CommandText = 
      'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) AS INTEGER) AS CODIGO F' +
      'ROM RDB$DATABASE;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 43
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
    Left = 37
    Top = 146
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
    Left = 102
    Top = 146
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
    Left = 176
    Top = 155
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
    Left = 16
    Top = 348
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
    Left = 80
    Top = 348
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
    Left = 160
    Top = 348
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
    Params = <>
    ProviderName = 'dsp_Marca'
    OnReconcileError = cds_MarcaReconcileError
    Left = 175
    Top = 200
    object cds_MarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
  end
  object dsp_Marca: TDataSetProvider
    DataSet = sds_Marca
    UpdateMode = upWhereKeyOnly
    Left = 106
    Top = 192
  end
  object sds_Marca: TSQLDataSet
    CommandText = 'select * from MARCA order by DESCMARCAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 38
    Top = 192
    object sds_MarcaDESCMARCAS: TStringField
      FieldName = 'DESCMARCAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
  end
  object cds_familia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_familia'
    OnReconcileError = cds_familiaReconcileError
    Left = 175
    Top = 248
    object cds_familiaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object cds_familiaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object cds_familiaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
  end
  object dsp_familia: TDataSetProvider
    DataSet = sds_familia
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 106
    Top = 240
  end
  object sds_familia: TSQLDataSet
    CommandText = 'select * from FAMILIAPRODUTOS  order by DESCFAMILIA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 38
    Top = 240
    object sds_familiaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object sds_familiaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object sds_familiaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
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
    OnReconcileError = cds_categoriaReconcileError
    Left = 176
    Top = 296
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
    Left = 107
    Top = 296
  end
  object sds_categoria: TSQLDataSet
    CommandText = 
      'select COD_CATEGORIA, COD_FAMILIA, DESCCATEGORIA, '#13#10'CASE UDF_ISD' +
      'IGIT(DESCCATEGORIA) when 1 then (UDF_RIGHT(DESCCATEGORIA, UDF_LE' +
      'N(DESCCATEGORIA)-9)) '#13#10'when 0 then DESCCATEGORIA end '#13#10' from CAT' +
      'EGORIAPRODUTO '#13#10'where ((DESCCATEGORIA=:pcod) or (:pcod = '#39'todos'#39 +
      ')) or (COD_FAMILIA = :PFAM) order by DESCCATEGORIA'
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
    Left = 38
    Top = 296
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
  object sds_cfop: TSQLDataSet
    CommandText = 
      'select CFCOD, CFNOME, FRETEBC, IPIBC, TIPOMOVIMENTO, TOTTRIB fro' +
      'm CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 247
    Top = 344
    object sds_cfopCFCOD: TStringField
      DisplayWidth = 30
      FieldName = 'CFCOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object sds_cfopCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sds_cfopTIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cfopFRETEBC: TStringField
      FieldName = 'FRETEBC'
      FixedChar = True
      Size = 1
    end
    object sds_cfopIPIBC: TStringField
      FieldName = 'IPIBC'
      FixedChar = True
      Size = 1
    end
    object sds_cfopTOTTRIB: TStringField
      FieldName = 'TOTTRIB'
      FixedChar = True
      Size = 1
    end
  end
  object dsp_cfop: TDataSetProvider
    DataSet = sds_cfop
    UpdateMode = upWhereKeyOnly
    Left = 247
    Top = 400
  end
  object cds_cfop: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cfop'
    Left = 252
    Top = 457
    object cds_cfopCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 30
    end
    object cds_cfopCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
    object cds_cfopTIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object cds_cfopFRETEBC: TStringField
      FieldName = 'FRETEBC'
      FixedChar = True
      Size = 1
    end
    object cds_cfopIPIBC: TStringField
      FieldName = 'IPIBC'
      FixedChar = True
      Size = 1
    end
    object cds_cfopTOTTRIB: TStringField
      FieldName = 'TOTTRIB'
      FixedChar = True
      Size = 1
    end
  end
  object scds_banco_proc: TSQLDataSet
    CommandText = 
      'select BANCO, CODBANCO, NOMEBANCO from BANCO where CODBANCO= :pC' +
      'ODBANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODBANCO'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 478
    Top = 290
    object scds_banco_procBANCO: TStringField
      FieldName = 'BANCO'
      Required = True
      Size = 18
    end
    object scds_banco_procCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      Required = True
    end
    object scds_banco_procNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Required = True
      Size = 30
    end
  end
  object scds_cliente_proc: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, '#13#10'          cli.CODUSUARIO,'#13#10'          cl' +
      'i.NOMECLIENTE, '#13#10'          cli.RAZAOSOCIAL, '#13#10'          cli.CODB' +
      'ANCO, '#13#10'          cli.PRAZORECEBIMENTO, '#13#10'          cli.OBS,  '#13#10 +
      '          cli.SEGMENTO, '#13#10'          cli.STATUS, '#13#10'          usu.' +
      'NOMEUSUARIO, ende.UF, cli.BLOQUEIO  , cli.desconto, cli.CFOP, cl' +
      'i.SUFRAMA, ende.PAIS, cli.CNPJ, cli.INSCESTADUAL,  ende.LOGRADOU' +
      'RO,'#13#10'          ende.BAIRRO, ende.CIDADE, ende.CEP, ende.CD_IBGE ' +
      #13#10'from CLIENTES cli '#13#10'left outer join USUARIO usu '#13#10'on usu.CODUS' +
      'UARIO=cli.CODUSUARIO '#13#10'left outer join ENDERECOCLIENTE ende on e' +
      'nde.CODCLIENTE = cli.CODCLIENTE '#13#10'where cli.NOMECLIENTE like :pC' +
      'LIENTE '#13#10'or cli.RAZAOSOCIAL like :pRAZAO '#13#10'or cli.CODCLIENTE = :' +
      'pCODCLIENTE '#13#10'order by cli.NOMECLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pRAZAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 478
    Top = 338
    object scds_cliente_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scds_cliente_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object scds_cliente_procRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object scds_cliente_procCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object scds_cliente_procPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object scds_cliente_procOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object scds_cliente_procSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object scds_cliente_procSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object scds_cliente_procNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
    object scds_cliente_procUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object scds_cliente_procCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object scds_cliente_procBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object scds_cliente_procDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object scds_cliente_procCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object scds_cliente_procSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object scds_cliente_procPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object scds_cliente_procCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object scds_cliente_procINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object scds_cliente_procLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object scds_cliente_procBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object scds_cliente_procCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object scds_cliente_procCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object scds_cliente_procCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
  end
  object scds_produto_proc: TSQLDataSet
    CommandText = 
      'select CODPRODUTO'#13#10', CODPRO'#13#10', PRODUTO'#13#10', UNIDADEMEDIDA'#13#10', QTDE_' +
      'PCT'#13#10', ICMS'#13#10', CODALMOXARIFADO'#13#10', PRECO_COMPRAULTIMO as  VALORUN' +
      'ITARIOATUAL'#13#10', PRECO_VENDA AS VALOR_PRAZO'#13#10', TIPO  '#13#10', ESTOQUEAT' +
      'UAL '#13#10', LOCALIZACAO, NCM'#13#10', LOTES  , PRECO_COMPRAMEDIO AS PRECOM' +
      'EDIO, PESO_QTDE, COD_COMISSAO, RATEIO, conta_despesa , IPI, OBS,' +
      ' ORIGEM '#13#10'from LISTAPRODUTO(:CODPRODUTO, :CODPRO, '#39'TODOSGRUPOS'#39',' +
      ' '#39'TODOSSUBGRUPOS'#39','#39'TODASMARCAS'#39', '#39'TODASAPLICACOES'#39',0)'#13#10
    MaxBlobSize = -1
    Params = <
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
    SQLConnection = sqlsisAdimin
    Left = 774
    Top = 330
    object scds_produto_procCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object scds_produto_procPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produto_procUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object scds_produto_procQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object scds_produto_procICMS: TFloatField
      FieldName = 'ICMS'
    end
    object scds_produto_procCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object scds_produto_procVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
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
    object scds_produto_procLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object scds_produto_procPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object scds_produto_procPRECOMEDIO: TFloatField
      FieldName = 'PRECOMEDIO'
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
    object scds_produto_procIPI: TFloatField
      FieldName = 'IPI'
    end
    object scds_produto_procOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object scds_produto_procORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 15
    end
    object scds_produto_procNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
  end
  object proc_empresa: TSQLDataSet
    CommandText = 'EMPRESA'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 502
    Top = 184
    object proc_empresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object proc_empresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object proc_empresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object proc_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object proc_empresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object proc_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object proc_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object proc_empresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object proc_empresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object proc_empresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object proc_empresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object proc_empresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object proc_empresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object proc_empresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object proc_empresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object proc_empresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object proc_empresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object proc_empresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object proc_empresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object proc_empresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
  end
  object scds_movimento_proc: TSQLDataSet
    CommandText = 
      'select mov.CODMOVIMENTO, mov.CODCLIENTE, mov.DATAMOVIMENTO, cli.' +
      'NOMECLIENTE from MOVIMENTO mov inner  join CLIENTES cli on cli.C' +
      'ODCLIENTE=mov.CODCLIENTE where cli.NOMECLIENTE like :pNOMECLIENT' +
      'E order by mov.DATAMOVIMENTO desc '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pNOMECLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 544
    Top = 32
    object scds_movimento_procCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object scds_movimento_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scds_movimento_procDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object scds_movimento_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object scds_usuario_proc: TSQLClientDataSet
    CommandText = 
      'select * from USUARIO where  ((NOMEUSUARIO like :PUSUARIO) or  (' +
      'CODUSUARIO = :pCODUSU))  and ((PERFIL = :pPerfil ) or (PERFIL = ' +
      ':pPerfil1)) and STATUS = 1 order by NOMEUSUARIO'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODUSU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPerfil'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPerfil1'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 544
    Top = 88
    object scds_usuario_procCODUSUARIO: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scds_usuario_procNOMEUSUARIO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object scds_usuario_procSTATUS: TSmallintField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Required = True
    end
    object scds_usuario_procPERFIL: TStringField
      DisplayLabel = 'Perfil'
      FieldName = 'PERFIL'
      Size = 15
    end
  end
  object Proc_end_cli: TSQLClientDataSet
    CommandText = 
      'select distinct CIDADE  from ENDERECOCLIENTE  '#13#10'where CIDADE lik' +
      'e :pcidade'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pcidade'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 739
    Top = 121
    object Proc_end_cliCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object scds_NaturezaProcura: TSQLClientDataSet
    CommandText = 
      'select * from NATUREZAOPERACAO '#13#10'where DESCNATUREZA like :pDESCN' +
      'ATUREZA '#13#10'or CODNATUREZA=:pCODNATUREZA '
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pDESCNATUREZA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODNATUREZA'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 736
    Top = 8
    object scds_NaturezaProcuraCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object scds_NaturezaProcuraDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      Required = True
      Size = 30
    end
    object scds_NaturezaProcuraGERATITULO: TSmallintField
      FieldName = 'GERATITULO'
      Required = True
    end
    object scds_NaturezaProcuraTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      Required = True
    end
    object scds_NaturezaProcuraTIPOMOVIMENTO: TSmallintField
      FieldName = 'TIPOMOVIMENTO'
    end
    object scds_NaturezaProcuraBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
    end
  end
  object scds_venda_proc: TSQLDataSet
    CommandText = 
      'select ven.CODCLIENTE, ven.DATAVENDA, ven.NOTAFISCAL, ven.STATUS' +
      ', ven.VALOR, ven.CODVENDA, cli.NOMECLIENTE from VENDA ven'#13#10'inner' +
      ' join CLIENTES cli on cli.CODCLIENTE=ven.CODCLIENTE where CODMOV' +
      'IMENTO=:pCODMOVIMENTO '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 632
    Top = 128
    object scds_venda_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scds_venda_procDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      Required = True
    end
    object scds_venda_procNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object scds_venda_procSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object scds_venda_procVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object scds_venda_procCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object scds_venda_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object s_7: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME, RATEIO, CODREDUZIDO from PLANO where' +
      ' plnCtaMain(CONTA) = :PCONTARECEITA and CONSOLIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTARECEITA'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 253
    Top = 184
    object s_7CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_7CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_7NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object s_7RATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object s_7CODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 15
    end
  end
  object d_7: TDataSetProvider
    DataSet = s_7
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 251
    Top = 240
  end
  object cds_7_contas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTARECEITA'
        ParamType = ptInput
      end>
    ProviderName = 'd_7'
    Left = 238
    Top = 288
    object cds_7_contasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_7_contasCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_7_contasNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object cds_7_contasRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object cds_7_contasCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 15
    end
  end
  object scds_forn_proc: TSQLClientDataSet
    CommandText = 
      'select f.CODFORNECEDOR, f.NOMEFORNECEDOR, f.RAZAOSOCIAL, ef.DDD,' +
      ' ef.TELEFONE,  f.PRAZOPAGAMENTO, f.CFOP, ef.UF , f.CODFISCAL '#13#10'f' +
      'rom FORNECEDOR f'#13#10'left outer join ENDERECOFORNECEDOR EF on EF.CO' +
      'DFORNECEDOR = F.CODFORNECEDOR'#13#10'where ((f.NOMEFORNECEDOR like :pF' +
      'ORNECEDOR) or (f.RAZAOSOCIAL like :pRAZAO) or (f.CODFORNECEDOR =' +
      ' :pCODFORNECEDOR)) '#13#10'and  (f.status = :pStatus) '#13#10'and  (((f.segm' +
      'ento = :pSegmento) or (f.segmento = 1) ) or (:pSegmento = 1 ))'#13#10 +
      'and ( (ef.TIPOEND = 0) or (ef.TIPOEND is null) )'#13#10'order by f.NOM' +
      'EFORNECEDOR'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pFORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pRAZAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODFORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pStatus'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pSegmento'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pSegmento'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 737
    Top = 61
    object scds_forn_procCODFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scds_forn_procNOMEFORNECEDOR: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object scds_forn_procRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object scds_forn_procDDD: TSmallintField
      FieldName = 'DDD'
    end
    object scds_forn_procTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Size = 9
    end
    object scds_forn_procPRAZOPAGAMENTO: TSmallintField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZOPAGAMENTO'
    end
    object scds_forn_procCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object scds_forn_procUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object scds_forn_procCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object cds_produto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pPRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_produto'
    OnNewRecord = cds_produtoNewRecord
    OnReconcileError = cds_produtoReconcileError
    Left = 455
    Top = 235
    object cds_produtoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_produtoFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_produtoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_produtoMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_produtoUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_produtoDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_produtoESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds_produtoESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds_produtoESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds_produtoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds_produtoVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_produtoVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_produtoICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_produtoCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_produtoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
      Precision = 9
      Size = 2
    end
    object cds_produtoMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoCOD_BARRA: TStringField
      Alignment = taCenter
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
      EditFormat = ',##0.00'
    end
    object cds_produtoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_produtoRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_produtoCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_produtoCODPRO: TStringField
      Alignment = taRightJustify
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_produtoQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_produtoPRODUTO: TStringField
      DisplayWidth = 300
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object cds_produtoPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object cds_produtoCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_produtoCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_produtoDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cds_produtoMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds_produtoPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_produtoDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_produtoFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_produtoUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_produtoLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_produtoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_produtoTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object cds_produtoVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_produtoGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_produtoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_produtoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object cds_produtoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cds_produtoIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_produtoIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_produtoIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_produtoTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
    object cds_produtoOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object cds_produtoPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
  end
  object dsp_produto: TDataSetProvider
    DataSet = sds_produto
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 391
    Top = 235
  end
  object sds_produto: TSQLDataSet
    CommandText = 
      'select * from PRODUTOS '#13#10'where ((CODPRODUTO = :pPRODUTO) or (:pP' +
      'roduto = 9999999))'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pPRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 321
    Top = 235
    object sds_produtoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_produtoFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_produtoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_produtoMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_produtoUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_produtoDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_produtoCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_produtoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoPRODUTO: TStringField
      DisplayWidth = 300
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object sds_produtoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_produtoMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_produtoRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_produtoCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_produtoCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_produtoQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_produtoCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_produtoDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_produtoDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_produtoFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_produtoUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_produtoLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_produtoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_produtoTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object sds_produtoVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_produtoGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_produtoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_produtoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object sds_produtoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object sds_produtoIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_produtoIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_produtoIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_produtoTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
    object sds_produtoOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object sds_produtoPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
  end
  object sds_cm: TSQLDataSet
    CommandText = 
      'select * from COMISSAO '#13#10'where ((COD_COMISSAO = :pcod) or (:pcod' +
      ' = 9999999)) '#13#10'or CODIGO = :CODIGO'
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
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 527
    Top = 240
    object sds_cmCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cmCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_cmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cmINDICE: TStringField
      FieldName = 'INDICE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cmLB: TStringField
      FieldName = 'LB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cmCM: TStringField
      FieldName = 'CM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsp_cm: TDataSetProvider
    DataSet = sds_cm
    UpdateMode = upWhereKeyOnly
    Left = 733
    Top = 401
  end
  object cds_cm: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cm'
    Left = 581
    Top = 239
    object cds_cmCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cds_cmCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_cmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cmINDICE: TStringField
      FieldName = 'INDICE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cmLB: TStringField
      FieldName = 'LB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cmCM: TStringField
      FieldName = 'CM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object scds_compra_proc: TSQLClientDataSet
    CommandText = 
      'select com.CODFORNECEDOR, com.DATACOMPRA, com.NOTAFISCAL, com.ST' +
      'ATUS, com.VALOR, com.CODCOMPRA, forn.NOMEFORNECEDOR from COMPRA ' +
      'com '#13#10'inner join FORNECEDOR forn on forn.CODFORNECEDOR=com.CODFO' +
      'RNECEDOR where CODMOVIMENTO=:pCODMOVIMENTO '
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOVIMENTO'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 658
    Top = 186
    object scds_compra_procCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object scds_compra_procDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object scds_compra_procNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object scds_compra_procSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object scds_compra_procVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object scds_compra_procCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object scds_compra_procNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object scds_Mov_Det_proc: TSQLClientDataSet
    CommandText = 
      'select movd.CODDETALHE, movd.CODPRODUTO, movd.QTDE_ALT,prod.PROD' +
      'UTO, movd.PRECO, movd.QUANTIDADE, movd.VALTOTAL, movd.CODMOVIMEN' +
      'TO from MOVIMENTODETALHE movd inner join PRODUTOS prod on prod.C' +
      'ODPRODUTO=movd.CODPRODUTO where CODMOVIMENTO=:pCODMOVIMENTO'
    Aggregates = <>
    AggregatesActive = True
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOVIMENTO'
        ParamType = ptInput
      end>
    OnCalcFields = scds_Mov_Det_procCalcFields
    DBConnection = sqlsisAdimin
    Left = 625
    Top = 73
    object scds_Mov_Det_procCODPRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODPRODUTO'
    end
    object scds_Mov_Det_procPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      Required = True
      Size = 200
    end
    object scds_Mov_Det_procPRECO: TFloatField
      DisplayWidth = 12
      FieldName = 'PRECO'
      currency = True
    end
    object scds_Mov_Det_procQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 12
      FieldName = 'QUANTIDADE'
    end
    object scds_Mov_Det_procCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object scds_Mov_Det_procCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object scds_Mov_Det_procQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object scds_Mov_Det_procVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object scds_Mov_Det_procVALORTOT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VALORTOT'
    end
    object scds_Mov_Det_procTotalPedido: TAggregateField
      FieldName = 'TotalPedido'
      Active = True
      currency = True
      Expression = 'Sum(ValorTot)'
    end
  end
  object s_1: TSQLDataSet
    CommandText = 'select * from PLANO order by CONTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 328
    Top = 48
    object s_1CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object s_1CONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object s_1CONTAPAI: TStringField
      FieldName = 'CONTAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_1NOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object s_1CONSOLIDA: TStringField
      FieldName = 'CONSOLIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s_1RATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_1CODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_1TIPOLANC: TStringField
      FieldName = 'TIPOLANC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object d_1: TDataSetProvider
    DataSet = s_1
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 48
  end
  object c_1_planoc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'd_1'
    Left = 464
    Top = 56
    object c_1_planocCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object c_1_planocCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object c_1_planocCONTAPAI: TStringField
      FieldName = 'CONTAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object c_1_planocNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object c_1_planocCONSOLIDA: TStringField
      FieldName = 'CONSOLIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_1_planocDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object c_1_planocRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_1_planocCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object c_1_planocTIPOLANC: TStringField
      FieldName = 'TIPOLANC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from PLANO_RATEIO where CONTA = :PCONTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTA'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 328
    Top = 80
    object s_2COD_PLANO_RATEIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'COD_PLANO_RATEIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object s_2CCUSTO: TStringField
      FieldName = 'CCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_2PERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      ProviderFlags = [pfInUpdate]
    end
    object StringField1: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 80
  end
  object c_2_planoc_rat: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTA'
        ParamType = ptInput
      end>
    ProviderName = 'd_2'
    Left = 464
    Top = 80
    object c_2_planoc_ratCOD_PLANO_RATEIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'COD_PLANO_RATEIO'
    end
    object c_2_planoc_ratCCUSTO: TStringField
      FieldName = 'CCUSTO'
      Size = 15
    end
    object c_2_planoc_ratPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object c_2_planoc_ratCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
  end
  object sds_serie: TSQLDataSet
    CommandText = 
      'select CODSERIE, SERIE, ULTIMO_NUMERO, ICMS_DESTACADO, MODELO fr' +
      'om SERIES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 327
    Top = 119
    object sds_serieCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object sds_serieSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object sds_serieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object sds_serieICMS_DESTACADO: TFloatField
      FieldName = 'ICMS_DESTACADO'
    end
    object sds_serieMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
  end
  object dsp_serie: TDataSetProvider
    DataSet = sds_serie
    Left = 407
    Top = 119
  end
  object cds_serie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_serie'
    Left = 463
    Top = 119
    object cds_serieCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object cds_serieSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object cds_serieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object cds_serieICMS_DESTACADO: TFloatField
      FieldName = 'ICMS_DESTACADO'
    end
    object cds_serieMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
  end
  object sds: TSQLDataSet
    CommandText = 'select * from PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 304
    Top = 301
    object sdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sdsPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object sdsCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object sdsDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object sdsD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object sdsD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object sdsD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object sdsD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object sdsD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object sdsD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object sdsD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object sdsD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object sdsD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object sdsINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 301
  end
  object parametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 432
    Top = 300
    object parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object parametroD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object parametroD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object parametroD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object parametroD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object parametroD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object scds_serie_proc: TSQLClientDataSet
    CommandText = 
      'select CODSERIE, SERIE, ULTIMO_NUMERO, NOTAFISCAL from SERIES wh' +
      'ere SERIE like :pSERIE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pSERIE'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 544
    Top = 135
    object scds_serie_procCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object scds_serie_procSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object scds_serie_procULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object scds_serie_procNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
  end
  object sds_cr: TSQLDataSet
    CommandText = 
      'select rec.*, cli.NOMECLIENTE, cli.RA,almox.ALMOXARIFADO, usu.NO' +
      'MEUSUARIO, vend.NOMEUSUARIO as VENDEDOR from RECEBIMENTO rec '#13#10'i' +
      'nner join  CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE '#13#10'left ' +
      'outer join ALMOXARIFADO almox on almox.CODALMOXARIFADO=rec.CODAL' +
      'MOXARIFADO '#13#10'left outer join USUARIO usu on usu.CODUSUARIO=rec.C' +
      'ODUSUARIO  '#13#10'left outer  join USUARIO vend on vend.CODUSUARIO=re' +
      'c.CODVENDEDOR'#13#10'where CODRECEBIMENTO = :pCODREC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODREC'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 671
    Top = 408
    object sds_crCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_crTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object sds_crEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_crDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sds_crVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sds_crFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_crDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sds_crCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_crNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_crVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
    object sds_crNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_crJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crPARCELAS: TSmallintField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_crNF: TIntegerField
      FieldName = 'NF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crBL: TIntegerField
      FieldName = 'BL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_crRA: TStringField
      FieldName = 'RA'
      ProviderFlags = []
      Size = 10
    end
    object sds_crDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
    end
    object sds_crCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
    end
  end
  object dsp_cr: TDataSetProvider
    DataSet = sds_cr
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 535
    Top = 336
  end
  object cds_cr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODREC'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cr'
    OnReconcileError = cds_crReconcileError
    Left = 575
    Top = 336
    object cds_crCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_crTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_crEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_crCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_crDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_crSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnGetText = cds_crSTATUSGetText
      FixedChar = True
      Size = 2
    end
    object cds_crVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds_crCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cds_crFORMARECEBIMENTOGetText
      FixedChar = True
      Size = 1
    end
    object cds_crVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_crCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_crHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cds_crCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'#39'hs. de'#39'  dd '#39'de'#39' mmmmm '#39'de'#39' yyyy'#39'.'#39
    end
    object cds_crALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_crNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_crNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_crVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
    object cds_crJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_crPARCELAS: TSmallintField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_crNF: TIntegerField
      FieldName = 'NF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crBL: TIntegerField
      FieldName = 'BL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_crDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_crCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
    end
  end
  object dsp_rec: TDataSetProvider
    DataSet = sds_rec
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 290
  end
  object sds_rec: TSQLDataSet
    CommandText = 'select * from RECEBIMENTO where CODRECEBIMENTO = :PREC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PREC'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 488
    Top = 290
    object sds_recTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object sds_recEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_recDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sds_recVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sds_recCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sds_recVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sds_recCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object sds_recFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_recCODRECEBIMENTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_rec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PREC'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_rec'
    OnReconcileError = cds_recReconcileError
    Left = 578
    Top = 290
    object cds_recTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_recEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_recVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_recCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds_recCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_recVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_recDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object cds_recCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cds_recCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
  end
  object sdsBanco: TSQLDataSet
    CommandText = 'select * from BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 326
    Top = 174
    object sdsBancoCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsBancoBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object sdsBancoNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsBancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object sdsBancoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object sdsBancoCODIGO_EMPRESA: TStringField
      FieldName = 'CODIGO_EMPRESA'
      Size = 10
    end
    object sdsBancoCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object sdsBancoDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsBancoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sdsBancoDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsBancoCODIGO_PLANO: TIntegerField
      FieldName = 'CODIGO_PLANO'
    end
    object sdsBancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 100
    end
    object sdsBancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 100
    end
    object sdsBancoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 100
    end
    object sdsBancoINSTRUCAO4: TStringField
      FieldName = 'INSTRUCAO4'
      Size = 100
    end
    object sdsBancoCEDENTE: TStringField
      FieldName = 'CEDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBancoNCONVENIO: TIntegerField
      FieldName = 'NCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBancoESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsBancoACEITE: TStringField
      FieldName = 'ACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sdsBancoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBancoLOCALPGTO: TStringField
      FieldName = 'LOCALPGTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBancoN_BANCO: TStringField
      FieldName = 'N_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBancoDIGITOBANCO: TIntegerField
      FieldName = 'DIGITOBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBancoVARIACAO: TStringField
      FieldName = 'VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsBancoCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBancoLAYOUT_BL: TStringField
      FieldName = 'LAYOUT_BL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBancoLAYOUT_RM: TStringField
      FieldName = 'LAYOUT_RM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBancoRESP_EMISSAO: TStringField
      FieldName = 'RESP_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBancoIMP_COMPROVANTE: TStringField
      FieldName = 'IMP_COMPROVANTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsBancoPASTA_REMESSA: TStringField
      FieldName = 'PASTA_REMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBancoPASTA_RETORNO: TStringField
      FieldName = 'PASTA_RETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBancoNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsBancoCC_BANCO: TIntegerField
      FieldName = 'CC_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBancoMORAJUROS: TStringField
      FieldName = 'MORAJUROS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBancoPERCMULTA: TFloatField
      FieldName = 'PERCMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBancoPROTESTO: TStringField
      FieldName = 'PROTESTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    Left = 390
    Top = 174
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    Left = 455
    Top = 174
    object cdsBancoCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBancoBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object cdsBancoNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object cdsBancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object cdsBancoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object cdsBancoCODIGO_EMPRESA: TStringField
      FieldName = 'CODIGO_EMPRESA'
      Size = 10
    end
    object cdsBancoCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object cdsBancoDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsBancoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object cdsBancoDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsBancoCODIGO_PLANO: TIntegerField
      FieldName = 'CODIGO_PLANO'
    end
    object cdsBancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 100
    end
    object cdsBancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 100
    end
    object cdsBancoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 100
    end
    object cdsBancoINSTRUCAO4: TStringField
      FieldName = 'INSTRUCAO4'
      Size = 100
    end
    object cdsBancoCEDENTE: TStringField
      FieldName = 'CEDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBancoNCONVENIO: TIntegerField
      FieldName = 'NCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBancoESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsBancoACEITE: TStringField
      FieldName = 'ACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsBancoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBancoLOCALPGTO: TStringField
      FieldName = 'LOCALPGTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBancoN_BANCO: TStringField
      FieldName = 'N_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBancoDIGITOBANCO: TIntegerField
      FieldName = 'DIGITOBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBancoVARIACAO: TStringField
      FieldName = 'VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsBancoCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBancoLAYOUT_BL: TStringField
      FieldName = 'LAYOUT_BL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBancoLAYOUT_RM: TStringField
      FieldName = 'LAYOUT_RM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBancoRESP_EMISSAO: TStringField
      FieldName = 'RESP_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBancoIMP_COMPROVANTE: TStringField
      FieldName = 'IMP_COMPROVANTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsBancoPASTA_REMESSA: TStringField
      FieldName = 'PASTA_REMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBancoPASTA_RETORNO: TStringField
      FieldName = 'PASTA_RETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBancoNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBancoCC_BANCO: TIntegerField
      FieldName = 'CC_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBancoMORAJUROS: TStringField
      FieldName = 'MORAJUROS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBancoPERCMULTA: TFloatField
      FieldName = 'PERCMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBancoPROTESTO: TStringField
      FieldName = 'PROTESTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object s_4: TSQLDataSet
    CommandText = 
      'select pag.*, forn.NOMEFORNECEDOR, almox.ALMOXARIFADO, usu.NOMEU' +
      'SUARIO, vend.NOMEUSUARIO as COMPRADOR, CAST(pag.VIA AS INTEGER) ' +
      'as VIAS from PAGAMENTO pag  '#13#10'left outer join  FORNECEDOR forn o' +
      'n forn.CODFORNECEDOR = pag.CODFORNECEDOR  '#13#10'left outer join ALMO' +
      'XARIFADO almox on almox.CODALMOXARIFADO = pag.CODALMOXARIFADO '#13#10 +
      'left outer join USUARIO usu on usu.CODUSUARIO=pag.CODUSUARIO  '#13#10 +
      'left outer  join USUARIO vend on vend.CODUSUARIO=pag.CODCOMPRADO' +
      'R'#13#10'where CODPAGAMENTO = :pCODREC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODREC'
        ParamType = ptInput
        Value = '20'
      end>
    SQLConnection = sqlsisAdimin
    Left = 16
    Top = 396
    object s_4CODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object s_4TITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object s_4EMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_4DATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4DATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4CAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object s_4CONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4CONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4STATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object s_4VIAS: TIntegerField
      FieldName = 'VIAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object s_4FORMAPAGAMENTO: TStringField
      DisplayWidth = 1
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object s_4DATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object s_4HISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object s_4CODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object s_4CODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4CODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_4CODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4N_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4DATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object s_4VALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4JUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object s_4DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4PERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object s_4TROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
    end
    object s_4FUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object s_4VALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object s_4VALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4VALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4OUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4OUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object s_4PARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object s_4NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object s_4VIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object s_4ALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object s_4NOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object s_4COMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      ProviderFlags = []
      Size = 30
    end
    object s_4DATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object d_4: TDataSetProvider
    DataSet = s_4
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 80
    Top = 396
  end
  object cds_4_pagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODREC'
        ParamType = ptInput
        Value = '20'
      end>
    ProviderName = 'd_4'
    OnNewRecord = cds_4_pagarNewRecord
    OnReconcileError = cds_4_pagarReconcileError
    Left = 160
    Top = 396
    object cds_4_pagarCODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_4_pagarTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object cds_4_pagarEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_4_pagarCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_4_pagarDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_4_pagarDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_4_pagarCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnGetText = cds_4_pagarSTATUSGetText
      FixedChar = True
      Size = 2
    end
    object cds_4_pagarVIAS: TIntegerField
      FieldName = 'VIAS'
      ReadOnly = True
    end
    object cds_4_pagarFORMAPAGAMENTO: TStringField
      DisplayWidth = 1
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnGetText = cds_4_pagarFORMAPAGAMENTOGetText
      FixedChar = True
      Size = 1
    end
    object cds_4_pagarDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_4_pagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cds_4_pagarCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_4_pagarVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cds_4_pagarPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_4_pagarNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cds_4_pagarALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_4_pagarNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object cds_4_pagarCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      ProviderFlags = []
      Size = 30
    end
    object cds_4_pagarVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object cds_4_pagarDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
      EditMask = '!99/99/00;1;_'
    end
  end
  object s_1_conta: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME, RATEIO, CODREDUZIDO from PLANO where' +
      ' plnCtaMain(plnCtaMain(CONTA)) = :PCONTARECEITA '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTARECEITA'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 301
    Top = 348
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object StringField4: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object s_1_contaCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 15
    end
  end
  object d_1_conta: TDataSetProvider
    DataSet = s_1_conta
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 363
    Top = 348
  end
  object cds_1_contas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTARECEITA'
        ParamType = ptInput
      end>
    ProviderName = 'd_1_conta'
    Left = 430
    Top = 348
    object cds_1_contasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_1_contasCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_1_contasNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object cds_1_contasRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object cds_1_contasCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 15
    end
  end
  object sds_rateio: TSQLDataSet
    CommandText = 
      'select * from MOV_RATEIO where CODMOVIMENTO = :PRATEIO AND TIPO ' +
      '= :PTIPO AND CONTADEBITO = :PCONTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRATEIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PCONTA'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 481
    Top = 385
    object sds_rateioDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioCODCCUSTO: TIntegerField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioCODSERVICO: TSmallintField
      FieldName = 'CODSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_rateioVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioCONTADEBITO: TStringField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_rateioQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_rateioTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_rateioCODRATEIO: TIntegerField
      FieldName = 'CODRATEIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp_rateio: TDataSetProvider
    DataSet = sds_rateio
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 385
  end
  object cds_rateio: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'PRATEIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PCONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_rateio'
    Left = 594
    Top = 385
    object cds_rateioDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_rateioCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_rateioCODCCUSTO: TIntegerField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_rateioCODSERVICO: TSmallintField
      FieldName = 'CODSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_rateioSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_rateioCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_rateioVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
      EditFormat = ',#00.00'
    end
    object cds_rateioPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_rateioCONTADEBITO: TStringField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_rateioQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_rateioCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_rateioTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_rateioCODRATEIO: TIntegerField
      FieldName = 'CODRATEIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_rateioTotalRateio: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotalRateio'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'sum(VALOR)'
    end
    object cds_rateioTOTALPERCENTUAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTALPERCENTUAL'
      Active = True
      DisplayFormat = ',#0.0%'
      Expression = '((sum(PERCENTUAL))*100)'
    end
    object cds_rateioTotalQtde: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotalQtde'
      Active = True
      DisplayFormat = ',#0.0'
      Expression = 'sum(QTDE)'
    end
  end
  object scdsCCusto_proc: TSQLClientDataSet
    CommandText = 
      'select * from ALMOXARIFADO where ALMOXARIFADO like :pALMOX or CO' +
      'DALMOXARIFADO=:pCODALMOX'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pALMOX'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pCODALMOX'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 592
    Top = 11
    object scdsCCusto_procCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      Required = True
    end
    object scdsCCusto_procALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
  end
  object scds_transp_proc: TSQLClientDataSet
    CommandText = 
      'select transp.*, clit.CODCLIENTE from TRANSPORTADORA transp left' +
      ' join CLIENTE_TRANSP clit on clit.CODTRANSP=transp.CODTRANSP whe' +
      're transp.NOMETRANSP like :pTRANSP or transp.CODTRANSP = :pCOD o' +
      'r clit.CODCLIENTE=:pCLI'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pTRANSP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCOD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCLI'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 249
    Top = 524
    object scds_transp_procCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object scds_transp_procNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object scds_transp_procPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object scds_transp_procCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object scds_transp_procEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object scds_transp_procCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object scds_transp_procUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object scds_transp_procUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object scds_transp_procFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object scds_transp_procINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object scds_transp_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object scds_transp_procCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object scds_transp_procCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object scds_transp_procCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object scds_transp_procCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object scds_transp_procCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object scds_transp_procCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
  end
  object sdsTransp: TSQLDataSet
    CommandText = 'select * from TRANSPORTADORA where CODTRANSP=:pTRANSP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pTRANSP'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 15
    Top = 443
    object sdsTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sdsTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsTranspFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sdsTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sdsTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sdsTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sdsTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sdsTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sdsTranspFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsTranspFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object sdsTranspFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsTranspCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object sdsTranspCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object sdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sdsTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object sdsTranspEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object dspTransp: TDataSetProvider
    DataSet = sdsTransp
    UpdateMode = upWhereKeyOnly
    Left = 79
    Top = 443
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pTRANSP'
        ParamType = ptInput
      end>
    ProviderName = 'dspTransp'
    OnReconcileError = cdsTranspReconcileError
    Left = 159
    Top = 443
    object cdsTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      EditMask = 'LLL\-0000;1;_'
      Size = 16
    end
    object cdsTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsTranspFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object cdsTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object cdsTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object cdsTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object cdsTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object cdsTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object cdsTranspFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsTranspFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object cdsTranspFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsTranspCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object cdsTranspCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 15
    end
    object cdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object cdsTranspEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object s3_contabil: TSQLDataSet
    CommandText = 
      'select mov.*,  plano.NOME, plano.CODREDUZIDO  from MOVIMENTOCONT' +
      ' mov '#10'LEFT OUTER JOIN PLANO on PLANO.CONTA = mov.CONTA '#10'where mo' +
      'v.CODORIGEM = :PCOD AND mov.TIPOORIGEM = :PTIPO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PCOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTIPO'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 304
    Top = 396
    object s3_contabilCODCONT: TIntegerField
      FieldName = 'CODCONT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object s3_contabilCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s3_contabilTIPOORIGEM: TStringField
      FieldName = 'TIPOORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s3_contabilDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilCODCCUSTO: TIntegerField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilCODSERVICO: TSmallintField
      FieldName = 'CODSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilVALORCREDITO: TFloatField
      FieldName = 'VALORCREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilVALORDEBITO: TFloatField
      FieldName = 'VALORDEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilVALORORCADO: TFloatField
      FieldName = 'VALORORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilQTDECREDITO: TFloatField
      FieldName = 'QTDECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilQTDEDEBITO: TFloatField
      FieldName = 'QTDEDEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilQTDEORCADO: TFloatField
      FieldName = 'QTDEORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object s3_contabilNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 200
    end
    object s3_contabilCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      ProviderFlags = []
      Size = 15
    end
  end
  object d3_contabil: TDataSetProvider
    DataSet = s3_contabil
    UpdateMode = upWhereKeyOnly
    OnUpdateData = DSPUpdateData
    OnGetDataSetProperties = DSPGetProproperties
    Left = 368
    Top = 396
  end
  object c3_contabil: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PCOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTIPO'
        ParamType = ptInput
      end>
    ProviderName = 'd3_contabil'
    OnReconcileError = c3_contabilReconcileError
    Left = 432
    Top = 396
    object c3_contabilCODCONT: TIntegerField
      FieldName = 'CODCONT'
      Required = True
    end
    object c3_contabilCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      Required = True
    end
    object c3_contabilTIPOORIGEM: TStringField
      FieldName = 'TIPOORIGEM'
      Size = 10
    end
    object c3_contabilDATA: TDateField
      FieldName = 'DATA'
    end
    object c3_contabilCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object c3_contabilCODCCUSTO: TIntegerField
      FieldName = 'CODCCUSTO'
    end
    object c3_contabilCODSERVICO: TSmallintField
      FieldName = 'CODSERVICO'
    end
    object c3_contabilSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object c3_contabilCONTA: TStringField
      FieldName = 'CONTA'
    end
    object c3_contabilVALORCREDITO: TFloatField
      FieldName = 'VALORCREDITO'
    end
    object c3_contabilVALORDEBITO: TFloatField
      FieldName = 'VALORDEBITO'
    end
    object c3_contabilVALORORCADO: TFloatField
      FieldName = 'VALORORCADO'
    end
    object c3_contabilQTDECREDITO: TFloatField
      FieldName = 'QTDECREDITO'
    end
    object c3_contabilQTDEDEBITO: TFloatField
      FieldName = 'QTDEDEBITO'
    end
    object c3_contabilQTDEORCADO: TFloatField
      FieldName = 'QTDEORCADO'
    end
    object c3_contabilNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object c3_contabilCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 15
    end
  end
  object sds_nf: TSQLDataSet
    CommandText = 
      'select nf.*'#13#10'        , transp.*'#13#10'        , nat.CFNOME as DESCNAT' +
      'UREZA '#13#10'        , cli.NOMECLIENTE '#13#10'from NOTAFISCAL nf left join' +
      ' transportadora transp on transp.CODTRANSP=nf.CODTRANSP'#13#10'inner j' +
      'oin CFOP nat ON nat.CFCOD = nf.CFOP '#13#10'left outer join CLIENTES c' +
      'li on '#13#10'cli.CODCLIENTE=nf.CODCLIENTE '#13#10' where nf.NUMNF=:pNF'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 487
    Top = 434
    object sds_nfNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sds_nfNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_nfNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_nfQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_nfESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nfCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = []
      Size = 50
    end
    object sds_nfPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      ProviderFlags = []
      Size = 16
    end
    object sds_nfCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
    end
    object sds_nfEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = []
      Size = 80
    end
    object sds_nfCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = []
      Size = 50
    end
    object sds_nfUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sds_nfUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sds_nfFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sds_nfINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = []
    end
    object sds_nfNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object sds_nfNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_nfCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_nfPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nfPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nfFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
  end
  object dsp_nf: TDataSetProvider
    DataSet = sds_nf
    UpdateMode = upWhereKeyOnly
    Left = 535
    Top = 435
  end
  object cds_nf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_nf'
    Left = 575
    Top = 435
    object cds_nfNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object cds_nfNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_nfNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_nfQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_nfESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nfCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = []
      Size = 50
    end
    object cds_nfPLACATRANSP: TStringField
      DisplayWidth = 16
      FieldName = 'PLACATRANSP'
      ProviderFlags = []
      Size = 16
    end
    object cds_nfCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
    end
    object cds_nfEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = []
      Size = 80
    end
    object cds_nfCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = []
      Size = 50
    end
    object cds_nfUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cds_nfUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cds_nfFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cds_nfINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = []
    end
    object cds_nfNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object cds_nfNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_nfCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_nfPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_nfPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_nfFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
  end
  object scds_nf_proc: TSQLClientDataSet
    CommandText = 
      'select CODVENDA, DTAEMISSAO, DTASAIDA, NOTASERIE, NUMNF, NOTAFIS' +
      'CAL from NOTAFISCAL where CODVENDA=:pCODVENDA'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODVENDA'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 688
    Top = 467
    object scds_nf_procCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object scds_nf_procDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object scds_nf_procDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object scds_nf_procNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object scds_nf_procNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
  end
  object sds_param: TSQLDataSet
    CommandText = 'select * from PARAMETRO ORDER BY PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 847
    Top = 271
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
    Left = 887
    Top = 271
  end
  object cds_param: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_param'
    Left = 943
    Top = 271
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
    SQLConnection = sqlsisAdimin
    Left = 840
    Top = 208
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
    object sds_EmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_EmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sds_EmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sds_EmpresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sds_EmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sds_EmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object sds_EmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object sds_EmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sds_EmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object sds_EmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object sds_EmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object sds_EmpresaTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object sds_EmpresaIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object sds_EmpresaCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object sds_EmpresaCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      FixedChar = True
    end
    object sds_EmpresaCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      FixedChar = True
      Size = 14
    end
    object sds_EmpresaCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
      FixedChar = True
      Size = 11
    end
    object sds_EmpresaCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      FixedChar = True
      Size = 10
    end
    object sds_EmpresaCONTADOR_END: TStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object sds_EmpresaCONTADOR_NUMEND: TStringField
      FieldName = 'CONTADOR_NUMEND'
      FixedChar = True
      Size = 7
    end
    object sds_EmpresaCONTADOR_COMPL: TStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object sds_EmpresaCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object sds_EmpresaCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 14
    end
    object sds_EmpresaCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 14
    end
    object sds_EmpresaCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object sds_EmpresaCONTADOR_COD_MUN: TStringField
      FieldName = 'CONTADOR_COD_MUN'
      FixedChar = True
      Size = 10
    end
    object sds_EmpresaINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object sds_EmpresaINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object sds_EmpresaCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object sds_EmpresaINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object sds_EmpresaCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object sds_EmpresaCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object sds_EmpresaINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object sds_EmpresaINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object sds_EmpresaINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object sds_EmpresaBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object sds_EmpresaINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object sds_EmpresaCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object sds_EmpresaINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object sds_EmpresaNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object sds_EmpresaCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object sds_EmpresaINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object sds_EmpresaINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object sds_EmpresaINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object sds_EmpresaINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object sds_EmpresaCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object sds_EmpresaINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object sds_EmpresaINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object sds_EmpresaINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
    object sds_EmpresaINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
    object sds_EmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 60
    end
    object sds_EmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object sds_EmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sds_EmpresaCNPJPREFEITURA: TStringField
      FieldName = 'CNPJPREFEITURA'
      Size = 14
    end
    object sds_EmpresaNOMEPREFEITURA: TStringField
      FieldName = 'NOMEPREFEITURA'
      Size = 50
    end
    object sds_EmpresaMODELOCUPOM: TStringField
      FieldName = 'MODELOCUPOM'
      Size = 2
    end
    object sds_EmpresaECFMOD: TStringField
      FieldName = 'ECFMOD'
    end
    object sds_EmpresaECFFAB: TStringField
      FieldName = 'ECFFAB'
    end
    object sds_EmpresaECFCX: TStringField
      FieldName = 'ECFCX'
      Size = 3
    end
  end
  object dsp_empresa: TDataSetProvider
    DataSet = sds_Empresa
    Left = 888
    Top = 208
  end
  object cds_empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_empresa'
    Left = 928
    Top = 208
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
    object cds_empresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_empresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cds_empresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cds_empresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cds_empresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object cds_empresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object cds_empresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cds_empresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object cds_empresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object cds_empresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object cds_empresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object cds_empresaTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object cds_empresaIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object cds_empresaCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object cds_empresaCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      FixedChar = True
    end
    object cds_empresaCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      FixedChar = True
      Size = 14
    end
    object cds_empresaCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
      FixedChar = True
      Size = 11
    end
    object cds_empresaCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      EditMask = '00000\-999;1;_'
      FixedChar = True
      Size = 10
    end
    object cds_empresaCONTADOR_END: TStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object cds_empresaCONTADOR_NUMEND: TStringField
      FieldName = 'CONTADOR_NUMEND'
      FixedChar = True
      Size = 7
    end
    object cds_empresaCONTADOR_COMPL: TStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object cds_empresaCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object cds_empresaCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      EditMask = '!\(999\)0000-0000;1;_'
      Size = 14
    end
    object cds_empresaCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      EditMask = '!\(999\)0000-0000;1;_'
      Size = 14
    end
    object cds_empresaCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object cds_empresaCONTADOR_COD_MUN: TStringField
      FieldName = 'CONTADOR_COD_MUN'
      FixedChar = True
      Size = 10
    end
    object cds_empresaINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object cds_empresaINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object cds_empresaCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object cds_empresaINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object cds_empresaCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object cds_empresaCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object cds_empresaINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object cds_empresaINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object cds_empresaINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object cds_empresaBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object cds_empresaINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object cds_empresaCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object cds_empresaINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object cds_empresaNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object cds_empresaCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object cds_empresaINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object cds_empresaINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object cds_empresaINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object cds_empresaINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object cds_empresaCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object cds_empresaINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object cds_empresaINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object cds_empresaINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
    object cds_empresaINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
    object cds_empresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 60
    end
    object cds_empresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object cds_empresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cds_empresaCNPJPREFEITURA: TStringField
      FieldName = 'CNPJPREFEITURA'
      Size = 14
    end
    object cds_empresaNOMEPREFEITURA: TStringField
      FieldName = 'NOMEPREFEITURA'
      Size = 50
    end
    object cds_empresaMODELOCUPOM: TStringField
      FieldName = 'MODELOCUPOM'
      Size = 2
    end
    object cds_empresaECFMOD: TStringField
      FieldName = 'ECFMOD'
    end
    object cds_empresaECFFAB: TStringField
      FieldName = 'ECFFAB'
    end
    object cds_empresaECFCX: TStringField
      FieldName = 'ECFCX'
      Size = 3
    end
  end
  object sds_usuario: TSQLDataSet
    CommandText = 'select * from USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 848
    Top = 328
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
    Left = 896
    Top = 324
  end
  object cds_usuario_cadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_usuario'
    Left = 952
    Top = 328
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
    OnNewRecord = cds_UsuarioNewRecord
    Left = 984
    Top = 400
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
    object cds_UsuarioMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_UsuarioP1: TStringField
      FieldName = 'P1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_UsuarioP2: TStringField
      FieldName = 'P2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    UpdateMode = upWhereKeyOnly
    Left = 904
    Top = 400
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select * from acesso_senha'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 824
    Top = 400
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
    object SQLDataSet2MICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet2P1: TStringField
      FieldName = 'P1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet2P2: TStringField
      FieldName = 'P2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object sdsCCusto: TSQLDataSet
    CommandText = 'select * from ALMOXARIFADO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 15
    Top = 595
    object sdsCCustoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object sdsCCustoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
  end
  object dspCCusto: TDataSetProvider
    DataSet = sdsCCusto
    Left = 79
    Top = 587
  end
  object cdsCCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCCusto'
    Left = 158
    Top = 591
    object cdsCCustoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsCCustoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
  end
  object sds_itens: TSQLDataSet
    CommandText = 'select * from ITENS_TRANSP '#13#10'where NUMNF = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 504
    Top = 490
    object sds_itensID_NF: TIntegerField
      FieldName = 'ID_NF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_itensNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_itensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_itensCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_itensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_itensUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_itensICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_itensPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_itensTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_itens: TDataSetProvider
    DataSet = sds_itens
    UpdateMode = upWhereKeyOnly
    Left = 568
    Top = 490
  end
  object cds_itens: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_itens'
    Left = 624
    Top = 490
    object cds_itensID_NF: TIntegerField
      FieldName = 'ID_NF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_itensNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_itensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_itensCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cds_itensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_itensUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_itensICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_itensPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_itensTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
  end
  object sdsPermissao: TSQLDataSet
    CommandText = 
      'select * from PERMISSAO '#13#10'where LOGIN = :Plogin and TABELA = :Pt' +
      'abela'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Plogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ptabela'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 752
    Top = 548
    object sdsPermissaoCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sdsPermissaoTABELA: TStringField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsPermissaoLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsPermissaoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsPermissaoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsPermissaoALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsPermissaoCONSULTAR: TStringField
      FieldName = 'CONSULTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dstPermissao: TDataSetProvider
    DataSet = sdsPermissao
    UpdateMode = upWhereKeyOnly
    Left = 832
    Top = 514
  end
  object cdsPermissao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Plogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ptabela'
        ParamType = ptInput
      end>
    ProviderName = 'dstPermissao'
    Left = 896
    Top = 514
    object cdsPermissaoCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPermissaoTABELA: TStringField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPermissaoLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPermissaoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPermissaoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPermissaoALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPermissaoCONSULTAR: TStringField
      FieldName = 'CONSULTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object sds_Login: TSQLDataSet
    CommandText = 'select * from LOG_ACESSO '#13#10'where MICRO = :maquina'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'maquina'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 320
    Top = 508
    object sds_LoginLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object sds_LoginMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_LoginMODULO: TStringField
      FieldName = 'MODULO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_LoginID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_LoginUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_Login: TDataSetProvider
    DataSet = sds_Login
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 508
  end
  object cds_Login: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'maquina'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Login'
    Left = 440
    Top = 509
    object cds_LoginLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoginMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_LoginMODULO: TStringField
      FieldName = 'MODULO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_LoginID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoginUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object sdsTipoVisita: TSQLDataSet
    CommandText = 'select * from TIPO_VISITAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 832
    Top = 8
    object sdsTipoVisitaCODTIPOVISITA: TIntegerField
      FieldName = 'CODTIPOVISITA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTipoVisitaVISITA: TStringField
      FieldName = 'VISITA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dspTipoVisita: TDataSetProvider
    DataSet = sdsTipoVisita
    UpdateMode = upWhereKeyOnly
    Left = 904
    Top = 8
  end
  object cdsTipoVisita: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoVisita'
    Left = 976
    Top = 8
    object cdsTipoVisitaCODTIPOVISITA: TIntegerField
      FieldName = 'CODTIPOVISITA'
      Required = True
    end
    object cdsTipoVisitaVISITA: TStringField
      FieldName = 'VISITA'
      Size = 60
    end
  end
  object sdsVisita: TSQLDataSet
    CommandText = 
      'select * from VISITAS '#13#10'where ((CODCLIENTE = :id) or (:id = 9999' +
      '999)) '#13#10'or CODVISITA = :cod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 832
    Top = 64
    object sdsVisitaCODVISITA: TIntegerField
      FieldName = 'CODVISITA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsVisitaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVisitaVISITA: TStringField
      FieldName = 'VISITA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsVisitaDATAULTIMA: TDateField
      FieldName = 'DATAULTIMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVisitaDATAPROXIMA: TDateField
      FieldName = 'DATAPROXIMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVisitaDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspVisita: TDataSetProvider
    DataSet = sdsVisita
    UpdateMode = upWhereKeyOnly
    Left = 901
    Top = 64
  end
  object cdsVisita: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    ProviderName = 'dspVisita'
    Left = 960
    Top = 64
    object cdsVisitaCODVISITA: TIntegerField
      FieldName = 'CODVISITA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVisitaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVisitaVISITA: TStringField
      FieldName = 'VISITA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsVisitaDATAULTIMA: TDateField
      FieldName = 'DATAULTIMA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsVisitaDATAPROXIMA: TDateField
      FieldName = 'DATAPROXIMA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsVisitaDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sds_romaneio: TSQLDataSet
    CommandText = 
      'select ro.*'#13#10'          ,cli.NOMECLIENTE'#13#10'          ,ender.TELEFO' +
      'NE'#13#10'          ,ender.TELEFONE1'#13#10'          ,ender.TELEFONE2'#13#10'from' +
      ' ROMANEIO_F ro '#13#10'left outer join CLIENTES cli on cli.CODCLIENTE ' +
      '= ro.CODCLIENTE '#13#10'left outer join ENDERECOCLIENTE ender on ender' +
      '.CODCLIENTE = cli.CODCLIENTE '#13#10'where ro.CODROMANEIO = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 780
    Top = 456
    object sds_romaneioCODROMANEIO_F: TIntegerField
      FieldName = 'CODROMANEIO_F'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_romaneioCODROMANEIO: TIntegerField
      FieldName = 'CODROMANEIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_romaneioCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_romaneioPEDIDO: TStringField
      FieldName = 'PEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_romaneioKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_romaneioHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_romaneioOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_romaneioVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_romaneioTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_romaneioCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_romaneioNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_romaneioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object sds_romaneioTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = []
      Size = 9
    end
    object sds_romaneioTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = []
      Size = 9
    end
  end
  object dsp_romaneio: TDataSetProvider
    DataSet = sds_romaneio
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 456
  end
  object cds_romaneio: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_romaneio'
    OnNewRecord = cds_romaneioNewRecord
    Left = 936
    Top = 456
    object cds_romaneioCODROMANEIO_F: TIntegerField
      FieldName = 'CODROMANEIO_F'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_romaneioCODROMANEIO: TIntegerField
      FieldName = 'CODROMANEIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_romaneioCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_romaneioPEDIDO: TStringField
      FieldName = 'PEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_romaneioKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_romaneioHORA: TSQLTimeStampField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_romaneioOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_romaneioVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,0.00'
    end
    object cds_romaneioTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_romaneioCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_romaneioNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_romaneioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object cds_romaneioTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = []
      Size = 9
    end
    object cds_romaneioTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = []
      Size = 9
    end
  end
  object SQLDataSet3: TSQLDataSet
    CommandText = 'select * from ROMANEIO_PAI '#13#10'where CODROMANEIO = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 807
    Top = 566
    object SQLDataSet1CODROMANEIO: TIntegerField
      FieldName = 'CODROMANEIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1DATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet3
    Left = 888
    Top = 558
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider3'
    Left = 1000
    Top = 478
    object ClientDataSet1CODROMANEIO: TIntegerField
      FieldName = 'CODROMANEIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1DATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object proc_pedido: TSQLClientDataSet
    CommandText = 
      'select rec.DATAVENCIMENTO'#13#10'         ,rec.CODRECEBIMENTO'#13#10'       ' +
      '  ,rec.CODVENDA'#13#10'         ,rec.CODCLIENTE'#13#10'         ,rec.VALORTI' +
      'TULO '#13#10'         ,cli.NOMECLIENTE'#13#10'         ,ender.TELEFONE'#13#10'    ' +
      '     ,ender.TELEFONE1'#13#10'         ,ender.TELEFONE2'#13#10'from RECEBIMEN' +
      'TO rec '#13#10'left outer join CLIENTES cli on cli.CODCLIENTE = rec.CO' +
      'DCLIENTE '#13#10'left outer join ENDERECOCLIENTE ender on ender.CODCLI' +
      'ENTE = cli.CODCLIENTE '#13#10'where TITULO = :pcod'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 1088
    Top = 474
    object proc_pedidoDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object proc_pedidoVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object proc_pedidoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object proc_pedidoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object proc_pedidoTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object proc_pedidoTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object proc_pedidoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object proc_pedidoCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object proc_pedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
  end
  object sds_repcli: TSQLDataSet
    CommandText = 'select * from REPR_CLIENTE '#13#10'where COD_CLIENTE= :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 861
    Top = 128
    object sds_repcliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_repcliCOD_REPRCLI: TIntegerField
      FieldName = 'COD_REPRCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_repcliFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repcliFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repcliFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repcliENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repcliNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_repcliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_repcliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_repcliCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repcliUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_repcliCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_repcliEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_repcliNOME_REPRCLI: TStringField
      FieldName = 'NOME_REPRCLI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repcliFUNCAO: TStringField
      FieldName = 'FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_repcli: TDataSetProvider
    DataSet = sds_repcli
    UpdateMode = upWhereKeyOnly
    Left = 897
    Top = 128
  end
  object cds_repcli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_repcli'
    Left = 951
    Top = 128
    object cds_repcliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cds_repcliCOD_REPRCLI: TIntegerField
      FieldName = 'COD_REPRCLI'
    end
    object cds_repcliFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repcliFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repcliFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repcliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cds_repcliNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cds_repcliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_repcliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cds_repcliCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cds_repcliUF: TStringField
      FieldName = 'UF'
      EditMask = 'LL;1;_'
      Size = 2
    end
    object cds_repcliCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cds_repcliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object cds_repcliNOME_REPRCLI: TStringField
      FieldName = 'NOME_REPRCLI'
      Size = 60
    end
    object cds_repcliFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
  end
  object sdsFaixa: TSQLDataSet
    CommandText = 'select * from FAIXA_ETARIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 640
    Top = 244
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
    object sdsFaixaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaVALORPARCELA: TFloatField
      FieldName = 'VALORPARCELA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFaixa: TDataSetProvider
    DataSet = sdsFaixa
    UpdateMode = upWhereKeyOnly
    Left = 640
    Top = 292
  end
  object cdsFaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaixa'
    BeforePost = cdsFaixaBeforePost
    Left = 640
    Top = 356
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
    object cdsFaixaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaVALORPARCELA: TFloatField
      FieldName = 'VALORPARCELA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
  end
  object sds_video: TSQLDataSet
    CommandText = 'select * from ACESSO_SENHA '#13#10'where LOGIN = :LG'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'LG'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 16
    Top = 486
    object sds_parametroLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_parametroSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_parametroPERFIL: TStringField
      FieldName = 'PERFIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_parametroCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_videoMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_videoP1: TStringField
      FieldName = 'P1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_videoP2: TStringField
      FieldName = 'P2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dsp_video: TDataSetProvider
    DataSet = sds_video
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 486
  end
  object cds_video: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LG'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_video'
    Left = 160
    Top = 486
    object cds_parametroLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_parametroSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_parametroPERFIL: TStringField
      FieldName = 'PERFIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_parametroCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_videoMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_videoP1: TStringField
      FieldName = 'P1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_videoP2: TStringField
      FieldName = 'P2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object usuario: TSQLDataSet
    CommandText = 'select * from ACESSO_SENHA '#13#10'where LOGIN = :login'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'login'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 1032
    Top = 320
    object usuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object usuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object usuarioPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object usuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object usuarioMICRO: TStringField
      FieldName = 'MICRO'
      Size = 30
    end
    object usuarioP1: TStringField
      FieldName = 'P1'
      Size = 30
    end
    object usuarioP2: TStringField
      FieldName = 'P2'
      Size = 30
    end
  end
  object SQl: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=quad:sge_floragemnorte'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq21'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\sisadmin\relatorio\')
    VendorLib = 'fbclient.dll'
    Left = 152
    Top = 10
  end
  object dsp_aluno: TDataSetProvider
    DataSet = sds_aluno
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 638
  end
  object cds_aluno: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_aluno'
    Left = 832
    Top = 638
    object cds_alunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_alunoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_alunoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_alunoCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_alunoCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_alunoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_alunoINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cds_alunoRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_alunoSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_alunoREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_alunoLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_alunoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_alunoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_alunoHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_alunoPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_alunoTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_alunoDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_alunoSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_alunoFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_alunoEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_alunoDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_alunoGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_alunoGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_alunoEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_alunoDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_alunoSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_alunoRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_alunoCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_alunoN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_alunoMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_alunoMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_alunoBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_alunoBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_alunoTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_alunoCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_alunoANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_alunoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_alunoSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_alunoRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_alunoPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_alunoLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_alunoNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_alunoLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_alunoFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_alunoLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_alunoRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_alunoLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_alunoTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_alunoCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_alunoCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_alunoVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_alunoDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cds_alunoPERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_alunoFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cds_alunoDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_alunoCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sds_aluno: TSQLDataSet
    CommandText = 'select * from CLIENTES '#13#10'where RA = :cod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 688
    Top = 638
    object sds_alunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_alunoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_alunoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_alunoCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_alunoCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_alunoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_alunoINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sds_alunoRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_alunoSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_alunoREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_alunoLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_alunoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_alunoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_alunoHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_alunoPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_alunoTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_alunoDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_alunoSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_alunoFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_alunoEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_alunoDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_alunoGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_alunoGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_alunoEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_alunoDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_alunoSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_alunoRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_alunoCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_alunoN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_alunoMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_alunoMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_alunoBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_alunoBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_alunoTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_alunoCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_alunoSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_alunoRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_alunoPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_alunoLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_alunoNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_alunoLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_alunoFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_alunoLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_alunoRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_alunoLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_alunoTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_alunoCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_alunoCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_alunoVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sds_alunoPERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_alunoFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_alunoDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_alunoCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
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
    SQLConnection = sqlsisAdimin
    Left = 936
    Top = 590
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
    object sdsResponsavelTIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
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
  end
  object dspResponsavel: TDataSetProvider
    DataSet = sdsResponsavel
    UpdateMode = upWhereKeyOnly
    Left = 1024
    Top = 590
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
    Left = 1112
    Top = 590
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
    object cdsResponsavelTIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
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
  end
  object sdsSerie: TSQLDataSet
    CommandText = 'select * from TABSERIES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 496
    Top = 564
  end
  object dspSerie: TDataSetProvider
    DataSet = sdsSerie
    Left = 552
    Top = 564
  end
  object TableSeries: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSerie'
    Left = 612
    Top = 564
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
  object sdsPeriodo: TSQLDataSet
    CommandText = 'select * from TABPERIODO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 312
    Top = 564
    object sdsPeriodoIDPERIODO: TIntegerField
      FieldName = 'IDPERIODO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPeriodoPERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsPeriodoNOTAFINAL: TStringField
      FieldName = 'NOTAFINAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object dspPeriodo: TDataSetProvider
    DataSet = sdsPeriodo
    UpdateMode = upWhereKeyOnly
    Left = 367
    Top = 564
  end
  object cdsPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPeriodo'
    Left = 431
    Top = 564
    object cdsPeriodoIDPERIODO: TIntegerField
      FieldName = 'IDPERIODO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPeriodoPERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsPeriodoNOTAFINAL: TStringField
      FieldName = 'NOTAFINAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object sdsTipoSerie: TSQLDataSet
    CommandText = 'select * from TABENSINOTIPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 248
    Top = 617
    object sdsTipoSerieTIPOSERIE: TStringField
      FieldName = 'TIPOSERIE'
      Size = 4
    end
    object sdsTipoSerieTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object sdsTipoSerieCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object sdsTipoSerieMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object sdsTipoSerieANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object sdsTipoSerieSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
  end
  object dspTipoSerie: TDataSetProvider
    DataSet = sdsTipoSerie
    Left = 328
    Top = 617
  end
  object TableTipoSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoSerie'
    Left = 411
    Top = 617
    object TableTipoSerieTIPOSERIE: TStringField
      FieldName = 'TIPOSERIE'
      Size = 4
    end
    object TableTipoSerieTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object TableTipoSerieCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object TableTipoSerieMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object TableTipoSerieANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object TableTipoSerieSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
  end
  object sdsMaterias: TSQLDataSet
    CommandText = 'select * from TABMATERIAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 16
    Top = 639
  end
  object dspMaterias: TDataSetProvider
    DataSet = sdsMaterias
    Options = [poAllowCommandText]
    Left = 80
    Top = 647
  end
  object TableMaterias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaterias'
    Left = 155
    Top = 647
    object TableMateriasMATERIAS: TStringField
      FieldName = 'MATERIAS'
      Size = 50
    end
    object TableMateriasIDMATERIAS: TIntegerField
      FieldName = 'IDMATERIAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TableMateriasTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
  end
  object sdsClasse: TSQLDataSet
    CommandText = 
      'select cla.*, alu.NOMECLIENTE as NOME from TABCLASSEALUNO cla in' +
      'ner join'#13#10' CLIENTES alu on alu.RA = cla.RA '#13#10'where IDCLASSEALUNO' +
      ' = :pIDCLASSE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDCLASSE'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 16
    Top = 536
    object sdsClasseSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsClasseRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsClasseIDCLASSEALUNO: TIntegerField
      FieldName = 'IDCLASSEALUNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsClasseSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsClasseNUMERO: TSmallintField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClasseNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object dspClasse: TDataSetProvider
    DataSet = sdsClasse
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 536
  end
  object cdsClasse: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pIDCLASSE'
        ParamType = ptInput
      end>
    ProviderName = 'dspClasse'
    Left = 156
    Top = 540
    object cdsClasseSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cdsClasseRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsClasseIDCLASSEALUNO: TIntegerField
      FieldName = 'IDCLASSEALUNO'
      Required = True
    end
    object cdsClasseSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsClasseNUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object cdsClasseNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
  object sdsProc: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 1060
    Top = 170
  end
  object dspProc: TDataSetProvider
    DataSet = sdsProc
    Options = [poAllowCommandText]
    Left = 1092
    Top = 170
  end
  object cdsProc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProc'
    Left = 1124
    Top = 170
  end
  object sdsBusca: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 1060
    Top = 218
  end
  object dspBusca: TDataSetProvider
    DataSet = sdsBusca
    Options = [poAllowCommandText]
    Left = 1092
    Top = 218
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca'
    OnReconcileError = cdsBuscaReconcileError
    Left = 1124
    Top = 218
  end
  object sds_ag: TSQLDataSet
    CommandText = 
      'select ag.* '#13#10'        , cli.NOMECLIENTE '#13#10'from AGENDAMENTO  ag  ' +
      #13#10'inner join CLIENTES cli on '#13#10'cli.CODCLIENTE = ag.CODCLIENTE '#13#10 +
      'where ((ag.CODCLIENTE = :pcod) or (:pcod = 9999999)) '#13#10'and (DATA' +
      ' between :pdate and :pdata1) '#13#10'and ((ag.CODUSUARIO = :pusu) or (' +
      ':pusu = 9999999))'
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
      end
      item
        DataType = ftDateTime
        Name = 'pdate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'pdata1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pusu'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pusu'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 512
    Top = 633
    object sds_agCOD_AGENDAMENTO: TIntegerField
      FieldName = 'COD_AGENDAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_agCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_agASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_agHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_agDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_agFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_agNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object sds_agSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object sds_agCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_agCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_ag: TDataSetProvider
    DataSet = sds_ag
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 633
  end
  object cds_ag: TClientDataSet
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
      end
      item
        DataType = ftDateTime
        Name = 'pdate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'pdata1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pusu'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pusu'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_ag'
    Left = 592
    Top = 633
    object cds_agCOD_AGENDAMENTO: TIntegerField
      FieldName = 'COD_AGENDAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_agCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_agASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_agHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_agDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cds_agFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_agNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object cds_agSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cds_agCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_agCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ag_dia: TSQLDataSet
    CommandText = 'select * from AGENDA_DO_DIA '#13#10'where DATA = :dt'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dt'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 888
    Top = 639
  end
  object sbuscacli: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, '#13#10'          cli.NOMECLIENTE, '#13#10'          ' +
      'cli.RAZAOSOCIAL, '#13#10'          cli.SEGMENTO,'#13#10'          cli.CODUSU' +
      'ARIO,'#13#10'          cli.STATUS, '#13#10'          cli.CONTATO, cli.DATANA' +
      'SC, cli.CNPJ, cli.INSCESTADUAL, '#13#10'          (CASE when ende.DDD ' +
      'is null then  ende.TELEFONE ELSE'#13#10'          '#39'('#39' || ende.DDD || '#39 +
      ')'#39' || ende.TELEFONE end) as TELEFONE, '#13#10'          (CASE when end' +
      'e.DDD1 is null then  ende.TELEFONE1 ELSE'#13#10'          '#39'('#39' || ende.' +
      'DDD1 || '#39')'#39' || ende.TELEFONE1 END ) as TELEFONE1 , '#13#10'          (' +
      'CASE when ende.DDD2 is null then  ende.TELEFONE2 ELSE'#13#10'         ' +
      ' '#39'('#39' || ende.DDD2 || '#39')'#39' || ende.TELEFONE2 end) as TELEFONE2 , '#13 +
      #10'          (CASE when ende.DDD3 is null then  ende.FAX ELSE'#13#10'   ' +
      '       '#39'('#39' || ende.DDD3 || '#39')'#39' || ende.FAX end) as FAX,         ' +
      '               '#13#10'          ende.CIDADE,'#13#10'          ende.UF,     ' +
      '         '#13#10'          cli.CODBANCO, '#13#10'          cli.PRAZORECEBIME' +
      'NTO, '#13#10'          cli.OBS,  '#13#10'          cli.SERIE,  '#13#10'          c' +
      'li.SERIELETRA,  '#13#10'          cli.RA,  '#13#10'          cli.CURSO,  '#13#10' ' +
      '         rep.NOME_REPRCLI,'#13#10'          usu.NOMEUSUARIO,'#13#10'        ' +
      '  fun.NOME_FUNCIONARIO,   '#13#10'          fun.TELEFONE, '#13#10'          ' +
      'fun.CELULAR'#13#10'from CLIENTES cli '#13#10'left outer join ENDERECOCLIENTE' +
      ' ende '#13#10'on ende.CODCLIENTE=cli.CODCLIENTE'#13#10'left outer join REPR_' +
      'CLIENTE rep '#13#10'on rep.COD_CLIENTE=cli.CODCLIENTE'#13#10'left outer join' +
      ' USUARIO usu '#13#10'on usu.CODUSUARIO=cli.CODUSUARIO '#13#10'left outer joi' +
      'n FUNCIONARIO fun  '#13#10'on fun.CODUSUARIO = cli.CODUSUARIO '#13#10' '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 1128
    Top = 392
    object IntegerField2: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object SmallintField1: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object StringField12: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object DateField1: TDateField
      FieldName = 'DATANASC'
    end
    object StringField13: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object StringField14: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object StringField15: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField16: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE1'
      Size = 14
    end
    object StringField17: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE2'
      Size = 14
    end
    object StringField18: TStringField
      DisplayWidth = 16
      FieldName = 'FAX'
      Size = 14
    end
    object StringField19: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SmallintField3: TSmallintField
      FieldName = 'CODBANCO'
    end
    object SmallintField4: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object StringField20: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object StringField21: TStringField
      FieldName = 'NOME_REPRCLI'
      Size = 60
    end
    object StringField22: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
    object StringField23: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object StringField24: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 60
    end
    object StringField25: TStringField
      FieldName = 'TELEFONE_1'
      Size = 13
    end
    object StringField26: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object StringField27: TStringField
      FieldName = 'SERIE'
      ReadOnly = True
      Size = 4
    end
    object StringField28: TStringField
      FieldName = 'SERIELETRA'
      ReadOnly = True
      Size = 4
    end
    object StringField29: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object StringField30: TStringField
      FieldName = 'CURSO'
      ReadOnly = True
      Size = 50
    end
  end
  object dbuscacli: TDataSetProvider
    DataSet = sbuscacli
    Options = [poAllowCommandText]
    Left = 1160
    Top = 392
  end
  object cbuscacli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dbuscacli'
    Left = 1192
    Top = 392
    object IntegerField4: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField31: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object StringField32: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object SmallintField5: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object SmallintField6: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object StringField33: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object DateField2: TDateField
      FieldName = 'DATANASC'
    end
    object StringField34: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object StringField35: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object StringField36: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE'
      Size = 16
    end
    object StringField37: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE1'
      Size = 16
    end
    object StringField38: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE2'
      Size = 16
    end
    object StringField39: TStringField
      DisplayWidth = 16
      FieldName = 'FAX'
      Size = 16
    end
    object StringField40: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SmallintField7: TSmallintField
      FieldName = 'CODBANCO'
    end
    object SmallintField8: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object StringField41: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object StringField42: TStringField
      FieldName = 'NOME_REPRCLI'
      Size = 60
    end
    object StringField43: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
    object StringField44: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object StringField45: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 60
    end
    object StringField46: TStringField
      FieldName = 'TELEFONE_1'
      Size = 13
    end
    object StringField47: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object StringField48: TStringField
      FieldName = 'SERIE'
      ReadOnly = True
      Size = 4
    end
    object StringField49: TStringField
      FieldName = 'SERIELETRA'
      ReadOnly = True
      Size = 4
    end
    object StringField50: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object StringField51: TStringField
      FieldName = 'CURSO'
      ReadOnly = True
      Size = 50
    end
  end
  object dtsrcbuscacli: TDataSource
    DataSet = cbuscacli
    Left = 1257
    Top = 343
  end
  object proc_transp: TSQLClientDataSet
    CommandText = 'select * from TRANSPORTADORA '#13#10'where NOMETRANSP like :pTRANSP'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pTRANSP'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 249
    Top = 580
    object proc_transpCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object proc_transpNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object proc_transpFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object proc_transpPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object proc_transpCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object proc_transpEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object proc_transpCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object proc_transpUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object proc_transpUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object proc_transpFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object proc_transpINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object proc_transpCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object proc_transpCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object proc_transpCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object proc_transpCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object proc_transpCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object proc_transpCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
  end
  object sdsLog: TSQLDataSet
    CommandText = 'select * from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 320
    Top = 452
    object sdsLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object sdsLogTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object sdsLogDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
    object sdsLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
    object sdsLogHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsLogCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 50
    end
    object sdsLogCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 50
    end
    object sdsLogCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 50
    end
    object sdsLogCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 50
    end
    object sdsLogDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      BlobType = ftMemo
    end
  end
  object cdsLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLog'
    Left = 416
    Top = 452
    object cdsLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLogTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object cdsLogDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
    object cdsLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
    object cdsLogHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsLogCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 50
    end
    object cdsLogCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 50
    end
    object cdsLogCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 50
    end
    object cdsLogCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 50
    end
    object cdsLogDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      BlobType = ftMemo
    end
  end
  object dspLog: TDataSetProvider
    DataSet = sdsLog
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 376
    Top = 452
  end
  object UCDBXConnFinanceiro: TUCDBXConn
    Connection = sqlsisAdimin
    Left = 1064
    Top = 64
  end
  object EvOneInstance1: TEvOneInstance
    Active = False
    Left = 792
    Top = 128
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
    Left = 1184
    Top = 456
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
  object scds_produto_procASH: TSQLDataSet
    CommandText = 
      'select prod.CODPRODUTO'#13#10', prod.CODPRO'#13#10', prod.PRODUTO'#13#10', prod.UN' +
      'IDADEMEDIDA'#13#10', prod.QTDE_PCT'#13#10', prod.ICMS'#13#10', prod.CODALMOXARIFAD' +
      'O'#13#10', prod.CONTA_DESPESA'#13#10', ccus.ALMOXARIFADO'#13#10', prod.VALORUNITAR' +
      'IOATUAL'#13#10', prod.VALOR_PRAZO'#13#10', prod.COD_COMISSAO'#13#10', prod.RATEIO'#13 +
      #10', prod.TIPO  '#13#10', prod.ESTOQUEATUAL '#13#10', prod.LOCALIZACAO'#13#10', prod' +
      '.LOTES  , prod.PRECOMEDIO, prod.PESO_QTDE, prod.OBS'#13#10'from PRODUT' +
      'OS prod '#13#10'left outer join ALMOXARIFADO ccus '#13#10'on ccus.CODALMOXAR' +
      'IFADO = prod.CODALMOXARIFADO '#13#10'where (PRODUTO like :pPROD) or (C' +
      'ODPRODUTO = :CODPRODUTO) '#13#10'or (CODPRO = :CODPRO)'
    MaxBlobSize = -1
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
    SQLConnection = sqlsisAdimin
    Left = 838
    Top = 282
    object scds_produto_procASHCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procASHCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object scds_produto_procASHPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produto_procASHUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object scds_produto_procASHQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object scds_produto_procASHICMS: TFloatField
      FieldName = 'ICMS'
    end
    object scds_produto_procASHCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object scds_produto_procASHCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object scds_produto_procASHALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
    object scds_produto_procASHVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object scds_produto_procASHVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object scds_produto_procASHCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object scds_produto_procASHRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object scds_produto_procASHTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object scds_produto_procASHESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object scds_produto_procASHLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 5
    end
    object scds_produto_procASHLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object scds_produto_procASHPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object scds_produto_procASHPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
  end
  object sdsPrazo: TSQLDataSet
    CommandText = 
      'select PARAMETRO, CONFIGURADO, DADOS, D1, D2, D3, D4, D5, D6, D7' +
      ', D8, D9, valor from PARAMETRO where '#13#10'DADOS = '#39'PRAZO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 248
    Top = 16
    object sdsPrazoPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object sdsPrazoCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object sdsPrazoDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object sdsPrazoD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object sdsPrazoD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object sdsPrazoD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object sdsPrazoD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object sdsPrazoD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object sdsPrazoD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object sdsPrazoD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object sdsPrazoD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object sdsPrazoD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object sdsPrazoVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object dspPrazo: TDataSetProvider
    DataSet = sdsPrazo
    Left = 248
    Top = 72
  end
  object cdsPrazo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrazo'
    OnNewRecord = cdsPrazoNewRecord
    Left = 248
    Top = 128
    object cdsPrazoPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object cdsPrazoCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPrazoDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object cdsPrazoD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object cdsPrazoD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object cdsPrazoD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object cdsPrazoD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object cdsPrazoD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object cdsPrazoD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object cdsPrazoD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object cdsPrazoD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object cdsPrazoD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object cdsPrazoVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object sqlExporta: TSQLConnection
    ConnectionName = 'exporta'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=ats3:sge_saopedrocupom'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=Win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 1168
    Top = 80
  end
  object scds_Prod: TSQLClientDataSet
    CommandText = 
      'Select CODPRODUTO, CODPRO, PRODUTO, VALOR_PRAZO from PRODUTOS WH' +
      'ERE '#13#10'TIPO = '#39'SERV'#39' and ((PRODUTO LIKE :PRODUTO) OR (:PRODUTO = ' +
      #39'TODOS'#39'))'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    DBConnection = sqlsisAdimin
    Left = 544
    Top = 183
    object scds_ProdCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_ProdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object scds_ProdPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_ProdVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
  end
  object sPermissao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dspPermissao'
    Left = 1124
    Top = 702
    object sPermissaoUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Size = 30
    end
    object sPermissaoUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
    object sPermissaoUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
    end
  end
  object dspPermissao: TDataSetProvider
    DataSet = SQLDataSet4
    Left = 1062
    Top = 702
  end
  object SQLDataSet4: TSQLDataSet
    CommandText = 
      'select UCUSERNAME, UCLOGIN, UCPROFILE from UCTABUSERS '#13#10'where UC' +
      'IDUSER = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 992
    Top = 702
    object sdsPermissaoUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Size = 30
    end
    object sdsPermissaoUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
    object sdsPermissaoUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
    end
  end
  object QryGetObject: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 720
    Top = 256
  end
  object sqlBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 704
    Top = 328
  end
  object sqlNatureza: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNat'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT * FROM NATUREZAOPERACAO WHERE CODNATUREZA = :pNat')
    SQLConnection = sqlsisAdimin
    Left = 749
    Top = 200
    object sqlNaturezaCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object sqlNaturezaDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      Required = True
      Size = 30
    end
    object sqlNaturezaGERATITULO: TSmallintField
      FieldName = 'GERATITULO'
      Required = True
    end
    object sqlNaturezaTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      Required = True
    end
    object sqlNaturezaTIPOMOVIMENTO: TSmallintField
      FieldName = 'TIPOMOVIMENTO'
    end
    object sqlNaturezaBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
    end
  end
  object s_permissao: TSQLDataSet
    CommandText = 
      'SELECT a.UCIDUSER, a.UCMODULE, a.UCCOMPNAME, a.UCKEY, a.RDB$DB_K' +
      'EY'#13#10'FROM UCTABRIGHTS a '#13#10'where a.UCIDUSER = :ID '#13#10'   and a.UCCOM' +
      'PNAME = :pn'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pn'
        ParamType = ptInput
      end>
    SQLConnection = sqlsisAdimin
    Left = 1104
    Top = 8
  end
  object scds_cli_proc: TSQLClientDataSet
    CommandText = 
      'SELECT c.CODCLIENTE, c.NOMECLIENTE, c.RAZAOSOCIAL, ec.DDD, ec.TE' +
      'LEFONE, c.CFOP, ec.UF'#13#10'FROM CLIENTES c, ENDERECOCLIENTE ec'#13#10'wher' +
      'e c.CODCLIENTE = ec.CODCLIENTE and ec.TIPOEND = 0'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = sqlsisAdimin
    Left = 713
    Top = 173
    object scds_cli_procCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scds_cli_procNOMECLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object scds_cli_procRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object scds_cli_procDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object scds_cli_procTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Size = 9
    end
    object scds_cli_procCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object scds_cli_procUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object sdsLogSis: TSQLDataSet
    CommandText = 
      'SELECT r.ID_LOG, r.TABELA, CAST(r.DATA AS VARCHAR(10)) DATA, r.U' +
      'SUARIO, r.MICRO, CAST(UDF_LEFT(r.HORA,5) AS VARCHAR(8)) HORA, r.' +
      'CAMPO1, r.CAMPO2, r.CAMPO3, r.CAMPO4, r.DATA_SET'#13#10'FROM LOGS r'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlsisAdimin
    Left = 336
    object sdsLogSisID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object sdsLogSisTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object sdsLogSisDATA: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 10
    end
    object sdsLogSisUSUARIO: TStringField
      FieldName = 'USUARIO'
      ReadOnly = True
      Size = 80
    end
    object sdsLogSisMICRO: TStringField
      FieldName = 'MICRO'
      ReadOnly = True
      Size = 50
    end
    object sdsLogSisHORA: TStringField
      FieldName = 'HORA'
      ReadOnly = True
      Size = 8
    end
    object sdsLogSisCAMPO1: TStringField
      FieldName = 'CAMPO1'
      ReadOnly = True
      Size = 50
    end
    object sdsLogSisCAMPO2: TStringField
      FieldName = 'CAMPO2'
      ReadOnly = True
      Size = 50
    end
    object sdsLogSisCAMPO3: TStringField
      FieldName = 'CAMPO3'
      ReadOnly = True
      Size = 50
    end
    object sdsLogSisCAMPO4: TStringField
      FieldName = 'CAMPO4'
      ReadOnly = True
      Size = 50
    end
    object sdsLogSisDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object dspLogSis: TDataSetProvider
    DataSet = sdsLogSis
    Options = [poAllowCommandText]
    Left = 376
  end
  object cdsLogSis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogSis'
    Left = 416
    object cdsLogSisID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object cdsLogSisTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object cdsLogSisDATA: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 10
    end
    object cdsLogSisUSUARIO: TStringField
      FieldName = 'USUARIO'
      ReadOnly = True
      Size = 80
    end
    object cdsLogSisMICRO: TStringField
      FieldName = 'MICRO'
      ReadOnly = True
      Size = 50
    end
    object cdsLogSisHORA: TStringField
      FieldName = 'HORA'
      ReadOnly = True
      Size = 8
    end
    object cdsLogSisCAMPO1: TStringField
      FieldName = 'CAMPO1'
      ReadOnly = True
      Size = 50
    end
    object cdsLogSisCAMPO2: TStringField
      FieldName = 'CAMPO2'
      ReadOnly = True
      Size = 50
    end
    object cdsLogSisCAMPO3: TStringField
      FieldName = 'CAMPO3'
      ReadOnly = True
      Size = 50
    end
    object cdsLogSisCAMPO4: TStringField
      FieldName = 'CAMPO4'
      ReadOnly = True
      Size = 50
    end
    object cdsLogSisDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
end
