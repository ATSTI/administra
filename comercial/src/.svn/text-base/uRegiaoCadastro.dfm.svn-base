inherited fRegiaoCadastro: TfRegiaoCadastro
  Width = 604
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 33
    Top = 63
    Width = 34
    Height = 13
    Caption = 'Regi'#227'o'
  end
  object Label2: TLabel [1]
    Left = 424
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Outros'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 596
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    object Label10: TJvLabel
      Left = 136
      Top = 5
      Width = 311
      Height = 40
      Caption = 'Cadastro de Regi'#227'o'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -29
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 596
    inherited btnGravar: TBitBtn
      Left = 122
    end
    inherited btnIncluir: TBitBtn
      Left = 122
    end
    inherited btnCancelar: TBitBtn
      Left = 245
    end
    inherited btnExcluir: TBitBtn
      Left = 245
    end
    inherited btnProcurar: TBitBtn
      Left = 12
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 368
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 33
    Top = 79
    Width = 384
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object JvDBGrid1: TJvDBGrid [5]
    Left = 33
    Top = 104
    Width = 529
    Height = 320
    TabStop = False
    BorderStyle = bsNone
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
    AlternateRowColor = clMoneyGreen
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
        Width = 512
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [6]
    Left = 192
    Top = 432
    Width = 212
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [7]
    Left = 421
    Top = 78
    Width = 140
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'OUTROS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  inherited DtSrc: TDataSource
    DataSet = cdsRegiao
    Left = 456
  end
  inherited XPMenu1: TXPMenu
    AutoDetect = True
    Active = True
    Left = 488
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 520
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 394
    Top = 7
  end
  object cdsRegiao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rg'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    OnNewRecord = cdsRegiaoNewRecord
    Left = 425
    Top = 7
    object cdsRegiaoCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegiaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsRegiaoUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRegiaoCODIGOS: TStringField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRegiaoOUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS '#13#10'where USO = :rg'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'rg'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 364
    Top = 7
    object SQLDataSet1CODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQLDataSet1USO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1CODIGOS: TStringField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SQLDataSet1OUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
end
