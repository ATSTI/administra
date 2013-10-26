object fClientesAniversario: TfClientesAniversario
  Left = 228
  Top = 144
  Width = 267
  Height = 150
  Caption = 'Anivers'#225'rio de Clientes'
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
  object Button1: TButton
    Left = 19
    Top = 68
    Width = 85
    Height = 33
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox5: TGroupBox
    Left = 6
    Top = 10
    Width = 239
    Height = 49
    Caption = 'Per'#237'odo'
    TabOrder = 1
    object Label1: TLabel
      Left = 114
      Top = 19
      Width = 6
      Height = 13
      Caption = #224
    end
    object Data1: TJvDatePickerEdit
      Left = 8
      Top = 16
      Width = 100
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 0
    end
    object Data2: TJvDatePickerEdit
      Left = 130
      Top = 16
      Width = 100
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 1
    end
  end
  object Button2: TButton
    Left = 123
    Top = 68
    Width = 87
    Height = 33
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button2Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
  end
end
