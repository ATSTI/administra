object fTerminalCaixaAbre: TfTerminalCaixaAbre
  Left = 192
  Top = 108
  Width = 433
  Height = 337
  Caption = 'Abertura Caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 90
    Top = 24
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Label2: TLabel
    Left = 88
    Top = 80
    Width = 26
    Height = 13
    Caption = 'Caixa'
  end
  object Label3: TLabel
    Left = 88
    Top = 128
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object lblValor: TLabel
    Left = 88
    Top = 176
    Width = 54
    Height = 13
    Caption = 'Valor Inicial'
  end
  object cbUsuario: TJvDBSearchComboBox
    Left = 88
    Top = 48
    Width = 289
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbUsuario'
  end
  object cbCaixa: TJvDBSearchComboBox
    Left = 88
    Top = 96
    Width = 289
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'JvDBSearchComboBox1'
  end
  object dtData: TJvDatePickerEdit
    Left = 88
    Top = 144
    Width = 121
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 2
  end
  object edValor: TJvCalcEdit
    Left = 88
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  object btnCaixa: TBitBtn
    Left = 144
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Abrir Caixa'
    TabOrder = 4
  end
end
