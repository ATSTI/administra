inherited fResponsalvel: TfResponsalvel
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label58: TLabel [0]
    Left = 116
    Top = 98
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label59: TLabel [1]
    Left = 116
    Top = 130
    Width = 65
    Height = 13
    Caption = 'Respons'#225'vel '
  end
  object Label60: TLabel [2]
    Left = 116
    Top = 166
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label61: TLabel [3]
    Left = 116
    Top = 198
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label62: TLabel [4]
    Left = 348
    Top = 198
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label63: TLabel [5]
    Left = 117
    Top = 244
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label64: TLabel [6]
    Left = 219
    Top = 244
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label65: TLabel [7]
    Left = 260
    Top = 245
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label66: TLabel [8]
    Left = 462
    Top = 244
    Width = 32
    Height = 13
    Caption = 'Celular'
  end
  object Label67: TLabel [9]
    Left = 116
    Top = 290
    Width = 25
    Height = 13
    Caption = 'Email'
  end
  object Label68: TLabel [10]
    Left = 460
    Top = 290
    Width = 47
    Height = 13
    Caption = 'Cx. Postal'
  end
  object Label69: TLabel [11]
    Left = 118
    Top = 336
    Width = 26
    Height = 13
    Caption = 'CPF :'
  end
  object Label70: TLabel [12]
    Left = 448
    Top = 336
    Width = 22
    Height = 13
    Caption = 'RG :'
  end
  object Label72: TLabel [13]
    Left = 500
    Top = 382
    Width = 97
    Height = 13
    Caption = 'Telefone Comercial :'
  end
  object Label71: TLabel [14]
    Left = 116
    Top = 382
    Width = 92
    Height = 13
    Caption = 'Local de Trabalho :'
  end
  inherited MMJPanel1: TMMJPanel
    object DBTextDestaque1: TDBText
      Left = 9
      Top = 12
      Width = 425
      Height = 24
      DataField = 'RESPONSAVEL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBTextDestaque: TDBText
      Left = 12
      Top = 11
      Width = 425
      Height = 24
      DataField = 'RESPONSAVEL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8344832
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnGravar: TBitBtn
      Left = 210
    end
    inherited btnIncluir: TBitBtn
      Left = 210
    end
    inherited btnCancelar: TBitBtn
      Left = 333
    end
    inherited btnExcluir: TBitBtn
      Left = 333
    end
    inherited btnProcurar: TBitBtn
      Left = 20
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 456
    end
  end
  object DBEdit45: TDBEdit [17]
    Left = 204
    Top = 98
    Width = 113
    Height = 28
    TabStop = False
    Color = cl3DLight
    DataField = 'COD_RESPONSAVEL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit46: TDBEdit [18]
    Left = 204
    Top = 130
    Width = 449
    Height = 28
    DataField = 'RESPONSAVEL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit47: TDBEdit [19]
    Left = 204
    Top = 166
    Width = 449
    Height = 28
    DataField = 'ENDERECO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit48: TDBEdit [20]
    Left = 116
    Top = 214
    Width = 225
    Height = 28
    DataField = 'BAIRRO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit49: TDBEdit [21]
    Left = 348
    Top = 214
    Width = 305
    Height = 28
    DataField = 'CIDADE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit50: TDBEdit [22]
    Left = 117
    Top = 260
    Width = 88
    Height = 28
    DataField = 'CEP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit51: TDBEdit [23]
    Left = 216
    Top = 260
    Width = 33
    Height = 28
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit52: TDBEdit [24]
    Left = 260
    Top = 261
    Width = 193
    Height = 28
    DataField = 'TELEFONE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit53: TDBEdit [25]
    Left = 460
    Top = 260
    Width = 193
    Height = 28
    DataField = 'TELEFONE1'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBEdit54: TDBEdit [26]
    Left = 116
    Top = 306
    Width = 337
    Height = 28
    DataField = 'EMAIL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBEdit55: TDBEdit [27]
    Left = 460
    Top = 306
    Width = 193
    Height = 28
    DataField = 'CAIXAPOSTAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object DBEdit56: TDBEdit [28]
    Left = 116
    Top = 350
    Width = 265
    Height = 28
    DataField = 'CPF'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBEdit57: TDBEdit [29]
    Left = 446
    Top = 350
    Width = 207
    Height = 28
    DataField = 'RG'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object DBEdit59: TDBEdit [30]
    Left = 500
    Top = 398
    Width = 153
    Height = 28
    DataField = 'TELEFONE_COMERCIAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnKeyPress = FormKeyPress
  end
  object DBEdit58: TDBEdit [31]
    Left = 116
    Top = 398
    Width = 377
    Height = 28
    DataField = 'LOCALTRABALHO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsResponsavel
  end
end
