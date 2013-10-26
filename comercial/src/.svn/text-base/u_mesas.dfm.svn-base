object F_MESAS: TF_MESAS
  Left = 388
  Top = 240
  Width = 537
  Height = 476
  Caption = 'Cadastro de Mesas / Comandas'
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
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 56
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 7
      Top = 6
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 152
      Top = 6
      Width = 28
      Height = 16
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Edit1: TEdit
      Left = 7
      Top = 23
      Width = 142
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 381
      Top = 13
      Width = 137
      Height = 33
      Columns = 2
      Items.Strings = (
        'ATIVO'
        'INATIVO')
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
    object ComboBox1: TComboBox
      Left = 154
      Top = 23
      Width = 218
      Height = 24
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'MESA'
        'COMANDA')
    end
  end
  object Panel1: TPanel
    Left = 408
    Top = 56
    Width = 113
    Height = 382
    Align = alRight
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 14
      Top = 7
      Width = 90
      Height = 31
      Caption = 'INCLUIR'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 14
      Top = 47
      Width = 90
      Height = 31
      Caption = 'EXCLUIR'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 15
      Top = 87
      Width = 90
      Height = 31
      Caption = 'ALTERAR'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object chk1: TCheckBox
      Left = 4
      Top = 360
      Width = 107
      Height = 17
      Caption = 'Bloquear ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = chk1Click
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 56
    Width = 408
    Height = 382
    Align = alClient
    BorderStyle = bsNone
    DataSource = d_mesas
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
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
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Descri'#231#227'o'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Situa'#231#227'o'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOQUEADO'
        Title.Caption = 'Bloqueada ?'
        Width = 65
        Visible = True
      end>
  end
  object s_mesas: TSQLDataSet
    CommandText = 'select * from CLIENTES '#13#10'where SEGMENTO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 112
    Top = 224
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
  object p_mesas: TDataSetProvider
    DataSet = s_mesas
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 224
  end
  object c_mesas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p_mesas'
    Left = 192
    Top = 224
    object c_mesasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object c_mesasNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object c_mesasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object c_mesasCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object c_mesasTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object c_mesasCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object c_mesasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object c_mesasINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object c_mesasRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object c_mesasSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object c_mesasREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object c_mesasLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object c_mesasDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object c_mesasCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object c_mesasSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object c_mesasHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object c_mesasPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object c_mesasPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object c_mesasCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object c_mesasBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object c_mesasDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object c_mesasCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object c_mesasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object c_mesasTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object c_mesasDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object c_mesasNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object c_mesasSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object c_mesasFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object c_mesasGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object c_mesasCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object c_mesasEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object c_mesasEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object c_mesasDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object c_mesasGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object c_mesasGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object c_mesasGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object c_mesasEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object c_mesasDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object c_mesasSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object c_mesasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object c_mesasRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object c_mesasCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object c_mesasIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object c_mesasN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object c_mesasMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object c_mesasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object c_mesasBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object c_mesasBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object c_mesasTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object c_mesasCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object c_mesasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object c_mesasMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object c_mesasANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object c_mesasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object c_mesasPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object c_mesasNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object c_mesasDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object c_mesasANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object c_mesasSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object c_mesasRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object c_mesasCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object c_mesasPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object c_mesasRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object c_mesasCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object c_mesasLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object c_mesasTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object c_mesasCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object c_mesasUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object c_mesasNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object c_mesasCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object c_mesasLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object c_mesasFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object c_mesasLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object c_mesasLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object c_mesasTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object c_mesasTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object c_mesasINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object c_mesasCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object c_mesasRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object c_mesasLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object c_mesasTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object c_mesasRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object c_mesasCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object c_mesasCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object c_mesasCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object c_mesasCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object c_mesasCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object c_mesasDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object c_mesasDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object c_mesasDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object c_mesasESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object c_mesasCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object c_mesasFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object c_mesasCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object c_mesasCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object c_mesasFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object c_mesasCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object c_mesasCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object c_mesasVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object c_mesasDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object c_mesasCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object c_mesasPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object c_mesasFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object c_mesasDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object c_mesasCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object c_mesasID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object c_mesasCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object c_mesasBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object c_mesasBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object c_mesasCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object c_mesasCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
  end
  object d_mesas: TDataSource
    DataSet = c_mesas
    Left = 232
    Top = 224
  end
end
