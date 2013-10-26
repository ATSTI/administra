object dmCompra: TdmCompra
  OldCreateOrder = False
  Left = 192
  Top = 100
  Height = 298
  Width = 610
  object sdsSolic: TSQLDataSet
    CommandText = 'SELECT * FROM COMPRA_SOLIC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
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
    OnNewRecord = cdsSolicNewRecord
    Left = 352
    Top = 56
    object cdsSolicSOLIC_CODIGO: TIntegerField
      FieldName = 'SOLIC_CODIGO'
      Required = True
    end
    object cdsSolicSOLIC_DATA: TDateField
      FieldName = 'SOLIC_DATA'
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
    object cdsSolicSOLIC_PRODUTO: TStringField
      FieldName = 'SOLIC_PRODUTO'
      Required = True
      Size = 15
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
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 128
  end
end
