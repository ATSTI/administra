object fLogs: TfLogs
  Left = 0
  Top = 45
  Width = 1193
  Height = 651
  BorderIcons = [biSystemMenu]
  Caption = 'Auditoria'
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
  object DBMemo1: TDBMemo
    Left = 953
    Top = 68
    Width = 232
    Height = 556
    Align = alRight
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'DATA_SET'
    DataSource = DataSource1
    ParentCtl3D = False
    TabOrder = 0
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 1185
    Height = 68
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clBackground
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 53
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Tabela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 85
      Height = 13
      Caption = 'Modificado por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 221
      Top = 7
      Width = 17
      Height = 13
      Caption = 'PC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Panel1: TPanel
      Left = 393
      Top = 8
      Width = 233
      Height = 55
      TabOrder = 3
      object Label8: TLabel
        Left = 16
        Top = 11
        Width = 12
        Height = 13
        Caption = 'de'
      end
      object CheckBox1: TCheckBox
        Left = 80
        Top = 2
        Width = 73
        Height = 17
        Caption = 'Por data'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object Data1: TDateEdit
        Left = 14
        Top = 25
        Width = 98
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
      object Data2: TDateEdit
        Left = 120
        Top = 25
        Width = 98
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
      end
    end
    object cbTabela: TComboBox
      Left = 95
      Top = 8
      Width = 105
      Height = 21
      BevelKind = bkFlat
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
    end
    object cbUsuario: TComboBox
      Left = 95
      Top = 32
      Width = 105
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 1
    end
    object cbMicro: TComboBox
      Left = 271
      Top = 8
      Width = 105
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 912
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Procurar'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFAE4D9CAB9B066766F648F
        92B7C4DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF949EB670667DAD8DA070545A777E77FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFF78A9DB668CC27F75A4B48195725F4A779F76AECCB9FFF2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFACE2FF
        6CC3FB3A8ACB697DACA886917C574993807BD0C6D6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFE7FAFF99D6FE59C1FF1A77
        C2757DB8B376987F5B697B9A9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFF7FBF2FFA8D4FF5BB8FF377AC98A8BC773
        708058816C837F6D8883747B786A726D64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFE3EFFBA0D3FB7FBFFF4972A9848D96928866A99E80
        CBC0A4CCC1ABAFA796867F765D5855FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFE4FFEED7EDEBC8DCFFA9C2EE938688FFC8A0FEEEC9FFFBD7FFF6DAFFFF
        EBF1E9DC8C8784625F61FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF7F8DBC9B8D8C4A1FFF6C7F8F6AFFEFCDDFBFDFFEAEBF9F1F3EDF4F7DE60
        61517E8080FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5D2C3B0F6
        E4BFF6E2B2FFFBBAFBFAD8F6F7F3FDFFFFFFFFF1FFFFEA908B7C7E797BFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BCA6FFFFD9E7D8A7FCF7C0
        FFFFD9F8F9E5FFFFEEFDFAD4FFF9D4AEA493796D73FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC3BBA4FFFBD7F3E6B8F6EDC1FFFCD5FDFED7FFFE
        D2FFF9C7FFFED7BEAE9E8A7C82FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCBC5B2EADFC3FFFEDCF3E5C1E8E1BAEFECBFF9F1BCFFFFCFFFF5D1AA
        998CA99EA1FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DBD2D9
        CEC0FFFFEEFFFDE0F2E6C2FAF2C3FAEBBAFBE2BAD3B9A1968A80DBDCDAFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6F7E4D8D6F3E4E2FFF8DF
        FCEBCAFFF1C7F8E1BBE3C4ABC8AEA2CCC4BDF6FFFBFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFCFFF8EBF3D5C4CDC5AD95C6B392C8B590D7BB
        9DDEBBAEF4D9D5FFFFFBFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
    end
    object BitBtn2: TBitBtn
      Left = 992
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = BitBtn2Click
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF8484848484848484848484
        84848484848484848484848484848484848484FF00FFC6C6C6848484C6C6C6FF
        00FFC6C6C6FF00FF0000FF00FF84848484848484848484848484848484848484
        8484848484848484848484848484FFFFFF848484FFFFFF848484FF00FFFF00FF
        0000FF00FFA376007F5B007F5B007F5B004B4B4B4B4B4B848484848484848484
        FFFFFFFFFFFFFFFFFF7F5B007F5B007F5B00A37600FF00FF0000FF00FFFF00FF
        FF00FFFF00FF7F5B00A37600A376004B4B4B4B4B4B848484FFFFFFFFFFFFFFFF
        FF7F5B00FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B
        00A37600A37600A376004B4B4BFFFFFFFFFFFFFFFFFFFFFFFF7F5B00FF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B00A37600A37600A3
        76004B4B4BFFFFFFFFFFFFFFFFFFFFFFFF7F5B00FF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FF7F5B00A37600A37600A376004B4B4BFFFFDF
        FFFF80F7EF70FFFF007F5B00FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FF7F5B00A37600A37600A376004B4B4BFFFF80FFFF80FFFF80FFFF
        807F5B00FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B
        00A37600A37600A376004B4B4BFFFF80FFFF80FFFF80FFFF807F5B00FF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B00A37600A37600A3
        76004B4B4BFFFF00FFFF80FFFF80FFFFDF7F5B00FF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FFA376007F5B007F5B007F5B007F5B007F5B00
        7F5B007F5B007F5B00A37600FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF6F6F6F4B4B4B4B4B4B4B4B4B4B4B4B6F6F6FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B4B4B00
        DF0000DF0000DF0000DF004B4B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6F6F6F4B4B4B4B4B4B4B4B4B
        4B4B4B6F6F6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 68
    Width = 953
    Height = 556
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_LOG'
        Title.Caption = 'C'#243'd.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TABELA'
        Title.Caption = 'Local'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Hora'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MICRO'
        Title.Caption = 'Pc'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAMPO1'
        Title.Caption = 'A'#231#227'o'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAMPO2'
        Title.Caption = 'Ocorr'#234'ncia'
        Width = 270
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DM.cdsLog
    Left = 240
    Top = 208
  end
  object sdsTabela: TSQLDataSet
    CommandText = 'select distinct TABELA from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 168
    object sdsTabelaTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
  end
  object sdsUsuario: TSQLDataSet
    CommandText = 'select distinct USUARIO from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 200
    Top = 168
    object sdsUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
  end
  object sdsMicro: TSQLDataSet
    CommandText = 'select distinct MICRO from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 168
    object sdsMicroMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
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
    Left = 280
    Top = 176
  end
end
