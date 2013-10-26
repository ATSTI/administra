object fProdGeraAumento: TfProdGeraAumento
  Left = 269
  Top = 159
  Width = 738
  Height = 529
  Caption = 'Aumento Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 169
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 45
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 112
      Top = 45
      Width = 37
      Height = 13
      Caption = 'Produto'
    end
    object FlatGauge1: TFlatGauge
      Left = 136
      Top = 128
      Width = 465
      Height = 25
      AdvColorBorder = 0
      ColorBorder = 8623776
      Progress = 0
    end
    object Label4: TLabel
      Left = 503
      Top = 66
      Width = 15
      Height = 13
      Caption = '. . .'
    end
    object Valor: TLabel
      Left = 309
      Top = 82
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label1: TLabel
      Left = 424
      Top = 45
      Width = 58
      Height = 13
      Caption = 'Valor Venda'
    end
    object Label9: TLabel
      Left = 6
      Top = 5
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object Label10: TLabel
      Left = 231
      Top = 5
      Width = 74
      Height = 13
      Caption = 'Fam'#237'lia / Grupo'
    end
    object Label11: TLabel
      Left = 465
      Top = 5
      Width = 107
      Height = 13
      Caption = 'Categoria / Sub-Grupo'
    end
    object Edit1: TEdit
      Left = 5
      Top = 60
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 111
      Top = 60
      Width = 306
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 13
      Top = 101
      Width = 97
      Height = 17
      Hint = 'Acrescento percentual ao valor do produto'
      Caption = 'Percentual %'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 117
      Top = 101
      Width = 73
      Height = 17
      Hint = 'Acrescenta o valor informado ao valor do produto'
      Caption = 'Reais R$'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 205
      Top = 101
      Width = 97
      Height = 17
      Hint = 'Altero o valor informado no cadastro do produto'
      Caption = 'Mudar o Valor'
      TabOrder = 4
      OnClick = CheckBox3Click
    end
    object BitBtn1: TBitBtn
      Left = 421
      Top = 93
      Width = 75
      Height = 25
      Caption = 'EXECUTAR'
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 509
      Top = 93
      Width = 75
      Height = 25
      Caption = 'SAIR'
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object btnProdutoProcura: TBitBtn
      Left = 73
      Top = 58
      Width = 34
      Height = 24
      TabOrder = 7
      TabStop = False
      OnClick = btnProdutoProcuraClick
      Glyph.Data = {
        C2070000424DC20700000000000036000000280000001E000000150000000100
        1800000000008C070000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
        A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
        108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
        CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
        2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
        FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
        30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
        EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
        3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
        BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
        E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
        AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
        A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
        FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
        20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
        FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
        CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
        4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
        FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
        C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
        CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000}
    end
    object Edit3: TEdit
      Left = 672
      Top = 2
      Width = 57
      Height = 17
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
    object Edit4: TEdit
      Left = 422
      Top = 60
      Width = 75
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object cbMarca: TJvDBSearchComboBox
      Left = 4
      Top = 18
      Width = 220
      Height = 21
      DataField = 'DESCMARCAS'
      DataSource = dstMarca
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 10
      OnExit = cbMarcaExit
    end
    object cbFamilia: TJvDBSearchComboBox
      Left = 233
      Top = 18
      Width = 220
      Height = 21
      DataField = 'DESCFAMILIA'
      DataSource = dst_familia
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 11
      OnExit = cbFamiliaExit
    end
    object cbCategoria: TJvDBSearchComboBox
      Left = 462
      Top = 18
      Width = 220
      Height = 21
      DataField = 'DESCCATEGORIA'
      DataSource = dstCategoria
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 12
      OnExit = cbCategoriaExit
    end
    object edValor: TEdit
      Left = 302
      Top = 97
      Width = 107
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Text = '0'
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 168
    Width = 729
    Height = 329
    TabOrder = 1
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
        Title.Caption = 'Codigo Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Descri'#231#227'o do Produto'
        Width = 507
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PRAZO'
        Title.Caption = 'Valor de Venda'
        Width = 79
        Visible = True
      end>
  end
  object scds_produto: TSQLClientDataSet
    CommandText = 
      'select CODPRODUTO'#13#10'        , CODPRO'#13#10'        , PRODUTO'#13#10'        ' +
      ', VALOR_PRAZO'#13#10' from PRODUTOS where PRODUTO like :pProd'#13#10'or ((FA' +
      'MILIA = :pFam) or (:pFam = '#39'todas as familias'#39'))'#13#10'or ((MARCA = :' +
      'pMar) or (:pMar = '#39'todas as marcas'#39'))'#13#10'or ((CATEGORIA = :pCat) o' +
      'r (:pCat = '#39'todas as categorias'#39'))'#13#10'order by PRODUTO'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pProd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFam'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFam'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pMar'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pMar'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCat'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 44
    Top = 128
    object scds_produtoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object scds_produtoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object scds_produtoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produtoVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
  end
  object dstCategoria: TDataSource
    DataSet = DM.cds_categoria
    Left = 634
    Top = 126
  end
  object dstMarca: TDataSource
    DataSet = DM.cds_Marca
    Left = 666
    Top = 126
  end
  object dst_familia: TDataSource
    DataSet = DM.cds_familia
    Left = 698
    Top = 126
  end
  object DtSrc: TDataSource
    DataSet = DM.cds_produto
    Left = 602
    Top = 126
  end
end
