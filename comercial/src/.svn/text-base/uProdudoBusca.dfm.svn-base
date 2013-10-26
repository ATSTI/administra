object fProdudoBusca: TfProdudoBusca
  Left = 192
  Top = 114
  Width = 671
  Height = 516
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object EvDBFind1: TEvDBFind
    Left = 16
    Top = 29
    Width = 534
    Height = 21
    DataField = 'PRODUTO'
    DataSource = DtSrc
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object JvDBGrid1: TJvDBGrid
    Left = 16
    Top = 74
    Width = 633
    Height = 391
    TabStop = False
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
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
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 434
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'Valor R$'
        Width = 93
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 16
    Top = 52
    Width = 534
    Height = 21
    TabStop = False
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 551
    Top = 26
    Width = 49
    Height = 25
    Caption = 'Adiciona'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 601
    Top = 26
    Width = 49
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object Edit2: TEdit
    Left = 551
    Top = 52
    Width = 97
    Height = 21
    TabStop = False
    TabOrder = 5
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
end
