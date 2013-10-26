object fListaPedido: TfListaPedido
  Left = 439
  Top = 337
  Width = 351
  Height = 374
  Caption = 'Lista de Pedidos'
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
    Left = 16
    Top = 16
    Width = 305
    Height = 321
    DataSource = dsPedido
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPEDIDO'
        Title.Caption = 'Pedido'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Situa'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAMOVIMENTO'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMOVIMENTO'
        Title.Caption = 'C'#243'd. Mov.'
        Visible = True
      end>
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 48
    Top = 8
  end
  object sqlPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FORNEC'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select m.codmovimento, m.STATUS, m.CODPEDIDO, m.DATAMOVIMENTO fr' +
        'om MOVIMENTO m, MOVIMENTODETALHE md '
      '         where m.CODMOVIMENTO = md.CODMOVIMENTO      '
      '           and md.BAIXA is null '
      '           and m.CODNATUREZA       = 5'
      '           and m.CODFORNECEDOR = :FORNEC'
      '           and m.STATUS = 0'
      '           order by m.CODMOVIMENTO ')
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 200
  end
  object dspPedido: TDataSetProvider
    DataSet = sqlPedido
    Left = 96
    Top = 200
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FORNEC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPedido'
    Left = 136
    Top = 200
    object cdsPedidoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsPedidoSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsPedidoCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
    end
    object cdsPedidoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
  end
end
