object fNFe: TfNFe
  Left = 0
  Top = 0
  Caption = 'Remetente NFe'
  ClientHeight = 251
  ClientWidth = 739
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
    Left = 64
    Top = 16
    Width = 105
    Height = 13
    Caption = '* Chave de Acesso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 72
    Width = 17
    Height = 13
    Caption = 'PIN'
  end
  object Label165: TLabel
    Left = 536
    Top = 72
    Width = 148
    Height = 13
    Caption = ' Data Prevista de Entrega'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNFeChave: TEdit
    Left = 64
    Top = 40
    Width = 625
    Height = 21
    TabOrder = 0
  end
  object edtNFePin: TEdit
    Left = 64
    Top = 91
    Width = 313
    Height = 21
    MaxLength = 9
    TabOrder = 1
  end
  object dataNFePrev: TJvDatePickerEdit
    Left = 536
    Top = 91
    Width = 153
    Height = 24
    AllowNoDate = True
    Checked = False
    TabOrder = 2
  end
  object btnOk: TButton
    Left = 64
    Top = 187
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOkClick
  end
  object btnFechar: TButton
    Left = 255
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object btnEdita: TButton
    Left = 152
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
    OnClick = btnEditaClick
  end
end
