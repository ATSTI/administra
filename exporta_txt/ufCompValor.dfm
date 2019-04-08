object fCompValor: TfCompValor
  Left = 0
  Top = 0
  Caption = 'Componente Valor da Presta'#231#227'o'
  ClientHeight = 162
  ClientWidth = 367
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
  object Label2: TLabel
    Left = 26
    Top = 17
    Width = 42
    Height = 13
    Caption = '* Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 26
    Top = 63
    Width = 39
    Height = 13
    Caption = '* Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCompNome: TEdit
    Left = 74
    Top = 14
    Width = 265
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 26
    Top = 116
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnFechar: TButton
    Left = 207
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btnFecharClick
  end
  object btnEdita: TButton
    Left = 126
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btnEditaClick
  end
  object valComp: TJvCalcEdit
    Left = 74
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 1
    DecimalPlacesAlwaysShown = False
  end
end
