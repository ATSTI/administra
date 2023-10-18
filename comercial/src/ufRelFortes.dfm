object fRelFortes: TfRelFortes
  Left = 50
  Top = 39
  Width = 1038
  Height = 682
  Caption = 'Relat'#243'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 130
    Top = 10
    Width = 794
    Height = 1123
    DataSource = dsRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 16
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 297
        Height = 16
        DataField = 'PRODUTO'
        DataSource = dsRel
      end
      object RLDBText2: TRLDBText
        Left = 304
        Top = 0
        Width = 337
        Height = 16
        DataField = 'NOMECLIENTE'
        DataSource = dsRel
      end
      object RLDBText3: TRLDBText
        Left = 648
        Top = 0
        Width = 63
        Height = 16
        DataField = 'QUANTIDADE'
        DataSource = dsRel
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 936
    Top = 592
    Width = 73
    Height = 41
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object sdsRel: TSQLDataSet
    CommandText = 
      'select prod.CODPRO, it.DESCPRODUTO as PRODUTO,  SUM(IT.QUANTIDAD' +
      'E) AS QUANTIDADE, SUM(IT.VALTOTAL) , m.CODCLIENTE,'#13#10'cli.NOMECLIE' +
      'NTE, cli.REGIAO'#13#10'from movimento m '#13#10'inner join CLIENTES cli on c' +
      'li.codCliente = m.codcliente '#13#10'inner join MOVIMENTODETALHE it on' +
      ' it.CODMOVIMENTO = m.CODMOVIMENTO '#13#10'inner join PRODUTOS prod on ' +
      'prod.CODPRODUTO = it.CODPRODUTO'#13#10'where m.codNatureza = 3 and m.D' +
      'ATAMOVIMENTO between :DATA1 and :DATA2   and M.codcliente > 0 '#13#10 +
      'and ((m.CODCLIENTE = :PRO1) or (:PRO1 = 9999999)) '#13#10'and ((cli.RE' +
      'GIAO = :reg) or (:reg = 0)) '#13#10'GROUP by prod.CODPRO,  it.DESCPROD' +
      'UTO, m.CODCLIENTE, cli.NOMECLIENTE, cli.REGIAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
        Value = 43466d
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
        Value = 43831d
      end
      item
        DataType = ftInteger
        Name = 'PRO1'
        ParamType = ptInput
        Value = 9999999
      end
      item
        DataType = ftInteger
        Name = 'PRO1'
        ParamType = ptInput
        Value = 9999999
      end
      item
        DataType = ftInteger
        Name = 'reg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'reg'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 326
    Top = 427
  end
  object dspRel: TDataSetProvider
    DataSet = sdsRel
    Options = [poAllowCommandText]
    Left = 358
    Top = 427
  end
  object cdsRel: TClientDataSet
    Active = True
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
        Value = 43466d
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
        Value = 43831d
      end
      item
        DataType = ftInteger
        Name = 'PRO1'
        ParamType = ptInput
        Value = 9999999
      end
      item
        DataType = ftInteger
        Name = 'PRO1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'reg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'reg'
        ParamType = ptInput
      end>
    ProviderName = 'dspRel'
    Left = 390
    Top = 428
    object cdsRelCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsRelPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 300
    end
    object cdsRelQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ReadOnly = True
      EditFormat = '##,0'
    end
    object cdsRelSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
    end
    object cdsRelCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ReadOnly = True
      Required = True
    end
    object cdsRelNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object cdsRelREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ReadOnly = True
      Required = True
    end
  end
  object dsRel: TDataSource
    DataSet = cdsRel
    Left = 424
    Top = 427
  end
  object RLXLSFilter1: TRLXLSFilter
    Options = [foOneSheetOnly]
    FileName = 'vendas'
    DisplayName = 'Planilha Excel 97-2013'
    Left = 312
    Top = 312
  end
end
