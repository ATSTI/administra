object fVotam: TfVotam
  Left = 340
  Top = 223
  Width = 360
  Height = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 133
    Top = 4
    Width = 104
    Height = 16
    Caption = 'Data Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 28
    Top = 37
    Width = 15
    Height = 13
    Caption = 'DE'
  end
  object Label3: TLabel
    Left = 184
    Top = 37
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label5: TLabel
    Left = 21
    Top = 157
    Width = 15
    Height = 13
    Caption = 'DE'
  end
  object Label4: TLabel
    Left = 184
    Top = 156
    Width = 41
    Height = 16
    Caption = 'Label4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 166
    Top = 157
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object JvDateEdit1: TJvDateEdit
    Left = 53
    Top = 33
    Width = 120
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 140
    Top = 69
    Width = 94
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object JvDateEdit2: TJvDateEdit
    Left = 205
    Top = 33
    Width = 120
    Height = 21
    TabOrder = 2
  end
  object JvDateEdit3: TJvDateEdit
    Left = 46
    Top = 153
    Width = 112
    Height = 21
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 259
    Top = 151
    Width = 71
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 140
    Top = 85
    Width = 94
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 141
    Top = 99
    Width = 94
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 141
    Top = 110
    Width = 94
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 7
    OnClick = BitBtn5Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 56
    Top = 96
  end
end
