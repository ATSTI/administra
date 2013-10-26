inherited fEstado: TfEstado
  Left = 237
  Top = 19
  Width = 791
  Height = 640
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Classifica'#231#227'o Fiscal por Estado'
  Font.Height = -13
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label18: TLabel [0]
    Left = 178
    Top = 57
    Width = 25
    Height = 16
    Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
    Anchors = [akTop]
    Caption = 'CST'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  inherited MMJPanel1: TMMJPanel
    Top = 559
    Width = 783
    inherited btnIncluir: TBitBtn [0]
      Left = 299
      Anchors = [akTop, akBottom]
    end
    inherited btnGravar: TBitBtn [1]
      Left = 299
      Anchors = [akTop, akBottom]
    end
    inherited btnCancelar: TBitBtn
      Left = 415
      Anchors = [akTop, akBottom]
    end
    inherited btnExcluir: TBitBtn
      Left = 415
      Anchors = [akTop, akBottom]
    end
    inherited btnProcurar: TBitBtn
      Left = 181
      Anchors = [akTop, akBottom]
      Caption = 'CFOP'
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 532
      Anchors = [akTop, akBottom]
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 783
    Height = 140
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Top = -74
    end
    inherited Label2: TLabel
      Top = -75
    end
    object DBText2: TDBText
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'CFNOME'
      DataSource = DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 45
      Width = 36
      Height = 16
      Anchors = [akTop]
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 104
      Top = 44
      Width = 17
      Height = 16
      Hint = 'Estado'
      Anchors = [akTop]
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label8: TLabel
      Left = 272
      Top = 44
      Width = 62
      Height = 16
      Anchors = [akTop]
      Caption = 'Aliq. ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 356
      Top = 44
      Width = 74
      Height = 16
      Anchors = [akTop]
      Caption = 'Red.B. C'#225'lc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 442
      Top = 44
      Width = 28
      Height = 16
      Hint = 'Margem De Valor Agregado(ST)'
      Anchors = [akTop]
      Caption = 'MVA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label11: TLabel
      Left = 527
      Top = 44
      Width = 78
      Height = 16
      Anchors = [akTop]
      Caption = 'ICMS Origem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 612
      Top = 44
      Width = 67
      Height = 16
      Anchors = [akTop]
      Caption = 'ICMS Dest.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 135
      Top = 44
      Width = 27
      Height = 16
      Cursor = crHandPoint
      Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
      Anchors = [akTop]
      Caption = 'CST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = Label13Click
    end
    object Label7: TLabel
      Left = 102
      Top = 91
      Width = 15
      Height = 16
      Hint = 'Imposto sobre produtos industrializados'
      Anchors = [akTop]
      Caption = 'IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label5: TLabel
      Left = 498
      Top = 91
      Width = 63
      Height = 16
      Anchors = [akTop]
      Caption = 'Tipo Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 263
      Top = 93
      Width = 21
      Height = 16
      Hint = 'Programa de Integra'#231#227'o Social'
      Anchors = [akTop]
      Caption = 'PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label14: TLabel
      Left = 426
      Top = 91
      Width = 48
      Height = 16
      Hint = 'Contribui'#231#227'o para o Financiamento da Seguridade Social'
      Anchors = [akTop]
      Caption = 'COFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label15: TLabel
      Left = 17
      Top = 93
      Width = 45
      Height = 16
      Cursor = crHandPoint
      Anchors = [akTop]
      Caption = 'CST IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label15Click
    end
    object Label16: TLabel
      Left = 178
      Top = 91
      Width = 50
      Height = 16
      Cursor = crHandPoint
      Anchors = [akTop]
      Caption = 'CST PIS'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label16Click
    end
    object Label17: TLabel
      Left = 338
      Top = 91
      Width = 77
      Height = 16
      Cursor = crHandPoint
      Anchors = [akTop]
      Caption = 'CST COFINS'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label17Click
    end
    object Label19: TLabel
      Left = 187
      Top = 44
      Width = 46
      Height = 16
      Cursor = crHandPoint
      Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
      Anchors = [akTop]
      Caption = 'CSOSN'
      DragCursor = crDefault
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = Label19Click
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 61
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CFOP'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 100
      Top = 61
      Width = 28
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 131
      Top = 61
      Width = 49
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CST'
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
    object DBEdit3: TDBEdit
      Left = 268
      Top = 61
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 353
      Top = 61
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'REDUCAO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit6: TDBEdit
      Left = 439
      Top = 61
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS_SUBSTRIB'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 524
      Top = 61
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS_SUBSTRIB_IC'
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
    object DBEdit8: TDBEdit
      Left = 609
      Top = 61
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS_SUBSTRIB_IND'
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
    object DBEdit5: TDBEdit
      Left = 99
      Top = 109
      Width = 70
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'IPI'
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
    object DBEdit10: TDBEdit
      Left = 260
      Top = 109
      Width = 70
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'PIS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnKeyPress = FormKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 423
      Top = 109
      Width = 70
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COFINS'
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
    object DBEdit12: TDBEdit
      Left = 14
      Top = 109
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSTIPI'
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
    object DBEdit13: TDBEdit
      Left = 175
      Top = 109
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSTPIS'
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
    object DBEdit14: TDBEdit
      Left = 336
      Top = 109
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSTCOFINS'
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
    object CheckBox1: TCheckBox
      Left = 642
      Top = 112
      Width = 121
      Height = 13
      Anchors = [akTop]
      Caption = 'N'#227'o Gera Fatura'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBox1Click
    end
    object DBEdit21: TDBEdit
      Left = 183
      Top = 61
      Width = 81
      Height = 24
      Hint = 
        'A partir da vers'#227'o 2.00 do leiaute da NF-e, o contribuinte emiss' +
        'or do SIMPLES NACIONAL deve informar um dos seguintes C'#243'digo de ' +
        'Situa'#231#227'o da Opera'#231#227'o - SIMPLES NACIONAL (CSOSN) em substitui'#231#227'o ' +
        'ao CST:'#13#10#13#10'    101 - Tributada pelo Simples Nacional com permiss' +
        #227'o de cr'#233'dito;'#13#10'    102 - Tributada pelo Simples Nacional sem pe' +
        'rmiss'#227'o de cr'#233'dito;'#13#10'    103 - Isen'#231#227'o do ICMS no Simples Nacion' +
        'al para faixa de receita bruta;'#13#10'    201 - Tributada pelo Simple' +
        's Nacional com permiss'#227'o de cr'#233'dito e com cobran'#231'a do ICMS por s' +
        'ubstitui'#231#227'o tribut'#225'ria;'#13#10'    202 - Tributada pelo Simples Nacion' +
        'al sem permiss'#227'o de cr'#233'dito e com cobran'#231'a do ICMS por substitui' +
        #231#227'o tribut'#225'ria;'#13#10'    203 - Isen'#231#227'o do ICMS no Simples Nacional p' +
        'ara faixa de receita bruta e com cobran'#231'a do ICMS por substitui'#231 +
        #227'o tribut'#225'ria;'#13#10'    300 - Imune;'#13#10'    400 - N'#227'o tributada pelo S' +
        'imples Nacional;'#13#10'    500 - ICMS cobrado anteriormente por subst' +
        'itui'#231#227'o tribut'#225'ria (substitu'#237'do) ou por antecipa'#231#227'o;'#13#10'    900 - ' +
        'Outros.'
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSOSN'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 498
      Top = 108
      Width = 138
      Height = 24
      BevelKind = bkFlat
      Ctl3D = True
      DataField = 'CODFISCAL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODFISCAL'
      ListField = 'DESCRICAO'
      ListSource = DtSrcTFiscal
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      OnKeyPress = FormKeyPress
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 331
    Width = 775
    Height = 217
    Align = alClient
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFNOME'
        Title.Caption = 'CFOP - Nome'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSOSN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDUCAO'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTIPI'
        Title.Caption = 'CST IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB'
        Title.Caption = 'MVA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IC'
        Title.Caption = 'ICMS Origem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IND'
        Title.Caption = 'ICMS Destino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTPIS'
        Title.Caption = 'CST PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTCOFINS'
        Title.Caption = 'CST COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFISCAL'
        Title.Caption = 'Codigo Fiscal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC1'
        Title.Caption = 'Dados Adicionais 1'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC2'
        Title.Caption = 'Dados Adicionais 2'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC3'
        Title.Caption = 'Dados Adicionais 3'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC4'
        Title.Caption = 'Dados Adicionais 4'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC5'
        Title.Caption = 'Dados Adicionais 5'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC6'
        Title.Caption = 'Dados Adicionais 6'
        Width = 700
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 140
    Width = 775
    Height = 191
    Align = alTop
    Caption = 'Dados Adicionais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      775
      191)
    object DBEdit15: TDBEdit
      Left = 64
      Top = 18
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC1'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 64
      Top = 47
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC2'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 64
      Top = 76
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC3'
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
    object DBEdit18: TDBEdit
      Left = 64
      Top = 104
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC4'
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
    object DBEdit19: TDBEdit
      Left = 64
      Top = 132
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC5'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 64
      Top = 160
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC6'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
  end
  object panelAjuda: TPanel [5]
    Left = 68
    Top = 131
    Width = 673
    Height = 425
    TabOrder = 4
    Visible = False
    object Memo1: TMemo
      Left = 3
      Top = 8
      Width = 666
      Height = 397
      Align = alCustom
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 488
  end
  inherited PopupMenu1: TPopupMenu
    Left = 536
  end
  inherited DtSrc: TDataSource
    DataSet = cds_estado
    Left = 408
  end
  object sds: TSQLDataSet
    CommandText = 
      'select esta.CODESTADO, esta.CFOP'#13#10'        , esta.UF        , est' +
      'a.ICMS'#13#10'        , esta.REDUCAO        , cfo.CFNOME'#13#10'        , es' +
      'ta.IPI         , esta.CSTIPI'#13#10'        , esta.ICMS_SUBSTRIB, esta' +
      '.ICMS_SUBSTRIB_IC'#13#10'        , esta.ICMS_SUBSTRIB_IND, esta.CST'#13#10' ' +
      '       , esta.PIS , esta.COFINS , esta.CSTPIS , esta.CSTCOFINS'#13#10 +
      '        , esta.DADOSADC1        , esta.DADOSADC2'#13#10'        , esta' +
      '.DADOSADC3        , esta.DADOSADC4'#13#10'        , esta.DADOSADC5    ' +
      '    , esta.DADOSADC6'#13#10'        , esta.NAOENVFATURA, esta.CSOSN, e' +
      'sta.CODFISCAL'#13#10'FROM ESTADO_ICMS esta '#13#10'left outer join CFOP cfo ' +
      'on cfo.CFCOD = esta.CFOP '#13#10'order by esta.CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 288
    Top = 8
    object sdsUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object sdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object sdsCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object sdsIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCFOP: TStringField
      DisplayWidth = 30
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sdsICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object sdsICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object sdsICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object sdsCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sdsCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsPIS: TFloatField
      FieldName = 'PIS'
    end
    object sdsCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object sdsCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object sdsDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object sdsDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object sdsDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object sdsNAOENVFATURA: TStringField
      FieldName = 'NAOENVFATURA'
      FixedChar = True
      Size = 1
    end
    object sdsDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object sdsDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object sdsCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sdsCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 328
    Top = 8
  end
  object cds_estado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    OnPostError = cds_estadoPostError
    OnReconcileError = cds_estadoReconcileError
    Left = 368
    Top = 8
    object cds_estadoCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_estadoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object cds_estadoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds_estadoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object cds_estadoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object cds_estadoICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object cds_estadoICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object cds_estadoCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cds_estadoCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_estadoPIS: TFloatField
      FieldName = 'PIS'
    end
    object cds_estadoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object cds_estadoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cds_estadoCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cds_estadoCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cds_estadoDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object cds_estadoDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object cds_estadoDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object cds_estadoDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object cds_estadoNAOENVFATURA: TStringField
      FieldName = 'NAOENVFATURA'
      FixedChar = True
      Size = 1
    end
    object cds_estadoDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object cds_estadoDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object cds_estadoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cds_estadoCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTFiscal: TSQLDataSet
    CommandText = 'select * from TIPO_FISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 588
    Top = 7
    object sdsTFiscalCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsTFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object dspTFiscal: TDataSetProvider
    DataSet = sdsTFiscal
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 626
    Top = 7
  end
  object cdsTFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTFiscal'
    Left = 657
    Top = 7
    object cdsTFiscalCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object DtSrcTFiscal: TDataSource
    DataSet = cdsTFiscal
    Left = 695
    Top = 6
  end
end
