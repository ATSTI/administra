object fBancoPgto: TfBancoPgto
  Left = 381
  Top = 261
  Width = 305
  Height = 188
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbEmissao: TLabel
    Left = 15
    Top = 18
    Width = 82
    Height = 19
    Caption = 'Consolida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Cooper Black'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 106
    Top = 18
    Width = 49
    Height = 19
    Caption = 'Banco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Cooper Black'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 14
    Top = 66
    Width = 64
    Height = 19
    Caption = 'Agencia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Cooper Black'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 150
    Top = 66
    Width = 49
    Height = 19
    Caption = 'Conta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Cooper Black'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object edConsolida: TJvDatePickerEdit
    Left = 14
    Top = 39
    Width = 89
    Height = 24
    AllowNoDate = True
    BorderStyle = bsNone
    ButtonWidth = 16
    Checked = True
    BevelKind = bkFlat
    DisabledColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edBanco: TJvEdit
    Left = 105
    Top = 39
    Width = 176
    Height = 24
    BevelKind = bkFlat
    Modified = False
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edAgencia: TJvEdit
    Left = 13
    Top = 87
    Width = 132
    Height = 24
    BevelKind = bkFlat
    Modified = False
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edConta: TJvEdit
    Left = 149
    Top = 87
    Width = 132
    Height = 24
    BevelKind = bkFlat
    Modified = False
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 120
    Width = 75
    Height = 25
    Caption = 'F9-Sair'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 64
    Top = 120
    Width = 75
    Height = 25
    Caption = 'F4-Confirma'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
end
