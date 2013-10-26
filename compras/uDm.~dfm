object dm: Tdm
  OldCreateOrder = False
  Left = 192
  Top = 103
  Height = 298
  Width = 610
  object sc: TSQLConnection
    ConnectionName = 'sge'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=c:\home\sisadmin\bd\sge.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\atsadmin\relatorio\')
    VendorLib = 'fbclient.dll'
    Connected = True
    Left = 96
    Top = 16
  end
  object sdsSolic: TSQLDataSet
    CommandText = 'SELECT * FROM COMPRA_SOLIC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 208
    Top = 56
  end
  object dspSolic: TDataSetProvider
    DataSet = sdsSolic
    Left = 280
    Top = 56
  end
  object cdsSolic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSolic'
    Left = 352
    Top = 56
    object cdsSolicSOLIC_CODIGO: TIntegerField
      FieldName = 'SOLIC_CODIGO'
      Required = True
    end
    object cdsSolicSOLIC_DATA: TDateField
      FieldName = 'SOLIC_DATA'
    end
    object cdsSolicSOLIC_PRODUTO: TIntegerField
      FieldName = 'SOLIC_PRODUTO'
      Required = True
    end
    object cdsSolicSOLIC_QUANTIDADE: TFloatField
      FieldName = 'SOLIC_QUANTIDADE'
      DisplayFormat = '##0.0'
    end
    object cdsSolicSOLIC_SOLICITANTE: TIntegerField
      FieldName = 'SOLIC_SOLICITANTE'
    end
    object cdsSolicSOLIC_SITUACAO: TStringField
      FieldName = 'SOLIC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsSolicSOLIC_APROVACAO: TIntegerField
      FieldName = 'SOLIC_APROVACAO'
    end
    object cdsSolicSOLIC_DATAAPROV: TDateField
      FieldName = 'SOLIC_DATAAPROV'
    end
    object cdsSolicSOLIC_DESCRICAO: TStringField
      FieldName = 'SOLIC_DESCRICAO'
      Size = 300
    end
    object cdsSolicSOLIC_TIPO: TStringField
      FieldName = 'SOLIC_TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsSolic: TDataSource
    DataSet = cdsSolic
    Left = 424
    Top = 56
  end
  object sqBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 168
    Top = 128
  end
end
