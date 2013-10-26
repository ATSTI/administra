object fBaixaretorno: TfBaixaretorno
  Left = 445
  Top = 306
  Width = 493
  Height = 311
  BorderIcons = [biSystemMenu]
  Caption = 'fBaixaretorno'
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
  object DBText2: TDBText
    Left = 5
    Top = 24
    Width = 65
    Height = 17
    DataField = 'CODCLIENTE'
    DataSource = DataSource1
  end
  object DBText3: TDBText
    Left = 85
    Top = 24
    Width = 313
    Height = 17
    DataField = 'NOMECLIENTE'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 8
    Top = 240
    Width = 41
    Height = 16
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 48
    Width = 468
    Height = 185
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
        FieldName = 'TITULO'
        Title.Caption = 'T'#237'tulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_NF'
        Title.Caption = 'T'#237'tulo R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_RECEBER'
        Title.Caption = 'Pendente R$'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 161
    Top = 240
    Width = 75
    Height = 33
    Caption = 'BAIXAR'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 249
    Top = 240
    Width = 75
    Height = 33
    Caption = 'SAIR'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 107
    Top = 112
  end
  object sds: TSQLDataSet
    CommandText = 
      'select r.*, '#13#10'          s.NOMECLIENTE '#13#10'from RECEBIMENTO r '#13#10'lef' +
      't outer join CLIENTES s '#13#10'on s.CODCLIENTE = r.CODCLIENTE '#13#10'where' +
      ' r.CODCLIENTE = :ID '#13#10'and r.STATUS <> '#39'7-'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 112
    object sdsCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object sdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sdsFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNF: TIntegerField
      FieldName = 'NF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBL: TIntegerField
      FieldName = 'BL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 54
    end
    object sdsIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsDV: TStringField
      FieldName = 'DV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 46
    Top = 112
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 76
    Top = 112
    object cdsCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object cdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTROCA: TFloatField
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNF: TIntegerField
      FieldName = 'NF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBL: TIntegerField
      FieldName = 'BL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 54
    end
    object cdsIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cdsDV: TStringField
      FieldName = 'DV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
end
