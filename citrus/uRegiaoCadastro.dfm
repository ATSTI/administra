inherited fRegiaoCadastro: TfRegiaoCadastro
  Width = 604
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 33
    Top = 63
    Width = 45
    Height = 16
    Caption = 'Regi'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Width = 596
    object Label9: TLabel
      Left = 144
      Top = 5
      Width = 277
      Height = 36
      Caption = 'Cadastro de Regi'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -32
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 141
      Top = 4
      Width = 277
      Height = 36
      Caption = 'Cadastro de Regi'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
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
    end
    inherited btnSair: TBitBtn
      Left = 368
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 33
    Top = 79
    Width = 529
    Height = 24
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
  object JvDBGrid1: TJvDBGrid [4]
    Left = 33
    Top = 104
    Width = 529
    Height = 320
    TabStop = False
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
  object DBNavigator1: TDBNavigator [5]
    Left = 192
    Top = 432
    Width = 212
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
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
