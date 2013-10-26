object fProdutoProc: TfProdutoProc
  Left = 192
  Top = 107
  Width = 621
  Height = 552
  Caption = 'Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 9
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 134
    Top = 10
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object BitBtn1: TBitBtn
    Left = 479
    Top = 21
    Width = 72
    Height = 25
    Caption = 'Procurar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object edCod: TEdit
    Left = 7
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edDesc: TEdit
    Left = 130
    Top = 25
    Width = 347
    Height = 21
    TabOrder = 2
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 5
    Top = 59
    Width = 600
    Height = 448
    DataSource = dsProdutoProc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Width = 450
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 552
    Top = 21
    Width = 59
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object sdsBuscaProd: TSQLDataSet
    CommandText = 'SELECT CODPRODUTO, CODPRO, PRODUTO FROM PRODUTOS '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = fImporta_XML.sqlConn
    Left = 112
  end
  object dspBuscaProd: TDataSetProvider
    DataSet = sdsBuscaProd
    Options = [poAllowCommandText]
    Left = 232
  end
  object cdsBuscaProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscaProd'
    Left = 272
    object cdsBuscaProdCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsBuscaProdCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsBuscaProdPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
  end
  object dsProdutoProc: TDataSource
    DataSet = cdsBuscaProd
    Left = 312
  end
end
