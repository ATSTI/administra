inherited fSeriaNF: TfSeriaNF
  Width = 511
  Height = 493
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 84
    Top = 58
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label4: TLabel [1]
    Left = 170
    Top = 58
    Width = 44
    Height = 13
    Caption = 'Ultimo N'#186
  end
  object Label5: TLabel [2]
    Left = 255
    Top = 58
    Width = 54
    Height = 13
    Caption = 'ICMS Dest.'
  end
  object Label6: TLabel [3]
    Left = 333
    Top = 58
    Width = 42
    Height = 13
    Cursor = crHandPoint
    Caption = 'Modelo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = Label6Click
  end
  inherited MMJPanel1: TMMJPanel
    Top = 412
    Width = 503
    inherited btnGravar: TBitBtn
      Left = 79
    end
    inherited btnIncluir: TBitBtn
      Left = 79
    end
    inherited btnCancelar: TBitBtn
      Left = 193
    end
    inherited btnExcluir: TBitBtn
      Left = 193
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Top = -51
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 306
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 503
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 76
      Top = -83
      Width = 333
      Caption = 'S'#233'rie de N. Fiscal'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 80
      Top = -80
      Width = 333
      Caption = 'S'#233'rie de N. Fiscal'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 501
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'S'#233'rie de N. Fiscal'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -35
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [6]
    Left = 83
    Top = 74
    Width = 80
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'SERIE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [7]
    Left = 169
    Top = 74
    Width = 80
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ULTIMO_NUMERO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [8]
    Left = 82
    Top = 101
    Width = 324
    Height = 273
    DataSource = DtSrc
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ULTIMO_NUMERO'
        Title.Caption = 'Ultimo N'#186
        Width = 120
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [9]
    Left = 86
    Top = 374
    Width = 316
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 6
  end
  object DBEdit3: TDBEdit [10]
    Left = 254
    Top = 74
    Width = 70
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ICMS_DESTACADO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [11]
    Left = 331
    Top = 74
    Width = 75
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'MODELO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object Memo1: TMemo [12]
    Left = 8
    Top = 72
    Width = 481
    Height = 550
    Lines.Strings = (
      
        'C'#243'digo     Descri'#231#227'o                                            ' +
        '                         Modelo'
      '01 '#9'Nota Fiscal '#9#9#9#9'     1/1A '
      '1B '#9'Nota Fiscal Avulsa '#9#9#9#9'         - '
      '02 '#9'Nota Fiscal de Venda a Consumidor '#9#9'         2 '
      '2D '#9'Cupom Fiscal '#9#9#9#9'         -'
      
        '2E '#9'Cupom Fiscal Bilhete de Passagem                            ' +
        '       - '
      '04 '#9'Nota Fiscal de Produtor '#9#9#9'         4 '
      '06 '#9'Nota Fiscal/Conta de Energia El'#233'trica '#9#9'         6 '
      '07 '#9'Nota Fiscal de Servi'#231'o de Transporte '#9#9'         7 '
      '08'#9' Conhecimento de Transporte Rodovi'#225'rio de Cargas      8 '
      '8B '#9'Conhecimento de Transporte de Cargas Avulso '#9'         - '
      '09 '#9'Conhecimento de Transporte Aquavi'#225'rio de Cargas       9 '
      '10 '#9'Conhecimento A'#233'reo'#9#9#9'       10 '
      '11 '#9'Conhecimento de Transporte Ferrovi'#225'rio de Cargas     11 '
      '13 '#9'Bilhete de Passagem Rodovi'#225'rio '#9#9'       13 '
      '14 '#9'Bilhete de Passagem Aquavi'#225'rio '#9#9'       14 '
      '15 '#9'Bilhete de Passagem e Nota de Bagagem '#9'       15 '
      '17 '#9'Despacho de Transporte'#9#9#9'       17 '
      '16 '#9'Bilhete de Passagem Ferrovi'#225'rio '#9#9'       16 '
      '18 '#9'Resumo de Movimento Di'#225'rio '#9#9' '#9'       18 '
      '20 '#9'Ordem de Coleta de Cargas '#9#9#9'       20 '
      '21 '#9'Nota Fiscal de Servi'#231'o de Comunica'#231#227'o'#9#9'       21 '
      '22 '#9'Nota Fiscal de Servi'#231'o de Telecomunica'#231#227'o '#9'       22 '
      '23 '#9'GNRE   '#9' '#9' '#9' '#9' '#9'       23 '
      '24 '#9'Autoriza'#231#227'o de Carregamento e Transporte '#9'       24 '
      '25 '#9'Manifesto de Carga '#9' '#9' '#9'        '#9'      25 '
      '26 '#9'Conhecimento de Transporte Multimodal de Cargas      26 '
      '27 '#9'Nota Fiscal De Transporte Ferrovi'#225'rio De Carga '#9'         -'
      '28 '#9'Nota Fiscal/Conta de Fornecimento de G'#225's Canalizado   -'
      '29 '#9'Nota Fiscal/Conta De Fornecimento D'#39#225'gua Canalizada   -'
      
        '55 '#9'Nota Fiscal Eletr'#244'nica                                      ' +
        '                 -'
      '57 '#9'Conhecimento de Transporte Eletr'#244'nico - CT-e               -'
      
        '59 '#9'Cupom Fiscal Eletr'#244'nico - CF-e                              ' +
        '           -')
    TabOrder = 8
    Visible = False
  end
  inherited XPMenu1: TXPMenu
    Left = 161
    Top = 168
  end
  inherited PopupMenu1: TPopupMenu
    Left = 193
    Top = 168
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_serie
    Left = 121
    Top = 168
  end
end
