inherited fOf: TfOf
  Left = 336
  Top = 164
  Width = 788
  Height = 563
  Caption = 'Ordem Produ'#231#227'o'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 112
    Top = 56
    Width = 21
    Height = 13
    Caption = 'OP :'
  end
  object Label2: TLabel [1]
    Left = 232
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 56
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label4: TLabel [3]
    Left = 181
    Top = 75
    Width = 5
    Height = 13
    Caption = '/'
  end
  object Label5: TLabel [4]
    Left = 648
    Top = 56
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 780
    TabOrder = 5
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 778
      Height = 49
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ordem de Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowColor = clNavy
      ShadowSize = 1
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -24
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 485
    Width = 780
    TabOrder = 6
    inherited btnGravar: TBitBtn
      Left = 316
    end
    inherited btnIncluir: TBitBtn
      Left = 316
    end
    inherited btnCancelar: TBitBtn
      Left = 427
    end
    inherited btnExcluir: TBitBtn
      Left = 426
    end
    inherited btnProcurar: TBitBtn
      Left = 96
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 536
    end
    object btnImprimir: TBitBtn
      Left = 206
      Top = 5
      Width = 107
      Height = 42
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
  object OfId: TEdit [7]
    Left = 112
    Top = 72
    Width = 67
    Height = 21
    TabOrder = 1
    OnExit = OfIdExit
    OnKeyPress = FormKeyPress
  end
  object OfProd: TEdit [8]
    Left = 232
    Top = 72
    Width = 57
    Height = 21
    TabOrder = 3
    OnExit = OfProdExit
    OnKeyPress = FormKeyPress
  end
  object OfDesc: TEdit [9]
    Left = 328
    Top = 72
    Width = 313
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object OfQtde: TJvCalcEdit [10]
    Left = 648
    Top = 72
    Width = 113
    Height = 21
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object JvDBGrid1: TJvDBGrid [11]
    Left = 5
    Top = 104
    Width = 761
    Height = 369
    DataSource = DtSrc
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'OFID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFDATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFSTATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFQTDESOLIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFQTDEPRODUZ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFQTDEPERDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFMOTIVO'
        Visible = True
      end>
  end
  object OfData: TJvDateEdit [12]
    Left = 8
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object btnProdutoProcura: TBitBtn [13]
    Left = 287
    Top = 72
    Width = 35
    Height = 26
    PopupMenu = PopupMenu1
    TabOrder = 9
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
  object OFID_Ind: TEdit [14]
    Left = 188
    Top = 72
    Width = 39
    Height = 21
    ReadOnly = True
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cdsOf
  end
  object sqlOf: TSQLDataSet
    CommandText = 'select * from OF_OF where ofid = :ofid '#13#10'and OFID_IND = :ofind'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ofid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ofind'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 8
    object sqlOfOFID: TIntegerField
      FieldName = 'OFID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlOfOFDATA: TDateField
      FieldName = 'OFDATA'
    end
    object sqlOfOFSTATUS: TStringField
      FieldName = 'OFSTATUS'
      FixedChar = True
      Size = 1
    end
    object sqlOfOFQTDESOLIC: TFloatField
      FieldName = 'OFQTDESOLIC'
    end
    object sqlOfOFQTDEPRODUZ: TFloatField
      FieldName = 'OFQTDEPRODUZ'
    end
    object sqlOfOFQTDEPERDA: TFloatField
      FieldName = 'OFQTDEPERDA'
    end
    object sqlOfOFMOTIVO: TStringField
      FieldName = 'OFMOTIVO'
      Size = 100
    end
    object sqlOfCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sqlOfOFID_IND: TStringField
      FieldName = 'OFID_IND'
      Required = True
    end
  end
  object dspOf: TDataSetProvider
    DataSet = sqlOf
    Left = 152
    Top = 8
  end
  object cdsOf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ofid'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ofind'
        ParamType = ptInput
      end>
    ProviderName = 'dspOf'
    Left = 184
    Top = 8
    object cdsOfOFID: TIntegerField
      FieldName = 'OFID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOfOFDATA: TDateField
      FieldName = 'OFDATA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFSTATUS: TStringField
      FieldName = 'OFSTATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOfOFQTDESOLIC: TFloatField
      FieldName = 'OFQTDESOLIC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFQTDEPRODUZ: TFloatField
      FieldName = 'OFQTDEPRODUZ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFQTDEPERDA: TFloatField
      FieldName = 'OFQTDEPERDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFMOTIVO: TStringField
      FieldName = 'OFMOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsOfCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFID_IND: TStringField
      FieldName = 'OFID_IND'
      Required = True
    end
  end
  object sqlInd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OFID'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT MAX(OFID_IND) FROM OF_OF WHERE OFID = :OFID')
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 16
  end
  object sqlId: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pSERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ULTIMO_NUMERO, NOTAFISCAL from SERIES '
      'where SERIE like :pSERIE')
    SQLConnection = DM.sqlsisAdimin
    Left = 128
    Top = 40
    object sqlIdULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object sqlIdNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
  end
  object sdsDetalhe: TSQLDataSet
    CommandText = 
      'select  mt.CODPRODMP, mt.USAPRECO,'#13#10'sum(mt.qtdeusada * ofp.OFQTD' +
      'ESOLIC), mt.qtdeusada'#13#10', p.UNIDADEMEDIDA , p.PRODUTO '#13#10'from OF_O' +
      'F ofp'#13#10'left outer join PRODUTOS p on ofp.CODPRODUTO = p.CODPRODU' +
      'TO '#13#10'left outer join MATERIA_PRIMA mt on ofp.CODPRODUTO = mt.COD' +
      'PRODUTO '#13#10'where ofp.OFID = :pCODOF'#13#10'and ofp.OFID_IND = :pCODSERI' +
      'E'#13#10'and  mt.TIPOUSO = :PUSO'#13#10#13#10'group by  mt.CODPRODMP, mt.USAPREC' +
      'O, mt.qtdeusada, p.UNIDADEMEDIDA , p.PRODUTO '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODOF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCODSERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PUSO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 376
    Top = 366
  end
  object dspDetalhe: TDataSetProvider
    DataSet = sdsDetalhe
    UpdateMode = upWhereKeyOnly
    Left = 407
    Top = 366
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODOF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCODSERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PUSO'
        ParamType = ptInput
      end>
    ProviderName = 'dspDetalhe'
    Left = 440
    Top = 366
    object cdsDetalheCODPRODMP: TIntegerField
      FieldName = 'CODPRODMP'
      ReadOnly = True
    end
    object cdsDetalheSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
    end
    object cdsDetalheUSAPRECO: TStringField
      FieldName = 'USAPRECO'
      ReadOnly = True
    end
    object cdsDetalheQTDEUSADA: TFloatField
      FieldName = 'QTDEUSADA'
      ReadOnly = True
    end
    object cdsDetalheUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsDetalhePRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 300
    end
  end
  object sds_s: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 480
    Top = 368
  end
  object cds_movMat: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_movMat'
    OnNewRecord = cds_movMatNewRecord
    Left = 438
    Top = 326
    object cds_movMatCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_movMatDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object cds_movMatCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cds_movMatCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object cds_movMatSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_movMatCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_movMatNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cds_movMatDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      Size = 30
    end
    object cds_movMatALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
    object cds_movMatCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cds_movMatCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds_movMatNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object cds_movMatCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cds_movMatTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
    end
    object cds_movMatDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cds_movMatNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
    object cds_movMatPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cds_movMatMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      Size = 60
    end
    object cds_movMatCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
    end
    object cds_movMatBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
    end
    object cds_movMatCONTROLE: TStringField
      FieldName = 'CONTROLE'
      Size = 30
    end
    object cds_movMatCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object cds_movMatNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cds_movMatNOTAFISCAL_1: TIntegerField
      FieldName = 'NOTAFISCAL_1'
    end
    object cds_movMatSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cds_movMatOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cds_movMatOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cds_movMatCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
  end
  object dsp_movMat: TDataSetProvider
    DataSet = sds_movMat
    UpdateMode = upWhereKeyOnly
    Left = 403
    Top = 326
  end
  object sds_movMat: TSQLDataSet
    CommandText = 
      'select mov.*'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.OBS as ob' +
      'servacao'#13#10'        , vei.PLACA'#13#10'        , vei.MARCA_MODELO'#13#10'     ' +
      '   , usu.NOMEUSUARIO'#13#10'        , forn.NOMEFORNECEDOR'#13#10'        , n' +
      'at.DESCNATUREZA'#13#10'        , alm.NOME AS ALMOXARIFADO'#13#10'        , n' +
      'at.TIPOTITULO'#13#10'        , nat.BAIXAMOVIMENTO , ven.CODCCUSTO, ven' +
      '.NOTAFISCAL, comp.NOTAFISCAL, ven.SERIE '#13#10'from MOVIMENTO mov '#13#10'l' +
      'eft outer join VENDA ven on ven.codmovimento = mov.codmovimento ' +
      #13#10'left outer join COMPRA comp on comp.codmovimento = mov.codmovi' +
      'mento '#13#10'left outer join CLIENTES cli on cli.CODCLIENTE = mov.COD' +
      'CLIENTE '#13#10'left outer join VEICULO vei on vei.COD_CLIENTE = mov.C' +
      'ODCLIENTE '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = mov.' +
      'CODUSUARIO '#13#10'left outer join FORNECEDOR forn on forn.CODFORNECED' +
      'OR =  mov.CODFORNECEDOR '#13#10'inner join NATUREZAOPERACAO nat on  na' +
      't.CODNATUREZA = mov.CODNATUREZA '#13#10'left outer join PLANO alm on a' +
      'lm.CODIGO =  mov.CODALMOXARIFADO where mov.CODMOVIMENTO = :pCODM' +
      'OV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 372
    Top = 326
    object IntegerField1: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DateField1: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField1: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SmallintField3: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object SmallintField4: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField4: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField5: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField5: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object IntegerField5: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField6: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object StringField8: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SmallintField7: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object IntegerField6: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object IntegerField7: TIntegerField
      FieldName = 'NOTAFISCAL_1'
    end
    object StringField9: TStringField
      FieldName = 'SERIE'
    end
    object StringField10: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField11: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_movMatCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
  end
  object dsd_movDetMat: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE'#13#10', movd.CODMOVIMENTO'#13#10', movd.CODPRODUTO'#13#10 +
      ', movd.ICMS'#13#10', movd.PRECO'#13#10', movd.QUANTIDADE'#13#10', movd.QTDE_ALT'#13#10',' +
      ' movd.UN'#13#10', movd.BAIXA'#13#10', movd.CONTROLE'#13#10', movd.COD_COMISSAO'#13#10', ' +
      'movd.LOTE'#13#10', movd.DTAFAB'#13#10', movd.DTAVCTO'#13#10', prod.CODPRO'#13#10', prod.' +
      'PRODUTO'#13#10', prod.CODALMOXARIFADO'#13#10', prod.VALORUNITARIOATUAL'#13#10', pr' +
      'od.QTDE_PCT'#13#10', ccus.ALMOXARIFADO'#13#10', prod.CONTA_DESPESA , prod.LO' +
      'TES , movd.PRECOCUSTO'#13#10'from MOVIMENTODETALHE movd '#13#10'inner join P' +
      'RODUTOS prod on prod.CODPRODUTO=movd.CODPRODUTO '#13#10'left outer joi' +
      'n ALMOXARIFADO ccus on ccus.CODALMOXARIFADO = prod.CODALMOXARIFA' +
      'DO '#13#10'where movd.CODDETALHE=:CODDETALHE or movd.CODMOVIMENTO=:pCO' +
      'DMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 373
    Top = 297
    object IntegerField8: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField1: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField2: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField3: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object StringField12: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 200
    end
    object StringField13: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object FloatField4: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object StringField14: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SmallintField8: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField11: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = []
    end
    object StringField15: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object FloatField5: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object IntegerField12: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField16: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object StringField17: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object FloatField6: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object StringField18: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object DateField2: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object DateField3: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField19: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object FloatField7: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_movDetMat: TDataSetProvider
    DataSet = dsd_movDetMat
    UpdateMode = upWhereKeyOnly
    Left = 405
    Top = 297
  end
  object cds_movDetMat: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_movDetMat'
    OnNewRecord = cds_movDetMatNewRecord
    Left = 438
    Top = 297
    object cds_movDetMatCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_movDetMatCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cds_movDetMatCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cds_movDetMatICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds_movDetMatPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cds_movDetMatQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cds_movDetMatPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 200
    end
    object cds_movDetMatUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cds_movDetMatQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cds_movDetMatBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object cds_movDetMatCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cds_movDetMatCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds_movDetMatALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
    object cds_movDetMatVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cds_movDetMatCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cds_movDetMatCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cds_movDetMatCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cds_movDetMatQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object cds_movDetMatLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object cds_movDetMatDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object cds_movDetMatDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object cds_movDetMatLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cds_movDetMatPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInWhere]
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'select p.CODPRODUTO, p.CODPRO, p.VALORUNITARIOATUAL as  PRECO_CU' +
      'STO, p.PRODUTO, '#13#10'p.ESTOQUEATUAL as ESTOQUE, p.VALORUNITARIOATUA' +
      'L as PRECO_COMPRA, p.PRECOMEDIO as PRECO_VENDA,  p.UNIDADEMEDIDA' +
      ', '#39'0'#39' as LOTES'#13#10'from PRODUTOS P'#13#10'where p.CODPRODUTO = :id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 376
    Top = 399
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 399
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 440
    Top = 399
    object cdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 50
    end
    object cdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object cdsPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object cdsUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      Size = 10
    end
    object cdsLOTES2: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object cdsPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 9
      Size = 2
    end
    object cdsPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
  end
  object sdslote: TSQLDataSet
    CommandText = 
      'SELECT lote.*, '#13#10'               prod.PRODUTO, '#13#10'               p' +
      'rod.CODPRO '#13#10'FROM LOTES lote, PRODUTOS prod '#13#10'WHERE prod.CODPROD' +
      'UTO = lote.CODPRODUTO '#13#10'AND lote.LOTE = :PLOTE '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 376
    Top = 255
    object sdsloteCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsloteLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object sdsloteCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsloteDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdslotePRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object sdsloteCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sdslotePRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object dsplotes: TDataSetProvider
    DataSet = sdslote
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 255
  end
  object cdslotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end>
    ProviderName = 'dsplotes'
    Left = 440
    Top = 255
    object cdslotesCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdslotesLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object cdslotesCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslotesDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cdslotesPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object cdslotesCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cdslotesPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object scds_serie_proc: TSQLClientDataSet
    CommandText = 
      'select CODSERIE, SERIE, ULTIMO_NUMERO, NOTAFISCAL from SERIES wh' +
      'ere SERIE like :pSERIE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pSERIE'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 320
    Top = 65
    object scds_serie_procCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object scds_serie_procSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object scds_serie_procULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object scds_serie_procNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 392
    Top = 32
  end
end
