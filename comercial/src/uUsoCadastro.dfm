inherited fUsoCadastro: TfUsoCadastro
  Width = 690
  Height = 493
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 64
    Width = 74
    Height = 13
    Caption = 'Uso do Produto'
  end
  object DBNavigator1: TDBNavigator [1]
    Left = 232
    Top = 368
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 4
  end
  inherited MMJPanel1: TMMJPanel
    Top = 412
    Width = 682
    inherited btnGravar: TBitBtn
      Left = 180
    end
    inherited btnIncluir: TBitBtn
      Left = 180
    end
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 406
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 682
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 191
      Top = -75
      Width = 280
      Height = 44
      Caption = 'Uso do Produto'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 195
      Top = -74
      Width = 280
      Height = 44
      Caption = 'Uso do Produto'
      Font.Name = 'Cooper Black'
    end
    object DBText2: TDBText
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'PRODUTO'
      DataSource = fProdutoCadastro.DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 80
    Width = 665
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
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnExit = DBEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [5]
    Left = 8
    Top = 104
    Width = 665
    Height = 257
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Uso do Produto'
        Width = 620
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cds_uso
  end
  object sds_uso: TSQLDataSet
    CommandText = 'select * from USO_PRODUTO '#13#10'where COD_PRODUTO = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 572
    Top = 58
    object sds_usoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_usoCOD_USO: TIntegerField
      FieldName = 'COD_USO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_usoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_usoANO_DE: TIntegerField
      FieldName = 'ANO_DE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_usoANO_ATE: TIntegerField
      FieldName = 'ANO_ATE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_uso: TDataSetProvider
    DataSet = sds_uso
    UpdateMode = upWhereKeyOnly
    Left = 605
    Top = 58
  end
  object cds_uso: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_uso'
    Left = 648
    Top = 58
    object cds_usoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_usoCOD_USO: TIntegerField
      FieldName = 'COD_USO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_usoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_usoANO_DE: TIntegerField
      FieldName = 'ANO_DE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_usoANO_ATE: TIntegerField
      FieldName = 'ANO_ATE'
      ProviderFlags = [pfInUpdate]
    end
  end
end
