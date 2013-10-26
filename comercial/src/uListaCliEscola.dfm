object fListaCliEscola: TfListaCliEscola
  Left = 3
  Top = 3
  Width = 798
  Height = 554
  BorderIcons = [biSystemMenu, biMinimize]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 56
    Width = 165
    Height = 62
    Caption = 'SITUA'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    object CBox1: TRadioButton
      Left = 14
      Top = 31
      Width = 57
      Height = 17
      Caption = 'Ativo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      TabStop = True
    end
    object CBox2: TRadioButton
      Left = 94
      Top = 31
      Width = 57
      Height = 17
      Caption = 'Inativo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 167
    Top = 56
    Width = 619
    Height = 62
    Caption = 'ALUNO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Label3: TLabel
      Left = 7
      Top = 15
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
      Left = 102
      Top = 14
      Width = 74
      Height = 16
      Caption = 'Nome Aluno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TJvDBSearchComboBox
      Left = 100
      Top = 32
      Width = 512
      Height = 24
      DataField = 'NOMECLIENTE'
      DataSource = DataSource1
      BevelKind = bkFlat
      ParentFlat = False
      ItemHeight = 16
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnKeyPress = DBGrid1KeyPress
    end
    object edCodigo: TJvDBSearchEdit
      Left = 3
      Top = 32
      Width = 93
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
      TabOrder = 1
      OnKeyPress = DBGrid1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 184
    Width = 783
    Height = 336
    Color = clCream
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColEnter = DBGrid1ColEnter
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Color = 16776176
        Expanded = False
        FieldName = 'RA'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Nome Aluno'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE1'
        Title.Caption = 'Telefone 2'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE2'
        Title.Caption = 'Telefone 3'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Width = 150
        Visible = True
      end>
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 50
    Align = alTop
    PopupMenu = PopupMenu1
    TabOrder = 3
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label9: TLabel
      Left = 8
      Top = 5
      Width = 201
      Height = 36
      Caption = 'Lista Alunos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -32
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 10
      Top = 5
      Width = 201
      Height = 36
      Caption = 'Lista Alunos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
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
    object SpeedButton4: TSpeedButton
      Left = 510
      Top = 3
      Width = 68
      Height = 45
      Caption = 'Etiq. Unica'
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
      OnClick = SpeedButton4Click
    end
    object SpeedButton2: TSpeedButton
      Left = 578
      Top = 3
      Width = 68
      Height = 45
      Caption = 'Etiq. 2 Col'
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
      OnClick = SpeedButton2Click
    end
    object BitBtn4: TSpeedButton
      Left = 646
      Top = 3
      Width = 68
      Height = 45
      Caption = 'Imprime'
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
  object GroupBox2: TGroupBox
    Left = 171
    Top = 117
    Width = 619
    Height = 62
    Caption = 'Respons'#225'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    object Label1: TLabel
      Left = 7
      Top = 15
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 102
      Top = 14
      Width = 121
      Height = 16
      Caption = 'Nome Respons'#225'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbResp: TJvDBSearchComboBox
      Left = 100
      Top = 32
      Width = 512
      Height = 24
      DataField = 'RAZAOSOCIAL'
      DataSource = DataSource1
      BevelKind = bkFlat
      ParentFlat = False
      ItemHeight = 16
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnEnter = cbRespEnter
      OnKeyPress = DBGrid1KeyPress
    end
    object edCodResp: TJvDBSearchEdit
      Left = 3
      Top = 32
      Width = 93
      Height = 24
      DataSource = DataSource1
      DataField = 'CODCLIENTE'
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBGrid1KeyPress
    end
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 248
    Top = 392
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
      OnClick = BitBtn2Click
    end
    object fechar1: TMenuItem
      Caption = 'fechar'
      ShortCut = 120
      OnClick = BitBtn5Click
    end
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 417
    Top = 327
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 432
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 336
    Top = 432
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, cli.NOMECLIENTE, '#13#10'ende.TELEFONE, ende.CI' +
      'DADE '#13#10'from CLIENTES cli left outer join ENDERECOCLIENTE ende on' +
      ' ende.CODCLIENTE=ende.CODCLIENTE '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 296
    Top = 432
    object SQLDataSet1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object SQLDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object SQLDataSet1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object SQLDataSet1CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object VCLReport1: TVCLReport
    Filename = 'C:\home\sisAdmin\relatorio\rel_cliente.rep'
    AsyncExecution = False
    Title = 'Untitled'
    Left = 248
    Top = 440
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
    Left = 488
    Top = 392
  end
  object ListaCliente: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, '#13#10'          cli.NOMECLIENTE, '#13#10'          ' +
      'cli.RAZAOSOCIAL, '#13#10'          cli.SEGMENTO,'#13#10'          cli.CODUSU' +
      'ARIO,'#13#10'          cli.STATUS, '#13#10'          cli.CONTATO, cli.DATANA' +
      'SC, cli.CNPJ, cli.INSCESTADUAL, '#13#10'          (CASE when ende.DDD ' +
      'is null then  ende.TELEFONE ELSE'#13#10'          '#39'('#39' || ende.DDD || '#39 +
      ')'#39' || ende.TELEFONE end) as TELEFONE, '#13#10'          (CASE when end' +
      'e.DDD1 is null then  ende.TELEFONE1 ELSE'#13#10'          '#39'('#39' || ende.' +
      'DDD1 || '#39')'#39' || ende.TELEFONE1 END ) as TELEFONE1 , '#13#10'          (' +
      'CASE when ende.DDD2 is null then  ende.TELEFONE2 ELSE'#13#10'         ' +
      ' '#39'('#39' || ende.DDD2 || '#39')'#39' || ende.TELEFONE2 end) as TELEFONE2 , '#13 +
      #10'          (CASE when ende.DDD3 is null then  ende.FAX ELSE'#13#10'   ' +
      '       '#39'('#39' || ende.DDD3 || '#39')'#39' || ende.FAX end) as FAX,         ' +
      '               '#13#10'          ende.CIDADE,'#13#10'          ende.UF,     ' +
      '         '#13#10'          cli.CODBANCO, '#13#10'          cli.PRAZORECEBIME' +
      'NTO, '#13#10'          cli.OBS,  '#13#10'          cli.SERIE,  '#13#10'          c' +
      'li.SERIELETRA,  '#13#10'          cli.RA,  '#13#10'          cli.CURSO,  '#13#10' ' +
      '         rep.NOME_REPRCLI,'#13#10'          usu.NOMEUSUARIO,'#13#10'        ' +
      '  fun.NOME_FUNCIONARIO,   '#13#10'          fun.TELEFONE, '#13#10'          ' +
      'fun.CELULAR'#13#10'from CLIENTES cli '#13#10'left outer join ENDERECOCLIENTE' +
      ' ende '#13#10'on ende.CODCLIENTE=cli.CODCLIENTE'#13#10'left outer join REPR_' +
      'CLIENTE rep '#13#10'on rep.COD_CLIENTE=cli.CODCLIENTE'#13#10'left outer join' +
      ' USUARIO usu '#13#10'on usu.CODUSUARIO=cli.CODUSUARIO '#13#10'left outer joi' +
      'n FUNCIONARIO fun  '#13#10'on fun.CODUSUARIO = cli.CODUSUARIO '#13#10' '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 304
    Top = 328
    object ListaClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object ListaClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object ListaClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object ListaClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object ListaClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object ListaClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object ListaClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object ListaClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object ListaClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object ListaClienteTELEFONE: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE'
      Size = 14
    end
    object ListaClienteTELEFONE1: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE1'
      Size = 14
    end
    object ListaClienteTELEFONE2: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE2'
      Size = 14
    end
    object ListaClienteFAX: TStringField
      DisplayWidth = 16
      FieldName = 'FAX'
      Size = 14
    end
    object ListaClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object ListaClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object ListaClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object ListaClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object ListaClienteNOME_REPRCLI: TStringField
      FieldName = 'NOME_REPRCLI'
      Size = 60
    end
    object ListaClienteNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
    object ListaClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object ListaClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object ListaClienteNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 60
    end
    object ListaClienteTELEFONE_1: TStringField
      FieldName = 'TELEFONE_1'
      Size = 13
    end
    object ListaClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object ListaClienteSERIE: TStringField
      FieldName = 'SERIE'
      ReadOnly = True
      Size = 4
    end
    object ListaClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ReadOnly = True
      Size = 4
    end
    object ListaClienteRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object ListaClienteCURSO: TStringField
      FieldName = 'CURSO'
      ReadOnly = True
      Size = 50
    end
  end
  object dsp: TDataSetProvider
    DataSet = ListaCliente
    Options = [poAllowCommandText]
    Left = 336
    Top = 328
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 368
    Top = 328
    object cdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cdsSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cdsCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsTELEFONE: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE'
      Size = 16
    end
    object cdsTELEFONE1: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE1'
      Size = 16
    end
    object cdsTELEFONE2: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE2'
      Size = 16
    end
    object cdsFAX: TStringField
      DisplayWidth = 16
      FieldName = 'FAX'
      Size = 16
    end
    object cdsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cdsPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cdsOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsNOME_REPRCLI: TStringField
      FieldName = 'NOME_REPRCLI'
      Size = 60
    end
    object cdsNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
    object cdsUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 60
    end
    object cdsTELEFONE_1: TStringField
      FieldName = 'TELEFONE_1'
      Size = 13
    end
    object cdsCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsSERIE: TStringField
      FieldName = 'SERIE'
      ReadOnly = True
      Size = 4
    end
    object cdsSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ReadOnly = True
      Size = 4
    end
    object cdsRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object cdsCURSO: TStringField
      FieldName = 'CURSO'
      ReadOnly = True
      Size = 50
    end
  end
  object sds_parametro: TSQLDataSet
    CommandText = 'select * from PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 592
    Top = 248
    object sds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object sds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object sds_parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object sds_parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object sds_parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object sds_parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object sds_parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object sds_parametroD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object sds_parametroD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object sds_parametroD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object sds_parametroD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object sds_parametroD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object sds_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object cds_parametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 656
    Top = 248
    object cds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object cds_parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object cds_parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object cds_parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object cds_parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object cds_parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object cds_parametroD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object cds_parametroD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object cds_parametroD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object cds_parametroD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object cds_parametroD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object cds_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = sds_parametro
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 248
  end
  object VCLReport_etiqueta: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 256
    Top = 272
  end
  object sdsCli: TSQLDataSet
    CommandText = 'select distinct SERIE from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 336
    object sdsCliSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
  end
  object sdscli1: TSQLDataSet
    CommandText = 'select distinct SERIELETRA from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 336
    object sdscli1SERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
  end
  object sdsCli2: TSQLDataSet
    CommandText = 'select distinct CURSO from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 104
    Top = 336
    object sdsCli2CURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, '#13#10'          cli.NOMECLIENTE, '#13#10'          ' +
      'cli.RAZAOSOCIAL, '#13#10'          cli.RA  '#13#10'from CLIENTES cli '#13#10'where' +
      ' (cli.RAZAOSOCIAL = :pRAZAO) or (:PRAZAO = '#39'TODOS'#39') '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pRAZAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRAZAO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 304
    Top = 360
    object IntegerField1: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object StringField20: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText]
    Left = 336
    Top = 360
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pRAZAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pRAZAO'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider3'
    Left = 368
    Top = 360
    object IntegerField3: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField22: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object StringField23: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object StringField41: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 400
    Top = 360
  end
end
