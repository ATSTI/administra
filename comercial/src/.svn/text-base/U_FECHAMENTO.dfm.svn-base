object F_Fechamento: TF_Fechamento
  Left = 190
  Top = 116
  Width = 920
  Height = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 49
    Width = 904
    Height = 427
    Align = alClient
    BorderStyle = bsNone
    DataSource = d_busca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
    TitleArrow = True
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
        FieldName = 'DATAMOVIMENTO'
        Title.Caption = 'Emiss'#227'o'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMOVIMENTO'
        Title.Caption = 'C'#243'digo'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCri'#231#227'o do Produto'
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UN'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Qtde'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Caption = 'V. Unit.R$'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALTOTAL'
        Title.Caption = 'Total R$'
        Width = 106
        Visible = True
      end>
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 49
    Align = alTop
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object Edit1: TEdit
      Left = 11
      Top = 13
      Width = 121
      Height = 27
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dxButton1: TdxButton
      Left = 134
      Top = 14
      Width = 79
      Height = 26
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'Confirma'
      TabOrder = 1
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 476
    Width = 904
    Height = 49
    Align = alBottom
    TabOrder = 2
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object DBEdit1: TDBEdit
      Left = 520
      Top = 8
      Width = 121
      Height = 21
      DataField = 'TOTAL'
      DataSource = d_busca
      TabOrder = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 195
    Top = 112
  end
  object s_busca: TSQLDataSet
    CommandText = 
      'select mov.* '#13#10'          ,cli.NOMECLIENTE'#13#10'          ,usu.NOMEUS' +
      'UARIO'#13#10'          ,mdt.UN'#13#10'          ,mdt.QUANTIDADE'#13#10'          ,' +
      'mdt.PRECO   '#13#10'          ,mdt.VALTOTAL'#13#10'          ,mdt.DESCPRODUT' +
      'O '#13#10'    from MOVIMENTODETALHE mdt'#13#10'  inner join MOVIMENTO mov on' +
      ' mov.CODMOVIMENTO = mdt.CODMOVIMENTO '#13#10'  inner join CLIENTES cli' +
      ' on cli.CODCLIENTE = mov.CODCLIENTE '#13#10'  inner join USUARIO usu o' +
      'n usu.CODUSUARIO= mov.CODUSUARIO '#13#10'  where mov.CODCLIENTE = :id_' +
      'cli '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 112
    object s_buscaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object s_buscaDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object s_buscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object s_buscaCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object s_buscaSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object s_buscaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object s_buscaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object s_buscaCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object s_buscaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object s_buscaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object s_buscaCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
    end
    object s_buscaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      Size = 30
    end
    object s_buscaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object s_buscaTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
    end
    object s_buscaCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
    end
    object s_buscaVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
    end
    object s_buscaRATEIO: TFloatField
      FieldName = 'RATEIO'
    end
    object s_buscaCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      FixedChar = True
      Size = 1
    end
    object s_buscaNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
    end
    object s_buscaORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
    end
    object s_buscaNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
    end
    object s_buscaCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object s_buscaKM: TStringField
      FieldName = 'KM'
      Size = 30
    end
    object s_buscaNFE: TStringField
      FieldName = 'NFE'
      Size = 10
    end
    object s_buscaPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
    end
    object s_buscaVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
    end
    object s_buscaFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      Size = 40
    end
    object s_buscaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object s_buscaDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object s_buscaPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      Size = 30
    end
    object s_buscaUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
    end
    object s_buscaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object s_buscaTPFRETE: TStringField
      FieldName = 'TPFRETE'
      FixedChar = True
      Size = 1
    end
    object s_buscaCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
    end
    object s_buscaQTD: TIntegerField
      FieldName = 'QTD'
    end
    object s_buscaCODCOTACAO: TIntegerField
      FieldName = 'CODCOTACAO'
    end
    object s_buscaUSUARIOLOGADO: TStringField
      FieldName = 'USUARIOLOGADO'
      Size = 30
    end
    object s_buscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object s_buscaNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object s_buscaUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object s_buscaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object s_buscaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object s_buscaVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object s_buscaDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
  end
  object p_busca: TDataSetProvider
    DataSet = s_busca
    Left = 102
    Top = 112
  end
  object c_busca: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end>
    ProviderName = 'p_busca'
    Left = 132
    Top = 112
    object c_buscaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object c_buscaDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object c_buscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object c_buscaCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object c_buscaSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object c_buscaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object c_buscaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object c_buscaCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object c_buscaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object c_buscaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object c_buscaCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
    end
    object c_buscaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      Size = 30
    end
    object c_buscaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object c_buscaTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
    end
    object c_buscaCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
    end
    object c_buscaVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
    end
    object c_buscaRATEIO: TFloatField
      FieldName = 'RATEIO'
    end
    object c_buscaCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      FixedChar = True
      Size = 1
    end
    object c_buscaNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
    end
    object c_buscaORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
    end
    object c_buscaNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
    end
    object c_buscaCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object c_buscaKM: TStringField
      FieldName = 'KM'
      Size = 30
    end
    object c_buscaNFE: TStringField
      FieldName = 'NFE'
      Size = 10
    end
    object c_buscaPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
    end
    object c_buscaVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
    end
    object c_buscaFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      Size = 40
    end
    object c_buscaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object c_buscaDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object c_buscaPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      Size = 30
    end
    object c_buscaUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
    end
    object c_buscaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object c_buscaTPFRETE: TStringField
      FieldName = 'TPFRETE'
      FixedChar = True
      Size = 1
    end
    object c_buscaCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
    end
    object c_buscaQTD: TIntegerField
      FieldName = 'QTD'
    end
    object c_buscaCODCOTACAO: TIntegerField
      FieldName = 'CODCOTACAO'
    end
    object c_buscaUSUARIOLOGADO: TStringField
      FieldName = 'USUARIOLOGADO'
      Size = 30
    end
    object c_buscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object c_buscaNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object c_buscaUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object c_buscaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object c_buscaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object c_buscaVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object c_buscaDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object c_buscaTOTAL: TAggregateField
      FieldName = 'TOTAL'
      Active = True
      Expression = 'SUM(VALTOTAL)'
    end
  end
  object d_busca: TDataSource
    DataSet = c_busca
    Left = 163
    Top = 112
  end
end
