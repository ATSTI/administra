inherited fCliente1: TfCliente1
  Left = 350
  Top = 122
  Width = 746
  Height = 606
  Caption = 'Cadastro Cliente'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 738
    Height = 33
    TabOrder = 5
  end
  inherited MMJPanel2: TMMJPanel
    Top = 528
    Width = 738
    Font.Height = -13
    ParentFont = False
    TabOrder = 6
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object rgTipo: TRadioGroup [2]
    Left = 0
    Top = 34
    Width = 81
    Height = 77
    Caption = 'Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Fisica'
      'Juridica')
    ParentFont = False
    TabOrder = 0
    OnClick = rgTipoClick
  end
  object gbNome: TGroupBox [3]
    Left = 83
    Top = 34
    Width = 646
    Height = 77
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblNome: TLabel
      Left = 6
      Top = 19
      Width = 37
      Height = 16
      Caption = 'Nome'
    end
    object lblRazao: TLabel
      Left = 6
      Top = 51
      Width = 47
      Height = 16
      Caption = 'Apelido'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 16
      Width = 530
      Height = 24
      DataField = 'RAZAOSOCIAL'
      DataSource = DtSrc
      TabOrder = 0
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 48
      Width = 530
      Height = 24
      DataField = 'NOMECLIENTE'
      DataSource = DtSrc
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox2: TGroupBox [4]
    Left = 0
    Top = 111
    Width = 729
    Height = 63
    Caption = 'Documentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lblCnpj: TLabel
      Left = 12
      Top = 16
      Width = 26
      Height = 16
      Caption = 'CPF'
    end
    object lblIE: TLabel
      Left = 225
      Top = 16
      Width = 26
      Height = 16
      Caption = 'R.G.'
    end
    object lblOrgaoEmissor: TLabel
      Left = 385
      Top = 16
      Width = 90
      Height = 16
      Caption = 'Org'#227'o Emissor'
    end
    object Label80: TLabel
      Left = 507
      Top = 16
      Width = 67
      Height = 16
      Caption = 'Tipo Fiscal'
    end
    object DBEdit3: TDBEdit
      Left = 10
      Top = 34
      Width = 207
      Height = 24
      DataField = 'CNPJ'
      DataSource = DtSrc
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 223
      Top = 34
      Width = 155
      Height = 24
      DataField = 'INSCESTADUAL'
      DataSource = DtSrc
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 383
      Top = 34
      Width = 118
      Height = 24
      DataField = 'RG'
      DataSource = DtSrc
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object cbTipoFiscal: TDBLookupComboBox
      Left = 508
      Top = 34
      Width = 193
      Height = 24
      DataField = 'CODFISCAL'
      DataSource = DtSrc
      KeyField = 'CODFISCAL'
      ListField = 'DESCRICAO'
      ListSource = DtSrcTFiscal
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox [5]
    Left = -1
    Top = 174
    Width = 730
    Height = 99
    Caption = 'Outras Informa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 14
      Top = 22
      Width = 46
      Height = 16
      Caption = 'Contato'
      FocusControl = btnCancelar
    end
    object Label54: TLabel
      Left = 9
      Top = 48
      Width = 123
      Height = 16
      Caption = 'Data de Nascimento'
    end
    object Label55: TLabel
      Left = 146
      Top = 48
      Width = 144
      Height = 16
      Caption = 'Referencias Comerciais'
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 20
      Width = 337
      Height = 24
      DataField = 'CONTATO'
      DataSource = DtSrc
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object rgSitCad: TRadioGroup
      Left = 420
      Top = 9
      Width = 282
      Height = 38
      Caption = 'Situa'#231#227'o do Cadastro'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Bloqueado')
      TabOrder = 1
      OnClick = rgSitCadClick
    end
    object DBEdit48: TDBEdit
      Left = 9
      Top = 64
      Width = 131
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DATANASC'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit49: TDBEdit
      Left = 148
      Top = 64
      Width = 551
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'MARCA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox4: TGroupBox [6]
    Left = 0
    Top = 273
    Width = 729
    Height = 245
    Align = alCustom
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label2: TLabel
      Left = 10
      Top = 19
      Width = 79
      Height = 16
      Caption = 'Logradouro .:'
    end
    object Label3: TLabel
      Left = 585
      Top = 12
      Width = 54
      Height = 16
      Caption = 'N'#250'mero.:'
    end
    object Label4: TLabel
      Left = 10
      Top = 65
      Width = 42
      Height = 16
      Caption = 'Bairro.:'
    end
    object Label5: TLabel
      Left = 377
      Top = 63
      Width = 90
      Height = 16
      Caption = 'Complemento.:'
    end
    object Label6: TLabel
      Left = 10
      Top = 111
      Width = 50
      Height = 16
      Caption = 'Cidade.:'
    end
    object Label7: TLabel
      Left = 402
      Top = 111
      Width = 24
      Height = 16
      Caption = 'UF.:'
    end
    object Label8: TLabel
      Left = 448
      Top = 111
      Width = 31
      Height = 16
      Caption = 'Cep.:'
    end
    object Label9: TLabel
      Left = 579
      Top = 111
      Width = 68
      Height = 16
      Caption = 'C'#243'd. IBGE.:'
    end
    object Label11: TLabel
      Left = 11
      Top = 167
      Width = 37
      Height = 16
      Caption = 'Fone :'
    end
    object Label12: TLabel
      Left = 10
      Top = 207
      Width = 40
      Height = 16
      Caption = 'Email.:'
    end
    object Label14: TLabel
      Left = 238
      Top = 167
      Width = 34
      Height = 16
      Caption = 'Fone:'
    end
    object Label16: TLabel
      Left = 489
      Top = 167
      Width = 37
      Height = 16
      Caption = 'Fone :'
    end
    object BitBtn1: TBitBtn
      Left = 368
      Top = 130
      Width = 27
      Height = 25
      Caption = '...'
      TabOrder = 15
      OnClick = BitBtn1Click
    end
    object DBEdit7: TDBEdit
      Left = 10
      Top = 36
      Width = 566
      Height = 24
      DataField = 'LOGRADOURO'
      DataSource = Dtsrc_e
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 585
      Top = 36
      Width = 114
      Height = 24
      DataField = 'NUMERO'
      DataSource = Dtsrc_e
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 9
      Top = 82
      Width = 360
      Height = 24
      DataField = 'BAIRRO'
      DataSource = Dtsrc_e
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 377
      Top = 82
      Width = 322
      Height = 24
      DataField = 'COMPLEMENTO'
      DataSource = Dtsrc_e
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 8
      Top = 130
      Width = 360
      Height = 24
      DataField = 'CIDADE'
      DataSource = Dtsrc_e
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 403
      Top = 130
      Width = 32
      Height = 24
      DataField = 'UF'
      DataSource = Dtsrc_e
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 448
      Top = 130
      Width = 123
      Height = 24
      DataField = 'CEP'
      DataSource = Dtsrc_e
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 579
      Top = 130
      Width = 119
      Height = 24
      DataField = 'CD_IBGE'
      DataSource = Dtsrc_e
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object DBEdit15: TDBEdit
      Left = 57
      Top = 167
      Width = 37
      Height = 24
      DataField = 'DDD'
      DataSource = Dtsrc_e
      TabOrder = 8
      OnKeyPress = FormKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 96
      Top = 167
      Width = 111
      Height = 24
      DataField = 'TELEFONE'
      DataSource = Dtsrc_e
      TabOrder = 9
      OnKeyPress = FormKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 56
      Top = 204
      Width = 642
      Height = 24
      DataField = 'E_MAIL'
      DataSource = Dtsrc_e
      TabOrder = 14
      OnKeyPress = FormKeyPress
    end
    object DBEdit18: TDBEdit
      Left = 278
      Top = 167
      Width = 36
      Height = 24
      DataField = 'DDD1'
      DataSource = Dtsrc_e
      TabOrder = 10
      OnKeyPress = FormKeyPress
    end
    object DBEdit19: TDBEdit
      Left = 323
      Top = 167
      Width = 112
      Height = 24
      DataField = 'TELEFONE1'
      DataSource = Dtsrc_e
      TabOrder = 11
      OnKeyPress = FormKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 534
      Top = 167
      Width = 36
      Height = 24
      DataField = 'DDD2'
      DataSource = Dtsrc_e
      TabOrder = 12
      OnKeyPress = FormKeyPress
    end
    object DBEdit21: TDBEdit
      Left = 580
      Top = 167
      Width = 118
      Height = 24
      DataField = 'TELEFONE2'
      DataSource = Dtsrc_e
      TabOrder = 13
      OnKeyPress = FormKeyPress
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_cli
  end
  object cds_cli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cli'
    Left = 416
    Top = 8
    object cds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000000'
    end
    object cds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object cds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cds_cliPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cds_cliCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cds_cliCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cds_cliCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object sds_cli: TSQLDataSet
    CommandText = 
      'select cli.*'#13#10'        , banc.BANCO'#13#10'        , usu.NOMEUSUARIO '#13#10 +
      'from CLIENTES cli '#13#10'left outer join BANCO banc on banc.CODBANCO=' +
      'cli.CODBANCO '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = c' +
      'li.CODUSUARIO '#13#10'where CODCLIENTE=:pCODCLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 8
    object sds_cliCODICLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object sds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object sds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sds_cliSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sds_cliCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sds_cliCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object sds_cliCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dsp_cli: TDataSetProvider
    DataSet = sds_cli
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 8
  end
  object sqlLocate: TSQLDataSet
    CommandText = 'select NOMECLIENTE  from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 95
    Top = 7
    object sqlLocateNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object dspLocate: TDataSetProvider
    DataSet = sqlLocate
    UpdateMode = upWhereKeyOnly
    Left = 127
    Top = 7
  end
  object cdsLocate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocate'
    Left = 159
    Top = 6
    object cdsLocateNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object Dtsrc_e: TDataSource
    DataSet = cds_CliEnd
    OnStateChange = Dtsrc_eStateChange
    Left = 520
    Top = 288
  end
  object cds_CliEnd: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CliEnd'
    OnNewRecord = cds_CliEndNewRecord
    Left = 479
    Top = 286
    object cds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_CliEndCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_CliEndUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cds_CliEndCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cds_CliEndCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cds_CliEndCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_CliEndCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cds_CliEndFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cds_CliEndE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cds_CliEndRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cds_CliEndTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cds_CliEndDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cds_CliEndDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cds_CliEndDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cds_CliEndDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cds_CliEndDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cds_CliEndCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cds_CliEndPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cds_CliEndTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_CliEndTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_CliEndTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
  end
  object dsp_CliEnd: TDataSetProvider
    DataSet = sds_CliEnd
    UpdateMode = upWhereKeyOnly
    Left = 447
    Top = 287
  end
  object sds_CliEnd: TSQLDataSet
    CommandText = 
      'select * from ENDERECOCLIENTE where CODCLIENTE = :pCli and TIPOE' +
      'ND = 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 415
    Top = 287
    object sds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_CliEndCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_CliEndUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sds_CliEndCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sds_CliEndCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sds_CliEndCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sds_CliEndCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sds_CliEndFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object sds_CliEndE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sds_CliEndRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object sds_CliEndTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object sds_CliEndDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object sds_CliEndDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sds_CliEndDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object sds_CliEndDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object sds_CliEndDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object sds_CliEndCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sds_CliEndPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object sds_CliEndTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sds_CliEndTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sds_CliEndTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
  end
  object procIBGE: TSQLClientDataSet
    CommandText = 
      'select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO from TB_IBGE' +
      ' where NM_LOCALIDADE LIKE :NOME'#13#10'order by NM_LOCALIDADE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 296
    Top = 8
    object procIBGENM_LOCALIDADE2: TStringField
      DisplayLabel = 'Cidade/Vila'
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object procIBGECD_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
    object procIBGENM_MUNICIPIO: TStringField
      DisplayLabel = 'Nome Munic'#237'pio'
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object procIBGECD_IBGE: TStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
  end
  object sdsTFiscal: TSQLDataSet
    CommandText = 'select * from TIPO_FISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 476
    Top = 71
    object sdsTFiscalCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsTFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object dspTFiscal: TDataSetProvider
    DataSet = sdsTFiscal
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 514
    Top = 71
  end
  object cdsTFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTFiscal'
    Left = 545
    Top = 71
    object cdsTFiscalCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object DtSrcTFiscal: TDataSource
    DataSet = cdsTFiscal
    Left = 583
    Top = 70
  end
end
