object fImport: TfImport
  Left = 190
  Top = 116
  Width = 1027
  Height = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1019
    Height = 573
    ActivePage = ImpCli
    Align = alClient
    TabOrder = 0
    object ImpProd: TTabSheet
      Caption = 'Importar Produtos'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1011
        Height = 170
        Align = alTop
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
            FieldName = 'C'#243'digo'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descri'#231#227'o do Produto'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qutde'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UN'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estoque'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'R$ Venda'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Marca'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Grupo'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubGrupo'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Local Estoque'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODALMOXARIFADO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_COMPRA'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTES'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOMEDIO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO_QTDE'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_COMISSAO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RATEIO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA_DESPESA'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEM'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEMAXIMO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEREPOSICAO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEMINIMO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARGEM_LUCRO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACADASTRO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COD'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAGRAV'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPRECOVENDA'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORMINIMO'
            Width = 150
            Visible = True
          end>
      end
      object Memo1: TMemo
        Left = 0
        Top = 170
        Width = 1011
        Height = 334
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          
            'C'#243'digo,Descri'#231#227'o do Produto,Qutde,UN,Estoque,R$ Venda,Marca,Grup' +
            'o,SubGrupo,Local Estoque,CODALMOXARIFADO,PRECO_COMPRA,VALOR_PRAZ' +
            'O,TIPO,LOTES,PRECOMEDIO,PESO_QTDE,COD_COMISSAO,RATEIO,CONTA_DESP' +
            'ESA,IPI,NCM,ORIGEM,ESTOQUEMAXIMO,ESTOQUEREPOSICAO,ESTOQUEMINIMO,' +
            'MARGEM_LUCRO,DATACADASTRO,PRO_COD,DATAGRAV,TIPOPRECOVENDA,VALORM' +
            'INIMO')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 504
        Width = 1011
        Height = 41
        Align = alBottom
        TabOrder = 2
        object FlatGauge1: TFlatGauge
          Left = 376
          Top = 9
          Width = 145
          Height = 25
          AdvColorBorder = 0
          ColorBorder = 8623776
          Progress = 25
        end
        object BitBtn1: TBitBtn
          Left = 104
          Top = 11
          Width = 90
          Height = 25
          Caption = 'Ler Arquivo (.csv)'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 200
          Top = 11
          Width = 90
          Height = 25
          Caption = 'Importar'
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
    end
    object ImpCli: TTabSheet
      Caption = 'Importar Clientes'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1011
        Height = 170
        Align = alTop
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODCLIENTE'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLIENTE'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAOSOCIAL'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DDD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE1'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE2'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEUSUARIO'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEL'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_MAIL'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSCESTADUAL'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_IBGE'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODFISCAL'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEGMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODUSUARIO'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 504
        Width = 1011
        Height = 41
        Align = alBottom
        TabOrder = 1
        object FlatGauge2: TFlatGauge
          Left = 312
          Top = 9
          Width = 209
          Height = 25
          AdvColorBorder = 0
          ColorBorder = 8623776
          Progress = 0
        end
        object Label1: TLabel
          Left = 549
          Top = 14
          Width = 9
          Height = 13
          Caption = '...'
        end
        object Label2: TLabel
          Left = 753
          Top = 17
          Width = 6
          Height = 13
          Caption = '..'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn3: TBitBtn
          Left = 104
          Top = 11
          Width = 90
          Height = 25
          Caption = 'Ler Arquivo (.csv)'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 200
          Top = 11
          Width = 90
          Height = 25
          Caption = 'Importar'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object Memo2: TMemo
        Left = 0
        Top = 170
        Width = 1011
        Height = 334
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          
            'CODCLIENTE,NOMECLIENTE,RAZAOSOCIAL,CONTATO,TELEFONE,TELEFONE1,TE' +
            'LEFONE2,FAX,CIDADE,NOMEUSUARIO,UF,ENDERECO,FONE,TEL,E_MAIL,CNPJ,' +
            'INSCESTADUAL')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 2
      end
    end
  end
  object JvCsvDataSet1: TJvCsvDataSet
    FileName = 'PhoneList.csv'
    Changed = False
    CsvFieldDef = 
      'SEQUENCIAL,C'#243'DIGO,DESCRI'#231#227'O DO PRODUTO,QUTDE,UN,ESTOQUE,R$ VENDA' +
      ',MARCA,GRUPO,SUBGRUPO,LOCAL ESTOQUE,CODALMOXARIFADO,PRECO_COMPRA' +
      ',VALOR_PRAZO,TIPO,LOTES,PRECOMEDIO,PESO_QTDE,COD_COMISSAO,RATEIO' +
      ',CONTA_DESPESA,IPI,NCM,ORIGEM,ESTOQUEMAXIMO,ESTOQUEREPOSICAO,EST' +
      'OQUEMINIMO,MARGEM_LUCRO,DATACADASTRO,PRO_COD,DATAGRAV,TIPOPRECOV' +
      'ENDA,VALORMINIMO'
    CsvUniqueKeys = False
    ExtendedHeaderInfo = False
    CaseInsensitive = False
    AutoBackupCount = 0
    StoreDefs = True
    Left = 56
    Top = 30
    object JvCsvDataSet1Cdigo: TStringField
      FieldName = 'C'#243'digo'
      Size = 80
    end
    object JvCsvDataSet1DescriodoProduto: TStringField
      FieldName = 'Descri'#231#227'o do Produto'
      Size = 80
    end
    object JvCsvDataSet1Qutde: TStringField
      FieldName = 'Qutde'
      Size = 80
    end
    object JvCsvDataSet1UN: TStringField
      FieldName = 'UN'
      Size = 80
    end
    object JvCsvDataSet1Estoque: TStringField
      FieldName = 'Estoque'
      Size = 80
    end
    object JvCsvDataSet1RVenda: TStringField
      FieldName = 'R$ Venda'
      Size = 80
    end
    object JvCsvDataSet1Marca: TStringField
      FieldName = 'Marca'
      Size = 80
    end
    object JvCsvDataSet1Grupo: TStringField
      FieldName = 'Grupo'
      Size = 80
    end
    object JvCsvDataSet1SubGrupo: TStringField
      FieldName = 'SubGrupo'
      Size = 80
    end
    object JvCsvDataSet1LocalEstoque: TStringField
      FieldName = 'Local Estoque'
      Size = 80
    end
    object JvCsvDataSet1CODALMOXARIFADO: TStringField
      FieldName = 'CODALMOXARIFADO'
      Size = 80
    end
    object JvCsvDataSet1PRECO_COMPRA: TStringField
      FieldName = 'PRECO_COMPRA'
      Size = 80
    end
    object JvCsvDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 80
    end
    object JvCsvDataSet1LOTES: TStringField
      FieldName = 'LOTES'
      Size = 80
    end
    object JvCsvDataSet1PRECOMEDIO: TStringField
      FieldName = 'PRECOMEDIO'
      Size = 80
    end
    object JvCsvDataSet1PESO_QTDE: TStringField
      FieldName = 'PESO_QTDE'
      Size = 80
    end
    object JvCsvDataSet1COD_COMISSAO: TStringField
      FieldName = 'COD_COMISSAO'
      Size = 80
    end
    object JvCsvDataSet1RATEIO: TStringField
      FieldName = 'RATEIO'
      Size = 80
    end
    object JvCsvDataSet1CONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 80
    end
    object JvCsvDataSet1NCM: TStringField
      FieldName = 'NCM'
      Size = 80
    end
    object JvCsvDataSet1ORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object JvCsvDataSet1ESTOQUEMAXIMO: TStringField
      FieldName = 'ESTOQUEMAXIMO'
      Size = 80
    end
    object JvCsvDataSet1ESTOQUEREPOSICAO: TStringField
      FieldName = 'ESTOQUEREPOSICAO'
      Size = 80
    end
    object JvCsvDataSet1ESTOQUEMINIMO: TStringField
      FieldName = 'ESTOQUEMINIMO'
      Size = 80
    end
    object JvCsvDataSet1MARGEM_LUCRO: TStringField
      FieldName = 'MARGEM_LUCRO'
      Size = 80
    end
    object JvCsvDataSet1DATACADASTRO: TStringField
      FieldName = 'DATACADASTRO'
      Size = 80
    end
    object JvCsvDataSet1PRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 80
    end
    object JvCsvDataSet1DATAGRAV: TStringField
      FieldName = 'DATAGRAV'
      Size = 80
    end
    object JvCsvDataSet1TIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      Size = 80
    end
    object JvCsvDataSet1VALORMINIMO: TStringField
      FieldName = 'VALORMINIMO'
      Size = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = JvCsvDataSet1
    Left = 33
    Top = 38
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'csv'
    Filter = 'CSV files (*.csv)|*.csv|all files (*.*)|*.*'
    Left = 96
    Top = 30
  end
  object s_produtos: TSQLDataSet
    CommandText = 'select * from PRODUTOS '#13#10'where CODPRO = :cod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 64
    object s_produtosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object s_produtosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object s_produtosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object s_produtosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object s_produtosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object s_produtosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
    end
    object s_produtosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object s_produtosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object s_produtosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object s_produtosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object s_produtosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object s_produtosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
    end
    object s_produtosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object s_produtosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object s_produtosIPI: TFloatField
      FieldName = 'IPI'
    end
    object s_produtosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      Size = 30
    end
    object s_produtosCST: TStringField
      FieldName = 'CST'
      Size = 30
    end
    object s_produtosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object s_produtosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object s_produtosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object s_produtosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object s_produtosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
    end
    object s_produtosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object s_produtosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object s_produtosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object s_produtosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object s_produtosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object s_produtosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object s_produtosRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object s_produtosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object s_produtosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object s_produtosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object s_produtosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object s_produtosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object s_produtosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object s_produtosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
    end
    object s_produtosCODFORN: TStringField
      FieldName = 'CODFORN'
      Size = 60
    end
    object s_produtosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      Size = 80
    end
    object s_produtosLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object s_produtosUSA: TStringField
      FieldName = 'USA'
      Size = 3
    end
    object s_produtosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object s_produtosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object s_produtosVALORMINOMO: TFloatField
      FieldName = 'VALORMINOMO'
    end
    object s_produtosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object s_produtosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object s_produtosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      FixedChar = True
      Size = 1
    end
    object s_produtosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object s_produtosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object s_produtosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object s_produtosIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      Size = 10
    end
    object s_produtosIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      Size = 10
    end
    object s_produtosIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      Size = 10
    end
    object s_produtosLEAD_TIME: TSmallintField
      FieldName = 'LEAD_TIME'
    end
    object s_produtosTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
  end
  object p_produtos: TDataSetProvider
    DataSet = s_produtos
    Left = 56
    Top = 64
  end
  object c_produtos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p_produtos'
    Left = 96
    Top = 64
  end
  object c_cliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    ProviderName = 'p_cliente'
    Left = 256
    Top = 72
    object c_clienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object c_clienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object c_clienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object c_clienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object c_clienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object c_clienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object c_clienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object c_clienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object c_clienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object c_clienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object c_clienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object c_clienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object c_clienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object c_clienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object c_clienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object c_clienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object c_clientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object c_clientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object c_clienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object c_clienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object c_clienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object c_clienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object c_clienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object c_clienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object c_clienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object c_clienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object c_clienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object c_clienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object c_clienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object c_clienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object c_clienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object c_clienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object c_clienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object c_clienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object c_clienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object c_clienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object c_clienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object c_clienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object c_clienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object c_clienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object c_clienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object c_clienteIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object c_clienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object c_clienteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object c_clienteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object c_clienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object c_clienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object c_clienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object c_clienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object c_clienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object c_clienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object c_clienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object c_clientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object c_clientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object c_clienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object c_clienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object c_clienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object c_clienteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object c_clienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object c_clientePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object c_clienteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object c_clienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object c_clienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object c_clienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object c_clienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object c_clienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object c_clienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object c_clienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object c_clienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object c_clienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object c_clienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object c_clienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object c_clienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object c_clienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object c_clienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object c_clienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object c_clienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object c_clienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object c_clienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object c_clienteRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object c_clienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object c_clienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object c_clienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object c_clienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object c_clienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object c_clienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object c_clienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object c_clienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object c_clienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object c_clienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object c_clienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object c_clienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object c_clienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object c_clienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object c_clienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object c_clienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object c_clienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object c_clienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object c_clienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object c_clientePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object c_clienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object c_clienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object c_clienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object c_clienteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object c_clienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object c_clienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object c_clienteCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object c_clienteCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object c_clienteCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
    object c_clienteCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object c_clienteVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object c_clienteVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object c_clienteE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object c_clienteCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object c_clienteCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object c_clienteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object c_clienteBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
  end
  object p_cliente: TDataSetProvider
    DataSet = s_cliente
    Left = 216
    Top = 72
  end
  object s_cliente: TSQLDataSet
    CommandText = 'select * from CLIENTES'#13#10'where CNPJ = :cod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 176
    Top = 72
  end
  object JvCsvDataSet2: TJvCsvDataSet
    FileName = 'C:\Documents and Settings\Administrador\Desktop\cliente.csv'
    Changed = False
    CsvFieldDef = 
      'CODCLIENTE:$20,NOMECLIENTE:$60,RAZAOSOCIAL:$60,CONTATO:$60,TELEF' +
      'ONE:$20,TELEFONE1:$20,TELEFONE2:$20,FAX:$20,CIDADE:$40,NOMEUSUAR' +
      'IO:$40,UF:$6,ENDERECO:$120,FONE:$20,TEL:$20,E_MAIL:$40,CNPJ:$40,' +
      'INSCESTADUAL:$40,CD_IBGE:$20,CODFISCAL:$20,CEP:$20,SEGMENTO:$3,T' +
      'IPOFISCAL:$3,REGIAO:$3,TIPOFIRMA:$3,LIMITECREDITO:$9,CODUSUARIO:' +
      '$3,STATUS:$1,DDD:$3,NUMERO:$10,BAIRRO:$60,CFOP:$4'
    CsvUniqueKeys = False
    ExtendedHeaderInfo = False
    CaseInsensitive = False
    AutoBackupCount = 0
    StoreDefs = True
    Left = 216
    Top = 30
    object JvCsvDataSet2CODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 80
    end
    object JvCsvDataSet2NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 80
    end
    object JvCsvDataSet2RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 80
    end
    object JvCsvDataSet2CONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 80
    end
    object JvCsvDataSet2TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 80
    end
    object JvCsvDataSet2TELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 80
    end
    object JvCsvDataSet2TELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 80
    end
    object JvCsvDataSet2FAX: TStringField
      FieldName = 'FAX'
      Size = 80
    end
    object JvCsvDataSet2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 80
    end
    object JvCsvDataSet2NOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 80
    end
    object JvCsvDataSet2UF: TStringField
      FieldName = 'UF'
      Size = 80
    end
    object JvCsvDataSet2ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object JvCsvDataSet2FONE: TStringField
      FieldName = 'FONE'
      Size = 80
    end
    object JvCsvDataSet2TEL: TStringField
      FieldName = 'TEL'
      Size = 80
    end
    object JvCsvDataSet2E_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 80
    end
    object JvCsvDataSet2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 80
    end
    object JvCsvDataSet2INSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 80
    end
    object JvCsvDataSet2CD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 80
    end
    object JvCsvDataSet2CODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Size = 80
    end
    object JvCsvDataSet2CEP: TStringField
      FieldName = 'CEP'
      Size = 80
    end
    object JvCsvDataSet2SEGMENTO: TStringField
      FieldName = 'SEGMENTO'
      Size = 3
    end
    object JvCsvDataSet2TIPOFISCAL: TStringField
      FieldName = 'TIPOFISCAL'
      Size = 3
    end
    object JvCsvDataSet2REGIAO: TStringField
      FieldName = 'REGIAO'
      Size = 3
    end
    object JvCsvDataSet2TIPOFIRMA: TStringField
      FieldName = 'TIPOFIRMA'
      Size = 3
    end
    object JvCsvDataSet2LIMITECREDITO: TStringField
      FieldName = 'LIMITECREDITO'
      Size = 9
    end
    object JvCsvDataSet2CODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 3
    end
    object JvCsvDataSet2STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object JvCsvDataSet2DDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object JvCsvDataSet2NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object JvCsvDataSet2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object JvCsvDataSet2CFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
  end
  object DataSource2: TDataSource
    DataSet = JvCsvDataSet2
    Left = 177
    Top = 30
  end
end
