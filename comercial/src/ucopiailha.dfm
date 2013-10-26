object fCopiaIlha: TfCopiaIlha
  Left = 192
  Top = 149
  Width = 1040
  Height = 527
  Caption = 'fCopiaIlha'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 273
    Height = 441
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
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRUN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRPROM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRCUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRCOMIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SETOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DGRUPO'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMP1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMP2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DURACAO'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 283
    Top = 48
    Width = 281
    Height = 425
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 912
    Top = 96
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 912
    Top = 128
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 912
    Top = 160
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object DBGrid3: TDBGrid
    Left = 571
    Top = 48
    Width = 326
    Height = 425
    DataSource = DataSource3
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUNCAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAIXA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATADM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPVALE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'END'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONERES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONECNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMFIM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COZ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IBAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICOZ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRESENCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORCTG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Visible = True
      end>
  end
  object Table1: TTable
    DatabaseName = 'boite'
    TableName = 'TOM.DBF'
    Left = 8
    Top = 16
    object Table1ITEM: TStringField
      FieldName = 'ITEM'
      Size = 4
    end
    object Table1DESC: TStringField
      FieldName = 'DESC'
      Size = 22
    end
    object Table1PRUN: TFloatField
      FieldName = 'PRUN'
    end
    object Table1PRPROM: TFloatField
      FieldName = 'PRPROM'
    end
    object Table1PRCUSTO: TFloatField
      FieldName = 'PRCUSTO'
    end
    object Table1PRCOMIS: TFloatField
      FieldName = 'PRCOMIS'
    end
    object Table1SETOR: TStringField
      FieldName = 'SETOR'
      Size = 2
    end
    object Table1GRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 2
    end
    object Table1DGRUPO: TStringField
      FieldName = 'DGRUPO'
      Size = 15
    end
    object Table1MENU: TStringField
      FieldName = 'MENU'
      Size = 1
    end
    object Table1COMP: TStringField
      FieldName = 'COMP'
      Size = 1
    end
    object Table1COMP1: TStringField
      FieldName = 'COMP1'
      Size = 53
    end
    object Table1COMP2: TStringField
      FieldName = 'COMP2'
      Size = 53
    end
    object Table1FRACAO: TStringField
      FieldName = 'FRACAO'
      Size = 1
    end
    object Table1CMIN: TStringField
      FieldName = 'CMIN'
      Size = 1
    end
    object Table1DURACAO: TSmallintField
      FieldName = 'DURACAO'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 40
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 352
    Top = 16
  end
  object Table2: TTable
    DatabaseName = 'boite'
    TableName = 'AAZ01C2.DBF'
    Left = 320
    Top = 16
    object Table2GRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 2
    end
    object Table2SETOR: TStringField
      FieldName = 'SETOR'
      Size = 2
    end
    object Table2DESC: TStringField
      FieldName = 'DESC'
      Size = 22
    end
    object Table2FUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 2
    end
    object Table2TECLA: TStringField
      FieldName = 'TECLA'
      Size = 11
    end
    object Table2PORTA: TStringField
      FieldName = 'PORTA'
      Size = 4
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 16
    object SQLDataSet1CODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLDataSet1FAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1CATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1MARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1UNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1DATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1ESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1ESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1ESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1ESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1ICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1CODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1IPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1CLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1CST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object SQLDataSet1PRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object SQLDataSet1COD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1MARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1COD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet1CONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1CONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1CONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1RATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1CODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1QTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1PESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1DATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1MARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1PRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1DATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1CODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLDataSet1FOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQLDataSet1USA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLDataSet1LOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1LOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SQLDataSet1TIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1VALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1GERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1IMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 120
    Top = 16
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 152
    Top = 16
    object ClientDataSet1CODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientDataSet1FAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ClientDataSet1CATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ClientDataSet1MARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ClientDataSet1UNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object ClientDataSet1DATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1ESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1ESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1ESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1ESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1VALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1VALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1ICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1CODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1IPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1CLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ClientDataSet1CST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ClientDataSet1BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object ClientDataSet1PRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object ClientDataSet1COD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1MARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1COD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1VALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ClientDataSet1CONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ClientDataSet1CONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ClientDataSet1CONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ClientDataSet1RATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1CODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ClientDataSet1QTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1PESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1DATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1MARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1PRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ClientDataSet1DATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1CODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ClientDataSet1FOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ClientDataSet1USA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ClientDataSet1LOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1LOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1TIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1VALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1VALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1GERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1IMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 456
    Top = 16
    object ClientDataSet2DESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object ClientDataSet2COD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      ProviderFlags = []
    end
    object ClientDataSet2MARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    UpdateMode = upWhereKeyOnly
    Left = 424
    Top = 16
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select * from FAMILIAPRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 16
    object SQLDataSet2DESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object SQLDataSet2COD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
      ProviderFlags = []
    end
    object SQLDataSet2MARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object SQLDataSet3: TSQLDataSet
    CommandText = 'select CODPRO from PRODUTOS '#13#10'where CODPRO =:id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 216
    Top = 16
  end
  object Table3: TTable
    DatabaseName = 'boite'
    TableName = 'AAZ01B4.DBF'
    Left = 592
    Top = 16
    object Table3COD: TStringField
      FieldName = 'COD'
      Size = 3
    end
    object Table3NOME: TStringField
      FieldName = 'NOME'
      Size = 38
    end
    object Table3FUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 2
    end
    object Table3CAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 2
    end
    object Table3TIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Table3DATADM: TDateField
      FieldName = 'DATADM'
    end
    object Table3SALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object Table3BASE: TStringField
      FieldName = 'BASE'
      Size = 1
    end
    object Table3OPVALE: TStringField
      FieldName = 'OPVALE'
      Size = 1
    end
    object Table3END: TStringField
      FieldName = 'END'
      Size = 38
    end
    object Table3CID: TStringField
      FieldName = 'CID'
    end
    object Table3BAI: TStringField
      FieldName = 'BAI'
    end
    object Table3EST: TStringField
      FieldName = 'EST'
      Size = 2
    end
    object Table3CEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object Table3FONERES: TStringField
      FieldName = 'FONERES'
      Size = 14
    end
    object Table3FONECNT: TStringField
      FieldName = 'FONECNT'
      Size = 14
    end
    object Table3RG: TStringField
      FieldName = 'RG'
      Size = 12
    end
    object Table3CIC: TStringField
      FieldName = 'CIC'
      Size = 14
    end
    object Table3COMFIM: TSmallintField
      FieldName = 'COMFIM'
    end
    object Table3BAR: TStringField
      FieldName = 'BAR'
      Size = 1
    end
    object Table3COZ: TStringField
      FieldName = 'COZ'
      Size = 1
    end
    object Table3IBAR: TStringField
      FieldName = 'IBAR'
      Size = 1
    end
    object Table3ICOZ: TStringField
      FieldName = 'ICOZ'
      Size = 1
    end
    object Table3DATA: TDateField
      FieldName = 'DATA'
    end
    object Table3PRESENCA: TStringField
      FieldName = 'PRESENCA'
      Size = 1
    end
    object Table3PORCTG: TFloatField
      FieldName = 'PORCTG'
    end
    object Table3SALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 632
    Top = 16
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet4
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 16
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 735
    Top = 16
    object ClientDataSet3COD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet3SEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ClientDataSet3ESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ClientDataSet3DATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3RUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ClientDataSet3N: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ClientDataSet3COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ClientDataSet3BAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ClientDataSet3CIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3UF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ClientDataSet3CEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ClientDataSet3RG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object ClientDataSet3TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object ClientDataSet3CELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object ClientDataSet3RECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ClientDataSet3VALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3ESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ClientDataSet3PAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ClientDataSet3MAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ClientDataSet3NOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ClientDataSet3FUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet3DATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3DATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3REGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object ClientDataSet3CPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object ClientDataSet3DDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object ClientDataSet3CODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3ESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object ClientDataSet3CONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ClientDataSet3BANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ClientDataSet3AGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ClientDataSet3CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet3CLIFOR: TStringField
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ClientDataSet3STATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object SQLDataSet4: TSQLDataSet
    CommandText = 'select * from FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 673
    Top = 16
    object SQLDataSet4COD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet4SEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet4ESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet4DATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4RUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet4N: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SQLDataSet4COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet4BAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet4CIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4UF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLDataSet4CEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet4RG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object SQLDataSet4TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object SQLDataSet4CELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object SQLDataSet4RECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLDataSet4VALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4ESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLDataSet4PAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLDataSet4MAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLDataSet4NOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLDataSet4FUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SQLDataSet4DATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4DATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4REGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SQLDataSet4CPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object SQLDataSet4DDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SQLDataSet4CODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4ESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SQLDataSet4CONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet4BANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet4AGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet4CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet4CLIFOR: TStringField
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet4STATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
end
