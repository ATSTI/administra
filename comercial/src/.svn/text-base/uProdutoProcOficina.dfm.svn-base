object fProdutoProcOficina: TfProdutoProcOficina
  Left = 192
  Top = 106
  Width = 684
  Height = 562
  Caption = 'Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 12
    Width = 25
    Height = 13
    Caption = 'Pe'#231'a'
  end
  object Label2: TLabel
    Left = 450
    Top = 8
    Width = 19
    Height = 13
    Caption = 'Uso'
  end
  object JvDBGrid1: TJvDBGrid
    Left = 1
    Top = 53
    Width = 441
    Height = 391
    TabStop = False
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AlternateRowColor = clMoneyGreen
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 298
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'Valor R$'
        Visible = True
      end>
  end
  object EvDBFind1: TEvDBFind
    Left = 3
    Top = 29
    Width = 437
    Height = 21
    DataField = 'PRODUTO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = EvDBFind1KeyPress
  end
  object EvDBFind2: TEvDBFind
    Left = 448
    Top = 29
    Width = 192
    Height = 21
    DataField = 'PRODUTO'
    DataSource = DtSrc
    TabOrder = 2
  end
  object JvDBGrid2: TJvDBGrid
    Left = 446
    Top = 54
    Width = 218
    Height = 391
    TabStop = False
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AlternateRowColor = clMoneyGreen
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'C'#243'digo'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'Valor R$'
        Width = 34
        Visible = True
      end>
  end
  object BtnOk: TBitBtn
    Left = 585
    Top = 462
    Width = 64
    Height = 30
    Caption = '&OK'
    TabOrder = 4
    Kind = bkOK
  end
  object sds: TSQLDataSet
    CommandText = 
      'select distinct pro.CODPRODUTO, '#13#10'          pro.COD_BARRA,  '#13#10'  ' +
      '       pro.CODPRO, '#13#10'          pro.PRODUTO,  '#13#10'          pro.VAL' +
      'OR_PRAZO as PRECO_VENDA, '#13#10'          pro.VALORUNITARIOATUAL as P' +
      'RECO_COMPRA, '#13#10'          pro.QTDE_PCT, '#13#10'          pro.UNIDADEME' +
      'DIDA, '#13#10'          pro.FAMILIA as GRUPO, '#13#10'          pro.CATEGORI' +
      'A as SUBGRUPO, '#13#10'          pro.MARCA, '#13#10'          pro.ESTOQUEATU' +
      'AL, '#13#10'          pro.CODALMOXARIFADO,'#13#10'          pro.ICMS, '#13#10'    ' +
      '      pro.TIPO,  '#13#10'          pro.LOCALIZACAO ,'#13#10'          pro.LO' +
      'TES ,'#13#10'          pro.PRECOMEDIO, '#13#10'          pro.PESO_QTDE'#13#10'from' +
      ' PRODUTOS pro '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 192
    Top = 138
    object sdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sdsCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object sdsCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object sdsPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object sdsQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object sdsUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object sdsGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object sdsSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object sdsMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object sdsCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object sdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object sdsLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object sdsLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object sdsPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object sdsPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 224
    Top = 138
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 256
    Top = 138
    object cdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object cdsCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      EditFormat = ',#0.00'
    end
    object cdsPRECO_COMPRA: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object cdsQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object cdsUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object cdsSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object cdsMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object cdsCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object cdsLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object cdsPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object cdsPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
  end
  object DtSrc: TDataSource
    DataSet = cds
    Left = 288
    Top = 138
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select distinct pro.CODPRODUTO, '#13#10'          pro.COD_BARRA,  '#13#10'  ' +
      '       pro.CODPRO, '#13#10'          pro.PRODUTO,  '#13#10'          pro.VAL' +
      'OR_PRAZO as PRECO_VENDA, '#13#10'          pro.VALORUNITARIOATUAL as P' +
      'RECO_COMPRA, '#13#10'          pro.QTDE_PCT, '#13#10'          pro.UNIDADEME' +
      'DIDA, '#13#10'          pro.FAMILIA as GRUPO, '#13#10'          pro.CATEGORI' +
      'A as SUBGRUPO, '#13#10'          pro.MARCA, '#13#10'          pro.ESTOQUEATU' +
      'AL, '#13#10'          pro.CODALMOXARIFADO,'#13#10'          pro.ICMS, '#13#10'    ' +
      '      pro.TIPO,  '#13#10'          pro.LOCALIZACAO ,'#13#10'          pro.LO' +
      'TES ,'#13#10'          pro.PRECOMEDIO, '#13#10'          pro.PESO_QTDE'#13#10'from' +
      ' PRODUTOS pro '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 146
    object IntegerField1: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'COD_BARRA'
    end
    object StringField2: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object FloatField1: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object FloatField2: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object FloatField3: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object StringField4: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object FloatField4: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object FloatField5: TFloatField
      FieldName = 'ICMS'
    end
    object StringField8: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object BCDField1: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object FloatField6: TFloatField
      FieldName = 'PESO_QTDE'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 520
    Top = 146
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 552
    Top = 146
    object IntegerField3: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'COD_BARRA'
    end
    object StringField12: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object StringField13: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object FloatField7: TFloatField
      FieldName = 'PRECO_VENDA'
      EditFormat = ',#0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'PRECO_COMPRA'
    end
    object FloatField9: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object StringField14: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object StringField15: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object StringField16: TStringField
      FieldName = 'SUBGRUPO'
      Size = 30
    end
    object StringField17: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object FloatField10: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object FloatField11: TFloatField
      FieldName = 'ICMS'
    end
    object StringField18: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object StringField20: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object BCDField2: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object FloatField12: TFloatField
      FieldName = 'PESO_QTDE'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 584
    Top = 146
  end
end
