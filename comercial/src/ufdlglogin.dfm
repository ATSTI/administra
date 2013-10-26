object fDlgLogin: TfDlgLogin
  Left = 404
  Top = 300
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'AUTORIZA'#199#195'O'
  ClientHeight = 206
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 145
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 1
    object MMJPanel1: TMMJPanel
      Left = 2
      Top = 2
      Width = 323
      Height = 141
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      TabStop = True
      Silhuette.Shape.ShapeText = 'Shape text'
      Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
      Silhuette.PictureShape.DisplayPicture = True
      Background.StartColor = clAqua
      Background.EndColor = clTeal
      Background.FillType = GradUpDown
      object Label2: TLabel
        Left = 77
        Top = 85
        Width = 45
        Height = 16
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 80
        Top = 45
        Width = 39
        Height = 16
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdtLogin: TEdit
        Left = 125
        Top = 37
        Width = 121
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EdtLoginKeyPress
      end
      object EdtSenha: TEdit
        Left = 125
        Top = 77
        Width = 121
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
        OnKeyPress = EdtLoginKeyPress
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 145
    Width = 327
    Height = 61
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 0
    object MMJPanel2: TMMJPanel
      Left = 2
      Top = 2
      Width = 323
      Height = 57
      Align = alClient
      TabOrder = 0
      Silhuette.Shape.ShapeText = 'Shape text'
      Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
      Silhuette.PictureShape.DisplayPicture = True
      Background.StartColor = clAqua
      Background.EndColor = clTeal
      Background.FillType = GradUpDown
      object BitBtnCancelar: TBitBtn
        Left = 173
        Top = 13
        Width = 83
        Height = 32
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = BitBtnCancelarClick
        Kind = bkCancel
      end
      object BitBtnOK: TBitBtn
        Left = 69
        Top = 12
        Width = 83
        Height = 33
        Caption = 'OK'
        TabOrder = 0
        OnClick = BitBtnOKClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
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
    AutoDetect = True
    XPControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcMaskEdit, xcMemo, xcRichEdit, xcCheckBox, xcRadioButton, xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox]
    Active = True
    Left = 24
    Top = 136
  end
  object cds_Login: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'maquina'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'mod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Login'
    Left = 200
    Top = 112
    object cds_LoginLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LoginMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_LoginMODULO: TStringField
      FieldName = 'MODULO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_LoginID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp_Login: TDataSetProvider
    DataSet = sds_Login
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 112
  end
  object sds_Login: TSQLDataSet
    CommandText = 
      'select * from LOG_ACESSO '#13#10'where MICRO = :maquina '#13#10'and MODULO =' +
      ' :mod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'maquina'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'mod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 112
    object sds_LoginLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate]
    end
    object sds_LoginMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_LoginMODULO: TStringField
      FieldName = 'MODULO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_LoginID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object EvOneInstance1: TEvOneInstance
    Left = 48
    Top = 72
  end
  object sPermissao: TSQLDataSet
    CommandText = 
      'select UCIDUSER, UCUSERNAME, UCLOGIN,  UCPASSWORD,UCPROFILE from' +
      ' UCTABUSERS '#13#10'where UCLOGIN = :login'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'login'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 48
    Top = 40
    object sPermissaoUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
    end
    object sPermissaoUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Size = 30
    end
    object sPermissaoUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
    object sPermissaoUCPASSWORD: TStringField
      FieldName = 'UCPASSWORD'
      Size = 250
    end
    object sPermissaoUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
    end
  end
end
