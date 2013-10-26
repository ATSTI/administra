object fProdutoFornec: TfProdutoFornec
  Left = 192
  Top = 107
  Width = 715
  Height = 530
  Caption = 'Produto por Fornececedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 2
    Width = 73
    Height = 13
    Caption = 'C'#243'digo Produto'
  end
  object Label2: TLabel
    Left = 24
    Top = 50
    Width = 119
    Height = 13
    Caption = 'C'#243'd. Produto Fornecedor'
  end
  object Label3: TLabel
    Left = 24
    Top = 90
    Width = 54
    Height = 13
    Caption = 'Fornecedor'
  end
  object edCodProduto: TEdit
    Left = 24
    Top = 18
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edCodProdutoExit
  end
  object edCodProdutoFornec: TEdit
    Left = 24
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edCodFornec: TEdit
    Left = 24
    Top = 106
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edProduto: TEdit
    Left = 288
    Top = 18
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edProdutoFornec: TEdit
    Left = 152
    Top = 66
    Width = 529
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object edFornec: TEdit
    Left = 152
    Top = 106
    Width = 529
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 28
    Top = 168
    Width = 653
    Height = 305
    DataSource = dsProdutoFornec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRODFORNEC'
        Title.Caption = 'C'#243'd. Produto Forn.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFORNECEDOR'
        Title.Caption = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'C'#243'digo ATS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 350
        Visible = True
      end>
  end
  object btnInsere: TBitBtn
    Left = 48
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Grava Item'
    TabOrder = 7
    OnClick = btnInsereClick
  end
  object BitBtn1: TBitBtn
    Left = 146
    Top = 16
    Width = 38
    Height = 25
    Caption = '...'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Excluir Item'
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 186
    Top = 16
    Width = 103
    Height = 25
    Caption = 'Procurar Cod.Barra'
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object sdsProdutoFornec: TSQLDataSet
    CommandText = 
      'SELECT pf.*, p.PRODUTO, p.CODPRODUTO CP, p.CODPRO '#13#10'     FROM PR' +
      'ODUTO_FORNECEDOR pf'#13#10'     LEFT OUTER JOIN PRODUTOS P ON P.CODPRO' +
      'DUTO = pf.CODPRODUTO '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = fImporta_XML.sqlConn
    Left = 200
    Top = 48
  end
  object dspProdutoFornec: TDataSetProvider
    DataSet = sdsProdutoFornec
    Options = [poAllowCommandText]
    Left = 232
    Top = 48
  end
  object cdsProdutoFornec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoFornec'
    Left = 264
    Top = 48
    object cdsProdutoFornecCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsProdutoFornecCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsProdutoFornecCODPRODFORNEC: TStringField
      FieldName = 'CODPRODFORNEC'
      Size = 30
    end
    object cdsProdutoFornecPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object cdsProdutoFornecCP: TIntegerField
      FieldName = 'CP'
    end
    object cdsProdutoFornecCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object dsProdutoFornec: TDataSource
    DataSet = cdsProdutoFornec
    Left = 296
    Top = 8
  end
  object sqlBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = fImporta_XML.sqlConn
    Left = 344
  end
end
