object fNfePisCofins: TfNfePisCofins
  Left = 1
  Top = 1
  Width = 1112
  Height = 605
  Caption = 'Sped Pis Cofins'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    1104
    578)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 136
    Width = 63
    Height = 13
    Caption = 'Lista de erros'
    Color = clBtnFace
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Top = 272
    Width = 74
    Height = 13
    Caption = 'Arquivo Gerado'
    Color = clBtnFace
    ParentColor = False
  end
  object Label7: TLabel
    Left = 24
    Top = 507
    Width = 62
    Height = 13
    Caption = 'Buffer Linhas'
    Color = clBtnFace
    ParentColor = False
  end
  object Label8: TLabel
    Left = 128
    Top = 507
    Width = 59
    Height = 13
    Caption = 'Buffer Notas'
    Color = clBtnFace
    ParentColor = False
  end
  object btnTXT: TButton
    Left = 432
    Top = 512
    Width = 217
    Height = 49
    Caption = 'Gerar arquivo SPED PIS/COFIS'
    TabOrder = 0
    OnClick = btnTXTClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1104
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    DesignSize = (
      1100
      109)
    object Label1: TLabel
      Left = 22
      Top = 14
      Width = 82
      Height = 13
      Caption = 'Nome do Arquivo'
      Color = clBtnFace
      ParentColor = False
    end
    object Label5: TLabel
      Left = 0
      Top = 0
      Width = 1100
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = '1 - Informe o Nome do Arquivo e m'#233'todo de Gera'#231#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 613
      Top = 14
      Width = 69
      Height = 13
      Caption = 'Num.Notas (C)'
      Color = clBtnFace
      ParentColor = False
    end
    object Label11: TLabel
      Left = 512
      Top = 48
      Width = 87
      Height = 13
      Caption = 'Finalidade Arquivo'
    end
    object edtFile: TEdit
      Left = 22
      Top = 28
      Width = 627
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = edtFileChange
      OnExit = edtFileExit
    end
    object cbConcomitante: TCheckBox
      Left = 700
      Top = 30
      Width = 134
      Height = 19
      Hint = 
        'Grava os Registros a medida que s'#227'o alimentados'#13#10'Economizando me' +
        'm'#243'ria. '#13#10#218'til para evitar erros em arquivos Enormes'
      Anchors = [akTop, akRight]
      Caption = 'Gerar Concomitante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cbConcomitanteClick
    end
    object edNotas: TEdit
      Left = 613
      Top = 28
      Width = 80
      Height = 21
      TabOrder = 2
      Text = '10'
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 58
      Width = 476
      Height = 45
      Caption = 'Per'#237'odo'
      TabOrder = 3
      object Label4: TLabel
        Left = 24
        Top = 16
        Width = 20
        Height = 13
        Caption = 'M'#234's'
      end
      object Label9: TLabel
        Left = 235
        Top = 18
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object Label10: TLabel
        Left = 352
        Top = 19
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object cbMes: TComboBox
        Left = 53
        Top = 15
        Width = 176
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbMesChange
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object data_ini: TJvDatePickerEdit
        Left = 234
        Top = 16
        Width = 107
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 1
      end
      object data_fim: TJvDatePickerEdit
        Left = 366
        Top = 16
        Width = 101
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 2
      end
    end
    object cbTipo: TComboBox
      Left = 512
      Top = 64
      Width = 177
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '0 - Original'
      OnChange = cbTipoChange
      Items.Strings = (
        '0 - Original'
        '1 - Retificadora')
    end
    object BitBtn1: TBitBtn
      Left = 464
      Top = 28
      Width = 33
      Height = 25
      Caption = '...'
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object memoError: TMemo
    Left = 8
    Top = 153
    Width = 1090
    Height = 112
    Anchors = [akLeft, akTop, akRight]
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object memoTXT: TMemo
    Left = 8
    Top = 288
    Width = 1090
    Height = 192
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    WantReturns = False
    WordWrap = False
  end
  object edBufLinhas: TEdit
    Left = 16
    Top = 521
    Width = 80
    Height = 21
    TabOrder = 4
    Text = '1000'
  end
  object edBufNotas: TEdit
    Left = 128
    Top = 521
    Width = 80
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = '1000'
  end
  object btnError: TButton
    Left = 804
    Top = 510
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Gerar TXT Error'
    TabOrder = 6
    OnClick = btnErrorClick
  end
  object ProgressBar1: TJvProgressBar
    Left = 312
    Top = 488
    Width = 449
    Height = 16
    TabOrder = 7
  end
  object ACBrSPEDPisCofins1: TACBrSPEDPisCofins
    Path = 'c:\home\'
    Arquivo = 'arquivo'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 552
    Top = 80
  end
  object sdsEmpresa: TSQLDataSet
    CommandText = 'SELECT * FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 544
    Top = 120
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 576
    Top = 120
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 608
    Top = 120
    object cdsEmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object cdsEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object cdsEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cdsEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object cdsEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object cdsEmpresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object cdsEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object cdsEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object cdsEmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object cdsEmpresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object cdsEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object cdsEmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object cdsEmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object cdsEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object cdsEmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object cdsEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object cdsEmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object cdsEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object cdsEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object cdsEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object cdsEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object cdsEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cdsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsEmpresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cdsEmpresaTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object cdsEmpresaIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object cdsEmpresaCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object cdsEmpresaCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      FixedChar = True
    end
    object cdsEmpresaCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      FixedChar = True
      Size = 14
    end
    object cdsEmpresaCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
      FixedChar = True
      Size = 11
    end
    object cdsEmpresaCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaCONTADOR_END: TStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object cdsEmpresaCONTADOR_NUMEND: TStringField
      FieldName = 'CONTADOR_NUMEND'
      FixedChar = True
      Size = 7
    end
    object cdsEmpresaCONTADOR_COMPL: TStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object cdsEmpresaCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object cdsEmpresaCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 14
    end
    object cdsEmpresaCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 14
    end
    object cdsEmpresaCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object cdsEmpresaCONTADOR_COD_MUN: TStringField
      FieldName = 'CONTADOR_COD_MUN'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object cdsEmpresaINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object cdsEmpresaCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object cdsEmpresaINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object cdsEmpresaCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object cdsEmpresaCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object cdsEmpresaINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object cdsEmpresaINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object cdsEmpresaINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object cdsEmpresaBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object cdsEmpresaINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object cdsEmpresaCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object cdsEmpresaINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object cdsEmpresaNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object cdsEmpresaCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object cdsEmpresaINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object cdsEmpresaINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object cdsEmpresaINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object cdsEmpresaINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object cdsEmpresaCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object cdsEmpresaINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object cdsEmpresaINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object cdsEmpresaINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
    object cdsEmpresaINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
  end
  object sdsNFVenda: TSQLDataSet
    CommandText = 
      'SELECT NF.*, C.*, EC.*, V.CODMOVIMENTO '#13#10'   FROM NOTAFISCAL NF, ' +
      'CLIENTES C, ENDERECOCLIENTE EC, VENDA V, MOVIMENTO M'#13#10'WHERE NF.C' +
      'ODCLIENTE = C.CODCLIENTE'#13#10'      AND C.CODCLIENTE   = EC.CODCLIEN' +
      'TE'#13#10'      AND V.CODVENDA = NF.CODVENDA'#13#10'     AND V.CODMOVIMENTO ' +
      '= M.CODMOVIMENTO'#13#10'      AND NF.DTAEMISSAO BETWEEN :DTA1 AND :DTA' +
      '2'#13#10'     AND M.CODNATUREZA IN (12,15,16,20,21)'#13#10'      AND C.CODCL' +
      'IENTE > 0'#13#10'     '#13#10'order by NF.NOTASERIE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 136
    object sdsNFVendaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object sdsNFVendaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNFVendaNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object sdsNFVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNFVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object sdsNFVendaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object sdsNFVendaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNFVendaDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object sdsNFVendaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNFVendaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object sdsNFVendaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsNFVendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsNFVendaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object sdsNFVendaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object sdsNFVendaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNFVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsNFVendaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object sdsNFVendaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object sdsNFVendaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sdsNFVendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsNFVendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsNFVendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object sdsNFVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsNFVendaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sdsNFVendaCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 200
    end
    object sdsNFVendaCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 200
    end
    object sdsNFVendaCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object sdsNFVendaCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object sdsNFVendaCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object sdsNFVendaCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object sdsNFVendaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNFVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNFVendaFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object sdsNFVendaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsNFVendaREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object sdsNFVendaNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdsNFVendaPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsNFVendaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNFVendaEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdsNFVendaCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdsNFVendaUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNFVendaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object sdsNFVendaIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sdsNFVendaSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object sdsNFVendaPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object sdsNFVendaNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object sdsNFVendaPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object sdsNFVendaPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object sdsNFVendaVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object sdsNFVendaVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object sdsNFVendaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object sdsNFVendaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sdsNFVendaIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object sdsNFVendaXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object sdsNFVendaBCII: TFloatField
      FieldName = 'BCII'
    end
    object sdsNFVendaNOMEXML: TStringField
      FieldName = 'NOMEXML'
      Size = 60
    end
    object sdsNFVendaII: TFloatField
      FieldName = 'II'
    end
    object sdsNFVendaINDPAG: TIntegerField
      FieldName = 'INDPAG'
    end
    object sdsNFVendaCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object sdsNFVendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object sdsNFVendaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object sdsNFVendaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sdsNFVendaTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsNFVendaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsNFVendaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsNFVendaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsNFVendaRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sdsNFVendaSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sdsNFVendaREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sdsNFVendaLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sdsNFVendaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sdsNFVendaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsNFVendaSTATUS_1: TSmallintField
      FieldName = 'STATUS_1'
      Required = True
    end
    object sdsNFVendaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sdsNFVendaPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sdsNFVendaPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sdsNFVendaCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sdsNFVendaBASE_ICMS_1: TSmallintField
      FieldName = 'BASE_ICMS_1'
    end
    object sdsNFVendaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sdsNFVendaCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sdsNFVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsNFVendaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sdsNFVendaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sdsNFVendaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sdsNFVendaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sdsNFVendaCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sdsNFVendaEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sdsNFVendaEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sdsNFVendaDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sdsNFVendaGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sdsNFVendaSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object sdsNFVendaSERIE_1: TStringField
      FieldName = 'SERIE_1'
      Size = 4
    end
    object sdsNFVendaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsNFVendaCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object sdsNFVendaIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object sdsNFVendaN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sdsNFVendaMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object sdsNFVendaMARCA_1: TStringField
      FieldName = 'MARCA_1'
      Size = 60
    end
    object sdsNFVendaBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object sdsNFVendaBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object sdsNFVendaTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object sdsNFVendaCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sdsNFVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sdsNFVendaMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object sdsNFVendaANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object sdsNFVendaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsNFVendaPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object sdsNFVendaNUMERO_1: TIntegerField
      FieldName = 'NUMERO_1'
    end
    object sdsNFVendaDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sdsNFVendaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object sdsNFVendaSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsNFVendaRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object sdsNFVendaCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object sdsNFVendaPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object sdsNFVendaRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object sdsNFVendaCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object sdsNFVendaLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object sdsNFVendaTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object sdsNFVendaCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object sdsNFVendaUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsNFVendaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object sdsNFVendaCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object sdsNFVendaLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sdsNFVendaFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object sdsNFVendaLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object sdsNFVendaLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object sdsNFVendaTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object sdsNFVendaTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object sdsNFVendaINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object sdsNFVendaCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object sdsNFVendaRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object sdsNFVendaLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object sdsNFVendaTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object sdsNFVendaRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object sdsNFVendaCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object sdsNFVendaCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object sdsNFVendaDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object sdsNFVendaDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object sdsNFVendaDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sdsNFVendaESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sdsNFVendaFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object sdsNFVendaCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object sdsNFVendaCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object sdsNFVendaFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object sdsNFVendaCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object sdsNFVendaCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object sdsNFVendaVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object sdsNFVendaDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object sdsNFVendaCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object sdsNFVendaPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object sdsNFVendaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object sdsNFVendaDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sdsNFVendaCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sdsNFVendaID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sdsNFVendaCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object sdsNFVendaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaCFOP_1: TStringField
      FieldName = 'CFOP_1'
      FixedChar = True
      Size = 4
    end
    object sdsNFVendaCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object sdsNFVendaCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object sdsNFVendaVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object sdsNFVendaE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object sdsNFVendaCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object sdsNFVendaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object sdsNFVendaCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sdsNFVendaCODCLIENTE_2: TIntegerField
      FieldName = 'CODCLIENTE_2'
      Required = True
    end
    object sdsNFVendaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsNFVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsNFVendaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsNFVendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsNFVendaUF_1: TStringField
      FieldName = 'UF_1'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsNFVendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsNFVendaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object sdsNFVendaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object sdsNFVendaFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object sdsNFVendaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sdsNFVendaRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object sdsNFVendaTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object sdsNFVendaDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object sdsNFVendaDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sdsNFVendaDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object sdsNFVendaDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object sdsNFVendaDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object sdsNFVendaNUMERO_2: TStringField
      FieldName = 'NUMERO_2'
      Size = 5
    end
    object sdsNFVendaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsNFVendaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object sdsNFVendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
  end
  object dspNFVenda: TDataSetProvider
    DataSet = sdsNFVenda
    Left = 360
    Top = 136
  end
  object cdsNFVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspNFVenda'
    Left = 392
    Top = 136
    object cdsNFVendaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cdsNFVendaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNFVendaNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object cdsNFVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNFVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsNFVendaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object cdsNFVendaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNFVendaDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object cdsNFVendaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNFVendaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsNFVendaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNFVendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsNFVendaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object cdsNFVendaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cdsNFVendaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNFVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNFVendaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNFVendaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNFVendaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNFVendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsNFVendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsNFVendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cdsNFVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsNFVendaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNFVendaCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 200
    end
    object cdsNFVendaCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 200
    end
    object cdsNFVendaCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object cdsNFVendaCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object cdsNFVendaCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object cdsNFVendaCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object cdsNFVendaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNFVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNFVendaFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object cdsNFVendaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsNFVendaREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object cdsNFVendaNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsNFVendaPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object cdsNFVendaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNFVendaEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsNFVendaCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsNFVendaUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNFVendaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object cdsNFVendaIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsNFVendaSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object cdsNFVendaPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object cdsNFVendaNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object cdsNFVendaPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object cdsNFVendaPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object cdsNFVendaVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsNFVendaVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsNFVendaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object cdsNFVendaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cdsNFVendaIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object cdsNFVendaXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object cdsNFVendaBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsNFVendaNOMEXML: TStringField
      FieldName = 'NOMEXML'
      Size = 60
    end
    object cdsNFVendaII: TFloatField
      FieldName = 'II'
    end
    object cdsNFVendaINDPAG: TIntegerField
      FieldName = 'INDPAG'
    end
    object cdsNFVendaCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object cdsNFVendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object cdsNFVendaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object cdsNFVendaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsNFVendaTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsNFVendaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsNFVendaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsNFVendaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsNFVendaRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsNFVendaSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cdsNFVendaREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cdsNFVendaLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cdsNFVendaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cdsNFVendaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsNFVendaSTATUS_1: TSmallintField
      FieldName = 'STATUS_1'
      Required = True
    end
    object cdsNFVendaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cdsNFVendaPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cdsNFVendaPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cdsNFVendaCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cdsNFVendaBASE_ICMS_1: TSmallintField
      FieldName = 'BASE_ICMS_1'
    end
    object cdsNFVendaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cdsNFVendaCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cdsNFVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsNFVendaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cdsNFVendaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cdsNFVendaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cdsNFVendaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cdsNFVendaCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cdsNFVendaEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cdsNFVendaEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cdsNFVendaDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cdsNFVendaGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cdsNFVendaSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cdsNFVendaSERIE_1: TStringField
      FieldName = 'SERIE_1'
      Size = 4
    end
    object cdsNFVendaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsNFVendaCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cdsNFVendaIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object cdsNFVendaN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsNFVendaMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object cdsNFVendaMARCA_1: TStringField
      FieldName = 'MARCA_1'
      Size = 60
    end
    object cdsNFVendaBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object cdsNFVendaBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object cdsNFVendaTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object cdsNFVendaCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsNFVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsNFVendaMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cdsNFVendaANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object cdsNFVendaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsNFVendaPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object cdsNFVendaNUMERO_1: TIntegerField
      FieldName = 'NUMERO_1'
    end
    object cdsNFVendaDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsNFVendaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object cdsNFVendaSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsNFVendaRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object cdsNFVendaCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object cdsNFVendaPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cdsNFVendaRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object cdsNFVendaCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object cdsNFVendaLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object cdsNFVendaTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object cdsNFVendaCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object cdsNFVendaUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsNFVendaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object cdsNFVendaCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object cdsNFVendaLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object cdsNFVendaFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object cdsNFVendaLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object cdsNFVendaLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object cdsNFVendaTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object cdsNFVendaTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object cdsNFVendaINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object cdsNFVendaCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object cdsNFVendaRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object cdsNFVendaLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cdsNFVendaTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object cdsNFVendaRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object cdsNFVendaCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object cdsNFVendaCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object cdsNFVendaDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object cdsNFVendaDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object cdsNFVendaDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cdsNFVendaESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object cdsNFVendaFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object cdsNFVendaCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object cdsNFVendaCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object cdsNFVendaFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object cdsNFVendaCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object cdsNFVendaCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object cdsNFVendaVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object cdsNFVendaDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object cdsNFVendaCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object cdsNFVendaPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object cdsNFVendaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object cdsNFVendaDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object cdsNFVendaCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cdsNFVendaID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cdsNFVendaCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object cdsNFVendaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaCFOP_1: TStringField
      FieldName = 'CFOP_1'
      FixedChar = True
      Size = 4
    end
    object cdsNFVendaCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object cdsNFVendaCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object cdsNFVendaVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object cdsNFVendaE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsNFVendaCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object cdsNFVendaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object cdsNFVendaCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cdsNFVendaCODCLIENTE_2: TIntegerField
      FieldName = 'CODCLIENTE_2'
      Required = True
    end
    object cdsNFVendaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsNFVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsNFVendaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsNFVendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsNFVendaUF_1: TStringField
      FieldName = 'UF_1'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsNFVendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsNFVendaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cdsNFVendaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cdsNFVendaFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cdsNFVendaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cdsNFVendaRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cdsNFVendaTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cdsNFVendaDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cdsNFVendaDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cdsNFVendaDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cdsNFVendaDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsNFVendaDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsNFVendaNUMERO_2: TStringField
      FieldName = 'NUMERO_2'
      Size = 5
    end
    object cdsNFVendaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsNFVendaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsNFVendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
  end
  object sdsItens: TSQLDataSet
    CommandText = 
      'SELECT MOV.CODMOVIMENTO, MOV.DATAMOVIMENTO, MOV.CODCLIENTE, MOV.' +
      'CODNATUREZA, MOV.STATUS, MOV.CODUSUARIO, MOV.CODVENDEDOR, MOV.CO' +
      'DALMOXARIFADO, MOV.CODFORNECEDOR,'#13#10'DET.CODPRODUTO, DET.QUANTIDAD' +
      'E, DET.PRECO, DET.ICMS, '#13#10'DET.UN, DET.QTDE_ALT, DET.NOTAFISCAL, ' +
      'DET.DESCPRODUTO, DET.CST, DET.VALOR_ICMS, DET.VLR_BASE, DET.PORC' +
      'ENTAGENDESC, DET.ICMS_SUBST, DET.ICMS_SUBSTD, DET.VLR_BASEICMS, ' +
      'DET.PIPI, DET.VIPI, DET.CFOP, DET.FRETE, DET.BCFRETE, DET.STFRET' +
      'E, DET.BCSTFRETE, DET.ICMSFRETE, DET.CSOSN, DET.VALOR_DESCONTO, ' +
      'DET.VALOR_SEGURO, DET.VALOR_OUTROS, DET.OBS, DET.CODSOLICITACAO,' +
      ' DET.VALOR_PIS, DET.VALOR_COFINS, DET.II, DET.BCII, PRO.CODPRO, ' +
      'PRO.NCM, DET.CSTIPI, DET.CSTPIS, DET.CSTCOFINS, DET.PPIS, DET.PC' +
      'OFINS'#13#10'   FROM MOVIMENTO MOV, MOVIMENTODETALHE DET, PRODUTOS PRO' +
      #13#10'WHERE MOV.CODMOVIMENTO = DET.CODMOVIMENTO'#13#10'      AND PRO.CODPR' +
      'ODUTO     = DET.CODPRODUTO'#13#10'      AND MOV.CODMOVIMENTO = :PMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 168
  end
  object dspItens: TDataSetProvider
    DataSet = sdsItens
    Left = 360
    Top = 168
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspItens'
    Left = 393
    Top = 168
    object cdsItensCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsItensDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object cdsItensCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsItensCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object cdsItensSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsItensCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsItensCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cdsItensCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsItensCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsItensICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsItensUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsItensQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsItensNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object cdsItensDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsItensCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsItensVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object cdsItensPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
    end
    object cdsItensICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsItensICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object cdsItensVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object cdsItensPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object cdsItensVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object cdsItensCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsItensFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsItensBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object cdsItensSTFRETE: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object cdsItensBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object cdsItensICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object cdsItensCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsItensVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object cdsItensVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsItensVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object cdsItensOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object cdsItensCODSOLICITACAO: TIntegerField
      FieldName = 'CODSOLICITACAO'
    end
    object cdsItensVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsItensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsItensII: TFloatField
      FieldName = 'II'
    end
    object cdsItensBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsItensCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsItensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsItensPPIS: TFloatField
      FieldName = 'PPIS'
    end
    object cdsItensPCOFINS: TFloatField
      FieldName = 'PCOFINS'
    end
  end
  object sdsUnimed: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pdata1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'pdata2'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT DISTINCT UN.CODUN, UN.DESCRICAO '
      '   FROM UNIDADEMEDIDA UN, MOVIMENTO mov, MOVIMENTODETALHE DET'
      'WHERE UN.CODUN = DET.UN'
      '       AND mov.codmovimento = det.codmovimento'
      '       AND mov.DATAMOVIMENTO between :pdata1 and :pdata2')
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 208
  end
  object sdsMov: TSQLDataSet
    CommandText = 
      'select MIN(codmovimento), MAX(codmovimento) from MOVIMENTO '#13#10'  w' +
      'here  CODNATUREZA IN (4,15,12)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 96
    Top = 136
  end
  object dspMov: TDataSetProvider
    DataSet = sdsMov
    Options = [poAllowCommandText]
    Left = 96
    Top = 168
  end
  object cdsMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov'
    Left = 96
    Top = 200
  end
  object sdsCompra: TSQLDataSet
    CommandText = 
      'SELECT C.DATACOMPRA, C.NOTAFISCAL, C.VALOR_ICMS, C.VALOR_FRETE, ' +
      'C.VALOR_SEGURO, C.VALOR_IPI'#13#10', f.CODFORNECEDOR, f.RAZAOSOCIAL, f' +
      '.CNPJ, f.INSCESTADUAL, f.TIPOFIRMA, ef.LOGRADOURO, ef.BAIRRO, ef' +
      '.CIDADE, ef.CD_IBGE, ef.CEP'#13#10',ef.COMPLEMENTO, ef.DDD, ef.TELEFON' +
      'E, ef.NUMERO, ef.PAIS'#13#10', C.SERIE, C.VALOR, C.ICMS_ST, C.ICMS_BAS' +
      'E_ST, c.CODMOVIMENTO, c.CHAVENF'#13#10'    FROM COMPRA C, MOVIMENTO MO' +
      'V, FORNECEDOR f, ENDERECOFORNECEDOR ef'#13#10'   WHERE C.CODMOVIMENTO ' +
      '= MOV.CODMOVIMENTO '#13#10'     AND f.CODFORNECEDOR = c.CODFORNECEDOR'#13 +
      #10'     AND ef.CODFORNECEDOR = f.CODFORNECEDOR'#13#10'     AND ef.TIPOEN' +
      'D = 0  '#13#10'     AND MOV.CODNATUREZA = 4    '#13#10'     AND C.CODMOVIMEN' +
      'TO BETWEEN  :CODINI AND :CODFIM'#13#10'     AND C.DATACOMPRA      BETW' +
      'EEN :DTA_INI AND :DTA_FIM'#13#10'  ORDER BY F.CODFORNECEDOR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 200
    Top = 136
    object sdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object sdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sdsCompraRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsCompraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsCompraINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsCompraTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsCompraLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsCompraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsCompraCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsCompraCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsCompraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsCompraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsCompraDDD: TSmallintField
      FieldName = 'DDD'
    end
    object sdsCompraTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsCompraNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsCompraPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object sdsCompraSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsCompraICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
    end
    object sdsCompraICMS_BASE_ST: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object sdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sdsCompraCHAVENF: TStringField
      FieldName = 'CHAVENF'
      Size = 44
    end
  end
  object dspCompra: TDataSetProvider
    DataSet = sdsCompra
    Left = 200
    Top = 168
  end
  object cdsCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompra'
    Left = 200
    Top = 200
    object cdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object cdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsCompraRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsCompraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsCompraINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsCompraTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsCompraLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsCompraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsCompraCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsCompraCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsCompraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsCompraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsCompraDDD: TSmallintField
      FieldName = 'DDD'
    end
    object cdsCompraTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsCompraNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsCompraPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsCompraSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsCompraICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
    end
    object cdsCompraICMS_BASE_ST: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object cdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsCompraCHAVENF: TStringField
      FieldName = 'CHAVENF'
      Size = 44
    end
  end
  object sdsCompraDet: TSQLDataSet
    CommandText = 
      'SELECT  r.CODPRODUTO, r.QUANTIDADE, r.PRECO, r.ICMS, r.UN, r.QTD' +
      'E_ALT, r.DESCPRODUTO, '#13#10' r.CST, r.VALOR_ICMS, r.VLR_BASE,  r.ICM' +
      'S_SUBST, r.ICMS_SUBSTD, r.VLR_BASEICMS, r.PIPI, r.VIPI, r.CFOP, ' +
      'r.FRETE, r.BCFRETE, r.STFRETE, r.BCSTFRETE, r.ICMSFRETE, r.CSOSN' +
      ', r.VALOR_SEGURO, '#13#10'r.VALOR_OUTROS,  r.VALOR_PIS, r.VALOR_COFINS' +
      ', r.II, r.BCII, r.CSTIPI, r.CSTPIS, r.CSTCOFINS, r.PPIS, r.PCOFI' +
      'NS'#13#10'    FROM MOVIMENTODETALHE r'#13#10'   WHERE  R.CODMOVIMENTO =  :CO' +
      'DINI '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 232
    Top = 136
    object sdsCompraDetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsCompraDetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsCompraDetPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sdsCompraDetICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsCompraDetUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object sdsCompraDetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object sdsCompraDetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsCompraDetCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object sdsCompraDetVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsCompraDetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object sdsCompraDetICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object sdsCompraDetICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object sdsCompraDetVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object sdsCompraDetPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object sdsCompraDetVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object sdsCompraDetCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object sdsCompraDetFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object sdsCompraDetBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object sdsCompraDetSTFRETE: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object sdsCompraDetBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object sdsCompraDetICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object sdsCompraDetCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sdsCompraDetVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsCompraDetVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object sdsCompraDetVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object sdsCompraDetVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object sdsCompraDetII: TFloatField
      FieldName = 'II'
    end
    object sdsCompraDetBCII: TFloatField
      FieldName = 'BCII'
    end
    object sdsCompraDetCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsCompraDetCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsCompraDetCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsCompraDetPPIS: TFloatField
      FieldName = 'PPIS'
    end
    object sdsCompraDetPCOFINS: TFloatField
      FieldName = 'PCOFINS'
    end
  end
  object dspCompraDet: TDataSetProvider
    DataSet = sdsCompraDet
    Left = 232
    Top = 168
  end
  object cdsCompraDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompraDet'
    Left = 232
    Top = 200
    object cdsCompraDetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsCompraDetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsCompraDetPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsCompraDetICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsCompraDetUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsCompraDetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsCompraDetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsCompraDetCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsCompraDetVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsCompraDetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object cdsCompraDetICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsCompraDetICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object cdsCompraDetVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object cdsCompraDetPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object cdsCompraDetVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object cdsCompraDetCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsCompraDetFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsCompraDetBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object cdsCompraDetSTFRETE: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object cdsCompraDetBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object cdsCompraDetICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object cdsCompraDetCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsCompraDetVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsCompraDetVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object cdsCompraDetVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsCompraDetVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsCompraDetII: TFloatField
      FieldName = 'II'
    end
    object cdsCompraDetBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsCompraDetCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsCompraDetCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsCompraDetCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsCompraDetPPIS: TFloatField
      FieldName = 'PPIS'
    end
    object cdsCompraDetPCOFINS: TFloatField
      FieldName = 'PCOFINS'
    end
  end
  object sdsTotal: TSQLDataSet
    CommandText = 
      'SELECT SUM(MD.VIPI) IPI, SUM(MD.VALOR_PIS) PIS, SUM(MD.VALOR_COF' +
      'INS) COFINS '#13#10'   FROM COMPRA C, MOVIMENTODETALHE MD   '#13#10'WHERE md' +
      '.CODMOVIMENTO = c.CODMOVIMENTO      '#13#10'     AND C.CODMOVIMENTO BE' +
      'TWEEN  :CODINI AND :CODFIM'#13#10'     AND C.DATACOMPRA      BETWEEN :' +
      'DTA_INI AND :DTA_FIM'#13#10' '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 496
    Top = 160
    object sdsTotalIPI: TFloatField
      FieldName = 'IPI'
      ReadOnly = True
    end
    object sdsTotalPIS: TFloatField
      FieldName = 'PIS'
      ReadOnly = True
    end
    object sdsTotalCOFINS: TFloatField
      FieldName = 'COFINS'
      ReadOnly = True
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = '*.txt'
    Left = 712
    Top = 120
  end
  object sdsC190: TSQLDataSet
    CommandText = 
      'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM((r.QUANTIDADE * r.VLR_BAS' +
      'E))  VLR_OPERACAO,  '#13#10'r.ICMS,  r.CST,  '#13#10'SUM(r.ICMS_SUBST) ICMS_' +
      'ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, SUM(r.VLR_BASEICMS) VLR' +
      '_BASE_ICMS, '#13#10'SUM(r.VIPI) VLR_IPI, r.CFOP'#13#10'    FROM COMPRA C,  M' +
      'OVIMENTO MOV, MOVIMENTODETALHE r'#13#10'   WHERE C.CODMOVIMENTO = MOV.' +
      'CODMOVIMENTO'#13#10'         AND C.CODMOVIMENTO = r.CODMOVIMENTO'#13#10'    ' +
      '     AND MOV.CODNATUREZA = 4'#13#10'         AND C.CODMOVIMENTO =  :CO' +
      'DINI '#13#10'   GROUP BY r.CFOP, r.ICMS, r.CST'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 264
    Top = 136
  end
  object dspC190: TDataSetProvider
    DataSet = sdsC190
    Left = 264
    Top = 168
  end
  object cdsC190: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    ProviderName = 'dspC190'
    Left = 264
    Top = 200
    object cdsC190VLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object cdsC190VLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object cdsC190ICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object cdsC190CST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 5
    end
    object cdsC190ICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object cdsC190VLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object cdsC190VLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object cdsC190VLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object cdsC190CFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object sdsEmpS: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT C.RAZAOSOCIAL, C.CNPJ, C.INSCESTADUAL,   C.TIPOF' +
      'IRMA,  EC.* '#13#10'FROM NOTAFISCAL NF, CLIENTES C, ENDERECOCLIENTE EC' +
      ', VENDA V, MOVIMENTO M'#13#10'WHERE NF.CODCLIENTE = C.CODCLIENTE'#13#10'    ' +
      '  AND C.CODCLIENTE   = EC.CODCLIENTE'#13#10'      AND V.CODVENDA = NF.' +
      'CODVENDA'#13#10'      AND V.CODMOVIMENTO = M.CODMOVIMENTO '#13#10'      AND ' +
      'M.CODNATUREZA IN (12, 15, 16, 20, 21)'#13#10'      AND NF.DTAEMISSAO B' +
      'ETWEEN :DTA1 AND :DTA2'#13#10'      AND C.CODCLIENTE > 0'#13#10'      AND EC' +
      '.TIPOEND = 0'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 264
    object sdsEmpSRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsEmpSCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsEmpSINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsEmpSTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsEmpSCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sdsEmpSCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsEmpSLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsEmpSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsEmpSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsEmpSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsEmpSUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsEmpSCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsEmpSTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsEmpSTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object sdsEmpSTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object sdsEmpSFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object sdsEmpSE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sdsEmpSRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object sdsEmpSTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object sdsEmpSDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object sdsEmpSDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sdsEmpSDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object sdsEmpSDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object sdsEmpSDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object sdsEmpSNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsEmpSCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsEmpSPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspEmpS: TDataSetProvider
    DataSet = sdsEmpS
    Left = 304
    Top = 264
  end
  object cdsEmpS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpS'
    Left = 336
    Top = 264
    object cdsEmpSRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsEmpSCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsEmpSINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsEmpSTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsEmpSCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cdsEmpSCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsEmpSLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsEmpSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsEmpSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEmpSUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEmpSCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpSTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsEmpSTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cdsEmpSTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cdsEmpSFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cdsEmpSE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cdsEmpSRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cdsEmpSTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cdsEmpSDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cdsEmpSDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cdsEmpSDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cdsEmpSDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsEmpSDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsEmpSNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsEmpSCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsEmpSPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object cdsEmpE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpE'
    Left = 336
    Top = 296
    object cdsEmpECODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsEmpERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsEmpECNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsEmpEINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsEmpETIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsEmpELOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsEmpEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEmpECD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsEmpECEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsEmpEDDD: TSmallintField
      FieldName = 'DDD'
    end
    object cdsEmpETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsEmpENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsEmpEPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspEmpE: TDataSetProvider
    DataSet = sdsEmpE
    Left = 304
    Top = 296
  end
  object sdsEmpE: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT f.CODFORNECEDOR, f.RAZAOSOCIAL, f.CNPJ, f.INSCES' +
      'TADUAL, f.TIPOFIRMA, ef.LOGRADOURO, ef.BAIRRO, ef.CIDADE, ef.CD_' +
      'IBGE, ef.CEP'#13#10',ef.COMPLEMENTO, ef.DDD, ef.TELEFONE, ef.NUMERO, e' +
      'f.PAIS'#13#10'    FROM COMPRA C,  FORNECEDOR f, ENDERECOFORNECEDOR ef,' +
      ' MOVIMENTO M'#13#10'   WHERE f.CODFORNECEDOR = c.CODFORNECEDOR'#13#10'     A' +
      'ND ef.CODFORNECEDOR = f.CODFORNECEDOR'#13#10'     AND C.CODMOVIMENTO =' +
      ' M.CODMOVIMENTO '#13#10'      AND M.CODNATUREZA = 4'#13#10'     AND ef.TIPOE' +
      'ND = 0      '#13#10'     AND C.DATACOMPRA BETWEEN :DTA_INI AND :DTA_FI' +
      'M'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 296
    object sdsEmpECODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sdsEmpERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsEmpECNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsEmpEINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsEmpETIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsEmpELOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsEmpEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsEmpECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsEmpECD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsEmpECEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsEmpECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsEmpEDDD: TSmallintField
      FieldName = 'DDD'
    end
    object sdsEmpETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsEmpENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsEmpEPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object sdsProduto: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT DET.CODPRODUTO, PRO.CODPRO, PRO.NCM, PRO.PRODUTO' +
      ', DET.UN'#13#10'   FROM MOVIMENTO MOV, MOVIMENTODETALHE DET, PRODUTOS ' +
      'PRO'#13#10'WHERE MOV.CODMOVIMENTO = DET.CODMOVIMENTO'#13#10'      AND PRO.CO' +
      'DPRODUTO     = DET.CODPRODUTO'#13#10'     '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 328
    object sdsProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object sdsProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object sdsProdutoUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Options = [poAllowCommandText]
    Left = 304
    Top = 328
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 337
    Top = 328
    object cdsProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsProdutoUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
  end
  object sdsVC190: TSQLDataSet
    CommandText = 
      'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM(r.FRETE + r.VALOR_SEGURO ' +
      '+ r.VIPI + r.VALOR_OUTROS +  '#13#10'r.ICMS_SUBST + (r.QUANTIDADE * r.' +
      'VLR_BASE))  VLR_OPERACAO,  '#13#10'r.ICMS,  r.CST, '#13#10'SUM(r.ICMS_SUBST)' +
      ' ICMS_ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, SUM(r.VLR_BASEICM' +
      'S) VLR_BASE_ICMS, '#13#10'SUM(r.VIPI) VLR_IPI, r.CFOP'#13#10'    FROM NOTAFI' +
      'SCAL NF, VENDA v, MOVIMENTO m, MOVIMENTODETALHE r'#13#10'   WHERE NF.C' +
      'ODVENDA = v.CODVENDA'#13#10'     AND M.CODMOVIMENTO = v.CODMOVIMENTO '#13 +
      #10'     AND m.CODMOVIMENTO = r.CODMOVIMENTO'#13#10'     AND m.CODNATUREZ' +
      'A in (12, 15)'#13#10'     AND M.CODMOVIMENTO =  :CODINI '#13#10'   GROUP BY ' +
      'r.CFOP, r.ICMS, r.CST'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 536
    Top = 272
  end
  object dspVC190: TDataSetProvider
    DataSet = sdsVC190
    Left = 536
    Top = 304
  end
  object cdsVC190: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    ProviderName = 'dspVC190'
    Left = 536
    Top = 336
    object cdsVC190VLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object cdsVC190VLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object cdsVC190ICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object cdsVC190CST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 5
    end
    object cdsVC190ICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object cdsVC190VLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object cdsVC190VLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object cdsVC190VLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object cdsVC190CFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object sqlProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 792
    Top = 120
  end
  object sqlM400: TSQLDataSet
    CommandText = 
      'select sum(md.VLR_BASE * md.QUANTIDADE) , md.CSTPIS'#13#10'  from NOTA' +
      'FISCAL NF, VENDA V, MOVIMENTO m , MOVIMENTODETALHE md '#13#10' where n' +
      'f.CODVENDA = v.CODVENDA '#13#10'   and v.CODMOVIMENTO = m.CODMOVIMENTO' +
      #13#10'   and m.CODMOVIMENTO = md.CODMOVIMENTO '#13#10'   and nf.DTAEMISSAO' +
      ' between :DTA1 and :DTA2'#13#10'   and (md.CSTPIS in ('#39'06'#39', '#39'05'#39', '#39'04'#39 +
      ', '#39'07'#39', '#39'08'#39', '#39'09'#39')) and (md.PPIS = 0) '#13#10'   and (m.CODNATUREZA i' +
      'n (12, 15))'#13#10'   and nf.PROTOCOLOCANC is null '#13#10' group by md.CSTP' +
      'IS '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 680
    Top = 272
  end
  object dspM400: TDataSetProvider
    DataSet = sqlM400
    Options = [poAllowCommandText]
    Left = 680
    Top = 304
  end
  object cdsM: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspM400'
    Left = 680
    Top = 336
  end
end
