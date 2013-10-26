inherited fProdutoProc: TfProdutoProc
  Top = 143
  Width = 800
  Height = 571
  Caption = 'Produto / Material'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 792
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 171
      Top = 10
      Width = 79
      Height = 13
      Caption = 'Produto/Material'
      Transparent = True
    end
    object edCod: TEdit
      Left = 24
      Top = 24
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object edProd: TEdit
      Left = 168
      Top = 24
      Width = 361
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 493
    Width = 792
    inherited btnGravar: TBitBtn
      Left = 388
      Visible = False
    end
    inherited btnIncluir: TBitBtn
      Left = 387
      Visible = False
    end
    inherited btnCancelar: TBitBtn
      Left = 388
      Visible = False
    end
    inherited btnExcluir: TBitBtn
      Left = 388
      Visible = False
    end
    inherited btnProcurar: TBitBtn
      Left = 388
      OnClick = btnProcurarClick
    end
  end
  object JvDBGrid1: TJvDBGrid [2]
    Left = 0
    Top = 51
    Width = 792
    Height = 442
    Align = alClient
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cds
  end
  object sds: TSQLDataSet
    CommandText = 'SELECT * FROM COMPRA_ITENS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 296
    Top = 80
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 328
    Top = 80
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 360
    Top = 80
    object cdsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object cdsITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 300
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 3
    end
  end
end
