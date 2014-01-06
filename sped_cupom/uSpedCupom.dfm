object fSpedCupom: TfSpedCupom
  Left = 192
  Top = 107
  Width = 1054
  Height = 534
  Caption = 'Sped ICMS - AtsAdmin + AtsCupom'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 709
    Top = 3
    Width = 89
    Height = 13
    Caption = 'Arquivo Sped Final'
  end
  object Label2: TLabel
    Left = 6
    Top = 4
    Width = 126
    Height = 13
    Caption = 'Arquivo Sped - ATS-Admin'
  end
  object Label3: TLabel
    Left = 360
    Top = 4
    Width = 130
    Height = 13
    Caption = 'Arquivo Sped - ATS-Cupom'
  end
  object edSped: TEdit
    Left = 3
    Top = 20
    Width = 300
    Height = 21
    TabOrder = 0
    Text = 'c:\home\arquivo_sped.txt'
  end
  object edSpedCupom: TEdit
    Left = 356
    Top = 20
    Width = 300
    Height = 21
    TabOrder = 1
    Text = 'c:\home\arquivo_sped_cupom.txt'
  end
  object edArquivoNovo: TEdit
    Left = 711
    Top = 19
    Width = 260
    Height = 21
    TabOrder = 2
    Text = 'c:\home\arquivonovo.txt'
  end
  object BitBtn1: TBitBtn
    Left = 416
    Top = 444
    Width = 217
    Height = 52
    Caption = 'Junta Arquivos'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 56
    Width = 1041
    Height = 379
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 972
    Top = 18
    Width = 50
    Height = 25
    Caption = '...'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 303
    Top = 18
    Width = 50
    Height = 25
    Caption = '...'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 656
    Top = 18
    Width = 50
    Height = 25
    Caption = '...'
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object OpenDialog1: TOpenDialog
    Left = 176
  end
end
