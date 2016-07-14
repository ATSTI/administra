inherited fEmpresa: TfEmpresa
  Left = 408
  Top = 76
  Width = 795
  Height = 695
  Caption = 'Cadastro de Empresa'
  Font.Charset = ANSI_CHARSET
  Font.Height = -29
  Font.Name = 'Cooper Blk BT'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 36
  inherited MMJPanel1: TMMJPanel
    Top = 614
    Width = 787
    inherited btnCancelar: TBitBtn [0]
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Arial'
      ParentFont = False
    end
    inherited btnExcluir: TBitBtn [1]
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Arial'
      ParentFont = False
    end
    inherited btnGravar: TBitBtn [2]
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Arial'
      ParentFont = False
    end
    inherited btnIncluir: TBitBtn [3]
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Arial'
      ParentFont = False
    end
    inherited btnProcurar: TBitBtn
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Arial'
      ParentFont = False
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Arial'
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 19
      Top = 13
      Width = 104
      Height = 25
      DataSource = DtSrc
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 787
    inherited Label1: TLabel
      Left = 165
      Top = -85
      Width = 347
      Height = 36
      Caption = 'Cadastro de Empresas'
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
    end
    inherited Label2: TLabel
      Left = 165
      Top = -89
      Width = 106
      Height = 13
      Caption = 'Cadastro de Empresas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object JvLabel1: TJvLabel
      Left = 194
      Top = 8
      Width = 337
      Height = 38
      Caption = 'Cadastro de Empresa'
      ShadowColor = clWhite
      ShadowSize = 2
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -29
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object JvPageControl1: TJvPageControl [2]
    Left = 0
    Top = 54
    Width = 787
    Height = 560
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      object JvCaptionPanel1: TJvCaptionPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 530
        Align = alClient
        Buttons = []
        CaptionPosition = dpTop
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -13
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = [fsBold]
        OutlookLook = False
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 25
          Width = 44
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label4: TLabel
          Left = 74
          Top = 25
          Width = 114
          Height = 16
          Caption = 'Nome da Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label5: TLabel
          Left = 8
          Top = 64
          Width = 81
          Height = 16
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label6: TLabel
          Left = 9
          Top = 104
          Width = 71
          Height = 16
          Caption = 'CNPJ / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label7: TLabel
          Left = 10
          Top = 144
          Width = 42
          Height = 16
          Caption = 'RG / IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label9: TLabel
          Left = 9
          Top = 181
          Width = 59
          Height = 16
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label10: TLabel
          Left = 8
          Top = 223
          Width = 84
          Height = 16
          Caption = 'Complemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label11: TLabel
          Left = 203
          Top = 223
          Width = 36
          Height = 16
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label12: TLabel
          Left = 413
          Top = 223
          Width = 44
          Height = 16
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label13: TLabel
          Left = 8
          Top = 265
          Width = 43
          Height = 16
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label14: TLabel
          Left = 167
          Top = 265
          Width = 25
          Height = 16
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label15: TLabel
          Left = 333
          Top = 265
          Width = 54
          Height = 16
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label16: TLabel
          Left = 452
          Top = 265
          Width = 22
          Height = 16
          Caption = 'Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label17: TLabel
          Left = 569
          Top = 266
          Width = 42
          Height = 16
          Caption = 'Celular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label18: TLabel
          Left = 9
          Top = 423
          Width = 38
          Height = 16
          Caption = 'E-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label19: TLabel
          Left = 8
          Top = 302
          Width = 73
          Height = 16
          Caption = 'Home Page'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label20: TLabel
          Left = 279
          Top = 265
          Width = 30
          Height = 16
          Caption = 'DDD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label8: TLabel
          Left = 8
          Top = 341
          Width = 43
          Height = 16
          Caption = 'Slogan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label21: TLabel
          Left = 8
          Top = 383
          Width = 116
          Height = 16
          Caption = 'Outras Informa'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label22: TLabel
          Left = 371
          Top = 421
          Width = 49
          Height = 16
          Caption = 'C. Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label23: TLabel
          Left = 585
          Top = 181
          Width = 48
          Height = 16
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label24: TLabel
          Left = 588
          Top = 223
          Width = 78
          Height = 16
          Caption = 'C'#243'digo IBGE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label25: TLabel
          Left = 146
          Top = 467
          Width = 38
          Height = 16
          Caption = 'SMTP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label26: TLabel
          Left = 285
          Top = 467
          Width = 32
          Height = 16
          Caption = 'Porta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label27: TLabel
          Left = 8
          Top = 467
          Width = 76
          Height = 16
          Caption = 'Senha Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object Label28: TLabel
          Left = 372
          Top = 467
          Width = 127
          Height = 16
          Caption = 'Caminho  Salvar NFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 41
          Width = 64
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CODIGO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit2: TDBEdit
          Left = 74
          Top = 41
          Width = 607
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'EMPRESA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 79
          Width = 673
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'RAZAO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 120
          Width = 251
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
          PopupMenu = PopupMenu1
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 159
          Width = 251
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'IE_RG'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit7: TDBEdit
          Left = 8
          Top = 197
          Width = 573
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ENDERECO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 8
          Top = 240
          Width = 193
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'LOGRADOURO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 6
          OnKeyPress = FormKeyPress
        end
        object DBEdit9: TDBEdit
          Left = 203
          Top = 240
          Width = 171
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
          PopupMenu = PopupMenu1
          TabOrder = 7
          OnKeyPress = FormKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 413
          Top = 240
          Width = 171
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CIDADE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 8
          OnKeyPress = FormKeyPress
        end
        object DBEdit11: TDBEdit
          Left = 165
          Top = 280
          Width = 108
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
          PopupMenu = PopupMenu1
          TabOrder = 9
          OnKeyPress = FormKeyPress
        end
        object DBEdit12: TDBEdit
          Left = 277
          Top = 280
          Width = 52
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'DDD'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 10
          OnKeyPress = FormKeyPress
        end
        object DBEdit13: TDBEdit
          Left = 333
          Top = 280
          Width = 114
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
          PopupMenu = PopupMenu1
          TabOrder = 11
          OnKeyPress = FormKeyPress
        end
        object DBEdit14: TDBEdit
          Left = 452
          Top = 280
          Width = 111
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FAX'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 12
          OnKeyPress = FormKeyPress
        end
        object DBEdit15: TDBEdit
          Left = 8
          Top = 440
          Width = 356
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'E_MAIL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 13
          OnKeyPress = FormKeyPress
        end
        object DBEdit16: TDBEdit
          Left = 8
          Top = 319
          Width = 356
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'WEB'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 14
          OnKeyPress = FormKeyPress
        end
        object DBEdit17: TDBEdit
          Left = 568
          Top = 280
          Width = 112
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FONE_1'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 15
          OnKeyPress = FormKeyPress
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 358
          Width = 356
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'SLOGAN'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 16
          OnKeyPress = FormKeyPress
        end
        object DBEdit18: TDBEdit
          Left = 8
          Top = 400
          Width = 356
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'OUTRAS_INFO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 17
          OnKeyPress = FormKeyPress
        end
        object BitBtn1: TBitBtn
          Left = 388
          Top = 321
          Width = 96
          Height = 37
          Caption = 'Procura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          OnClick = BitBtn1Click
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C07C7D81000206000100000100000006030009837E7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00404040000000202020000000000000505050000000303
            0301010100000002010382818AB8B6BCC8C5C0C9C6C1C0C1C5C0BEC4827B7E04
            0000000001000306000001030002000003C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0030303BFBFBF7B7B7B8383838686867D7D7D7E7E7E8080808181
            81878787010101C0BDBFC5BDC70B00080B0000070200000200000100C5C0C9C3
            BBC502050374787382807F8A8888000004000004C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0000000000000C3C3C38181818080807D7D7D8585858181817E7E7E8282
            82000000C3C3C38380820400040500010900000C02001A0A001000000A000780
            7D86BDBEBC070A017D7F797C7D7B828185BFBEC2020000C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080808282828383837E7E7E7A7A7A0000
            00858585C2C2C200000000020100020000040016060052130B3A000012000000
            0405BCC1BF777E7700040082868083827EC0BCBB0A0506C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080807E7E7E7979798787870808080101
            01BDBDBD0000000001010006030003000008001202004E030069150324000009
            0000050303C1C3C30001007B817C7E807AC5C5BF040000C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080808181818383830000000000000000
            00C1C1C10202020000000200000001000001010C04003C09006A250040060025
            0000100004C2BAC504030D787B7F848B84BBC3B8000300C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080808383837F7F7F0000000505050606
            06BDBDBD0000000402010704000200000000061A0B00430F00FFC37A55190327
            0000150009C1B6C603000E7576807C817FBAC2B7000600C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080807F7F7F8181810101010000000000
            00C1C1C101010100010000030001040200000A2000007C2C00FFB96330050013
            000C090004C5BDC704000D8782917B7B81BCC0BB050C00C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080807A7A7A8787870000000505050000
            00C1C1C10000000102000003000C0A02120000300000FFC27780330020010004
            00070B0407C2BDBF00000678798381838BBEC0C1020200C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080808686868080800000000202020000
            007A7A7AC5C5C50001000201001202004E2106F6BA9660220035050015010008
            0302CABEBC86827D000400778780767D80BAB7C00C0009C0C0C0C0C0C0C0C0C0
            000000BFBFBF010101BFBFBF8181818080807B7B7B8080800808080000007E7E
            7E060606BBBBBB8684840602011505002E05003704002901001C01000B010083
            7F7ACBC2BE04020075837776877C7A8282C3C0C90B0007C0C0C0C0C0C0C0C0C0
            030303C0C0C0000000C5C5C58080807F7F7F8181817D7D7D0000007F7F7F0505
            058080807B7B7BC2C2C2C7C5C50501001203001202000E0000090000C2BEBDC2
            C0BF04000082807F7C827D7C817F7F8181BDBCBE040003C0C0C0C0C0C0C0C0C0
            000000BDBDBD070707C1C1C17B7B7B8282828080808383837B7B7B0707077676
            76868686BFBFBFFFFFFFF8F8F8C5C5C5B9B9B9C3C3C3C2C2C2BEBEBE85858500
            00007F7F7F8484848080807676768B8B8BC1C1C1020202C0C0C0C0C0C0C0C0C0
            000000C2C2C20000000000000101010000000000000000000606060000000202
            02C1C1C1BABABABEBEBEFFFFFFFFFFFFFFFFFFFDFDFDFFFFFF7E7E7E00000000
            0000010101000000040404060606000000000000000000C0C0C0C0C0C0C0C0C0
            0101010303037C7C7CC1C1C1C5C5C5BFBFBFC0C0C0C7C7C7BABABAC1C1C1C1C1
            C1000000070707FFFFFFC3C3C3BABABAC2C2C2BEBEBE000000000000C5C5C5C3
            C3C3BFBFBFC3C3C3BEBEBEBBBBBBC4C4C4FFFFFF000000C0C0C0C0C0C0C0C0C0
            0101017B7B7B828282C2C2C2BDBDBDBDBDBDC3C3C3B8B8B8C0C0C0C8C8C8BBBB
            BBBDBDBDC0C0C0000000000000000000000000050505C5C5C5C1C1C1C2C2C2BA
            BABABDBDBDC2C2C2C3C3C3BFBFBFBFBFBFFFFFFF000000C0C0C0C0C0C0C0C0C0
            0000007F7F7F7B7B7BC1C1C1C3C3C3C2C2C2C0C0C0C7C7C7BEBEBEBCBCBCC1C1
            C1C6C6C6C4C4C4C0C0C0C0C0C0BEBEBEC7C7C7BBBBBBB7B7B7C0C0C0BCBCBCC6
            C6C6C1C1C1C2C2C2BDBDBDC1C1C1C3C3C3FDFDFD000000C0C0C0C0C0C0C0C0C0
            010101818181C5C5C5FBFBFBFFFFFFFDFDFDFFFFFFFCFCFCFDFDFDFFFFFFFFFF
            FFF8F8F8F9F9F9FFFFFFFFFFFFFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFF
            FFFFFFFFFFFAFAFAFFFFFFFEFEFEFDFDFD030303C0C0C0C0C0C0C0C0C0C0C0C0
            000000BCBCBCC2C2C2818181000000010101000000010101000000BFBFBF8080
            80000000060606000000000000030303010101000000010101BFBFBFC1C1C180
            8080000000000000040404C1C1C1000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0020202030303000000808080FFFFFFF7F7F7FFFFFF0101010000000707
            07000000C0C0C0C0C0C0BFBFBFC6C6C6BEBEBEC0C0C001010100000001010100
            0000808080FEFEFE010101010101C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C08A8A8A000000010101060606000000C0C0C0C0C0C00000
            00848484000000C1C1C1BDBDBDBBBBBBBCBCBC050505C0C0C0C0C0C0C0C0C07E
            7E7E000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0000000858585FFFFFFFFFFFFFFFFFF050505C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
        object BitBtn2: TBitBtn
          Left = 388
          Top = 364
          Width = 96
          Height = 36
          Caption = 'Exclui'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          OnClick = BitBtn2Click
          Glyph.Data = {
            1E070000424D1E070000000000003600000028000000160000001A0000000100
            180000000000E8060000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBF0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF00000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBF
            BFBFBFBFBFBFBFBFBFBF0000FF0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBF
            BFBFBFBFBFBFBFBF00000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7F7F7F7FBFBFBFBFBFBF0000FF00007F0000000000007F7F7F7F7F7F7F7F7F
            7F7F7FBFBFBFBFBFBFBFBFBF00000000FF00007F00007F00007F000000000000
            7F7F7F7F7F7F7F7F7F7F7F7FBFBFBF0000FF00007F00007F0000000000007F7F
            7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF00000000FF00007F00007F00007F0000
            7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
            00000000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBF00000000FF0000FF00007F00
            007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
            00007F00007F000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF0000FF
            00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
            7F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BF0000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
            007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBF0000FF0000FF00007F00007F00007F00007F00007F00007F
            00007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000
            7F00007F00007F00007F00007F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00
            007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF
            00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
            7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BF0000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
            7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F000000
            0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F0000
            7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000FF0000FF00
            007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000007F7F7F
            0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
            7FBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F0000007F7F
            7FBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000000000007F7F7F7F
            7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F00007F00
            00007F7F7FBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F000000
            0000007F7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F
            0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F0000
            7F00007F0000000000007F7F7FBFBFBF0000BFBFBF0000FF0000FF0000FF0000
            7F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF00
            00FF00007F00007F00007F000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF00
            00FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBF0000FF0000FF00007F00007FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000}
        end
        object Panel3: TPanel
          Left = 496
          Top = 317
          Width = 184
          Height = 170
          BevelInner = bvLowered
          BevelWidth = 3
          Color = clMoneyGreen
          TabOrder = 20
          object Image1: TJvImage
            Left = 6
            Top = 6
            Width = 172
            Height = 158
            Align = alClient
            Stretch = True
          end
        end
        object ComboBox1: TComboBox
          Left = 370
          Top = 440
          Width = 119
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 21
          OnChange = ComboBox1Change
        end
        object DBEdit19: TDBEdit
          Left = 584
          Top = 197
          Width = 97
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NUMERO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 22
          OnKeyPress = FormKeyPress
        end
        object BitBtn3: TBitBtn
          Left = 379
          Top = 237
          Width = 29
          Height = 27
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Cooper Blk BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          OnClick = BitBtn3Click
        end
        object DBEdit20: TDBEdit
          Left = 587
          Top = 240
          Width = 94
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CD_IBGE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 24
          OnKeyPress = FormKeyPress
        end
        object DBEdit21: TDBEdit
          Left = 146
          Top = 485
          Width = 131
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'SMTP'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 25
          OnKeyPress = FormKeyPress
        end
        object DBEdit22: TDBEdit
          Left = 284
          Top = 485
          Width = 80
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'PORTA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 26
          OnKeyPress = FormKeyPress
        end
        object DBEdit23: TDBEdit
          Left = 8
          Top = 484
          Width = 132
          Height = 25
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'SENHA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          PopupMenu = PopupMenu1
          TabOrder = 27
          OnKeyPress = FormKeyPress
        end
        object DBEdit24: TDBEdit
          Left = 372
          Top = 487
          Width = 249
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'DIVERSOS1'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 28
          OnKeyPress = FormKeyPress
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 275
          Top = 111
          Width = 407
          Height = 68
          Hint = 'C'#243'digo de Regime Tribut'#225'rio '
          Caption = 'CRT'
          DataField = 'CRT'
          DataSource = DtSrc
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'Simples Nacional'
            'Simples Nacional '#8211' Excesso de sub. de receita bruta'
            'Regime Normal')
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ShowHint = True
          TabOrder = 29
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object cbEstado: TJvComboBox
          Left = 8
          Top = 281
          Width = 150
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 30
          OnChange = cbEstadoChange
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'SPED PIS/COFINS'
      ImageIndex = 1
      object Label29: TLabel
        Left = 26
        Top = 17
        Width = 270
        Height = 15
        Caption = 'Indicador da natureza da pessoa juridica'
      end
      object Label30: TLabel
        Left = 27
        Top = 61
        Width = 295
        Height = 15
        Caption = 'Indicador de tipo de atividade prepoderante'
      end
      object Label31: TLabel
        Left = 28
        Top = 103
        Width = 397
        Height = 15
        Caption = 'Codigo indicador da incidencia tribut'#225'ria no per'#237'odo (0110)'
      end
      object Label32: TLabel
        Left = 28
        Top = 144
        Width = 445
        Height = 15
        Caption = 
          'C'#243'digo indicador de  m'#233'todo  de apropria'#231#227'o de  cr'#233'ditos  comuns' +
          ', '
      end
      object Label33: TLabel
        Left = 29
        Top = 158
        Width = 532
        Height = 15
        Caption = 
          'no caso  de incidencia no regime n'#227'o cumulativo(COD_INC_TRIB = 1' +
          ' ou 3)(0110)'
      end
      object Label34: TLabel
        Left = 28
        Top = 199
        Width = 457
        Height = 15
        Caption = 
          'C'#243'digo indicador do Tipo de Contribui'#231#227'o Apurada no Per'#237'odo(0110' +
          ')'
      end
      object Label35: TLabel
        Left = 27
        Top = 241
        Width = 427
        Height = 15
        Caption = 'C'#243'digo indicador do crit'#233'rio de escritura'#231#227'o e apura'#231#227'o adotado'
      end
      object Label36: TLabel
        Left = 28
        Top = 315
        Width = 404
        Height = 15
        Caption = 'C'#243'digo indicador da tabela de incidencia, conforme anexo III'
      end
      object Label37: TLabel
        Left = 353
        Top = 315
        Width = 221
        Height = 15
        Caption = 'Indicador do tipo de conta (0500)'
      end
      object Label38: TLabel
        Left = 26
        Top = 400
        Width = 644
        Height = 15
        Caption = 
          'C'#243'digo da Base de C'#225'lculo do Cr'#233'dito - {NAT_BC_CRED} - 4.3.7 - T' +
          'abela Base de C'#225'lculo do Cr'#233'dito'
      end
      object Label39: TLabel
        Left = 26
        Top = 358
        Width = 694
        Height = 15
        Caption = 
          'Indicador da apura'#231#227'o das contribui'#231#245'es e cr'#233'ditos, na escritura' +
          #231#227'o das opera'#231#245'es por NF-e e ECF (C010)'
      end
      object Label40: TLabel
        Left = 26
        Top = 445
        Width = 180
        Height = 15
        Caption = 'Indicador do tipo de ajuste'
      end
      object Label41: TLabel
        Left = 358
        Top = 445
        Width = 241
        Height = 15
        Caption = 'Ajustes de Contribui'#231#227'o ou Cr'#233'ditos'
      end
      object Label42: TLabel
        Left = 622
        Top = 17
        Width = 269
        Height = 15
        Caption = 'Indicador de per'#237'odo de apura'#231#227'o do IPI'
      end
      object cbTACBrIndicadorAtividade: TComboBox
        Left = 26
        Top = 76
        Width = 589
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 0
        Text = '0 - Industrial ou equiparado a industrial'
        OnChange = cbTACBrIndicadorAtividadeChange
        Items.Strings = (
          '0 - Industrial ou equiparado a industrial'
          '1 - Prestador de servi'#231'os'
          '2 - Atividade de com'#233'rcios'
          '3 - Atividade Financeira'
          '4 - Atividade Imobili'#225'ria'
          '9 - Outros')
      end
      object cbTACBrIndicadorNaturezaPJ: TComboBox
        Left = 25
        Top = 35
        Width = 589
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 1
        Text = '0 - Sociedade empres'#225'rial geral'
        OnChange = cbTACBrIndicadorNaturezaPJChange
        Items.Strings = (
          '0 - Sociedade empres'#225'rial geral'
          '1 - Sociedade Cooperativa'
          
            '2 - Entidade sujeita ao PIS/Pasep exclusivamente com base  na fo' +
            'lha de sal'#225'rios')
      end
      object cbTACBrCodIndIncTributaria: TComboBox
        Left = 26
        Top = 119
        Width = 589
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 2
        Text = 
          '0 - Escritura'#231#227'o de opera'#231#245'es com incidencia exclusivamente no r' +
          'egime n'#227'o cumulativo'
        OnChange = cbTACBrCodIndIncTributariaChange
        Items.Strings = (
          
            '0 - Escritura'#231#227'o de opera'#231#245'es com incidencia exclusivamente no r' +
            'egime n'#227'o cumulativo'
          
            '1 - Escritura'#231#227'o de opera'#231#245'es com incidencia exclusivamente no r' +
            'egime cumulativo'
          
            '2 - Escritura'#231#227'o de opera'#231#245'es com incidencia nos regimes cumulat' +
            'ivo e n'#227'o cumulativo')
      end
      object cbTACBrIndAproCred: TComboBox
        Left = 26
        Top = 172
        Width = 589
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 3
        Text = '0 - M'#233'todo de apropria'#231#227'o direta'
        OnChange = cbTACBrIndAproCredChange
        Items.Strings = (
          '0 - M'#233'todo de apropria'#231#227'o direta'
          '1 - M'#233'todo de rateio proporcional(Receita Bruta);')
      end
      object cbTACBrCodIndTipoCon: TComboBox
        Left = 26
        Top = 215
        Width = 589
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 4
        Text = '0 - Apura'#231#227'o da Contribui'#231#227'o Exclusivamente a Al'#237'quota B'#225'sica'
        OnChange = cbTACBrCodIndTipoConChange
        Items.Strings = (
          '0 - Apura'#231#227'o da Contribui'#231#227'o Exclusivamente a Al'#237'quota B'#225'sica'
          
            '1 - Apura'#231#227'o da Contribui'#231#227'o a Al'#237'quotas Espec'#237'ficas (Diferencia' +
            'das e/ou por Unidade de Medida de Produto)')
      end
      object cbTACBrCodIndCritEscrit: TComboBox
        Left = 26
        Top = 256
        Width = 589
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 5
        Text = '1 - Regime de Caixa - Escritura'#231#227'o consolidada (Registro F500);'
        OnChange = cbTACBrCodIndCritEscritChange
        Items.Strings = (
          '1 - Regime de Caixa - Escritura'#231#227'o consolidada (Registro F500);'
          
            '2 - Regime de Compet'#234'ncia - Escritura'#231#227'o consolidada (Registro F' +
            '550);'
          
            '9 - Regime de Compet'#234'ncia - Escritura'#231#227'o detalhada, com base nos' +
            ' registros dos Blocos A, C, D e F.')
      end
      object cbTACBrIndCodIncidencia: TComboBox
        Left = 26
        Top = 333
        Width = 317
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 6
        Text = '01 - Tabela I'
        OnChange = cbTACBrIndCodIncidenciaChange
        Items.Strings = (
          '01 - Tabela I'
          '02 - Tabela II'
          '03 - Tabela III'
          '04 - Tabela IV'
          '05 - Tabela V'
          '06 - Tabela VI'
          '07 - Tabela VII'
          '08 - Tabela VIII'
          '09 - Tabela IX'
          '10 - Tabela X'
          '11 - Tabela XI'
          '12 - Tabela XII')
      end
      object cbTACBrIndCTA: TComboBox
        Left = 351
        Top = 333
        Width = 317
        Height = 23
        ItemHeight = 15
        ItemIndex = 1
        TabOrder = 7
        Text = 'A Analitica'
        OnChange = cbTACBrIndCTAChange
        Items.Strings = (
          'S Sint'#233'tica'
          'A Analitica')
      end
      object cbTACBrIndEscrituracao: TComboBox
        Left = 26
        Top = 375
        Width = 644
        Height = 23
        ItemHeight = 15
        ItemIndex = 1
        TabOrder = 8
        Text = 
          '2 - Apura'#231#227'o com base no registro individualizado de NF-e (C100 ' +
          'e C170) e de ECF (C400);'
        OnChange = cbTACBrIndEscrituracaoChange
        Items.Strings = (
          
            '1 - Apura'#231#227'o com base nos registros de consolida'#231#227'o das opera'#231#245'e' +
            's por NF-e (C180 e C190) e por ECF (C490);'
          
            '2 - Apura'#231#227'o com base no registro individualizado de NF-e (C100 ' +
            'e C170) e de ECF (C400);')
      end
      object cbTACBrBaseCalculoCredito: TComboBox
        Left = 26
        Top = 419
        Width = 644
        Height = 23
        ItemHeight = 15
        TabOrder = 9
        Text = '00 - Vazio.'
        OnChange = cbTACBrBaseCalculoCreditoChange
        Items.Strings = (
          '00 - Vazio.'
          '01 - Aquisi'#231#227'o de bens para revenda'
          '02 - Aquisi'#231#227'o de bens utilizados como insumo'
          '03 - Aquisi'#231#227'o de servi'#231'os utilizados como insumo'
          '04 - Energia el'#233'trica e t'#233'rmica, inclusive sob a forma de vapor'
          '05 - Alugu'#233'is de pr'#233'dios'
          '06 - Alugu'#233'is de m'#225'quinas e equipamentos'
          '07 - Armazenagem de mercadoria e frete na opera'#231#227'o de venda'
          '08 - Contrapresta'#231#245'es de arrendamento mercantil'
          
            '09 - M'#225'quinas, equipamentos e outros bens incorporados ao ativo ' +
            'imobilizado (cr'#233'dito sobre encargos de deprecia'#231#227'o).'
          
            '10 - M'#225'quinas, equipamentos e outros bens incorporados ao ativo ' +
            'imobilizado (cr'#233'dito com base no valor de aquisi'#231#227'o).'
          
            '11 - Amortiza'#231#227'o e Deprecia'#231#227'o de edifica'#231#245'es e benfeitorias em ' +
            'im'#243'veis'
          '12 - Devolu'#231#227'o de Vendas Sujeitas '#224' Incid'#234'ncia N'#227'o-Cumulativa'
          '13 - Outras Opera'#231#245'es com Direito a Cr'#233'dito'
          '14 - Atividade de Transporte de Cargas - Subcontrata'#231#227'o'
          
            '15 - Atividade Imobili'#225'ria - Custo Incorrido de Unidade Imobili'#225 +
            'ria'
          
            '16 - Atividade Imobili'#225'ria - Custo Or'#231'ado de unidade n'#227'o conclu'#237 +
            'da'
          
            '17 - Atividade de Presta'#231#227'o de Servi'#231'os de Limpeza, Conserva'#231#227'o ' +
            'e Manuten'#231#227'o '#8211' vale-transporte, vale-refei'#231#227'o ou vale-alimenta'#231#227 +
            'o, fardamento ou uniforme.'
          '18 - Estoque de abertura de bens')
      end
      object cbTACBrIndAJ: TComboBox
        Left = 26
        Top = 463
        Width = 158
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 10
        Text = '0 - Ajuste de redu'#231#227'o;'
        OnChange = cbTACBrIndAJChange
        Items.Strings = (
          '0 - Ajuste de redu'#231#227'o;'
          '1 - Ajuste de acr'#233'scimo.')
      end
      object cbTACBrCodAj: TComboBox
        Left = 355
        Top = 464
        Width = 316
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 11
        Text = '01 - Ajuste Oriundo de A'#231#227'o Judicial'
        OnChange = cbTACBrCodAjChange
        Items.Strings = (
          '01 - Ajuste Oriundo de A'#231#227'o Judicial'
          '02 - Ajuste Oriundo de Processo Administrativo'
          '03 - Ajuste Oriundo da Legisla'#231#227'o Tribut'#225'ria'
          '04 - Ajuste Oriundo Especificamente do RTT'
          '05 - Ajuste Oriundo de Outras Situa'#231#245'es'
          '06 - Estorno')
      end
      object cbTACBrApuracaoIPI: TComboBox
        Left = 620
        Top = 35
        Width = 227
        Height = 23
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 12
        Text = '0 - Mensal'
        Items.Strings = (
          '0 - Mensal'
          '1 - Decendial'
          '2 - Vazio')
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Contador'
      ImageIndex = 2
      object Label43: TLabel
        Left = 33
        Top = 11
        Width = 62
        Height = 15
        Caption = 'Contador'
      end
      object Label44: TLabel
        Left = 33
        Top = 55
        Width = 36
        Height = 15
        Caption = 'CNPJ'
      end
      object Label45: TLabel
        Left = 236
        Top = 55
        Width = 26
        Height = 15
        Caption = 'CPF'
      end
      object Label46: TLabel
        Left = 471
        Top = 55
        Width = 28
        Height = 15
        Caption = 'CRC'
      end
      object Label47: TLabel
        Left = 33
        Top = 98
        Width = 62
        Height = 15
        Caption = 'Endere'#231'o'
      end
      object Label48: TLabel
        Left = 550
        Top = 98
        Width = 53
        Height = 15
        Caption = 'N'#250'mero'
      end
      object Label49: TLabel
        Left = 33
        Top = 142
        Width = 43
        Height = 15
        Caption = 'Bairro'
      end
      object Label50: TLabel
        Left = 550
        Top = 142
        Width = 27
        Height = 15
        Caption = 'CEP'
      end
      object Label51: TLabel
        Left = 33
        Top = 188
        Width = 92
        Height = 15
        Caption = 'Complemento'
      end
      object Label52: TLabel
        Left = 33
        Top = 230
        Width = 57
        Height = 15
        Caption = 'Telefone'
      end
      object Label53: TLabel
        Left = 218
        Top = 230
        Width = 23
        Height = 15
        Caption = 'Fax'
      end
      object Label54: TLabel
        Left = 393
        Top = 231
        Width = 140
        Height = 15
        Caption = 'Cod. IBGE Municipio'
      end
      object Label55: TLabel
        Left = 33
        Top = 276
        Width = 38
        Height = 15
        Caption = 'Email'
      end
      object DBEdit25: TDBEdit
        Left = 31
        Top = 28
        Width = 606
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DBEdit26: TDBEdit
        Left = 31
        Top = 72
        Width = 195
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_CNPJ'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit27: TDBEdit
        Left = 232
        Top = 72
        Width = 233
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_CPF'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit28: TDBEdit
        Left = 469
        Top = 72
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_CRC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit29: TDBEdit
        Left = 31
        Top = 116
        Width = 511
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_END'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit30: TDBEdit
        Left = 548
        Top = 116
        Width = 87
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_NUMEND'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit31: TDBEdit
        Left = 31
        Top = 159
        Width = 510
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_BAIRRO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit32: TDBEdit
        Left = 549
        Top = 159
        Width = 88
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_CEP'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBEdit33: TDBEdit
        Left = 31
        Top = 204
        Width = 606
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_COMPL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit34: TDBEdit
        Left = 31
        Top = 248
        Width = 171
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_FONE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object DBEdit35: TDBEdit
        Left = 214
        Top = 248
        Width = 162
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_FAX'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit36: TDBEdit
        Left = 391
        Top = 248
        Width = 145
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_COD_MUN'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object DBEdit37: TDBEdit
        Left = 31
        Top = 292
        Width = 606
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTADOR_EMAIL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 552
  end
  inherited PopupMenu1: TPopupMenu
    Left = 600
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_empresa
    Left = 504
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 368
    Top = 8
  end
  object procIBGE: TSQLClientDataSet
    CommandText = 
      'select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO from TB_IBGE' +
      ' where NM_LOCALIDADE LIKE :NOME'#13#10'order by NM_LOCALIDADE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 464
    Top = 24
    object procIBGENM_LOCALIDADE: TStringField
      DisplayLabel = 'Cidade\Vila'
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object procIBGECD_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
    object procIBGENM_MUNICIPIO: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object procIBGECD_IBGE: TStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 536
    Top = 48
  end
  object SaveDialog1: TSaveDialog
    Filter = 'JPEG files|*.JPG'
    Options = [ofPathMustExist]
    Left = 568
    Top = 48
  end
  object sdsEstado: TSQLDataSet
    CommandText = 'Select * from ESTADO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 76
    Top = 22
    object sdsEstadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsEstadoSIGLA: TStringField
      FieldName = 'SIGLA'
      FixedChar = True
      Size = 2
    end
    object sdsEstadoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspEstado: TDataSetProvider
    DataSet = sdsEstado
    Left = 116
    Top = 22
  end
  object cdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstado'
    Left = 152
    Top = 22
    object cdsEstadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsEstadoSIGLA: TStringField
      FieldName = 'SIGLA'
      FixedChar = True
      Size = 2
    end
    object cdsEstadoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
end
