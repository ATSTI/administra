object fQuantCarga: TfQuantCarga
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Quantidade de Carga'
  ClientHeight = 229
  ClientWidth = 306
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
  object Label1: TLabel
    Left = 26
    Top = 8
    Width = 181
    Height = 13
    Caption = '* Codigo da Unidade de Medidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 26
    Top = 65
    Width = 95
    Height = 13
    Caption = '* Tipo de Medida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 26
    Top = 111
    Width = 75
    Height = 13
    Caption = '* Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object combQC: TComboBox
    Left = 26
    Top = 26
    Width = 265
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
    Items.Strings = (
      '00 - M3'
      '01 - KG'
      '02 - TON'
      '03 - UNIDADE'
      '04 - LITROS'
      '05 - MMBTU')
  end
  object edtQCTm: TEdit
    Left = 26
    Top = 84
    Width = 265
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object btnOk: TButton
    Left = 26
    Top = 196
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOkClick
  end
  object btnFechar: TButton
    Left = 223
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object btnEdita: TButton
    Left = 107
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
    OnClick = btnEditaClick
  end
  object valQCQ: TJvCalcEdit
    Left = 26
    Top = 130
    Width = 121
    Height = 21
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
end
