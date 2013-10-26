inherited ftransp: Tftransp
  Left = 318
  Top = 173
  Width = 685
  Height = 550
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 12
    Top = 57
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label4: TLabel [1]
    Left = 199
    Top = 141
    Width = 82
    Height = 13
    Caption = 'Placa do Ve'#237'culo'
  end
  object Label5: TLabel [2]
    Left = 313
    Top = 141
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label6: TLabel [3]
    Left = 357
    Top = 141
    Width = 76
    Height = 13
    Caption = 'C.N.P.J./C.P.F. '
  end
  object Label7: TLabel [4]
    Left = 511
    Top = 141
    Width = 87
    Height = 13
    Caption = 'Inscri'#231#227'o Estadual'
  end
  object Label8: TLabel [5]
    Left = 12
    Top = 182
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label9: TLabel [6]
    Left = 14
    Top = 221
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label10: TLabel [7]
    Left = 259
    Top = 221
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label11: TLabel [8]
    Left = 15
    Top = 300
    Width = 82
    Height = 13
    Caption = 'Dados Adicionais'
  end
  object Label12: TLabel [9]
    Left = 455
    Top = 182
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label13: TLabel [10]
    Left = 308
    Top = 221
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label14: TLabel [11]
    Left = 426
    Top = 260
    Width = 37
    Height = 13
    Caption = 'Contato'
  end
  object Label15: TLabel [12]
    Left = 407
    Top = 221
    Width = 24
    Height = 13
    Caption = 'Fone'
  end
  object Label16: TLabel [13]
    Left = 537
    Top = 220
    Width = 24
    Height = 13
    Caption = 'Fone'
  end
  object Label17: TLabel [14]
    Left = 12
    Top = 95
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
  end
  object Label18: TLabel [15]
    Left = 15
    Top = 261
    Width = 25
    Height = 13
    Caption = 'Email'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 464
    Width = 663
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
    object BitBtn1: TBitBtn
      Left = 27
      Top = 6
      Width = 103
      Height = 40
      Caption = 'Incluir c/ Fornec.'
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = BitBtn1Click
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 663
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 81
      Top = -78
      Width = 570
      Caption = 'Cadastro de transportadoras'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 83
      Top = -77
      Width = 570
      Caption = 'Cadastro de transportadoras'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 661
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cadastro de transportadoras'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -29
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [18]
    Left = 12
    Top = 71
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOMETRANSP'
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
  object DBRadioGroup1: TDBRadioGroup [19]
    Left = 12
    Top = 136
    Width = 185
    Height = 46
    Caption = 'Frete por conta:'
    Columns = 2
    DataField = 'FRETE'
    DataSource = DtSrc
    Items.Strings = (
      'Emitente'
      'Destinat'#225'rio')
    TabOrder = 4
    Values.Strings = (
      '1'
      '2')
  end
  object DBEdit2: TDBEdit [20]
    Left = 199
    Top = 157
    Width = 109
    Height = 24
    Hint = 'EX: AAA9999'
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PLACATRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [21]
    Left = 357
    Top = 157
    Width = 150
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CNPJ_CPF'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [22]
    Left = 511
    Top = 157
    Width = 150
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSCRICAOESTADUAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [23]
    Left = 12
    Top = 196
    Width = 435
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'END_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [24]
    Left = 14
    Top = 235
    Width = 240
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CIDADE_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBComboBox1: TDBComboBox [25]
    Left = 258
    Top = 235
    Width = 43
    Height = 24
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'UF_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ParentFont = False
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object DBComboBox2: TDBComboBox [26]
    Left = 311
    Top = 157
    Width = 43
    Height = 24
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'UF_VEICULO_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ParentFont = False
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [27]
    Left = 14
    Top = 315
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF1'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [28]
    Left = 14
    Top = 340
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF2'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [29]
    Left = 14
    Top = 365
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF3'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [30]
    Left = 14
    Top = 390
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF4'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [31]
    Left = 14
    Top = 415
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF5'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnKeyPress = FormKeyPress
  end
  object DBEdit12: TDBEdit [32]
    Left = 14
    Top = 440
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF6'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnKeyPress = FormKeyPress
  end
  object DBEdit13: TDBEdit [33]
    Left = 453
    Top = 196
    Width = 208
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'BAIRRO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [34]
    Left = 423
    Top = 275
    Width = 237
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CONTATO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnKeyPress = FormKeyPress
  end
  object DBEdit15: TDBEdit [35]
    Left = 404
    Top = 235
    Width = 125
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'FONE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object DBEdit16: TDBEdit [36]
    Left = 535
    Top = 235
    Width = 125
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'FONE2'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  object DBEdit17: TDBEdit [37]
    Left = 306
    Top = 235
    Width = 94
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CEP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBEdit18: TDBEdit [38]
    Left = 12
    Top = 109
    Width = 649
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'FANTASIA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit19: TDBEdit [39]
    Left = 15
    Top = 275
    Width = 400
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'EMAIL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsTransp
  end
  object sqlForn: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 34
    Top = 10
  end
end
