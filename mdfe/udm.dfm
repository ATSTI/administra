object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 264
  Top = 267
  Height = 254
  Width = 312
  object sc: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.6.100:sge_GH'
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
    Left = 32
    Top = 24
  end
  object sqlBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 96
    Top = 24
  end
  object sds: TSQLDataSet
    CommandText = 'SELECT *'#13#10#13#10'FROM MDFE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 16
    Top = 88
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 48
    Top = 88
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 88
    Top = 88
    object cdsCOD_MDFE: TIntegerField
      FieldName = 'COD_MDFE'
      Required = True
    end
    object cdsCODEMITENTE: TIntegerField
      FieldName = 'CODEMITENTE'
      Required = True
    end
    object cdsTIPOEMITENTE: TSmallintField
      FieldName = 'TIPOEMITENTE'
    end
    object cdsMODELO: TSmallintField
      FieldName = 'MODELO'
    end
    object cdsSERIE: TSmallintField
      FieldName = 'SERIE'
    end
    object cdsNUMERO_MDF: TIntegerField
      FieldName = 'NUMERO_MDF'
    end
    object cdsCHAVE_MDF: TIntegerField
      FieldName = 'CHAVE_MDF'
    end
    object cdsDIGITO_MDF: TSmallintField
      FieldName = 'DIGITO_MDF'
    end
    object cdsMODALIDADE: TSmallintField
      FieldName = 'MODALIDADE'
    end
    object cdsDATA_MDF: TSQLTimeStampField
      FieldName = 'DATA_MDF'
    end
    object cdsFORMA_EMISSAO: TSmallintField
      FieldName = 'FORMA_EMISSAO'
    end
    object cdsVERSAO_APLICATIVO: TStringField
      FieldName = 'VERSAO_APLICATIVO'
    end
    object cdsUF_CARREGAMENTO: TStringField
      FieldName = 'UF_CARREGAMENTO'
      FixedChar = True
      Size = 2
    end
    object cdsUF_DESCARREGAMENTO: TStringField
      FieldName = 'UF_DESCARREGAMENTO'
      FixedChar = True
      Size = 2
    end
    object cdsCOD_MUNICIPIO_CARREG: TStringField
      FieldName = 'COD_MUNICIPIO_CARREG'
      Size = 10
    end
    object cdsMUNICIPO_CARREG: TStringField
      FieldName = 'MUNICIPO_CARREG'
      Size = 60
    end
    object cdsUF_PERCURSO: TStringField
      FieldName = 'UF_PERCURSO'
      FixedChar = True
      Size = 2
    end
    object cdsCOD_MUNICIPIO_DESCARREG: TIntegerField
      FieldName = 'COD_MUNICIPIO_DESCARREG'
    end
    object cdsMUNICIPO_DESCARREG: TStringField
      FieldName = 'MUNICIPO_DESCARREG'
      Size = 60
    end
    object cdsCHAVE_NFE1: TStringField
      FieldName = 'CHAVE_NFE1'
      Size = 80
    end
    object cdsCHAVE_NFE2: TStringField
      FieldName = 'CHAVE_NFE2'
      Size = 80
    end
    object cdsCHAVE_NFE3: TStringField
      FieldName = 'CHAVE_NFE3'
      Size = 80
    end
    object cdsCHAVE_NFE4: TStringField
      FieldName = 'CHAVE_NFE4'
      Size = 80
    end
    object cdsCHAVE_NFE5: TStringField
      FieldName = 'CHAVE_NFE5'
      Size = 80
    end
    object cdsCHAVE_NFE6: TStringField
      FieldName = 'CHAVE_NFE6'
      Size = 80
    end
    object cdsCHAVE_NFE7: TStringField
      FieldName = 'CHAVE_NFE7'
      Size = 80
    end
    object cdsTIPO_TRANSP: TSmallintField
      FieldName = 'TIPO_TRANSP'
    end
    object cdsUNID_TRANSP: TStringField
      FieldName = 'UNID_TRANSP'
    end
    object cdsTIPO_CARGA: TSmallintField
      FieldName = 'TIPO_CARGA'
    end
    object cdsUNID_CARGA: TStringField
      FieldName = 'UNID_CARGA'
    end
    object cdsIDENT_CARGA: TStringField
      FieldName = 'IDENT_CARGA'
    end
    object cdsQTDE_NFE: TSmallintField
      FieldName = 'QTDE_NFE'
    end
    object cdsVALOR_CARGA: TFloatField
      FieldName = 'VALOR_CARGA'
    end
    object cdsUNID_PESO: TSmallintField
      FieldName = 'UNID_PESO'
    end
    object cdsPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsCNPJ_AUTORIZADO1: TStringField
      FieldName = 'CNPJ_AUTORIZADO1'
    end
    object cdsCNPJ_AUTORIZADO2: TStringField
      FieldName = 'CNPJ_AUTORIZADO2'
    end
    object cdsINFO_ADIC_FISCO: TStringField
      FieldName = 'INFO_ADIC_FISCO'
      Size = 600
    end
    object cdsINFO_ADIC_CONTRIBUINTE: TStringField
      FieldName = 'INFO_ADIC_CONTRIBUINTE'
      Size = 600
    end
    object cdsRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 10
    end
    object cdsCIOT: TStringField
      FieldName = 'CIOT'
      Size = 15
    end
    object cdsCINT: TStringField
      FieldName = 'CINT'
      Size = 10
    end
    object cdsPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsTARA: TIntegerField
      FieldName = 'TARA'
    end
    object cdsCAPKG: TIntegerField
      FieldName = 'CAPKG'
    end
    object cdsCAPM3: TIntegerField
      FieldName = 'CAPM3'
    end
    object cdsPROP_CNPJ: TStringField
      FieldName = 'PROP_CNPJ'
    end
    object cdsPROP_RNTRC: TStringField
      FieldName = 'PROP_RNTRC'
      Size = 10
    end
    object cdsPROP_NOME: TStringField
      FieldName = 'PROP_NOME'
      Size = 60
    end
    object cdsPROP_IE: TStringField
      FieldName = 'PROP_IE'
      Size = 24
    end
    object cdsPROP_UF: TStringField
      FieldName = 'PROP_UF'
      FixedChar = True
      Size = 2
    end
    object cdsPROP_TIPO: TSmallintField
      FieldName = 'PROP_TIPO'
    end
    object cdsCONDUTOR_NOME: TStringField
      FieldName = 'CONDUTOR_NOME'
      Size = 60
    end
    object cdsCONDUTOR_CPF: TStringField
      FieldName = 'CONDUTOR_CPF'
      Size = 14
    end
    object cdsTIPO_RODADO: TSmallintField
      FieldName = 'TIPO_RODADO'
    end
    object cdsTIPO_CARROCERIA: TSmallintField
      FieldName = 'TIPO_CARROCERIA'
    end
    object cdsUF_VEICULO: TStringField
      FieldName = 'UF_VEICULO'
      FixedChar = True
      Size = 2
    end
    object cdsREBOQUE_CINT: TStringField
      FieldName = 'REBOQUE_CINT'
      Size = 10
    end
    object cdsREBOQUE_PLACA: TStringField
      FieldName = 'REBOQUE_PLACA'
      Size = 10
    end
    object cdsREBOQUE_TARA: TIntegerField
      FieldName = 'REBOQUE_TARA'
    end
    object cdsREBOQUE_CAPKG: TIntegerField
      FieldName = 'REBOQUE_CAPKG'
    end
    object cdsREBOQUE_CAPM3: TIntegerField
      FieldName = 'REBOQUE_CAPM3'
    end
    object cdsREBOQUE_CPF: TStringField
      FieldName = 'REBOQUE_CPF'
      Size = 14
    end
    object cdsREBOQUE_CNPJ: TStringField
      FieldName = 'REBOQUE_CNPJ'
    end
    object cdsREBOQUE_RNTRC: TStringField
      FieldName = 'REBOQUE_RNTRC'
      Size = 10
    end
    object cdsREBOQUE_NOME: TStringField
      FieldName = 'REBOQUE_NOME'
      Size = 60
    end
    object cdsREBOQUE_IE: TStringField
      FieldName = 'REBOQUE_IE'
    end
    object cdsREBOQUE_UF: TStringField
      FieldName = 'REBOQUE_UF'
      FixedChar = True
      Size = 2
    end
    object cdsREBOQUE_TIPOPROP: TSmallintField
      FieldName = 'REBOQUE_TIPOPROP'
    end
    object cdsREBOQUE_TIPOCARROCERIA: TSmallintField
      FieldName = 'REBOQUE_TIPOCARROCERIA'
    end
    object cdsREBOQUE_UFVEICULO: TStringField
      FieldName = 'REBOQUE_UFVEICULO'
      FixedChar = True
      Size = 2
    end
    object cdsPESO_VOLUME1: TFloatField
      FieldName = 'PESO_VOLUME1'
    end
    object cdsPESO_VOLUME2: TFloatField
      FieldName = 'PESO_VOLUME2'
    end
    object cdsPESO_VOLUME3: TFloatField
      FieldName = 'PESO_VOLUME3'
    end
    object cdsPESO_VOLUME4: TFloatField
      FieldName = 'PESO_VOLUME4'
    end
    object cdsPESO_VOLUME5: TFloatField
      FieldName = 'PESO_VOLUME5'
    end
    object cdsPESO_VOLUME6: TFloatField
      FieldName = 'PESO_VOLUME6'
    end
    object cdsPESO_VOLUME7: TFloatField
      FieldName = 'PESO_VOLUME7'
    end
    object cdsCHAVE_MDFE: TStringField
      FieldName = 'CHAVE_MDFE'
      Size = 80
    end
    object cdsPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
      Size = 100
    end
    object cdsNF1_CNPJ: TStringField
      FieldName = 'NF1_CNPJ'
    end
    object cdsNF1_NUM: TIntegerField
      FieldName = 'NF1_NUM'
    end
    object cdsNF1_SERIE: TIntegerField
      FieldName = 'NF1_SERIE'
    end
    object cdsNF1_UF: TStringField
      FieldName = 'NF1_UF'
      FixedChar = True
      Size = 2
    end
    object cdsNF1_PIN: TIntegerField
      FieldName = 'NF1_PIN'
    end
    object cdsNF1_VALOR: TFloatField
      FieldName = 'NF1_VALOR'
    end
    object cdsNF2_CNPJ: TStringField
      FieldName = 'NF2_CNPJ'
    end
    object cdsNF2_NUM: TIntegerField
      FieldName = 'NF2_NUM'
    end
    object cdsNF2_SERIE: TIntegerField
      FieldName = 'NF2_SERIE'
    end
    object cdsNF2_UF: TStringField
      FieldName = 'NF2_UF'
      FixedChar = True
      Size = 2
    end
    object cdsNF2_PIN: TIntegerField
      FieldName = 'NF2_PIN'
    end
    object cdsNF2_VALOR: TFloatField
      FieldName = 'NF2_VALOR'
    end
    object cdsNF3_CNPJ: TStringField
      FieldName = 'NF3_CNPJ'
    end
    object cdsNF3_NUM: TIntegerField
      FieldName = 'NF3_NUM'
    end
    object cdsNF3_SERIE: TIntegerField
      FieldName = 'NF3_SERIE'
    end
    object cdsNF3_UF: TStringField
      FieldName = 'NF3_UF'
      FixedChar = True
      Size = 2
    end
    object cdsNF3_PIN: TIntegerField
      FieldName = 'NF3_PIN'
    end
    object cdsNF3_VALOR: TFloatField
      FieldName = 'NF3_VALOR'
    end
    object cdsPROTOCOLOENC: TStringField
      FieldName = 'PROTOCOLOENC'
    end
    object cdsPROTOCOLOCAN: TStringField
      FieldName = 'PROTOCOLOCAN'
    end
  end
end
