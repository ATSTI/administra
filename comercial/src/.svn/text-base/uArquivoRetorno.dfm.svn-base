object fArquivoRetorno: TfArquivoRetorno
  Left = 192
  Top = 119
  Width = 751
  Height = 563
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 6
    Top = 80
    Width = 13
    Height = 16
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 98
    Width = 465
    Height = 193
    Ctl3D = False
    DataSource = DataSource1
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'D. Pagamento'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 473
    Top = 97
    Width = 89
    Height = 33
    Caption = 'PROCURAR'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 292
    Width = 726
    Height = 47
    Ctl3D = False
    DataSource = DtSrcREC
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Caption = 'T'#237'tulo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Title.Caption = 'Vencimento'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_RESTO'
        Title.Caption = 'Valor R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Situa'#231#227'o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCLIENTE'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 300
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 473
    Top = 138
    Width = 89
    Height = 33
    Caption = 'BAIXAR'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 473
    Top = 220
    Width = 89
    Height = 33
    Caption = 'SAIR'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 73
    Align = alTop
    TabOrder = 5
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clBackground
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 259
      Top = 26
      Width = 224
      Height = 22
      Caption = 'Arquivo Retorno - CBR643'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 262
      Top = 27
      Width = 224
      Height = 22
      Caption = 'Arquivo Retorno - CBR643'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Memo1: TMemo
    Left = 6
    Top = 339
    Width = 726
    Height = 187
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object BitBtn4: TBitBtn
    Left = 473
    Top = 180
    Width = 89
    Height = 33
    Caption = 'IMPRIMIR'
    TabOrder = 7
  end
  object cbBanco: TComboBox
    Left = 576
    Top = 80
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'cbBanco'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    FileName = 'C:\BANCOBRASIL\Retorno\CBR64337.RET'
    Filter = 'Todos Arquivos|*.*'
    InitialDir = 'C:\BANCOBRASIL\Retorno'
    Left = 48
    Top = 194
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 112
    Top = 160
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 48
    Top = 160
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 80
    Top = 160
    object cdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object cdsTITULO: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object cdsDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 6
    end
    object cdsVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '#0.00'
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'Select ID, '#13#10'           CAST(TITULO as INTEGER) as TITULO, '#13#10'   ' +
      '        DATA, '#13#10'           CAST(VALOR || '#39'.'#39' || centavos as DOUB' +
      'LE PRECISION) as VALOR  '#13#10'from TABRETORNO where ID = '#39'70'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQl
    Left = 16
    Top = 160
    object sdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object sdsTITULO: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object sdsDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 6
    end
    object sdsVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
  end
  object sdsREC: TSQLDataSet
    CommandText = 
      'select  rec.*, '#13#10'           soc.NOMECLIENTE,'#13#10'           soc.COD' +
      'CLIENTE '#13#10'from RECEBIMENTO rec '#13#10'inner join  CLIENTES soc on '#13#10's' +
      'oc.CODCLIENTE = rec.CODCLIENTE '#13#10'where rec.TITULO = :tit '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tit'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 80
    Top = 352
    object sdsRECCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object sdsRECTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object sdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object sdsRECCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsRECDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object sdsRECDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object sdsRECCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object sdsRECCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object sdsRECCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object sdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsRECVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsRECDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object sdsRECHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object sdsRECCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsRECCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object sdsRECCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object sdsRECCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object sdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object sdsRECDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object sdsRECVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object sdsRECJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object sdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sdsRECPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object sdsRECTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object sdsRECFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object sdsRECVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object sdsRECVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object sdsRECVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object sdsRECOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object sdsRECOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object sdsRECPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object sdsRECDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object sdsRECNF: TIntegerField
      FieldName = 'NF'
    end
    object sdsRECDP: TIntegerField
      FieldName = 'DP'
    end
    object sdsRECBL: TIntegerField
      FieldName = 'BL'
    end
    object sdsRECCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object sdsRECCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object sdsRECIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      BlobType = ftGraphic
    end
    object sdsRECDV: TStringField
      FieldName = 'DV'
      FixedChar = True
      Size = 2
    end
    object sdsRECNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sdsRECCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object sdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dspREC: TDataSetProvider
    DataSet = sdsREC
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 352
  end
  object cdsREC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tit'
        ParamType = ptInput
      end>
    ProviderName = 'dspREC'
    Left = 160
    Top = 352
    object cdsRECCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object cdsRECTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object cdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsRECCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsRECDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsRECDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object cdsRECCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cdsRECCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object cdsRECCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object cdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsRECVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRECDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cdsRECHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cdsRECCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsRECCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsRECCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cdsRECCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cdsRECDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object cdsRECVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object cdsRECJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object cdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsRECPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object cdsRECTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object cdsRECFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object cdsRECVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object cdsRECVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object cdsRECVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object cdsRECOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object cdsRECOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object cdsRECPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object cdsRECDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object cdsRECNF: TIntegerField
      FieldName = 'NF'
    end
    object cdsRECDP: TIntegerField
      FieldName = 'DP'
    end
    object cdsRECBL: TIntegerField
      FieldName = 'BL'
    end
    object cdsRECCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object cdsRECCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object cdsRECIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      BlobType = ftGraphic
    end
    object cdsRECDV: TStringField
      FieldName = 'DV'
      FixedChar = True
      Size = 2
    end
    object cdsRECNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsRECCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object cdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object DtSrcREC: TDataSource
    DataSet = cdsREC
    Left = 200
    Top = 352
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 80
    Top = 192
  end
  object sqs: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 256
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 600
    Top = 120
  end
  object sds_cbr: TSQLDataSet
    CommandText = 'select * from CBR643'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 480
    Top = 360
    object sds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
  end
  object dsp_cbr: TDataSetProvider
    DataSet = sds_cbr
    Left = 510
    Top = 360
  end
  object cds_cbr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cbr'
    Left = 540
    Top = 359
    object cds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
    end
    object cds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      Required = True
      Size = 100
    end
    object cds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
  end
  object sqlArquivoRetorno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 608
    Top = 168
  end
end
