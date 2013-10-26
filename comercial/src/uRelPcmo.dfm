object fRelPcmo: TfRelPcmo
  Left = 314
  Top = 190
  Width = 416
  Height = 244
  BorderIcons = [biSystemMenu]
  Caption = 'fRelPcmo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 76
    Top = 37
    Width = 58
    Height = 13
    Caption = 'EMPRESA :'
  end
  object Label2: TLabel
    Left = 4
    Top = 37
    Width = 42
    Height = 13
    Caption = 'CODIGO'
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 96
    Width = 145
    Height = 41
    Caption = 'IMPRIMIR '
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object JvDBSearchEdit2: TJvDBSearchComboBox
    Left = 75
    Top = 52
    Width = 326
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = DataSource1
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
    Text = 'ADRIANO J.M.ROOIJEN E OUT.              '
  end
  object BitBtn2: TBitBtn
    Left = 123
    Top = 152
    Width = 145
    Height = 49
    Caption = 'IMPRIMIR TODAS'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object JvDBSearchComboBox1: TJvDBSearchComboBox
    Left = 6
    Top = 52
    Width = 65
    Height = 21
    DataField = 'RA'
    DataSource = DataSource1
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 3
    Text = '10001'
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 272
    Top = 88
  end
  object SQL: TSQLClientDataSet
    Active = True
    CommandText = 
      'select  RA ,RAZAOSOCIAL from CLIENTES where grupo_cliente = '#39'PCM' +
      'SO'#39' and segmento = 0 ORDER BY  RAZAOSOCIAL'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Left = 40
    Top = 104
    object SQLRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object SQLRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = SQL
    Left = 80
    Top = 128
  end
end
