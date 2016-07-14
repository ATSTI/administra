inherited fNCM: TfNCM
  Left = 263
  Top = 174
  Width = 807
  Height = 523
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 6
    Top = 48
    Width = 36
    Height = 16
    Caption = 'NCM :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 154
    Top = 48
    Width = 83
    Height = 16
    Caption = 'Aliq. Nacional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 248
    Top = 48
    Width = 64
    Height = 16
    Caption = 'Aliq. Intern.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [3]
    Left = 539
    Top = 47
    Width = 36
    Height = 16
    Caption = 'CEST'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [4]
    Left = 344
    Top = 46
    Width = 82
    Height = 16
    Caption = 'Aliq. Estadual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [5]
    Left = 440
    Top = 46
    Width = 86
    Height = 16
    Caption = 'Aliq. Municipal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 442
    Width = 799
    TabOrder = 7
    inherited btnGravar: TBitBtn
      Left = 243
      Width = 105
    end
    inherited btnIncluir: TBitBtn
      Left = 243
      Width = 105
    end
    inherited btnCancelar: TBitBtn
      Left = 353
      Width = 105
    end
    inherited btnExcluir: TBitBtn
      Left = 353
      Width = 105
    end
    inherited btnProcurar: TBitBtn
      Left = 123
      Width = 115
      Caption = 'F8-Class. Fiscal'
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 462
      Width = 105
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 799
    Height = 49
    TabOrder = 8
    inherited Label1: TLabel
      Left = 107
      Width = 266
      Caption = 'Cadastro - NCM'
    end
    inherited Label2: TLabel
      Left = 108
      Width = 266
      Caption = 'Cadastro - NCM'
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 4
    Top = 64
    Width = 104
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NCM'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [9]
    Left = 152
    Top = 64
    Width = 91
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ALIQNAC'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [10]
    Left = 248
    Top = 64
    Width = 90
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ALIQIMP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [11]
    Left = 1
    Top = 152
    Width = 797
    Height = 290
    DataSource = DtSrc
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
        FieldName = 'NCM'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQNAC'
        Title.Caption = 'Aliquota Nacional'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQIMP'
        Title.Caption = 'Al'#237'quota importa'#231#227'o'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEST'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADUAL'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MUNICIPAL'
        Width = 187
        Visible = True
      end>
  end
  object DBEdit4: TDBEdit [12]
    Left = 537
    Top = 64
    Width = 101
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CEST'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object BitBtn7: TBitBtn [13]
    Left = 648
    Top = 62
    Width = 33
    Height = 26
    TabOrder = 10
    OnClick = BitBtn7Click
    Glyph.Data = {
      C2070000424DC20700000000000036000000280000001E000000150000000100
      1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
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
  object btnProcNCM: TBitBtn [14]
    Left = 108
    Top = 62
    Width = 33
    Height = 26
    TabOrder = 11
    OnClick = btnProcNCMClick
    Glyph.Data = {
      C2070000424DC20700000000000036000000280000001E000000150000000100
      1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
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
  object DBEdit5: TDBEdit [15]
    Left = 344
    Top = 64
    Width = 90
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ESTADUAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [16]
    Left = 440
    Top = 64
    Width = 90
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'MUNICIPAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object GroupBox1: TGroupBox [17]
    Left = 2
    Top = 88
    Width = 791
    Height = 60
    Caption = 'IBPT'
    TabOrder = 6
    object Label9: TLabel
      Left = 5
      Top = 16
      Width = 15
      Height = 13
      Caption = 'Ex.'
    end
    object Label10: TLabel
      Left = 73
      Top = 16
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label11: TLabel
      Left = 280
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Fed. - Nac.'
    end
    object Label12: TLabel
      Left = 338
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Fed. - Imp.'
    end
    object Label13: TLabel
      Left = 405
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Estadual'
    end
    object Label14: TLabel
      Left = 453
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Municipal'
    end
    object Label15: TLabel
      Left = 730
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Fonte'
    end
    object Label16: TLabel
      Left = 671
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Vers'#227'o'
    end
    object Label17: TLabel
      Left = 623
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Chave'
    end
    object Label18: TLabel
      Left = 100
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label19: TLabel
      Left = 504
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Vig. Inicio'
    end
    object Label20: TLabel
      Left = 565
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Vig. Fim'
    end
    object DBEdit7: TDBEdit
      Left = 3
      Top = 30
      Width = 67
      Height = 21
      Hint = 'Exce'#231#227'o Fiscal da NCM'
      DataField = 'EX'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 71
      Top = 30
      Width = 25
      Height = 21
      Hint = '0:NCM, 1:LBS ou 2:LC116'
      DataField = 'TIPO'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 98
      Top = 30
      Width = 178
      Height = 21
      Hint = '0:NCM, 1:LBS ou 2:LC116'
      DataField = 'DESCRICAO'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 278
      Top = 30
      Width = 56
      Height = 21
      Hint = 
        'Carga Tribut'#225'ria Federal para Produtos com CST iniciando em 0,3,' +
        '4,5.'
      DataField = 'IMP_FEDERAL'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit11: TDBEdit
      Left = 336
      Top = 30
      Width = 66
      Height = 21
      Hint = 
        'Carga Tribut'#225'ria Federal para Produtos importados, com CST inici' +
        'ando com n'#250'meros diferentes de 0,3,4,5.'
      DataField = 'IMP_FERERAL_IMP'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit12: TDBEdit
      Left = 403
      Top = 30
      Width = 48
      Height = 21
      Hint = 'Carga Tribut'#225'ria Estadual'
      DataField = 'ESTADUAL'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBEdit13: TDBEdit
      Left = 452
      Top = 30
      Width = 48
      Height = 21
      Hint = 'Carga Tribut'#225'ria Municipal'
      DataField = 'MUNICIPAL'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object DBEdit14: TDBEdit
      Left = 502
      Top = 30
      Width = 59
      Height = 21
      Hint = 'Carga Tribut'#225'ria Municipal'
      DataField = 'VIGENCIAINICIO'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object DBEdit15: TDBEdit
      Left = 563
      Top = 30
      Width = 55
      Height = 21
      Hint = 'Carga Tribut'#225'ria Municipal'
      DataField = 'VIGENCIAFIM'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit16: TDBEdit
      Left = 620
      Top = 30
      Width = 47
      Height = 21
      Hint = 'Carga Tribut'#225'ria Municipal'
      DataField = 'CHAVE'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit17: TDBEdit
      Left = 669
      Top = 30
      Width = 57
      Height = 21
      Hint = 'Carga Tribut'#225'ria Municipal'
      DataField = 'VERSAO'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit18: TDBEdit
      Left = 728
      Top = 30
      Width = 58
      Height = 21
      Hint = 'Carga Tribut'#225'ria Municipal'
      DataField = 'FONTE'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 64
  end
  inherited PopupMenu1: TPopupMenu
    Left = 112
  end
  inherited DtSrc: TDataSource
    DataSet = cdsNCM
    Left = 16
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM'
    Left = 344
    Top = 8
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 8
    end
    object cdsNCMALIQNAC: TFloatField
      FieldName = 'ALIQNAC'
    end
    object cdsNCMALIQIMP: TFloatField
      FieldName = 'ALIQIMP'
    end
    object cdsNCMCEST: TStringField
      FieldName = 'CEST'
      EditMask = '00\.000\.00;0;_'
      Size = 7
    end
    object cdsNCMESTADUAL: TFloatField
      FieldName = 'ESTADUAL'
    end
    object cdsNCMMUNICIPAL: TFloatField
      FieldName = 'MUNICIPAL'
    end
    object cdsNCMIMP_FEDERAL: TFloatField
      FieldName = 'IMP_FEDERAL'
    end
    object cdsNCMIMP_FERERAL_IMP: TFloatField
      FieldName = 'IMP_FERERAL_IMP'
    end
    object cdsNCMTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMEX: TIntegerField
      FieldName = 'EX'
    end
    object cdsNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsNCMIMP_ESTADUAL: TFloatField
      FieldName = 'IMP_ESTADUAL'
    end
    object cdsNCMIMP_MUNICIPAL: TFloatField
      FieldName = 'IMP_MUNICIPAL'
    end
    object cdsNCMVIGENCIAINICIO: TDateField
      FieldName = 'VIGENCIAINICIO'
    end
    object cdsNCMVIGENCIAFIM: TDateField
      FieldName = 'VIGENCIAFIM'
    end
    object cdsNCMCHAVE: TStringField
      FieldName = 'CHAVE'
    end
    object cdsNCMVERSAO: TStringField
      FieldName = 'VERSAO'
    end
    object cdsNCMFONTE: TStringField
      FieldName = 'FONTE'
      Size = 60
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 312
    Top = 8
  end
  object sdsNCM: TSQLDataSet
    CommandText = 
      'Select n.NCM '#13#10', n.ALIQNAC '#13#10', n.ALIQIMP     '#13#10', n.CEST   '#13#10', n.' +
      'ESTADUAL '#13#10', n.MUNICIPAL'#13#10#13#10', i.ALIQNAC  as IMP_FEDERAL '#13#10', i.AL' +
      'IQIMP as IMP_FERERAL_IMP'#13#10', i.TIPO '#13#10', i.EX '#13#10', i.DESCRICAO '#13#10', ' +
      'i.ESTADUAL  as IMP_ESTADUAL '#13#10', i.MUNICIPAL  as IMP_MUNICIPAL'#13#10',' +
      ' i.VIGENCIAINICIO '#13#10', i.VIGENCIAFIM       '#13#10', i.CHAVE '#13#10', i.VERS' +
      'AO  '#13#10', i.FONTE '#13#10' from NCM n'#13#10'left outer join IBPT i on i.NCM =' +
      ' n.NCM '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 280
    Top = 8
    object sdsNCMNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 8
    end
    object sdsNCMALIQNAC: TFloatField
      FieldName = 'ALIQNAC'
    end
    object sdsNCMALIQIMP: TFloatField
      FieldName = 'ALIQIMP'
    end
    object sdsNCMCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object sdsNCMESTADUAL: TFloatField
      FieldName = 'ESTADUAL'
    end
    object sdsNCMMUNICIPAL: TFloatField
      FieldName = 'MUNICIPAL'
    end
    object sdsNCMIMP_FEDERAL: TFloatField
      FieldName = 'IMP_FEDERAL'
    end
    object sdsNCMIMP_FERERAL_IMP: TFloatField
      FieldName = 'IMP_FERERAL_IMP'
    end
    object sdsNCMTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsNCMEX: TIntegerField
      FieldName = 'EX'
    end
    object sdsNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sdsNCMIMP_ESTADUAL: TFloatField
      FieldName = 'IMP_ESTADUAL'
    end
    object sdsNCMIMP_MUNICIPAL: TFloatField
      FieldName = 'IMP_MUNICIPAL'
    end
    object sdsNCMVIGENCIAINICIO: TDateField
      FieldName = 'VIGENCIAINICIO'
    end
    object sdsNCMVIGENCIAFIM: TDateField
      FieldName = 'VIGENCIAFIM'
    end
    object sdsNCMCHAVE: TStringField
      FieldName = 'CHAVE'
    end
    object sdsNCMVERSAO: TStringField
      FieldName = 'VERSAO'
    end
    object sdsNCMFONTE: TStringField
      FieldName = 'FONTE'
      Size = 60
    end
  end
end
