object Form1: TForm1
  Left = 192
  Top = 107
  Width = 1054
  Height = 534
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edSped: TEdit
    Left = 392
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 0
    Text = 'c:\home\arquivo_sped.txt'
  end
  object edSpedCupom: TEdit
    Left = 704
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'c:\home\arquivo_sped_cupom.txt'
  end
  object edArquivoNovo: TEdit
    Left = 96
    Top = 56
    Width = 177
    Height = 21
    TabOrder = 2
    Text = 'c:\home\arquivonovo.txt'
  end
  object BitBtn1: TBitBtn
    Left = 368
    Top = 208
    Width = 297
    Height = 65
    Caption = 'Junta Arquivos'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
