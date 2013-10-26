object fMostra_Contas: TfMostra_Contas
  Left = 414
  Top = 250
  Width = 422
  Height = 281
  BorderIcons = [biSystemMenu]
  Caption = 'Contas Pendentes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 412
    Height = 244
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Caption = 'N'#186' T'#237'tulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIA'
        Title.Caption = 'Via'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTITULO'
        Title.Caption = 'Valor T'#237'tulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_RESTO'
        Title.Caption = 'Valor Pendente'
        Visible = True
      end>
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'SELECT EMISSAO'#13#10'             , TITULO'#13#10'             , DATAVENCIM' +
      'ENTO'#13#10'             , VALORTITULO'#13#10'             , VALOR_RESTO '#13#10' ' +
      '            , VIA'#13#10'  FROM RECEBIMENTO '#13#10'  WHERE (DATAVENCIMENTO ' +
      '< :ATE_DATA) AND (CODCLIENTE = :CODIGO_CLI)'#13#10'    AND ((STATUS = ' +
      #39'5-'#39') OR (STATUS = '#39'6-'#39')) order by DATAVENCIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'ATE_DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 144
    Top = 96
    object SQLDataSet1EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object SQLDataSet1TITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object SQLDataSet1VIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SQLDataSet1DATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object SQLDataSet1VALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object SQLDataSet1VALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 95
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ATE_DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLI'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 224
    Top = 94
    object ClientDataSet1EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object ClientDataSet1TITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object ClientDataSet1VIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object ClientDataSet1DATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object ClientDataSet1VALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      DisplayFormat = ',##0.00'
    end
    object ClientDataSet1VALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      DisplayFormat = ',##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 263
    Top = 94
  end
end
