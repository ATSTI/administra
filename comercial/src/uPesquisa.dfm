object fPesquisa: TfPesquisa
  Left = 192
  Top = 103
  Width = 465
  Height = 427
  Caption = 'Pesquisa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Campo'
  end
  object Label2: TLabel
    Left = 40
    Top = 49
    Width = 45
    Height = 13
    Caption = 'Condi'#231#227'o'
  end
  object Label3: TLabel
    Left = 40
    Top = 81
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label4: TLabel
    Left = 88
    Top = 104
    Width = 179
    Height = 13
    Caption = 'Data: dd/mm/aa , N'#250'mero:  1500,00 ,'
  end
  object cbCampo: TJvHTComboBox
    Left = 88
    Top = 16
    Width = 145
    Height = 22
    HideSel = False
    DropWidth = 145
    ColorHighlight = clHighlight
    ColorHighlightText = clHighlightText
    ColorDisabledText = clGrayText
    TabOrder = 0
  end
  object cbCondicao: TJvHTComboBox
    Left = 88
    Top = 48
    Width = 145
    Height = 22
    HideSel = False
    DropWidth = 145
    ColorHighlight = clHighlight
    ColorHighlightText = clHighlightText
    ColorDisabledText = clGrayText
    Items.Strings = (
      '='
      'Cont'#233'm'
      '>'
      '>='
      '<'
      '<='
      'Lista (valor1, vlor2, valor3)'
      'Fora da Lista (valor1, valor2, valor3)'
      'In'#237'cia com'
      'Termina Com'
      'N'#227'o Cont'#233'm')
    TabOrder = 1
  end
  object memoSql: TJvMemo
    Left = 88
    Top = 165
    Width = 345
    Height = 225
    AutoSize = False
    MaxLines = 0
    HideCaret = False
    TabOrder = 2
  end
  object edValor: TJvEdit
    Left = 88
    Top = 80
    Width = 345
    Height = 21
    Modified = False
    TabOrder = 3
  end
  object JvBitBtn1: TJvBitBtn
    Left = 90
    Top = 133
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 4
    OnClick = JvBitBtn1Click
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvBitBtn2: TJvBitBtn
    Left = 174
    Top = 133
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = JvBitBtn2Click
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvBitBtn3: TJvBitBtn
    Left = 252
    Top = 133
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 6
    OnClick = JvBitBtn3Click
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvBitBtn4: TJvBitBtn
    Left = 332
    Top = 133
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = JvBitBtn4Click
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object DsP: TDataSource
    Left = 264
    Top = 16
  end
end
