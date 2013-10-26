object fNovoUsuario: TfNovoUsuario
  Left = 233
  Top = 175
  Width = 398
  Height = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 11
    Width = 33
    Height = 13
    Caption = 'LOGIN'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 6
    Top = 58
    Width = 37
    Height = 13
    Caption = 'SENHA'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 7
    Top = 103
    Width = 77
    Height = 13
    Caption = 'Perfil do Usu'#225'rio'
  end
  object DBEdit1: TDBEdit
    Left = 6
    Top = 27
    Width = 250
    Height = 21
    DataField = 'LOGIN'
    DataSource = DtSrc
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit
    Left = 6
    Top = 74
    Width = 250
    Height = 21
    DataField = 'SENHA'
    DataSource = DtSrc
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 120
    Width = 249
    Height = 21
    DataField = 'PERFIL'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'administrador'
      'visitante')
    TabOrder = 2
    OnEnter = DBComboBox1Enter
    OnExit = DBComboBox1Exit
    OnKeyPress = FormKeyPress
  end
  object dxButton1: TdxButton
    Left = 304
    Top = 24
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Incluir'
    TabOrder = 3
  end
  object dxButton2: TdxButton
    Left = 304
    Top = 56
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton2Click
    Caption = 'Salvar'
    TabOrder = 4
  end
  object dxButton3: TdxButton
    Left = 304
    Top = 88
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton3Click
    Caption = 'Cancelar'
    TabOrder = 5
  end
  object dxButton4: TdxButton
    Left = 304
    Top = 120
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton4Click
    Caption = 'Fechar'
    TabOrder = 6
  end
  object DtSrc: TDataSource
    DataSet = DM.cds_Usuario
    OnStateChange = DtSrcStateChange
    Left = 272
    Top = 24
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
    AutoDetect = False
    Active = True
    Left = 272
    Top = 72
  end
end
