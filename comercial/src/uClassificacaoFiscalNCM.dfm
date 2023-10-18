inherited fClassificacaoFiscalNCM: TfClassificacaoFiscalNCM
  Left = 242
  Top = 35
  Width = 882
  Height = 677
  Caption = 'Classifica'#231#227'o Fiscal dos NCMs'
  OldCreateOrder = True
  OnCreate = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 874
    Font.Charset = ANSI_CHARSET
    Font.Height = -29
    ParentFont = False
    TabOrder = 3
    object Label9: TLabel
      Left = 9
      Top = 7
      Width = 111
      Height = 36
      Anchors = [akLeft, akRight]
      Caption = 'Label9'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cooper Blk BT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 599
    Width = 874
    TabOrder = 0
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  object DBGrid1: TDBGrid [2]
    Left = 0
    Top = 346
    Width = 874
    Height = 253
    Align = alClient
    DataSource = DtSrc
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'NCM'
        Title.Caption = 'Cod. NCM'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST'
        Title.Caption = 'IVA'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IC'
        Title.Caption = 'Icms Origem'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IND'
        Title.Caption = 'Icms Destino'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Title.Caption = 'Icms'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_BASE'
        Title.Caption = 'Base Icms'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSOSN'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTIPI'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTCOFINS'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COFINS'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTPIS'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIS'
        Width = 50
        Visible = True
      end>
  end
  object gbProduto: TGroupBox [3]
    Left = 248
    Top = 146
    Width = 161
    Height = 96
    Caption = 'Produto'
    TabOrder = 5
    Visible = False
    object Label19: TLabel
      Left = 24
      Top = 16
      Width = 24
      Height = 13
      Caption = 'NCM'
    end
    object btnExecutaCopia: TBitBtn
      Left = 40
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Copia'
      TabOrder = 1
      OnClick = btnExecutaCopiaClick
    end
    object edNCM: TEdit
      Left = 24
      Top = 34
      Width = 121
      Height = 21
      Hint = 
        'Faz a c'#243'pia do produto acima para TODOS os produtos  que possuem' +
        ' este NCM.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 185
    Width = 874
    Height = 161
    Align = alTop
    Caption = 'Dados Adicionais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      874
      161)
    object Label17: TLabel
      Left = 7
      Top = 21
      Width = 83
      Height = 16
      Cursor = crHandPoint
      Hint = 'Clique aqui para visualizar o aviso.'
      Anchors = [akTop]
      Caption = 'IMPORTANTE'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = Label17Click
    end
    object DBEdit18: TDBEdit
      Left = 108
      Top = 18
      Width = 627
      Height = 21
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
    object DBEdit19: TDBEdit
      Left = 108
      Top = 40
      Width = 627
      Height = 21
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
    object DBEdit20: TDBEdit
      Left = 108
      Top = 62
      Width = 627
      Height = 22
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
    object DBEdit21: TDBEdit
      Left = 108
      Top = 85
      Width = 627
      Height = 22
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
    object DBEdit22: TDBEdit
      Left = 108
      Top = 108
      Width = 627
      Height = 22
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
    object DBEdit23: TDBEdit
      Left = 108
      Top = 131
      Width = 627
      Height = 22
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
  object Panel1: TPanel [5]
    Left = 0
    Top = 51
    Width = 874
    Height = 134
    Align = alTop
    TabOrder = 1
    DesignSize = (
      874
      134)
    object Label1: TLabel
      Left = 3
      Top = 1
      Width = 49
      Height = 13
      Caption = 'Cod. NCM'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 99
      Top = 1
      Width = 28
      Height = 13
      Caption = 'CFOP'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 163
      Top = 1
      Width = 14
      Height = 13
      Hint = 'Estado'
      Caption = 'UF'
      FocusControl = DBEdit3
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 200
      Top = 1
      Width = 23
      Height = 13
      Hint = 'Margem De Valor Agregado(ST)'
      Caption = 'MVA'
      FocusControl = DBEdit4
      ParentShowHint = False
      ShowHint = True
    end
    object Label5: TLabel
      Left = 272
      Top = 1
      Width = 58
      Height = 13
      Caption = 'Icms Origem'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 347
      Top = 1
      Width = 61
      Height = 13
      Caption = 'Icms Destino'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 424
      Top = 1
      Width = 22
      Height = 13
      Caption = 'Icms'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 487
      Top = 1
      Width = 75
      Height = 13
      Caption = 'Red. Base Icms'
      FocusControl = DBEdit8
    end
    object Label11: TLabel
      Left = 775
      Top = 1
      Width = 13
      Height = 13
      Hint = 'Imposto sobre Produto Industrializado'
      Caption = 'IPI'
      FocusControl = DBEdit10
      ParentShowHint = False
      ShowHint = True
    end
    object Label14: TLabel
      Left = 89
      Top = 47
      Width = 39
      Height = 13
      Hint = 'Imposto sobre Produto Industrializado'
      Caption = 'COFINS'
      FocusControl = DBEdit13
      ParentShowHint = False
      ShowHint = True
    end
    object Label16: TLabel
      Left = 212
      Top = 47
      Width = 17
      Height = 13
      Hint = 'Imposto sobre Produto Industrializado'
      Caption = 'PIS'
      FocusControl = DBEdit15
      ParentShowHint = False
      ShowHint = True
    end
    object Label20: TLabel
      Left = 409
      Top = 47
      Width = 56
      Height = 13
      Caption = 'Tipos Fiscal'
      FocusControl = DBEdit15
      ParentShowHint = False
      ShowHint = True
    end
    object Label18: TLabel
      Left = 281
      Top = 47
      Width = 33
      Height = 13
      Hint = 
        'Origem da mercadoria: '#13#10'0 - Nacional, exceto as indicadas nos c'#243 +
        'digos 3 a 5.'#13#10'1 - Estrangeira - Importa'#231#227'o direta, exceto a indi' +
        'cada no c'#243'digo 6.'#13#10'2 - Estrangeira - Adquirida no mercado intern' +
        'o, exceto a indicada '#13#10'no c'#243'digo 7.'#13#10'3 - Nacional, mercadoria ou' +
        ' bem com Conte'#250'do de Importa'#231#227'o '#13#10'superior a 40%.'#13#10'4 - Nacional,' +
        ' cuja produ'#231#227'o tenha sido feita em conformidade '#13#10'com os process' +
        'os produtivos b'#225'sicos de que tratam as legisla'#231#245'es '#13#10'citadas nos' +
        ' Ajustes.'#13#10'5 - Nacional, mercadoria ou bem com Conte'#250'do de Impor' +
        'ta'#231#227'o '#13#10'inferior ou igual a 40%.'#13#10'6 - Estrangeira - Importa'#231#227'o d' +
        'ireta, sem similar nacional, constante '#13#10'em lista da CAMEX.'#13#10'7 -' +
        ' Estrangeira - Adquirida no mercado interno, sem similar naciona' +
        'l, '#13#10'constante em lista da CAMEX.'
      Caption = 'Origem'
      ParentShowHint = False
      ShowHint = True
    end
    object Label21: TLabel
      Left = 585
      Top = 1
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
      OnClick = Label21Click
    end
    object Label10: TLabel
      Left = 650
      Top = 1
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
      OnClick = Label10Click
    end
    object Label12: TLabel
      Left = 720
      Top = 1
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
      OnClick = Label12Click
    end
    object Label13: TLabel
      Left = 7
      Top = 44
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
      OnClick = Label13Click
    end
    object Label15: TLabel
      Left = 145
      Top = 45
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
      OnClick = Label15Click
    end
    object Label22: TLabel
      Left = 344
      Top = 47
      Width = 56
      Height = 13
      Hint = 
        'Origem da mercadoria: '#13#10'0 - Nacional, exceto as indicadas nos c'#243 +
        'digos 3 a 5.'#13#10'1 - Estrangeira - Importa'#231#227'o direta, exceto a indi' +
        'cada no c'#243'digo 6.'#13#10'2 - Estrangeira - Adquirida no mercado intern' +
        'o, exceto a indicada '#13#10'no c'#243'digo 7.'#13#10'3 - Nacional, mercadoria ou' +
        ' bem com Conte'#250'do de Importa'#231#227'o '#13#10'superior a 40%.'#13#10'4 - Nacional,' +
        ' cuja produ'#231#227'o tenha sido feita em conformidade '#13#10'com os process' +
        'os produtivos b'#225'sicos de que tratam as legisla'#231#245'es '#13#10'citadas nos' +
        ' Ajustes.'#13#10'5 - Nacional, mercadoria ou bem com Conte'#250'do de Impor' +
        'ta'#231#227'o '#13#10'inferior ou igual a 40%.'#13#10'6 - Estrangeira - Importa'#231#227'o d' +
        'ireta, sem similar nacional, constante '#13#10'em lista da CAMEX.'#13#10'7 -' +
        ' Estrangeira - Adquirida no mercado interno, sem similar naciona' +
        'l, '#13#10'constante em lista da CAMEX.'
      Caption = 'Aliq. Cupom'
      ParentShowHint = False
      ShowHint = True
    end
    object Label42: TLabel
      Left = 4
      Top = 84
      Width = 59
      Height = 13
      Caption = 'FCP UF D.%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label43: TLabel
      Left = 87
      Top = 84
      Width = 65
      Height = 13
      Caption = 'ICMS UF D.%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 159
      Top = 84
      Width = 61
      Height = 13
      Caption = 'ICMS Inter %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 247
      Top = 84
      Width = 80
      Height = 13
      Caption = 'ICMS Inter Part%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 341
      Top = 84
      Width = 81
      Height = 13
      Caption = 'C'#243'd. Enquad. IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 439
      Top = 84
      Width = 67
      Height = 13
      Caption = 'Red. Base Pis'
      FocusControl = DBEdit26
    end
    object Label25: TLabel
      Left = 525
      Top = 84
      Width = 82
      Height = 13
      Caption = 'Red. Base Cofins'
      FocusControl = DBEdit26
    end
    object Label27: TLabel
      Left = 615
      Top = 84
      Width = 66
      Height = 13
      Caption = 'Red. Base IPI'
      FocusControl = DBEdit26
    end
    object Label29: TLabel
      Left = 694
      Top = 84
      Width = 60
      Height = 13
      Caption = 'Percentual II'
      FocusControl = DBEdit26
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 17
      Width = 83
      Height = 21
      DataField = 'NCM'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 99
      Top = 17
      Width = 57
      Height = 21
      DataField = 'CFOP'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 163
      Top = 17
      Width = 30
      Height = 21
      DataField = 'UF'
      DataSource = DtSrc
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 200
      Top = 17
      Width = 65
      Height = 21
      DataField = 'ICMS_SUBST'
      DataSource = DtSrc
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 271
      Top = 17
      Width = 70
      Height = 21
      DataField = 'ICMS_SUBST_IC'
      DataSource = DtSrc
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 347
      Top = 17
      Width = 70
      Height = 21
      DataField = 'ICMS_SUBST_IND'
      DataSource = DtSrc
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 422
      Top = 17
      Width = 60
      Height = 21
      DataField = 'ICMS'
      DataSource = DtSrc
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 487
      Top = 17
      Width = 78
      Height = 21
      DataField = 'ICMS_BASE'
      DataSource = DtSrc
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 571
      Top = 17
      Width = 60
      Height = 21
      DataField = 'CST'
      DataSource = DtSrc
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 773
      Top = 17
      Width = 60
      Height = 21
      DataField = 'IPI'
      DataSource = DtSrc
      TabOrder = 11
    end
    object DBEdit11: TDBEdit
      Left = 636
      Top = 17
      Width = 60
      Height = 21
      DataField = 'CSOSN'
      DataSource = DtSrc
      TabOrder = 9
    end
    object DBEdit12: TDBEdit
      Left = 704
      Top = 17
      Width = 65
      Height = 21
      DataField = 'CSTIPI'
      DataSource = DtSrc
      TabOrder = 10
    end
    object DBEdit13: TDBEdit
      Left = 87
      Top = 61
      Width = 49
      Height = 21
      DataField = 'COFINS'
      DataSource = DtSrc
      TabOrder = 13
    end
    object DBEdit14: TDBEdit
      Left = 4
      Top = 61
      Width = 77
      Height = 21
      DataField = 'CSTCOFINS'
      DataSource = DtSrc
      TabOrder = 12
    end
    object DBEdit15: TDBEdit
      Left = 210
      Top = 61
      Width = 60
      Height = 21
      DataField = 'PIS'
      DataSource = DtSrc
      TabOrder = 15
    end
    object DBEdit16: TDBEdit
      Left = 140
      Top = 61
      Width = 65
      Height = 21
      DataField = 'CSTPIS'
      DataSource = DtSrc
      TabOrder = 14
    end
    object BitBtn1: TBitBtn
      Left = 572
      Top = 41
      Width = 107
      Height = 42
      Hint = 'Copiar configura'#231#227'o de outro Produto'
      Caption = 'Copiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 19
      Visible = False
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0ADD2B02A71
        32196E2313741D0F761B11751B15741D1A6F242C7233ACD4B1C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C049854F1773200F77180C77
        170E791C0A781A08781A08781A0A78180C78180C77160D781718731E558E5BC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D2F1D41871211078190D781808781A118A
        2F22A2492CB65E2AB55D2AB65B37BD6324A2491389300A781A0D78180F77181F
        7128C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C028762F12771B0C771A1B91403EC3732DBE691EC0
        6117C16113C15D0FC05914C15F19BF6021C26626BF6938C1704DCA7B20903C0D
        771A11761A28772EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C01D6E2512771B10781B52C87D40C17635C06F2BBF6B1CBF
        631EBB601BB15819A9561FAF5C23B05F22B46228BF6937C17443C1794DC27D54
        C27A0E781B14771B1F6E25C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C028762F0F77180F771A36A25644BF7B3BC17533C06F28BF6920BF
        63429F689AC4AB97BAA696B9A593BAA54F9E722ABD6836C17040C1764AC17D4F
        BE80379E5310781B10761728742DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C6E6C713761A0C751A4FB56E57C28448C07F40C17636C07229BC6A23BF
        684F956CE9F3EDE0DFE1D7D6D8BBC2BF5E91752DBD6A38C07240C0784AC07F50
        BE8364C88E52B3700F771A13751BCDECCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C01C70220C741C6DCD8D62C98C58C2874CC07D42C07839C07430C06D27BD
        694F956DF1FBF5F8F8F8F0F1EFCCD1CF62927635BF713BC17541BF774AC17D51
        BF8460C68C66C78F6CCD8D0C761D1A7022C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        629B6811781724853B69C88F62C88E5CC68B4EC08043C07A3CC27635C06F2EC0
        6E569672F2FCF6F8F8F8F0F0F0CED1CF63907539BF733FBF7744C07A4CC07D53
        BF8460C68C69C7906DC89023863E0F7718649868C0C0C0C0C0C0C0C0C0C0C0C0
        1973200F771875CF946BC79267C88F5FC68C4DC18047C07C40C0783AC17535BF
        71589573F1FBF5F8F8F8F0F0F0CCD1CF6390753FBF7842BF7948C17D4EC08057
        C18660C78A67C88F6DC89173CD910F771818721FC0C0C0C0C0C0C0C0C0B4DAB6
        11771810761E73CB966BC89167C88F5FC78A4EC08048C07F43C07840C0783BC0
        775A9674F2F9F4F8F8F8F0F0F0CDD0CE66917642BF7A46C17D49C07C4EC08055
        C18660C88965C8906CC99272CB930C741C127819A7D2ADC0C0C0C0C0C0307836
        0F771825853875CA986DC79264B48556A57A4FA2754DA47249A36E47A16C48A1
        6F58826BF5FAF8F9F9F9EFEFEFCDD2D06C89794B9F6F4DA3734EA37653A27655
        A2765AA47A62AF836CC6916FC791278C3E0F77182C7636C0C0C0C0C0C01F7926
        0E761737994D70C9976AC79080AD93BBCFC3B2C6BAAEBEB7ACBFB6ADC0B7B3C7
        BBCED5D0F1F1F1F8F8F8F7F7F7E0E0E0C4CAC5B3C4B9AFC0B7AFC0B7AFBFB8B0
        BEB8ACBDB48CB09F6DC49268C68F4FB4690F771A177020C0C0C0C0C0C012731C
        0F771853B5696DC7926CC69193B19EEEF0F0E0E0E0E3E1E1E2DFE1E2DFE1E0E0
        E0EAE7E9F8F8F8F8F8F8FAF8F8F0F0F0EAE7E9E0E0E0E0E0E0E2DFE1E2DFE1E2
        DFE1C8C9C795AC9E6CC69169C79065C57F12791E13751BC0C0C0C0C0C00F761B
        0F771A51B5696AC8926AC8928DB39DF4F9F7F8F8F8F8F8F8F8F8F8F8F8F8F9F9
        F9F9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F8F9F7F8F9F7F8F8F8F8F8F8F9
        F9F9D0D0D094AE9E6DC79267C89065C48112782011751BC0C0C0C0C0C012761E
        0E76174CB26462C98C61C68F8CB39EF4F9F7F8F8F8F8F8F8F7F7F7F8F8F8F7F7
        F7F8F8F8F8F8F8F9F9F9F8F7F9F8F8F8F7F7F7F8F9F7F8F8F8F8F8F8FAF8F8F6
        F8F8E6E8E89BB5A764C58D61C88E62C57F12782011751BC0C0C0C0C0C0187622
        0F771A47AD6060C8895FC68C8BBEA2E8FEF2ECFDF2ECFDF4ECFDF4EDFCF4EDFC
        F4F4F9F7F8F8F8F8F8F8FAF8F8F8F8F8F4F9F7F0FDF5EEFDF5EDFCF4EDFCF4EC
        FDF4ECFDF4BAE1CC68C68F61C98861C47E11771F13741DC0C0C0C0C0C0277930
        0F7718298F3E5AC18859C0865DBB855BAB7C64B18566B38767B1876EB38E76B2
        90738D7DF6F9F7F8F8F8F1F1F1DEE0E08A9E927DB39574B28E74B18F70B38E67
        B08865B2865EB58362C68A61C98A47AD600F771A196F21C0C0C0C0C0C04E8D55
        0F78171078215AC08657C18656BF8656BF8662C98C68C9906AC79074C99780C8
        9D7A9787F4F9F7F8F9F7F1F1F1D0D1CF7C928688C8A47FCA9E77C79873C89468
        C68F65C8905FC78A60C8895BC1871F86350E7617347A3BC0C0C0C0C0C0C0C0C0
        13741D0D771A61CB8957C18657C18659C18465C98F6AC79077C8997FC99F8CCB
        A4819A8CF6F8F8F8F8F8EFEFEFD0D0D07F91848FC8A787C8A182CA9F77C79872
        CA9565C89061C88B60C88964C98B0D761B0F7718B4DCB9C0C0C0C0C0C0C0C0C0
        2B743010791857BC7854BF8157C0875AC08667C79172CA957AC79B87C8A193C7
        A985988FF6F8F8F9F9F9F0F0F0CED1CF83938893C7A98AC7A384C7A07CC79B74
        C89869C88F62C88E62C78967CB890E76191C7022C0C0C0C0C0C0C0C0C0C0C0C0
        B7DDB913751B0C741F63CB8A59C0875BC18769C79076CB9982CAA08BC9A59BCA
        B0899A91F6F8F8F9F9F9F0F0F0CED0D083928A99C9AD90C9A887C8A17FCA9E74
        C89869C88F62C78F63CA8D167C2B12771B71A478C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C03075380D78182D974A5CC38663C78D6CC79078C99A83CBA18ECBA7A0CA
        B1899890F7F9F9F9F9F9F9F9F9D6D8D88A99919CC9AE8FC8A789C8A17FC99F76
        CA9A69C88F63C98F52BB720D771A1E6F26C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C018721F0E7617137B2862CC876CCA9178C99A83C69F8FC8A79DC7
        B096AA9EE4E9E7E4E9E7E5EAE8E3EAE7A6B9B09CC8B18EC7A88AC9A27FCA9E73
        CA9862C98C2C964911771815741DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C08EC69316741D0E771608751F63C88A70CA9580CAA08CC9A59EC9
        AEA8C6B3AFC6B8B2C6B9ADC7B9A8C5B5A0C6B099C8AE8DC9A782C89F76CB9964
        C789137E2F0C771713761A509257C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C06CA67016741D0E7617258E3F62CB8860BE877BC69A97CC
        AB9DC8ADA4C9B5A8C8B5A1C7B19EC9AE98C9AD8ECAA87EC89E63BD8862C9863A
        A2550E761713751B2D7533C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C019711E1078190C761D2A93485FC88561BE
        876BBA8E7CC29D85C5A281C49D78C2986ABB8E62BE8962CA893FA7600C741F0F
        771A16731E5A9961C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C049854F18721F1178170F771A0D75
        1D0F77221C8633278F3C288F3A278F3A147C270C771B0D771A0F781712741A34
        7A3BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEFBE2639B681C71211278
        191079181078191079181079181078191079181177181773223E8045C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A3CB
        A86CA3723B80432D77352C79352E78365F996388B58EC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 407
      Top = 59
      Width = 162
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
      TabOrder = 18
      OnKeyPress = FormKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 279
      Top = 61
      Width = 60
      Height = 21
      DataField = 'ORIGEM'
      DataSource = DtSrc
      TabOrder = 16
    end
    object dxButton11: TdxButton
      Left = 778
      Top = 42
      Width = 56
      Height = 42
      Hint = 'Chat-Suporte'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      Version = '1.0.2e'
      OnClick = dxButton11Click
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000C0B
        0B0029272700FEFBFB00F6F4F400FEFDFD00F2F1F100EAE9E900E4DDDB00FDFA
        F900FCF7F500F4EFED00CB957C00E8C8B900C4AEA400F5E0D700EDDCD400D7C7
        C000F4E5DE00F6E7E000E8DBD500DAD1CD00FAF1ED00BC562300CA5F2900BC58
        2700CA602B00C05C2900BD5A2800CB602C00CD632D00CB622D00C35E2B00BF5C
        2B00BB5B2A00CD642F00CB622E00BE5D2C00CB643000CA633000C05E2D00CD65
        3100C7633000C3602F00D0673300CC653200CC663300CB663300CA653300C663
        3200C5633200C2613100CE683500CC673400CA653400CA663400C8653300C764
        3300CD683500C9653400C8663400D56D3800D26B3700CE693600CD683600D06B
        3800CE6A3700CB683600BE613300D26C3900CF6B3900C7673700D36E3B00D26D
        3B00D16C3A00D26E3C00C96A3A00C6693900C2663800DF764100D8723F00D571
        3E00CF6E3E00E0774400D8744100DA764400E47C4800DF794600DC784600CC71
        4300E27E4C00C46E4300E8835000F0895500EC865300D2774A00F6915D00C674
        4B00C0704800FA946100D37D5200EC926500C47B5600DB8B6300D4876100BE7A
        5800C8815E00F19C7300DB916C00CC876600E6A17E00CD907100DFA08100D098
        7C00E6AA8C00BB8C7500DDA68B00DCA88F00D1A18900E7B49A00D5AB9600C69F
        8C00E6BBA600DCB8A600C5AA9D00FADBCB00201C1A00544A4500352F2C005C52
        4D00F8DFD300DCC7BD00D1BDB300EEDBD200F4E2D900EADAD200C6BAB400F7E9
        E200F6E8E100F8ECE600EDE3DE00F8EEE900F5EDE900FCF6F300FEFAF800EBE7
        E500ECEAE900C7C5C400FFA36F00FEA37300FEAC7D00FBC9AE00E9C1AC008173
        6B008B7C7400B9A69C00A2928900D4C0B500DFCABF00B6A59C00E9D5CA00E7D3
        C800F2DDD200F0DCD100EFDBD000F2DED300F1DDD200ECD9CE00F1DED300BBAC
        A400F3E0D600F2DFD500F3E2D900F5E5DC00F5E6DE00F3E5DD00E5D8D100F7EA
        E300F6EBE500F4E9E300C9C2BE00F7B38900FFE3D200B2A1970083777000E1CD
        C100C9B7AC00746A6400F5E4DA00605B5800F7ECE500FEF6F100F6F1EE00FFB5
        8100BCB9B700FFBB8700FCF8F500FEBF8D00FFC99700FDF5EE00FFEAD6000000
        0000F3F2F100FFD7AB00FFD19C00FFE9C700FFF6E800FFE8B600FFF6C300FFFB
        D100FFFDE500FFFEED00FFFFFD00F6F6F500F4F4F300EDEDEC00FCFFFF00EFF2
        F200EFF1F100F6F7F700F4F5F500F7FBFC00F6FAFB00F0F4F500E4EAEC00FAFD
        FE00E8EBEC00EEF3F500F5FCFF00F5F9FB00F1F5F700F6F8F900ECEEEF00F1F6
        F900EDF0F200DFE2E400F7F9FB00EDEFF100F5F6F700F3F4F500F2F3F400F1F2
        F300F0F1F200F9F9FA00FFFFFF00F1F1F100777777006C6C6C00555555004444
        44003C3C3C0036363600161616000202020000000000FFFFFF00B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B80201FEFEFEFEFEFDFCFAB4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B8B8BAA1A3A3A3A3A3A49E9F02FD02B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4BBA0AAB30BD6EFF1F1F1068EAFA4BA80FDF7B4B4B4B4B4B4B4B4B4B4B4B4B4
        9DABC0EFF1E8EBEBE2EDEDEAEAD9CAB3A49AFEFAB4B4B4B4B4B4B4B4B4B4B4A1
        B2DCF2EA080E736966666F78B907EAF204AC9BFEFAB4B4B4B4B4B4B4B4B4A7C0
        EFDF917862221C446A611719446D83EADADC129BFEF7B4B4B4B4B4B4B49DC0DC
        DFB06A1C212B4E7CE88E68202819447607DAEEAC9AFDB4B4B4B4B4B49D8ADBE9
        B95B1C3331246993F3F40D2A3132281C6F92F1DBA67FFCB4B4B4B4B4A8F3DC14
        5B1B32382F2962C2F4E4752430382A331971EDF08E8301B4B4B4B49D8DE7F56D
        1B393B35352E266D0D7543262E2E30312B257BE6EEAB81FCB4B4B4A4F3DE982B
        31373535352E2D1E1A18242E2E2E2F3039286191DC8E83FDB4B49DADF3D66D20
        37403A352E2D370C989864242E2E35353632217BE5D5A47EF6B4A58DE110473C
        40403A2E2E2D4788F4F46C182E2E35352F381B6DF5ECAB99F9B4A6C4D87A2A40
        41342E2E2E2D380ED8F472182E2E2E353A352B618CECAEB7FBB4A305F4753046
        41342E2E2E2E2373E0F416671A2E2E353A40384D87DDB3A9FBB4A3D4F470344B
        4A3F2E2E2E2E294D9BE9F416671A2E353F3F374CA7E1B20EFBB4A305F4724551
        483F2E2E2E2E2E234D0EDEF416681F353F46404C85D8BEA9FAB4A303F4775055
        5141352E2E2E2E2E234D84D8F40F52294149425912F4B1A9F8B4A28FF47D575A
        5548341E1D1A262E2E1E6191F4D46C2349513F688FF4AD9CF6B4AA8BF490655C
        5A50526F757A641F2E2E27B9F4F4772C51543E72F4D4A381B4B41586F4F4975D
        5D565FB4E9F49818241D598CF4E1743D58585582F409A7F9B4B4B4A609F4BF95
        63605679E6F405775F640DD8F4D76C4F5A5372F4F48AB7B4B4B4B49D13F4F4B6
        9494636793E1F4F48FC4F4F4DD9E5C5E5C65C7F403A4BDB4B4B4B4B4A609F4F4
        CDC1C1946E15E3E5DDDDDDE9876B606363B6F4F4899BB4B4B4B4B4B49DAAF4F4
        F4C8CCC6C3B5988311119E9896949496C8F4F40AA0C2B4B4B4B4B4B4B49D13F4
        F4F4D3CDCFCBCCC6C5C5C5C3C3C5CB90F4F405A3A9B4B4B4B4B4B4B4B4B49D13
        F4F4F4F4D3D2D1D0CFCFCFCFCDCEF4F4F409A388B4B4B4B4B4B4B4B4B4B4B49D
        AA0AF4F4F4F4F4D4D4D4D4D4F4F4F4F48DA49DB4B4B4B4B4B4B4B4B4B4B4B4B4
        9DA6AEC4F4F4F4F4F4F4F4F4F40316ABA1B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B49DA5AA8A160903030A8DADA4A7B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B415BCABA6A6A6A8AA9DB4B4B4B4B4B4B4B4B4B4B4B4B4}
      TabOrder = 20
    end
    object DBEdit24: TDBEdit
      Left = 342
      Top = 61
      Width = 60
      Height = 21
      Hint = 
        'II (ii) para ISENTO'#13#10'FF  Produto com Substitui'#231#227'o Tributaria'#13#10'Pr' +
        'odutos Tributados informar a Aliquota :  1800  0700  1200'
      DataField = 'ALIQ_CUPOM'
      DataSource = DtSrc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object DBEdit41: TDBEdit
      Left = 2
      Top = 98
      Width = 81
      Height = 24
      Hint = 
        'Percentual do ICMS relativo ao Fundo de Combate '#224' Pobreza (FCP) ' +
        'na UF de destino'
      DataField = 'PFCPUFDEST'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
    object DBEdit42: TDBEdit
      Left = 86
      Top = 98
      Width = 70
      Height = 24
      Hint = 
        'Al'#237'quota interna da UF de destino'#13#10'Al'#237'quota adotada nas opera'#231#245'e' +
        's internas na UF de destino para o'#13#10'produto / mercadoria.'
      DataField = 'PICMSUFDEST'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
    end
    object DBEdit35: TDBEdit
      Left = 159
      Top = 98
      Width = 81
      Height = 24
      Hint = 
        'Al'#237'quota interestadual das UF envolvidas:'#13#10'- 4% al'#237'quota interes' +
        'tadual para produtos importados;'#13#10'- 7% para os Estados de origem' +
        ' do Sul e Sudeste (exceto ES),'#13#10'destinado para os Estados do Nor' +
        'te, Nordeste, Centro-'#13#10'Oeste e Esp'#237'rito Santo;'#13#10'- 12% para os de' +
        'mais casos.'
      DataField = 'PICMSINTER'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
    end
    object DBEdit36: TDBEdit
      Left = 244
      Top = 98
      Width = 92
      Height = 24
      Hint = 
        'Percentual de ICMS Interestadual para a UF de destino:'#13#10'- 40% em' +
        ' 2016;'#13#10'- 60% em 2017;'#13#10'- 80% em 2018;'#13#10'- 100% a partir de 2019.'
      DataField = 'PICMSINTERPART'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
    end
    object DBEdit25: TDBEdit
      Left = 341
      Top = 98
      Width = 88
      Height = 24
      Hint = 'C'#243'digo de Enquadramento Legal do IPI'
      DataField = 'CST_IPI_CENQ'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 25
    end
    object DBEdit26: TDBEdit
      Left = 437
      Top = 98
      Width = 78
      Height = 24
      DataField = 'REDBASEPIS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object DBEdit27: TDBEdit
      Left = 525
      Top = 98
      Width = 78
      Height = 24
      DataField = 'REDBASECOFINS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object DBEdit28: TDBEdit
      Left = 613
      Top = 98
      Width = 78
      Height = 24
      DataField = 'REDBASEIPI'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 28
    end
    object DBEdit29: TDBEdit
      Left = 692
      Top = 98
      Width = 78
      Height = 24
      DataField = 'II_PERCENTUAL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
    end
  end
  object panelAjuda: TPanel [6]
    Left = 160
    Top = 200
    Width = 602
    Height = 396
    TabOrder = 6
    Visible = False
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 600
      Height = 394
      Align = alClient
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
  inherited DtSrc: TDataSource
    DataSet = cdsClassFisc
  end
  object sdsClassFisc: TSQLDataSet
    CommandText = 
      'select cfn.* from CLASSIFICACAOFISCALNCM cfn'#13#10'where cfn.NCM = :p' +
      'NCM order by ncm, cfop, uf, codfiscal'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pNCM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 8
    object sdsClassFiscNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 8
    end
    object sdsClassFiscCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object sdsClassFiscUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsClassFiscCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsClassFiscICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object sdsClassFiscICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object sdsClassFiscICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object sdsClassFiscICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsClassFiscICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object sdsClassFiscCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sdsClassFiscIPI: TFloatField
      FieldName = 'IPI'
    end
    object sdsClassFiscCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sdsClassFiscCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsClassFiscCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsClassFiscCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsClassFiscPIS: TFloatField
      FieldName = 'PIS'
    end
    object sdsClassFiscCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object sdsClassFiscORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object sdsClassFiscDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object sdsClassFiscDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object sdsClassFiscDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object sdsClassFiscDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object sdsClassFiscDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object sdsClassFiscDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object sdsClassFiscALIQ_CUPOM: TStringField
      FieldName = 'ALIQ_CUPOM'
      FixedChar = True
      Size = 4
    end
    object sdsClassFiscVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
    end
    object sdsClassFiscPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
    end
    object sdsClassFiscPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
    end
    object sdsClassFiscPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
    end
    object sdsClassFiscPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
    end
    object sdsClassFiscVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
    end
    object sdsClassFiscVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
    end
    object sdsClassFiscVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
    end
    object sdsClassFiscCST_IPI_CENQ: TStringField
      FieldName = 'CST_IPI_CENQ'
      FixedChar = True
      Size = 3
    end
    object sdsClassFiscREDBASEIPI: TFloatField
      FieldName = 'REDBASEIPI'
    end
    object sdsClassFiscREDBASEPIS: TFloatField
      FieldName = 'REDBASEPIS'
    end
    object sdsClassFiscREDBASECOFINS: TFloatField
      FieldName = 'REDBASECOFINS'
    end
    object sdsClassFiscII_PERCENTUAL: TFloatField
      FieldName = 'II_PERCENTUAL'
    end
  end
  object cdsClassFisc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pNCM'
        ParamType = ptInput
      end>
    ProviderName = 'dspClassFisc'
    OnNewRecord = cdsClassFiscNewRecord
    Left = 512
    Top = 8
    object cdsClassFiscNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 8
    end
    object cdsClassFiscCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object cdsClassFiscUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsClassFiscCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsClassFiscICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsClassFiscICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object cdsClassFiscICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object cdsClassFiscICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsClassFiscICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object cdsClassFiscCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cdsClassFiscIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsClassFiscCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsClassFiscCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsClassFiscCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsClassFiscCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsClassFiscPIS: TFloatField
      FieldName = 'PIS'
    end
    object cdsClassFiscCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object cdsClassFiscORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object cdsClassFiscDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object cdsClassFiscDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object cdsClassFiscDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object cdsClassFiscDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object cdsClassFiscDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object cdsClassFiscDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object cdsClassFiscALIQ_CUPOM: TStringField
      FieldName = 'ALIQ_CUPOM'
      FixedChar = True
      Size = 4
    end
    object cdsClassFiscVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
    end
    object cdsClassFiscPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
    end
    object cdsClassFiscPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
    end
    object cdsClassFiscPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
    end
    object cdsClassFiscPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
    end
    object cdsClassFiscVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
    end
    object cdsClassFiscVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
    end
    object cdsClassFiscVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
    end
    object cdsClassFiscCST_IPI_CENQ: TStringField
      FieldName = 'CST_IPI_CENQ'
      FixedChar = True
      Size = 3
    end
    object cdsClassFiscREDBASEIPI: TFloatField
      FieldName = 'REDBASEIPI'
    end
    object cdsClassFiscREDBASEPIS: TFloatField
      FieldName = 'REDBASEPIS'
    end
    object cdsClassFiscREDBASECOFINS: TFloatField
      FieldName = 'REDBASECOFINS'
    end
    object cdsClassFiscII_PERCENTUAL: TFloatField
      FieldName = 'II_PERCENTUAL'
    end
  end
  object dspClassFisc: TDataSetProvider
    DataSet = sdsClassFisc
    Left = 480
    Top = 8
  end
  object sdsNCMCopia: TSQLDataSet
    CommandText = 'select * from CLASSIFICACAOFISCALNCM'#13#10'where NCM = :ncm'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PROD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 704
    Top = 8
    object sdsNCMCopiaNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 8
    end
    object sdsNCMCopiaCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object sdsNCMCopiaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsNCMCopiaCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsNCMCopiaICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object sdsNCMCopiaICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object sdsNCMCopiaICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object sdsNCMCopiaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsNCMCopiaICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object sdsNCMCopiaCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sdsNCMCopiaIPI: TFloatField
      FieldName = 'IPI'
    end
    object sdsNCMCopiaCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sdsNCMCopiaCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsNCMCopiaCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsNCMCopiaCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsNCMCopiaPIS: TFloatField
      FieldName = 'PIS'
    end
    object sdsNCMCopiaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object sdsNCMCopiaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Required = True
    end
    object sdsNCMCopiaDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object sdsNCMCopiaDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object sdsNCMCopiaDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object sdsNCMCopiaDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object sdsNCMCopiaDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object sdsNCMCopiaDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object sdsNCMCopiaALIQ_CUPOM: TStringField
      FieldName = 'ALIQ_CUPOM'
      FixedChar = True
      Size = 4
    end
  end
  object dspNCMCopia: TDataSetProvider
    DataSet = sdsNCMCopia
    Options = [poAllowCommandText]
    Left = 736
    Top = 8
  end
  object cdsNCMCopia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PROD'
        ParamType = ptInput
      end>
    ProviderName = 'dspNCMCopia'
    Left = 768
    Top = 8
    object cdsNCMCopiaNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 8
    end
    object cdsNCMCopiaCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object cdsNCMCopiaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsNCMCopiaCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsNCMCopiaICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsNCMCopiaICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object cdsNCMCopiaICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object cdsNCMCopiaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsNCMCopiaICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object cdsNCMCopiaCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cdsNCMCopiaIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsNCMCopiaCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsNCMCopiaCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsNCMCopiaCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsNCMCopiaCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsNCMCopiaPIS: TFloatField
      FieldName = 'PIS'
    end
    object cdsNCMCopiaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object cdsNCMCopiaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Required = True
    end
    object cdsNCMCopiaDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object cdsNCMCopiaDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object cdsNCMCopiaDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object cdsNCMCopiaDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object cdsNCMCopiaDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object cdsNCMCopiaDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object cdsNCMCopiaALIQ_CUPOM: TStringField
      FieldName = 'ALIQ_CUPOM'
      FixedChar = True
      Size = 4
    end
  end
  object sdsTFiscal: TSQLDataSet
    CommandText = 'select * from TIPO_FISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 284
    Top = 15
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
    Left = 322
    Top = 15
  end
  object cdsTFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTFiscal'
    Left = 353
    Top = 15
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
    Left = 391
    Top = 14
  end
  object sqlTestaSeExiste: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PROD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFOP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(COD_PROD) FROM CLASSIFICACAOFISCALPRODUTO '
      'WHERE COD_PROD = :PROD'
      '     AND UF = :UF'
      '     AND CFOP = :CFOP')
    SQLConnection = DM.sqlsisAdimin
    Left = 752
    Top = 96
    object sqlTestaSeExisteCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
end
