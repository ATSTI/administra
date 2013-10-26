object fListaCliEscola: TfListaCliEscola
  Left = 3
  Top = 2
  Width = 799
  Height = 564
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Lista de Alunos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 3
    Top = 55
    Width = 19
    Height = 16
    Caption = 'RA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 106
    Top = 54
    Width = 204
    Height = 16
    Caption = 'Nome (n'#227'o use ACENTOS ou "'#199'")'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 542
    Top = 54
    Width = 39
    Height = 16
    Caption = 'Turma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 95
    Width = 781
    Height = 428
    Color = clCream
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Color = 16776176
        Expanded = False
        FieldName = 'RA'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Nome Aluno'
        Width = 437
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANOLETIVO'
        Title.Caption = 'Ano Letivo'
        Visible = True
      end>
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 50
    Align = alTop
    PopupMenu = PopupMenu1
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object BitBtn8: TSpeedButton
      Left = 434
      Top = 3
      Width = 68
      Height = 45
      Caption = 'F2-Cadastro'
      Flat = True
      Glyph.Data = {
        42050000424D4205000000000000360000002800000016000000130000000100
        1800000000000C050000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7B7B7BCAFAE9A7E
        7B9F756F288686978E8EC0B9B9BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB4B4B4BFACAB9E8785DC
        756EF5A39FA3BFBA4DB5B5914844BC837FC0B6B6BFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3B3B3BBA6A4AE8D8BD48582
        B3B3AEF8AAA89EDCE167E8EBBEBCBFB76865974B47B9827FC0B5B5BFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFB4B4B4B5A09EBA908D8D9B97DDA9
        A7A8D4D86BE7EAE0DEE36FE6EA8BE0E477E4E8AEACAB974B4786433FB9817EC0
        B6B5BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFB4B4B4AC9695939F9BBFB0AFAA
        D2D4CDE3E790E3E7DEE3E7E3DDE1A9A8AB4FA8B97F8EBC75CECF7F7F7B773B39
        AA544FAB918FB9B9B9BFBFBF0000BFBFBFBFBFBFBFBFBFB6B6B68BB8B77FD9DA
        7BE3E7B9E8EBE9E0E4BCA7AAA1B0B1B19C9F9E9E9E5F5F7F4B4DA2C2E3E7B3A2
        A08E4643AA544F937977949494BBBBBB0000BFBFBFBFBFBFBFBFBFBFBFBFB7C9
        CBD7E3E7D0E1E5C4F1F4F3D5DB4B8B8C27CFCF33D4D4A5A5B4404995AEBCD9E8
        E1E5E7CBCEC8787690778DA0A2ABABABABBDBDBD0000BFBFBFBFBFBFBFBFBFBF
        BFBFC4BFC0E6DFE0FFF7F8F8DDE2B19F576C811E9CF4EB033E9922748A3C3495
        B5DDE286E5E9E7E3E7D3A09DB69BA1B9BCBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFDFC6CAFFEAEDB3AF668381597F7F12218D8200707F1269
        6B77212D9BAFAFC2FCFCE7E3E7E0DFE1CD9A96C2ABAABFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBDBCBC99999980807576761E1616006503030C
        767F323F9BDBDCDBE5BBB8D7E8EB82E3E793E1E5E08F8DC5A5A2BFBDBDBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFB2B2B29090907F7F737171231A1A00000000
        121212989293DDEFF2FDD0D6A5DFE461E3E585DDE089F9FAECDCE1D9817CC1B0
        AFBFBFBF0000BFBFBFBFBFBFBFBFBFAFAFAF6D6262694F4D7469311F1F000000
        001A1A1A948789FFD5DBFFDCE1E6FFFF6FF6FB3FBCCA95B5C3BADBE5C9F0F3D8
        9F9CD0B6B7C0BFBF0000BFBFBFBFBFBFAEAEAE616161715440D983675C302E00
        0000202020959595F7D6DAF7FFFFB2FBFBB6E5EA36C4E452A5D54FA8D73BBEE1
        91E4EAE1CDD1B2D7DBD0C3C60000BFBFBFB1B1B15E5E5E4F4F3C6767296B4E28
        3B2221242424979797F2F2F2FFE8EBDDFFFF6CF8F8A1D5DD44B5DD49AFDA45B4
        DC47B1DB95D3DDD5C8CB81E0E3D8C6CA0000B6B6B65555555252416868272222
        00000000272727818181CECECEF9F9F9E7E7EAD1FFFFD1FFFF63FFFF7CEEF788
        B1CB85ACC680EAF5A8E8E8D7C9CCDDC3C6C1BFBF0000B5B5B55757496B6B231F
        1F00000000272727828282B6B6B6BFBFBFD2D2D2EAFBFBE0FFFF69F8FAB2E4E8
        B7FFFF72D9D97AD3D393E7E770E1E1A1C9C9BFBFBFBFBFBF0000B9B9B16F6F1D
        1A1A00000000252525848484B7B7B7BFBFBFBFBFBFBFBFBFF9F9F9F8FBFCC3D4
        DAF3C9CFC8E0E0BAE4E45FDFDF6FD9D99BCACABAE6E6C0C6C6BFBFBF0000BDBD
        BC949481000000222222868686B9B9B9BFBFBFBFBFBFBFBFBFBFBFBFC9C9C9FA
        D0D5CBC0C2C8C0C1D4C5C7E4CACDC7C8CBC5C6C8BFBFBFC1C8C8BFC0C0BFBFBF
        0000BFBFBFBCBCBCADADADB1B1B1BBBBBBBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFC4BFC0BFBFBFBFBFBFC0BFBFC2BFBFC2BFBFC1BFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000}
      Layout = blGlyphTop
      PopupMenu = PopupMenu1
      OnClick = BitBtn8Click
    end
    object Bevel4: TBevel
      Left = 429
      Top = 3
      Width = 9
      Height = 46
      Shape = bsLeftLine
      Style = bsRaised
    end
    object Bevel1: TBevel
      Left = 505
      Top = 3
      Width = 9
      Height = 46
      Shape = bsLeftLine
      Style = bsRaised
    end
    object BitBtn4: TSpeedButton
      Left = 509
      Top = 3
      Width = 68
      Height = 45
      Caption = 'Relat'#243'rios'
      Flat = True
      Glyph.Data = {
        0E030000424D0E030000000000003600000028000000110000000E0000000100
        180000000000D8020000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBF0000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000FFFF80FFFF80FFFF80
        FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80000000FFFF80000000BFBFBFBFBF
        BF00BFBFBF000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFF80000000BFBFBF00BFBFBF00000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFFFF0000FF0000FF000000FFFF00FFFF000000
        000000000000BFBFBF00BFBFBF00000000FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF8000FF8000FF8000FF00FFFF00FFFF00000000FFFF000000BFBFBF00BFBF
        BF00000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFF00FFFF00000000BFBFBF000000FFFF80FFFF80FFFF
        80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80000000FFFF8000000000
        FFFF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
        00000000000000000000FFFF80000000FFFF8000000000000000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFF80000000FFFF8000000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000000000000000000000FFFFFF000000000000000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000BFBFBFBFBFBF00}
      Layout = blGlyphTop
      PopupMenu = PopupMenu1
      OnClick = BitBtn4Click
    end
    object Bevel3: TBevel
      Left = 716
      Top = 2
      Width = 9
      Height = 46
      Shape = bsLeftLine
      Style = bsRaised
    end
    object BitBtn5: TSpeedButton
      Left = 719
      Top = 3
      Width = 68
      Height = 45
      Caption = 'F9-Fechar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      PopupMenu = PopupMenu1
      OnClick = BitBtn5Click
    end
  end
  object edCodigo: TJvDBSearchEdit
    Left = 3
    Top = 69
    Width = 101
    Height = 24
    DataSource = DataSource1
    DataField = 'RA'
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = DBGrid1KeyPress
  end
  object edNome: TJvDBSearchComboBox
    Left = 105
    Top = 69
    Width = 436
    Height = 24
    DataField = 'NOMECLIENTE'
    DataSource = DataSource1
    BevelKind = bkFlat
    ParentFlat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnKeyPress = DBGrid1KeyPress
  end
  object cbSerie: TComboBox
    Left = 542
    Top = 69
    Width = 244
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnChange = cbSerieChange
  end
  object rgSituacao: TRadioGroup
    Left = 5
    Top = 10
    Width = 420
    Height = 33
    Caption = 'Situa'#231#227'o'
    Columns = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Matriculado'
      'Tranferido'
      'Inativo'
      'Todos')
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnClick = rgSituacaoClick
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 288
    Top = 184
    object Novo1: TMenuItem
      Caption = 'Novo'
      ShortCut = 113
      OnClick = BitBtn8Click
    end
    object Cancela1: TMenuItem
      Caption = 'Cancela'
      ShortCut = 114
      OnClick = BitBtn3Click
    end
    object procurar1: TMenuItem
      Caption = 'procurar'
      ShortCut = 119
    end
    object fechar1: TMenuItem
      Caption = 'fechar'
      ShortCut = 120
      OnClick = BitBtn5Click
    end
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 137
    Top = 183
  end
  object VCLReport1: TVCLReport
    Filename = 'C:\home\sisAdmin\relatorio\rel_cliente.rep'
    AsyncExecution = False
    Title = 'Untitled'
    Left = 224
    Top = 184
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 256
    Top = 184
  end
  object ListaCliente: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, '#13#10'          cli.NOMECLIENTE, '#13#10'          ' +
      'cli.SERIE,  '#13#10'          cli.SERIELETRA,  '#13#10'          cli.RA,  '#13#10 +
      '          cli.NUMERO,'#13#10'          cli.ANOLETIVO '#13#10'from CLIENTES c' +
      'li '#13#10'where SITUACAOESCOLAR = '#39'M'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 24
    Top = 184
    object ListaClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object ListaClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object ListaClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object ListaClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object ListaClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object ListaClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ListaClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
  end
  object dsp: TDataSetProvider
    DataSet = ListaCliente
    Options = [poAllowCommandText]
    Left = 56
    Top = 184
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 88
    Top = 184
    object cdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cdsRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
  end
  object VCLReport_etiqueta: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 192
    Top = 184
  end
  object TableSeries: TSQLDataSet
    CommandText = 'select * from TABSERIES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 256
    object TableSeriesSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Required = True
      Size = 4
    end
    object TableSeriesTURNO: TStringField
      FieldName = 'TURNO'
      Size = 7
    end
    object TableSeriesTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object TableSeriesSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object TableSeriesDESC_CLASSE: TStringField
      FieldName = 'DESC_CLASSE'
      Size = 30
    end
  end
end
