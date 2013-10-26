object fPeriodo: TfPeriodo
  Left = 359
  Top = 246
  Width = 383
  Height = 101
  Caption = 'Per'#237'odo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 3
    Width = 369
    Height = 63
    Caption = 'Per'#237'odo'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 20
      Height = 13
      Caption = 'M'#234's'
    end
    object Label2: TLabel
      Left = 245
      Top = 27
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object cbMes: TComboBox
      Left = 40
      Top = 24
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbMesChange
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object dta1: TJvDatePickerEdit
      Left = 150
      Top = 24
      Width = 90
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 1
    end
    object dta2: TJvDatePickerEdit
      Left = 256
      Top = 24
      Width = 88
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 2
    end
  end
end
