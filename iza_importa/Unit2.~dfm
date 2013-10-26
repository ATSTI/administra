object Form2: TForm2
  Left = 245
  Top = 197
  Width = 870
  Height = 611
  Caption = 'Form2'
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
    Left = 96
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 16
    Width = 193
    Height = 41
    Caption = 'Executar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 96
    Top = 96
    Width = 713
    Height = 465
    TabOrder = 1
  end
  object sc: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=quad:sge_agroverde'
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
    Left = 328
    Top = 8
  end
  object sqMov: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 392
    Top = 8
  end
  object sqDet: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 424
    Top = 8
  end
  object sqCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 456
    Top = 8
  end
  object sqProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 488
    Top = 8
  end
  object sqlMov: TQuery
    Left = 392
    Top = 48
  end
  object sqlDet: TQuery
    Left = 424
    Top = 48
  end
  object sqlCliente: TQuery
    Left = 456
    Top = 48
  end
  object sqlProduto: TQuery
    Left = 488
    Top = 48
  end
end
