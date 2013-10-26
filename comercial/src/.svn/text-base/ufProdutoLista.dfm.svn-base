inherited fProdutoLista: TfProdutoLista
  Caption = 'fProdutoLista'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 40
    Top = 64
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label4: TLabel [1]
    Left = 40
    Top = 104
    Width = 37
    Height = 13
    Caption = 'Produto'
    FocusControl = DBEdit2
  end
  object Label5: TLabel [2]
    Left = 40
    Top = 144
    Width = 54
    Height = 13
    Caption = 'Fornecedor'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [3]
    Left = 40
    Top = 192
    Width = 67
    Height = 13
    Caption = 'Pre'#231'o Compra'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [4]
    Left = 40
    Top = 240
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Venda'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit [7]
    Left = 40
    Top = 80
    Width = 199
    Height = 21
    DataField = 'CODIGO'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [8]
    Left = 40
    Top = 120
    Width = 524
    Height = 21
    DataField = 'DESCR'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [9]
    Left = 40
    Top = 160
    Width = 394
    Height = 21
    DataField = 'FORNECEDOR'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [10]
    Left = 40
    Top = 208
    Width = 134
    Height = 21
    DataField = 'PRECOLISTA'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [11]
    Left = 40
    Top = 256
    Width = 134
    Height = 21
    DataField = 'PRECOVENDA'
    DataSource = DtSrc
    TabOrder = 6
  end
  inherited DtSrc: TDataSource
    DataSet = cdsLista
  end
  object sdsLista: TSQLDataSet
    CommandText = 'select * from LISTAPRECO where CODIGO = :PCOD'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCOD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 16
  end
  object dspLista: TDataSetProvider
    DataSet = sdsLista
    Options = [poAllowCommandText]
    Left = 48
    Top = 16
  end
  object cdsLista: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCOD'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista'
    Left = 96
    Top = 16
    object cdsListaDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
    object cdsListaAPLIC: TStringField
      FieldName = 'APLIC'
      Size = 200
    end
    object cdsListaGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object cdsListaSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object cdsListaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 30
    end
    object cdsListaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object cdsListaPRECOLISTA: TFloatField
      FieldName = 'PRECOLISTA'
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object cdsListaPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object cdsListaMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object cdsListaDATAATUALIZA: TDateField
      FieldName = 'DATAATUALIZA'
    end
    object cdsListaCODBARRA: TStringField
      FieldName = 'CODBARRA'
    end
    object cdsListaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 15
    end
    object cdsListaUSAPRODUTO: TStringField
      FieldName = 'USAPRODUTO'
      FixedChar = True
      Size = 3
    end
    object cdsListaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
  end
end
