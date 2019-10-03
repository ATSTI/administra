object fNF: TfNF
  Left = 0
  Top = 0
  Caption = 'Remetente NF'
  ClientHeight = 475
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label164: TLabel
    Left = 733
    Top = 259
    Width = 88
    Height = 13
    Caption = '* Valor da Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label160: TLabel
    Left = 728
    Top = 183
    Width = 111
    Height = 13
    Caption = '* Valor do ICMS ST'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label156: TLabel
    Left = 728
    Top = 125
    Width = 126
    Height = 13
    Caption = 'Data Prevista Entrega'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label163: TLabel
    Left = 504
    Top = 259
    Width = 117
    Height = 13
    Caption = '* Valor dos Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label159: TLabel
    Left = 475
    Top = 183
    Width = 174
    Height = 13
    Caption = '* Base de C'#225'lculo do ICMS ST'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label155: TLabel
    Left = 348
    Top = 125
    Width = 143
    Height = 13
    Caption = 'N'#250'mero do Pedido da NF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label158: TLabel
    Left = 272
    Top = 183
    Width = 91
    Height = 13
    Caption = '* Valor do ICMS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label162: TLabel
    Left = 264
    Top = 259
    Width = 22
    Height = 13
    Caption = 'PIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label161: TLabel
    Left = 40
    Top = 259
    Width = 103
    Height = 13
    Caption = 'Peso Total em KG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label157: TLabel
    Left = 40
    Top = 183
    Width = 154
    Height = 13
    Caption = '* Base de C'#225'lculo do ICMS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label154: TLabel
    Left = 40
    Top = 125
    Width = 160
    Height = 13
    Caption = 'N'#250'mero do Romaneio da NF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label153: TLabel
    Left = 728
    Top = 45
    Width = 47
    Height = 13
    Caption = '*Modelo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label152: TLabel
    Left = 528
    Top = 45
    Width = 38
    Height = 13
    Caption = '*CFOP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label151: TLabel
    Left = 348
    Top = 45
    Width = 105
    Height = 13
    Caption = '* Data de Emiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label150: TLabel
    Left = 175
    Top = 45
    Width = 53
    Height = 13
    Caption = '* N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label149: TLabel
    Left = 40
    Top = 45
    Width = 39
    Height = 13
    Caption = '* S'#233'rie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object valNFValor: TJvCalcEdit
    Left = 728
    Top = 278
    Width = 120
    Height = 21
    TabOrder = 15
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object valNFICMSST: TJvCalcEdit
    Left = 728
    Top = 202
    Width = 120
    Height = 21
    TabOrder = 11
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object dataNFPrev: TJvDatePickerEdit
    Left = 728
    Top = 144
    Width = 144
    Height = 24
    AllowNoDate = True
    Checked = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object valNFValProd: TJvCalcEdit
    Left = 504
    Top = 278
    Width = 120
    Height = 21
    TabOrder = 14
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object valNFBaseST: TJvCalcEdit
    Left = 504
    Top = 202
    Width = 120
    Height = 21
    TabOrder = 10
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object edtNFNumP: TEdit
    Left = 348
    Top = 144
    Width = 300
    Height = 21
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object valNFICMS: TJvCalcEdit
    Left = 264
    Top = 202
    Width = 120
    Height = 21
    TabOrder = 9
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object edtNFPin: TEdit
    Left = 264
    Top = 278
    Width = 120
    Height = 21
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object valNFPeso: TJvCalcEdit
    Left = 40
    Top = 278
    Width = 120
    Height = 21
    TabOrder = 12
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object valNFBase: TJvCalcEdit
    Left = 40
    Top = 202
    Width = 120
    Height = 21
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object edtNFRoma: TEdit
    Left = 40
    Top = 144
    Width = 288
    Height = 21
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object comboNFModelo: TComboBox
    Left = 728
    Top = 64
    Width = 144
    Height = 21
    TabOrder = 4
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '01 - NF Modelo 01/1A e Avulsa'
      '04 - NF de Produtor')
  end
  object edtNFCFOP: TEdit
    Left = 529
    Top = 64
    Width = 120
    Height = 21
    MaxLength = 4
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object dataNFEmi: TJvDatePickerEdit
    Left = 348
    Top = 64
    Width = 121
    Height = 24
    AllowNoDate = True
    Checked = True
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object edtNFNum: TEdit
    Left = 175
    Top = 64
    Width = 153
    Height = 21
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object edtNFserie: TEdit
    Left = 40
    Top = 64
    Width = 120
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object btnOk: TButton
    Left = 40
    Top = 403
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 16
    OnClick = btnOkClick
  end
  object btnFechar: TButton
    Left = 224
    Top = 403
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 17
    OnClick = btnFecharClick
  end
  object btnEdita: TButton
    Left = 132
    Top = 403
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 18
    OnClick = btnEditaClick
  end
end
