object fPeriodoSem: TfPeriodoSem
  Left = 55
  Top = 110
  Width = 662
  Height = 421
  HorzScrollBar.Range = 633
  VertScrollBar.Range = 369
  ActiveControl = BitBtn1
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Semana'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 113
    Width = 99
    Height = 13
    Caption = 'Ano ( 01/01/XXXX ):'
  end
  object Label2: TLabel
    Left = 104
    Top = 217
    Width = 99
    Height = 13
    Caption = 'Excluir Ano ( XXXX ):'
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 161
    Width = 185
    Height = 49
    Caption = 'Gerar Semanas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object rgOpcao: TRadioGroup
    Left = 39
    Top = 36
    Width = 215
    Height = 67
    Caption = 'Primeira semana do ano :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Semana com mais de 3 dias'
      'Primeiro dia do ano')
    ParentFont = False
    TabOrder = 1
  end
  object MaskEdit1: TMaskEdit
    Left = 104
    Top = 129
    Width = 81
    Height = 28
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 2
    Text = '  /  /    '
  end
  object BitBtn2: TBitBtn
    Left = 56
    Top = 274
    Width = 185
    Height = 49
    Caption = 'Excluir Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 236
    Width = 73
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn3: TBitBtn
    Left = 120
    Top = 352
    Width = 75
    Height = 30
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object DBGrid1: TDBGrid
    Left = 312
    Top = 16
    Width = 337
    Height = 377
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from SEMANA where DATA = :pData'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pData'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 8
    object SQLDataSet1DATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1ANO: TSmallintField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1SEMANA: TSmallintField
      FieldName = 'SEMANA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1MES: TSmallintField
      FieldName = 'MES'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 8
  end
  object cds_sem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pData'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 144
    Top = 8
    object cds_semDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object cds_semANO: TSmallintField
      FieldName = 'ANO'
    end
    object cds_semSEMANA: TSmallintField
      FieldName = 'SEMANA'
    end
    object cds_semMES: TSmallintField
      FieldName = 'MES'
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_sem
    Left = 184
    Top = 8
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
    Active = True
    Left = 256
    Top = 160
  end
end
