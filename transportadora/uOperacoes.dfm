inherited fOperacoes: TfOperacoes
  Left = 381
  Top = 231
  Width = 639
  Height = 494
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 34
    Top = 57
    Width = 61
    Height = 16
    Caption = 'Opera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [1]
    Left = 314
    Top = 59
    Width = 77
    Height = 16
    Caption = 'Tipo Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [2]
    Left = 34
    Top = 99
    Width = 35
    Height = 16
    Caption = 'Modo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [3]
    Left = 315
    Top = 98
    Width = 32
    Height = 16
    Caption = 'Setor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [4]
    Left = 413
    Top = 142
    Width = 59
    Height = 16
    Caption = 'Faixa ---->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 406
    Width = 631
  end
  inherited MMJPanel2: TMMJPanel
    Width = 631
    inherited Label1: TLabel
      Left = 132
      Width = 363
      Caption = 'Classifica'#231#227'o de Pre'#231'os'
    end
    inherited Label2: TLabel
      Left = 136
      Width = 363
      Caption = 'Classifica'#231#227'o de Pre'#231'os'
    end
  end
  object dblCodigo: TDBLookupComboBox [7]
    Left = 476
    Top = 141
    Width = 116
    Height = 28
    DataField = 'CODFAIXA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'CODFAIXA'
    ListField = 'CODFAIXA'
    ListSource = dtsCodigo
    ParentFont = False
    TabOrder = 2
  end
  object ComboBox3: TComboBox [8]
    Left = 34
    Top = 74
    Width = 279
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 3
  end
  object ComboBox4: TComboBox [9]
    Left = 34
    Top = 113
    Width = 279
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
  end
  object ComboBox5: TComboBox [10]
    Left = 314
    Top = 74
    Width = 279
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 5
  end
  object ComboBox6: TComboBox [11]
    Left = 315
    Top = 113
    Width = 277
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 6
  end
  object JvDBGrid2: TJvDBGrid [12]
    Left = 34
    Top = 190
    Width = 279
    Height = 67
    DataSource = dtsModoDet
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    AlternateRowColor = clInfoBk
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 262
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn [13]
    Left = 313
    Top = 191
    Width = 31
    Height = 25
    TabOrder = 9
    Visible = False
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [14]
    Left = 313
    Top = 216
    Width = 31
    Height = 25
    TabOrder = 10
    Visible = False
  end
  object JvDBGrid1: TJvDBGrid [15]
    Left = 33
    Top = 171
    Width = 559
    Height = 230
    DataSource = DtSrc
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODFAIXADET'
        Title.Caption = 'C'#243'digo'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFAIXA'
        Title.Caption = 'Faixa'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Width = 342
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = dmTransp.cdsOper
  end
  object sTipoOper: TSQLDataSet
    CommandText = 
      'select CODDADOS'#13#10'         , DESCRICAO '#13#10'from DADOS_COMBOS '#13#10'wher' +
      'e USO = :uso'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'uso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 507
    Top = 21
    object sTipoOperCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sTipoOperDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
  end
  object sCodigo: TSQLDataSet
    CommandText = 'select CODFAIXA,'#13#10'          CODIGOS '#13#10'from FAIXA_ETARIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 14
    Top = 14
    object sCodigoCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      Required = True
    end
    object sCodigoCODIGOS: TIntegerField
      FieldName = 'CODIGOS'
    end
  end
  object dCodigo: TDataSetProvider
    DataSet = sCodigo
    Left = 46
    Top = 14
  end
  object cCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dCodigo'
    Left = 78
    Top = 14
    object cCodigoCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      Required = True
    end
    object cCodigoCODIGOS: TIntegerField
      FieldName = 'CODIGOS'
    end
  end
  object dtsCodigo: TDataSource
    DataSet = cCodigo
    Left = 109
    Top = 14
  end
  object sModoDet: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS '#13#10'where CODIGOS = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 152
    Top = 16
    object sModoDetCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sModoDetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sModoDetUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sModoDetCODIGOS: TStringField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sModoDetOUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dModoDet: TDataSetProvider
    DataSet = sModoDet
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 16
  end
  object cModoDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dModoDet'
    Left = 216
    Top = 16
    object cModoDetCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object cModoDetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cModoDetUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cModoDetCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cModoDetOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
  object dtsModoDet: TDataSource
    DataSet = cModoDet
    Left = 248
    Top = 16
  end
end
