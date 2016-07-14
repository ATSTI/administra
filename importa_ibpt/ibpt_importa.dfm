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
      'Database=192.168.6.100:sge_vitton'
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
    Connected = True
    Left = 160
    Top = 96
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'Select n.NCM '#13#10', n.ALIQNAC '#13#10', n.ALIQIMP     '#13#10', n.CEST   '#13#10', n.' +
      'ESTADUAL '#13#10', n.MUNICIPAL'#13#10#13#10', i.ALIQNAC  as IMP_FEDERAL '#13#10', i.AL' +
      'IQIMP as IMP_FERERAL_IMP'#13#10', i.TIPO '#13#10', i.EX '#13#10', i.DESCRICAO '#13#10', ' +
      'i.ESTADUAL  as IMP_ESTADUAL '#13#10', i.MUNICIPAL  as IMP_MUNICIPAL'#13#10',' +
      ' i.VIGENCIAINICIO '#13#10', i.VIGENCIAFIM       '#13#10', i.CHAVE '#13#10', i.VERS' +
      'AO  '#13#10', i.FONTE '#13#10' from NCM n'#13#10'left outer join IBPT i on i.NCM =' +
      ' n.NCM '
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
    object cdsALIQNAC: TFloatField
      FieldName = 'ALIQNAC'
    end
    object cdsALIQIMP: TFloatField
      FieldName = 'ALIQIMP'
    end
    object cdsCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object cdsESTADUAL: TFloatField
      FieldName = 'ESTADUAL'
    end
    object cdsMUNICIPAL: TFloatField
      FieldName = 'MUNICIPAL'
    end
    object cdsIMP_FEDERAL: TFloatField
      FieldName = 'IMP_FEDERAL'
    end
    object cdsIMP_FERERAL_IMP: TFloatField
      FieldName = 'IMP_FERERAL_IMP'
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsEX: TIntegerField
      FieldName = 'EX'
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsIMP_ESTADUAL: TFloatField
      FieldName = 'IMP_ESTADUAL'
    end
    object cdsIMP_MUNICIPAL: TFloatField
      FieldName = 'IMP_MUNICIPAL'
    end
    object cdsVIGENCIAINICIO: TDateField
      FieldName = 'VIGENCIAINICIO'
    end
    object cdsVIGENCIAFIM: TDateField
      FieldName = 'VIGENCIAFIM'
    end
    object cdsCHAVE: TStringField
      FieldName = 'CHAVE'
    end
    object cdsVERSAO: TStringField
      FieldName = 'VERSAO'
    end
    object cdsFONTE: TStringField
      FieldName = 'FONTE'
      Size = 60
    end
  end
end
