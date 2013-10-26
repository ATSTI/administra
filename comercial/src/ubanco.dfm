inherited fbanco: Tfbanco
  Left = 328
  Top = 74
  Width = 707
  Height = 591
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 221
    Top = 55
    Width = 45
    Height = 16
    Caption = 'Banco :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 401
    Top = 55
    Width = 46
    Height = 16
    Caption = 'Raz'#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 39
    Top = 100
    Width = 54
    Height = 13
    Caption = 'CARTEIRA'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [3]
    Left = 441
    Top = 102
    Width = 96
    Height = 13
    Caption = 'CODIGO CEDENTE'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [4]
    Left = 40
    Top = 57
    Width = 45
    Height = 13
    Caption = 'CODIGO '
    FocusControl = dbedtCODBANCO
  end
  object Label8: TLabel [5]
    Left = 162
    Top = 100
    Width = 92
    Height = 13
    Caption = 'CODIGO AGENCIA'
    FocusControl = DBEdit6
  end
  object Label9: TLabel [6]
    Left = 270
    Top = 100
    Width = 19
    Height = 13
    Caption = 'DIG'
    FocusControl = DBEdit7
  end
  object Label10: TLabel [7]
    Left = 299
    Top = 100
    Width = 88
    Height = 13
    Caption = 'NUMERO CONTA'
    FocusControl = DBEdit8
  end
  object Label11: TLabel [8]
    Left = 411
    Top = 100
    Width = 19
    Height = 13
    Caption = 'DIG'
    FocusControl = DBEdit9
  end
  object lbl1: TLabel [9]
    Left = 41
    Top = 143
    Width = 38
    Height = 13
    Caption = 'Especie'
    FocusControl = dbedtCODIGO_CEDENTE
  end
  object lbl2: TLabel [10]
    Left = 85
    Top = 143
    Width = 30
    Height = 13
    Caption = 'Aceite'
    FocusControl = dbedtCODIGO_CEDENTE1
  end
  object lbl3: TLabel [11]
    Left = 123
    Top = 141
    Width = 45
    Height = 13
    Caption = 'Conv'#234'nio'
    FocusControl = dbedtCODIGO_AGENCIA
  end
  object lbl4: TLabel [12]
    Left = 37
    Top = 277
    Width = 83
    Height = 13
    Caption = 'Local Pagamento'
    FocusControl = DBEdit3
  end
  object lbl5: TLabel [13]
    Left = 36
    Top = 313
    Width = 49
    Height = 13
    Caption = 'Instru'#231#245'es'
    FocusControl = DBEdit3
  end
  object Label12: TLabel [14]
    Left = 97
    Top = 57
    Width = 46
    Height = 13
    Caption = 'N'#186' Banco'
    FocusControl = DBEdit5
  end
  object Label13: TLabel [15]
    Left = 170
    Top = 57
    Width = 16
    Height = 13
    Caption = 'DG'
    FocusControl = DBEdit14
  end
  object lbl6: TLabel [16]
    Left = 548
    Top = 102
    Width = 115
    Height = 13
    Caption = 'Ultimo n'#250'mero do Boleto'
    FocusControl = dbedtCODIGOBOLETO
  end
  object lbl8: TLabel [17]
    Left = 185
    Top = 143
    Width = 68
    Height = 13
    Caption = 'Layout Boleto:'
    Transparent = True
  end
  object lbl11: TLabel [18]
    Left = 239
    Top = 237
    Width = 171
    Height = 13
    Caption = 'Pasta destino do Arquivo Remessa :'
    Transparent = True
  end
  object lbl10: TLabel [19]
    Left = 40
    Top = 237
    Width = 165
    Height = 13
    Caption = 'Pasta destino do Arquivo Retorno :'
    Transparent = True
  end
  object lbl7: TLabel [20]
    Left = 99
    Top = 100
    Width = 54
    Height = 13
    Caption = 'VARIA'#199#195'O'
    FocusControl = dbedtCARTEIRA
  end
  object lbl14: TLabel [21]
    Left = 281
    Top = 143
    Width = 82
    Height = 13
    Caption = 'Layout Remessa:'
    Transparent = True
  end
  object lbl9: TLabel [22]
    Left = 377
    Top = 143
    Width = 70
    Height = 13
    Caption = 'Resp. Emiss'#227'o'
    Transparent = True
  end
  object lbl12: TLabel [23]
    Left = 473
    Top = 143
    Width = 63
    Height = 13
    Caption = 'Comprovante'
    Transparent = True
  end
  object lbl13: TLabel [24]
    Left = 570
    Top = 143
    Width = 60
    Height = 13
    Caption = 'Mora / Juros'
    Transparent = True
  end
  object lbl15: TLabel [25]
    Left = 42
    Top = 194
    Width = 71
    Height = 13
    Caption = '% Mora / Juros'
    Transparent = True
  end
  object lbl16: TLabel [26]
    Left = 154
    Top = 194
    Width = 48
    Height = 13
    Caption = 'Protesta ?'
    Transparent = True
  end
  object lbl17: TLabel [27]
    Left = 439
    Top = 237
    Width = 120
    Height = 13
    Caption = 'Nome Arquivo Remessa :'
    Transparent = True
  end
  inherited MMJPanel1: TMMJPanel
    Top = 499
    Width = 691
    inherited btnGravar: TBitBtn
      Left = 180
    end
    inherited btnIncluir: TBitBtn
      Left = 180
    end
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 406
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 691
    inherited Label1: TLabel
      Left = 151
      Top = -63
      Width = 382
      Caption = 'Cadastro de Bancos'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 155
      Top = -62
      Width = 382
      Caption = 'Cadastro de Bancos'
      Font.Name = 'Cooper Black'
    end
    object RxLabel2: TRxLabel
      Left = 1
      Top = 1
      Width = 689
      Height = 52
      Align = alClient
      Alignment = taCenter
      Caption = 'Cadastro de Bancos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Cooper Black'
      Font.Style = [fsItalic]
      Layout = tlCenter
      ParentFont = False
      ShadowColor = clBackground
      ShadowSize = 2
      ShadowPos = spLeftBottom
      Transparent = True
    end
  end
  object DBEdit1: TDBEdit [30]
    Left = 219
    Top = 70
    Width = 180
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'BANCO'
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
  object DBEdit2: TDBEdit [31]
    Left = 400
    Top = 70
    Width = 236
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOMEBANCO'
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
  object DBGrid1: TDBGrid [32]
    Left = 36
    Top = 419
    Width = 616
    Height = 74
    TabStop = False
    BorderStyle = bsNone
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEBANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARTEIRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_CEDENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_EMPRESA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIGITO_AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CONTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIGITO_CONTA'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [33]
    Left = 212
    Top = 467
    Width = 248
    Height = 28
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 12
  end
  object DBEdit3: TDBEdit [34]
    Left = 39
    Top = 116
    Width = 57
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CARTEIRA'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [35]
    Left = 441
    Top = 117
    Width = 103
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODIGO_CEDENTE'
    DataSource = DtSrc
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object dbedtCODBANCO: TDBEdit [36]
    Left = 40
    Top = 73
    Width = 56
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODBANCO'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [37]
    Left = 160
    Top = 116
    Width = 106
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODIGO_AGENCIA'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [38]
    Left = 270
    Top = 116
    Width = 23
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DIGITO_AGENCIA'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [39]
    Left = 299
    Top = 116
    Width = 106
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NUMERO_CONTA'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [40]
    Left = 411
    Top = 116
    Width = 26
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DIGITO_CONTA'
    DataSource = DtSrc
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [41]
    Left = 36
    Top = 329
    Width = 616
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSTRUCAO1'
    DataSource = DtSrc
    TabOrder = 13
  end
  object DBEdit11: TDBEdit [42]
    Left = 36
    Top = 351
    Width = 616
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSTRUCAO2'
    DataSource = DtSrc
    TabOrder = 14
  end
  object DBEdit12: TDBEdit [43]
    Left = 36
    Top = 373
    Width = 616
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSTRUCAO3'
    DataSource = DtSrc
    TabOrder = 15
  end
  object DBEdit13: TDBEdit [44]
    Left = 36
    Top = 395
    Width = 616
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSTRUCAO4'
    DataSource = DtSrc
    TabOrder = 16
  end
  object dbedtCODIGO_CEDENTE: TDBEdit [45]
    Left = 41
    Top = 158
    Width = 42
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ESPECIEDOC'
    DataSource = DtSrc
    TabOrder = 17
    OnKeyPress = FormKeyPress
  end
  object dbedtCODIGO_CEDENTE1: TDBEdit [46]
    Left = 85
    Top = 158
    Width = 33
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ACEITE'
    DataSource = DtSrc
    TabOrder = 18
    OnKeyPress = FormKeyPress
  end
  object dbedtCODIGO_AGENCIA: TDBEdit [47]
    Left = 122
    Top = 157
    Width = 60
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CONVENIO'
    DataSource = DtSrc
    TabOrder = 19
    OnKeyPress = FormKeyPress
  end
  object dbedtINSTRUCAO1: TDBEdit [48]
    Left = 37
    Top = 292
    Width = 614
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'LOCALPGTO'
    DataSource = DtSrc
    TabOrder = 20
  end
  object DBEdit5: TDBEdit [49]
    Left = 97
    Top = 73
    Width = 72
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'N_BANCO'
    DataSource = DtSrc
    TabOrder = 21
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [50]
    Left = 170
    Top = 73
    Width = 46
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DIGITOBANCO'
    DataSource = DtSrc
    TabOrder = 22
    OnKeyPress = FormKeyPress
  end
  object dbedtCODIGOBOLETO: TDBEdit [51]
    Left = 548
    Top = 117
    Width = 129
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODIGOBOLETO'
    DataSource = DtSrc
    TabOrder = 23
    OnKeyPress = FormKeyPress
  end
  object dbedtCARTEIRA: TDBEdit [52]
    Left = 99
    Top = 116
    Width = 58
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VARIACAO'
    DataSource = DtSrc
    TabOrder = 24
    OnKeyPress = FormKeyPress
  end
  object dbcbbLAYOUT_BL: TDBComboBox [53]
    Left = 184
    Top = 157
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'LAYOUT_BL'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'Boleto'
      'Carn'#234
      'Fatura')
    TabOrder = 25
  end
  object dbcbbLAYOUT_RM: TDBComboBox [54]
    Left = 280
    Top = 157
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'LAYOUT_RM'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'c400'
      'c240')
    TabOrder = 26
  end
  object dbcbbRESP_EMISSAO: TDBComboBox [55]
    Left = 376
    Top = 157
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'RESP_EMISSAO'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'Banco Emite'
      'Cliente Emite')
    TabOrder = 27
  end
  object dbcbbIMP_COMPROVANTE: TDBComboBox [56]
    Left = 472
    Top = 157
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'IMP_COMPROVANTE'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'SIM'
      'N'#195'O')
    TabOrder = 28
  end
  object dbcbbRESP_EMISSAO2: TDBComboBox [57]
    Left = 569
    Top = 157
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'MORAJUROS'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      '1-Diario'
      '2-Mensal'
      '3-Isento')
    TabOrder = 29
  end
  object JvDBSpinEdit1: TJvDBSpinEdit [58]
    Left = 39
    Top = 211
    Width = 108
    Height = 21
    TabOrder = 30
    DataField = 'PERCMULTA'
    DataSource = DtSrc
  end
  object dbcbbPROTESTO: TDBComboBox [59]
    Left = 153
    Top = 211
    Width = 520
    Height = 21
    BevelKind = bkFlat
    DataField = 'PROTESTO'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      '00 - Sem de instru'#231#245'es'
      
        '01 - Cobrar juros (Dispens'#225'vel se informado o valor a ser cobrad' +
        'o por dia de atraso).'
      '03 - Protestar no 3'#186' dia '#250'til ap'#243's vencido'
      '04 - Protestar no 4'#186' dia '#250'til ap'#243's vencido'
      '05 - Protestar no 5'#186' dia '#250'til ap'#243's vencido'
      
        '06 - Indica Protesto em dias corridos, com prazo de 6 a 29, 35 o' +
        'u 40 dias Corridos.'
      '07 - N'#227'o protestar'
      '10 - Protestar no 10'#186' dia corrido ap'#243's vencido'
      '15 - Protestar no 15'#186' dia corrido ap'#243's vencido'
      '20 - Protestar no 20'#186' dia corrido ap'#243's vencido'
      '22 - Conceder desconto s'#243' at'#233' a data estipulada'
      '25 - Protestar no 25'#186' dia corrido ap'#243's vencido'
      '30 - Protestar no 30'#186' dia corrido ap'#243's vencido'
      '45 - Protestar no 45'#186' dia corrido ap'#243's vencido')
    TabOrder = 31
  end
  object dbedtPASTA_RETORNO: TDBEdit [60]
    Left = 39
    Top = 251
    Width = 186
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PASTA_RETORNO'
    DataSource = DtSrc
    TabOrder = 32
  end
  object dbedtPASTA_RETORNO1: TDBEdit [61]
    Left = 240
    Top = 250
    Width = 193
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PASTA_REMESSA'
    DataSource = DtSrc
    TabOrder = 33
  end
  object dbedtPASTA_REMESSA: TDBEdit [62]
    Left = 440
    Top = 250
    Width = 193
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOME_ARQUIVO'
    DataSource = DtSrc
    TabOrder = 34
  end
  inherited PopupMenu1: TPopupMenu
    Left = 632
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsBanco
  end
end
