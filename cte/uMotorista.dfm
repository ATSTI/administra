object fMotorista: TfMotorista
  Left = 0
  Top = 0
  Caption = 'Motoristas'
  ClientHeight = 222
  ClientWidth = 544
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
    Left = 40
    Top = 16
    Width = 28
    Height = 13
    Caption = '* CPF'
  end
  object Label2: TLabel
    Left = 40
    Top = 96
    Width = 36
    Height = 13
    Caption = '* Nome'
  end
  object edtMotCpf: TEdit
    Left = 40
    Top = 32
    Width = 225
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object edtMotNome: TEdit
    Left = 40
    Top = 112
    Width = 457
    Height = 21
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object btnOK: TButton
    Left = 40
    Top = 184
    Width = 75
    Height = 25
    Caption = 'ok'
    TabOrder = 2
    OnClick = btnOKClick
  end
  object Button2: TButton
    Left = 360
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object btnEdita: TButton
    Left = 144
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btnEditaClick
  end
end
