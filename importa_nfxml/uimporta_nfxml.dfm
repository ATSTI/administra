object fImporta_XML: TfImporta_XML
  Left = 167
  Top = 115
  Width = 1122
  Height = 684
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
  object lblNF: TLabel
    Left = 259
    Top = 200
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
  object Panel1: TPanel
    Left = 961
    Top = 57
    Width = 153
    Height = 600
    Align = alRight
    TabOrder = 0
    object Label4: TLabel
      Left = 33
      Top = 304
      Width = 72
      Height = 13
      Caption = 'Margem Venda'
    end
    object btnImportaNF: TBitBtn
      Left = 20
      Top = 458
      Width = 109
      Height = 41
      Hint = 'Conclui a importa'#231#227'o, inserindo a Nota do Xml no Sistema.'
      Caption = '5'#186' - Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnImportaNFClick
    end
    object btnFechar: TBitBtn
      Left = 20
      Top = 512
      Width = 109
      Height = 41
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object btnProcurar: TBitBtn
      Left = 20
      Top = 5
      Width = 109
      Height = 41
      Hint = 'Exibe as notas importadas na Tela'
      Caption = '2'#186' -Procurar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnProcurarClick
    end
    object btnVerificaFornec: TBitBtn
      Left = 20
      Top = 49
      Width = 109
      Height = 41
      Hint = 'Verifica se existe os Fornecedores cadastrados no sistema'
      Caption = '3'#186' - Verifica Fornec.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnVerificaFornecClick
      Layout = blGlyphTop
    end
    object btnExisteProdutoFornec: TBitBtn
      Left = 20
      Top = 216
      Width = 109
      Height = 41
      Hint = 
        'Verifica se existe uma rela'#231#227'o do c'#243'digo do fornecedor com o c'#243'd' +
        'igo do sistema.'
      Caption = '4'#186' - Verifica Produto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnExisteProdutoFornecClick
    end
    object btnCadastrarProduto: TBitBtn
      Left = 20
      Top = 344
      Width = 109
      Height = 41
      Hint = 'Cadastra no sistema os itens da Nota que n'#227'o existe.'
      Caption = 'Cadastrar Produto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnCadastrarProdutoClick
    end
    object chkCodBarra: TCheckBox
      Left = 32
      Top = 285
      Width = 97
      Height = 17
      Caption = 'C'#243'd. de Barras'
      TabOrder = 6
    end
    object edMargem: TEdit
      Left = 32
      Top = 319
      Width = 97
      Height = 21
      TabOrder = 7
      Text = '33'
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 961
    Height = 600
    Align = alClient
    Caption = 'Notas Fiscais'
    TabOrder = 1
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 176
      Width = 957
      Height = 422
      Align = alClient
      DataSource = dsNFItem
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = JvDBGrid1DblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 2
      Top = 15
      Width = 957
      Height = 161
      Align = alTop
      DataSource = dsNF
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = JvDBUltimGrid1CellClick
      OnDblClick = JvDBUltimGrid1DblClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 355
      Top = 10
      Width = 23
      Height = 13
      Caption = 'Nota'
    end
    object btnImportarXml: TBitBtn
      Left = 982
      Top = 9
      Width = 109
      Height = 41
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
      TabOrder = 0
      OnClick = btnImportarXmlClick
    end
    object cbNaoEnviada: TCheckBox
      Left = 544
      Top = 12
      Width = 97
      Height = 17
      Caption = 'N'#227'o Enviadas'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbNaoEnviadaClick
    end
    object edNota: TEdit
      Left = 384
      Top = 10
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = edNotaKeyPress
    end
    object btnLimpa: TBitBtn
      Left = 505
      Top = 8
      Width = 25
      Height = 25
      Hint = 'Limpa o campo Nota Fiscal'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnLimpaClick
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000008080008080
        0080800000000000000000000000000000000000000000000000000000000080
        800080800080800080800080800080800080807F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF008080008080008080008080008080
        00808000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000000080
        800080800080800080800080800080800080807F7F7FFFFFFF008080FFFFFF00
        8080FFFFFF008080FFFFFF7F7F7FFFFFFF008080008080008080008080008080
        00808000000000FFFF00000000FFFF00000000FFFF00000000FFFF0000000080
        800080800080800080800080800080800080807F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF008080008080008080008080008080
        00808000000000FFFF00000000FFFF0000007F7F7F00000000FFFF0000000080
        800080800080800080800080800080800080807F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF008080008080008080008080008080
        00808000000000FFFF00000000FFFF00000000FFFF00000000FFFF0000000080
        800080800080800080800080800080800080807F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF008080008080008080008080008080
        00808000000000FFFF00000000FFFF00000000FFFF00000000FFFF0000000080
        800080800080800080800080800080800080807F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF008080008080008080008080008080
        00808000000000FFFF00000000FFFF00000000FFFF00000000FFFF0000000080
        80008080008080008080008080008080FFFFFF7F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF008080FFFFFF008080008080000000
        00808000000000FFFF00000000FFFF0000007F7F7F00000000FFFF0000000080
        800000000080800080800080807F7F7F0080807F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF7F7F7F008080008080008080008080
        00000000000000FFFF00000000FFFF00000000FFFF00000000FFFF0000000000
        000080800080800080800080800080807F7F7F7F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7F7F7F7F008080008080008080008080008080
        00808000000000FFFF00000000FFFF0000007F7F7F00000000FFFF0000000080
        800080800080800080800080800080800080807F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF008080008080008080008080008080
        0080800000007F7F7F0000007F7F7F0000007F7F7F00000000FFFF0000000080
        800080800080800080800080800080800080807F7F7FFFFFFF7F7F7FFFFFFF7F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFFFFFFFF008080008080008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        000080800080800080800080800080807F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF008080008080008080008080
        00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
        000080800080800080800080800080807F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF008080008080008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        000080800080800080800080800080807F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F008080008080008080008080008080
        0080800080800080800000007F7F7F7F7F7F7F7F7F0000000080800080800080
        800080800080800080800080800080800080800080800080807F7F7FFFFFFFFF
        FFFFFFFFFF7F7F7FFFFFFF008080008080008080008080008080008080008080
        0080800080800080800000000000000000000000000000000080800080800080
        800080800080800080800080800080800080800080800080807F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 128
      Top = 10
      Width = 109
      Height = 41
      Hint = 
        'Desmarca o XML como Importado, e deixa apto a Importar novamente' +
        '.'
      Caption = 'Refazer Imp. p/ Ats'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 10
      Width = 109
      Height = 41
      Hint = 'Tira o XML da LISTA ABAIXO'
      Caption = 'Excluir Imp. Xml'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button2Click
    end
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
