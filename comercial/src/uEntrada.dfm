inherited fEntrada: TfEntrada
  Left = 7
  Top = 18
  Width = 804
  Height = 561
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 0
    Width = 796
    Height = 60
    Align = alTop
    TabOrder = 10
    object BitBtn1: TBitBtn [0]
      Left = 166
      Top = 2
      Width = 77
      Height = 55
      Caption = 'F6-Finalizar'
      Enabled = False
      PopupMenu = PopupMenu1
      TabOrder = 7
      Visible = False
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC000000120B0000120B00001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
      Layout = blGlyphTop
    end
    inherited btnGravar: TBitBtn
      Left = 166
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnIncluir: TBitBtn
      Left = 4
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnCancelar: TBitBtn
      Left = 83
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnExcluir: TBitBtn
      Left = 82
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnProcurar: TBitBtn
      Left = 330
      Top = 2
      Width = 77
      Height = 55
      OnClick = btnProcurarClick
      Layout = blGlyphTop
    end
    inherited btnSair: TBitBtn
      Left = 409
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    object Panel1: TPanel
      Left = 161
      Top = 2
      Width = 4
      Height = 56
      BevelInner = bvRaised
      Color = clTeal
      PopupMenu = PopupMenu1
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      Left = 251
      Top = 2
      Width = 77
      Height = 55
      Caption = 'Mat. Prima'
      Enabled = False
      PopupMenu = PopupMenu1
      TabOrder = 8
      Visible = False
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC000000120B0000120B00001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777770000000770000000777777770FFFFF07700000007777
        77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
        0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
        FF077000000070607CCC00000007700000007060777770777777700000007060
        7CCC707777747000000070607777707777444000000070600000007777747000
        0000706666607774777470000000700000007777444770000000777777777777
        777770000000}
      Layout = blGlyphTop
    end
    object Panel3: TPanel
      Left = 245
      Top = 2
      Width = 4
      Height = 56
      BevelInner = bvRaised
      Color = clTeal
      PopupMenu = PopupMenu1
      TabOrder = 9
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 507
    Width = 796
    Height = 27
    Align = alBottom
    TabOrder = 5
    inherited Label1: TLabel
      Top = 64
    end
    inherited Label2: TLabel
      Top = 65
    end
    object Label15: TLabel
      Left = 8
      Top = 7
      Width = 251
      Height = 13
      Caption = 'Lan'#231'amentos de Planilhas para Pagamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 433
    Height = 46
    Caption = 'FORNECEDOR'
    PopupMenu = PopupMenu1
    TabOrder = 0
    TabStop = True
    object dbeCliente: TDBEdit
      Left = 5
      Top = 16
      Width = 52
      Height = 24
      DataField = 'CODFORNECEDOR'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnExit = dbeClienteExit
      OnKeyPress = FormKeyPress
    end
    object JvDBSearchComboBox2: TJvDBSearchComboBox
      Left = 80
      Top = 16
      Width = 345
      Height = 24
      DataField = 'NOMEFORNECEDOR'
      DataSource = dsForn
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnChange = JvDBSearchComboBox2Change
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 489
    Top = 63
    Width = 184
    Height = 48
    Caption = 'CENTRO RESULTADO'
    PopupMenu = PopupMenu1
    TabOrder = 1
    TabStop = True
    object ComboBox1: TComboBox
      Left = 4
      Top = 16
      Width = 176
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnChange = ComboBox1Change
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox3: TGroupBox [4]
    Left = 674
    Top = 63
    Width = 109
    Height = 48
    Caption = 'DATA EMISS'#195'O'
    PopupMenu = PopupMenu1
    TabOrder = 2
    TabStop = True
    object JvDBDatePickerEdit1: TJvDBDatePickerEdit
      Left = 7
      Top = 18
      Width = 95
      Height = 21
      AllowNoDate = True
      DataField = 'DATAMOVIMENTO'
      DataSource = DtSrc
      TabOrder = 0
      OnChange = JvDBDatePickerEdit1Change
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox4: TGroupBox [5]
    Left = 634
    Top = 217
    Width = 149
    Height = 51
    Caption = 'CONTROLE'
    PopupMenu = PopupMenu1
    TabOrder = 7
    object DBEdit1: TDBEdit
      Left = 4
      Top = 16
      Width = 138
      Height = 24
      TabStop = False
      DataField = 'CONTROLE'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox5: TGroupBox [6]
    Left = 636
    Top = 270
    Width = 150
    Height = 66
    Caption = 'TOTAL R$ - Bruto'
    PopupMenu = PopupMenu1
    TabOrder = 8
    object DBEdit4: TDBEdit
      Left = 8
      Top = 17
      Width = 134
      Height = 33
      TabStop = False
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'TotalPedido'
      DataSource = DtSrc1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox6: TGroupBox [7]
    Left = 0
    Top = 111
    Width = 633
    Height = 378
    Caption = 'PROCEDIMENTOS'
    TabOrder = 4
    TabStop = True
    object Label3: TLabel
      Left = 6
      Top = 51
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 461
      Top = 51
      Width = 52
      Height = 16
      Caption = 'Valor R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 14
      Width = 55
      Height = 13
      Caption = 'Benefici'#225'rio'
    end
    object Label5: TLabel
      Left = 7
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Setor'
    end
    object Label6: TLabel
      Left = 113
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object dbeProduto: TDBEdit
      Left = 6
      Top = 67
      Width = 69
      Height = 24
      DataField = 'CODPRO'
      DataSource = DtSrc1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnExit = dbeProdutoExit
      OnKeyPress = FormKeyPress
    end
    object btnProdutoProcura: TBitBtn
      Left = 75
      Top = 66
      Width = 35
      Height = 26
      Enabled = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      TabStop = False
      Visible = False
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
    object DBEdit10: TDBEdit
      Left = 460
      Top = 67
      Width = 79
      Height = 24
      DataField = 'PRECO'
      DataSource = DtSrc1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 4
      OnExit = DBEdit10Exit
      OnKeyPress = FormKeyPress
    end
    object btnNovo: TBitBtn
      Left = 544
      Top = 66
      Width = 41
      Height = 25
      Caption = 'Novo'
      PopupMenu = PopupMenu1
      TabOrder = 5
      OnClick = btnNovoClick
    end
    object BitBtn8: TBitBtn
      Left = 586
      Top = 66
      Width = 41
      Height = 25
      Caption = 'Excluir'
      PopupMenu = PopupMenu1
      TabOrder = 7
      OnClick = BitBtn8Click
      NumGlyphs = 2
    end
    object JvDBSearchComboBox1: TJvDBSearchComboBox
      Left = 112
      Top = 67
      Width = 345
      Height = 24
      DataField = 'PRODUTO'
      DataSource = dtProduto
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnChange = JvDBSearchComboBox1Change
      OnKeyPress = FormKeyPress
    end
    object DBGrid1: TJvDBGrid
      Left = 7
      Top = 104
      Width = 618
      Height = 265
      DataSource = DtSrc1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnKeyDown = DBGrid1KeyDown
      OnKeyUp = DBGrid1KeyDown
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
          FieldName = 'CODPRO'
          Title.Caption = 'C'#243'digo'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Procedimento'
          Width = 355
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Valor'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorTotal'
          Width = 81
          Visible = True
        end>
    end
    object JvDBSearchComboBox3: TJvDBSearchComboBox
      Left = 198
      Top = 30
      Width = 425
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = DataSource2
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnChange = JvDBSearchComboBox3Change
      OnKeyPress = FormKeyPress
    end
    object JvDBSearchComboBox4: TJvDBSearchComboBox
      Left = 110
      Top = 30
      Width = 81
      Height = 21
      DataField = 'RA'
      DataSource = DataSource2
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 9
      OnChange = JvDBSearchComboBox3Change
      OnKeyPress = FormKeyPress
    end
    object ComboBox2: TComboBox
      Left = 4
      Top = 29
      Width = 101
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnChange = ComboBox2Change
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox7: TGroupBox [8]
    Left = 634
    Top = 112
    Width = 150
    Height = 51
    Caption = 'DATA VENCIMENTO'
    TabOrder = 3
    TabStop = True
    object JvDatePickerEdit1: TJvDatePickerEdit
      Left = 8
      Top = 20
      Width = 129
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox8: TGroupBox [9]
    Left = 634
    Top = 164
    Width = 150
    Height = 52
    Caption = 'Num. T'#237'tulo'
    TabOrder = 6
    object Edit1: TEdit
      Left = 5
      Top = 19
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox9: TGroupBox [10]
    Left = 636
    Top = 342
    Width = 149
    Height = 51
    Caption = 'Imposto '
    PopupMenu = PopupMenu1
    TabOrder = 9
    object JvCalcEdit1: TJvCalcEdit
      Left = 9
      Top = 19
      Width = 121
      Height = 21
      DisplayFormat = ',##0.00'
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      OnChange = JvCalcEdit1Change
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox10: TGroupBox [11]
    Left = 637
    Top = 402
    Width = 149
    Height = 66
    Caption = 'TOTAL R$ -Liquido'
    PopupMenu = PopupMenu1
    TabOrder = 11
    object JvCalcEdit2: TJvCalcEdit
      Left = 11
      Top = 21
      Width = 122
      Height = 21
      DisplayFormat = ',##0.00'
      ReadOnly = True
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      OnChange = JvCalcEdit1Change
      OnKeyPress = FormKeyPress
    end
  end
  object btnClienteProcura: TBitBtn [12]
    Left = 448
    Top = 72
    Width = 35
    Height = 38
    Enabled = False
    TabOrder = 12
    TabStop = False
    Visible = False
    OnClick = btnClienteProcuraClick
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00090909001212
      12001F1F1F002C2C2C003939390045454500525252005F5F5F006C6C6C007878
      780085858500929292009F9F9F00ABABAB00B8B8B800C5C5C500D2D2D200DEDE
      DE00EBEBEB00F8F8F800F0FBFF00A4A0A000C0DCC000F0CAA60000003E000000
      5D0000007C0000009B000000BA000000D9000000F0002424FF004848FF006C6C
      FF009090FF00B4B4FF0000143E00001E5D0000287C0000329B00003CBA000046
      D9000055F000246DFF004885FF006C9DFF0090B5FF00B4CDFF00002A3E00003F
      5D0000547C0000699B00007EBA000093D90000AAF00024B6FF0048C2FF006CCE
      FF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B9B0000BABA0000D9
      D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FFFF00003E2A00005D
      3F00007C5400009B690000BA7E0000D9930000F0AA0024FFB60048FFC2006CFF
      CE0090FFDA00B4FFE600003E1400005D1E00007C2800009B320000BA3C0000D9
      460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FFCD00003E0000005D
      0000007C0000009B000000BA000000D9000000F0000024FF240048FF48006CFF
      6C0090FF9000B4FFB400143E00001E5D0000287C0000329B00003CBA000046D9
      000055F000006DFF240085FF48009DFF6C00B5FF9000CDFFB4002A3E00003F5D
      0000547C0000699B00007EBA000093D90000AAF00000B6FF2400C2FF4800CEFF
      6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B0000BABA0000D9D9
      0000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFFB4003E2A00005D3F
      00007C5400009B690000BA7E0000D9930000F0AA0000FFB62400FFC24800FFCE
      6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B320000BA3C0000D946
      0000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCDB4003E0000005D00
      00007C0000009B000000BA000000D9000000F0000000FF242400FF484800FF6C
      6C00FF909000FFB4B4003E0014005D001E007C0028009B003200BA003C00D900
      4600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4CD003E002A005D00
      3F007C0054009B006900BA007E00D9009300F000AA00FF24B600FF48C200FF6C
      CE00FF90DA00FFB4E6003E003E005D005D007C007C009B009B00BA00BA00D900
      D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4FF002A003E003F00
      5D0054007C0069009B007E00BA009300D900AA00F000B624FF00C248FF00CE6C
      FF00DA90FF00E6B4FF0014003E001E005D0028007C0032009B003C00BA004600
      D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF00070707070704
      0404070404040707070707070707444407444407070707070707070707070704
      0404070404040707070707070707444407444407070707070707070707070704
      0404070404040707070707070707444407444407070707070707070707070704
      0404070404040707070707070707444407444407070707070707070707070704
      0404070404040700000707070707444407444407070707070707070707070704
      0404070404040700000707070707444407444407070707070707070707070704
      0404070404040700000707070707444407444407070707070707070707070704
      040407040404070000070707072F2F2F2F2F2F2F070707070707070707070704
      040407040404070000070707072F2F2F2F2F2F2F070707070707070707460708
      040408040404070000070707462F2F2F2F2F2F2F460707070707070746460804
      040404040404080046070746462F2F2F2F2F2F2F464607070707070707070804
      040404040404084646080746080C0C0C0C0C0C0C084607070707070704040804
      040404040404080708070700000C0C0C040C0C0C000007070707070704040804
      04040404040408040407070C0C040C0C0C0C0C040C0C07070707070704040704
      04040404040408040407070C0C040C0C040C0C040C0C07070707070704040804
      04040504040407040407070C0C040C0C0C0C0C040C0C07070707070704040404
      04080508040408040407070C0C040C0C000C0C040C0C07070707070708040404
      04070507040404040407070C0C040C0C000C0C040C0C07070707070707040404
      040F050F040404040807070C0C040C0007000C040C0C07070707070707040404
      040F050F040404040707070C0C0C0C080F08000C0C0C07070707070707040404
      040F050F040404040707070C0C0C000F0C0F000C0C0C07070707070707040404
      040F050F04040408070707080C0C000F0C0F000C0C0807070707070707070404
      070F0F0F0404080707070707080C000C000C0000080707070707070707070707
      0707000707070707070707070707070046000707070707070707070707070707
      0700460007070707070707070708004646460008070707070707070707070707
      0846464608070707070707070700004646460000070707070707070707070707
      0046464600070707070707070707000046000007070707070707070707070707
      0000000000070707070707070707000000000007070707070707070707070707
      0800000008070707070707070707070000000707070707070707070707070707
      0708000807070707070707070707070808080707070707070707070707070707
      0707070707070707070707070707070707070707070707070707070707070707
      0707070707070707070707070707070707070707070707070707}
  end
  inherited PopupMenu1: TPopupMenu
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
    object Finalizar1: TMenuItem [4]
      Caption = 'Finalizar'
      ShortCut = 117
    end
    object IncluirProduto1: TMenuItem
      Caption = 'Incluir Produto'
      ShortCut = 45
      OnClick = btnNovoClick
    end
    object ExcluiProduto1: TMenuItem
      Caption = 'Exclui Produto'
      OnClick = BitBtn8Click
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_Movimento
    Left = 168
    Top = 256
  end
  object sds_Movimento: TSQLDataSet
    CommandText = 
      'select mov.*'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.OBS'#13#10'    ' +
      '    , vei.PLACA'#13#10'        , vei.MARCA_MODELO'#13#10'        , usu.NOMEU' +
      'SUARIO'#13#10'        , forn.NOMEFORNECEDOR'#13#10'        , nat.DESCNATUREZ' +
      'A'#13#10'        , alm.NOME AS ALMOXARIFADO'#13#10'        , nat.TIPOTITULO'#13 +
      #10'        , nat.BAIXAMOVIMENTO '#13#10'from MOVIMENTO mov '#13#10'left outer ' +
      'join CLIENTES cli on cli.CODCLIENTE = mov.CODCLIENTE '#13#10'left oute' +
      'r join VEICULO vei on vei.COD_CLIENTE = mov.CODCLIENTE '#13#10'left ou' +
      'ter join USUARIO usu on usu.CODUSUARIO = mov.CODUSUARIO '#13#10'left o' +
      'uter join FORNECEDOR forn on forn.CODFORNECEDOR =  mov.CODFORNEC' +
      'EDOR '#13#10'inner join NATUREZAOPERACAO nat on  nat.CODNATUREZA = mov' +
      '.CODNATUREZA '#13#10'left outer join PLANO alm on alm.CODIGO =  mov.CO' +
      'DALMOXARIFADO where mov.CODMOVIMENTO = :pCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 255
    object sds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object sds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object sds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object sds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dsp_Movimento: TDataSetProvider
    DataSet = sds_Movimento
    UpdateMode = upWhereKeyOnly
    Left = 103
    Top = 255
  end
  object cds_Movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Movimento'
    BeforePost = cds_MovimentoBeforePost
    OnNewRecord = cds_MovimentoNewRecord
    Left = 135
    Top = 255
    object cds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object cds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object cds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object DtSrc1: TDataSource
    DataSet = cds_Mov_det
    OnStateChange = DtSrc1StateChange
    Left = 169
    Top = 287
  end
  object cds_Mov_det: TClientDataSet
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
    ProviderName = 'dsp_Mov_det'
    OnCalcFields = cds_Mov_detCalcFields
    OnNewRecord = cds_Mov_detNewRecord
    Left = 136
    Top = 287
    object cds_Mov_detCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Mov_detCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_Mov_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#.00'
      currency = True
    end
    object cds_Mov_detQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detPRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 200
    end
    object cds_Mov_detUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_Mov_detValorTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'ValorTotal'
      ProviderFlags = []
      DisplayFormat = ',#.00'
    end
    object cds_Mov_detQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object cds_Mov_detCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object cds_Mov_detLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_Mov_detDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_Mov_detDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_Mov_detRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds_Mov_detNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cds_Mov_detTotalPedido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotalPedido'
      ProviderFlags = []
      Active = True
      currency = True
      DisplayFormat = ',#0.00'
      Expression = 'Sum(ValorTotal)'
    end
  end
  object dsp_Mov_det: TDataSetProvider
    DataSet = sds_Mov_Det
    UpdateMode = upWhereKeyOnly
    Left = 103
    Top = 287
  end
  object sds_Mov_Det: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE'#13#10', movd.CODMOVIMENTO'#13#10', movd.CODPRODUTO'#13#10 +
      ', movd.ICMS, movd.PRECO'#13#10', movd.QUANTIDADE'#13#10', movd.QTDE_ALT'#13#10', m' +
      'ovd.UN'#13#10', movd.BAIXA'#13#10', movd.CONTROLE'#13#10', movd.COD_COMISSAO'#13#10', mo' +
      'vd.LOTE'#13#10', movd.DTAFAB, movd.CODALMOXARIFADO '#13#10', movd.DTAVCTO'#13#10',' +
      ' prod.CODPRO'#13#10',prod.PRODUTO'#13#10#13#10', prod.VALORUNITARIOATUAL'#13#10', prod' +
      '.QTDE_PCT'#13#10', ccus.NOMECLIENTE'#13#10', prod.CONTA_DESPESA, prod.RATEIO' +
      '  '#13#10'from MOVIMENTODETALHE movd '#13#10'inner join PRODUTOS prod on pro' +
      'd.CODPRODUTO=movd.CODPRODUTO '#13#10'left outer join CLIENTES ccus on ' +
      'ccus.CODCLIENTE = movd.CODALMOXARIFADO '#13#10'where movd.CODDETALHE=:' +
      'CODDETALHE or movd.CODMOVIMENTO=:pCODMOV'
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
    Left = 71
    Top = 287
    object sds_Mov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_Mov_DetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_Mov_DetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetPRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 200
    end
    object sds_Mov_DetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_Mov_DetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object sds_Mov_DetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object sds_Mov_DetLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_Mov_DetDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object dtProduto: TDataSource
    DataSet = cds_prod
    Left = 168
    Top = 350
  end
  object cds_prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_prod'
    Left = 135
    Top = 349
    object StringField14: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField15: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField16: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField17: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object DateField2: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object StringField18: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object FloatField7: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField8: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField9: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField10: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField11: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField12: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_prodPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_prodCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_prodCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_prodRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_prodCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_prodQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_prodDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object cds_prodCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_prodCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
  end
  object dsp_prod: TDataSetProvider
    DataSet = sds_prod
    UpdateMode = upWhereKeyOnly
    Left = 103
    Top = 349
  end
  object sds_prod: TSQLDataSet
    CommandText = 'select * from PRODUTOS order by PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 71
    Top = 349
    object StringField8: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField10: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object DateField1: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField12: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object FloatField1: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField2: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField3: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField4: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField5: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField6: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_prodCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_prodBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_prodPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_prodCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_prodCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_prodCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_prodCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_prodRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_prodCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_prodQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_prodDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object sds_prodCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_prodCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
  end
  object dsForn: TDataSource
    DataSet = cdsForn
    Left = 174
    Top = 212
  end
  object s_2: TSQLDataSet
    CommandText = 
      'select codFornecedor, nomeFornecedor, prazoPagamento from FORNEC' +
      'EDOR order by nomeFornecedor'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 77
    Top = 210
    object s_2CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object s_2NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object s_2PRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 110
    Top = 210
  end
  object cdsForn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'd_2'
    Left = 144
    Top = 211
    object cdsFornCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsFornNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cdsFornPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
  end
  object sdsLancado: TSQLDataSet
    CommandText = 'select  * from COMPRA where codmovimento =  :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 656
    Top = 477
    object sdsLancadoCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLancadoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLancadoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLancadoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLancadoDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLancadoNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsLancadoFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsLancadoN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsLancadoSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsLancadoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLancadoCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
  end
  object dspLancado: TDataSetProvider
    DataSet = sdsLancado
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 477
  end
  object cdsLancado: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspLancado'
    Left = 720
    Top = 477
    object cdsLancadoCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object cdsLancadoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsLancadoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsLancadoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object cdsLancadoDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Required = True
    end
    object cdsLancadoNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cdsLancadoBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object cdsLancadoCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
    end
    object cdsLancadoSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsLancadoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cdsLancadoDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
    end
    object cdsLancadoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsLancadoNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsLancadoSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsLancadoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsLancadoCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object cdsLancadoN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
    end
    object cdsLancadoOPERACAO: TStringField
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsLancadoFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsLancadoN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cdsLancadoCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cdsLancadoMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
    end
    object cdsLancadoAPAGAR: TFloatField
      FieldName = 'APAGAR'
    end
    object cdsLancadoVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
    end
    object cdsLancadoENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object cdsLancadoN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      Size = 30
    end
    object cdsLancadoSTATUS1: TStringField
      FieldName = 'STATUS1'
      FixedChar = True
      Size = 1
    end
    object cdsLancadoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsLancadoVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsLancadoVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsLancadoOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cdsLancadoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsLancadoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
  end
  object DataSource1: TDataSource
    Left = 752
    Top = 477
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODCLIENTE,'#13#10'          NOMECLIENTE,'#13#10'          RAZAOSOCIA' +
      'L,'#13#10'          RA ,'#13#10'          COD_FAIXA,'#13#10'           GRUPO_CLIEN' +
      'TE'#13#10#13#10'from CLIENTES'#13#10#13#10'where  ((GRUPO_CLIENTE = :pCC) or (:pCC =' +
      ' '#39'todostodos'#39')) and STATUS = 0  order by NOMECLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 80
    Top = 399
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 112
    Top = 399
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 144
    Top = 399
    object cdsBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsBuscaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsBuscaCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsBuscaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = cdsBusca
    Left = 176
    Top = 399
  end
end
