object fAliquota: TfAliquota
  Left = 240
  Top = 261
  Width = 275
  Height = 192
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
  object Label3: TLabel
    Left = 56
    Top = 72
    Width = 53
    Height = 13
    Caption = 'Al'#237'quota:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 254
    Height = 26
    Caption = 
      'a programa'#231#227'o da al'#237'quota s'#243' ser'#225' permitida'#13#10'       somente ap'#243's' +
      ' uma Redu'#231#227'o Z'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 64
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      '0-FF Sub. Trib.'
      '1-II  Isento'
      '2-NN N'#227'o I.'
      '3-01'
      '4-02'
      '5-03'
      '6-04'
      '7-05'
      '8-06'
      '9-07'
      '10-08'
      '11-09'
      '12-10'
      '13-11'
      '14-12'
      '15-13'
      '16-14'
      '17-15'
      '18-16'
      '19-17'
      '20-18'
      '21-19'
      '22-20'
      '23-21'
      '24-22'
      '25-23'
      '26-24'
      '27-25')
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Confirma'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 136
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
