object fPainelControleCompra: TfPainelControleCompra
  Left = 192
  Top = 107
  Width = 955
  Height = 459
  Caption = 'Painel Controle - Compras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox4: TGroupBox
    Left = 479
    Top = 153
    Width = 461
    Height = 271
    Hint = 'Pedidos em Aberto x Finalizados'
    Caption = 'Execu'#231#227'o de Compras'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object DBChart4: TDBChart
      Left = 2
      Top = 15
      Width = 457
      Height = 254
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Legend.Visible = False
      Align = alClient
      TabOrder = 0
      object BarSeries3: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Visible = False
        SeriesColor = clGreen
        ShowInLegend = False
        Title = 'Compras'
        XLabelsSource = 'MESANO'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'MESANOV'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'VALORVENDA'
      end
      object BarSeries4: TBarSeries
        Marks.ArrowLength = 20
        Marks.Visible = False
        SeriesColor = 8454143
        Title = 'Pedidos'
        XLabelsSource = 'MESANO'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'MESANOV'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'VALORPEDIDO'
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = -1
    Top = 155
    Width = 479
    Height = 269
    Hint = 'Compras no Ano'
    Caption = 'Compras'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object DBChart2: TDBChart
      Left = 2
      Top = 15
      Width = 475
      Height = 252
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Align = alClient
      PopupMenu = PopupMenu3
      TabOrder = 0
      object BarSeries1: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Transparent = True
        Marks.Visible = False
        DataSource = cdsCompras
        SeriesColor = clGreen
        ShowInLegend = False
        Title = 'Compras'
        XLabelsSource = 'MES'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'UDF_MONTH'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'COMPRA'
      end
    end
  end
  object sdsPedidoCompra: TSQLDataSet
    CommandText = 'select * from pedido_x_venda (:dataIni,:dataFim, '#39'C'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 632
    Top = 352
  end
  object dspPedidoCompra: TDataSetProvider
    DataSet = sdsPedidoCompra
    Left = 664
    Top = 352
  end
  object cdsPedidoCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspPedidoCompra'
    Left = 696
    Top = 352
    object StringField2: TStringField
      FieldName = 'MESANO'
      FixedChar = True
      Size = 7
    end
    object FloatField1: TFloatField
      FieldName = 'VALORVENDA'
    end
    object FloatField2: TFloatField
      FieldName = 'VALORPEDIDO'
    end
    object IntegerField1: TIntegerField
      FieldName = 'MESANOV'
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 594
    Top = 375
    object MenuItem7: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
    end
    object MenuItem8: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
    end
    object MenuItem9: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
    end
  end
  object sdsCompras: TSQLDataSet
    CommandText = 
      'SELECT UDF_MONTH(DATACOMPRA) , UDF_SMONTHNAME(DATACOMPRA) MES, S' +
      'UM(VALOR) COMPRA'#13#10'   FROM COMPRA '#13#10'WHERE DATACOMPRA BETWEEN :dat' +
      'aIni AND :dataFim'#13#10'GROUP BY  UDF_MONTH(DATACOMPRA), UDF_SMONTHNA' +
      'ME(DATACOMPRA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 344
  end
  object dspCompras: TDataSetProvider
    DataSet = sdsCompras
    Left = 152
    Top = 344
  end
  object cdsCompras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompras'
    Left = 184
    Top = 344
    object StringField1: TStringField
      FieldName = 'MES'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object SmallintField1: TSmallintField
      FieldName = 'UDF_MONTH'
      ReadOnly = True
    end
    object cdsComprasCOMPRA: TFloatField
      FieldName = 'COMPRA'
      ReadOnly = True
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 314
    Top = 343
    object MenuItem4: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
    end
    object MenuItem5: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
    end
    object MenuItem6: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
    end
  end
end
