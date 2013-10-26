object DmCitrus: TDmCitrus
  OldCreateOrder = False
  Left = 188
  Top = 110
  Height = 514
  Width = 525
  object cdsProdutor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutor'
    Left = 168
    Top = 40
    object cdsProdutorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsProdutorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object dspProdutor: TDataSetProvider
    DataSet = sdsProdutor
    Left = 104
    Top = 40
  end
  object sdsProdutor: TSQLDataSet
    CommandText = 
      'select codFornecedor, nomeFornecedor from fornecedor where STATU' +
      'S = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 40
  end
  object sdsProduto: TSQLDataSet
    CommandText = 
      'select codProduto, Produto, codPro from produtos where (tipo <> ' +
      #39'SERV'#39') or (tipo is null)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 88
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 104
    Top = 88
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 168
    Top = 88
    object cdsProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object dsProdutor: TDataSource
    DataSet = cdsProdutor
    Left = 224
    Top = 40
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 227
    Top = 88
  end
  object sdsCFO: TSQLDataSet
    CommandText = 'select  * from LOTES WHERE PRECO = :PCodProdutor'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PCodProdutor'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 136
    object sdsCFOCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCFOLOTE: TStringField
      FieldName = 'LOTE'
      Required = True
      Size = 200
    end
    object sdsCFOCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sdsCFODATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
    end
    object sdsCFODATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object sdsCFOESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object sdsCFOPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object dspCFO: TDataSetProvider
    DataSet = sdsCFO
    Options = [poAllowCommandText]
    Left = 104
    Top = 136
  end
  object cdsCFO: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'PCodProdutor'
        ParamType = ptInput
      end>
    ProviderName = 'dspCFO'
    Left = 168
    Top = 136
    object cdsCFOCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInWhere]
    end
    object cdsCFOLOTE: TStringField
      FieldName = 'LOTE'
      Required = True
      Size = 200
    end
    object cdsCFOCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsCFODATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      EditMask = '!99/99/00;1;_'
    end
    object cdsCFODATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object cdsCFOESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cdsCFOPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object sdsBusca: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 192
  end
  object sdsCompra: TSQLDataSet
    CommandText = 'select * from Movimento where codmovimento = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 312
    Top = 48
  end
  object dspCompra: TDataSetProvider
    DataSet = sdsCompra
    Left = 360
    Top = 48
  end
  object cdsCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompra'
    Left = 408
    Top = 48
  end
  object sdsCliente: TSQLDataSet
    CommandText = 'select codcliente, nomecliente, razaosocial from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 256
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 96
    Top = 256
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 152
    Top = 256
    object cdsClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 208
    Top = 256
  end
  object cdsColhedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspColhedor'
    Left = 160
    Top = 304
    object cdsColhedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsColhedorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object cdsFretista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFretista'
    Left = 160
    Top = 352
    object cdsFretistaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsFretistaNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object dspColhedor: TDataSetProvider
    DataSet = sdsColhedor
    Left = 104
    Top = 304
  end
  object dspFretista: TDataSetProvider
    DataSet = sdsFretista
    Left = 104
    Top = 352
  end
  object dsColhedor: TDataSource
    DataSet = cdsColhedor
    Left = 208
    Top = 304
  end
  object dsFretista: TDataSource
    DataSet = cdsFretista
    Left = 208
    Top = 352
  end
  object sdsColhedor: TSQLDataSet
    CommandText = 
      'select codFornecedor , nomefornecedor from fornecedor where segm' +
      'ento = 3 and REGIAO = 3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 304
  end
  object sdsFretista: TSQLDataSet
    CommandText = 
      'select codFornecedor , nomefornecedor from fornecedor where segm' +
      'ento = 3 and REGIAO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 352
  end
  object cdsComprador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFretista'
    Left = 168
    Top = 408
    object IntegerField1: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object dspComprador: TDataSetProvider
    DataSet = sdsComprador
    Left = 112
    Top = 408
  end
  object DataSource1: TDataSource
    DataSet = cdsComprador
    Left = 216
    Top = 408
  end
  object sdsComprador: TSQLDataSet
    CommandText = 
      'select codFornecedor , nomefornecedor from fornecedor where segm' +
      'ento = 3 and REGIAO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 48
    Top = 408
  end
end
