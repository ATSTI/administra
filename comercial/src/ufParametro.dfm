inherited fParametro: TfParametro
  Left = 266
  Top = 133
  Width = 904
  Height = 611
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel2: TMMJPanel [0]
    Width = 896
    Height = 9
    inherited Label1: TLabel
      Left = 214
      Top = 0
      Width = 360
      Caption = 'Par'#225'metros do Sistema'
    end
    inherited Label2: TLabel
      Left = 218
      Top = 1
      Width = 360
      Caption = 'Par'#225'metros do Sistema'
    end
  end
  object Parametro: TPageControl [1]
    Left = 0
    Top = 8
    Width = 889
    Height = 513
    ActivePage = TabSheet7
    TabOrder = 2
    OnChange = ParametroChange
    object TabSheet1: TTabSheet
      Caption = 'Par'#226'metros'
      object DBGrid1: TDBGrid
        Left = 8
        Top = 3
        Width = 753
        Height = 188
        DataSource = DtSrc
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARAMETRO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONFIGURADO'
            Title.Caption = 'CONF.'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DADOS'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D1'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D2'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D3'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D4'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D5'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D6'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D7'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D8'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D9'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSTRUCOES'
            Width = 100
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 195
        Width = 769
        Height = 49
        Caption = 'Configura'#231#227'o do Video (VIDEO)'
        TabOrder = 1
        object Label4: TLabel
          Left = 384
          Top = 7
          Width = 223
          Height = 13
          Caption = 'Resolu'#231#227'o do Video para o sistema (800x600) :'
        end
        object Label5: TLabel
          Left = 512
          Top = 29
          Width = 7
          Height = 13
          Caption = 'X'
        end
        object Label77: TLabel
          Left = 8
          Top = 16
          Width = 317
          Height = 13
          Caption = 'Trocar fundo GRID e EDIT: , nas telas VENDAS, Proc. PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label78: TLabel
          Left = 8
          Top = 32
          Width = 230
          Height = 13
          Caption = 'Parametro VIDEO: D3 = PRETO, D4 = BRANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn3: TBitBtn
          Left = 678
          Top = 18
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object Edit1: TEdit
          Left = 384
          Top = 25
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 526
          Top = 26
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 246
        Width = 769
        Height = 41
        Caption = 
          'Conta para Lan'#231'amentos no Caixa Referente a Venda (CONTA_CLIENTE' +
          ')'
        TabOrder = 2
        object Label6: TLabel
          Left = 8
          Top = 19
          Width = 486
          Height = 13
          Caption = 
            'Ver no Plano de Contas a conta do Ativo (1.1...) com Consolida =' +
            ' S, que se refere a Contas a Receber.'
        end
        object Edit12: TEdit
          Left = 528
          Top = 14
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object GroupBox9: TGroupBox
        Left = 2
        Top = 291
        Width = 769
        Height = 45
        Caption = 
          'Usa Lista de Pre'#231'o de Terceiros ?        Usa Cadastro de Veiculo' +
          's'
        TabOrder = 3
        object Label19: TLabel
          Left = 8
          Top = 21
          Width = 176
          Height = 16
          Caption = 'Pre'#231'o Lista "SIM" ou "N'#195'O" ?.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 321
          Top = 21
          Width = 219
          Height = 16
          Caption = 'Cadastro Ve'#237'culos "SIM" ou "N'#195'O" ?.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn9: TBitBtn
          Left = 678
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn9Click
        end
        object ComboBox3: TComboBox
          Left = 192
          Top = 17
          Width = 81
          Height = 24
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object ComboBox4: TComboBox
          Left = 546
          Top = 16
          Width = 81
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
            'SIM'
            'N'#195'O')
        end
      end
      object GroupBox13: TGroupBox
        Left = 2
        Top = 340
        Width = 769
        Height = 45
        Caption = 
          'Empresa onde o sistema '#233' usado (Altera nome de Campos/Bot'#245'es/Tel' +
          'as conforme tipo EMPRESA'
        TabOrder = 4
        object Label24: TLabel
          Left = 8
          Top = 21
          Width = 101
          Height = 16
          Caption = 'Nome Empresa :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 321
          Top = 21
          Width = 92
          Height = 16
          Caption = 'Tipo Empresa :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn13: TBitBtn
          Left = 678
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn13Click
        end
        object ComboBox8: TComboBox
          Left = 424
          Top = 16
          Width = 203
          Height = 24
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'AUTOMOTIVA'
            'COMERCIO'
            'LOJA ROUPA'
            'FABRICA'
            'CONFEC'#199#195'O')
        end
        object Edit15: TEdit
          Left = 114
          Top = 20
          Width = 201
          Height = 21
          TabOrder = 2
        end
      end
      object gbOP: TGroupBox
        Left = 2
        Top = 390
        Width = 287
        Height = 48
        Caption = 'Serie Ordem de Produ'#231#227'o/Apontamento'
        TabOrder = 5
        object lblSerie: TLabel
          Left = 10
          Top = 29
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
        end
        object btnGravarOP: TBitBtn
          Left = 200
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = btnGravarOPClick
        end
        object edtOP: TEdit
          Left = 40
          Top = 23
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 1
        end
        object btnOp: TBitBtn
          Left = 166
          Top = 20
          Width = 26
          Height = 25
          Caption = '...'
          TabOrder = 2
          OnClick = btnOpClick
        end
      end
      object rgEntSaiObg: TRadioGroup
        Left = 296
        Top = 390
        Width = 287
        Height = 48
        Caption = 'Entrada e Saida Obriga'#243'rios nas Movimenta'#231#245'es'
        Columns = 2
        Items.Strings = (
          'N'#227'o'
          'Sim')
        TabOrder = 6
        OnClick = rgEntSaiObgClick
      end
      object BitBtn52: TBitBtn
        Left = 680
        Top = 432
        Width = 131
        Height = 25
        Caption = 'Atualizar Base Dados'
        TabOrder = 7
        OnClick = BitBtn52Click
      end
      object GroupBox49: TGroupBox
        Left = 2
        Top = 438
        Width = 581
        Height = 44
        Caption = 'Backup base de Dados'
        TabOrder = 8
        object chkBackup: TCheckBox
          Left = 40
          Top = 16
          Width = 305
          Height = 17
          Caption = 'Perguntar se executa Backup ao fechar o sistema ?'
          TabOrder = 0
        end
        object BitBtn54: TBitBtn
          Left = 491
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn54Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Nota Fiscal'
      ImageIndex = 2
      object Label72: TLabel
        Left = 16
        Top = 377
        Width = 716
        Height = 13
        Caption = 
          'Cadastre o PARAMETRO  CFOP  com Dados = CFOP VENDA no Estado,  D' +
          '1 = Venda OUTRO Estado, D2 = Compra no Brasil,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label73: TLabel
        Left = 15
        Top = 392
        Width = 238
        Height = 13
        Caption = 'D3 = CFOP Exporta'#231#227'o, D4 = Importa'#231#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label79: TLabel
        Left = 16
        Top = 415
        Width = 896
        Height = 13
        Caption = 
          'Mascara do Produto na DANFE / SPED - Crie o Parametro PRODUTOMAS' +
          'CARA e informe no campo DADOS a mascar'#225' desejada, ex. : 99.999.9' +
          '99.9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label82: TLabel
        Left = 17
        Top = 434
        Width = 570
        Height = 13
        Caption = 
          'DANFE - Largura coluna C'#243'd. Produto :  Parametro EMPRESA , colun' +
          'a D2, o tamanho padr'#227'o '#233'  46 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label84: TLabel
        Left = 18
        Top = 455
        Width = 540
        Height = 13
        Caption = 
          'Multi-Empresa : Criar uma s'#233'rie pra cada Empresa e usar o campo ' +
          'CODSERIE = CODEMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label87: TLabel
        Left = 18
        Top = 471
        Width = 425
        Height = 13
        Caption = 'COMBUSTIVEL : Parametro PRODUTOCADASTRO , D4 = '#39'COMBUSTIVEL'#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox32: TGroupBox
        Left = 9
        Top = 61
        Width = 367
        Height = 48
        Caption = 'Serie NFe'
        TabOrder = 0
        object Label57: TLabel
          Left = 10
          Top = 29
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
        end
        object btnNFSerie: TBitBtn
          Left = 200
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = btnNFSerieClick
        end
        object edtSerieNF: TEdit
          Left = 40
          Top = 23
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 1
        end
        object BitBtn34: TBitBtn
          Left = 166
          Top = 20
          Width = 26
          Height = 25
          Caption = '...'
          TabOrder = 2
          OnClick = BitBtn34Click
        end
        object BitBtn39: TBitBtn
          Left = 281
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Nova S'#233'rie'
          TabOrder = 3
        end
      end
      object GroupBox33: TGroupBox
        Left = 8
        Top = 171
        Width = 730
        Height = 48
        Caption = 'C'#243'd. da Natureza da Nota Fiscal'
        TabOrder = 1
        object Label58: TLabel
          Left = 10
          Top = 29
          Width = 25
          Height = 13
          Caption = 'C'#243'd.:'
        end
        object BitBtn33: TBitBtn
          Left = 578
          Top = 16
          Width = 76
          Height = 25
          Caption = 'Gravar'
          Enabled = False
          TabOrder = 0
          Visible = False
          OnClick = BitBtn33Click
        end
        object edNotaFiscalNatureza: TEdit
          Left = 40
          Top = 23
          Width = 81
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '12'
        end
        object BitBtn35: TBitBtn
          Left = 126
          Top = 20
          Width = 26
          Height = 25
          Caption = '...'
          Enabled = False
          TabOrder = 2
          OnClick = BitBtn34Click
        end
        object edNotaFiscalNaturezaDesc: TEdit
          Left = 153
          Top = 23
          Width = 400
          Height = 21
          ReadOnly = True
          TabOrder = 3
          Text = 'Nota Fiscal'
        end
      end
      object GroupBox34: TGroupBox
        Left = 9
        Top = 115
        Width = 369
        Height = 48
        Caption = 'S'#233'rie NFe - Modo SCAN'
        TabOrder = 2
        object Label59: TLabel
          Left = 10
          Top = 29
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
        end
        object BitBtn36: TBitBtn
          Left = 200
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn36Click
        end
        object edSerieScan: TEdit
          Left = 40
          Top = 23
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 1
        end
        object BitBtn37: TBitBtn
          Left = 166
          Top = 20
          Width = 26
          Height = 25
          Caption = '...'
          TabOrder = 2
          OnClick = BitBtn37Click
        end
        object BitBtn40: TBitBtn
          Left = 281
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Nova S'#233'rie'
          TabOrder = 3
        end
      end
      object GroupBox35: TGroupBox
        Left = 384
        Top = 64
        Width = 351
        Height = 45
        Caption = 'N'#250'mero NFe '#224' utilizar'
        TabOrder = 3
        object edNumNfe: TEdit
          Left = 39
          Top = 18
          Width = 119
          Height = 21
          TabOrder = 0
        end
        object btnNumNfe: TBitBtn
          Left = 200
          Top = 15
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = btnNumNfeClick
        end
      end
      object GroupBox36: TGroupBox
        Left = 386
        Top = 119
        Width = 351
        Height = 45
        Caption = 'N'#250'mero da NFe - Modo SCAN '#224' utilizar'
        TabOrder = 4
        object edNumNfeScam: TEdit
          Left = 39
          Top = 18
          Width = 119
          Height = 21
          TabOrder = 0
        end
        object BitBtn41: TBitBtn
          Left = 200
          Top = 14
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn41Click
        end
      end
      object GroupBox39: TGroupBox
        Left = 8
        Top = 279
        Width = 729
        Height = 52
        Caption = 'Utilizar a mesma N'#250'mera'#231#227'o da Finaliza'#231#227'o da Venda'
        TabOrder = 5
        object BitBtn42: TBitBtn
          Left = 581
          Top = 17
          Width = 77
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn42Click
        end
        object rgMesmoNumero: TRadioGroup
          Left = 6
          Top = 11
          Width = 417
          Height = 38
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o - Somente N'#250'mero da Nota'
            'Sim - Mesmo N'#250'mero do T'#237'tulo')
          TabOrder = 1
        end
      end
      object GroupBox40: TGroupBox
        Left = 10
        Top = 0
        Width = 367
        Height = 59
        Caption = 'N'#250'mero da Nota'
        TabOrder = 6
        object RadioGroup4: TRadioGroup
          Left = 6
          Top = 15
          Width = 270
          Height = 37
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Permite altera'#231#227'o'
            'N'#227'o Permite altera'#231#227'o')
          TabOrder = 0
        end
        object BitBtn43: TBitBtn
          Left = 282
          Top = 26
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn43Click
        end
      end
      object rgDataNF: TRadioGroup
        Left = 8
        Top = 224
        Width = 225
        Height = 49
        Caption = 'Verifica se Data N.F. difere da atual.'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'N'#227'o'
          'Sim')
        TabOrder = 7
        OnClick = rgDataNFClick
      end
      object rgNfe: TRadioGroup
        Left = 240
        Top = 224
        Width = 225
        Height = 49
        Caption = 'Envia Email NFe Autom'#225'ticamente'
        Columns = 2
        Items.Strings = (
          'N'#227'o'
          'Sim')
        TabOrder = 8
        OnClick = rgNfeClick
      end
      object rgTipoNF: TRadioGroup
        Left = 8
        Top = 336
        Width = 305
        Height = 36
        Caption = 'Nota Fiscal Eletronica  ou   Nota Fiscal Consumidor Eletronica'
        Columns = 2
        Items.Strings = (
          'NFe'
          'NFCe')
        TabOrder = 9
      end
      object BitBtn47: TBitBtn
        Left = 315
        Top = 346
        Width = 77
        Height = 25
        Caption = 'Gravar'
        TabOrder = 10
        OnClick = BitBtn47Click
      end
      object GroupBox45: TGroupBox
        Left = 467
        Top = 224
        Width = 271
        Height = 48
        Caption = 'Casas DECIMAIS - DANFE'
        TabOrder = 11
        object Edit25: TEdit
          Left = 42
          Top = 19
          Width = 89
          Height = 21
          TabOrder = 0
        end
        object BitBtn48: TBitBtn
          Left = 155
          Top = 16
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn48Click
        end
      end
      object GroupBox48: TGroupBox
        Left = 401
        Top = 335
        Width = 336
        Height = 36
        Caption = 'Endere'#231'o de Entrega'
        TabOrder = 12
        object BitBtn53: TBitBtn
          Left = 251
          Top = 8
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn53Click
        end
        object rbEndEntrega: TRadioButton
          Left = 24
          Top = 16
          Width = 201
          Height = 17
          Caption = 'Imprimir em Dados Adicionais'
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados obrigat'#243'rios'
      ImageIndex = 1
      object GroupBox5: TGroupBox
        Left = 3
        Top = 8
        Width = 779
        Height = 41
        Caption = 'Usu'#225'rio do Sistema 0'
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 442
          Height = 13
          Caption = 
            'Usu'#225'rio cadastrado na tabela USUARIO - usu'#225'rio c'#243'digo 0 , usado ' +
            ' internamente no sistema..'
        end
        object Image1: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image3: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn5: TBitBtn
          Left = 664
          Top = 11
          Width = 105
          Height = 25
          Caption = 'Inserir Usu'#225'rio'
          TabOrder = 0
          OnClick = BitBtn5Click
        end
      end
      object GroupBox23: TGroupBox
        Left = 3
        Top = 49
        Width = 779
        Height = 41
        Caption = 'Usu'#225'rio do Sistema 1'
        TabOrder = 1
        object Label36: TLabel
          Left = 8
          Top = 16
          Width = 442
          Height = 13
          Caption = 
            'Usu'#225'rio cadastrado na tabela USUARIO - usu'#225'rio c'#243'digo 1 , usado ' +
            ' internamente no sistema..'
        end
        object Image2: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image4: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn23: TBitBtn
          Left = 664
          Top = 11
          Width = 105
          Height = 25
          Caption = 'Inserir Usu'#225'rio'
          TabOrder = 0
          OnClick = BitBtn23Click
        end
      end
      object GroupBox24: TGroupBox
        Left = 3
        Top = 99
        Width = 779
        Height = 41
        Caption = 'Seri'#233' Entrada e Sa'#237'da (I / O)'
        TabOrder = 2
        object Label37: TLabel
          Left = 8
          Top = 16
          Width = 256
          Height = 13
          Caption = 'S'#233'ries necess'#225'rias para Entrada e Sa'#237'da de Materiais.'
        end
        object Label38: TLabel
          Left = 325
          Top = 16
          Width = 3
          Height = 13
          Caption = '.'
        end
        object Label39: TLabel
          Left = 507
          Top = 16
          Width = 3
          Height = 13
          Caption = '.'
        end
        object Image9: TImage
          Left = 455
          Top = 11
          Width = 37
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image10: TImage
          Left = 454
          Top = 9
          Width = 34
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object Image11: TImage
          Left = 622
          Top = 8
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object Image12: TImage
          Left = 624
          Top = 10
          Width = 35
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object BitBtn24: TBitBtn
          Left = 664
          Top = 11
          Width = 105
          Height = 25
          Caption = 'Inserir S'#233'ries'
          TabOrder = 0
          OnClick = BitBtn24Click
        end
      end
      object GroupBox27: TGroupBox
        Left = 3
        Top = 147
        Width = 779
        Height = 41
        Caption = 'Cliente Padr'#227'o do Sistema'
        TabOrder = 3
        object Label42: TLabel
          Left = 8
          Top = 16
          Width = 193
          Height = 13
          Caption = 'Cliente  usado  internamente no sistema..'
        end
        object Image5: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image6: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn27: TBitBtn
          Left = 658
          Top = 11
          Width = 111
          Height = 25
          Caption = 'Inserir Cliente Padr'#227'o'
          TabOrder = 0
          OnClick = BitBtn27Click
        end
      end
      object GroupBox28: TGroupBox
        Left = 3
        Top = 198
        Width = 779
        Height = 41
        Caption = 'Fornecedor Padr'#227'o do Sistema'
        TabOrder = 4
        object Label44: TLabel
          Left = 8
          Top = 16
          Width = 215
          Height = 13
          Caption = 'Fornecedor  usado  internamente no sistema..'
        end
        object Image7: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image8: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn28: TBitBtn
          Left = 658
          Top = 11
          Width = 112
          Height = 25
          Caption = 'Inserir Fornec. Padr'#227'o'
          TabOrder = 0
          OnClick = BitBtn28Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Par'#226'metros II'
      ImageIndex = 3
      object GroupBox14: TGroupBox
        Left = 3
        Top = 11
        Width = 779
        Height = 55
        Caption = 'M'#243'dulos usados no sistema'
        TabOrder = 0
        object BitBtn14: TBitBtn
          Left = 677
          Top = 20
          Width = 64
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn14Click
        end
        object JvCheckBox1: TJvCheckBox
          Left = 16
          Top = 24
          Width = 80
          Height = 17
          Caption = 'M'#243'd. Admin.'
          TabOrder = 1
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox2: TJvCheckBox
          Left = 112
          Top = 24
          Width = 97
          Height = 17
          Caption = 'M'#243'd. Financeiro'
          TabOrder = 2
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox3: TJvCheckBox
          Left = 216
          Top = 24
          Width = 94
          Height = 17
          Caption = 'M'#243'd. Comercial'
          TabOrder = 3
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox4: TJvCheckBox
          Left = 320
          Top = 24
          Width = 90
          Height = 17
          Caption = 'M'#243'd. Materiais'
          TabOrder = 4
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox5: TJvCheckBox
          Left = 424
          Top = 24
          Width = 105
          Height = 17
          Caption = 'M'#243'd. Pedag'#243'gico'
          TabOrder = 5
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox6: TJvCheckBox
          Left = 544
          Top = 24
          Width = 79
          Height = 17
          Caption = 'M'#243'd. Sa'#250'de'
          TabOrder = 6
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
      object GroupBox15: TGroupBox
        Left = 3
        Top = 69
        Width = 778
        Height = 43
        Caption = 
          'Campo MARCA tabela Produto se PARAMETRO GRUPOMARCA estiver como ' +
          'SIM o sistema relaciona a Marca com o Grupo'
        TabOrder = 1
        object Label28: TLabel
          Left = 8
          Top = 19
          Width = 293
          Height = 13
          Caption = 'Deixe o campo vazio para usar a MARCA sem relacionamento'
        end
        object Edit16: TEdit
          Left = 528
          Top = 14
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object BitBtn15: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn15Click
        end
      end
      object GroupBox21: TGroupBox
        Left = 5
        Top = 115
        Width = 778
        Height = 43
        Caption = 'COMPRADORPADRAO / VENDEDORPADRAO'
        TabOrder = 2
        object BitBtn21: TBitBtn
          Left = 682
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn19Click
        end
      end
      object GroupBox22: TGroupBox
        Left = 6
        Top = 161
        Width = 778
        Height = 43
        Caption = 'BLOQUEIOVENDACADASTROIMCOMPLETO'
        TabOrder = 3
        object BitBtn22: TBitBtn
          Left = 682
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn19Click
        end
      end
      object GroupBox6: TGroupBox
        Left = 9
        Top = 260
        Width = 769
        Height = 52
        Caption = 
          'Usado PDV: Inseri CODCLIENTE, CODALMOXARIFADO, CODNATUREZA (PDV)' +
          ' e CUPOM ou PEDIDO(mesmo Venda Finalizar) para o bot'#227'o imprimir'
        TabOrder = 4
        object Label14: TLabel
          Left = 8
          Top = 24
          Width = 170
          Height = 13
          Caption = 'Campos padr'#245'es PDV, bot'#227'o incluir.'
        end
        object Label15: TLabel
          Left = 181
          Top = 24
          Width = 51
          Height = 13
          Caption = 'CodCliente'
        end
        object Label16: TLabel
          Left = 299
          Top = 24
          Width = 64
          Height = 13
          Caption = 'CodAlmoxarif.'
        end
        object Label17: TLabel
          Left = 421
          Top = 24
          Width = 62
          Height = 13
          Caption = 'CodNatureza'
        end
        object Label18: TLabel
          Left = 528
          Top = 24
          Width = 51
          Height = 13
          Caption = 'Forma imp.'
        end
        object Edit17: TEdit
          Left = 366
          Top = 21
          Width = 49
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object BitBtn7: TBitBtn
          Left = 679
          Top = 19
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 3
          OnClick = BitBtn7Click
        end
        object Edit18: TEdit
          Left = 235
          Top = 21
          Width = 58
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object Edit19: TEdit
          Left = 490
          Top = 21
          Width = 36
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
        object ComboBox2: TComboBox
          Left = 583
          Top = 21
          Width = 80
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 4
          Text = 'CUPOM'
          Items.Strings = (
            'CUPOM'
            'PEDIDO')
        end
      end
      object GroupBox12: TGroupBox
        Left = 10
        Top = 325
        Width = 769
        Height = 41
        Caption = 
          'Formata'#231#227'o usadas no sistema (n. casas decimais...) D1 : Qtde, D' +
          '2 : Valor'
        TabOrder = 5
        object Label25: TLabel
          Left = 40
          Top = 14
          Width = 197
          Height = 13
          Caption = 'Masc'#225'ra Quantidade(N. casas decimais) :'
        end
        object Label26: TLabel
          Left = 312
          Top = 16
          Width = 169
          Height = 13
          Caption = 'Masc'#225'ra Valor (N. casas decimais) :'
        end
        object BitBtn12: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn12Click
        end
        object MaskEdit1: TMaskEdit
          Left = 248
          Top = 15
          Width = 41
          Height = 21
          TabOrder = 1
          Text = '1'
        end
        object MaskEdit2: TMaskEdit
          Left = 495
          Top = 14
          Width = 34
          Height = 21
          TabOrder = 2
          Text = '2'
        end
      end
      object GroupBox43: TGroupBox
        Left = 16
        Top = 368
        Width = 761
        Height = 65
        Caption = 'Campos Obrigat'#243'rios'
        TabOrder = 6
        object cbNFCompraFinalizar: TCheckBox
          Left = 8
          Top = 16
          Width = 177
          Height = 17
          Caption = 'Nota Fiscal - Compras Finalizar'
          TabOrder = 0
        end
        object BitBtn45: TBitBtn
          Left = 671
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn45Click
        end
      end
      object GroupBox47: TGroupBox
        Left = 9
        Top = 440
        Width = 769
        Height = 41
        Caption = 'Casas Decimais VENDAS, Valor'
        TabOrder = 7
        object Label85: TLabel
          Left = 312
          Top = 16
          Width = 105
          Height = 13
          Caption = 'Casas Decimais Valor:'
        end
        object BitBtn51: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn51Click
        end
        object edCasas: TMaskEdit
          Left = 424
          Top = 14
          Width = 34
          Height = 21
          TabOrder = 1
          Text = '2'
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 4
      object GroupBox16: TGroupBox
        Left = 3
        Top = 116
        Width = 778
        Height = 43
        Caption = 'FINANCEIRO - Bot'#227'o  RECEITAS e Menu LAN'#199'AR COBRAN'#199'A'
        TabOrder = 0
        object Label29: TLabel
          Left = 8
          Top = 19
          Width = 272
          Height = 13
          Caption = 'Desabilitar Bot'#227'o Receita e o Menu Lan'#231'ar COBRAN'#199'A :'
        end
        object BitBtn16: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn16Click
        end
        object ComboBox7: TComboBox
          Left = 308
          Top = 16
          Width = 77
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'S'
            'N')
        end
      end
      object GroupBox17: TGroupBox
        Left = 3
        Top = 164
        Width = 778
        Height = 43
        Caption = 'C'#225'lcula Juros em T'#237'tulos a Receber'
        TabOrder = 1
        object Label30: TLabel
          Left = 8
          Top = 19
          Width = 69
          Height = 13
          Caption = 'C'#225'lcula Juros :'
        end
        object Label31: TLabel
          Left = 208
          Top = 16
          Width = 109
          Height = 13
          Caption = 'Valor do Juros mensal :'
        end
        object Label32: TLabel
          Left = 420
          Top = 21
          Width = 8
          Height = 13
          Caption = '%'
        end
        object BitBtn17: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn17Click
        end
        object cbUsaJuros: TComboBox
          Left = 100
          Top = 16
          Width = 77
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'S'
            'N')
        end
        object edJuros: TJvCalcEdit
          Left = 320
          Top = 14
          Width = 97
          Height = 21
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Cadastros'
      ImageIndex = 5
      object GroupBox20: TGroupBox
        Left = 3
        Top = 16
        Width = 778
        Height = 89
        Caption = 'Cadastro Cliente'
        TabOrder = 0
        object Label35: TLabel
          Left = 8
          Top = 19
          Width = 274
          Height = 13
          Caption = 'Utiliza REPRESENTANTE ou  REFERENCIA no cadastro'
        end
        object BitBtn20: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn20Click
        end
        object ComboBox10: TComboBox
          Left = 308
          Top = 16
          Width = 149
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'REPRESENTANTE'
            'REFERENCIA')
        end
        object GroupBox44: TGroupBox
          Left = 7
          Top = 40
          Width = 762
          Height = 46
          Caption = 'Bloqueia Venda - Cadastro sem consulta ou vencido'
          TabOrder = 2
          object Label67: TLabel
            Left = 11
            Top = 18
            Width = 169
            Height = 13
            Caption = 'Informe o Prazo (dias) para bloqueio'
          end
          object Label71: TLabel
            Left = 228
            Top = 21
            Width = 154
            Height = 13
            Caption = 'Zero o sistema n'#227'o far'#225' bloqueio'
          end
          object edtConsultaCliente: TEdit
            Left = 189
            Top = 16
            Width = 33
            Height = 21
            TabOrder = 0
            Text = '0'
          end
          object BitBtn46: TBitBtn
            Left = 673
            Top = 12
            Width = 75
            Height = 25
            Caption = 'Gravar'
            TabOrder = 1
            OnClick = BitBtn46Click
          end
        end
      end
      object rgCadastroCliente: TRadioGroup
        Left = 5
        Top = 110
        Width = 353
        Height = 41
        Caption = 'Cadastro de Cliente'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Cadastro P. Juridico'
          'Cadastro P. F'#237'sica')
        TabOrder = 1
        OnClick = rgCadastroClienteClick
      end
      object GroupBox38: TGroupBox
        Left = 5
        Top = 160
        Width = 801
        Height = 49
        Caption = 
          'Exibe condi'#231'oes na Lista de Produtos (ex.:  Desconto a Vista 5% ' +
          '- 95 , Pre'#231'o a Prazo (+10%) - 110)'
        TabOrder = 2
        object Label61: TLabel
          Left = 8
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Condi'#231'ao 1'
        end
        object Label62: TLabel
          Left = 213
          Top = 18
          Width = 54
          Height = 13
          Caption = 'Condi'#231'ao 2'
        end
        object Label63: TLabel
          Left = 413
          Top = 18
          Width = 54
          Height = 13
          Caption = 'Condi'#231'ao 3'
        end
        object Label64: TLabel
          Left = 611
          Top = 17
          Width = 52
          Height = 13
          Caption = 'Arredondar'
        end
        object edListaCondicao1: TEdit
          Left = 72
          Top = 16
          Width = 89
          Height = 21
          TabOrder = 0
        end
        object edListaCondicaoCalc1: TEdit
          Left = 166
          Top = 16
          Width = 43
          Height = 21
          TabOrder = 1
          Text = '0'
        end
        object BitBtn38: TBitBtn
          Left = 718
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = BitBtn38Click
        end
        object edListaCondicao2: TEdit
          Left = 272
          Top = 16
          Width = 89
          Height = 21
          TabOrder = 3
        end
        object edListaCondicaoCalc2: TEdit
          Left = 366
          Top = 16
          Width = 43
          Height = 21
          TabOrder = 4
          Text = '0'
        end
        object edListaCondicao3: TEdit
          Left = 472
          Top = 16
          Width = 89
          Height = 21
          TabOrder = 5
        end
        object edListaCondicaoCalc3: TEdit
          Left = 566
          Top = 16
          Width = 43
          Height = 21
          TabOrder = 6
          Text = '0'
        end
        object edCondicaoArredondar: TEdit
          Left = 672
          Top = 16
          Width = 41
          Height = 21
          TabOrder = 7
          Text = '0'
        end
      end
      object GroupBox42: TGroupBox
        Left = 5
        Top = 216
        Width = 801
        Height = 137
        Caption = 'Cadastro Produto'
        TabOrder = 3
        object Label68: TLabel
          Left = 142
          Top = 12
          Width = 39
          Height = 13
          Caption = 'GRUPO'
        end
        object Label69: TLabel
          Left = 321
          Top = 13
          Width = 61
          Height = 13
          Caption = 'SUBGRUPO'
        end
        object Label70: TLabel
          Left = 501
          Top = 12
          Width = 59
          Height = 13
          Caption = 'APLICACAO'
        end
        object Label76: TLabel
          Left = 8
          Top = 64
          Width = 745
          Height = 16
          Caption = 
            'PRECO CUSTO - Para o sistema n'#227'o altera-lo coloque no parametro ' +
            'PRECOESTOQUE no campo D1 = PRECOCUSTOFIXO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label91: TLabel
          Left = 8
          Top = 88
          Width = 679
          Height = 16
          Caption = 
            'Casas Decimais ESTOQUE ATUAL , Parametro :  PRODUTO  , campo D5 ' +
            ', coloque o n'#250'mero de Casas Decimais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn44: TBitBtn
          Left = 681
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn44Click
        end
        object edCadProdutoCampo1: TEdit
          Left = 139
          Top = 27
          Width = 176
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 1
        end
        object edCadProdutoCampo2: TEdit
          Left = 319
          Top = 27
          Width = 176
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 2
        end
        object edCadProdutoCampo3: TEdit
          Left = 499
          Top = 27
          Width = 176
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 3
        end
        object chkCadastroProduto: TCheckBox
          Left = 6
          Top = 28
          Width = 123
          Height = 17
          Caption = 'Campos Obrigat'#243'rios :'
          TabOrder = 4
          OnClick = chkCadastroProdutoClick
        end
      end
    end
    object Compras: TTabSheet
      Caption = 'Compras'
      ImageIndex = 6
      object Label92: TLabel
        Left = 16
        Top = 304
        Width = 521
        Height = 16
        Caption = 
          'Parametro  COMPRA , Campo D3 = N, ao Finalizar a compra n'#227'o alte' +
          'ra o Valor da S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 10
        Top = 9
        Width = 769
        Height = 48
        Caption = 
          'Conta para Lan'#231'amentos no Caixa Referente a Compra (CONTA_FORNEC' +
          'EDOR)'
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 26
          Width = 486
          Height = 13
          Caption = 
            'Ver no Plano de Contas a conta do Passivo (2.1...) com Consolida' +
            ' = S, que se refere a Contas a Pagar.'
        end
        object Edit13: TEdit
          Left = 528
          Top = 23
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 678
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
      object GroupBox11: TGroupBox
        Left = 10
        Top = 67
        Width = 769
        Height = 48
        Caption = 
          'Dados padr'#245'es para abertura do FiltroMovimentoCompra(PADRAOFILTR' +
          'OCOMPRA)'
        TabOrder = 1
        object Label21: TLabel
          Left = 8
          Top = 25
          Width = 100
          Height = 13
          Caption = 'Usa valores padr'#245'es:'
        end
        object Label22: TLabel
          Left = 189
          Top = 26
          Width = 59
          Height = 13
          Caption = 'Data Inicial :'
        end
        object Label23: TLabel
          Left = 346
          Top = 25
          Width = 54
          Height = 13
          Caption = 'Data Final :'
        end
        object BitBtn11: TBitBtn
          Left = 680
          Top = 19
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn11Click
        end
        object ComboBox6: TComboBox
          Left = 117
          Top = 23
          Width = 55
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object meDta3: TMaskEdit
          Left = 254
          Top = 23
          Width = 80
          Height = 21
          TabOrder = 2
        end
        object meDta4: TMaskEdit
          Left = 407
          Top = 23
          Width = 83
          Height = 21
          TabOrder = 3
        end
      end
      object GroupBox19: TGroupBox
        Left = 10
        Top = 124
        Width = 769
        Height = 48
        Caption = 'Usa Lista de Pre'#231'os p'#244'r Fornecedor ?'
        TabOrder = 2
        object Label34: TLabel
          Left = 384
          Top = 27
          Width = 209
          Height = 13
          Caption = 'Informe Sim se for usar lista p'#244'r Fornecedor .'
        end
        object BitBtn19: TBitBtn
          Left = 680
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn19Click
        end
        object ComboBox9: TComboBox
          Left = 599
          Top = 23
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
      end
      object GroupBox25: TGroupBox
        Left = 11
        Top = 181
        Width = 766
        Height = 48
        Caption = 'Aprova'#231#227'o de Pedido de Compra'
        TabOrder = 3
        object Label40: TLabel
          Left = 8
          Top = 30
          Width = 130
          Height = 13
          Caption = 'Aprova'#231#227'o Pedido  Compra'
        end
        object Label41: TLabel
          Left = 210
          Top = 29
          Width = 162
          Height = 13
          Caption = 'Usu'#225'rio Padr'#227'o Resp. Aprova'#231#227'o '
        end
        object BitBtn25: TBitBtn
          Left = 680
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn25Click
        end
        object ComboBox11: TComboBox
          Left = 143
          Top = 23
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object edUserRespAprovaCompra: TEdit
          Left = 384
          Top = 23
          Width = 121
          Height = 21
          TabOrder = 2
        end
      end
      object GroupBox26: TGroupBox
        Left = 10
        Top = 237
        Width = 766
        Height = 48
        Caption = 'Usu'#225'rio Padr'#227'o para Aprova'#231#227'o de Solicita'#231#227'o de Compra'
        TabOrder = 4
        object Label43: TLabel
          Left = 210
          Top = 29
          Width = 162
          Height = 13
          Caption = 'Usu'#225'rio Padr'#227'o Resp. Aprova'#231#227'o '
        end
        object BitBtn26: TBitBtn
          Left = 680
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn26Click
        end
        object Edit22: TEdit
          Left = 384
          Top = 23
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 7
      object Label89: TLabel
        Left = 4
        Top = 472
        Width = 854
        Height = 13
        Caption = 
          'IMPRIMIR Cupom - Fin. venda : Parametro IMPARQUIVO Dados :  C:\h' +
          'ome\imprime.txt , a porta imp. usa PDV, D3 = APLICATIVO (usa prj' +
          'Imprime.exe)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label90: TLabel
        Left = 4
        Top = 457
        Width = 514
        Height = 13
        Caption = 
          'Exibir Total na tela Filtro VENDA : Parametro VENDAVERTOTAL , Da' +
          'dos = codigo Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 2
        Width = 769
        Height = 47
        Caption = 
          'Tipo de Form de Procura do Produto para o Form VENDA (TERMINALVE' +
          'NDAS)'
        TabOrder = 0
        object BitBtn8: TBitBtn
          Left = 679
          Top = 17
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object RadioGroup2: TRadioGroup
          Left = 9
          Top = 11
          Width = 647
          Height = 31
          Columns = 2
          Items.Strings = (
            'Simples (somento descri'#231#227'o, com op'#231#227'o de inserir direto)'
            'Completo , todas op'#231#245'es de busca.')
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 51
        Width = 769
        Height = 81
        Caption = 
          'Usa anota'#231#245'es em Vendas (Campo Controle tabela Movimento Detalhe' +
          ') - Combobox usa D1 a D9. - ANOTACOESVENDAS'
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 31
          Width = 70
          Height = 13
          Caption = 'Insira os itens :'
        end
        object RadioGroup1: TRadioGroup
          Left = 640
          Top = 8
          Width = 113
          Height = 41
          Caption = 'Usa Anota'#231#245'es:'
          Columns = 2
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 96
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 232
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
        object Edit5: TEdit
          Left = 368
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 3
        end
        object Edit6: TEdit
          Left = 496
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 4
        end
        object Edit7: TEdit
          Left = 8
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 5
        end
        object Edit8: TEdit
          Left = 136
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 6
        end
        object Edit9: TEdit
          Left = 264
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 7
        end
        object Edit10: TEdit
          Left = 392
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 8
        end
        object Edit11: TEdit
          Left = 528
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 9
        end
        object BitBtn1: TBitBtn
          Left = 678
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 10
          OnClick = BitBtn1Click
        end
      end
      object GroupBox29: TGroupBox
        Left = 2
        Top = 132
        Width = 769
        Height = 48
        Caption = 'Campo Controle  e Obs. no Formul'#225'rio FINALIZAR VENDA (CONTROLE)'
        TabOrder = 2
        object Label45: TLabel
          Left = 8
          Top = 20
          Width = 99
          Height = 13
          Caption = 'Usa campo Controle:'
        end
        object Label46: TLabel
          Left = 224
          Top = 20
          Width = 85
          Height = 13
          Caption = 'Nome do Campo :'
        end
        object Edit23: TEdit
          Left = 320
          Top = 20
          Width = 345
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object ComboBox12: TComboBox
          Left = 117
          Top = 20
          Width = 55
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object BitBtn6: TBitBtn
          Left = 678
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = BitBtn6Click
        end
      end
      object GroupBox10: TGroupBox
        Left = 2
        Top = 181
        Width = 769
        Height = 48
        Caption = 
          'Dados padr'#245'es para abertura do FiltroMovimentoVenda(PADRAOFILTRO' +
          'VENDA)'
        TabOrder = 3
        object Label11: TLabel
          Left = 8
          Top = 20
          Width = 100
          Height = 13
          Caption = 'Usa valores padr'#245'es:'
        end
        object Label12: TLabel
          Left = 184
          Top = 20
          Width = 59
          Height = 13
          Caption = 'Data Inicial :'
        end
        object Label13: TLabel
          Left = 344
          Top = 20
          Width = 54
          Height = 13
          Caption = 'Data Final :'
        end
        object BitBtn10: TBitBtn
          Left = 678
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn10Click
        end
        object ComboBox5: TComboBox
          Left = 117
          Top = 20
          Width = 55
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object meDta1: TMaskEdit
          Left = 256
          Top = 20
          Width = 80
          Height = 21
          TabOrder = 2
        end
        object meDta2: TMaskEdit
          Left = 407
          Top = 20
          Width = 83
          Height = 21
          TabOrder = 3
        end
      end
      object GroupBox7: TGroupBox
        Left = 2
        Top = 230
        Width = 496
        Height = 48
        Caption = 'Margem de Lucro Permitido no Pedido de Venda'
        TabOrder = 4
        object Label9: TLabel
          Left = 8
          Top = 20
          Width = 129
          Height = 13
          Caption = 'Utiliza limite Margem Venda'
        end
        object Label47: TLabel
          Left = 200
          Top = 20
          Width = 122
          Height = 13
          Caption = 'Margem M'#237'nima Permitida'
        end
        object ComboBox1: TComboBox
          Left = 142
          Top = 20
          Width = 55
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object MaskEdit4: TMaskEdit
          Left = 335
          Top = 20
          Width = 66
          Height = 21
          TabOrder = 1
        end
        object BitBtn29: TBitBtn
          Left = 413
          Top = 19
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = BitBtn29Click
        end
      end
      object GroupBox30: TGroupBox
        Left = 2
        Top = 281
        Width = 769
        Height = 40
        Caption = 
          'Utiliza Expedi'#231#227'o para Vendas (O Estoque so ser'#225' baixado no mome' +
          'nto que o Status da Expedi'#231#227'o for igual a ENTREGUE'
        TabOrder = 5
        object Label10: TLabel
          Left = 8
          Top = 20
          Width = 610
          Height = 13
          Caption = 
            'Este parametro '#233' configurado em Natureza da Opera'#231#227'o, a Natureza' +
            ' c'#243'digo 3 deve ter o campo BaixaMovimento alterado para 9'
        end
      end
      object GroupBox31: TGroupBox
        Left = 2
        Top = 321
        Width = 263
        Height = 39
        Caption = 'Desconto na Venda de Clientes com SUFRAMA'
        TabOrder = 6
        object Label51: TLabel
          Left = 8
          Top = 20
          Width = 57
          Height = 13
          Caption = 'Desconto %'
        end
        object MaskEdit3: TMaskEdit
          Left = 74
          Top = 15
          Width = 66
          Height = 21
          TabOrder = 0
        end
        object BitBtn31: TBitBtn
          Left = 157
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn31Click
        end
      end
      object RadioGroup3: TRadioGroup
        Left = 502
        Top = 232
        Width = 269
        Height = 45
        Caption = 'Vendedor Igual Usu'#225'rio Logado'
        Columns = 3
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 7
      end
      object BitBtn32: TBitBtn
        Left = 681
        Top = 245
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 8
        OnClick = BitBtn32Click
      end
      object rgBloqueio: TRadioGroup
        Left = 271
        Top = 321
        Width = 266
        Height = 37
        Caption = 'Mensagem Personalizada para Cliente Bloqueado'
        Columns = 2
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 9
        OnClick = rgBloqueioClick
      end
      object GroupBox41: TGroupBox
        Left = 0
        Top = 360
        Width = 769
        Height = 45
        Caption = 'Lista de Pre'#231'o'
        TabOrder = 10
        object Label65: TLabel
          Left = 323
          Top = 15
          Width = 105
          Height = 13
          Caption = 'Lista de Pre'#231'o Padrao'
        end
        object Label66: TLabel
          Left = 323
          Top = 27
          Width = 114
          Height = 13
          Caption = 'informe o c'#243'digo da lista'
        end
        object Label80: TLabel
          Left = 16
          Top = 24
          Width = 169
          Height = 13
          Caption = 'S=ListaPre'#231'o ou C=Lista por Cliente'
        end
        object LISTAPRECOGrava: TBitBtn
          Left = 674
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = LISTAPRECOGravaClick
        end
        object edCodigoListaPadrao: TEdit
          Left = 452
          Top = 19
          Width = 69
          Height = 21
          TabOrder = 1
        end
        object Edit24: TEdit
          Left = 196
          Top = 19
          Width = 69
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox50: TGroupBox
        Left = 0
        Top = 407
        Width = 769
        Height = 45
        Caption = 'Bloquear Finaliza'#231#227'o de Vendas em caso de inadimpl'#234'ncia'
        TabOrder = 11
        object Label95: TLabel
          Left = 16
          Top = 24
          Width = 151
          Height = 13
          Caption = 'Bloquear inadimplentes (S ou N)'
        end
        object BitBtn55: TBitBtn
          Left = 674
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn55Click
        end
        object Edit27: TEdit
          Left = 196
          Top = 19
          Width = 69
          Height = 21
          TabOrder = 0
          Text = 'N'
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Centro de Resultado'
      ImageIndex = 8
      object GroupBox18: TGroupBox
        Left = 0
        Top = 136
        Width = 778
        Height = 43
        Caption = 'Centro de Custo Padr'#227'o - Usado para exibir o Estoque do Item'
        TabOrder = 0
        object Label33: TLabel
          Left = 8
          Top = 19
          Width = 125
          Height = 13
          Caption = 'Usa Centro de Resultado :'
        end
        object Label48: TLabel
          Left = 216
          Top = 16
          Width = 222
          Height = 13
          Caption = 'C'#243'digo da Conta Principal Centro de Resultado'
        end
        object Label49: TLabel
          Left = 520
          Top = 19
          Width = 80
          Height = 13
          Caption = 'C.Result. Padr'#227'o'
        end
        object Edit20: TEdit
          Left = 444
          Top = 16
          Width = 57
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object BitBtn18: TBitBtn
          Left = 682
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 3
          OnClick = BitBtn18Click
        end
        object cbCentroCusto: TComboBox
          Left = 143
          Top = 16
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'S'
            'N')
        end
        object Edit21: TEdit
          Left = 605
          Top = 16
          Width = 57
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Temas'
      ImageIndex = 9
      object JvOutlookBar1: TJvOutlookBar
        Left = 0
        Top = 0
        Width = 169
        Height = 485
        Align = alLeft
        Pages = <
          item
            Buttons = <
              item
                Caption = 'JvOutlookBarButton1'
                ImageIndex = 0
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton2'
                ImageIndex = 1
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton3'
                ImageIndex = 2
                Tag = 0
                AutoToggle = False
              end>
            ButtonSize = olbsLarge
            Caption = 'JvOutlookBarPage1'
            Color = clBtnShadow
            DownFont.Charset = DEFAULT_CHARSET
            DownFont.Color = clWindowText
            DownFont.Height = -11
            DownFont.Name = 'MS Shell Dlg 2'
            DownFont.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Shell Dlg 2'
            Font.Style = []
            ParentColor = True
            TopButtonIndex = 0
          end
          item
            Buttons = <
              item
                Caption = 'JvOutlookBarButton4'
                ImageIndex = 4
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton5'
                ImageIndex = 5
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton6'
                ImageIndex = 6
                Tag = 0
                AutoToggle = False
              end>
            ButtonSize = olbsLarge
            Caption = 'JvOutlookBarPage2'
            Color = clBtnShadow
            DownFont.Charset = DEFAULT_CHARSET
            DownFont.Color = clWindowText
            DownFont.Height = -11
            DownFont.Name = 'MS Shell Dlg 2'
            DownFont.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Shell Dlg 2'
            Font.Style = []
            ParentColor = True
            TopButtonIndex = 0
          end
          item
            Buttons = <
              item
                Caption = 'JvOutlookBarButton7'
                ImageIndex = 7
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton8'
                ImageIndex = 8
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton9'
                ImageIndex = 9
                Tag = 0
                AutoToggle = False
              end>
            ButtonSize = olbsLarge
            Caption = 'JvOutlookBarPage3'
            Color = clBtnShadow
            DownFont.Charset = DEFAULT_CHARSET
            DownFont.Color = clWindowText
            DownFont.Height = -11
            DownFont.Name = 'MS Shell Dlg 2'
            DownFont.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Shell Dlg 2'
            Font.Style = []
            ParentColor = True
            TopButtonIndex = 0
          end
          item
            Buttons = <
              item
                Caption = 'JvOutlookBarButton10'
                ImageIndex = 10
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton11'
                ImageIndex = 11
                Tag = 0
                AutoToggle = False
              end
              item
                Caption = 'JvOutlookBarButton12'
                ImageIndex = 12
                Tag = 0
                AutoToggle = False
              end>
            ButtonSize = olbsLarge
            Caption = 'JvOutlookBarPage4'
            Color = clBtnShadow
            DownFont.Charset = DEFAULT_CHARSET
            DownFont.Color = clWindowText
            DownFont.Height = -11
            DownFont.Name = 'MS Shell Dlg 2'
            DownFont.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Shell Dlg 2'
            Font.Style = []
            ParentColor = True
            TopButtonIndex = 0
          end>
        LargeImages = ImageList2
        SmallImages = ImageList1
        PageButtonHeight = 24
        ActivePageIndex = 3
        BorderStyle = bsNone
        TabOrder = 0
      end
      object ComboBox13: TComboBox
        Left = 192
        Top = 72
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnChange = ComboBox13Change
        Items.Strings = (
          'Large'
          'Small')
      end
      object ComboBox14: TComboBox
        Left = 192
        Top = 24
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnChange = ComboBox14Change
        Items.Strings = (
          'nptStandard'
          'nptXPBlue'
          'nptXPSilver'
          'nptXPOlive')
      end
    end
    object TabPDV: TTabSheet
      Caption = 'PDV'
      ImageIndex = 10
      object pgc1: TPageControl
        Left = 0
        Top = 0
        Width = 881
        Height = 485
        ActivePage = ts1
        Align = alClient
        TabOrder = 0
        object ts1: TTabSheet
          Caption = 'ts1'
          object lbl1: TLabel
            Left = 369
            Top = 11
            Width = 146
            Height = 13
            Caption = 'Mensagem impressa no cupom'
          end
          object lbl2: TLabel
            Left = 369
            Top = 95
            Width = 85
            Height = 13
            Caption = 'Porta Imp. Setor 1'
          end
          object lbl3: TLabel
            Left = 691
            Top = 95
            Width = 61
            Height = 13
            Caption = 'S'#233'rie Padr'#227'o'
          end
          object lbl4: TLabel
            Left = 584
            Top = 95
            Width = 85
            Height = 13
            Caption = 'Porta Imp. Setor 3'
          end
          object lbl5: TLabel
            Left = 477
            Top = 95
            Width = 85
            Height = 13
            Caption = 'Porta Imp. Setor 2'
          end
          object lbl15: TLabel
            Left = 203
            Top = 122
            Width = 56
            Height = 13
            Caption = '% Comiss'#227'o'
          end
          object Label88: TLabel
            Left = 9
            Top = 420
            Width = 333
            Height = 13
            Caption = 'PDV novo: PARAMETRO :  EMPRESA - CAMPO D1 = PDV'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chkImpUmRecibo: TCheckBox
            Left = 11
            Top = 385
            Width = 294
            Height = 17
            Caption = 'Imprime um Recibo para todos Selecionados.'
            TabOrder = 0
            OnClick = chkImpUmReciboClick
          end
          object chkcontroleCaixa: TCheckBox
            Left = 11
            Top = 364
            Width = 294
            Height = 17
            Caption = 'Usa Controle de caixa ?'
            TabOrder = 1
            OnClick = chkcontroleCaixaClick
          end
          object chkImpressaoResumida: TCheckBox
            Left = 11
            Top = 346
            Width = 294
            Height = 17
            Caption = 'Imprimir descri'#231#227'o resumida no fechamento do Pedido ?'
            TabOrder = 2
            OnClick = chkImpressaoResumidaClick
          end
          object chkBloquearComanda: TCheckBox
            Left = 11
            Top = 328
            Width = 211
            Height = 17
            Caption = 'Bloquear Mesa/Comanda ao imp.parcial'
            TabOrder = 3
            OnClick = chkBloquearComandaClick
          end
          object chkPedirSenha: TCheckBox
            Left = 11
            Top = 310
            Width = 211
            Height = 17
            Caption = 'Para Excluir ou cancelar Pedir Senha'
            TabOrder = 4
            OnClick = chkPedirSenhaClick
          end
          object chkNaoAlterarPreco: TCheckBox
            Left = 11
            Top = 292
            Width = 211
            Height = 17
            Caption = 'N'#227'o permitir altara'#231#245'es de pre'#231'o'
            TabOrder = 5
          end
          object chkDelivery: TCheckBox
            Left = 11
            Top = 274
            Width = 211
            Height = 17
            Caption = 'Usa Controle de Delivery ?'
            TabOrder = 6
            OnClick = chkDeliveryClick
          end
          object chkComandas: TCheckBox
            Left = 11
            Top = 255
            Width = 211
            Height = 17
            Caption = 'Usa Controle de Comandas ?'
            TabOrder = 7
            OnClick = chkComandasClick
          end
          object chkVendaConsumidor: TCheckBox
            Left = 11
            Top = 237
            Width = 211
            Height = 17
            Caption = 'Usa Venda ao Consumidor ?'
            TabOrder = 8
            OnClick = chkVendaConsumidorClick
          end
          object chkImprimirTXT: TCheckBox
            Left = 11
            Top = 218
            Width = 211
            Height = 17
            Caption = 'Imprimr para Arquivo ?'
            TabOrder = 9
            OnClick = chkImprimirTXTClick
          end
          object rgPgComissao: TRadioGroup
            Left = 9
            Top = 122
            Width = 192
            Height = 40
            Caption = 'Paga Comiss'#227'o'
            Columns = 2
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 10
            OnClick = rgPgComissaoClick
          end
          object rgUsaLote: TRadioGroup
            Left = 9
            Top = 79
            Width = 289
            Height = 40
            Caption = 'Usa Controle de Lote'
            Columns = 2
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 11
            OnClick = rgUsaLoteClick
          end
          object rgBuscaPadrao: TRadioGroup
            Left = 9
            Top = 41
            Width = 288
            Height = 39
            Caption = 'Busca Padr'#227'o'
            Columns = 2
            Items.Strings = (
              'Codigo de Barra'
              'Codigo do Produto')
            TabOrder = 12
            OnClick = rgBuscaPadraoClick
          end
          object rgTipoImpressao: TRadioGroup
            Left = 8
            Top = 2
            Width = 289
            Height = 40
            Caption = 'Tipo de Impress'#227'o'
            Columns = 3
            Items.Strings = (
              'Cupom'
              'Recibo PreVis.'
              'Recibo Direto')
            TabOrder = 13
            OnClick = rgTipoImpressaoClick
          end
          object edtMensagem: TEdit
            Left = 368
            Top = 29
            Width = 393
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 14
            OnChange = edtMensagemChange
          end
          object edtMensagem1: TEdit
            Left = 368
            Top = 50
            Width = 393
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 15
            OnChange = edtMensagem1Change
          end
          object edtMensagem2: TEdit
            Left = 368
            Top = 71
            Width = 393
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 16
            OnChange = edtMensagem2Change
          end
          object edtEdtPorta: TEdit
            Left = 368
            Top = 113
            Width = 105
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 17
            OnChange = edtEdtPortaChange
          end
          object edtSetor2: TEdit
            Left = 476
            Top = 113
            Width = 105
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 18
            OnChange = edtSetor2Change
          end
          object edtSetor3: TEdit
            Left = 583
            Top = 113
            Width = 105
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 19
            OnChange = edtSetor3Change
          end
          object edtEdtSerie: TEdit
            Left = 690
            Top = 113
            Width = 71
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 20
            OnChange = edtEdtSerieChange
          end
          object grp1: TGroupBox
            Left = 368
            Top = 139
            Width = 394
            Height = 106
            Caption = 'Perfil Para Aprova'#231#227'o '
            TabOrder = 21
            object lbl6: TLabel
              Left = 10
              Top = 12
              Width = 38
              Height = 13
              Caption = 'Perfil 01'
            end
            object lbl7: TLabel
              Left = 206
              Top = 12
              Width = 38
              Height = 13
              Caption = 'Perfil 02'
            end
            object lbl8: TLabel
              Left = 206
              Top = 60
              Width = 38
              Height = 13
              Caption = 'Perfil 04'
            end
            object lbl9: TLabel
              Left = 10
              Top = 60
              Width = 38
              Height = 13
              Caption = 'Perfil 03'
            end
            object edtPerfil01: TEdit
              Left = 11
              Top = 28
              Width = 163
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 0
              OnChange = edtPerfil01Change
            end
            object edtPerfil02: TEdit
              Left = 207
              Top = 28
              Width = 163
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 1
              OnChange = edtPerfil02Change
            end
            object edtPerfil04: TEdit
              Left = 207
              Top = 76
              Width = 163
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 2
              OnChange = edtPerfil04Change
            end
            object edtPerfil03: TEdit
              Left = 11
              Top = 76
              Width = 163
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 3
              OnChange = edtPerfil03Change
            end
          end
          object grp2: TGroupBox
            Left = 368
            Top = 247
            Width = 401
            Height = 122
            Caption = 'Impressora Bematech n'#227'o Fiscal'
            TabOrder = 22
            object lbl10: TLabel
              Left = 227
              Top = 6
              Width = 104
              Height = 13
              Caption = 'Modelo da Impressora'
            end
            object Label52: TLabel
              Left = 206
              Top = 21
              Width = 57
              Height = 13
              Caption = 'Nome Micro'
            end
            object Label53: TLabel
              Left = 270
              Top = 22
              Width = 57
              Height = 13
              Caption = 'Nome Micro'
            end
            object Label54: TLabel
              Left = 334
              Top = 22
              Width = 57
              Height = 13
              Caption = 'Nome Micro'
            end
            object Label55: TLabel
              Left = 210
              Top = 63
              Width = 161
              Height = 13
              Caption = 'Impressoras = 4000 TH - 4200 TH'
            end
            object Label56: TLabel
              Left = 209
              Top = 105
              Width = 165
              Height = 13
              Caption = 'Obs = 4000 TH = 5 /  4200 TH = 7'
            end
            object chkUsaDLL: TCheckBox
              Left = 8
              Top = 71
              Width = 180
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Usa DLL  ?'
              TabOrder = 0
              OnClick = chkUsaDLLClick
            end
            object chkImpAoGravar: TCheckBox
              Left = 7
              Top = 24
              Width = 180
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Imprimir ao Gravar Pedido  ?'
              TabOrder = 1
              OnClick = chkImpAoGravarClick
            end
            object chkAbrirGavetaAoGravar: TCheckBox
              Left = 7
              Top = 49
              Width = 181
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Abrir gaveta ao Gravar Pedido ?'
              TabOrder = 2
              OnClick = chkAbrirGavetaAoGravarClick
            end
            object edtModelo: TEdit
              Left = 210
              Top = 83
              Width = 29
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 3
              OnChange = edtModeloChange
            end
            object edtModelo2: TEdit
              Left = 272
              Top = 82
              Width = 25
              Height = 21
              TabOrder = 4
            end
            object edtModelo3: TEdit
              Left = 329
              Top = 83
              Width = 27
              Height = 21
              TabOrder = 5
            end
            object Pc2: TEdit
              Left = 270
              Top = 37
              Width = 59
              Height = 21
              TabOrder = 6
              OnChange = Pc1Change
            end
            object Pc1: TEdit
              Left = 206
              Top = 37
              Width = 59
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              TabOrder = 7
              OnChange = Pc1Change
            end
            object Pc3: TEdit
              Left = 334
              Top = 37
              Width = 61
              Height = 21
              TabOrder = 8
              OnChange = Pc1Change
            end
          end
          object rgEstoqueNegativo: TRadioGroup
            Left = 369
            Top = 370
            Width = 400
            Height = 37
            Caption = 'Permite estoque negativo'
            Columns = 2
            Items.Strings = (
              'N'#227'o'
              'Sim')
            TabOrder = 23
            OnClick = rgEstoqueNegativoClick
          end
          object chk1: TCheckBox
            Left = 371
            Top = 417
            Width = 294
            Height = 17
            Caption = 'PDV NTC ?'
            TabOrder = 24
            OnClick = chk1Click
          end
          object edtPorc: TEdit
            Left = 204
            Top = 139
            Width = 92
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 25
            Text = '0'
            OnChange = edtPorcChange
          end
          object rg1: TRadioGroup
            Left = 9
            Top = 165
            Width = 192
            Height = 40
            Caption = 'Lan'#231'ar comi'#231#227'o no C.R.'
            Columns = 2
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 26
            OnClick = rg1Click
          end
          object chkPDV_VENDEDOR: TCheckBox
            Left = 12
            Top = 404
            Width = 294
            Height = 17
            Caption = 'Obrigat'#243'rio informar vendedor no terminal'
            TabOrder = 27
            OnClick = chkPDV_VENDEDORClick
          end
        end
        object ts2: TTabSheet
          Caption = 'ts2'
          ImageIndex = 1
          object lbl11: TLabel
            Left = 10
            Top = 12
            Width = 230
            Height = 13
            Caption = 'Perfil sem autoriz. abertura de comandas/sangria'
          end
          object Label50: TLabel
            Left = 10
            Top = 52
            Width = 69
            Height = 13
            Caption = 'Cargo/Fun'#231#227'o'
          end
          object lbl12: TLabel
            Left = 10
            Top = 108
            Width = 151
            Height = 13
            Caption = 'Conta Usada para Caixa Interno'
          end
          object lbl13: TLabel
            Left = 10
            Top = 156
            Width = 154
            Height = 13
            Caption = 'Conta Usada para Caixa Sangria'
          end
          object lbl14: TLabel
            Left = 10
            Top = 248
            Width = 130
            Height = 13
            Caption = 'Perfil que usa tela completa'
          end
          object lbl16: TLabel
            Left = 10
            Top = 204
            Width = 168
            Height = 13
            Caption = 'Conta Usada para Contole Caixinha'
          end
          object Label60: TLabel
            Left = 11
            Top = 312
            Width = 160
            Height = 13
            Caption = 'C'#243'digo do Cliente CONSUMIDOR'
          end
          object Label74: TLabel
            Left = 248
            Top = 126
            Width = 550
            Height = 13
            Caption = 
              'No Plano de Contas, marque a Conta como INTERNO, a conta que apa' +
              'recer'#225' na terla recebimento Parcial, Dinheiro'
          end
          object Label75: TLabel
            Left = 248
            Top = 144
            Width = 434
            Height = 13
            Caption = 
              'Veja o parametro LISTARCAIXA informe em DADOS a conta PAI dos CA' +
              'ixas , geralmente 8.'
          end
          object Label86: TLabel
            Left = 8
            Top = 368
            Width = 747
            Height = 13
            Caption = 
              'Agilizar a BUSCA PRODUTO quando existe muitos Itens Cadastrados ' +
              ', coloque no Parametro PRODUTO  em DADOS :  SEMBUSCA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edt1: TEdit
            Left = 9
            Top = 28
            Width = 232
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 0
            OnChange = edt1Change
          end
          object BitBtn30: TBitBtn
            Left = 290
            Top = 65
            Width = 75
            Height = 25
            Caption = 'Gravar'
            TabOrder = 1
            OnClick = BitBtn30Click
          end
          object Edit14: TEdit
            Left = 9
            Top = 68
            Width = 232
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 2
          end
          object Button1: TButton
            Left = 248
            Top = 64
            Width = 25
            Height = 25
            Caption = '...'
            TabOrder = 3
            OnClick = Button1Click
          end
          object edtCXInterno: TEdit
            Left = 9
            Top = 124
            Width = 231
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clRed
            TabOrder = 4
            OnChange = edtCXInternoChange
          end
          object edtCXSangria: TEdit
            Left = 9
            Top = 172
            Width = 231
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 5
            OnChange = edtCXSangriaChange
          end
          object edtTela: TEdit
            Left = 9
            Top = 264
            Width = 231
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 6
            OnChange = edtTelaChange
          end
          object edtCaixinha: TEdit
            Left = 9
            Top = 220
            Width = 231
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 7
            OnChange = edtCaixinhaChange
          end
          object edtConsumidor: TEdit
            Left = 9
            Top = 328
            Width = 229
            Height = 21
            Color = clRed
            TabOrder = 8
            OnChange = edtConsumidorChange
          end
        end
      end
    end
    object tsCupom: TTabSheet
      Caption = 'Cupom'
      ImageIndex = 11
      object Label83: TLabel
        Left = 9
        Top = 208
        Width = 376
        Height = 13
        Caption = 'Parametro SAT para configurar o uso do SAT no Finalizar Vendas;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rgPesqProdCupom: TRadioGroup
        Left = 10
        Top = 16
        Width = 293
        Height = 49
        Caption = 'Pesquisa Produtos'
        Columns = 2
        Items.Strings = (
          'C'#243'digo Produto'
          'C'#243'digo de Barras')
        TabOrder = 0
        OnClick = rgPesqProdCupomClick
      end
      object GroupBox37: TGroupBox
        Left = 8
        Top = 80
        Width = 481
        Height = 49
        Caption = 
          'Usa Cupom Fiscal (Parametro  USACUPOM - Habilita no Vendas FINAL' +
          'IZAR o bot'#227'o CUPOM'
        TabOrder = 1
        object cbCupom: TCheckBox
          Left = 8
          Top = 24
          Width = 97
          Height = 17
          Caption = 'Sim'
          TabOrder = 0
          OnClick = cbCupomClick
        end
      end
      object GroupBox46: TGroupBox
        Left = 8
        Top = 136
        Width = 297
        Height = 49
        Caption = 'CFOP Utilizado para Emiss'#227'o do  CUPOM'
        TabOrder = 2
        object Label81: TLabel
          Left = 16
          Top = 24
          Width = 28
          Height = 13
          Caption = 'CFOP'
        end
        object edCFOP_CUPOM: TEdit
          Left = 56
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object BitBtn49: TBitBtn
          Left = 204
          Top = 17
          Width = 77
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn49Click
        end
      end
      object BitBtn50: TBitBtn
        Left = 392
        Top = 200
        Width = 97
        Height = 25
        Caption = 'Configurar SAT'
        TabOrder = 3
        OnClick = BitBtn50Click
      end
      object Memo1: TMemo
        Left = 8
        Top = 228
        Width = 729
        Height = 49
        Color = clScrollBar
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Quando usado o c'#243'digo "Cliente Consumidor" o mesmo cadastrado no' +
            ' parametro '#39'CONSUMIDOR'#39' o sistema n'#227'o informar'#225', '
          'dados do Cliente (Dados Entrega: Nome, Endere'#231'o) no Cupom.')
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  inherited MMJPanel1: TMMJPanel [2]
    Top = 530
    Width = 896
    inherited btnGravar: TBitBtn
      Left = 288
    end
    inherited btnIncluir: TBitBtn
      Left = 288
    end
    inherited btnCancelar: TBitBtn
      Left = 401
    end
    inherited btnExcluir: TBitBtn
      Left = 401
    end
    inherited btnProcurar: TBitBtn
      Left = 175
    end
    inherited btnSair: TBitBtn
      Left = 514
    end
  end
  inherited XPMenu1: TXPMenu
    Top = 32
  end
  inherited PopupMenu1: TPopupMenu
    Top = 32
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_param
    Left = 536
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = DM.cds_parametro
    Left = 704
    Top = 40
  end
  object sbusca: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 40
  end
  object ImageList1: TImageList
    Height = 17
    Width = 22
    Left = 280
    Top = 32
    Bitmap = {
      494C010111001300040016001100FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000058000000550000000100200000000000E074
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00EFE7DE00B5B58C008C9452009C84
      4200C6946300D6A58C00F7EFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CAD73009C5221007B8C420084AD5A0084AD5A00A573
      2900A5732900A5520000AD735A00FFFFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADC68C009C8442006B6B290094CE8400ADD684009C94
      5200A57329009C5221007B420000C68C4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFE7DE009CBD7B00ADA55200ADD68400ADDEAD009CAD
      73009C8442007B4A18007B420000AD733900ADA55200DEAD6300F7EFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFE7DE007BB56B00ADE7A500ADEFC6008CAD
      7B006B6B2900522910007B4A18008C9C7300ADA55200AD840800D6A58C00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFF700D6EFD600A5CE9C00A5CE9C007BB56B0094D6B5006BA5
      7B004A5A31005A634A0094A58400A5CE9C00B5B56B00AD840800A5520000CEAD
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5DEB500B5B56B00ADA55200A5EFC600ADDEAD009CAD73004A5A31004A31
      210084735200C6FFDE00CEFFE700B5DEB500ADBD7300AD840800A5520000CEAD
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5CE9C00BDE7C6008CB55A00C6FFDE00C6F7CE008C9C7300525210009442
      10009C391800CEDEC600E7FFFF00BDF7CE009CBD7B007B4200009C522100F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6EFD600A5CE9C00BDE7C600C6FFDE00CEFFE70084AD5A00ADD68400ADA5
      5200A552000094845A00CEEFFF00A5EFDE006BA57B007B7B5200EFEFE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6EFD600A5CE9C00CEFFE700E7FFFF009CBD7B0094DE9C008CAD
      7B0031291800BDB5AD005A735200735239009C9C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6EFD600A5CE9C00CEFFE700A5EFDE006BA57B004A84
      5A009C9C8C00B5CEA50073943100AD840800C6630800EFE7DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF7EF006B7B6B00734229009C9C8C000000
      000000000000ADDEAD00C6FFDE00BDD6AD00AD840800D6A58C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5CEA50073943100AD840800C6630800EFE7
      DE0000000000BDE7C600CEFFE700B5EFD6006B6B2900DEBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADDEAD00C6FFDE00BDD6AD00AD840800D6A5
      8C000000000000000000B5D6CE0073CEB5009CBDAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDE7C600CEFFE700B5EFD6006B6B2900DEBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5D6CE0073CEB5009CBDAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00D6D6D600BDBDBD00ADA5AD00B5B5B500C6C6C600DEDEDE00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EFEFEF00D6D6D600BDBD
      BD00ADA5AD00B5B5B500C6C6C600DEDEDE00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000736B6B007B7373007B7373007B7373007B7373007B7373007B7373007B73
      73007B7373007B7373007B7373007B7373007B7373007B737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFF7FF00C6C6CE00CECED600E7E7E700C6C6C600ADA5AD00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700DEDEDE00CECE
      CE00C6C6C600C6C6C600C6C6C600BDBDBD00B5B5B500ADA5AD00C6C6C600EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700DEDEDE00CECECE00C6C6C600C6C6
      C600C6C6C600BDBDBD00B5B5B500ADA5AD00C6C6C600EFEFEF00000000000000
      000000000000000000000000000000000000000000000000000000000000C6BD
      C600A59CA500D6D6D600F7F7F700EFE7EF00E7E7E700E7DEE700DED6DE00DED6
      DE00D6CED600D6CED600D6C6D600CEC6CE00B5ADB5009C9C9C0084737B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5D6CE006B6B940063526B0063526B0063526B005A526B005252
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00E7E7E700DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00C6C6C600B5B5B500BDBD
      BD00EFEFEF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00CECECE00C6C6C600B5B5B500BDBDBD00EFEFEF000000
      000000000000000000000000000000000000000000000000000000000000D6CE
      CE00F7F7F700B5ADB500E7DEE700F7EFEF00EFE7EF00E7DEE700E7DEE700DED6
      DE00D6CED600D6CED600D6CED600C6BDC6009C9C9C00C6BDC6008C7B84000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      F700B5D6CE007384B5006B6B94006B6B94008484CE006B8CCE005A5A9400CECE
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00F7F7F700C6846300EFEFEF00E7E7E700DEDEDE00C6C6C600B5B5
      B500C6C6C600FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00E7E7E700DEDEDE00C6C6C600B5B5B500C6C6C600FFFF
      FF0000000000000000000000000000000000000000000000000000000000CECE
      CE00FFFFFF00F7F7F700B5ADB500F7EFEF00EFE7EF00EFE7EF00E7DEE700E7DE
      E700DED6DE00D6CED600CEC6CE00A59CA500CEC6CE00CEC6CE008C7B84000000
      000000000000000000000000000000000000FFFFFF00E7E7E700A5B5CE007384
      B5007384B5008484CE008CBDE7007BC6FF0073ADFF00528CD6006B6B9400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700C6846300C6846300C6846300F7F7F700F7F7F700DEDEDE00C6C6
      C600B5B5B500E7E7E70000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7F700F7F7F700F7F7F700C6846300C6846300F7F7
      F700F7F7F700F7F7F700C6846300BD7B5A00DEDEDE00C6C6C600B5B5B500E7E7
      E70000000000000000000000000000000000000000000000000000000000CECE
      CE00FFFFFF00FFFFFF00EFE7EF00B5ADB500F7EFF700EFE7EF00EFE7EF00E7DE
      E700E7DEE700DED6DE00A59CA500C6BDC600CEC6CE00D6C6D6008C7B84000000
      0000000000000000000000000000EFEFEF00949CAD006B6B94007384B5008CBD
      E70094DEFF008CFFFF007BDEFF005AADFF005A9CE7005273AD009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F700C6846300C6846300F7F7F700C6846300C6846300F7F7F700EFEFEF00D6D6
      D600C6C6C600D6D6D60000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700C6846300C684
      6300F7F7F700C6846300C6846300F7F7F700EFEFEF00D6D6D600C6C6C600D6D6
      D60000000000000000000000000000000000000000000000000000000000D6CE
      CE00FFFFFF00FFFFFF00FFFFFF00E7DEE700BDBDBD00FFF7F700EFE7EF00EFE7
      EF00E7E7E700B5ADB500C6BDC600D6CED600D6C6D600D6C6D6008C7B84000000
      00000000000000000000000000006B6B940063A5CE007BDEFF008CFFFF008CFF
      FF0073EFFF0063C6FF005AADFF005AADFF00639CF7005273AD00848C84000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00F7F7F700F7F7F700C684
      6300C6846300F7F7F700F7F7F700F7F7F700C6846300C6846300F7F7F700E7E7
      E700CECECE00CECECE0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700C684
      6300C6846300C6846300F7F7F700F7F7F700F7F7F700E7E7E700CECECE00CECE
      CE0000000000000000000000000000000000000000000000000000000000D6CE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7EF00B5ADB500A59CA500A59C
      A500ADA5AD00DED6DE00DED6DE00D6CED600D6C6D600D6C6D6008C7B84000000
      000000000000000000000000000094DEFF0063DEFF0063DEFF0063DEFF0063C6
      FF0063C6FF0063C6FF0063C6FF0063C6FF0073ADFF006B8CCE0063636300FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700C6846300F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00D6D6D600CECECE0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700C6846300F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00D6D6D600CECE
      CE0000000000000000000000000000000000000000000000000000000000D6CE
      CE00FFFFFF00FFFFFF00FFFFFF00EFEFEF00BDB5BD00D6CED600EFE7EF00E7E7
      E700CEC6CE00ADA5AD00D6CED600DED6DE00D6CED600D6CED6008C7B84000000
      000000000000000000000000000000000000E7FFFF00CEEFFF0063C6FF0063DE
      FF0073EFFF0073EFFF008CFFFF007BDEFF007BC6FF006B8CCE005A526B00D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700F7F7F700C6846300C6846300C6846300F7F7F700F7F7F700F7F7F700EFEF
      EF00DEDEDE00DEDEDE0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00F7F7F700C6846300C6846300F7F7
      F700F7F7F700F7F7F700C6846300C6846300F7F7F700EFEFEF00DEDEDE00DEDE
      DE0000000000000000000000000000000000000000000000000000000000D6CE
      CE00FFFFFF00FFFFFF00FFFFFF00BDB5B500E7E7E700FFFFFF00F7EFF700F7EF
      EF00EFE7EF00D6D6D600A59CA500D6CED600D6CED600DED6DE008C7B84000000
      0000000000000000000000000000000000000000000000000000E7FFFF0063C6
      FF0073EFFF008CFFFF008CFFFF008CFFFF007BC6FF0073ADFF005A5A9400A59C
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700C6846300C6846300F7F7F700C6846300C6846300F7F7F700F7F7F700EFEF
      EF00E7E7E700EFEFEF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700C6846300C684
      6300F7F7F700C6846300C6846300F7F7F700F7F7F700EFEFEF00E7E7E700EFEF
      EF0000000000000000000000000000000000000000000000000000000000D6CE
      CE00FFFFFF00F7EFF700BDB5BD00FFFFFF00FFFFFF00FFF7FF00FFF7F700F7EF
      F700EFE7EF00EFE7EF00E7DEE700A59CA500D6C6D600DED6DE008C7B84000000
      000000000000000000000000000000000000000000000000000000000000CEEF
      FF0063DEFF008CFFFF008CFFFF008CFFFF007BDEFF0073ADFF006B8CCE005A52
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C684
      6300C6846300F7F7F700F7F7F700F7F7F700C6846300BD7B5A00F7F7F700F7F7
      F700EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700C684
      6300C6846300C6846300F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F70000000000000000000000000000000000000000000000000000000000D6D6
      D600E7E7E700B5ADB500F7F7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700F7F7
      F700F7EFF700EFE7EF00EFE7EF00DED6DE0094949400C6BDC6008C848C000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0063C6FF0073EFFF008CFFFF008CFFFF007BDEFF007BC6FF006B8CCE006B6B
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700C6846300F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000BDB5
      BD00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7FF00FFF7
      F700F7EFF700F7EFEF00EFE7EF00E7DEE700E7E7E700BDB5B5007B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEEFFF005ADEFF008CFFFF008CFFFF008CFFFF0063C6FF00528CD600CED6
      DE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094DEFF0073EFFF0073EFFF0063DEFF007BC6FF00CEEFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A735200846342000029
      940000299400002994007B846300847352008463420084634200845239007331
      1800733118005A42290084735200844229000000000000000000000000000000
      00000000000000000000000000005A7352008463420000299400002994000029
      94007B8463008473520084634200846342008452390073311800733118005A42
      2900847352008442290000000000000000000000000000000000000000000000
      0000000000000000000000000000848C8400848C840052525A00636363009C9C
      9C009C9C9C008C8C8C00848C84007B737300736B6B0052525A00424242004242
      4200848C84006363630000000000000000000000000000000000000000000000
      000000000000848C8400848C840052525A00424A84004A4AB5002939D6000018
      CE000018CE001829B5003152AD0031317B004242420042424200848C84006363
      63000000000000000000000000000000000000000000CEE7C6000029CE000029
      CE000029CE000029CE0000299400BDBD9C00BDA57300B5946B00B5845200AD6B
      42008C42290084634200DEAD6300A54A29000000000000000000000000000000
      0000000000000000000000000000CEE7C6000029CE000029CE000029CE000029
      CE0000299400BDBD9C00BDA57300B5946B00B5845200AD6B42008C4229008463
      4200DEAD6300A54A290000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00DEDEDE00A5A5A500B5B5B500FFFF
      FF00FFFFFF00F7F7F700DEDEDE00C6C6C600B5B5B500A5A5A5007B7373007B73
      7300EFEFEF00848C840000000000000000000000000000000000000000000000
      00000000000000000000C6C6EF00425AC6000018CE000018D6000018D6000018
      D6000018D6000018D6000018D6000018CE003152AD006B6B9400EFEFEF00848C
      840000000000000000000000000000000000000000000029CE000018D6000018
      D6000018D6000018D6000029CE0000299400B5AD8400B5946B00AD845A00AD6B
      42007B423100A5734A00E79452007B5239000000000000000000000000000000
      00000000000000000000000000000029CE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000029CE0000299400B5AD8400B5946B00AD845A00AD6B42007B423100A573
      4A00E79452007B52390000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C6008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700C6C6C600B5B5B5009494940063636300A5A5
      A500DEDEDE007B73730000000000000000000000000000000000000000000000
      000000000000000000005A6BE7000018D6000829CE00737BEF00B5BDE700F7F7
      F700D6D6EF008C8CD600425AC6000829CE000018D600425AC600C6C6EF007B73
      7300000000000000000000000000000000000029CE000018D6000018D6000018
      D6000018D6000018D6000018D6000018D600B5B58C00AD9C7B00AD845A00946B
      420073422900E79452009C522100000000000000000000000000000000000000
      000000000000000000000029CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000029CE00B5B58C00AD9C7B00AD845A00946B420073422900E794
      52009C5221000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00CECECE00ADA5AD008C8C8C0052525A00DEDE
      DE007B7373000000000000000000000000000000000000000000000000000000
      000000000000737BEF000018D600314ADE002939D600FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00CECECE00ADA5AD005A5A94001829B5000018D6003152AD000000
      0000000000000000000000000000000000000029CE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000029CE00ADBD9C00AD9C7B0094845A007B52
      39009C5A4200BD7B42004A312100000000000000000000000000000000000000
      000000000000000000000029CE00FFFFFF00000000000000000094949400FFFF
      FF00FFFFFF000029CE00ADBD9C00AD9C7B0094845A007B5239009C5A4200BD7B
      42004A3121000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00F7F7
      F700FFFFFF00FFFFFF00F7F7F700C6C6C600A5A5A5007B73730094949400ADA5
      AD00313131000000000000000000000000000000000000000000000000000000
      0000B5BDE7000821DE001831DE001831DE000018D600314ADE00FFFFFF00FFFF
      FF00F7F7F700C6C6C600A5A5A5007B7373005A5A94001029D6000018CE00B5BD
      E700000000000000000000000000000000000029CE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000029CE00ADBD9C00A5A5840094845A007352
      3900946B42006352390000000000000000000000000000000000000000000000
      000000000000000000000029CE00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000029CE00ADBD9C00A5A5840094845A0073523900946B42006352
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE00A5A5A500736B6B008C8C8C005252
      5A00000000000000000000000000000000000000000000000000000000000000
      0000737BEF000018D600737BEF00F7F7F7001831DE000018D600314ADE00FFFF
      FF00FFFFFF00CECECE00A59CA500736B6B008C8C8C00293194000018D600737B
      EF00000000000000000000000000000000000029CE000018D6000018D6000018
      D6000018D6000018D6000018D6000029CE009CBDAD0094A58400847352005A42
      2900525242000000000000000000000000000000000000000000000000000000
      000000000000000000000029CE00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000029CE009CBDAD0094A58400847352005A422900525242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00CECECE00949494004242420052525A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000314ADE000018D600B5BDE70000000000F7F7F7001831DE000018D600314A
      DE00FFFFFF00CECECE00949494004242420052525A00B5BDE7000018D600314A
      DE0000000000000000000000000000000000000000000029CE000018D6000018
      D6000018D6000018D6000029CE00A5EFC60094D6B5007BA58400525A3900848C
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000029CE00FFFFFF00FFFFFF0000000000FFFF
      FF000029CE00A5EFC60094D6B5007BA58400525A3900848C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00CECECE0052525A00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000821DE000018D600000000000000000000000000F7F7F7001831DE000018
      D600314ADE00C6C6C60052525A00B5B5B50000000000000000000018D6000821
      DE000000000000000000000000000000000000000000000000000029CE000029
      CE000029CE000029CE000000000063946300739473005A735200848C84000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000029CE000029CE000029CE000029
      CE000000000063946300739473005A735200848C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A500B5B5B500848C8400B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000821DE000018D60000000000000000000000000000000000F7F7F7001029
      D6000018D6001829B500B5B5B5000000000000000000000000000018D6000821
      DE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000525242006339210084422900A54A29009C3918000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525242006339210084422900A54A29009C39180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052525A004242420063636300848C8400736B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000314ADE000018D600B5BDE70000000000000000000000000052525A004242
      42000018CE000018D6001829B5000000000000000000B5BDE7000018D600314A
      DE00000000000000000000000000000000000000000000000000000000000000
      000000000000848C6B006B6B29009C844200AD733900CE6B3900D65A29009442
      1000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000848C
      6B006B6B29009C844200AD733900CE6B3900D65A290094421000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A50052525A009C9C9C00A5A5A500ADA5AD00ADA5AD0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737BEF000018D600737BEF000000000000000000A59CA50052525A009C9C
      9C00949494001029D6000018D6001829B50000000000737BEF000018D600737B
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000007B8C4200ADBD7300BDA57300C68C4A00DE6B3900DE6B3900AD4A
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B8C
      4200ADBD7300BDA57300C68C4A00DE6B3900DE6B3900AD4A2100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000848C
      8400DEDEDE00DEDEDE00B5B5B500C6C6C600C6C6C600848C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5BDE7000821DE001831DE00B5BDE70000000000848C8400DEDEDE00DEDE
      DE00B5B5B500A5B5CE001029D6000018D600314ADE001831DE000821DE00B5BD
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000094B56300CEEFA500D6D6A500BDA57300BD7B4200B55A3100944A
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094B5
      6300CEEFA500D6D6A500BDA57300BD7B4200B55A3100944A2100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00DEDEDE00ADA5AD009C9C9C00736B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737BEF000018D600314ADE00B5BDE700C6C6C600FFFFFF00FFFF
      FF00DEDEDE00ADA5AD00949494000018CE001831DE000018D600737BEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008CB55A00BDF7B500C6F7CE00ADBD9C0094845A00845239005229
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008CB5
      5A00BDF7B500C6F7CE00ADBD9C0094845A008452390052291000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500FFFFFF00FFFFFF00F7F7F700A5A5A500848C840031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A6BE7000018D6001831DE00425AC600B5BDE700F7F7
      F700D6D6EF007373C6003152AD000018CE000018D6005A6BE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007BB56B0094DEC6007BB5A5006B7B6B0031291800736B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BB56B0094DEC6007BB5A5006B7B6B0031291800736B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00FFFFFF00DEDEDE009C9C9C00181818008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737BEF000821DE000018D6000018D6000018
      D6000018D6000018D6000018D6000018CE00737BEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007BA584005A8C73004A6B5A00A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BA584005A8C73004A6B5A00A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE009C9C9C00736B6B0052525A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5BDE700737BEF00314ADE000821
      DE000018CE001829B50029319400B5BDE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818007B8463007B84630084735200846342008463
      42008452390073311800733118005A4229008473520084422900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818004242A5004242A50039399C003939940039398C0031317B002929
      6B0021215A0021215A0039399400313173000000000000000000000000000000
      0000000000005A73520084634200844229004A6B39007B8463007B8463008473
      520084634200846342008452390073311800733118005A422900847352008442
      2900000000000000000000000000000000000000000000000000000000003939
      8C0039398C0029296B00313173004242A5004242A50039399C00393994003939
      8C0031317B0029296B0021215A0021215A003939940031317300000000000000
      0000000000000000000000000000000000000000000000000000312918000000
      000031291800312918000000000018181800BDD6AD00BDBD9C00BDA57300B594
      6B00B5845200AD6B42008C42290084634200DEAD6300A54A2900000000000000
      0000000000000000000000000000000000003129180000000000312918003129
      18000000000018181800ADADDE008484CE007373C6006363BD004A4AB5004242
      AD0031317B0039398C007373C600393994000000000000000000000000000000
      000000000000CEE7C600BDBD7B00D65A290084AD5A00ADE7A500BDD6AD00BDBD
      9C00BDA57300B5946B00B5845200AD6B42008C42290084634200DEAD6300A54A
      2900000000000000000000000000000000000000000000000000000000009CA5
      C6007373C6004A4AB5004A4AB500A5A5DE00ADADDE008484CE007373C6006363
      BD004A4AB5004242AD0031317B0039398C007373C60039399400000000000000
      0000000000000000000000000000000000000000000000000000312918004A6B
      5A004A6B5A005A7352005A73520018181800CEE7C600BDBD9C00B5AD8400B594
      6B00AD845A00AD6B42007B423100A5734A00E79452007B523900000000000000
      000000000000000000000000000000000000312918004A6B5A004A6B5A005A73
      52005A73520018181800C6C6EF008C8CD6007373C6006363BD004A4AB5004242
      A50031317B004242AD006B6BC60031317B000000000000000000000000000000
      00000000000000000000ADE7A500CE7B52009C844200ADE7A500CEE7C600BDBD
      9C00B5AD8400B5946B00AD845A00AD6B42007B423100A5734A00E79452007B52
      3900000000000000000000000000000000000000000000000000000000000000
      0000A5A5DE006363BD0039399C00B5B5DE00C6C6EF008C8CD6007373C6006363
      BD004A4AB5004242A50031317B004242AD006B6BC60031317B00000000000000
      0000000000000000000000000000000000000000000000000000312918007B84
      63007B8463006B7B6B006B7B6B0018181800C6F7CE00BDD6AD00B5B58C00AD9C
      7B00AD845A00946B420073422900E79452009C52210000000000000000000000
      000000000000000000000000000000000000312918007B8463007B8463006B7B
      6B006B7B6B0018181800C6C6EF00A5A5DE007373C6006363BD004A4AB5003939
      9C00313173007373C60039398C00000000000000000000000000000000000000
      00000000000000000000ADE7A500D6D6A500AD843900ADE7A500C6F7CE00BDD6
      AD00B5B58C00AD9C7B00AD845A00946B420073422900E79452009C5221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5DE00A5A5DE004242A500A5A5DE00C6C6EF00A5A5DE007373C6006363
      BD004A4AB50039399C00313173007373C60039398C0000000000000000000000
      000000000000000000000000000000000000000000000000000031291800848C
      6B00848C6B00848C84007B73730018181800C6F7CE00CEE7C600ADBD9C00AD9C
      7B0094845A007B5239009C5A4200BD7B42004A31210000000000000000000000
      00000000000000000000000000000000000031291800848C6B00848C6B00848C
      84007B73730018181800D6D6EF00B5B5DE008484CE006363BD004A4AB5003131
      7B0039399C004A4AB50021215A00000000000000000000000000000000000000
      0000000000000000000000000000BDF7B500D6D6A500ADD68400C6F7CE00CEE7
      C600ADBD9C00AD9C7B0094845A007B5239009C5A4200BD7B42004A3121000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6EF00A5A5DE008484CE00D6D6EF00B5B5DE008484CE006363
      BD004A4AB50031317B0039399C004A4AB50021215A0000000000000000000000
      0000000000000000000000000000000000000000000000000000312918001818
      180031313100313131003129180018181800BDF7CE00B5D6CE00ADBD9C00A5A5
      840094845A0073523900946B4200635239000000000000000000000000000000
      0000000000000000000000000000000000003129180018181800313131003131
      31003129180018181800C6C6EF00B5B5DE008C8CD6006363BD004242AD003131
      7B0039399C0029296B0000000000000000000000000000000000000000000000
      0000000000000000000000000000CEE7C600BDF7CE00ADD68400BDF7CE00B5D6
      CE00ADBD9C00A5A5840094845A0073523900946B420063523900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5B5CE00C6C6EF008C8CD600C6C6EF00B5B5DE008C8CD6006363
      BD004242AD0031317B0039399C0029296B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031291800E7E7
      E700E7E7E700E7E7E700E7E7E70018181800ADE7A500BDF7CE009CBDAD0094A5
      8400847352005A42290052524200000000000000000000000000000000000000
      00000000000000000000000000000000000031291800E7E7E700E7E7E700E7E7
      E700E7E7E70018181800ADADDE00B5BDE7008C8CD6006363BD004242A5002121
      5A00313173000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E70094CE8400ADE7A500BDF7
      CE009CBDAD0094A58400847352005A4229005252420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5BDCE008484CE00ADADDE00B5BDE7008C8CD6006363
      BD004242A50021215A0031317300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031291800BDB5
      B500E7E7E700E7E7E700E7E7E7001818180094CE8400A5EFC60094D6B5007BA5
      8400525A3900848C840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031291800BDB5B500E7E7E700E7E7
      E700E7E7E700181818008C8CD600ADADDE008C8CD6006363BD0029296B00424A
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094CE8400A5EF
      C60094D6B5007BA58400525A3900848C84000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8CD600ADADDE008C8CD6006363
      BD0029296B00424A840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031291800BDB5
      B500E7E7E700E7E7E700E7E7E700181818000000000063946300739473005A73
      5200848C84000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031291800BDB5B500E7E7E700E7E7
      E700E7E7E70018181800000000004A4AB5004A4AB50039398C00424A84000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006394
      6300739473005A735200848C8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4AB5004A4AB5003939
      8C00424A84000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A526B001010
      310018181800181818001818180000000000525242006339210084422900A54A
      29009C3918000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A526B0010103100181818001818
      1800181818000000000021215A0021215A0031317B003939940031317B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525242006339
      210084422900A54A29009C391800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021215A0021215A0031317B003939
      940031317B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      3100000000000000000000000000848C6B006B6B29009C844200AD733900CE6B
      3900D65A29009442100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010103100000000000000
      0000000000003939940029296B004242A5004242AD004A4AB5004A4AB5003131
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848C6B006B6B29009C84
      4200AD733900CE6B3900D65A2900944210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003939940029296B004242A5004242AD004A4A
      B5004A4AB50031317B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      42000000000000000000000000007B8C4200ADBD7300BDA57300C68C4A00DE6B
      3900DE6B3900AD4A210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      000000000000393994006B6BC6006B6BC6005A5ABD005A5ABD005A5ABD003939
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B8C4200ADBD7300BDA5
      7300C68C4A00DE6B3900DE6B3900AD4A21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000393994006B6BC6006B6BC6005A5ABD005A5A
      BD005A5ABD003939940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000094B56300CEEFA500D6D6A500BDA57300BD7B
      4200B55A3100944A210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5ABD00B5B5DE00A5A5DE007373C6004A4AB5004242A5003131
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094B56300CEEFA500D6D6
      A500BDA57300BD7B4200B55A3100944A21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A5ABD00B5B5DE00A5A5DE007373C6004A4A
      B5004242A50031317B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CB55A00BDF7B500C6F7CE00ADBD9C009484
      5A00845239005229100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5ABD00B5BDE700C6C6EF008484CE004242AD0039398C002121
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CB55A00BDF7B500C6F7
      CE00ADBD9C0094845A0084523900522910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A5ABD00B5BDE700C6C6EF008484CE004242
      AD0039398C0021215A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007BB56B0094DEC6007BB5A5006B7B
      6B0031291800736B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006363BD009C9CD6006B6BC6004242A500101031003131
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007BB56B0094DE
      C6007BB5A5006B7B6B0031291800736B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363BD009C9CD6006B6BC6004242
      A5001010310031317B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BA584005A8C73004A6B
      5A00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006363BD004242A50031317B005A5A94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007BA5
      84005A8C73004A6B5A00A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006363BD004242A5003131
      7B005A5A94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A73
      520084634200844229004A6B39007B8463007B84630084735200846342008463
      42008452390073311800733118005A4229008473520084422900000000000000
      0000000000000000000000000000000000000000000039398C0039398C002929
      6B00313173004242A5004242A50039399C003939940039398C0031317B002929
      6B0021215A0021215A0039399400313173000000000000000000000000000000
      00000000000000000000000000005A7352008463420000299400002994000029
      94007B8463008473520084634200846342008452390073311800733118005A42
      2900847352008442290000000000000000000000000000000000000000000000
      0000000000005A735200846342000029940000299400002994007B8463008473
      520084634200846342008452390073311800733118005A422900847352008442
      290000000000000000000000000000000000000000000000000000000000CEE7
      C600BDBD7B00D65A290084AD5A00ADE7A500BDD6AD00BDBD9C00BDA57300B594
      6B00B5845200AD6B42008C42290084634200DEAD6300A54A2900000000000000
      000000000000000000000000000000000000000000009CA5C6007373C6004A4A
      B5004A4AB500A5A5DE00ADADDE008484CE007373C6006363BD004A4AB5004242
      AD0031317B0039398C007373C600393994000000000000000000000000000000
      0000000000000000000000000000CEE7C6000029CE000029CE000029CE000029
      CE0000299400BDBD9C00BDA57300B5946B00B5845200AD6B42008C4229008463
      4200DEAD6300A54A290000000000000000000000000000000000000000000000
      000000000000CEE7C6000029CE000029CE000029CE000029CE0000299400BDBD
      9C00BDA57300B5946B00B5845200AD6B42008C42290084634200DEAD6300A54A
      2900000000000000000000000000000000000000000000000000000000000000
      0000ADE7A500CE7B52009C844200ADE7A500CEE7C600BDBD9C00B5AD8400B594
      6B00AD845A00AD6B42007B423100A5734A00E79452007B523900000000000000
      0000000000000000000000000000000000000000000000000000A5A5DE006363
      BD0039399C00B5B5DE00C6C6EF008C8CD6007373C6006363BD004A4AB5004242
      A50031317B004242AD006B6BC60031317B000000000000000000000000000000
      00000000000000000000000000000029CE000018D6000018D6000018D6000018
      D6000029CE0000299400B5AD8400B5946B00AD845A00AD6B42007B423100A573
      4A00E79452007B52390000000000000000000000000000000000000000000000
      0000000000000029CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029CE000029
      9400B5AD8400B5946B00AD845A00AD6B42007B423100A5734A00E79452007B52
      3900000000000000000000000000000000000000000000000000000000000000
      0000ADE7A500D6D6A500AD843900ADE7A500C6F7CE00BDD6AD00B5B58C00AD9C
      7B00AD845A00946B420073422900E79452009C52210000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5DE00A5A5
      DE004242A500A5A5DE00C6C6EF00A5A5DE007373C6006363BD004A4AB5003939
      9C00313173007373C60039398C00000000000000000000000000000000000000
      000000000000000000000029CE000018D6000018D6000018D6000018D6000018
      D6000018D6000018D600B5B58C00AD9C7B00AD845A00946B420073422900E794
      52009C5221000000000000000000000000000000000000000000000000000000
      00000029CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      CE00B5B58C00AD9C7B00AD845A00946B420073422900E79452009C5221000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDF7B500D6D6A500ADD68400C6F7CE00CEE7C600ADBD9C00AD9C
      7B0094845A007B5239009C5A4200BD7B42004A31210000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      EF00A5A5DE008484CE00D6D6EF00B5B5DE008484CE006363BD004A4AB5003131
      7B0039399C004A4AB50021215A00000000000000000000000000000000000000
      000000000000000000000029CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000029CE00ADBD9C00AD9C7B0094845A007B5239009C5A4200BD7B
      42004A3121000000000000000000000000000000000000000000000000000000
      00000029CE00FFFFFF00000000000000000094949400FFFFFF00FFFFFF000029
      CE00ADBD9C00AD9C7B0094845A007B5239009C5A4200BD7B42004A3121000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CEE7C600BDF7CE00ADD68400BDF7CE00B5D6CE00ADBD9C00A5A5
      840094845A0073523900946B4200635239000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      CE00C6C6EF008C8CD600C6C6EF00B5B5DE008C8CD6006363BD004242AD003131
      7B0039399C0029296B0000000000000000000000000000000000000000000000
      000000000000000000000029CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000029CE00ADBD9C00A5A5840094845A0073523900946B42006352
      3900000000000000000000000000000000000000000000000000000000000000
      00000029CE00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000029
      CE00ADBD9C00A5A5840094845A0073523900946B420063523900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E70094CE8400ADE7A500BDF7CE009CBDAD0094A5
      8400847352005A42290052524200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5BDCE008484CE00ADADDE00B5BDE7008C8CD6006363BD004242A5002121
      5A00313173000000000000000000000000000000000000000000000000000000
      000000000000000000000029CE000018D6000018D6000018D6000018D6000018
      D6000018D6000029CE009CBDAD0094A58400847352005A422900525242000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000029CE00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000029
      CE009CBDAD0094A58400847352005A4229005252420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094CE8400A5EFC60094D6B5007BA5
      8400525A3900848C840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8CD600ADADDE008C8CD6006363BD0029296B00424A
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000029CE000018D6000018D6000018D6000018
      D6000029CE00A5EFC60094D6B5007BA58400525A3900848C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000029CE00FFFFFF00FFFFFF0000000000FFFFFF000029CE00A5EF
      C60094D6B5007BA58400525A3900848C84000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063946300739473005A73
      5200848C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4AB5004A4AB50039398C00424A84000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000029CE000029CE000029CE000029
      CE000000000063946300739473005A735200848C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000029CE000029CE000029CE000029CE00000000006394
      6300739473005A735200848C8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000525242006339210084422900A54A
      29009C3918000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021215A0021215A0031317B003939940031317B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525242006339210084422900A54A29009C39180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525242006339
      210084422900A54A29009C391800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848C6B006B6B29009C844200AD733900CE6B
      3900D65A29009442100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003939940029296B004242A5004242AD004A4AB5004A4AB5003131
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000848C
      6B006B6B29009C844200AD733900CE6B3900D65A290094421000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848C6B006B6B29009C84
      4200AD733900CE6B3900D65A2900944210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B8C4200ADBD7300BDA57300C68C4A00DE6B
      3900DE6B3900AD4A210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000393994006B6BC6006B6BC6005A5ABD005A5ABD005A5ABD003939
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B8C
      4200ADBD7300BDA57300C68C4A00DE6B3900DE6B3900AD4A2100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B8C4200ADBD7300BDA5
      7300C68C4A00DE6B3900DE6B3900AD4A21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000094B56300CEEFA500D6D6A500BDA57300BD7B
      4200B55A3100944A210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5ABD00B5B5DE00A5A5DE007373C6004A4AB5004242A5003131
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094B5
      6300CEEFA500D6D6A500BDA57300BD7B4200B55A3100944A2100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094B56300CEEFA500D6D6
      A500BDA57300BD7B4200B55A3100944A21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CB55A00BDF7B500C6F7CE00ADBD9C009484
      5A00845239005229100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5ABD00B5BDE700C6C6EF008484CE004242AD0039398C002121
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008CB5
      5A00BDF7B500C6F7CE00ADBD9C0094845A008452390052291000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CB55A00BDF7B500C6F7
      CE00ADBD9C0094845A0084523900522910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007BB56B0094DEC6007BB5A5006B7B
      6B0031291800736B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006363BD009C9CD6006B6BC6004242A500101031003131
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BB56B0094DEC6007BB5A5006B7B6B0031291800736B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007BB56B0094DE
      C6007BB5A5006B7B6B0031291800736B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BA584005A8C73004A6B
      5A00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006363BD004242A50031317B005A5A94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BA584005A8C73004A6B5A00A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007BA5
      84005A8C73004A6B5A00A5A5A500000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000058000000550000000100010000000000FC0300000000000000000000
      000000000000000000000000FFFFFF00FFFFFC000000000000000000FE01FC00
      0000000000000000FC00FC000000000000000000FC00FC000000000000000000
      FC001C000000000000000000FE000C000000000000000000F8000C0000000000
      00000000F0000C000000000000000000F0000C000000000000000000F0001C00
      0000000000000000F8007C000000000000000000FC003C000000000000000000
      FE183C000000000000000000FE083C000000000000000000FE0C7C0000000000
      00000000FE0FFC000000000000000000FF1FFC000000000000000000FFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFC01FFF007F00F0003FF80FFF800FFE003F00
      E0001FF80FFF0007FC001F00E0001FE00FFE0003F8000F00E0001F000FFE0003
      F8000F00E0001E001FFE0003F8000F00E0001E001F7E0003F8000F00E0001E00
      0E3E0003F8000F00E0001F000C1E0003F8000F00E0001FC0080E0003F8000F00
      E0001FE00FFE0003F8000F00E0001FE00FFE0003F8000F00E0001FF00FFF0007
      FC001F00F0003FF01FFF800FFE003F00FFFFFFFFFFFFC01FFF007F00FFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF008000FE0003FE0003F8000F00
      8000FE0003FE0003FC000F008000FE0003FF0003FC000F000001FC0007FF0007
      F8001F000001FC0007FF8007F0000F000003FC000FFF800FF0000F000007DC00
      1F7FC01FF1000F00800F8E003E3FF03FF380CF00C21F07087C1FF87FF3C1CF00
      FC1E03F0780FF07FF1C18F00F80FFFE03FFFE03FF1808F00F80FFFE03FFFE03F
      F0800F00F80FFFE03FFFE03FF8001F00F80FFFE03FFFE03FFC003F00FC0FFFF0
      3FFFF03FFE007F00FE1FFFF87FFFF87FFF00FF00FFFFFFFFFFFFFFFFFFFFFF00
      E0003F8000F8000FE0003F00C0003F0000F8000FE0003F00C0003F0000FC000F
      F0003F00C0007F0001FC001FF0007F00C0007F0001FE001FF8007F00C000FF00
      03FE003FF800FF00C001FF0007FF007DFC01F700C003FF000FFFC0F8FF03E300
      C087FF021FFFE1F07F87C100C107FF041FFFC1E03F078000EE03FFB80FFF80FF
      FE03FF00EE03FFB80FFF80FFFE03FF00FE03FFF80FFF80FFFE03FF00FE03FFF8
      0FFF80FFFE03FF00FF03FFFC0FFFC0FFFF03FF00FF87FFFE1FFFE1FFFF87FF00
      FFFFFFFFFFFFFFFFFFFFFF00E0003F8000FE0003F8000F00E0003F8000FE0003
      F8000F00F0003FC000FE0003F8000F00F0007FC001FC0007F0001F00F8007FE0
      01FC0007F0001F00F800FFE003FC000FF0003F00FC01FFF007FC001FF0007F00
      FF03FFFC0FFE003FF800FF00FF87FFFE1FFF087FFC21FF00FF07FFFC1FFFF07F
      FFC1FF00FE03FFF80FFFE03FFF80FF00FE03FFF80FFFE03FFF80FF00FE03FFF8
      0FFFE03FFF80FF00FE03FFF80FFFE03FFF80FF00FF03FFFC0FFFF03FFFC0FF00
      FF87FFFE1FFFF87FFFE1FF000000000000000000000000000000000000000000
      0000}
  end
  object ImageList2: TImageList
    Height = 26
    Width = 30
    Left = 360
    Top = 80
    Bitmap = {
      494C01011500180004001E001A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000780000009C00000001002000000000008024
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADB5BD009C9C
      9C00949494008C847B008C847B00948484009C9C9C00B5B5B500C6CED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5BDBD00949494009C949400CEC6
      C600F7EFEF00FFF7F700FFFFF700FFFFF700FFEFFF00F7EFEF00DED6CE00CEC6
      C600C6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009494940094848400D6CECE00FFFFFF00FFFF
      FF00FFFFF700F7EFE700E7E7E700DEE7E700E7E7E700F7F7F700FFFFFF00F7F7
      F700DEDED600C6CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C009C949400EFEFE700FFFFFF00F7F7F700D6CE
      C600DEAD8C00BD8C6B00B5734A00B5734A00B5734A00CE9C8400D6CEC600F7FF
      F700FFFFFF00EFE7E700CED6CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C008C847B00F7EFE700FFFFFF00EFE7DE00CE9C8400C66B
      3100BD5A2900C66B3100DEB5A500EFA59400C66B3100BD5A2900C66B3100CE9C
      8400EFEFE700FFFFFF00F7EFE700DEDED6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDC6CE007B847B00E7CED600FFFFFF00F7E7CE00BD8C6B00BD5A2900BD5A
      2900CE522100CE9C8400FFFFFF00F7EFEF00BD8C6B00CE522100BD5A2900BD5A
      2900DE7B5200EFE7DE00FFFFFF00EFDEE700DEE7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C00BDA5A500FFFFFF00F7EFE700BD8C6B00BD5A2900BD5A2900CE63
      2900CE632900DE7B5200E7DED600E7DED600BD8C6B00CE632900CE632900CE63
      2900BD5A2900BD8C6B00F7EFE700FFFFFF00DEDED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDC6
      C6008C847B00EFDEE700FFFFFF00DEB5A500BD5A2900CE632900CE632900D66B
      3100D66B3100BD5A2900DE7B5200B5734A00CE632900D66B3100C66B3100C66B
      3100BD5A2900BD5A2900E7BD9C00FFFFFF00EFEFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00B5949400FFFFFF00EFF7E700BD8C6B00CE522100D66B3100C66B3100CE63
      2900CE632900D66B3100EFA59400DEAD8C00D66B3100CE632900D66B3100D66B
      3100D66B3100CE522100BD8C6B00F7EFE700FFFFFF00EFEFE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00D6C6BD00FFFFFF00DED6CE00C66B3100CE632900C66B3100C66B3100D66B
      3100CE522100DE7B5200FFF7F700F7EFEF00BD8C6B00CE632900CE632900CE63
      2900CE632900CE632900C66B3100E7CED600FFFFFF00EFE7DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C94
      9400EFD6C600F7FFFF00DEB5A500CE632900CE632900D66B3100CE632900BD5A
      2900CE632900E7BD9C00FFFFFF00DED6CE00B5734A00CE632900D66B3100C66B
      3100C66B3100D66B3100CE632900E7C6A500FFFFFF00EFE7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C94
      9400E7DED600FFFFFF00DEB5A500CE632900CE632900D66B3100CE632900CE63
      2900E7BD9C00FFFFF700F7EFE700BD8C6B00C66B3100CE632900CE632900D66B
      3100D66B3100D66B3100CE632900E7BD9C00FFFFFF00EFE7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C94
      9400E7DED600FFFFFF00E7C6A500D66B3100D66B3100D66B3100BD5A2900DEAD
      8C00FFFFFF00F7F7EF00CE9C8400BD5A2900CE632900D66B3100CE632900D66B
      3100D66B3100D66B3100D66B3100E7BD9C00FFFFFF00EFE7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      B500D6CECE00FFFFFF00EFC6B500D66B3100D66B3100CE632900B5734A00F7E7
      E700FFFFFF00DEAD8C00BD5A2900CE632900CE632900CE632900C66B3100D66B
      3100D66B3100DE7B5200DE7B5200EFD6C600FFFFFF00EFE7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5BD
      BD00BDB5AD00FFFFFF00F7EFE700DE7B5200D66B3100D66B3100E7A56B00FFFF
      FF00F7EFEF00BD8C6B00CE522100CE522100DE7B5200E7BD9C00DEAD8C00B573
      4A00D66B3100DE7B5200E7A56B00F7F7EF00F7FFF700EFEFE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6D6
      D600BDA5A500F7EFEF00FFFFFF00DEB5A500D66B3100D66B3100DE7B5200F7EF
      E700FFFFFF00E7BD9C00C66B3100D66B3100E7C6A500FFFFFF00DEE7EF00DE7B
      5200DE7B5200DE7B5200EFC6B500FFFFFF00F7EFE700DEE7EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6BDC600DECED600FFFFFF00F7EFE700E7A56B00DE7B5200DE7B5200EFC6
      B500EFFFFF00F7F7F700E7D6BD00EFD6C600FFFFFF00F7FFF700DEB5A500DE7B
      5200E7A56B00F7AD7B00FFF7E700FFFFFF00EFE7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDED600B5BDBD00EFF7E700FFFFFF00FFE7CE00F7AD7B00DE7B5200F7AD
      7B00F7E7CE00EFF7F700EFF7F700EFF7F700F7EFE700F7CEB500E7A56B00F7AD
      7B00F7C6A500FFF7E700FFFFFF00F7EFEF00DEE7EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6CED600D6CECE00F7F7F700FFFFFF00FFEFD600F7C6A500F7AD
      7B00F7AD7B00F7C6A500E7C6A500E7C6A500F7C6A500F7C6A500F7C6A500FFE7
      C600FFF7EF00FFFFFF00F7F7EF00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6CECE00DEDED600EFF7F700FFFFFF00FFFFEF00FFEF
      CE00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFE7C600FFEFD600FFF7E700FFFF
      FF00FFFFFF00F7F7EF00E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDED600DED6CE00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700FFFFF700FFFFFF00FFFFFF00FFFFFF00F7FF
      FF00EFEFE700E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDED600E7DED600F7EF
      EF00FFEFFF00FFFFFF00FFFFFF00FFFFFF00FFF7FF00F7F7F700F7EFEF00E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      E700E7E7E700EFE7DE00FFEFD600EFE7DE00EFE7E700EFEFE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6D6D600B5BD
      BD009494940094949400ADA5A500C6CECE00C6D6D600ADA5A500ADA5A500ADA5
      A500C6CECE00CEEFDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADB5002118
      210039312900C6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADB500B5BDBD00DEDE
      D600DEE7E700ADADB500B5BDBD0094949400BD8C6B00A57B7300ADA5A500DEDE
      D600C6CECE00B5BDBD00B5BDBD00CEEFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525252002118
      21001008080039312900C6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6CED600B5B5B5009C9C9C00948484008C847B008C847B009494
      94009C9C9C00ADB5BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6CECE00B5BDBD00C6CECE00F7EFEF00F7EF
      EF00DEDED600ADADB500ADADB500949494005252520052525200736B5A007B84
      7B0094949400DEDED600DEDED600B5BDBD00B5BDBD00C6D6D600000000000000
      00000000000000000000000000000000000000000000000000009C9494004A52
      3100393129001008080052525200DEDED6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6D6
      D600CEC6C600DED6CE00F7EFEF00FFEFFF00FFFFF700FFFFF700FFF7F700F7EF
      EF00CEC6C6009C94940094949400B5BDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5C6D600B5BDBD00B5BDBD00EFEFE700F7F7F700F7EFEF00EFEF
      E700DEDED600ADA5A500ADADB50094949400525252004A52310052525200736B
      5A007B847B0094949400ADADB500C6CECE00DEDED600B5BDBD00B5BDBD000000
      0000000000000000000000000000000000000000000000000000000000009484
      84005252520039312900100808005A637300DEE7EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6CECE00DEDE
      D600F7F7F700FFFFFF00F7F7F700E7E7E700DEE7E700E7E7E700F7EFE700FFFF
      F700FFFFFF00FFFFFF00D6CECE00948484009494940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6CECE00B5BDBD00DEE7E700FFFFFF00F7F7F700F7EFEF00EFEFE700DEE7
      E700C6CECE00ADA5A500ADA5A500ADADB500ADADB500ADA5A500949494006373
      6B00736B5A007B847B0094949400ADADB50094949400B5BDBD00C6CECE000000
      000000000000000000000000000000000000000000000000000000000000D6E7
      EF008C847B006B525A00393129001008080063736B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B84
      7B004A52310063736B0000000000000000000000000000000000000000000000
      000000000000000000009C9C9C005A6373003931290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CED6CE00EFE7E700FFFF
      FF00F7FFF700D6CEC600CE9C8400B5734A00B5734A00B5734A00BD8C6B00DEAD
      8C00D6CEC600F7F7F700FFFFFF00EFEFE7009C9494008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5BDBD00FFFFFF00FFFFFF00F7F7F700F7EFEF00F7EFEF00DEDED600ADAD
      B500949494007B847B0094949400ADA5A500ADADB500ADADB500B5BDBD00B5BD
      BD00ADADB50094949400736B5A0052525200C6CECE00B5BDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDED6008C847B006B525A0039312900000000008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B847B00394A
      D6000000FF0029219C00736B5A00000000000000000000000000000000000000
      0000000000007B847B004A523100394AD600394AD60063736B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDED600F7EFE700FFFFFF00EFEF
      E700CE9C8400C66B3100BD5A2900C66B3100EFA59400DEB5A500C66B3100BD5A
      2900C66B3100CE9C8400EFE7DE00FFFFFF00F7EFE7008C847B009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADB500FFFFFF00FFF7F700F7F7F700DEE7E7009494940094949400B5BD
      BD00C6CECE00ADA5A500949494007B847B007B847B0094949400ADA5A500B5BD
      BD00B5BDBD00B5BDBD00C6CECE00B5BDBD00C6CECE00B5BDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6CED600948484006B525A0039312900100808009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052525200949C
      E7003139EF000000FF0029219C00736B5A000000000000000000000000000000
      000063736B004A427B003139EF003139EF004A427B00ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEE7E700EFDEE700FFFFFF00EFE7DE00DE7B
      5200BD5A2900BD5A2900CE522100BD8C6B00F7EFEF00FFFFFF00CE9C8400CE52
      2100BD5A2900BD5A2900BD8C6B00F7E7CE00FFFFFF00E7CED6007B847B00BDC6
      CE00000000000000000000000000000000000000000000000000000000000000
      0000ADA5A500F7F7F700C6CECE009494940094949400C6CECE00DEDED600DEDE
      D600C6CECE00C6CECE00B5BDBD00ADA5A500ADA5A50094949400949494007B84
      7B0094949400ADA5A500B5BDBD008CB58C0084CE9400B5BDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6CED60094848400736B5A003931290010080800ADAD
      B50000000000D6E7EF00BDC6CE00BDC6CE00C6BDC600BDC6CE00C6CED600D6E7
      EF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C005A63
      7300949CE700636BF7000000FF0029219C006B525A0000000000000000006B52
      5A0029219C00636BF700636BF7004A427B007B847B00DEE7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDED600FFFFFF00F7EFE700BD8C6B00BD5A
      2900CE632900CE632900CE632900BD8C6B00E7DED600E7DED600DE7B5200CE63
      2900CE632900BD5A2900BD5A2900BD8C6B00F7EFE700FFFFFF00BDA5A5008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000949494009494940094949400DEDED600DEE7E700DEDED600DEDED600C6CE
      CE00EFEFE700EFEFE700EFEFE700EFEFE700DEDED600DED6CE00B5BDBD00ADAD
      B500ADA5A500949494007B847B007B847B0094949400ADB5BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6CECE00B5949400736B5A00211821002118
      2100949494009C738C00944A6B00AD5A7B00B56B8C00B56B8C00B56B8C00AD94
      A500BDC6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B84
      7B005A637300949CE700636BF7000000FF0029219C006B525A0052525200394A
      D600636BF700636BF7006B6BAD007B847B00DEDED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFE700FFFFFF00E7BD9C00BD5A2900BD5A
      2900C66B3100C66B3100D66B3100CE632900B5734A00DE7B5200BD5A2900D66B
      3100D66B3100CE632900CE632900BD5A2900DEB5A500FFFFFF00EFDEE7008C84
      7B00BDC6C6000000000000000000000000000000000000000000000000000000
      000094949400EFEFE700DEE7E700DEE7E700DEDED600DEDED600C6CECE00DEE7
      E700DEDED600B5BDBD00B5BDBD00B5BDBD00B5BDBD00C6CECE00EFEFE700EFEF
      E700DEDED600C6CECE00B5BDBD00B5BDBD00ADA5A500ADA5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6BDC600BDA5A5007B847B005A18
      31007B395200944A6B00CE8CA500D6ADB500EFB5B500EFB5B500EF84A500DE63
      9400AD5A7B00ADA5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000949494005A637300949CE700636BF7000000FF0029219C000818D6003139
      EF00636BF7006B6BAD0063736B00B5BDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFE700FFFFFF00F7EFE700BD8C6B00CE522100D66B
      3100D66B3100D66B3100CE632900D66B3100DEAD8C00EFA59400D66B3100CE63
      2900CE632900C66B3100D66B3100CE522100BD8C6B00EFF7E700FFFFFF00B594
      94009C9C9C000000000000000000000000000000000000000000000000000000
      000094949400DEE7E700DEE7E700DEDED600DEDED600C6CECE00DEE7E700EFEF
      E700B5BDBD00F7F7F700F7EFEF00EFEFE700C6CECE00B5BDBD00B5BDBD00B5BD
      BD00B5BDBD00C6CECE00DEE7E700DEE7E700C6CECE00B5BDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6CECE009C738C007B39
      5200B56B8C00E7CED600FFEFEF00FFF7EF00FFE7E700FFDEDE00FFD6CE00EFB5
      B500EF84A500AD5A7B00ADA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B847B0052525200949CE700636BF7003139EF003139EF00636B
      F7006B6BAD00736B5A00ADA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFE7DE00FFFFFF00E7CED600C66B3100CE632900CE63
      2900CE632900CE632900CE632900BD8C6B00F7EFEF00FFF7F700DE7B5200CE52
      2100D66B3100C66B3100C66B3100CE632900C66B3100DED6CE00FFFFFF00D6C6
      BD009C9C9C000000000000000000000000000000000000000000000000000000
      0000C6D6D600C6CECE00DEDED600DEDED600C6CECE00DEE7E700C6CECE00C6CE
      CE00F7F7F700F7F7F700F7EFEF00F7EFEF00F7EFEF00EFEFE700EFEFE700DEDE
      D600C6CECE00B5BDBD00B5BDBD00B5BDBD00C6CECE00C6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6BDC6007B395200946B
      7300F7E7E700FFFFF700FFEFEF00FFEFEF00FFE7E700FFDEDE00FFDEDE00FFEF
      D600FFCEC600EF84A500AD5A7B00C6CED6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B847B005A637300949CE700949CE700636BF7003139
      EF00525252009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFE7E700FFFFFF00E7C6A500CE632900D66B3100C66B
      3100C66B3100D66B3100CE632900B5734A00DED6CE00FFFFFF00E7BD9C00CE63
      2900BD5A2900CE632900D66B3100CE632900CE632900DEB5A500F7FFFF00EFD6
      C6009C9494000000000000000000000000000000000000000000000000000000
      000000000000C6D6D600C6CECE00ADA5A500B5BDBD00C6CECE00C6CECE00C6CE
      CE00C6CECE00EFEFE700F7F7F700F7EFEF00F7EFEF00F7EFEF00EFEFE700EFEF
      E700EFEFE700EFEFE700DEDED600ADADB500C6CECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C738C0073294A00E7CE
      D600FFFFF700FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFDE
      DE00FFE7E700EFB5B500DE6394009C738C00D6E7EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063736B004A427B00636BF700949CE700949CE700949CE700636B
      F70029219C0063736B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFE7E700FFFFFF00E7BD9C00CE632900D66B3100D66B
      3100D66B3100CE632900CE632900C66B3100BD8C6B00F7EFE700FFFFF700E7BD
      9C00CE632900CE632900D66B3100CE632900CE632900DEB5A500FFFFFF00E7DE
      D6009C9494000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADB500EFEFE700EFEFE700ADAD
      B500B5BDBD00B5BDBD00B5BDBD00C6CECE00C6CECE00DEDED600EFEFE700EFEF
      E700EFEFE700C6CECE00B5BDBD00B5BDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6CED6007B3952009C738C00FFF7
      F700FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFDE
      DE00FFE7E700FFEFEF00EF84A500AD5A7B00C6BDC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B847B004A427B00636BF700949CE700949CE7006B6BAD006B6BAD00949C
      E7003139EF0029219C007B847B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFE7E700FFFFFF00E7BD9C00D66B3100D66B3100D66B
      3100D66B3100CE632900D66B3100CE632900BD5A2900CE9C8400F7F7EF00FFFF
      FF00DEAD8C00BD5A2900D66B3100D66B3100D66B3100E7C6A500FFFFFF00E7DE
      D6009C9494000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADA5A500FFFFFF00FFF7E700E7DE
      D600C6CECE00C6CECE00C6CECE00B5BDBD00B5BDBD00B5BDBD00BDA5A500BDA5
      A500ADADB500C6CECE00C6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6BDC60073294A00D6ADB500FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7
      E700FFDEDE00FFE7E700EFB5B500AD5A7B00AD94A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B84
      7B0029219C00636BF700636BF700636BF7006B6BAD00525252007B847B006B6B
      AD00949CE7003139EF0018186B00949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFE7E700FFFFFF00EFD6C600DE7B5200DE7B5200D66B
      3100D66B3100C66B3100CE632900CE632900CE632900BD5A2900DEAD8C00FFFF
      FF00F7E7E700B5734A00CE632900D66B3100D66B3100EFC6B500FFFFFF00D6CE
      CE00ADADB5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEEFDE00CE9C8400FFD6AD00FFD6
      AD00FFD6AD00FFDEBD00FFDEBD00FFEFD600EFE7DE00EFE7DE00BDA5A500B5BD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDA5A50073294A00DEB5A500FFEF
      EF00FFEFEF00FFF7F700FFF7F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFEF
      EF00FFE7E700FFE7E700EFB5B500AD5A7B009C738C0000000000000000000000
      00000000000000000000000000000000000000000000000000007B847B002921
      9C00636BF700636BF700636BF7006B6BAD0052525200ADADB500000000007B84
      7B005A637300949CE700636BF70052525200C6CED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFE700F7FFF700F7F7EF00E7A56B00DE7B5200D66B
      3100B5734A00DEAD8C00E7BD9C00DE7B5200CE522100CE522100BD8C6B00F7EF
      EF00FFFFFF00E7A56B00D66B3100D66B3100DE7B5200F7EFE700FFFFFF00BDB5
      AD00B5BDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6CECE00DEAD8C00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00F7CEB500B59494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6BDC60073294A00D6ADB500FFE7
      E700FFEFEF00FFFFEF00FFFFF700FFFFF700FFF7F700FFEFEF00FFEFEF00FFEF
      EF00FFE7E700FFEFEF00EFB5B500944A6B009C738C0000000000000000000000
      000000000000000000000000000000000000000000009C9C9C006B6BAD00949C
      E700949CE700949CE7006B6BAD0052525200ADB5BD0000000000000000000000
      000094949400525252006B6BAD0052525200C6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEE7EF00F7EFE700FFFFFF00EFC6B500DE7B5200DE7B
      5200DE7B5200DEE7EF00FFFFFF00E7C6A500D66B3100C66B3100E7BD9C00FFFF
      FF00F7EFE700DE7B5200D66B3100D66B3100DEB5A500FFFFFF00F7EFEF00BDA5
      A500C6D6D6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDB5AD00F7CEB500FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00E7BD9C00B59494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECED6007B395200BD8C6B00FFD6
      CE00FFE7E700FFFFF700FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFEF
      EF00FFEFEF00FFF7F700CE8CA500944A6B00AD94A50000000000000000000000
      000000000000000000000000000000000000000000007B847B006B6BAD00949C
      E700949CE7006B6BAD0052525200ADB5BD000000000000000000000000000000
      000000000000CEEFDE009C9C9C00C6D6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFE7E700FFFFFF00FFF7E700F7AD7B00E7A5
      6B00DE7B5200DEB5A500F7FFF700FFFFFF00EFD6C600E7D6BD00F7F7F700EFFF
      FF00EFC6B500DE7B5200DE7B5200E7A56B00F7EFE700FFFFFF00DECED600C6BD
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDA5A500FFE7CE00FFE7CE00FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00B5949400C6C6B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6E7EF00AD5A7B00944A6B00FFCE
      C600FFFFEF00FFFFFF00FFFFF700FFFFFF00FFFFF700FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00EFDEE700944A6B00844A6300C6CED60000000000000000000000
      00000000000000000000000000000000000000000000B5BDBD00525252006B6B
      AD006B6BAD007B847B00B5BDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEE7EF00F7EFEF00FFFFFF00FFF7E700F7C6
      A500F7AD7B00E7A56B00F7CEB500F7EFE700EFF7F700EFF7F700EFF7F700F7E7
      CE00F7AD7B00DE7B5200F7AD7B00FFE7CE00FFFFFF00EFF7E700B5BDBD00DEDE
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5949400FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD600EFD6C600B5949400DEE7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEE7EF00D6ADB5007B395200CE9C
      8400FFF7E700FFFFFF00FFFFEF00FFF7F700FFF7F700FFEFEF00FFEFEF00FFF7
      F700FFFFF700B594940073294A00AD94A500D6E7EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000C6D6D6009494
      94009C9C9C00CEEFDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700F7F7EF00FFFFFF00FFF7
      EF00FFE7C600F7C6A500F7C6A500F7C6A500E7C6A500E7C6A500F7C6A500F7AD
      7B00F7AD7B00F7C6A500FFEFD600FFFFFF00F7F7F700D6CECE00C6CED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6B500EFC6B500FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700C6C6B500B5949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE7EF00B56B8C007329
      4A00EFA59400FFF7EF00FFF7F700FFEFEF00FFF7F700FFEFFF00FFF7FF00FFFF
      F700B59494005A213900844A6300D6E7EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700F7F7EF00FFFF
      FF00FFFFFF00FFF7E700FFEFD600FFE7C600FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFEFCE00FFFFEF00FFFFFF00EFF7F700DEDED600C6CECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5949400FFFFEF00FFFFEF00FFFFEF00FFFF
      EF00FFFFEF00FFFFEF00FFFFEF00FFF7EF00B5949400BDB5AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEE7E700B56B
      8C0073294A00B5949400EFDEE700FFF7FF00FFEFEF00E7DED600BDB5AD00844A
      63005A1831007B395200C6CED600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700EFEF
      E700F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFFF
      FF00FFFFFF00FFFFFF00F7EFEF00DED6CE00DEDED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6CECE00E7DED600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7EFEF00B5949400DEDED600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEE7
      E700CE8CA500844A6300844A63008C5A5A00844A630073294A005A1831007329
      4A009C738C00C6CED60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700F7EFEF00F7F7F700FFF7FF00FFFFFF00FFFFFF00FFFFFF00FFEF
      FF00F7EFEF00E7DED600DEDED600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDED600B5949400B5949400B5949400B5949400B5949400B594
      9400B5949400B5949400B5949400B5949400C6CECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEE7EF00DECED600D6ADB500B56B8C00946B73009C738C00AD94A500C6BD
      C600D6E7EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFE700EFE7E700EFE7DE00FFEFD600EFE7DE00E7E7
      E700EFEFE7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5D6B500ADBDA500ADBDA500ADBDA500ADBDA500CEEFDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B73008C5A5A0000000000000000000000000000000000000000000000
      00000000000000000000D6FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6D6D6005A94
      6300105A1800105A1800105A1800105A1800105A1800105A180000392100105A
      18008CB58C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300EFC6B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5
      B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5
      B500EFB5B500E7BD9C008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300EFC6B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5
      B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5B500EFB5
      B500E7BD9C008C5A5A0000000000000000000000000000000000000000000000
      000000000000C6D6D600ADB5BD00C6D6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073AD7300105A18000094
      000010B5290010B5290010B5290008AD100008AD100008AD100008AD10000094
      000000392100105A1800B5C6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300DED6CE00FFEFD600FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFCEC6008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300DED6CE00FFEFD600FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFCEC6008C5A5A0000000000000000000000000000000000000000000000
      000000000000ADA5A500BDB5AD00ADADB500C6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEEFDE0052AD52000094000010B5290010B5
      290010B5290010B5290010B5290010B5290010B5290008AD100008AD100008AD
      100008AD100000940000003921008CB58C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300DEDED600FFEFD600FFEFD600FFE7CE00FFE7CE00FFE7CE00FFE7
      CE00FFE7CE00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFCEC6008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300DEDED600FFEFD600FFEFD600FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7
      CE00FFE7CE00FFDEBD00FFDEBD00FFDEBD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFCEC6008C5A5A0000000000000000000000000000000000000000000000
      000000000000BDB5AD00EFE7DE00DED6CE00ADADB500B5C6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052AD52000094000021BD4A0021BD4A0021BD
      4A0010B5290010B5290010B5290010B5290010B5290010B5290008AD100008AD
      100008AD100008AD10000094000000392100A5AD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300DEDED600FFEFD600FFEFD600FFEFD600FFE7CE00FFE7CE00FFE7
      CE00FFE7CE00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFD6AD00FFD6
      AD00FFD6AD00FFCEC6008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A57B
      7300DEDED600FFEFD600FFEFD600FFEFD60000940000FFE7CE00F7EFC600BDCE
      8C007BA54A00A5C67B00E7C6A500FFEFCE00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFCEC6008C5A5A0000000000000000000000000000000000000000000000
      000000000000C6CECE00DED6CE00EFE7DE00E7DED600B5BDBD00B5BDBD00B5BD
      BD00ADB5BD00B5BDBD00B5BDBD00C6CECE00B5C6D600CEEFDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073AD73000094000021BD4A0021BD4A0021BD4A0021BD
      4A0021BD4A0021BD4A004ACE6B00F7FFF700F7FFF7004ACE6B0010B5290010B5
      290008AD100008AD100008AD100000940000105A1800C6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD8C6B00DEDED600FFF7DE00FFEFD600FFEFD600FFEFD600FFEFCE00FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFD6
      AD00FFD6AD00FFCEC6008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      6B00DEDED600FFF7DE00FFEFD600FFEFD6000094000084BD730052AD52000094
      00000094000000940000009400007BA54A00FFDEBD00FFDEBD00FFD6AD00FFD6
      AD00FFCEC6008C5A5A0000000000000000000000000000000000000000000000
      000000000000C6D6D600D6CEC600EFE7DE00EFE7DE00EFE7DE00C6C6B500C6C6
      B500D6C6BD00D6CEC600D6C6BD00C6C6B500BDB5AD00ADADB500B5BDBD00C6D6
      D6000000000000000000000000000000000000000000CEEFDE00B5C6D600DEE7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000C6D6D6000094000021BD4A0029C66B0029C66B0021BD4A0021BD
      4A0021BD4A004ACE6B00F7FFF700FFFFFF00FFFFFF0084CE940010B5290010B5
      290010B5290008AD100008AD100008AD1000009400004A734A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD8C6B00DEE7E700FFF7E700FFF7DE00FFEFD600FFEFD600949CE700EFE7
      DE00FFE7CE00FFE7CE00FFEFCE00C6D6D600FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFD6AD00FFD6CE008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      6B00DEE7E700FFF7E700FFF7DE00FFEFD6000094000000940000009400000094
      0000009400000094000000940000009400007BA54A00FFDEBD00FFD6AD00FFD6
      AD00FFD6CE008C5A5A0000000000000000000000000000000000000000000000
      000000000000CEEFDE00C6C6B500F7EFE700EFE7DE00F7EFE700FFFFEF00FFFF
      F700FFFFF700FFFFF700FFFFFF00FFFFF700FFFFEF00EFE7DE00D6C6BD00ADA5
      A500B5C6D6000000000000000000D6FFFF00C6D6D6009494940094949400ADB5
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000005AB56B0010B5290029C66B0029C66B0029C66B0029C66B0021BD
      4A004ACE6B00F7FFF700FFFFFF00FFFFFF00F7FFF70021BD4A0010B5290010B5
      290010B5290010B5290010B5290008AD100008AD1000105A1800C6D6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD8C6B00DEE7E700FFF7EF00FFF7E700FFF7DE00949CE7000829F7003139
      EF00EFE7DE00F7EFC600949CE7000829F700636BF700FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFD6CE008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      6B00DEE7E700FFF7EF00FFF7E700FFF7DE000094000000940000009400000094
      000039AD31007BA54A0084BD730008AD100000940000BDCE8C00FFDEBD00FFDE
      BD00FFD6CE008C5A5A0000000000000000000000000000000000000000000000
      000000000000ADADB500D6CEC600F7EFE700F7EFE700EFE7DE00E7D6BD00EFD6
      C600EFD6C600E7D6BD00E7D6BD00E7D6BD00EFD6C600EFE7DE00EFE7DE00DED6
      CE00BDB5AD00C6D6D600D6FFFF00C6D6D60094949400ADA5A500BDB5AD00ADA5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000008AD100021BD4A0029C66B0029C66B0029C66B0029C66B005ACE
      8400F7FFF700FFFFFF00FFFFFF00F7FFF7004ACE6B0021BD4A0010B5290010B5
      290010B5290010B5290010B5290010B5290010B529000094000073AD73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD8C6B00EFEFE700FFF7EF00FFF7EF00DEE7E7000829F7000829F7000829
      F700394AD600949CE7000829F7000829F7000829F700949CE700FFDEBD00FFDE
      BD00FFDEBD00FFD6CE008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      6B00EFEFE700FFF7EF00FFF7EF00FFF7E7000094000000940000009400000094
      000084BD7300FFE7CE00FFE7CE00E7D6BD0039AD310052AD5200FFDEBD00FFDE
      BD00FFD6CE008C5A5A0000000000000000000000000000000000000000000000
      0000C6CECE00C6C6B500FFF7EF00F7EFE700FFF7EF00EFE7DE00C6C6B500C6BD
      9400C6C6B500C6C6B500C6C6B500C6BD9400BDB5AD00BDA5A500ADA5A500ADA5
      A500ADA5A50094949400B5BDBD0094949400BDA5A500D6C6BD00C6C6B500B5BD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000C6D6D6000094000029C66B0029C66B0029C66B0029C66B005ACE8400F7FF
      F700FFFFFF00FFFFFF00F7FFF7004ACE6B0021BD4A0021BD4A0021BD4A0021BD
      4A0010B5290010B5290010B5290010B5290010B5290008AD10004A734A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD8C6B00EFEFE700FFFFEF00FFF7EF00FFF7EF00949CE7000829F7000829
      F7000829F7000829F7000829F7000829F700636BF700FFE7CE00FFDEBD00FFDE
      BD00FFDEBD00FFD6CE00946B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      6B00EFEFE700FFFFEF00FFF7EF00FFF7EF000094000000940000009400000094
      00000094000000940000FFE7CE00FFE7CE00E7D6BD0039AD3100EFD6C600FFDE
      BD00FFD6CE00946B730000000000000000000000000000000000000000000000
      0000BDB5AD00EFE7DE00FFF7EF00FFF7EF00FFFFEF00EFE7DE00E7D6BD00EFD6
      C600E7DED600C6C6B500949494007B847B007B847B007B847B007B847B007B84
      7B007B847B007B847B007B847B00C6C6B500D6CEC600D6C6BD00C6C6B500C6CE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000A5D6B50008AD100029C66B0029C66B0029C66B005ACE8400F7FFF700FFFF
      FF00FFFFFF00FFFFFF00B5FFC60094D6B50094D6B50094D6B50094D6B50094D6
      B50094D6B50094D6B5004ACE6B0010B5290010B5290010B52900105A18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C8400EFEFE700FFFFEF00FFFFEF00FFF7EF00FFF7EF00C6D6D6000829
      F7000829F7000829F7000829F700636BF700FFE7CE00FFE7CE00FFE7CE00FFE7
      CE00FFDEBD00FFD6CE00946B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8400EFEFE700FFFFEF00FFFFEF00FFF7EF00FFF7EF00FFF7EF00FFF7E700FFF7
      E700FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFDEBD00FFE7CE00E7D6BD00FFDE
      BD00FFD6CE00946B730000000000000000000000000000000000000000000000
      0000C6C6B500F7EFE700FFF7EF00FFFFEF00FFF7EF00E7D6BD00C6C6B500C6BD
      940094947B007B847B0094949400BDB5AD00D6C6BD00D6CEC600D6CEC600D6CE
      C600D6CEC600D6C6BD00D6C6BD00D6CEC600D6CEC600D6CEC600C6C6B500C6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000A5D6B50008AD100029C66B0029C66B005ACE8400F7FFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0094D6B50010B5290010B5290010B52900105A18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C8400EFEFE700FFFFFF00FFFFEF00FFFFEF00FFFFEF00949CE7000829
      F7000829F7000829F7000829F7003139EF00EFE7DE00FFE7CE00FFE7CE00FFE7
      CE00FFDEBD00FFD6CE00946B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8400EFEFE700FFFFFF00FFFFEF0084BD7300FFF7EF00FFF7EF00FFF7E700FFF7
      E700FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFDE
      BD00FFD6CE00946B730000000000000000000000000000000000000000000000
      0000C6CECE00EFE7DE00FFFFEF00FFFFEF00EFE7DE00E7DED600C6C6B5007B84
      7B00ADA5A500D6CEC600E7DED600E7DED600E7DED600E7DED600E7DED600E7DE
      D600E7DED600E7DED600E7DED600DED6CE00DED6CE00DED6CE00BDB5AD00ADB5
      BD00D6FFFF000000000000000000000000000000000000000000000000000000
      0000A5D6B50008AD100029C66B0029C66B005ACE8400F7FFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0094D6B50021BD4A0021BD4A0010B52900105A18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C8400EFEFE700FFFFFF00FFFFFF00FFFFF700949CE7000829F7000829
      F7000829F7000829F7000829F7000829F700394AD600E7DED600FFE7CE00FFE7
      CE00FFE7CE00FFD6CE00946B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8400EFEFE700FFFFFF00FFFFFF0084BD7300C6EFB500FFF7EF00FFF7EF00FFF7
      E7000094000000940000009400000094000000940000FFE7CE00FFE7CE00FFE7
      CE00FFD6CE00946B730000000000000000000000000000000000000000000000
      000000000000DEDED600FFF7EF00FFFFF700F7EFE700D6C6BD0094947B00C6C6
      B500E7DED600E7DED600DED6CE00E7D6BD00E7D6BD00E7D6BD00E7D6BD00E7D6
      BD00E7D6BD00E7D6BD00E7D6BD00E7D6BD00DED6CE00DED6CE00D6C6BD009494
      9400B5C6D6000000000000000000000000000000000000000000000000000000
      0000A5D6B50008AD100029C66B0029C66B0029C66B005ACE8400F7FFF700FFFF
      FF00FFFFFF00FFFFFF00D6FFFF009CE7B5009CE7B5009CE7B5009CE7B5009CE7
      B5009CE7B50094D6B5005ACE840021BD4A0021BD4A0008AD10004A734A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C8400F7EFEF00FFFFFF00FFFFFF00D6E7EF000829F7000829F7000829
      F700636BF700CEC6DE000829F7000829F7000829F700949CE700FFEFD600FFE7
      CE00FFE7CE00FFD6CE00946B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8400F7EFEF00FFFFFF00FFFFFF00C6DEBD0008AD1000C6DEBD00FFF7EF00FFF7
      EF00EFE7DE0039AD3100009400000094000000940000FFEFD600FFE7CE00FFE7
      CE00FFD6CE00946B730000000000000000000000000000000000000000000000
      000000000000DEE7E700DEE7E700F7F7F700FFFFEF00ADA5A500BDB5AD00E7DE
      D600E7DED600E7DED600DED6CE00C6BD9400C6BD9400C6BD9400C6BD9400C6BD
      9400C6BD9400C6BD9400C6BD9400D6C6BD00E7DED600E7DED600E7DED600D6C6
      BD00ADA5A500CEEFDE0000000000000000000000000000000000000000000000
      0000CEEFDE0008AD10004ACE6B004ACE6B0029C66B0029C66B005ACE8400F7FF
      F700FFFFFF00FFFFFF00FFFFFF0084CE940029C66B0029C66B0029C66B0029C6
      6B0029C66B0029C66B0021BD4A0021BD4A0021BD4A0010B5290052AD52000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C8400F7F7F700FFFFFF00FFFFFF00FFFFFF00949CE7000829F700636B
      F700FFF7EF00FFF7EF00CEC6DE000829F700636BF700FFEFD600FFEFD600FFEF
      D600FFE7CE00FFCEC600946B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8400F7F7F700FFFFFF00FFFFFF00FFFFF70052AD52000094000084BD7300E7DE
      D600E7DED60052AD5200009400000094000000940000FFEFD600FFEFD600FFE7
      CE00FFCEC600946B730000000000000000000000000000000000000000000000
      0000000000000000000000000000DEE7E700EFE7DE00ADA5A500DED6CE00E7DE
      D600E7DED600E7DED600E7DED600E7D6BD00E7D6BD00E7D6BD00EFD6C600EFD6
      C600EFD6C600EFD6C600E7D6BD00E7D6BD00E7DED600E7DED600E7DED600E7DE
      D600BDB5AD00C6D6D60000000000000000000000000000000000000000000000
      00000000000039AD31004ACE6B005ACE84005ACE840029C66B0029C66B005ACE
      8400F7FFF700FFFFFF00FFFFFF00FFFFFF0084CE940029C66B0029C66B0029C6
      6B0029C66B0029C66B0029C66B0029C66B0021BD4A00009400008CB58C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEAD8C00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6E7EF00FFFF
      F700FFFFEF00FFF7EF00FFF7EF00DEE7E700FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600EFB5B500A57B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00F7F7F700FFFFFF00FFFFFF00FFFFFF00C6DEBD0000940000009400000094
      00000094000000940000009400000094000000940000FFEFD600FFEFD600FFEF
      D600EFB5B500A57B730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6B500E7DED600EFE7
      DE00EFE7DE00EFE7DE00E7DED600C6BD9400C6BD9400C6BD9400C6BD9400C6BD
      9400C6BD9400C6BD9400C6BD9400C6BD9400C6C6B500F7EFE700EFE7DE00EFE7
      DE00C6C6B500C6D6D60000000000000000000000000000000000000000000000
      00000000000084CE940008AD100094D6B50084CE94005ACE84004ACE6B0029C6
      6B005ACE8400F7FFF700FFFFFF00FFFFFF00FFFFFF005ACE840029C66B0029C6
      6B0029C66B0029C66B0029C66B0029C66B0021BD4A0000940000CEEFDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEAD8C00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFEF00FFFFEF00FFF7EF00FFF7EF00FFF7E700FFF7E700FFEFD600FFCE
      C600EFB5B500EFA59400A57B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5D69C00009400000094
      000000940000009400000094000008AD100000940000FFEFD600FFCEC600EFB5
      B500EFA59400A57B730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6CECE00E7DED600EFE7
      DE00EFE7DE00F7EFE700EFE7DE00EFD6C600EFD6C600EFD6C600EFD6C600EFD6
      C600EFD6C600EFD6C600E7DED600EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7
      DE00D6CEC600CEEFDE0000000000000000000000000000000000000000000000
      0000000000000000000010B529004ACE6B009CE7B50084CE94005ACE84005ACE
      840029C66B005ACE8400F7FFF700FFFFFF00FFFFFF005ACE840029C66B0029C6
      6B0029C66B0029C66B0029C66B0029C66B0008AD100094D6B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFEF00FFFFEF00FFF7EF00FFF7EF00FFF7EF00EFC6B500EFA5
      9400EFA59400EFA59400A57B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE0084BD
      730039AD310039AD310084BD7300EFE7DE0000940000EFC6B500EFA59400EFA5
      9400EFA59400A57B730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE7E700E7DED600F7EF
      E700F7EFE700F7EFE700EFE7DE00C6BD9400C6BD9400C6BD9400C6BD9400C6BD
      9400C6BD9400C6BD9400E7D6BD00FFFFEF00FFF7EF00F7EFE700FFF7EF00EFE7
      DE00DEDED6000000000000000000000000000000000000000000000000000000
      00000000000000000000B5EFB50008AD1000A5D69C009CE7B50094D6B50084CE
      94005ACE84005ACE84005ACE8400B5EFB5009CE7B50029C66B0029C66B0029C6
      6B0029C66B0029C66B0029C66B0010B5290039AD310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFEF00FFFFEF00FFF7EF00FFF7EF00BD8C6B00BD8C
      6B00BD8C6B00BD8C6B00A57B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFEF00FFFFEF00FFF7EF00FFF7EF00FFF7EF00BD8C6B00BD8C6B00BD8C
      6B00BD8C6B00A57B730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEE7E700EFEF
      E700FFFFEF00FFFFEF00FFF7EF00EFE7DE00F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700F7EFE700F7EFE700FFFFEF00FFFFEF00FFFFF700FFF7EF00DEE7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084CE940008AD1000A5D69C00B5EFB5009CE7
      B50084CE94005ACE84005ACE84004ACE6B0029C66B0029C66B0029C66B0029C6
      6B0029C66B0029C66B0010B5290039AD3100CEEFDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFEF00FFFFEF00FFFFEF00BD8C6B00E7A5
      6B00E7A56B00CE9C8400D6CEC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFEF00FFFFEF00FFFFEF00BD8C6B00E7A56B00E7A5
      6B00CE9C8400D6C6BD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEE7
      E700EFEFE700F7FFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EFEF00DEE7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094D6B50008AD10004ACE6B00B5EF
      B500B5EFB50094D6B50084CE94005ACE84005ACE840029C66B0029C66B0029C6
      6B0021BD4A0008AD100039AD3100CEEFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFEF00FFFFEF00BD8C6B00DEAD
      8C00CE9C8400DED6CE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFEF00FFFFEF00BD8C6B00DEAD8C00CE9C
      8400DED6CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEE7E700EFEFE700F7EFEF00F7F7F700F7FFF700FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700EFEFE700DEE7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEEFDE004ACE6B0008AD
      100052AD52005ACE84005ACE840084CE94005ACE84004ACE6B0021BD4A0008AD
      100008AD10005ACE840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7BD9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7EFEF00EFEFE700EFEFE700BD8C6B00DEAD
      8C00DED6CE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7EFEF00EFEFE700EFEFE700BD8C6B00DEAD8C00DED6
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEEF
      DE005ACE840039AD310008AD100008AD100008AD100039AD310052AD520084CE
      9400CEEFDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7BD9C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD
      8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00BD8C6B00DED6
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      9C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD
      8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00DEAD8C00BD8C6B00DED6CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFE700ADBDA5008CA56B008C8C
      4A00847B4200947B390094732900AD844A00E7BD9C00C6DEBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002118210000000000211821004A52
      3100949494000000000000000000C6DEBD009CAD73008C8C4A00847B42008463
      290094732900AD844A00E7A56B00E7BD9C00EFD6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CA56B006B733100739439007BA54A008C8C
      4A00847B4200947329009473290094631800B54A0000B54A0000B54A0000B573
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5BDBD000000000000392100003921001021
      000000000000ADBDA5006B733100739439008C9452008C8C4A008C8C4A00947B
      39009473290094631800B56B2100B54A0000B54A00008C290000B5734A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000739452005A6B210094A55A008CA56B008CA56B008C94
      52008C8C4A00947B3900A57B3100B56B2100B56B2100B56B2100B56B21008C29
      00006B2908000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B847B000000000000392100003921000039
      2100102100006B733100739439008CA56B008CA56B008CA56B008C9452009C84
      4200947B3900B56B2100B56B2100B56B2100B56B2100B56B21007B100000B594
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDED600312900007394390094A55A0094BD6B0094BD6B009CA5
      6B009C9C52009C843900A57B3100B56B2100B56B2100B56B2100B56B21008C29
      0000A57B73000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000525252001021000000392100003921000039
      2100102100004A734A007BA54A0094BD6B0094BD6B008CA56B009C9C52009C84
      42009C843900A57B3100B56B2100A5632100B56B2100B56B21007B100000C6C6
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFE7DE00DEDE
      D600B5C6D6005A94B500B5C6D600C6CECE00E7DED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021100000524218006B73310094BD6B00A5CE8C00A5C67B00A5B5
      73009C9C52009C944A009C843900B56B2100B56B2100A5632100B56B21007B39
      00006B733100CEA58C00CEA58C00000000000000000000000000000000000000
      00000000000000000000000000003931290052525200949494007B847B006373
      6B007B847B004A52310094A55A00A5C67B00A5C67B00A5C67B009CA56B009C9C
      52009C843900A57B3100B56B2100A5632100A5632100B56B21007B3900006B73
      3100E7A56B00E7BD9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD8C6B005A18
      31007B1000004A1800007B395200CEA58C00000000000000000000000000CEA5
      8C00B5734A007B1000004A1800007B1000004A1800004A1800008C4A3100E7BD
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5C6D60042BDDE0021AD
      E70021ADE70021ADE70021ADE70021ADE7005A94B500ADB5BD00E7DED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5AD940031290000846329007394390094BD6B00B5DE9400B5DE9400A5C6
      7B009CA56B009C9C52009C843900A57B3100B56B2100B56B2100B56B21007B39
      000052310800B56B2100B54A0000000000000000000000000000000000000000
      000000000000000000000000000010080800525252007B847B004A734A006373
      6B005A9463004A734A0094BD6B00A5CE8C00B5DE9400A5CE8C00A5B573009C9C
      52009C944A00947B3900A57B3100A5632100B56B2100944210006B2908005231
      0800B56B21008C29000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      9C007B100000A57B730000000000000000000000000000000000000000000000
      000000000000733131007B1000004A1800007B100000B5734A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEE7E70042BDDE0042BDDE0021ADE70021AD
      E70021ADE70021ADE70021ADE70021ADE70021ADE70021ADE7005A94B500C6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000312900006B7331009C8442009C84390094BD6B00B5E79C009CE7B500A5CE
      9400A5B573009C9C52009C843900947B39009473290094631800946318004A18
      0000734A1000CE63100094421000000000000000000000000000000000000000
      000000000000000000000000000000000000525252007B847B0063736B006373
      6B0063736B004A52310094BD6B00B5DE9400B5E79C00B5DE9400A5C67B009CA5
      6B009C9C52009C8442009473290094732900946318007B3910004A1800007B39
      1000CE6310009463180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300B5734A0000000000000000000000000000000000000000000000
      0000CEC6DE007B1000004A1800007B1000007B100000CEC6DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEE7E70042BDDE0021DEFF0042BDDE0021ADE70021AD
      E70021ADE70021ADE70021ADE70021ADE70021ADE70021ADE70021ADE7005A94
      B500C6CECE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      B500524218009C8442009C944A00AD844A0094BD6B00B5EFB500B5FFC600A5D6
      9C009CAD73009CA56B008C945200947B390084632900846329007B3910004A18
      0000CE631000B54A0000BD8C6B00000000000000000000000000000000000000
      0000000000000000000000000000000000005252520063736B007B847B006373
      6B004A734A006B5A290094BD6B00B5E79C00B5EFB5009CE7B500A5CE8C00A5B5
      73008C9452009C844200947B390094631800846329007B3910004A180000CE63
      1000B54A0000B594940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073313100EFD6C600000000000000000000000000000000000000
      0000A57B73007B1000004A1800007B1000007B39520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042BDDE004AEFFF0042BDDE0021ADE70021ADE700215A
      9C00215A9C00215A9C00215A9C00215A9C0021ADE70021ADE70021ADE70021AD
      E7005A94B500E7DED60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CAD
      73006B733100A5B57300B5A55200AD844A0094BD6B00C6EFB500B5FFC6009CE7
      B500A5CE8C009CA56B008C8C4A00847B42008463290084632900523108006B29
      0800CE6310007B39000000000000000000000000000000000000000000000000
      00000000000000000000F7EFEF0000000000525252007B847B00525252005252
      52004A734A0063736B0094BD6B00B5E79C00B5FFC600B5EFB500A5D69C00A5B5
      73009C9C52008C8C4A0084632900846329006B5A2900523108007B390000CE63
      10006B2908000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A57B730073313100A57B7300A57B7300A57B7300A57B7300A57B
      73007B1000007B1000004A1800007B100000E7BD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5D6E7006BD6EF0021DEFF0021DEFF0021ADE700215A9C0021AD
      E70021ADE70042BDDE0021ADE70021ADE700215A9C0021ADE70021ADE70021AD
      E70021ADE700B5C6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      310094A55A00A5B57300B5A55200946318008CA56B00B5EFB500B5FFC600B5EF
      B50084CE94008CAD73008C945200847B42006B7331006B5A29004A1800009442
      10007B39000063736B0000000000000000000000000000000000000000000000
      00000000000000000000B5C6D600100808000039210010210000102100000039
      2100000000004A734A00A5CE8C00A5CE8C00B5FFC600B5FFC60094D6B5008CB5
      8C008CA56B008C8C4A006B7331006B5A29006B5A29004A180000B56B21006B29
      0800A5AD94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFD6C6007B100000CEA58C00CEA58C00CEA58C00CEA58C00A57B
      73004A1800007B1000004A180000733131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE7DE006BD6EF004AEFFF004AEFFF004AEFFF00215A9C0021ADE70021AD
      E7004AEFFF0021DEFF0021DEFF0021ADE70021ADE700215A9C0021ADE70021AD
      E70021ADE7005A94B500EFE7DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      310094BD6B00E7A56B00AD844A006B29080073943900B5FFC600B5FFC600ADFF
      FF00B5EFB5008CB58C00739452006B7331006B5A290052421800523108005231
      08003931290000000000000000000000000000000000000000006B2908000000
      00000000000000000000A5AD94000000000052525200B5BDBD00EFEFE700FFFF
      FF00B5BDBD0000392100B5FFC60094BD6B00B5FFC600B5FFC60094D6B5008CB5
      8C008CA56B00739452006B7331006B5A29005231080052310800523108006373
      6B0000000000000000000000000000000000000000006B290800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B395200A57B73000000000000000000000000007B10
      00007B1000004A1800007B100000CEA58C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEE7E70021DEFF004AEFFF004AEFFF004AEFFF004AEFFF004AEFFF004AEF
      FF004AEFFF004AEFFF004AEFFF0021DEFF0042BDDE0021DEFF0042BDDE0021DE
      FF0021ADE70021ADE700C6CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007394
      3900A5D69C00E7A56B00B54A00004A1800007BA54A00A5D69C005A6373003931
      2900100808005A9463008CA56B006B7331006B5A29004A180000211000005252
      520000000000000000000000000000000000000000006B2908006B2908006B29
      080000000000000000005252520039312900FFF7DE00EFD6C600E7BD9C00EFD6
      C600F7F7F7002118210084CE940094BD6B00B5EFB500B5EFB50094D6B50073AD
      73008CA56B006B7331006B733100524218002110000021100000949494000000
      0000000000000000000000000000000000006B2908006B2908006B2908000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7BD9C00733131000000000000000000CEA58C004A18
      00007B1000004A1800007B100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5D6E7004AEFFF004AEFFF004AEFFF004AEFFF004AEFFF004AEFFF004AEF
      FF004AEFFF004AEFFF004AEFFF004AEFFF0021DEFF004AEFFF0021DEFF0021AD
      E70021ADE70021ADE700B5C6D600000000000000000000000000000000000000
      0000000000006B290800000000000000000000000000000000000000000094A5
      5A00B5E79C00E7A56B008C290000CEA58C00B5C6D60000182900003921000863
      5A0008635A0031290000739452004A734A003129000021182100DEDED6000000
      0000000000000000000000000000000000006B2908006B2908006B2908006B29
      08006B29080000000000211821006B5A2900E7BD9C00E7BD9C00E7BD9C00E7BD
      9C00EFD6C60039312900EFEFE7007394390073AD730094D6B50094D6B50084CE
      94005A9463004A734A00105A1800211000005252520000000000000000000000
      00000000000000000000000000006B2908006B2908006B2908006B2908006B29
      0800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C4A3100CEA58C0000000000733131007B10
      00004A1800007B100000BD8C6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094D6E7004AEFFF004AEFFF004AEFFF0042BDDE00215A9C00215A9C0042BD
      DE004AEFFF004AEFFF004AEFFF0042BDDE00215A9C00215A9C0021ADE70042BD
      DE0021DEFF0021ADE7005A94B500000000000000000000000000000000000000
      00006B2908006B2908006B29080000000000000000000000000000000000ADBD
      A500A5CE8C00A5CE8C00B54A00005231080008635A0008949C0021DEFF004AEF
      FF0021DEFF000039210000392100105A18009494940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003931290063736B00EFD6C600E7BD9C00E7BD9C00E7BD
      9C00EFD6C6004A5231000000000000000000C6C6B50052AD52005A9463005252
      52004A734A00105A180039312900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEA58C0073313100E7BD9C007B1000004A18
      00007B1000004A18000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5D6E7004AEFFF004AEFFF004AEFFF00215A9C0018186B0018186B00215A
      9C004AEFFF004AEFFF004AEFFF00215A9C0018186B0018186B00215A9C0021DE
      FF0021ADE70021ADE700B5C6D600000000000000000000000000000000006B29
      08006B2908006B2908006B2908006B290800000000000000000000000000EFEF
      E70094BD6B00B5DE9400B54A000008635A0021DEFF0021DEFF0021ADE70021DE
      FF0021DEFF0008949C0010210000A57B73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018186B0063736B00EFD6C600E7BD9C00E7BD9C00EFD6
      C600E7BD9C0063736B000000000000000000FFEFFF0021100000211000004A18
      00004A1800004A180000C6C6B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073313100733131007B1000004A18
      00007B100000A57B730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEE7E7004AEFFF004AEFFF004AEFFF00215A9C0018186B00FFFFFF005A94
      B5004AEFFF004AEFFF004AEFFF00215A9C0018186B00FFFFFF005A94B50021DE
      FF0042BDDE0021ADE700DEDED600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094BD6B00E7BD9C005A94630021DEFF004AEFFF00211821003129000021DE
      FF0021DEFF0021ADE7008C2900008C2900008C29000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B6BAD007B847B00FFF7DE00EFD6C600E7BD9C00E7BD
      9C0039312900B5C6D60000000000000000001021000031290000734A1000734A
      10007B3910008C2900007B100000CEA58C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C6B004A1800007B1000007B10
      00007B100000C6C6B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE7DE006BD6EF004AEFFF004AEFFF005A94B500FFFFFF00FFFFFF005A94
      B5004AEFFF004AEFFF004AEFFF005A94B500FFFFFF00FFFFFF005A94B50042BD
      DE0021DEFF0042BDDE00EFE7DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6DEBD00A5D69C004AEFFF0021DEFF008CB58C00734A1000734A10008463
      29006B733100B54A0000B54A0000CE6310007B100000B5949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5C6D6006B6BAD0063736B004A523100211821001008
      0800A5AD9400000000000000000031290000524218006B7331006B7331008463
      290094631800CE631000B54A00007B1000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B1000007B1000004A18
      00007B3952000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5D6E7006BD6EF004AEFFF005A94B500FFFFFF00FFFFFF005A94
      B5004AEFFF004AEFFF004AEFFF005A94B500FFFFFF00FFFFFF005A94B50021DE
      FF0042BDDE00B5C6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFFFFF0042BDDE0021DEFF004A427B009C944A006B73310094A55A009C94
      4A009C843900AD844A00B56B2100CE631000B54A00007B100000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525200C6D6D600EFEFE700FFFF
      FF000000000000000000EFEFE700524218007394390094A55A009C944A009C84
      3900B56B2100B56B2100CE6310008C290000AD844A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B73004A1800007B10
      0000CEA58C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BD6EF004AEFFF006BD6EF005A94B5005A94B5006BD6
      EF004AEFFF004AEFFF004AEFFF006BD6EF005A94B5005A94B5006BD6EF0021DE
      FF0042BDDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFE70021DEFF0008949C00102100005A6B210073943900A5C67B00B5DE
      9400A5C67B009C944A00A57B3100B56B21008C2900007B100000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6D6D600FFFFFF00000000000000
      00000000000000000000C6DEBD005A6B210094BD6B00A5CE8C00A5CE8C00A5B5
      73009C843900B56B2100B56B21008C2900007B39000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFD6C6007B1000007331
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEE7E7006BD6EF004AEFFF004AEFFF004AEFFF004AEF
      FF004AEFFF004AEFFF004AEFFF004AEFFF004AEFFF004AEFFF004AEFFF0042BD
      DE00DEE7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADFFFF0021DEFF0021ADE70021ADE700105A180094BD6B00B5E79C00B5FF
      C6009CE7B500A5B57300947B3900846329007B3910004A180000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A523100F7EFEF0000000000000000000000
      00000000000000000000EFEFE7006B733100A5CE8C00B5EFB5009CE7B500A5CE
      8C009C9C52008463290084632900523108004A18000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C4A3100CEA5
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEE7E7006BD6EF006BD6EF004AEFFF004AEF
      FF004AEFFF004AEFFF004AEFFF004AEFFF004AEFFF006BD6EF0042BDDE00DEE7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADFFFF0021DEFF0021DEFF0021DEFF009494940073943900A5D69C00B5FF
      C6009CE7B50084CE94005A9463006B5A2900523108004A180000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B73310094BD6B00B5FFC600B5EFB50094D6
      B5008CA56B006B7331006B5A29004A180000A57B730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFD6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5D6E7006BD6EF004AEF
      FF004AEFFF004AEFFF004AEFFF0021DEFF006BD6EF00B5D6E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6FFFF004AEFFF0021ADE7000000000094A55A007BA54A00B5EF
      B50094D6B50073AD73004A734A004A5231000000000094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6CECE007394390084CE940094D6B50084CE
      94007B847B0063736B0052421800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFE7DE00DEE7
      E700B5D6E70094D6E700B5D6E700DEE7E700EFE7DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A734A004A73
      4A0073AD73005A9463004A523100102100005252520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008CB58C004A734A0073AD730073AD
      73004A734A00105A180000000000B5BDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6CE
      CE004A734A004A734A004A734A00B5BDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFE70073AD73004A73
      4A00105A180063736B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFE700C6C6B5009CAD73008C8C
      4A00847B4200947B3900AD844A00E7A56B00E7BD9C00EFD6C600FFFFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFE7DE00C6C6B5009CAD73008C8C4A00847B
      4200947B3900AD844A00E7A56B00E7BD9C00EFD6C600FFFFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CAD730073943900739439007BA54A008C8C
      4A00847B42009473290094732900A5632100B56B2100B54A0000B54A0000B573
      4A00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000525252006B6BAD00C6DEBD00C6DEBD00C6DE
      BD00C6DEBD00C6DEBD00C6DEBD00C6DEBD00C6DEBD00B5C6D600EFD6C600C6DE
      BD00C6DEBD00B5C6D600C6DEBD00C6DEBD005252520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CAD7300739439007BA54A007BA54A008C8C4A00847B
      42009473290094732900A5632100B56B2100B54A0000B54A0000B5734A00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADBDA5006B73
      3100A5632100E7BD9C008CA56B005A6B21007BA54A008CA56B008CA56B0094A5
      5A008C8C4A009C843900A57B3100B56B2100B56B2100B56B2100B56B21007B39
      0000BD8C6B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052525200FFFFFF0052525200EFFFFF00EFFF
      FF00ADFFFF00EFFFFF00FFFFFF00ADFFFF00EFFFFF00ADFFFF00ADFFFF00ADFF
      FF00ADFFFF00ADFFFF00ADFFFF0000000000C6DEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADBDA5006B733100B56B
      2100E7BD9C008CA56B005A6B21007BA54A008CA56B008CA56B0094A55A008C8C
      4A009C843900A57B3100B56B2100B56B2100B56B2100B56B21008C290000BD8C
      6B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7D6
      BD00ADBDA50094947B00736B5A00736B5A008C5A5A00A57B7300CE9C8400C6BD
      9400EFC6B5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B7331007394
      3900946318008C2900005A6B21007394390094A55A0094BD6B0094BD6B009CA5
      6B009C944A009C844200A57B3100B56B2100B56B2100B56B2100B56B21008C29
      0000BD8C6B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B6BAD00FFFFFF00FFFFFF0052525200EFFF
      FF00FFFFFF00EFFFFF00ADFFFF00EFFFFF00ADFFFF00EFFFFF00EFFFFF00ADFF
      FF00ADFFFF00ADFFFF0000000000ADFFFF00B5C6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B733100739439009463
      18008C2900005A6B21007394390094A55A0094BD6B0094BD6B009CA56B009C94
      4A009C844200A57B3100B56B2100B56B2100B56B2100B56B21008C290000BD8C
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6C6BD00CEA58C00EFC6B500C6C6B5005A63
      7300215A9C000818D6000000FF000000FF000000FF000818D60029219C007331
      310094421000BDB5AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADBDA5007BA5
      4A00947B3900B54A00006B5A29007394390094BD6B00A5C67B00A5C67B00A5B5
      73009C9C52009C944A009C843900A57B3100B56B2100A5632100B56B21007B39
      000084632900CEA58C00E7BD9C00000000000000000000000000000000000000
      000000000000000000000000000052525200FFFFFF00FFFFFF00FFFFFF005252
      5200FFFFFF00ADFFFF00FFFFFF00ADFFFF00FFFFFF00ADFFFF00ADFFFF00ADFF
      FF00ADFFFF0000000000ADFFFF00ADFFFF00C6DEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CAD73007BA54A00947B
      3900B54A00006B5A29007394390094BD6B00A5C67B00A5C67B00A5B573009C9C
      52009C944A009C843900A57B3100B56B2100A5632100B56B21007B3900008463
      2900CEA58C00E7BD9C0000000000000000000000000000000000000000000000
      00000000000000000000000000006B73310073730800A56321004A427B000008
      E7000010EF00394AD6006B6BAD0063736B004A427B0029219C000818D6000000
      FF004A427B00946B7300F7EFE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDED6007BA5
      4A009CA56B0094631800734A10007BA54A0094BD6B00B5DE9400A5D69C00A5C6
      7B009CA56B009C9C52009C843900A57B3100B56B2100A5632100946318007B39
      000052310800B56B0800B54A0000000000000000000000000000000000000000
      000000000000000000000000000052525200FFFFFF00FFFFFF00FFFFFF005252
      5200525252005252520052525200000000005252520000000000525252000000
      00000000000000000000ADFFFF00ADFFFF00C6DEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700ADBDA50094A55A009CA5
      6B0094631800734A10007BA54A0094BD6B00B5DE9400A5CE9400A5C67B009CA5
      6B009C9C52009C843900A57B3100B56B2100A5632100946318007B3900005231
      0800B56B0800B54A000000000000000000000000000000000000000000000000
      00000000000000000000000000009CAD73007394390029219C000000FF000010
      F7008C8C8C00A5C67B00A5B573009C944A009C843900A57B3100947329002921
      9C000008E7000818D600B5949400EFC6B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00A5C6
      7B00B5DE9400B5A55200946318007394390094BD6B00B5DE9400B5E79C00A5CE
      9400A5B573009C9C52009C844200947B39009473290094631800944210006B29
      0800734A1000CE631000B5734A00000000000000000000000000000000000000
      00000000000000000000000000006B6BAD00FFFFFF00FFFFFF00FFFFFF005252
      5200B5E79C00B5E79C00A5CE9400A5B573009C9C52009C844200947B39009473
      29009463180000000000EFFFFF00EFFFFF00C6DEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6CECE008CB58C00C6DEBD00B5DE94007BA54A00B5DE
      9400B5A552009463180073943900A5C67B00B5E79C00B5E79C00A5CE9400A5B5
      73009C9C52009C844200947B39009473290094631800944210006B290800734A
      1000CE631000B5734A0000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6B5006B6BAD000010EF0029219C000008
      E700394AD600A5D69C00A5CE8C009CA56B009C844200A57B3100A5632100A563
      21004A427B000008E70018186B00DEAD8C000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6DE
      BD00A5CE8C00B5E79C00B5A552008C8C4A00A5C67B00B5EFB500B5EFB500A5D6
      9C00A5C67B009CA56B009C944A00947B39009473290084632900734A10005231
      0800B56B2100B54A0000CEA58C00000000000000000000000000000000000000
      000000000000000000000000000052525200FFFFFF00FFFFFF0052525200A5C6
      7B00B5E79C00B5EFB500A5D69C00A5C67B009CA56B009C944A00947B39009473
      290084632900734A100000000000ADFFFF00C6DEBD0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000073AD
      7300E7A56B00CE6310004A734A008CB58C00B5FFC600FFF7DE0094A55A00A5CE
      8C00B5E79C00B5A552008C8C4A0094BD6B00C6EFB500B5EFB500A5D69C00A5C6
      7B009CA56B009C944A00947B39009473290084632900734A100052310800B56B
      2100B54A0000CEA58C0000000000000000000000000000000000000000000000
      0000000000000000000000000000949CE7000818D6003139EF00A57B31004A42
      7B000000FF00394AD600B5DE94009CA56B009C944A00947B3900947329009463
      18006B29080029219C000000FF00949CE7000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00A5CE9400B5EFB500C6EFB500A5B5730094BD6B00C6EFB500B5FFC6009CE7
      B500A5CE8C008CA56B008C945200847B4200846329006B5A2900523108006B29
      0800CE6310007B390000F7EFEF00000000000000000000000000000000000000
      000000000000000000000000000052525200FFFFFF0052525200A5B5730094BD
      6B00C6EFB500B5FFC6009CE7B500A5CE8C008CA56B008C945200847B42008463
      29006B5A2900523108006B29080000000000C6DEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008CB5
      8C00E7BD9C00CE63100063736B00A5D69C00CEEFDE00FFFFF700F7EFC6007BA5
      4A00B5EFB500C6EFB500A5B5730094BD6B00B5EFB500B5FFC6009CE7B500A5CE
      8C008CA56B008C945200847B4200846329006B5A2900523108006B290800CE63
      10007B390000F7EFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000636BF7000008E70094D6B500CEEF9C00A5B5
      7300394AD6000000FF005A94B500A5C67B0094A55A00847B420084632900734A
      100052310800A56321000008E700394AD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700A5D69C00B5FFC600C6EFB50094BD6B00B5EFB500B5FFC600B5EF
      B500A5CE94008CAD73008C945200847B42006B7331006B5A2900523108007B39
      10007B39000094947B0000000000000000000000000000000000000000000000
      00000000000000000000000000009494940052525200B5FFC600C6EFB50094BD
      6B00B5EFB500B5FFC600B5EFB500A5CE94008CAD73008C945200847B42006B73
      31006B5A2900523108007B3910007B3900000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6CE
      CE00C6EFB500E7A56B008C94520094D6B500D6FFFF00FFFFF700FFFFF700B5DE
      940073AD7300B5FFC600B5FFC600A5C67B00B5EFB500B5FFC600B5EFB500A5CE
      94008CAD73008C945200847B42006B7331006B5A2900523108007B3910007B39
      000094947B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003139EF003139EF00ADBDA500B5EFB500B5E7
      9C00A5CE8C00394AD6000010EF009494940094A55A00847B42006B7331005231
      08006B2908007B391000394AD6000010F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EFEF00A5D69C009CE7B500A5D69C00A5D69C00B5FFC600B5EF
      B50084CE94008CAD7300739452006B7331006B5A290052421800523108005231
      0800736B5A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052525200F7EFEF00A5D69C009CE7B500A5D6
      9C00A5D69C00B5FFC600B5EFB50084CE940073AD7300739452006B7331006B5A
      29005242180052310800523108006B5A2900EFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF009CE7B500FFFFEF00A5AD940084CE9400D6FFFF00FFFFFF00FFFFFF00FFFF
      EF00CEA58C0073AD7300B5EFB500A5D69C00A5D69C00B5FFC600B5EFB50084CE
      94008CAD7300739452006B7331006B5A2900524218005231080052310800736B
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000010F700394AD600E7DED600ADBDA50094D6
      B500A5CE94009CE7B5000010F7000829F70063736B006B7331004A5231004A18
      00004A18000094947B00636BF7000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00C6DEBD00A5D69C0084CE94009CE7B5009CE7
      B50084CE940073AD7300739452006B7331004A5231003129000031290000736B
      5A00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052525200FFFFFF00F7F7F700A5CE940084BD
      730084CE94009CE7B5009CE7B50084CE940073AD7300739452006B7331004A52
      3100312900002110000052525200EFFFFF00ADFFFF0000000000000000000000
      000000000000000000006B290800000000000000000000000000000000000000
      0000C6D6D600CEEFDE00FFF7DE0084CE9400D6FFFF00EFFFFF00EFFFFF00F7F7
      F700F7EFC600E7A56B007394520073AD730084CE9400B5EFB5009CE7B50084CE
      940073AD7300739452006B7331004A5231004A18000031290000736B5A00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00394AD60000000000EFE7DE00D6CE
      C6008CB58C0084CE940094D6B5000000FF000818D6004A734A00312900004A52
      3100BDB5AD0000000000949CE7000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE7DE0084BD730084CE940094D6
      B50084CE940073AD73004A734A004A734A00312900004A523100DEDED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525200FFFFFF00FFFFFF00C6DE
      BD0052AD520084CE940094D6B50084CE940073AD73004A734A004A734A003129
      000039312900C6CECE00EFFFFF00ADFFFF000000000000000000000000000000
      0000000000006B2908006B2908006B2908000000000000000000000000000000
      000000000000B5D6E700ADFFFF0094D6B500ADFFFF00D6FFFF00D6FFFF00EFEF
      E700C6DEBD00CEA58C008C4A3100847B420052AD520084CE940094D6B50084CE
      940073AD73004A734A004A734A00312900004A523100C6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000010F7003139EF0000000000000000000000
      0000DEDED6008CB58C0052AD5200215A9C000000FF000818D60094947B00EFE7
      DE000000000000000000636BF7000010EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0084BD73005A94
      63004A734A004A734A004A734A00105A1800ADBDA50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052525200FFFFFF00FFFF
      FF00F7F7F700739452005A9463004A734A004A734A004A734A00105A18007B84
      7B00ADFFFF00ADFFFF00FFFFFF00000000000000000000000000000000000000
      00006B2908006B2908006B2908006B2908006B29080000000000000000000000
      00000000000000000000DEDED60084CE940094D6E700D6FFFF00D6FFFF00D6FF
      FF00C6C6B50094947B004A523100736B5A00C6CECE008CB58C0052AD52004A73
      4A004A734A004A734A00105A1800A5AD94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000394AD6000829F700CEC6DE00000000000000
      0000F7EFE70094949400211000004A18000018186B000010F700636BF7000000
      000000000000000000003139EF000010F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5AD94002110
      00004A1800004A1800004A1800008C4A31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052525200FFFF
      FF00FFFFFF007B847B00211000004A1800004A1800004A18000073313100FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F70094D6B50094D6E700ADFFFF00B5C6
      D6005A94B50052525200B5BDBD00000000000000000094949400211000004A18
      00004A1800004A1800008C4A3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000949CE7000000FF00949CE70000000000F7EF
      E700A5AD9400312900006B5A2900946318009442100029219C000000FF00949C
      E700FFEFD600CEC6DE000010F700394AD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6B500102100005242
      1800734A1000734A10007B3910008C290000B5734A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      5200A5AD94001021000052421800734A1000734A1000944210008C2900009442
      1000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00525252004A5231006B5A
      2900736B5A00FFFFFF000000000000000000A5AD94001021000052421800734A
      1000734A1000944210008C2900008C4A31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEC6DE000010F7000818D600CEC6DE00EFD6
      C6006B7331006B7331008C945200947B3900B56B2100CE63100029219C000000
      FF00949CE700394AD6000010F700949CE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFE700312900005A6B21006B73
      31008463290094631800B56B2100B54A00008C290000EFD6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6CE
      CE00312900005A6B21006B7331008463290094631800B56B2100B54A00008C29
      00006B5A29000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000736B5A006B5A2900A5632100CE63
      10008C290000EFD6C60000000000EFEFE700312900005A6B21006B7331008463
      290094631800B56B2100B54A00008C290000CEA58C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000949CE7000010EF00394AD600ADB5
      BD007394390094BD6B00A5CE9400A5B573009C843900B56B0800733131000818
      D6000010EF000010F700636BF700E7DED6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5AD94005A6B21007BA54A0094A5
      5A009C944A00A57B3100B56B2100CE631000B54A00007B390000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      7B005A6B21007BA54A0094A55A009C944A00A57B3100B56B2100CE631000B54A
      00007B390000C6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6B5006B733100E7A56B00E7A56B00E7A5
      6B00CE631000B54A000000000000A5AD94005A6B21007BA54A0094A55A009C94
      4A00A57B3100B56B2100CE631000B54A00007B390000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7DED600636BF7000010F7000818
      D6006B6BAD00A5C67B00B5EFB500B5DE94009C9C52006B5A29005A2139000818
      D6000010F700394AD600CEC6DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CAD730073943900A5C67B00B5DE
      9400A5B573009C9C5200A57B3100B56B2100944210007B100000F7EFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      7B0073943900A5C67B00B5DE9400A5B573009C9C5200A57B3100B56B21009442
      10007B100000C6CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000094949400A5CE9400F7EFC600F7EFC600E7A5
      6B00E7A56B008C290000EFEFE700A5AD940073943900A5C67B00B5DE9400A5B5
      73009C9C5200A57B3100B56B2100944210007B100000EFEFE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7DED600949CE7000010
      F7000000FF000818D600394AD600394AD600394AD6000818D6000008E7000010
      F700636BF700DEDED60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5CE8C007BA54A00B5DE9400B5EF
      B500B5DE94009CAD7300847B4200846329007B3910004A180000EFEFE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008CAD
      73007BA54A00B5DE9400B5EFB500B5DE94009CAD7300847B4200846329007B39
      10004A180000C6CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CB58C00B5EFB500EFFFFF00FFFFF700E7BD
      9C00E7A56B007B390000F7F7F700A5CE94007BA54A00B5DE9400B5EFB500B5DE
      94009CAD7300847B4200846329007B3910004A180000EFEFE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEC6
      DE00949CE700394AD6000008E7000000FF000010F7000818D600394AD600CEC6
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE7DE0073943900A5CE8C00B5EF
      B50094D6B5008CB58C00739452006B5A2900523108004A180000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6CE
      CE0073943900A5CE8C00B5EFB50094D6B5008CB58C00739452006B5A29005231
      08004A1800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDED60094D6B500D6FFFF00D6FFFF00ADAD
      B500736B5A006B5A290000000000EFE7DE0073943900A5CE8C00B5EFB50094D6
      B5008CB58C00739452006B5A2900523108004A18000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC6D600ADA5A5005A6373005252520094949400EFC6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CA56B0073AD730094D6
      B50094D6B50073AD73004A734A004A52310021100000B5BDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008CA56B0073AD730094D6B50094D6B50073AD73004A734A004A5231002110
      0000A5AD94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094D6B50094D6B500949CE7007B84
      7B004A734A00F7F7F70000000000000000008CA56B0073AD730094D6B50094D6
      B50073AD73004A734A004A52310021100000ADBDA50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0052AD520052AD
      520073AD73005A9463004A734A001021000063736B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6D6D60052AD520052AD520073AD73005A9463004A734A00102100005252
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE7E700B5C6D600C6D6
      D600FFFFFF00000000000000000000000000FFFFFF007394520052AD520073AD
      73005A9463004A734A001021000063736B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6CE
      CE005A9463004A734A004A734A00C6CECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADBDA5005A9463004A734A004A734A00ADBDA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6CECE005A94
      63004A734A0063736B00B5BDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFE7DE00C6C6B5009CAD73008C8C4A00847B4200947B3900AD84
      4A00E7A56B00E7BD9C00EFD6C600FFFFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700C6DEBD009CAD73008C8C4A00847B4200846329009473
      2900AD844A00E7A56B00E7BD9C00EFD6C600FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFE700C6C6B5009CAD73008C8C4A00847B
      4200947B3900AD844A00E7A56B00E7BD9C00EFD6C600FFFFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6CECE00ADBDA5009CA56B008C8C
      4A00847B4200947B3900AD844A00BD8C6B00CEA58C00C6C6B500C6CECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CAD7300739439007BA54A007BA54A008C8C4A00847B4200947329009473
      2900A5632100B56B2100B54A0000B54A0000B5734A00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5CE8C005A6B2100739439008C9452008C8C4A008C8C4A00947B39009473
      290094631800B56B2100B54A0000B54A00008C290000B5734A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CAD730073943900739439007BA54A008C8C4A00847B
      42009473290094732900A5632100B56B2100B54A0000B54A0000B5734A00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CA56B004A734A006B6BAD00394AD6000818
      D6000010EF000010EF000818D60029219C004A427B0094421000B54A0000B573
      4A00C6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADBDA5006B733100B56B2100E7BD9C008CA5
      6B005A6B21007BA54A008CA56B008CA56B0094A55A008C8C4A009C843900A57B
      3100B56B2100B56B2100B56B2100B56B21008C290000BD8C6B00000000000000
      0000000000000000000000000000A5AD94005A6B2100B56B2100CEA58C009CAD
      73005A6B2100739439008CA56B008CA56B008CA56B008C9452009C844200947B
      3900B56B2100B56B2100B56B2100B56B2100CE6310007B100000B59494000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADBDA5006B733100A563
      2100E7BD9C008CA56B005A6B21007BA54A008CA56B008CA56B0094A55A008C8C
      4A009C843900A57B3100B56B2100B56B2100B56B2100B56B21007B390000BD8C
      6B00000000000000000000000000000000000000000000000000A5AD94006B73
      3100A5632100CEA58C007B847B00215A9C000818D6000008E7000010EF000010
      EF000010EF000010EF000010EF000010F7000010EF000818D60029219C007B39
      0000A57B73000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B73310073943900946318008C2900005A6B
      21007394390094A55A0094BD6B0094BD6B009CA56B009C944A009C844200A57B
      3100B56B2100B56B2100B56B2100B56B21008C290000BD8C6B00000000000000
      00000000000000000000000000005A6B210073943900946318008C2900005242
      18007394390094A55A0094BD6B0094BD6B008CA56B009C9C52009C944A009C84
      3900A57B3100B56B2100B56B2100B56B2100B56B21007B100000C6C6B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B733100739439009463
      18008C2900005A6B21007394390094A55A0094BD6B0094BD6B009CA56B009C94
      4A009C844200A57B3100B56B2100B56B2100B56B2100B56B21008C290000BD8C
      6B000000000000000000000000000000000000000000000000006B7331007394
      390094631800733131000818D6000008E7000008E700394AD6005A94B5007B84
      7B008C9452009C844200736B5A004A427B0029219C000010EF000000FF002921
      9C007B847B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CAD73007BA54A00947B3900B54A00006B5A
      29007394390094BD6B00A5C67B00A5C67B00A5B573009C9C52009C944A009C84
      3900A57B3100B56B2100A5632100B56B21007B39000084632900CEA58C00E7BD
      9C000000000000000000000000008CA56B007BA54A009C844200B54A00007B39
      10007394390094A55A00A5C67B00A5C67B00A5C67B009CA56B009C9C52009C84
      3900A57B3100A57B3100A5632100B56B2100B56B21007B3900006B733100E7A5
      6B00E7BD9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADBDA5007BA54A00947B
      3900B54A00006B5A29007394390094BD6B00A5C67B00A5C67B00A5B573009C9C
      52009C944A009C843900A57B3100B56B2100A5632100B56B21007B3900008463
      2900CEA58C00E7BD9C0000000000000000000000000000000000A5AD94007BA5
      4A00736B5A000818D6000008E7000010EF006B6BAD00A5C67B00A5C67B00A5B5
      73009C9C52009C944A009C843900A57B3100B56B21007B39520029219C000010
      EF000818D60094949400CEA58C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7F700ADBDA50094A55A009CA56B0094631800734A
      10007BA54A0094BD6B00B5DE9400A5CE9400A5C67B009CA56B009C9C52009C84
      3900A57B3100B56B2100A5632100946318007B39000052310800B56B0800B54A
      0000000000000000000000000000A5AD940094BD6B0094BD6B00946318007B39
      00007394390094BD6B00A5CE8C00B5DE9400A5CE8C00A5B573009C9C52009C94
      4A00A57B3100A57B3100A5632100A5632100944210006B29080052310800B56B
      21008C2900000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDED6007BA54A009CA5
      6B0094631800734A10007BA54A0094BD6B00B5DE9400A5D69C00A5C67B009CA5
      6B009C9C52009C843900A57B3100B56B2100A5632100946318007B3900005231
      0800B56B0800B54A000000000000000000000000000000000000C6C6B5007394
      5200394AD6000008E7000818D6000010EF000010EF008CB58C00A5D69C00A5C6
      7B009CA56B009C9C52009C843900A57B3100B56B2100A56321008C4A31002921
      9C000010EF0029219C0094421000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6CECE008CB58C00C6DEBD00B5DE94007BA54A00B5DE9400B5A552009463
      180073943900A5C67B00B5E79C00B5E79C00A5CE9400A5B573009C9C52009C84
      4200947B39009473290094631800944210006B290800734A1000CE631000B573
      4A00000000000000000000000000F7EFEF0094A55A00B5E79C00A5B57300B54A
      00006B73310094BD6B00B5DE9400B5E79C00A5D69C00A5C67B009CA56B009C94
      4A009C8442009473290094732900946318007B3910004A1800007B391000CE63
      1000946318000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5C67B00B5DE
      9400B5A55200946318007394390094BD6B00B5DE9400B5E79C00A5CE9400A5B5
      73009C9C52009C844200947B39009473290094631800944210006B290800734A
      1000CE631000B5734A0000000000000000000000000000000000C6D6D6006B6B
      AD000008E700394AD6008C4A3100215A9C000010EF000010F700A5D69C00A5CE
      9400A5B573009C9C52009C844200947B39009473290094631800944210005A21
      390029219C000010EF0029219C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073AD7300E7A56B00CE63
      10004A734A008CB58C00B5FFC600FFF7DE0094A55A00A5CE8C00B5E79C00B5A5
      52008C8C4A0094BD6B00C6EFB500B5EFB500A5D69C00A5C67B009CA56B009C94
      4A00947B39009473290084632900734A100052310800B56B2100B54A0000CEA5
      8C000000000000000000000000000000000094BD6B00A5CE8C00C6EFB500A5B5
      7300947B390094BD6B00B5E79C00B5EFB5009CE7B500A5CE8C009CAD73009C9C
      52009C844200947B390084632900846329007B3910004A180000CE631000B54A
      0000B59494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6DEBD00A5CE
      8C00B5E79C00B5A552008C8C4A00A5C67B00B5EFB500B5EFB500A5D69C00A5C6
      7B009CA56B009C944A00947B39009473290084632900734A100052310800B56B
      2100B54A0000CEA58C0000000000000000000000000000000000949CE7000010
      EF000010F7005A94B500B5A552008C8C4A000818D6000008E7003139EF00A5D6
      9C00A5B573009CA56B009C944A00947B39009473290084632900734A10005231
      08007B3952000010F7000818D600949CE7000000000000000000000000000000
      000000000000000000000000000000000000000000008CB58C00E7BD9C00CE63
      100063736B00A5D69C00CEEFDE00FFFFF700F7EFC6007BA54A00B5EFB500C6EF
      B500A5B5730094BD6B00B5EFB500B5FFC6009CE7B500A5CE8C008CA56B008C94
      5200847B4200846329006B5A2900523108006B290800CE6310007B390000F7EF
      EF0000000000000000000000000000000000FFFFFF007BA54A00B5EFB500B5FF
      C600E7A56B0094BD6B00B5E79C00B5FFC600B5EFB500B5DE9400A5B573009C9C
      52008C8C4A00847B4200946318006B5A2900523108007B390000CE6310006B29
      0800F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00A5CE
      9400B5EFB500C6EFB500A5B5730094BD6B00C6EFB500B5FFC6009CE7B500A5CE
      8C008CA56B008C945200847B4200846329006B5A2900523108006B290800CE63
      10007B390000F7EFEF0000000000000000000000000000000000949CE7000010
      EF00394AD600B5E79C00C6EFB500A5B5730084BD73000829F7000010EF00394A
      D600A5CE94009CA56B008C945200847B4200846329006B5A2900523108006B29
      0800CE63100029219C000010EF00949CE7000000000000000000000000000000
      00000000000000000000000000000000000000000000C6CECE00C6EFB500E7A5
      6B008C94520094D6B500D6FFFF00FFFFF700FFFFF700B5DE940073AD7300B5FF
      C600B5FFC600A5C67B00B5EFB500B5FFC600B5EFB500A5CE94008CAD73008C94
      5200847B42006B7331006B5A2900523108007B3910007B39000094947B000000
      00000000000000000000000000000000000000000000F7F7F7007BA54A00B5FF
      C600B5FFC600A5CE8C00A5CE8C00B5FFC600B5FFC60094D6B5008CB58C008CA5
      6B008C8C4A006B7331006B7331006B5A29004A180000B56B21006B290800A5AD
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700A5D69C00B5FFC600C6EFB50094BD6B00B5EFB500B5FFC600B5EFB500A5CE
      94008CAD73008C945200847B42006B7331006B5A2900523108007B3910007B39
      000094947B000000000000000000000000000000000000000000394AD6000008
      E700949CE7008CB58C00B5FFC600C6EFB50094BD6B0094D6B5000010EF000010
      EF005A94B5008CAD73008C945200847B42006B7331006B5A2900523108007B39
      10007B3900006B6BAD000010EF00394AD6000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF009CE7B500FFFF
      EF00A5AD940084CE9400D6FFFF00FFFFFF00FFFFFF00FFFFEF00CEA58C0073AD
      7300B5EFB500A5D69C00A5D69C00B5FFC600B5EFB50084CE94008CAD73007394
      52006B7331006B5A2900524218005231080052310800736B5A00000000000000
      0000000000000000000000000000000000000000000000000000F7EFEF0052AD
      5200B5FFC600B5EFB50094BD6B00B5EFB500B5FFC60094D6B5008CB58C008CA5
      6B006B7331006B7331006B5A290052310800523108005231080063736B000000
      00000000000000000000000000006B2908000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFEF00A5D69C009CE7B500A5D69C00A5D69C00B5FFC600B5EFB50084CE
      94008CAD7300739452006B7331006B5A2900524218005231080052310800736B
      5A000000000000000000000000000000000000000000000000000829F7000010
      F700949CE700C6CECE008CB58C009CE7B500A5D69C00A5D69C0094D6B5000010
      EF000010EF005A94B500739452006B7331006B5A290052421800523108005231
      08006B5A2900949CE7000010F7000829F7000000000000000000000000000000
      00006B2908000000000000000000000000000000000000000000C6D6D600CEEF
      DE00FFF7DE0084CE9400D6FFFF00EFFFFF00EFFFFF00F7F7F700F7EFC600E7A5
      6B007394520073AD730084CE9400B5EFB5009CE7B50084CE940073AD73007394
      52006B7331004A5231004A18000031290000736B5A00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008CAD730073AD730094BD6B00B5EFB500B5EFB50094D6B50073AD73008CA5
      6B0063736B006B73310052421800211000002110000094949400000000000000
      000000000000000000006B2908006B2908006B29080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C6DEBD00A5D69C0084CE94009CE7B5009CE7B50084CE
      940073AD7300739452006B7331004A5231003129000031290000736B5A00FFFF
      FF000000000000000000000000000000000000000000000000000010EF000010
      EF00B5C6D60000000000C6D6D600ADBDA5008CB58C0084CE9400B5EFB500636B
      F7000010EF000010EF0063736B006B7331004A5231004A18000010210000736B
      5A0000000000B5C6D6000010EF000010EF000000000000000000000000006B29
      08006B2908006B2908000000000000000000000000000000000000000000B5D6
      E700ADFFFF0094D6B500ADFFFF00D6FFFF00D6FFFF00EFEFE700C6DEBD00CEA5
      8C008C4A3100847B420052AD520084CE940094D6B50084CE940073AD73004A73
      4A004A734A00312900004A523100C6D6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFE7DE007394390073AD730094D6B50094D6B50084CE94005A94
      63004A734A00524218002110000063736B00F7EFEF0000000000000000000000
      0000000000006B2908006B2908006B2908006B2908006B290800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFE7DE0084BD730084CE940094D6B50084CE
      940073AD73004A734A004A734A00312900004A523100DEDED600000000000000
      00000000000000000000000000000000000000000000000000000010EF000010
      EF00C6D6D600000000000000000000000000C6CECE0073AD730084CE940094D6
      B500394AD6000008E7000818D6004A734A00312900004A523100B5BDBD000000
      000000000000C6D6D6000010EF000010EF0000000000000000006B2908006B29
      08006B2908006B2908006B290800000000000000000000000000000000000000
      0000DEDED60084CE940094D6E700D6FFFF00D6FFFF00D6FFFF00C6C6B5009494
      7B004A523100736B5A00C6CECE008CB58C0052AD52004A734A004A734A004A73
      4A00105A1800A5AD940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6B50052AD52005A9463004A734A004A52
      31005242180039312900C6C6B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084BD73005A9463004A73
      4A004A734A004A734A00105A1800ADBDA5000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000829F7000008
      E700949CE70000000000000000000000000000000000C6D6D60073AD73005A94
      63004A734A000818D6000010EF000818D6009494940000000000000000000000
      000000000000949CE7000010EF000010F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F70094D6B50094D6E700ADFFFF00B5C6D6005A94B5005252
      5200B5BDBD00000000000000000094949400211000004A1800004A1800004A18
      00008C4A31000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F70021100000211000004A1800007B39
      10009494940094949400B5949400C6DEBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5AD9400211000004A18
      00004A1800004A1800008C4A3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000394AD6000008
      E700949CE7000000000000000000000000000000000000000000949494002110
      00004A1800004A1800000010EF000010EF00636BF70000000000000000000000
      000000000000949CE7000010F700394AD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00525252004A5231006B5A2900736B5A00FFFF
      FF000000000000000000A5AD94001021000052421800734A1000734A10009442
      10008C2900008C4A310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFEF002110000031290000734A1000734A10008463
      2900C6DEBD00EFEFE700B5BDBD00BD8C6B00C6DEBD00C6C6B500CEA58C00C6C6
      B500C6CECE00EFE7DE00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6B5001021000052421800734A
      1000734A10007B3910008C290000B5734A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949CE7000010
      F700394AD60000000000000000000000000000000000A5AD9400102100005242
      1800734A1000734A1000733131000010EF000010EF00949CE700000000000000
      000000000000394AD6000010EF00949CE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000736B5A006B5A2900A5632100CE6310008C290000EFD6
      C60000000000EFEFE700312900005A6B21006B7331008463290094631800B56B
      2100B54A00008C290000CEA58C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031290000524218006B7331006B733100846329009442
      1000C6C6B500EFEFE700EFEFE700B5BDBD00BD8C6B0094949400949494009494
      9400BD8C6B00BD8C6B00BD8C6B00C6DEBD00FFEFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFE700312900005A6B21006B7331008463
      290094631800B56B2100B54A00008C290000EFD6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000949CE7000818
      D6000010EF00949CE7000000000000000000C6CECE00312900005A6B21006B73
      31008463290094631800B56B21007B3952000010EF000010EF00949CE7000000
      0000949CE7000008E7000818D600949CE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6B5006B733100E7A56B00E7A56B00E7A56B00CE631000B54A
      000000000000A5AD94005A6B21007BA54A0094A55A009C944A00A57B3100B56B
      2100CE631000B54A00007B390000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFE700524218007394390094A55A009C9C52009C8439009463
      1800BD8C6B00EFD6C600FFFFEF00FFFFF700EFEFE700FFFFEF00FFFFF700F7F7
      F700EFEFE700EFE7DE00B5BDBD0094949400BD8C6B00EFE7DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5AD94005A6B21007BA54A0094A55A009C94
      4A00A57B3100B56B2100CE631000B54A00007B390000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      F7000010EF003139EF00949CE7000000000094947B005A6B21007BA54A0094A5
      5A009C944A00A57B3100B56B2100CE63100029219C000010EF000010F700949C
      E7003139EF000008E700636BF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400A5CE9400F7EFC600F7EFC600E7A56B00E7A56B008C29
      0000EFEFE700A5AD940073943900A5C67B00B5DE9400A5B573009C9C5200A57B
      3100B56B2100944210007B100000EFEFE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6DEBD006B733100A5B57300A5CE8C00A5CE8C009C9C52008463
      290094949400EFEFE700FFFFEF004A734A004A180000C6C6B5004A734A004A18
      0000FFFFFF00FFFFF700FFFFFF00FFFFEF00B5BDBD00BD8C6B00EFEFE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CAD730073943900A5C67B00B5DE9400A5B5
      73009C9C5200A57B3100B56B2100944210007B100000F7EFEF00000000000000
      000000000000000000000000000000000000000000000000000000000000B5C6
      D6003139EF000010F700394AD600949CE7008CA56B0073943900A5C67B00A5CE
      8C00A5B573009C9C5200A57B3100B56B21009442100029219C000010EF000829
      F7000008E7003139EF00B5C6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008CB58C00B5EFB500EFFFFF00FFFFF700E7BD9C00E7A56B007B39
      0000F7F7F700A5CE94007BA54A00B5DE9400B5EFB500B5DE94009CAD7300847B
      4200846329007B3910004A180000EFEFE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFE7006B73310094BD6B00B5EFB5009CE7B5008C945200BD8C
      6B00EFEFE700FFFFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700B5BDBD00CEA58C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5CE8C007BA54A00B5DE9400B5EFB500B5DE
      94009CAD7300847B4200846329007B3910004A180000EFEFE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5C6D6003139EF000008E7003139EF005A94B5007BA54A00B5DE9400B5EF
      B500B5DE94009CAD73009C84420084632900734A100018186B000010EF000008
      E7003139EF00949CE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDED60094D6B500D6FFFF00D6FFFF00ADADB500736B5A006B5A
      290000000000EFE7DE0073943900A5CE8C00B5EFB50094D6B5008CB58C007394
      52006B5A2900523108004A180000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF006B73310094BD6B00B5EFB500B5EFB50073945200A5AD
      9400FFFFF700FFFFEF004A180000312900004A1800004A734A00C6C6B5004A18
      00004A734A004A18000031290000FFFFFF00FFFFFF00EFE7DE00BD8C6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFE7DE0073943900A5CE8C00B5EFB50094D6
      B5008CB58C00739452006B5A2900523108004A18000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000949CE7003139EF000010EF000010F700394AD6005A94B50094D6
      B50094D6B5008CB58C0063736B004A427B0029219C000010EF000010EF003139
      EF00949CE7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094D6B50094D6B500949CE7007B847B004A734A00F7F7
      F70000000000000000008CA56B0073AD730094D6B50094D6B50073AD73004A73
      4A004A52310021100000ADBDA500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6DEBD007394390094D6B5009CE7B50073945200B594
      9400FFF7EF00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDED600B59494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008CA56B0073AD730094D6B50094D6
      B50073AD73004A734A004A52310021100000B5BDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5C6D600636BF7000818D6000010EF000008E7000010
      EF000010EF000010EF000010EF000010EF000010EF000010F700636BF700B5C6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEE7E700B5C6D600C6D6D600FFFFFF000000
      00000000000000000000FFFFFF007394520052AD520073AD73005A9463004A73
      4A001021000063736B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CAD73004A734A0073AD73005A9463007394
      5200EFEFE700FFFFFF00EFEFE700A5AD94004A1800004A734A00312900004A18
      0000C6C6B5004A18000031290000FFFFFF00FFFFFF00CEA58C00EFE7DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0052AD520052AD520073AD
      73005A9463004A734A001021000063736B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000949CE700949CE700394AD6000818
      D6000010EF000010EF000008E70029219C00215A9C00949CE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6CECE005A9463004A734A006373
      6B00B5BDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFE70073AD73004A734A004A52
      310084632900C6DEBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700B5949400C6C6B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6CECE005A94
      63004A734A004A734A00C6CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADBD
      A5005A9463004A734A004A734A00ADBDA5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE7DE00BD8C6B00B5949400C6DEBD00EFEFE700FFFFF700FFFFFF00FFFF
      FF00EFEFE700C6DEBD00CEA58C00BD8C6B00C6DEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFE700C6C6B500B5949400BD8C6B00BD8C6B00BD8C
      6B00B5949400C6C6B500EFE7DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000780000009C0000000100010000000000C00900000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFC000000000000000000000000
      FFFFFFFC000000000000000000000000FFC01FFC000000000000000000000000
      FF0007FC000000000000000000000000FE0003FC000000000000000000000000
      FC0001FC000000000000000000000000F80000FC000000000000000000000000
      F000007C000000000000000000000000F000007C000000000000000000000000
      E000007C000000000000000000000000E000003C000000000000000000000000
      E000003C000000000000000000000000E000003C000000000000000000000000
      E000003C000000000000000000000000E000003C000000000000000000000000
      E000003C000000000000000000000000E000003C000000000000000000000000
      E000003C000000000000000000000000F000007C000000000000000000000000
      F000007C000000000000000000000000F80000FC000000000000000000000000
      FC0001FC000000000000000000000000FE0003FC000000000000000000000000
      FF800FFC000000000000000000000000FFE03FFC000000000000000000000000
      FFFFFFFC000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFC003FFC3FFFFFFFFFFFFFFFFFFFF00FF8000FFC1FFFFFFFFFFFFFFF803FF00
      FE00003FC0FFFFFFFFFFFFFFE000FF00F800001FE07FFFFFFFFFFFFFC0007F00
      F000001FE07FFFFFE3FC7FFF80003F00F000003FF03FFFFFC1F83FFF00001F00
      F000003FF81FFFFFC0F03FFE00000F00F000003FFC080FFFC0603FFE00000F00
      F000003FFE0007FFE0007FFE00000700F000003FFF0003FFF000FFFC00000700
      F000003FFF8001FFF801FFFC00000700F000003FFF8000FFFC03FFFC00000700
      F800007FFF80007FF803FFFC00000700FF0000FFFF00007FF001FFFC00000700
      FF0001FFFF00007FE000FFFC00000700FF000FFFFF00007FC0207FFC00000700
      FF001FFFFF00007F80707FFC00000700FF001FFFFF00007F80F8FFFE00000F00
      FF001FFFFF00007F81FFFFFE00000F00FF001FFFFF00007FC3FFFFFF00001F00
      FE003FFFFF8000FFFFFFFFFF80003F00FE003FFFFFC001FFFFFFFFFFC0007F00
      FC003FFFFFE003FFFFFFFFFFF001FF00F8007FFFFFF007FFFFFFFFFFFC07FF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFF81FFFF00001FFE00003FDFFFFFF00FFC007FFF00001FFE00003F8FFFFFF00
      FF8001FFF00001FFE00003F87FFFFF00FE0000FFF00001FFE00003F83FFFFF00
      FE00007FF00001FFE00003F8003FFF00FC00003FF00001FFE00003F8000F8F00
      F800003FF00001FFE00003F800060F00F800001FF00001FFE00003F800000F00
      F800001FF00001FFE00003F000000F00F000001FF00001FFE00003F000000F00
      F000001FF00001FFE00003F000000F00F000001FF00001FFE00003F000000700
      F000001FF00001FFE00003F800000700F000001FF00001FFE00003F800000300
      F000001FF00001FFE00003FE00000300F800001FF00001FFE00003FF80000300
      F800001FF00001FFE00003FF80000300FC00003FF00001FFE00003FF80000700
      FC00007FF00001FFE00003FFC0000F00FE00007FF00001FFE00003FFE0001F00
      FF0000FFF00003FFE00007FFF8007F00FF8003FFF00007FFE0000FFFFFFFFF00
      FFE007FFF0000FFFE0001FFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF003FFF06007FFFFFFFFFFFFFFFFF00
      FE000FFE00001FFFFFFFFFFFFFFFFF00FC0007FE00000FFFFFFFFFFFFFFFFF00
      F80007FE00000FFFFFFFFFFFC07FFF00F80001FE000003FFC0E00FFF801FFF00
      F00001FE000003FFE3F83FFE000FFF00F00001FE000003FFF3F03FFC0007FF00
      E00001FE000003FFF9F07FFC0003FF00E00003FC000007FFF8007FF80003FF00
      E00003FC000007FFF800FFF00001FF00E00007DC00000FBFFCE0FFF00001FF00
      E0000F8C00001F1FFCC1FFF00001FB00E0001F0400007E0FFE41FFF00001F100
      E0007FFC0301FFFFFE03FFF00001E000E000FFFC0301FFFFFF03FFF00001FF00
      F0007FFC0300FFFFFF03FFF00001FF00F0003FFC0600FFFFFF87FFF80003FF00
      F0003FFE0C007FFFFF87FFFC0007FF00F0003FFE3C007FFFFF8FFFFC0007FF00
      F0003FFE7C007FFFFFCFFFFE000FFF00F0003FFFFE007FFFFFDFFFFF803FFF00
      F8803FFFFE00FFFFFFFFFFFFC07FFF00FFC07FFFFF00FFFFFFFFFFFFFFFFFF00
      FFE0FFFFFF83FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF001FFE00003FFFFE003F00
      FFFFFFFFFE0007FE00003FFFFC000F00FFFFFFFFC00007FE00003FFF80000F00
      FFE007FFC00007FE00003FFF80000F00FE0003FFC00001FE00003FFF80000300
      FE0001FFC00001FE00003FFE00000300FE0000FFC00001FE00003FFC00000300
      FE0000FFE00001FE00003FE000000300FE0000FFE00001FE00003FE000000300
      FE0000FFF00003FE00003FE000000700FE0000FFF80007FE00003FE000000F00
      FE0000FFFC0007FE00003DF000000F00FE4004FFFF001FFF000078F800003F00
      FE700CFFFF807FFF8000F07C0000FF00FE301CFFFFC0FFFFC001FFFE0181FF00
      FE2000FFFF807FFFE003FFFF0300FF00FE0000FFFF003FFFE007FFFF02007F00
      FF0000FFFF001FFFE003FFFE02003F00FF0001FFFF001FFFE003FFFE00003F00
      FF8003FFFF001FFFE003FFFE00003F00FFE00FFFFF003FFFE007FFFE02007F00
      FFF81FFFFF803FFFF007FFFF03007F00FFFFFFFFFF807FFFF00FFFFF8700FF00
      FFFFFFFFFFE0FFFFFC1FFFFFFFC1FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFF800FFF8007FFFFE003FFF001FFF00
      FFF0003FF0003FFFFC000FFE0007FF00FE00003E00001FFF80000FC00007FF00
      FE00003E00001FFF80000FC00007FF00FE00000E000007FF800003C00001FF00
      F800000E000007FF800003C00001FF00F000000E000007FF800003C00001FF00
      8000000F000007FFC00003C00000FF008000000F000007FFC00003C00000FF00
      8000001F80000FFFE00007C00000FF008000003FC0001EFFF0000FC00000F700
      C000003FF0003C7FF8000FC40008E300E00000FFF800783FFE003FC70018C100
      F00003FFFE01FFFFFF00FFC78078FF00F80607FFFE00FFFFFF81FFC7C078FF00
      FC0C03FFFC0001FFFF00FFC78038FF00FC0801FFFC00007FFE007FC30010FF00
      F80800FFF800003FFE003FE10001FF00F80000FFF800001FFE003FE00001FF00
      F80000FFF800001FFE003FF00003FF00F80801FFF800001FFE007FF80007FF00
      FC0C01FFFC00001FFF007FFC000FFF00FE1C03FFFE00001FFF00FFFF003FFF00
      FFFF07FFFF00003FFFC1FFFFE0FFFF00FFFFFFFFFFF0007FFFFFFFFFFFFFFF00
      FFFFFFFFFFFC01FFFFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object JvNavPaneStyleManager1: TJvNavPaneStyleManager
    Theme = nptXPSilver
    Left = 440
    Top = 40
  end
  object s_parametro: TSQLDataSet
    CommandText = 'select * from PARAMETRO '#13#10'where PARAMETRO = :pr'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pr'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 316
    Top = 88
    object s_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object s_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object s_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object s_parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object s_parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object s_parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object s_parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object s_parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object s_parametroD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object s_parametroD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object s_parametroD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object s_parametroD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object s_parametroD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object s_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
    object s_parametroVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object scds_serie_proc: TSQLClientDataSet
    CommandText = 
      'select CODSERIE, SERIE, ULTIMO_NUMERO, NOTAFISCAL from SERIES wh' +
      'ere SERIE like :pSERIE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pSERIE'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 792
    Top = 9
    object scds_serie_procCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object scds_serie_procSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object scds_serie_procULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object scds_serie_procNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
  end
end
