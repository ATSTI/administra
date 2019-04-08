object fDocOutros: TfDocOutros
  Left = 0
  Top = 0
  Caption = 'Doc. Outros'
  ClientHeight = 336
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 16
    Width = 122
    Height = 13
    Caption = '* Outros Documentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNFeChave: TEdit
    Left = 64
    Top = 35
    Width = 302
    Height = 21
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 155
    Top = 187
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnFechar: TButton
    Left = 255
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object btnEdita: TButton
    Left = 64
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditaClick
  end
end
