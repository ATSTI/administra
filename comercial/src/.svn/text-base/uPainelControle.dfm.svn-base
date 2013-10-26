object fPainelControle: TfPainelControle
  Left = 192
  Top = 107
  Width = 959
  Height = 574
  Caption = 'Painel de Controle'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 479
    Height = 273
    Hint = 'Vendas no Ano'
    Align = alCustom
    Caption = 'Vendas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object DBChart1: TDBChart
      Left = 2
      Top = 15
      Width = 475
      Height = 256
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnDblClick = DBChart1DblClick
      object Series1: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Transparent = True
        Marks.Visible = False
        DataSource = cdsVenda
        SeriesColor = clBlue
        ShowInLegend = False
        Title = 'Vendas'
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
        YValues.ValueSource = 'VENDA'
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 479
    Top = 0
    Width = 466
    Height = 273
    Hint = 'Pedidos em Aberto x Finalizados'
    Caption = 'Execu'#231#227'o de Vendas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object DBChart3: TDBChart
      Left = 2
      Top = 15
      Width = 462
      Height = 256
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Legend.Visible = False
      Align = alClient
      PopupMenu = PopupMenu2
      TabOrder = 0
      object BarSeries2: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Visible = False
        DataSource = cdsPedidoVenda
        SeriesColor = clBlue
        ShowInLegend = False
        Title = 'Vendas'
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
      object Series2: TBarSeries
        Marks.ArrowLength = 20
        Marks.Visible = False
        DataSource = cdsPedidoVenda
        SeriesColor = clAqua
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
    Left = 0
    Top = 272
    Width = 479
    Height = 273
    Hint = 'Vendas no Ano'
    Align = alCustom
    Caption = 'Vendas por Cliente'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object DBChart2: TDBChart
      Left = 2
      Top = 15
      Width = 475
      Height = 256
      AllowPanning = pmNone
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Pen.Visible = False
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      AxisVisible = False
      Chart3DPercent = 25
      ClipPoints = False
      Frame.Visible = False
      Legend.Alignment = laBottom
      Legend.Inverted = True
      Legend.TextStyle = ltsLeftPercent
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DWalls = False
      Align = alClient
      PopupMenu = PopupMenu3
      TabOrder = 0
      OnDblClick = DBChart1DblClick
      object BarSeries1: TPieSeries
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = cdsVendaCliente
        PercentFormat = '#00.0 %'
        SeriesColor = clBlue
        Title = 'Vendas por Cliente'
        ValueFormat = '#,##0.00'
        XLabelsSource = 'CLIENTE'
        CustomXRadius = 110
        ExplodeBiggest = 20
        OtherSlice.Text = 'Other'
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1.000000000000000000
        PieValues.Order = loNone
        PieValues.ValueSource = 'VENDA'
        RotationAngle = 190
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 479
    Top = 272
    Width = 466
    Height = 273
    Hint = 'Vendas no Ano'
    Align = alCustom
    Caption = 'Vendas por Produto'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object DBChart4: TDBChart
      Left = 2
      Top = 15
      Width = 462
      Height = 256
      AllowPanning = pmNone
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Pen.Visible = False
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      AxisVisible = False
      ClipPoints = False
      Frame.Visible = False
      LeftAxis.AxisValuesFormat = '#,##0.#'
      Legend.Alignment = laBottom
      Legend.Inverted = True
      Legend.TextStyle = ltsLeftPercent
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DWalls = False
      Align = alClient
      PopupMenu = PopupMenu4
      TabOrder = 0
      OnDblClick = DBChart1DblClick
      object PieSeries1: TPieSeries
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = cdsVendaProduto
        PercentFormat = '#00.0 %'
        SeriesColor = clBlue
        Title = 'Vendas por Produto'
        ValueFormat = '#,##0.00'
        XLabelsSource = 'PRODUTO'
        ExplodeBiggest = 20
        OtherSlice.Text = 'Other'
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1.000000000000000000
        PieValues.Order = loNone
        PieValues.ValueSource = 'VENDA'
        RotationAngle = 195
      end
    end
  end
  object sdsVenda: TSQLDataSet
    CommandText = 
      'SELECT UDF_MONTH(v.DATAVENDA) , UDF_SMONTHNAME(v.DATAVENDA) MES,' +
      ' SUM(v.VALOR) VENDA'#13#10'   FROM VENDA v , MOVIMENTO m'#13#10'WHERE v.CODM' +
      'OVIMENTO = m.CODMOVIMENTO'#13#10'      AND m.CODNATUREZA = 3'#13#10'      AN' +
      'D v.DATAVENDA BETWEEN :dataIni AND :dataFim '#13#10'GROUP BY  UDF_MONT' +
      'H(v.DATAVENDA), UDF_SMONTHNAME(v.DATAVENDA)'
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
    Left = 304
    Top = 72
  end
  object dspVenda: TDataSetProvider
    DataSet = sdsVenda
    Left = 336
    Top = 72
  end
  object cdsVenda: TClientDataSet
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
    ProviderName = 'dspVenda'
    Left = 368
    Top = 72
    object cdsVendaVENDA: TFloatField
      FieldName = 'VENDA'
      ReadOnly = True
    end
    object cdsVendaMES: TStringField
      FieldName = 'MES'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object cdsVendaUDF_MONTH: TSmallintField
      FieldName = 'UDF_MONTH'
      ReadOnly = True
    end
  end
  object sdsPedidoVenda: TSQLDataSet
    CommandText = 'select * from pedido_x_venda (:dataIni,:dataFim, '#39'V'#39')'
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
    Left = 656
    Top = 96
  end
  object dspPedidoVenda: TDataSetProvider
    DataSet = sdsPedidoVenda
    Left = 688
    Top = 96
  end
  object cdsPedidoVenda: TClientDataSet
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
    ProviderName = 'dspPedidoVenda'
    Left = 720
    Top = 96
    object cdsPedidoVendaMESANO: TStringField
      FieldName = 'MESANO'
      FixedChar = True
      Size = 7
    end
    object cdsPedidoVendaVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
    end
    object cdsPedidoVendaVALORPEDIDO: TFloatField
      FieldName = 'VALORPEDIDO'
    end
    object cdsPedidoVendaMESANOV: TIntegerField
      FieldName = 'MESANOV'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 410
    Top = 55
    object MudarPerododesteGrfico1: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MudarPerododesteGrfico1Click
    end
    object MudarPerododeTodososGrficos1: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object AtualizarGrficos1: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
    object ImprimiresteGrfico1: TMenuItem
      Caption = 'Imprimir este Gr'#225'fico'
      OnClick = ImprimiresteGrfico1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 554
    Top = 55
    object MenuItem1: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
    object ImprimiresteGrfico2: TMenuItem
      Caption = 'Imprimir este Gr'#225'fico'
      OnClick = ImprimiresteGrfico2Click
    end
  end
  object sdsVendaCliente: TSQLDataSet
    CommandText = 
      'SELECT First 10 v.CODCLIENTE || '#39'-'#39' || UDF_LEFT(cli.NOMECLIENTE,' +
      '10) CLIENTE, SUM(v.VALOR) VENDA'#13#10'   FROM VENDA v, CLIENTES cli, ' +
      'MOVIMENTO m'#13#10'WHERE v.CODMOVIMENTO = m.CODMOVIMENTO'#13#10'      AND m.' +
      'CODNATUREZA = 3'#13#10'      AND v.CODCLIENTE = cli.CODCLIENTE'#13#10'      ' +
      'AND v.DATAVENDA BETWEEN :dataIni AND :dataFim '#13#10'GROUP BY v.CODCL' +
      'IENTE, cli.NOMECLIENTE'#13#10'ORDER BY 2 DESC '
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
    Left = 296
    Top = 336
  end
  object dspVendaCliente: TDataSetProvider
    DataSet = sdsVendaCliente
    Left = 328
    Top = 336
  end
  object cdsVendaCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
        Value = '01/01/2011'
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
        Value = '31/12/2011'
      end>
    ProviderName = 'dspVendaCliente'
    Left = 360
    Top = 336
    object cdsVendaClienteCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 305
    end
    object cdsVendaClienteVENDA: TFloatField
      FieldName = 'VENDA'
      ReadOnly = True
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 402
    Top = 319
    object MenuItem4: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MudarPerododesteGrfico1Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
    object ImprimiresteGrfico3: TMenuItem
      Caption = 'Imprimir este Gr'#225'fico'
      OnClick = ImprimiresteGrfico3Click
    end
  end
  object sdsVendaProduto: TSQLDataSet
    CommandText = 
      'SELECT First 10 udf_left(p.CODPRO,6) || '#39'-'#39' || udf_left(p.PRODUT' +
      'O,10) PRODUTO, SUM(md.VLR_BASE*md.QUANTIDADE) VENDA'#13#10'   FROM VEN' +
      'DA v, MOVIMENTO m, MOVIMENTODETALHE md, PRODUTOS P'#13#10'WHERE v.CODM' +
      'OVIMENTO = md.CODMOVIMENTO'#13#10'  and m.CODMOVIMENTO = v.CODMOVIMENT' +
      'O '#13#10'  and md.CODPRODUTO  = p.CODPRODUTO'#13#10'  and m.CODNATUREZA = 3' +
      ' '#13#10'  AND DATAVENDA BETWEEN :dataIni AND :dataFim '#13#10'GROUP BY p.CO' +
      'DPRO, p.PRODUTO'#13#10'ORDER BY 2 DESC'#13#10'      '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
        Value = '01/01/11'
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
        Value = '31/12/11'
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 768
    Top = 336
  end
  object dspVendaProduto: TDataSetProvider
    DataSet = sdsVendaProduto
    Left = 800
    Top = 336
  end
  object cdsVendaProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
        Value = '01/01/11'
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
        Value = '31/12/11'
      end>
    ProviderName = 'dspVendaProduto'
    Left = 832
    Top = 336
    object cdsVendaProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 270
    end
    object cdsVendaProdutoVENDA: TFloatField
      FieldName = 'VENDA'
      ReadOnly = True
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 874
    Top = 319
    object MenuItem7: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MudarPerododesteGrfico1Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
    object ImprimiresteGrfico4: TMenuItem
      Caption = 'Imprimir este Gr'#225'fico'
      OnClick = ImprimiresteGrfico4Click
    end
  end
end
