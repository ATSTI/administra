object fImporta_XML: TfImporta_XML
  Left = 8
  Top = 88
  Width = 1036
  Height = 683
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
    Left = 875
    Top = 57
    Width = 153
    Height = 599
    Align = alRight
    TabOrder = 0
    object Label4: TLabel
      Left = 33
      Top = 304
      Width = 72
      Height = 13
      Caption = 'Margem Venda'
    end
    object Label2: TLabel
      Left = 64
      Top = 582
      Width = 28
      Height = 13
      Caption = 'V. 1.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
      Hint = 'Configure no parametro: XML_CODBARRA, em DADOS coloque CODBARRA.'
      Caption = 'C'#243'd. de Barras'
      ParentShowHint = False
      ShowHint = True
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
    Width = 875
    Height = 599
    Align = alClient
    Caption = 'Notas Fiscais'
    TabOrder = 1
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 224
      Width = 871
      Height = 373
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
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_ITEM'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRODUTO_ATS'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO_ATS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNIT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMS'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PIS'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COFINS'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_BARRA'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRODUTO'
          Width = 80
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 871
      Height = 209
      Align = alTop
      TabOrder = 1
      object JvDBUltimGrid1: TJvDBUltimGrid
        Left = 449
        Top = 1
        Width = 421
        Height = 207
        Align = alClient
        DataSource = dsNF
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
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
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_EMITENTE'
            Title.Caption = 'CNPJ'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_EMITENTE'
            Title.Caption = 'Emitente'
            Width = 95
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
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 448
        Height = 207
        ActivePage = TabSheet2
        Align = alLeft
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Importando Arquivos'
          ImageIndex = 1
          object memLista: TMemo
            Left = 0
            Top = 0
            Width = 440
            Height = 179
            Align = alClient
            Lines.Strings = (
              'Arquivos XML')
            TabOrder = 0
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Arquivos Importados'
          object memExcluido: TMemo
            Left = 0
            Top = 0
            Width = 440
            Height = 179
            Align = alClient
            Lines.Strings = (
              'Arquivos XML')
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 506
      Top = 9
      Width = 23
      Height = 13
      Caption = 'Nota'
    end
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 52
      Height = 13
      Caption = 'Pasta XML'
    end
    object btnImportarXml: TBitBtn
      Left = 895
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
      Left = 655
      Top = 26
      Width = 97
      Height = 17
      Caption = 'N'#227'o Enviadas'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbNaoEnviadaClick
    end
    object edNota: TEdit
      Left = 504
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = edNotaKeyPress
    end
    object btnLimpa: TBitBtn
      Left = 625
      Top = 20
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
      Left = 352
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
      Left = 240
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
    object Edit1: TEdit
      Left = 6
      Top = 24
      Width = 171
      Height = 21
      Hint = 'Parametro: XML_IMPORTA , dados  : o diretorio.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = 'C:\home\xml'
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
    OnReconcileError = cdsNFItemReconcileError
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
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object cdsNFItemVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsNFItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
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
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Left = 736
    Top = 16
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.xml'
    Left = 176
    Top = 21
  end
end
