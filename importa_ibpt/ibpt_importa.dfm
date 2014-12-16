object Form1: TForm1
  Left = 192
  Top = 107
  Width = 964
  Height = 631
  Caption = 'IBPT - NCM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Arquivo'
  end
  object BitBtn1: TBitBtn
    Left = 703
    Top = 7
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 168
    Top = 8
    Width = 457
    Height = 21
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 624
    Top = 7
    Width = 75
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 40
    Width = 905
    Height = 537
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object ProgressBarX: TProgressBar
    Left = 32
    Top = 584
    Width = 905
    Height = 16
    Step = 1
    TabOrder = 4
  end
  object OpenDialog1: TOpenDialog
    Left = 376
    Top = 96
  end
  object sc: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.6.100:sge_lajes'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq21'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\sisadmin\relatorio\')
    VendorLib = 'fbclient.dll'
    Left = 160
    Top = 96
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'SELECT NCM FROM IBPT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 48
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 80
    Top = 24
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 112
    Top = 24
    object cdsNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 8
    end
  end
end
