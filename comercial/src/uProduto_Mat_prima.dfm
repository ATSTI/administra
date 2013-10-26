inherited fProduto_Mat_prima: TfProduto_Mat_prima
  Left = 0
  Top = 25
  Width = 806
  Height = 473
  Caption = 'Materiais'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 11
    Top = 52
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label4: TLabel [1]
    Left = 123
    Top = 52
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label5: TLabel [2]
    Left = 486
    Top = 52
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object Label6: TLabel [3]
    Left = 548
    Top = 52
    Width = 43
    Height = 13
    Caption = 'Tipo Uso'
  end
  object Label7: TLabel [4]
    Left = 639
    Top = 50
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Usado'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 392
    Width = 798
    inherited btnGravar: TBitBtn
      Left = 451
    end
    inherited btnIncluir: TBitBtn
      Left = 450
    end
    inherited btnCancelar: TBitBtn
      Left = 559
    end
    inherited btnExcluir: TBitBtn
      Left = 559
    end
    inherited btnProcurar: TBitBtn
      Left = 341
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 668
    end
    object btnImprimir: TBitBtn
      Left = 341
      Top = 7
      Width = 103
      Height = 40
      Caption = '&Imprimir'
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = btnImprimirClick
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888800000000000
        0000000000000000008880777777777777777777777777777088070000000000
        000000000000000000080F7777777777777777777777777777080F7777777777
        777777777777777777080F77F7F7F7F7F7F7F7F7F7F7F77777080F77FFFFFFFF
        FFFFFFFFFFFFF77777080F7777777777777777777777F77777080F7700000000
        000000000000F72277080F777777777777777777777777AA77080F7777777777
        777777777777777777080F7F7F7F7F7F7F7F7F7F7F7F7F7F7F080FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF080F77777777777777777777777777770880F700000000
        0000000000000777708880F87088888888888888880077777088880F808F8F8F
        8F8F8F8F8F0777770888880880FFFFFFFFFFFFFFFF0777770888888000FFFFFF
        FFFFFFFFFF0000008888888880FFFFFFFFFFFFFFFF0888888888888880FFFFFF
        FFFFFFFFFF0888888888888880FFFFFFFFFFFF88880888888888888880FFFFFF
        FFFFF700070888888888888880FFFFFFFFFFF7FFF08888888888888880FFFFFF
        FFFFF7FF088888888888888880FFFFFFFFFFF7F0888888888888888880FFFFFF
        FFFFF70888888888888888888000000000000088888888888888888888888888
        8888888888888888888888888888888888888888888888888888}
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 798
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Top = -91
    end
    inherited Label2: TLabel
      Top = -90
    end
    object DBText2: TDBText
      Left = 5
      Top = 8
      Width = 550
      Height = 41
      DataField = 'PRODUTO'
      DataSource = DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  object DBGrid1: TDBGrid [7]
    Left = 8
    Top = 88
    Width = 777
    Height = 297
    TabStop = False
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDEUSADA'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOUSO'
        Title.Caption = 'Tipo Uso'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USAPRECO'
        Title.Caption = 'Usa Pre'#231'o'
        Width = 110
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [8]
    Left = 10
    Top = 66
    Width = 70
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODPRO'
    DataSource = DtSrc
    TabOrder = 3
    OnExit = DBEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [9]
    Left = 121
    Top = 66
    Width = 363
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PRODUTO'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [10]
    Left = 483
    Top = 66
    Width = 65
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'QTDEUSADA'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object BitBtn1: TBitBtn [11]
    Left = 81
    Top = 64
    Width = 37
    Height = 25
    PopupMenu = PopupMenu1
    TabOrder = 6
    TabStop = False
    OnClick = BitBtn1Click
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
  object DBComboBox1: TDBComboBox [12]
    Left = 549
    Top = 65
    Width = 89
    Height = 21
    Hint = 
      'BaixaConjunta - Usa o bot'#227'o no form Venda(insere Mat. Prima na P' +
      'ropria Venda);'#13#10'BaixaSeparada - Bot'#227'o Form FinalizaVenda(Mat. Pr' +
      'ima em outro Movimento);'#13#10'BaixaAutomatica - O sistema baixa Mat.' +
      ' Prima ao finalizar a venda;'#13#10'BaixaEntEstoque - O sistema baixa ' +
      'Mat. Prima qdo h'#225' Entrada no Estoque por Materiais.'
    BevelKind = bkFlat
    DataField = 'TIPOUSO'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'BAIXASEPARADA'
      'BAIXACONJUNTA'
      'BAIXAAUTOMATICA'
      'BAIXAENTESTOQUE')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBComboBox2: TDBComboBox [13]
    Left = 638
    Top = 65
    Width = 115
    Height = 21
    Hint = 'Pre'#231'o usado para baixar o Estoque.'
    BevelKind = bkFlat
    DataField = 'USAPRECO'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'PRECOCOMPRA'
      'PRECOVENDA'
      'SEMPRECO')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  inherited XPMenu1: TXPMenu
    Left = 536
  end
  inherited PopupMenu1: TPopupMenu
    Left = 576
  end
  inherited DtSrc: TDataSource
    DataSet = cdsMt
    Left = 488
    Top = 16
  end
  object sdsMt: TSQLDataSet
    CommandText = 
      'select mt.CODMAT, mt.CODPRODUTO, mt.CODPRODMP, mt.QTDEUSADA, pro' +
      '.PRODUTO, pro.CODPRO, mt.TIPOUSO, mt.USAPRECO from MATERIA_PRIMA' +
      ' mt, PRODUTOS pro where '#13#10'pro.codproduto = mt.codprodmp and '#13#10'mt' +
      '.CODPRODUTO = :PCOD '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PCOD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 16
    object sdsMtCODMAT: TIntegerField
      FieldName = 'CODMAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMtCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsMtCODPRODMP: TIntegerField
      FieldName = 'CODPRODMP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsMtQTDEUSADA: TFloatField
      FieldName = 'QTDEUSADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsMtPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object sdsMtCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sdsMtTIPOUSO: TStringField
      FieldName = 'TIPOUSO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsMtUSAPRECO: TStringField
      FieldName = 'USAPRECO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspMt: TDataSetProvider
    DataSet = sdsMt
    UpdateMode = upWhereKeyOnly
    Left = 424
    Top = 16
  end
  object cdsMt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PCOD'
        ParamType = ptInput
      end>
    ProviderName = 'dspMt'
    Left = 456
    Top = 16
    object cdsMtCODMAT: TIntegerField
      FieldName = 'CODMAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMtCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMtCODPRODMP: TIntegerField
      FieldName = 'CODPRODMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMtQTDEUSADA: TFloatField
      FieldName = 'QTDEUSADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000000'
      EditFormat = ',##0.000000'
    end
    object cdsMtPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object cdsMtCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cdsMtTIPOUSO: TStringField
      FieldName = 'TIPOUSO'
      Size = 30
    end
    object cdsMtUSAPRECO: TStringField
      FieldName = 'USAPRECO'
    end
  end
  object sqlprod: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select prod.CODPRODUTO'
      ', prod.CODPRO'
      ', prod.PRODUTO'
      ', prod.UNIDADEMEDIDA'
      ', prod.QTDE_PCT'
      ', prod.ICMS'
      ', prod.CODALMOXARIFADO'
      ', prod.CONTA_DESPESA'
      ', ccus.ALMOXARIFADO'
      ', prod.VALORUNITARIOATUAL'
      ', prod.VALOR_PRAZO'
      ', prod.COD_COMISSAO'
      ', prod.RATEIO'
      ', prod.TIPO  '
      ', prod.ESTOQUEATUAL '
      ', prod.LOCALIZACAO'
      ', prod.LOTES   '
      'from PRODUTOS prod '
      'left outer join ALMOXARIFADO ccus '
      'on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO '
      'where (CODPRO = :CODPRO)')
    SQLConnection = DM.sqlsisAdimin
    Left = 248
    Top = 16
  end
  object scds_produto_proc: TSQLDataSet
    CommandText = 
      'select CODPRODUTO, PRODUTO, CODPRO from PRODUTOS '#13#10'where CODPRO ' +
      '= :cod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 464
    Top = 216
    object scds_produto_procCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produto_procCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 388
    Top = 472
  end
end
