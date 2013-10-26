object F_MudaMesa: TF_MudaMesa
  Left = 401
  Top = 279
  Width = 362
  Height = 205
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 178
    Align = alClient
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object JvLabel1: TJvLabel
      Left = 24
      Top = 32
      Width = 97
      Height = 24
      Caption = 'Mesa Atual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      ShadowColor = clWindow
      ShadowSize = 2
      Transparent = True
      HintColor = clBlack
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -19
      HotTrackFont.Name = 'Cooper Black'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 174
      Top = 32
      Width = 98
      Height = 24
      Caption = 'Mesa Nova'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      ShadowColor = clWindow
      ShadowSize = 2
      Transparent = True
      HintColor = clBlack
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -19
      HotTrackFont.Name = 'Cooper Black'
      HotTrackFont.Style = []
    end
    object Edit1: TEdit
      Left = 24
      Top = 56
      Width = 147
      Height = 32
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 174
      Top = 56
      Width = 151
      Height = 32
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 1
      Text = 'ComboBox1'
    end
    object OK: TBitBtn
      Left = 72
      Top = 128
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
      OnClick = OKClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 192
      Top = 128
      Width = 75
      Height = 25
      TabOrder = 3
      Kind = bkCancel
    end
  end
  object s_mesas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p_mesas'
    Left = 236
    Top = 88
    object s_mesasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object s_mesasNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object s_mesasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object s_mesasCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object s_mesasTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object s_mesasCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object s_mesasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object s_mesasINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object s_mesasRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object s_mesasSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object s_mesasREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object s_mesasLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object s_mesasDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object s_mesasCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object s_mesasSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object s_mesasHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object s_mesasPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object s_mesasPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object s_mesasCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object s_mesasBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object s_mesasDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object s_mesasCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object s_mesasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object s_mesasTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object s_mesasDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object s_mesasNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object s_mesasSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object s_mesasFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object s_mesasGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object s_mesasCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object s_mesasEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object s_mesasEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object s_mesasDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object s_mesasGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object s_mesasGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object s_mesasGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object s_mesasEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object s_mesasDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object s_mesasSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object s_mesasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object s_mesasRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object s_mesasCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object s_mesasIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object s_mesasN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object s_mesasMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object s_mesasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object s_mesasBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object s_mesasBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object s_mesasTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object s_mesasCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object s_mesasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object s_mesasMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object s_mesasANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object s_mesasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object s_mesasPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object s_mesasNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object s_mesasDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object s_mesasANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object s_mesasSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object s_mesasRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object s_mesasCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object s_mesasPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object s_mesasRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object s_mesasCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object s_mesasLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object s_mesasTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object s_mesasCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object s_mesasUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object s_mesasNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object s_mesasCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object s_mesasLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object s_mesasFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object s_mesasLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object s_mesasLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object s_mesasTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object s_mesasTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object s_mesasINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object s_mesasCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object s_mesasRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object s_mesasLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object s_mesasTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object s_mesasRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object s_mesasCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object s_mesasCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object s_mesasCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object s_mesasCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object s_mesasCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object s_mesasDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object s_mesasDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object s_mesasDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object s_mesasESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object s_mesasCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object s_mesasFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object s_mesasCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object s_mesasCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object s_mesasFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object s_mesasCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object s_mesasCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object s_mesasVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object s_mesasDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object s_mesasCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object s_mesasPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object s_mesasFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object s_mesasDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object s_mesasCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object s_mesasID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object s_mesasCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object s_mesasBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object s_mesasBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object s_mesasCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object s_mesasCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
  end
  object sql_mesas: TSQLDataSet
    CommandText = 'select * from CLIENTES '#13#10'where SEGMENTO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 160
    Top = 88
    object sql_mesasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sql_mesasNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sql_mesasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sql_mesasCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sql_mesasTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sql_mesasCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sql_mesasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sql_mesasINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sql_mesasRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sql_mesasSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sql_mesasREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sql_mesasLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sql_mesasDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sql_mesasCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sql_mesasSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sql_mesasHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sql_mesasPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sql_mesasPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sql_mesasCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sql_mesasBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object sql_mesasDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sql_mesasCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sql_mesasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sql_mesasTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sql_mesasDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sql_mesasNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sql_mesasSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sql_mesasFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sql_mesasGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sql_mesasCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sql_mesasEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sql_mesasEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sql_mesasDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sql_mesasGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sql_mesasGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sql_mesasGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sql_mesasEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sql_mesasDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sql_mesasSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object sql_mesasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object sql_mesasRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sql_mesasCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object sql_mesasIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object sql_mesasN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sql_mesasMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object sql_mesasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object sql_mesasBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object sql_mesasBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object sql_mesasTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object sql_mesasCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sql_mesasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sql_mesasMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object sql_mesasANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object sql_mesasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sql_mesasPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object sql_mesasNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sql_mesasDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sql_mesasANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object sql_mesasSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sql_mesasRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object sql_mesasCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object sql_mesasPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object sql_mesasRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object sql_mesasCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object sql_mesasLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object sql_mesasTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object sql_mesasCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object sql_mesasUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sql_mesasNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object sql_mesasCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object sql_mesasLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sql_mesasFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object sql_mesasLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object sql_mesasLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object sql_mesasTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object sql_mesasTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object sql_mesasINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object sql_mesasCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object sql_mesasRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object sql_mesasLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object sql_mesasTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object sql_mesasRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object sql_mesasCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object sql_mesasCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object sql_mesasCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object sql_mesasCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object sql_mesasCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object sql_mesasDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object sql_mesasDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object sql_mesasDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sql_mesasESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sql_mesasCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sql_mesasFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object sql_mesasCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object sql_mesasCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object sql_mesasFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object sql_mesasCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object sql_mesasCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object sql_mesasVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object sql_mesasDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object sql_mesasCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object sql_mesasPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object sql_mesasFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object sql_mesasDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sql_mesasCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sql_mesasID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sql_mesasCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object sql_mesasBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object sql_mesasBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object sql_mesasCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object sql_mesasCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
  end
  object p_mesas: TDataSetProvider
    DataSet = sql_mesas
    Left = 196
    Top = 88
  end
end
