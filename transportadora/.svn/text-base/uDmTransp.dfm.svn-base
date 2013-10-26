object dmTransp: TdmTransp
  OldCreateOrder = False
  Left = 417
  Top = 236
  Height = 498
  Width = 444
  object sdsCarretaTipo: TSQLDataSet
    CommandText = 
      'select CODDADOS, DESCRICAO, USO  from DADOS_COMBOS where USO = '#39 +
      'CARRETATIPO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 8
  end
  object dspCarretaTipo: TDataSetProvider
    DataSet = sdsCarretaTipo
    Left = 128
    Top = 8
  end
  object cdsCarretaTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCarretaTipo'
    Left = 216
    Top = 8
    object cdsCarretaTipoCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object cdsCarretaTipoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsCarretaTipoUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
  end
  object c_6_genid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'd_6'
    Left = 371
    Top = 102
    object c_6_genidCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object d_6: TDataSetProvider
    DataSet = s_6
    Options = [poAllowCommandText]
    Left = 371
    Top = 54
  end
  object s_6: TSQLDataSet
    CommandText = 
      'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) AS INTEGER) AS CODIGO F' +
      'ROM RDB$DATABASE;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 371
    Top = 6
    object s_6CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object sdsTipoOper: TSQLDataSet
    CommandText = 
      'select CODDADOS'#13#10'        , DESCRICAO'#13#10'        , USO  from DADOS_' +
      'COMBOS '#13#10'where ((USO = :uso) or (:uso = '#39'todos os tipos de uso'#39')' +
      ')  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 52
    object sdsTipoOperCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTipoOperDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsTipoOperUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dspTipoOper: TDataSetProvider
    DataSet = sdsTipoOper
    Left = 128
    Top = 52
  end
  object cdsTipoOper: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    ProviderName = 'dspTipoOper'
    Left = 216
    Top = 52
    object cdsTipoOperCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTipoOperDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsTipoOperUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object sdsOper: TSQLDataSet
    CommandText = 'select * from FAIXAETARIADETALHE '#13#10'order by CODFAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 112
    object sdsOperCODFAIXADET: TIntegerField
      FieldName = 'CODFAIXADET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOperCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsOperDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsOperTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dspOper: TDataSetProvider
    DataSet = sdsOper
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 112
  end
  object cdsOper: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOper'
    Left = 216
    Top = 112
    object cdsOperCODFAIXADET: TIntegerField
      FieldName = 'CODFAIXADET'
      Required = True
    end
    object cdsOperCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
    end
    object cdsOperDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsOperTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
  end
end
