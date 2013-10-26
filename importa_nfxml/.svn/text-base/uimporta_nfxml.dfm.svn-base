object fImporta_XML: TfImporta_XML
  Left = 184
  Top = 114
  Width = 930
  Height = 648
  Caption = 'Importar XML - NFe'
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
  object Label1: TLabel
    Left = 27
    Top = 20
    Width = 28
    Height = 13
    Caption = 'Notas'
  end
  object Label2: TLabel
    Left = 27
    Top = 201
    Width = 23
    Height = 13
    Caption = 'Itens'
  end
  object lblNF: TLabel
    Left = 200
    Top = 192
    Width = 3
    Height = 13
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 347
    Top = 2
    Width = 23
    Height = 13
    Caption = 'Nota'
  end
  object Label4: TLabel
    Left = 792
    Top = 304
    Width = 72
    Height = 13
    Caption = 'Margem Venda'
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 24
    Top = 36
    Width = 761
    Height = 161
    DataSource = dsNF
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    OnKeyDown = JvDBUltimGrid1KeyDown
    OnKeyUp = JvDBUltimGrid1KeyUp
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Sit.'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTAFISCAL'
        Title.Caption = 'NF'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
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
        FieldName = 'CNPJ_EMITENTE'
        Title.Caption = 'CNPJ'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_EMITENTE'
        Title.Caption = 'Emitente'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCLIENTE_ATS'
        Title.Caption = 'C'#243'd. Forn.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL_ATS'
        Title.Caption = 'Cadastro Fornecedor'
        Visible = True
      end>
  end
  object JvDBGrid1: TJvDBGrid
    Left = 24
    Top = 216
    Width = 761
    Height = 385
    DataSource = dsNFItem
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object btnImportaNF: TBitBtn
    Left = 787
    Top = 512
    Width = 113
    Height = 35
    Hint = 'Conclui a importa'#231#227'o, inserindo a Nota do Xml no Sistema.'
    Caption = '5'#186' - Importar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnImportaNFClick
  end
  object btnFechar: TBitBtn
    Left = 788
    Top = 552
    Width = 113
    Height = 39
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btnFecharClick
  end
  object btnProcurar: TBitBtn
    Left = 789
    Top = 1
    Width = 108
    Height = 33
    Hint = 'Exibe as notas importadas na Tela'
    Caption = '2'#186' -Procurar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnProcurarClick
  end
  object btnVerificaFornec: TBitBtn
    Left = 788
    Top = 38
    Width = 109
    Height = 41
    Hint = 'Verifica se existe os Fornecedores cadastrados no sistema'
    Caption = '3'#186' - Verifica Fornec.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnVerificaFornecClick
    Layout = blGlyphTop
  end
  object btnExisteProdutoFornec: TBitBtn
    Left = 788
    Top = 216
    Width = 109
    Height = 41
    Hint = 
      'Verifica se existe uma rela'#231#227'o do c'#243'digo do fornecedor com o c'#243'd' +
      'igo do sistema.'
    Caption = '4'#186' - Verifica Produto'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnExisteProdutoFornecClick
  end
  object btnCadastrarProduto: TBitBtn
    Left = 787
    Top = 344
    Width = 113
    Height = 38
    Hint = 'Cadastra no sistema os itens da Nota que n'#227'o existe.'
    Caption = 'Cadastrar Produto'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = btnCadastrarProdutoClick
  end
  object edNota: TEdit
    Left = 392
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object cbNaoEnviada: TCheckBox
    Left = 528
    Top = 4
    Width = 97
    Height = 17
    Caption = 'N'#227'o Enviadas'
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = cbNaoEnviadaClick
  end
  object btnImportarXml: TBitBtn
    Left = 684
    Top = 1
    Width = 99
    Height = 33
    Hint = 'Importa o XML para o Sistema'
    Caption = '1'#186' - Importar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btnImportarXmlClick
  end
  object Button1: TButton
    Left = 104
    Top = 2
    Width = 113
    Height = 25
    Caption = 'Refazer Importa'#231#227'o'
    TabOrder = 11
    OnClick = Button1Click
  end
  object chkCodBarra: TCheckBox
    Left = 792
    Top = 285
    Width = 97
    Height = 17
    Caption = 'C'#243'd. de Barras'
    TabOrder = 12
  end
  object edMargem: TEdit
    Left = 792
    Top = 319
    Width = 97
    Height = 21
    TabOrder = 13
    Text = '30'
  end
  object sqlConn: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.100:sge_luciana'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq21'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\sisadmin\relatorio\')
    VendorLib = 'fbclient.dll'
    Left = 112
    Top = 552
  end
  object sdsNF: TSQLDataSet
    CommandText = 
      'SELECT r.NOTAFISCAL, r.NATUREZAOPERACAO, r.MODELO,'#13#10'    r.SERIE,' +
      ' r.EMISSAO, r.CNPJ_EMITENTE,'#13#10'    r.CNPJ_DESTINATARIO, r.NOME_EM' +
      'ITENTE,'#13#10'    r.CODCLIENTE_ATS, r.RAZAOSOCIAL_ATS, r.STATUS'#13#10'FROM' +
      ' NOTAFISCAL_IMPORTA r '#13#10'WHERE r.STATUS = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 160
    Top = 552
  end
  object sdsNFItem: TSQLDataSet
    CommandText = 'SELECT * FROM NOTAFISCAL_PROD_IMPORTA '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 336
    Top = 552
  end
  object dspNF: TDataSetProvider
    DataSet = sdsNF
    Options = [poAllowCommandText]
    Left = 192
    Top = 552
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    Left = 224
    Top = 552
    object cdsNFNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNFNATUREZAOPERACAO: TStringField
      FieldName = 'NATUREZAOPERACAO'
      Size = 50
    end
    object cdsNFMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 5
    end
    object cdsNFSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNFEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsNFCNPJ_EMITENTE: TStringField
      FieldName = 'CNPJ_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object cdsNFCNPJ_DESTINATARIO: TStringField
      FieldName = 'CNPJ_DESTINATARIO'
      Size = 25
    end
    object cdsNFNOME_EMITENTE: TStringField
      FieldName = 'NOME_EMITENTE'
      Size = 150
    end
    object cdsNFCODCLIENTE_ATS: TIntegerField
      FieldName = 'CODCLIENTE_ATS'
    end
    object cdsNFRAZAOSOCIAL_ATS: TStringField
      FieldName = 'RAZAOSOCIAL_ATS'
      Size = 60
    end
    object cdsNFSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
  end
  object dsNF: TDataSource
    DataSet = cdsNF
    Left = 256
    Top = 552
  end
  object dspNfItem: TDataSetProvider
    DataSet = sdsNFItem
    Options = [poAllowCommandText]
    Left = 368
    Top = 552
  end
  object cdsNFItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNfItem'
    Left = 400
    Top = 552
    object cdsNFItemNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object cdsNFItemSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNFItemCNPJ_EMITENTE: TStringField
      FieldName = 'CNPJ_EMITENTE'
      Required = True
      Size = 25
    end
    object cdsNFItemNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Required = True
    end
    object cdsNFItemCODPRODUTO_ATS: TIntegerField
      FieldName = 'CODPRODUTO_ATS'
    end
    object cdsNFItemCODPRO_ATS: TStringField
      FieldName = 'CODPRO_ATS'
      Size = 15
    end
    object cdsNFItemPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 150
    end
    object cdsNFItemPRODUTO_ATS: TStringField
      FieldName = 'PRODUTO_ATS'
      Size = 150
    end
    object cdsNFItemNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object cdsNFItemCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsNFItemUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 5
    end
    object cdsNFItemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsNFItemVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object cdsNFItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsNFItemICMS: TStringField
      FieldName = 'ICMS'
      Size = 50
    end
    object cdsNFItemPIS: TStringField
      FieldName = 'PIS'
      Size = 50
    end
    object cdsNFItemCOFINS: TStringField
      FieldName = 'COFINS'
      Size = 50
    end
    object cdsNFItemIPI: TStringField
      FieldName = 'IPI'
      Size = 50
    end
    object cdsNFItemCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 30
    end
    object cdsNFItemCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 30
    end
  end
  object dsNFItem: TDataSource
    DataSet = cdsNFItem
    Left = 432
    Top = 552
  end
  object sqlFaltandoFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 136
    Top = 512
  end
  object sqlFaltaProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 320
    Top = 520
  end
  object sqlBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 296
    Top = 552
  end
  object sqlGenProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 512
    Top = 512
  end
  object sqlVeSeExisteCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 448
    Top = 200
  end
end
