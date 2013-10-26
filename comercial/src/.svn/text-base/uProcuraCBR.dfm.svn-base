object fProcuraCBR: TfProcuraCBR
  Left = 192
  Top = 119
  Width = 780
  Height = 552
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 587
    Top = 0
    Width = 185
    Height = 104
    Align = alRight
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 102
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DATABAIXA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECBR'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 104
    Width = 772
    Height = 415
    Align = alBottom
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 1
      Top = 1
      Width = 770
      Height = 413
      Align = alClient
      DataField = 'OBS'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 104
    Align = alLeft
    TabOrder = 2
    object Label1: TLabel
      Left = 9
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Localizar :'
    end
    object EvDBFind1: TEvDBFind
      Left = 61
      Top = 17
      Width = 365
      Height = 24
      DataField = 'NOMECBR'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dxButton1: TdxButton
      Left = 429
      Top = 16
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      Caption = 'IMPRIMIR'
      TabOrder = 1
    end
    object dxButton2: TdxButton
      Left = 429
      Top = 48
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'SAIR'
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 510
      Top = 19
      Width = 73
      Height = 17
      Caption = 'Todos ?'
      TabOrder = 3
    end
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 478
    Top = 136
    object cdsID_CBR: TIntegerField
      FieldName = 'ID_CBR'
      Required = True
    end
    object cdsDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cdsNOMECBR: TStringField
      FieldName = 'NOMECBR'
      Required = True
      Size = 100
    end
    object cdsOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 448
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 510
    Top = 136
  end
  object sds: TSQLDataSet
    CommandText = 'select * from CBR643'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 416
    Top = 136
    object sdsID_CBR: TIntegerField
      FieldName = 'ID_CBR'
      Required = True
    end
    object sdsDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object sdsNOMECBR: TStringField
      FieldName = 'NOMECBR'
      Required = True
      Size = 100
    end
    object sdsOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
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
    Left = 544
    Top = 138
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 576
    Top = 136
  end
end
