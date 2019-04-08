object frmDemo_ACBrCTe: TfrmDemo_ACBrCTe
  Left = 192
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'ATS-CTe'
  ClientHeight = 676
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl3: TPageControl
    Left = -2
    Top = 1
    Width = 1015
    Height = 676
    ActivePage = TabSheet17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet17: TTabSheet
      Caption = 'CT-e'
      object SpeedButton1: TSpeedButton
        Left = 172
        Top = 618
        Width = 150
        Height = 25
        Caption = 'Carregar Certificado'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = sbtnGetCertClick
      end
      object btnSalvarConfig: TBitBtn
        Left = 3
        Top = 618
        Width = 153
        Height = 25
        Caption = 'Salvar Configura'#231#245'es'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btnSalvarConfigClick
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 3
        Width = 1010
        Height = 606
        ActivePage = TabSheet2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Dados'
          ImageIndex = 1
          object PageControl4: TPageControl
            Left = -2
            Top = 2
            Width = 1006
            Height = 574
            ActivePage = TabSheet1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object TabSheet1: TTabSheet
              Caption = 'Dados CT-e'
              OnShow = TabSheet1Show
              object Label68: TLabel
                Left = 155
                Top = 45
                Width = 36
                Height = 16
                Caption = 'CFOP'
              end
              object Label69: TLabel
                Left = 258
                Top = 45
                Width = 137
                Height = 16
                Caption = 'Natureza da Opera'#231#227'o'
              end
              object Label70: TLabel
                Left = 35
                Top = 366
                Width = 238
                Height = 16
                Caption = 'Chave de Acesso do CT-e referenciado'
              end
              object Label124: TLabel
                Left = 35
                Top = 0
                Width = 46
                Height = 16
                Caption = 'Modelo'
              end
              object Label125: TLabel
                Left = 95
                Top = 0
                Width = 32
                Height = 16
                Caption = 'S'#233'rie'
              end
              object Label126: TLabel
                Left = 210
                Top = 0
                Width = 48
                Height = 16
                Caption = 'N'#250'mero'
              end
              object Label127: TLabel
                Left = 340
                Top = 0
                Width = 129
                Height = 16
                Caption = 'Data e Hora Emiss'#227'o'
              end
              object Label29: TLabel
                Left = 35
                Top = 45
                Width = 77
                Height = 16
                Caption = 'Busca CFOP'
              end
              object Label57: TLabel
                Left = 655
                Top = 0
                Width = 52
                Height = 16
                Caption = 'Emitente'
              end
              object Label58: TLabel
                Left = 496
                Top = 19
                Width = 159
                Height = 20
                Caption = 'Inicie um Emitente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBackground
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object GroupBox3: TGroupBox
                Left = 324
                Top = 424
                Width = 315
                Height = 90
                Caption = 'Local do Inicio da Presta'#231#227'o'
                TabOrder = 4
                object comboIni: TComboBox
                  Left = 3
                  Top = 17
                  Width = 50
                  Height = 24
                  CharCase = ecUpperCase
                  TabOrder = 0
                  OnChange = comboIniChange
                  OnKeyPress = FormKeyPress
                end
                object comboCidadeIni: TComboBox
                  Left = 59
                  Top = 17
                  Width = 249
                  Height = 24
                  CharCase = ecUpperCase
                  TabOrder = 1
                  OnChange = comboCidadeIniChange
                  OnKeyPress = FormKeyPress
                end
              end
              object rgTiposCte: TRadioGroup
                Left = 35
                Top = 202
                Width = 861
                Height = 49
                Caption = 'Finalidade de Emiss'#227'o'
                Columns = 4
                ItemIndex = 0
                Items.Strings = (
                  '0 = Normal'
                  '1 = De Complemento de valores'
                  '2 = De Anula'#231#227'o de valores'
                  '3 = De Substitui'#231#227'o')
                TabOrder = 6
              end
              object rgTipoServico: TRadioGroup
                Left = 35
                Top = 147
                Width = 861
                Height = 49
                Caption = 'Tipos de Servi'#231'os'
                Columns = 5
                ItemIndex = 0
                Items.Strings = (
                  '0 = Normal'
                  '1 = Subcontrata'#231#227'o'
                  '2 = redespacho'
                  '3 = Intermediario'
                  '4 - conferir no XSD')
                TabOrder = 7
              end
              object rgFormaEmissao: TRadioGroup
                Left = 35
                Top = 257
                Width = 861
                Height = 49
                Caption = 'Forma de Emiss'#227'o'
                Columns = 5
                ItemIndex = 0
                Items.Strings = (
                  '1 = Normal'
                  '4 = EPEC'
                  '5 = Conting. FSDA'
                  '7 = SVC-RS'
                  '8 = SVC-SP')
                TabOrder = 8
              end
              object rgTipoDACTe: TRadioGroup
                Left = 379
                Top = 312
                Width = 249
                Height = 49
                Caption = 'Formato de Impress'#227'o do DACTE'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'Retrato'
                  'Paisagem')
                TabOrder = 9
              end
              object edtCFOP: TEdit
                Left = 155
                Top = 62
                Width = 94
                Height = 24
                ReadOnly = True
                TabOrder = 10
              end
              object edtNatOpe: TEdit
                Left = 255
                Top = 62
                Width = 641
                Height = 24
                MaxLength = 60
                ReadOnly = True
                TabOrder = 11
              end
              object edtCFOPBusca: TEdit
                Left = 35
                Top = 62
                Width = 109
                Height = 24
                ReadOnly = True
                TabOrder = 2
                OnChange = edtCFOPBuscaChange
                OnKeyPress = FormKeyPress
              end
              object rgModal: TRadioGroup
                Left = 35
                Top = 92
                Width = 249
                Height = 49
                Caption = 'Modal'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  '01 = Rodovi'#225'rio'
                  '02 = A'#233'reo')
                TabOrder = 12
              end
              object rgForPag: TRadioGroup
                Left = 35
                Top = 312
                Width = 249
                Height = 49
                Caption = 'Forma de Pagamento'
                Columns = 3
                ItemIndex = 0
                Items.Strings = (
                  'Pago'
                  'A Pagar'
                  'Outros')
                TabOrder = 13
              end
              object edtChaveAcesso: TEdit
                Left = 35
                Top = 385
                Width = 593
                Height = 24
                TabOrder = 14
              end
              object GroupBox1: TGroupBox
                Left = 6
                Top = 423
                Width = 315
                Height = 90
                Caption = 'Local de Emiss'#227'o do Ct-e'
                TabOrder = 3
                object comboEmi: TComboBox
                  Left = 5
                  Top = 18
                  Width = 50
                  Height = 24
                  CharCase = ecUpperCase
                  TabOrder = 0
                  OnChange = comboEmiChange
                  OnKeyPress = FormKeyPress
                end
                object comboCidadeEmi: TComboBox
                  Left = 63
                  Top = 18
                  Width = 249
                  Height = 24
                  CharCase = ecUpperCase
                  TabOrder = 1
                  OnChange = comboCidadeEmiChange
                  OnKeyPress = FormKeyPress
                end
              end
              object GroupBox6: TGroupBox
                Left = 644
                Top = 424
                Width = 319
                Height = 90
                Caption = 'Local do T'#233'rmino da Presta'#231#227'o'
                TabOrder = 5
                object comboFim: TComboBox
                  Left = 3
                  Top = 17
                  Width = 50
                  Height = 24
                  CharCase = ecUpperCase
                  TabOrder = 0
                  OnChange = comboFimChange
                  OnKeyPress = FormKeyPress
                end
                object comboCidadeFim: TComboBox
                  Left = 63
                  Top = 17
                  Width = 249
                  Height = 24
                  CharCase = ecUpperCase
                  TabOrder = 1
                  OnChange = comboCidadeFimChange
                  OnKeyPress = FormKeyPress
                end
                object edtFimCodCidade: TEdit
                  Left = 3
                  Top = 51
                  Width = 59
                  Height = 24
                  TabOrder = 2
                end
                object edtFimCidade: TEdit
                  Left = 68
                  Top = 51
                  Width = 202
                  Height = 24
                  TabOrder = 3
                end
                object edtFimUF: TEdit
                  Left = 276
                  Top = 51
                  Width = 35
                  Height = 24
                  TabOrder = 4
                end
              end
              object edtModelo: TEdit
                Left = 35
                Top = 15
                Width = 54
                Height = 24
                TabOrder = 15
                Text = '57'
              end
              object edtSerieCte: TEdit
                Left = 95
                Top = 15
                Width = 109
                Height = 24
                TabOrder = 0
                OnKeyPress = FormKeyPress
              end
              object edtNumCte: TEdit
                Left = 210
                Top = 15
                Width = 109
                Height = 24
                TabOrder = 1
                OnKeyPress = FormKeyPress
              end
              object edtIniCodCidade: TEdit
                Left = 324
                Top = 475
                Width = 59
                Height = 24
                ReadOnly = True
                TabOrder = 19
              end
              object edtIniCidade: TEdit
                Left = 386
                Top = 475
                Width = 202
                Height = 24
                ReadOnly = True
                TabOrder = 20
              end
              object edtIniUF: TEdit
                Left = 593
                Top = 475
                Width = 35
                Height = 24
                ReadOnly = True
                TabOrder = 21
              end
              object edtEnvCidade: TEdit
                Left = 69
                Top = 475
                Width = 202
                Height = 24
                ReadOnly = True
                TabOrder = 17
              end
              object edtEnvUF: TEdit
                Left = 273
                Top = 475
                Width = 35
                Height = 24
                ReadOnly = True
                TabOrder = 18
              end
              object edtEnvCodCidade: TEdit
                Left = 6
                Top = 475
                Width = 59
                Height = 24
                ReadOnly = True
                TabOrder = 16
              end
              object dataGerarCte: TJvDateTimePicker
                Left = 337
                Top = 15
                Width = 133
                Height = 24
                Date = 0.363676979170122700
                Time = 0.363676979170122700
                TabOrder = 22
                DropDownDate = 42725.000000000000000000
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Dados Complementares'
              ImageIndex = 1
              OnShow = TabSheet3Show
              object Label91: TLabel
                Left = 9
                Top = 18
                Width = 286
                Height = 16
                Caption = 'Caracteristica Adicional do Transporte (15 carct)'
              end
              object Label166: TLabel
                Left = 336
                Top = 18
                Width = 266
                Height = 16
                Caption = 'Caracteristica Adicional do Servi'#231'o (30 carct)'
              end
              object Label167: TLabel
                Left = 706
                Top = 18
                Width = 231
                Height = 16
                Caption = 'Funcion'#225'rio Emissor do CT-e (20 carct)'
              end
              object edtCaracAdServ: TEdit
                Left = 302
                Top = 39
                Width = 361
                Height = 24
                MaxLength = 30
                TabOrder = 1
              end
              object edtFuncEmi: TEdit
                Left = 673
                Top = 39
                Width = 314
                Height = 24
                MaxLength = 20
                TabOrder = 2
              end
              object edtCaracAdTrans: TEdit
                Left = 8
                Top = 39
                Width = 284
                Height = 24
                MaxLength = 15
                TabOrder = 0
              end
              object PageControl8: TPageControl
                Left = -7
                Top = 73
                Width = 1011
                Height = 435
                ActivePage = TabSheet38
                TabOrder = 3
                object TabSheet38: TTabSheet
                  Caption = 'Previs'#227'o de Fluxo de Carga'
                end
                object TabSheet39: TTabSheet
                  Caption = 'Previs'#227'o de Entrega'
                  ImageIndex = 1
                end
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'Dados da Retirada'
              ImageIndex = 2
              object Label174: TLabel
                Left = 30
                Top = 72
                Width = 178
                Height = 16
                Caption = 'Obs: Detalhes do Retira: (160)'
              end
              object memDetRetira: TMemo
                Left = 27
                Top = 94
                Width = 926
                Height = 123
                MaxLength = 160
                TabOrder = 1
              end
              object rgRetira: TRadioGroup
                Left = 27
                Top = 21
                Width = 249
                Height = 45
                Caption = 'Retira'
                Columns = 2
                ItemIndex = 1
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Emitente'
          ImageIndex = 3
          OnShow = TabSheet4Show
          object Label12: TLabel
            Left = 213
            Top = 118
            Width = 35
            Height = 16
            Caption = 'CNPJ'
          end
          object Label13: TLabel
            Left = 593
            Top = 118
            Width = 49
            Height = 16
            Caption = 'Insc.Est.'
          end
          object Label14: TLabel
            Left = 13
            Top = 192
            Width = 81
            Height = 16
            Caption = 'Raz'#227'o Social'
          end
          object Label15: TLabel
            Left = 12
            Top = 244
            Width = 52
            Height = 16
            Caption = 'Fantasia'
          end
          object Label16: TLabel
            Left = 11
            Top = 305
            Width = 70
            Height = 16
            Caption = 'Logradouro'
          end
          object Label17: TLabel
            Left = 803
            Top = 305
            Width = 48
            Height = 16
            Caption = 'N'#250'mero'
          end
          object Label18: TLabel
            Left = 11
            Top = 365
            Width = 84
            Height = 16
            Caption = 'Complemento'
          end
          object Label19: TLabel
            Left = 395
            Top = 365
            Width = 36
            Height = 16
            Caption = 'Bairro'
          end
          object Label20: TLabel
            Left = 12
            Top = 411
            Width = 78
            Height = 16
            Caption = 'C'#243'd. Cidade '
          end
          object Label21: TLabel
            Left = 115
            Top = 411
            Width = 44
            Height = 16
            Caption = 'Cidade'
          end
          object Label22: TLabel
            Left = 727
            Top = 411
            Width = 18
            Height = 16
            Caption = 'UF'
          end
          object Label23: TLabel
            Left = 803
            Top = 365
            Width = 27
            Height = 16
            Caption = 'CEP'
          end
          object Label24: TLabel
            Left = 803
            Top = 411
            Width = 31
            Height = 16
            Caption = 'Fone'
          end
          object Label34: TLabel
            Left = 13
            Top = 118
            Width = 83
            Height = 16
            Caption = 'Cod. Emitente'
          end
          object Label55: TLabel
            Left = 340
            Top = 16
            Width = 162
            Height = 20
            Caption = 'Inicie Um Emitente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label56: TLabel
            Left = 14
            Top = 53
            Width = 52
            Height = 16
            Caption = 'Emitente'
          end
          object edtEmitCNPJ: TEdit
            Left = 213
            Top = 140
            Width = 289
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object edtEmitIE: TEdit
            Left = 593
            Top = 140
            Width = 328
            Height = 24
            ReadOnly = True
            TabOrder = 1
          end
          object edtEmitRazao: TEdit
            Left = 13
            Top = 214
            Width = 916
            Height = 24
            ReadOnly = True
            TabOrder = 2
          end
          object edtEmitFantasia: TEdit
            Left = 12
            Top = 264
            Width = 917
            Height = 24
            ReadOnly = True
            TabOrder = 3
          end
          object edtEmitFone: TEdit
            Left = 803
            Top = 430
            Width = 125
            Height = 24
            ReadOnly = True
            TabOrder = 4
          end
          object edtEmitCEP: TEdit
            Left = 803
            Top = 384
            Width = 125
            Height = 24
            ReadOnly = True
            TabOrder = 5
          end
          object edtEmitLogradouro: TEdit
            Left = 11
            Top = 324
            Width = 766
            Height = 24
            ReadOnly = True
            TabOrder = 6
          end
          object edtEmitNumero: TEdit
            Left = 803
            Top = 324
            Width = 125
            Height = 24
            ReadOnly = True
            TabOrder = 7
          end
          object edtEmitComp: TEdit
            Left = 11
            Top = 384
            Width = 378
            Height = 24
            ReadOnly = True
            TabOrder = 8
          end
          object edtEmitBairro: TEdit
            Left = 395
            Top = 384
            Width = 273
            Height = 24
            ReadOnly = True
            TabOrder = 9
          end
          object edtEmitCodCidade: TEdit
            Left = 11
            Top = 430
            Width = 88
            Height = 24
            ReadOnly = True
            TabOrder = 10
          end
          object edtEmitCidade: TEdit
            Left = 115
            Top = 430
            Width = 598
            Height = 24
            ReadOnly = True
            TabOrder = 11
          end
          object edtEmitUF: TEdit
            Left = 727
            Top = 430
            Width = 50
            Height = 24
            ReadOnly = True
            TabOrder = 12
          end
          object comboEmpresa: TComboBox
            Left = 3
            Top = 75
            Width = 579
            Height = 24
            TabOrder = 13
            OnChange = comboEmpresaChange
          end
          object edtCodEmitente: TEdit
            Left = 13
            Top = 140
            Width = 86
            Height = 24
            ReadOnly = True
            TabOrder = 14
          end
          object btnIniciarEmitente: TButton
            Left = 362
            Top = 504
            Width = 185
            Height = 25
            Caption = 'Iniciar Emitente'
            Enabled = False
            TabOrder = 15
            OnClick = btnIniciarEmitenteClick
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Tomador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 7
          ParentFont = False
          OnShow = TabSheet13Show
          object Label35: TLabel
            Left = 13
            Top = 327
            Width = 78
            Height = 16
            Caption = 'C'#243'd. Cidade '
          end
          object Label36: TLabel
            Left = 115
            Top = 327
            Width = 44
            Height = 16
            Caption = 'Cidade'
          end
          object Label37: TLabel
            Left = 699
            Top = 327
            Width = 18
            Height = 16
            Caption = 'UF'
          end
          object Label73: TLabel
            Left = 13
            Top = 100
            Width = 81
            Height = 16
            Caption = 'Raz'#227'o Social'
          end
          object Label74: TLabel
            Left = 13
            Top = 140
            Width = 52
            Height = 16
            Caption = 'Fantasia'
          end
          object Label77: TLabel
            Left = 13
            Top = 205
            Width = 70
            Height = 16
            Caption = 'Logradouro'
          end
          object Label78: TLabel
            Left = 860
            Top = 205
            Width = 48
            Height = 16
            Caption = 'N'#250'mero'
          end
          object Label84: TLabel
            Left = 13
            Top = 251
            Width = 84
            Height = 16
            Caption = 'Complemento'
          end
          object Label85: TLabel
            Left = 483
            Top = 248
            Width = 36
            Height = 16
            Caption = 'Bairro'
          end
          object Label86: TLabel
            Left = 839
            Top = 251
            Width = 27
            Height = 16
            Caption = 'CEP'
          end
          object Label89: TLabel
            Left = 139
            Top = 55
            Width = 35
            Height = 16
            Caption = 'CNPJ'
          end
          object Label90: TLabel
            Left = 411
            Top = 55
            Width = 49
            Height = 16
            Caption = 'Insc.Est.'
          end
          object Label168: TLabel
            Left = 15
            Top = 55
            Width = 89
            Height = 16
            Caption = 'Buscar Codigo'
          end
          object Label88: TLabel
            Left = 776
            Top = 324
            Width = 31
            Height = 16
            Caption = 'Fone'
          end
          object edtFoneTomador: TEdit
            Left = 776
            Top = 346
            Width = 149
            Height = 24
            ReadOnly = True
            TabOrder = 15
          end
          object rgTomador: TRadioGroup
            Left = 3
            Top = 3
            Width = 926
            Height = 46
            Caption = '    * Tomador do Servi'#231'o   '
            Columns = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              '0 = Remetente'
              '1 = Expedidor'
              '2 = Recebedor'
              '3 = Destinatario'
              '4 = Outros')
            ParentFont = False
            TabOrder = 0
            OnClick = rgTomadorClick
          end
          object edtBuscaTomador: TEdit
            Left = 13
            Top = 70
            Width = 108
            Height = 24
            TabOrder = 1
            OnChange = edtBuscaTomadorChange
            OnKeyPress = FormKeyPress
          end
          object edtTomadorCodCidade: TEdit
            Left = 12
            Top = 346
            Width = 97
            Height = 24
            ReadOnly = True
            TabOrder = 2
          end
          object edtTomadorCidade: TEdit
            Left = 115
            Top = 346
            Width = 558
            Height = 24
            ReadOnly = True
            TabOrder = 3
          end
          object edtTomadorUF: TEdit
            Left = 699
            Top = 346
            Width = 35
            Height = 24
            ReadOnly = True
            TabOrder = 4
          end
          object edtNomeTomador: TEdit
            Left = 13
            Top = 161
            Width = 910
            Height = 24
            ReadOnly = True
            TabOrder = 5
          end
          object edtRazaoTomador: TEdit
            Left = 15
            Top = 116
            Width = 910
            Height = 24
            ReadOnly = True
            TabOrder = 6
          end
          object edtCNPJTomador: TEdit
            Left = 139
            Top = 70
            Width = 243
            Height = 24
            ReadOnly = True
            TabOrder = 7
          end
          object edtIETomador: TEdit
            Left = 411
            Top = 70
            Width = 243
            Height = 24
            ReadOnly = True
            TabOrder = 8
          end
          object edtEndTomador: TEdit
            Left = 12
            Top = 224
            Width = 821
            Height = 24
            ReadOnly = True
            TabOrder = 9
          end
          object edtNumTomador: TEdit
            Left = 860
            Top = 224
            Width = 61
            Height = 24
            ReadOnly = True
            TabOrder = 10
          end
          object edtCompTomador: TEdit
            Left = 12
            Top = 267
            Width = 444
            Height = 24
            ReadOnly = True
            TabOrder = 11
          end
          object edtBairroTomador: TEdit
            Left = 483
            Top = 267
            Width = 318
            Height = 24
            ReadOnly = True
            TabOrder = 12
          end
          object edtCepTomador: TEdit
            Left = 839
            Top = 267
            Width = 82
            Height = 24
            ReadOnly = True
            TabOrder = 13
          end
          object GroupBoxTomador: TGroupBox
            Left = 1
            Top = 48
            Width = 942
            Height = 385
            TabOrder = 14
          end
        end
        object Remetente: TTabSheet
          Caption = 'Remetente'
          ImageIndex = 9
          OnShow = RemetenteShow
          object Label38: TLabel
            Left = 18
            Top = 348
            Width = 78
            Height = 16
            Caption = 'C'#243'd. Cidade '
          end
          object Label39: TLabel
            Left = 99
            Top = 348
            Width = 44
            Height = 16
            Caption = 'Cidade'
          end
          object Label40: TLabel
            Left = 682
            Top = 348
            Width = 18
            Height = 16
            Caption = 'UF'
          end
          object Label71: TLabel
            Left = 138
            Top = 55
            Width = 35
            Height = 16
            Caption = 'CNPJ'
          end
          object Label72: TLabel
            Left = 407
            Top = 54
            Width = 49
            Height = 16
            Caption = 'Insc.Est.'
          end
          object Label75: TLabel
            Left = 20
            Top = 100
            Width = 81
            Height = 16
            Caption = 'Raz'#227'o Social'
          end
          object Label76: TLabel
            Left = 19
            Top = 146
            Width = 52
            Height = 16
            Caption = 'Fantasia'
          end
          object Label79: TLabel
            Left = 19
            Top = 216
            Width = 70
            Height = 16
            Caption = 'Logradouro'
          end
          object Label80: TLabel
            Left = 839
            Top = 215
            Width = 48
            Height = 16
            Caption = 'N'#250'mero'
          end
          object Label81: TLabel
            Left = 15
            Top = 261
            Width = 84
            Height = 16
            Caption = 'Complemento'
          end
          object Label82: TLabel
            Left = 407
            Top = 261
            Width = 36
            Height = 16
            Caption = 'Bairro'
          end
          object Label83: TLabel
            Left = 839
            Top = 261
            Width = 27
            Height = 16
            Caption = 'CEP'
          end
          object Label87: TLabel
            Left = 741
            Top = 348
            Width = 31
            Height = 16
            Caption = 'Fone'
          end
          object Label169: TLabel
            Left = 19
            Top = 55
            Width = 89
            Height = 16
            Caption = 'Buscar Codigo'
          end
          object edtRemBusca: TEdit
            Left = 17
            Top = 72
            Width = 104
            Height = 24
            TabOrder = 0
            OnChange = edtRemBuscaChange
            OnKeyPress = FormKeyPress
          end
          object edtRemRazao: TEdit
            Left = 17
            Top = 116
            Width = 904
            Height = 24
            ReadOnly = True
            TabOrder = 1
          end
          object edtRemNome: TEdit
            Left = 17
            Top = 159
            Width = 904
            Height = 24
            ReadOnly = True
            TabOrder = 2
          end
          object edtRemEnd: TEdit
            Left = 17
            Top = 234
            Width = 816
            Height = 24
            ReadOnly = True
            TabOrder = 3
          end
          object edtRemComp: TEdit
            Left = 18
            Top = 276
            Width = 367
            Height = 24
            ReadOnly = True
            TabOrder = 4
          end
          object edtRemNum: TEdit
            Left = 839
            Top = 234
            Width = 82
            Height = 24
            ReadOnly = True
            TabOrder = 5
          end
          object edtRemBairro: TEdit
            Left = 405
            Top = 276
            Width = 428
            Height = 24
            ReadOnly = True
            TabOrder = 6
          end
          object edtRemCep: TEdit
            Left = 839
            Top = 276
            Width = 82
            Height = 24
            ReadOnly = True
            TabOrder = 7
          end
          object edtRemCNPJ: TEdit
            Left = 139
            Top = 72
            Width = 246
            Height = 24
            ReadOnly = True
            TabOrder = 8
          end
          object edtRemFone: TEdit
            Left = 741
            Top = 367
            Width = 180
            Height = 24
            ReadOnly = True
            TabOrder = 9
          end
          object edtRemIE: TEdit
            Left = 407
            Top = 72
            Width = 310
            Height = 24
            ReadOnly = True
            TabOrder = 10
          end
          object edtRemCodCidade: TEdit
            Left = 18
            Top = 367
            Width = 61
            Height = 24
            ReadOnly = True
            TabOrder = 11
          end
          object edtRemCidade: TEdit
            Left = 99
            Top = 367
            Width = 566
            Height = 24
            ReadOnly = True
            TabOrder = 12
          end
          object edtRemUF: TEdit
            Left = 682
            Top = 367
            Width = 35
            Height = 24
            ReadOnly = True
            TabOrder = 13
          end
          object rgRem: TRadioGroup
            Left = 3
            Top = 6
            Width = 971
            Height = 42
            Caption = 'Remetente'
            Columns = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Com Remetente'
              'Sem Remetente : Redespacho Intermediario'
              'Sem Remetente : Servi'#231'o Vinculado a Multimodal')
            ParentFont = False
            TabOrder = 14
            OnClick = rgRemClick
          end
          object GroupBoxRemetente: TGroupBox
            Left = 3
            Top = 54
            Width = 958
            Height = 347
            TabOrder = 15
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Expeditor'
          ImageIndex = 10
          OnShow = TabSheet15Show
          object Label92: TLabel
            Left = 798
            Top = 243
            Width = 48
            Height = 16
            Caption = 'N'#250'mero'
          end
          object Label93: TLabel
            Left = 798
            Top = 290
            Width = 27
            Height = 16
            Caption = 'CEP'
          end
          object Label94: TLabel
            Left = 801
            Top = 352
            Width = 31
            Height = 16
            Caption = 'Fone'
          end
          object Label95: TLabel
            Left = 750
            Top = 352
            Width = 18
            Height = 16
            Caption = 'UF'
          end
          object Label96: TLabel
            Left = 457
            Top = 290
            Width = 36
            Height = 16
            Caption = 'Bairro'
          end
          object Label97: TLabel
            Left = 114
            Top = 352
            Width = 44
            Height = 16
            Caption = 'Cidade'
          end
          object Label98: TLabel
            Left = 17
            Top = 352
            Width = 78
            Height = 16
            Caption = 'C'#243'd. Cidade '
          end
          object Label99: TLabel
            Left = 14
            Top = 289
            Width = 84
            Height = 16
            Caption = 'Complemento'
          end
          object Label100: TLabel
            Left = 14
            Top = 243
            Width = 70
            Height = 16
            Caption = 'Logradouro'
          end
          object Label101: TLabel
            Left = 14
            Top = 184
            Width = 52
            Height = 16
            Caption = 'Fantasia'
          end
          object Label102: TLabel
            Left = 12
            Top = 139
            Width = 81
            Height = 16
            Caption = 'Raz'#227'o Social'
          end
          object Label104: TLabel
            Left = 544
            Top = 74
            Width = 49
            Height = 16
            Caption = 'Insc.Est.'
          end
          object Label105: TLabel
            Left = 147
            Top = 74
            Width = 35
            Height = 16
            Caption = 'CNPJ'
          end
          object Label170: TLabel
            Left = 15
            Top = 74
            Width = 89
            Height = 16
            Caption = 'Buscar Codigo'
          end
          object edtExpNum: TEdit
            Left = 798
            Top = 262
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object edtExpCep: TEdit
            Left = 798
            Top = 309
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 1
          end
          object edtExpFone: TEdit
            Left = 804
            Top = 371
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 2
          end
          object edtExpUF: TEdit
            Left = 750
            Top = 371
            Width = 35
            Height = 24
            ReadOnly = True
            TabOrder = 3
          end
          object edtExpBairro: TEdit
            Left = 457
            Top = 309
            Width = 322
            Height = 24
            ReadOnly = True
            TabOrder = 4
          end
          object edtExpCidade: TEdit
            Left = 114
            Top = 371
            Width = 618
            Height = 24
            ReadOnly = True
            TabOrder = 5
          end
          object edtExpCodCidade: TEdit
            Left = 20
            Top = 371
            Width = 88
            Height = 24
            ReadOnly = True
            TabOrder = 6
          end
          object edtExpComp: TEdit
            Left = 16
            Top = 308
            Width = 433
            Height = 24
            ReadOnly = True
            TabOrder = 7
          end
          object edtExpEnd: TEdit
            Left = 14
            Top = 262
            Width = 765
            Height = 24
            ReadOnly = True
            TabOrder = 8
          end
          object edtExpNome: TEdit
            Left = 14
            Top = 203
            Width = 895
            Height = 24
            ReadOnly = True
            TabOrder = 9
          end
          object edtExpRazao: TEdit
            Left = 14
            Top = 158
            Width = 895
            Height = 24
            ReadOnly = True
            TabOrder = 10
          end
          object edtExpIE: TEdit
            Left = 544
            Top = 93
            Width = 365
            Height = 24
            ReadOnly = True
            TabOrder = 11
          end
          object edtExpCNPJ: TEdit
            Left = 147
            Top = 93
            Width = 285
            Height = 24
            ReadOnly = True
            TabOrder = 12
          end
          object edtExpBusca: TEdit
            Left = 15
            Top = 93
            Width = 93
            Height = 24
            TabOrder = 13
            OnChange = edtExpBuscaChange
            OnKeyPress = FormKeyPress
          end
          object rgExp: TRadioGroup
            Left = 16
            Top = 16
            Width = 377
            Height = 40
            Caption = 'Expeditor'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Com Expeditor'
              'Sem Expeditor')
            TabOrder = 14
            OnClick = rgExpClick
          end
          object GroupBoxExpeditor: TGroupBox
            Left = 3
            Top = 62
            Width = 971
            Height = 347
            TabOrder = 15
          end
        end
        object TabSheet16: TTabSheet
          Caption = 'Recebedor'
          ImageIndex = 11
          OnShow = TabSheet16Show
          object Label106: TLabel
            Left = 806
            Top = 251
            Width = 48
            Height = 16
            Caption = 'N'#250'mero'
          end
          object Label107: TLabel
            Left = 806
            Top = 298
            Width = 27
            Height = 16
            Caption = 'CEP'
          end
          object Label108: TLabel
            Left = 809
            Top = 360
            Width = 31
            Height = 16
            Caption = 'Fone'
          end
          object Label109: TLabel
            Left = 758
            Top = 360
            Width = 18
            Height = 16
            Caption = 'UF'
          end
          object Label110: TLabel
            Left = 465
            Top = 298
            Width = 36
            Height = 16
            Caption = 'Bairro'
          end
          object Label111: TLabel
            Left = 122
            Top = 360
            Width = 44
            Height = 16
            Caption = 'Cidade'
          end
          object Label112: TLabel
            Left = 23
            Top = 360
            Width = 78
            Height = 16
            Caption = 'C'#243'd. Cidade '
          end
          object Label113: TLabel
            Left = 22
            Top = 297
            Width = 84
            Height = 16
            Caption = 'Complemento'
          end
          object Label114: TLabel
            Left = 22
            Top = 251
            Width = 70
            Height = 16
            Caption = 'Logradouro'
          end
          object Label115: TLabel
            Left = 22
            Top = 192
            Width = 52
            Height = 16
            Caption = 'Fantasia'
          end
          object Label116: TLabel
            Left = 20
            Top = 147
            Width = 81
            Height = 16
            Caption = 'Raz'#227'o Social'
          end
          object Label118: TLabel
            Left = 583
            Top = 80
            Width = 49
            Height = 16
            Caption = 'Insc.Est.'
          end
          object Label119: TLabel
            Left = 122
            Top = 82
            Width = 35
            Height = 16
            Caption = 'CNPJ'
          end
          object Label171: TLabel
            Left = 23
            Top = 82
            Width = 89
            Height = 16
            Caption = 'Buscar Codigo'
          end
          object edtRecNum: TEdit
            Left = 806
            Top = 270
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object edtRecCep: TEdit
            Left = 806
            Top = 317
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 1
          end
          object edtRecFone: TEdit
            Left = 809
            Top = 379
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 2
          end
          object edtRecUF: TEdit
            Left = 758
            Top = 379
            Width = 35
            Height = 24
            ReadOnly = True
            TabOrder = 3
          end
          object edtRecBairro: TEdit
            Left = 465
            Top = 317
            Width = 322
            Height = 24
            ReadOnly = True
            TabOrder = 4
          end
          object edtRecCidade: TEdit
            Left = 122
            Top = 379
            Width = 618
            Height = 24
            ReadOnly = True
            TabOrder = 5
          end
          object edtRecCodCidade: TEdit
            Left = 23
            Top = 379
            Width = 88
            Height = 24
            ReadOnly = True
            TabOrder = 6
          end
          object edtRecComp: TEdit
            Left = 23
            Top = 316
            Width = 433
            Height = 24
            ReadOnly = True
            TabOrder = 7
          end
          object edtRecEnd: TEdit
            Left = 22
            Top = 270
            Width = 765
            Height = 24
            ReadOnly = True
            TabOrder = 8
          end
          object edtRecNome: TEdit
            Left = 22
            Top = 211
            Width = 895
            Height = 24
            ReadOnly = True
            TabOrder = 9
          end
          object edtRecRazao: TEdit
            Left = 22
            Top = 166
            Width = 895
            Height = 24
            ReadOnly = True
            TabOrder = 10
          end
          object edtRecIE: TEdit
            Left = 583
            Top = 99
            Width = 334
            Height = 24
            ReadOnly = True
            TabOrder = 11
          end
          object edtRecCNPJ: TEdit
            Left = 122
            Top = 101
            Width = 370
            Height = 24
            ReadOnly = True
            TabOrder = 12
          end
          object edtRecBusca: TEdit
            Left = 22
            Top = 99
            Width = 86
            Height = 24
            TabOrder = 13
            OnChange = edtRecBuscaChange
            OnKeyPress = FormKeyPress
          end
          object rgRec: TRadioGroup
            Left = 19
            Top = 17
            Width = 388
            Height = 39
            Caption = 'Recebedor'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Com Recebedor'
              'Sem Recebedor')
            TabOrder = 14
            OnClick = rgRecClick
          end
          object GroupBoxRecebedor: TGroupBox
            Left = 20
            Top = 62
            Width = 958
            Height = 376
            TabOrder = 15
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Destinat'#225'rio'
          ImageIndex = 8
          OnShow = TabSheet11Show
          object Label49: TLabel
            Left = 449
            Top = 282
            Width = 36
            Height = 16
            Caption = 'Bairro'
          end
          object Label48: TLabel
            Left = 790
            Top = 235
            Width = 48
            Height = 16
            Caption = 'N'#250'mero'
          end
          object Label46: TLabel
            Left = 790
            Top = 282
            Width = 27
            Height = 16
            Caption = 'CEP'
          end
          object Label45: TLabel
            Left = 793
            Top = 344
            Width = 31
            Height = 16
            Caption = 'Fone'
          end
          object Label53: TLabel
            Left = 742
            Top = 344
            Width = 18
            Height = 16
            Caption = 'UF'
          end
          object Label52: TLabel
            Left = 106
            Top = 344
            Width = 44
            Height = 16
            Caption = 'Cidade'
          end
          object Label51: TLabel
            Left = 14
            Top = 344
            Width = 78
            Height = 16
            Caption = 'C'#243'd. Cidade '
          end
          object Label50: TLabel
            Left = 14
            Top = 281
            Width = 84
            Height = 16
            Caption = 'Complemento'
          end
          object Label47: TLabel
            Left = 14
            Top = 235
            Width = 70
            Height = 16
            Caption = 'Logradouro'
          end
          object Label44: TLabel
            Left = 12
            Top = 176
            Width = 52
            Height = 16
            Caption = 'Fantasia'
          end
          object Label43: TLabel
            Left = 11
            Top = 131
            Width = 81
            Height = 16
            Caption = 'Raz'#227'o Social'
          end
          object Label54: TLabel
            Left = 728
            Top = 64
            Width = 77
            Height = 16
            Caption = 'Insc.Suframa'
          end
          object Label42: TLabel
            Left = 413
            Top = 66
            Width = 49
            Height = 16
            Caption = 'Insc.Est.'
          end
          object Label41: TLabel
            Left = 106
            Top = 66
            Width = 35
            Height = 16
            Caption = 'CNPJ'
          end
          object Label172: TLabel
            Left = 11
            Top = 63
            Width = 89
            Height = 16
            Caption = 'Buscar Codigo'
          end
          object edtDestNum: TEdit
            Left = 790
            Top = 254
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object edtDestCEP: TEdit
            Left = 790
            Top = 301
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 1
          end
          object edtDestFone: TEdit
            Left = 796
            Top = 363
            Width = 111
            Height = 24
            ReadOnly = True
            TabOrder = 2
          end
          object edtDestUF: TEdit
            Left = 742
            Top = 363
            Width = 35
            Height = 24
            ReadOnly = True
            TabOrder = 3
          end
          object edtDestBairro: TEdit
            Left = 449
            Top = 301
            Width = 322
            Height = 24
            ReadOnly = True
            TabOrder = 4
          end
          object edtDestCidade: TEdit
            Left = 106
            Top = 363
            Width = 618
            Height = 24
            ReadOnly = True
            TabOrder = 5
          end
          object edtDestCodCidade: TEdit
            Left = 14
            Top = 363
            Width = 85
            Height = 24
            ReadOnly = True
            TabOrder = 6
          end
          object edtDestComp: TEdit
            Left = 12
            Top = 300
            Width = 433
            Height = 24
            ReadOnly = True
            TabOrder = 7
          end
          object edtDestEnd: TEdit
            Left = 12
            Top = 254
            Width = 765
            Height = 24
            ReadOnly = True
            TabOrder = 8
          end
          object edtDestNome: TEdit
            Left = 14
            Top = 195
            Width = 895
            Height = 24
            ReadOnly = True
            TabOrder = 9
          end
          object edtDestRazao: TEdit
            Left = 11
            Top = 150
            Width = 892
            Height = 24
            ReadOnly = True
            TabOrder = 10
          end
          object edtDestISUF: TEdit
            Left = 730
            Top = 83
            Width = 171
            Height = 24
            ReadOnly = True
            TabOrder = 11
          end
          object edtDestIE: TEdit
            Left = 413
            Top = 85
            Width = 311
            Height = 24
            ReadOnly = True
            TabOrder = 12
          end
          object edtDestCNPJ: TEdit
            Left = 106
            Top = 85
            Width = 285
            Height = 24
            ReadOnly = True
            TabOrder = 13
          end
          object edtDestBusca: TEdit
            Left = 14
            Top = 85
            Width = 86
            Height = 24
            TabOrder = 14
            OnChange = edtDestBuscaChange
            OnKeyPress = FormKeyPress
          end
          object rgDest: TRadioGroup
            Left = 0
            Top = 10
            Width = 975
            Height = 38
            Caption = 'Destinat'#225'rio'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'Com Destinat'#225'rio'
              'Sem Destinat'#225'rio : Redespacho Intermedi'#225'rio'
              'Sem Destinat'#225'rio : Servi'#231'o Vinculado a Multimodal')
            TabOrder = 15
            OnClick = rgDestClick
          end
          object GroupBoxDestinatario: TGroupBox
            Left = 3
            Top = 48
            Width = 971
            Height = 369
            TabOrder = 16
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Servi'#231'os e Impostos'
          ImageIndex = 8
          OnShow = TabSheet12Show
          object GroupBox9: TGroupBox
            Left = 3
            Top = 1
            Width = 472
            Height = 275
            Caption = 'Valores da Presta'#231#227'o de Servi'#231'o'
            TabOrder = 0
            object Label128: TLabel
              Left = 16
              Top = 24
              Width = 216
              Height = 13
              Caption = '* Valor Total da Presta'#231#227'o de Servi'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label129: TLabel
              Left = 16
              Top = 51
              Width = 102
              Height = 13
              Caption = '* Valor a Receber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label130: TLabel
              Left = 16
              Top = 76
              Width = 137
              Height = 13
              Caption = 'Valor Total dos Tributos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label131: TLabel
              Left = 16
              Top = 126
              Width = 200
              Height = 13
              Caption = 'Componente do Valor da presta'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label132: TLabel
              Left = 144
              Top = 107
              Width = 176
              Height = 13
              Caption = 'Valor aproximadamente ..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Button9: TButton
              Left = 16
              Top = 243
              Width = 75
              Height = 25
              Caption = 'Incluir'
              TabOrder = 3
              OnClick = Button9Click
            end
            object Button10: TButton
              Left = 114
              Top = 243
              Width = 75
              Height = 25
              Caption = 'Editar'
              TabOrder = 4
              OnClick = Button10Click
            end
            object Button11: TButton
              Left = 216
              Top = 243
              Width = 75
              Height = 25
              Caption = 'Excluir'
              TabOrder = 5
              OnClick = Button11Click
            end
            object dbGridComp: TDBGrid
              Left = 16
              Top = 143
              Width = 417
              Height = 94
              DataSource = dm.dsComp
              TabOrder = 6
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COMP_NOME'
                  Title.Caption = 'NOME'
                  Width = 207
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMP_VALOR'
                  Title.Caption = 'VALOR'
                  Width = 171
                  Visible = True
                end>
            end
            object dbValReceber: TDBEdit
              Left = 312
              Top = 41
              Width = 121
              Height = 24
              DataField = 'VREC'
              DataSource = dm.dsCTE
              TabOrder = 1
            end
            object dbValTotPrest: TDBEdit
              Left = 312
              Top = 13
              Width = 121
              Height = 24
              DataField = 'VPREST'
              DataSource = dm.dsCTE
              TabOrder = 0
            end
            object dbValTotTri: TDBEdit
              Left = 312
              Top = 71
              Width = 121
              Height = 24
              DataField = 'VALTOTTRI'
              DataSource = dm.dsCTE
              TabOrder = 2
            end
          end
          object GroupBox10: TGroupBox
            Left = 485
            Top = -2
            Width = 511
            Height = 280
            TabOrder = 1
            object Label133: TLabel
              Left = 20
              Top = 42
              Width = 202
              Height = 13
              Caption = 'Valor da Base de Calculos do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label134: TLabel
              Left = 20
              Top = 71
              Width = 198
              Height = 13
              Caption = 'Al'#237'quota Interna da UF de T'#233'rmino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label135: TLabel
              Left = 20
              Top = 102
              Width = 125
              Height = 13
              Caption = 'Aliquota Interestadual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label136: TLabel
              Left = 20
              Top = 131
              Width = 202
              Height = 13
              Caption = '% de Partilha para a UF de T'#233'rmino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label137: TLabel
              Left = 16
              Top = 161
              Width = 262
              Height = 13
              Caption = 'Valor do ICMS de Partilha para a UF de In'#237'cio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label138: TLabel
              Left = 19
              Top = 192
              Width = 274
              Height = 13
              Caption = 'Valor do ICMS de Partilha para a UF de T'#233'rmino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label139: TLabel
              Left = 16
              Top = 226
              Width = 338
              Height = 13
              Caption = '% do ICMS ao Fundo de Combate '#224' Pobreza da UF T'#233'rmino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label140: TLabel
              Left = 15
              Top = 256
              Width = 358
              Height = 13
              Caption = 'Valor do ICMS ao Fundo de Combate '#224' Pobreza da UF T'#233'rmino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CheckBox1: TCheckBox
              Left = 16
              Top = 11
              Width = 385
              Height = 17
              Caption = 
                'Preencher o ICMS devido para a UF de T'#233'rmino do Servi'#231'o de Trans' +
                'porte'
              TabOrder = 0
              OnClick = CheckBox1Click
            end
            object combICMSDevido: TComboBox
              Left = 316
              Top = 120
              Width = 188
              Height = 24
              TabOrder = 1
              OnKeyPress = FormKeyPress
              Items.Strings = (
                '40 % em 2016'
                '60 % em 2017'
                '80 % em 2018'
                '100%  partir de 2019'
                'Outro Valor')
            end
            object calValB: TJvCalcEdit
              Left = 383
              Top = 31
              Width = 121
              Height = 24
              TabOrder = 2
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valAliIn: TJvCalcEdit
              Left = 383
              Top = 60
              Width = 121
              Height = 24
              TabOrder = 3
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valICMSPartI: TJvCalcEdit
              Left = 383
              Top = 150
              Width = 121
              Height = 24
              TabOrder = 4
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valIMCSPartF: TJvCalcEdit
              Left = 383
              Top = 181
              Width = 121
              Height = 24
              TabOrder = 5
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valCombIni: TJvCalcEdit
              Left = 383
              Top = 215
              Width = 121
              Height = 24
              TabOrder = 6
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valCombFim: TJvCalcEdit
              Left = 383
              Top = 245
              Width = 121
              Height = 24
              TabOrder = 7
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valAliInter: TJvCalcEdit
              Left = 383
              Top = 91
              Width = 121
              Height = 24
              TabOrder = 8
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
          end
          object GroupBox11: TGroupBox
            Left = 3
            Top = 277
            Width = 992
            Height = 249
            Caption = 'ICMS'
            TabOrder = 2
            object Label141: TLabel
              Left = 19
              Top = 17
              Width = 170
              Height = 13
              Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label142: TLabel
              Left = 23
              Top = 58
              Width = 174
              Height = 13
              Caption = 'Percentual de REdu'#231#227'o da BC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label143: TLabel
              Left = 23
              Top = 89
              Width = 120
              Height = 13
              Caption = 'Valor da BC do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label144: TLabel
              Left = 23
              Top = 119
              Width = 152
              Height = 13
              Caption = 'Percentual da BC do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label145: TLabel
              Left = 24
              Top = 149
              Width = 101
              Height = 13
              Caption = 'Al'#237'quota do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label146: TLabel
              Left = 26
              Top = 179
              Width = 219
              Height = 13
              Caption = 'Valor do Cr'#233'dito Outorgado/Presumido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label147: TLabel
              Left = 479
              Top = 19
              Width = 258
              Height = 13
              Caption = 'Informa'#231#245'es Adicionais de Interesse do Fisco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object valpRedBC: TJvCalcEdit
              Left = 336
              Top = 58
              Width = 121
              Height = 24
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valvBC: TJvCalcEdit
              Left = 336
              Top = 88
              Width = 121
              Height = 24
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valpICMS: TJvCalcEdit
              Left = 336
              Top = 112
              Width = 121
              Height = 24
              TabOrder = 2
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valvICMS: TJvCalcEdit
              Left = 336
              Top = 139
              Width = 121
              Height = 24
              TabOrder = 3
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object valvCred: TJvCalcEdit
              Left = 336
              Top = 166
              Width = 121
              Height = 24
              TabOrder = 4
              DecimalPlacesAlwaysShown = False
              OnKeyPress = FormKeyPress
            end
            object combCodSitTrib: TComboBox
              Left = 195
              Top = 16
              Width = 262
              Height = 24
              TabOrder = 5
              OnChange = combCodSitTribChange
              OnKeyPress = FormKeyPress
              Items.Strings = (
                '00 - Tributa'#231#227'o Normal do ICMS'
                '20 - Tributa'#231#227'o com Redul'#231'ao da BC do ICMS'
                '40 - ICMS Isen'#231#227'o'
                '41 - ICMS n'#227'o Tributado'
                '51 - ICMS Deferido'
                '60 - ICMS Cobrado Anteriormente por Substitui'#231#227'o Tribut'#225'ria'
                '90 - ICMS Outros'
                '90 - ICMS Devido '#224' UF de Origem da Presta'#231#227'o, quando ....'
                '90 - SIMPLES NACIONAL')
            end
            object Memo1: TMemo
              Left = 481
              Top = 48
              Width = 456
              Height = 137
              TabOrder = 6
              OnKeyPress = FormKeyPress
            end
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'CT-e Normal'
          ImageIndex = 8
          object PageControl5: TPageControl
            Left = -1
            Top = 3
            Width = 1005
            Height = 574
            ActivePage = TabSheet25
            TabOrder = 0
            object TabSheet25: TTabSheet
              Caption = 'Inf. da Carga'
              OnShow = TabSheet25Show
              object Label103: TLabel
                Left = 21
                Top = 5
                Width = 80
                Height = 16
                Caption = '* Valor Carga'
              end
              object Label121: TLabel
                Left = 16
                Top = 79
                Width = 60
                Height = 16
                Caption = '* Unidade'
              end
              object Label117: TLabel
                Left = 149
                Top = 5
                Width = 142
                Height = 16
                Caption = '* Produto Predominante'
              end
              object Label122: TLabel
                Left = 325
                Top = 79
                Width = 104
                Height = 16
                Caption = '* Tipo de Medida'
              end
              object Label123: TLabel
                Left = 600
                Top = 79
                Width = 96
                Height = 16
                Caption = '* Qtde da Carga'
              end
              object Label120: TLabel
                Left = 548
                Top = 4
                Width = 193
                Height = 16
                Caption = 'Outras Caracter'#237'stica do Produto'
              end
              object Label173: TLabel
                Left = 318
                Top = 473
                Width = 619
                Height = 16
                Caption = 
                  'Obs: Unidades = 00 - M3  , 01 - KG , 02 - TON ,  03 - UNIDADE , ' +
                  ' 04 - LITROS  , 05 - MMBTU'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edtProPred: TEdit
                Left = 147
                Top = 24
                Width = 393
                Height = 24
                TabOrder = 1
                OnKeyPress = FormKeyPress
              end
              object edtOutCat: TEdit
                Left = 548
                Top = 24
                Width = 361
                Height = 24
                TabOrder = 2
                OnKeyPress = FormKeyPress
              end
              object btnIncluir: TButton
                Left = 21
                Top = 465
                Width = 75
                Height = 25
                Caption = 'Incluir'
                TabOrder = 3
                OnClick = btnIncluirClick
              end
              object btnEditar: TButton
                Left = 114
                Top = 465
                Width = 75
                Height = 25
                Caption = 'Editar'
                TabOrder = 4
                OnClick = btnEditarClick
              end
              object btnExcluir: TButton
                Left = 211
                Top = 465
                Width = 75
                Height = 25
                Caption = 'Excluir'
                TabOrder = 5
                OnClick = btnExcluirClick
              end
              object dbGridQC: TDBGrid
                Left = 16
                Top = 101
                Width = 897
                Height = 353
                DataSource = dm.dsQC
                TabOrder = 6
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'UNID'
                    Width = 297
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MEDIDA'
                    Width = 272
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUANT'
                    Width = 300
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_CTE_QC'
                    Title.Caption = 'COD'
                    Width = 41
                    Visible = True
                  end>
              end
              object dbValInfCarga: TDBEdit
                Left = 20
                Top = 24
                Width = 121
                Height = 24
                DataField = 'VALINFCARGA'
                DataSource = dm.dsCTE
                TabOrder = 0
              end
            end
            object TabSheet26: TTabSheet
              Caption = 'Inf. Documentos'
              ImageIndex = 1
              object PageControl6: TPageControl
                Left = -5
                Top = 4
                Width = 1007
                Height = 542
                ActivePage = TabSheet32
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object TabSheet32: TTabSheet
                  Caption = 'Notas Fiscais'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  OnShow = TabSheet32Show
                  object dbgridNF: TDBGrid
                    Left = 3
                    Top = 0
                    Width = 918
                    Height = 398
                    DataSource = dm.dsNF
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -13
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NFSERIE'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFNUM'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFEMI'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFCFOP'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFMODELO'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFROMA'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFNUMP'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFPREV'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFBASE'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFICMS'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFBASEST'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFICMSST'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'LNFPESO'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFPIN'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFVALPROD'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NFVALOR'
                        Width = 64
                        Visible = True
                      end>
                  end
                  object Button24: TButton
                    Left = 24
                    Top = 442
                    Width = 75
                    Height = 25
                    Caption = 'Incluir'
                    TabOrder = 1
                    OnClick = Button24Click
                  end
                  object Button25: TButton
                    Left = 129
                    Top = 442
                    Width = 75
                    Height = 25
                    Caption = 'Editar'
                    TabOrder = 2
                    OnClick = Button25Click
                  end
                  object Button26: TButton
                    Left = 229
                    Top = 442
                    Width = 75
                    Height = 25
                    Caption = 'Excluir'
                    TabOrder = 3
                    OnClick = Button26Click
                  end
                end
                object TabSheet33: TTabSheet
                  Caption = 'NF-es'
                  ImageIndex = 1
                  OnShow = TabSheet33Show
                  object dbgridNFe: TDBGrid
                    Left = 10
                    Top = 16
                    Width = 897
                    Height = 388
                    DataSource = dm.dsNFe
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -13
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'CHAVE'
                        Width = 484
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PIN'
                        Width = 216
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DPREV'
                        Title.Caption = 'Data Prev Entrega'
                        Visible = True
                      end>
                  end
                  object Button2: TButton
                    Left = 10
                    Top = 440
                    Width = 75
                    Height = 25
                    Caption = 'Incluir'
                    TabOrder = 1
                    OnClick = Button2Click
                  end
                  object Button12: TButton
                    Left = 111
                    Top = 440
                    Width = 75
                    Height = 25
                    Caption = 'Editar'
                    TabOrder = 2
                    OnClick = Button12Click
                  end
                  object Button14: TButton
                    Left = 221
                    Top = 440
                    Width = 75
                    Height = 25
                    Caption = 'Excluir'
                    TabOrder = 3
                    OnClick = Button14Click
                  end
                end
                object TabSheet34: TTabSheet
                  Caption = 'Outros Documentos'
                  ImageIndex = 2
                end
              end
            end
            object TabSheet27: TTabSheet
              Caption = 'Doc. de Transp. Ant.'
              ImageIndex = 2
            end
            object TabSheet28: TTabSheet
              Caption = 'Inf. do Seguro'
              ImageIndex = 3
              OnShow = TabSheet28Show
              object Label175: TLabel
                Left = 456
                Top = 472
                Width = 352
                Height = 16
                Caption = 'Obs. 4 -Emitente do CTe     5 - Tomador de Servi'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Button3: TButton
                Left = 24
                Top = 469
                Width = 75
                Height = 25
                Caption = 'Incluir'
                TabOrder = 0
                OnClick = Button3Click
              end
              object Button4: TButton
                Left = 122
                Top = 469
                Width = 75
                Height = 25
                Caption = 'Editar'
                TabOrder = 1
                OnClick = Button4Click
              end
              object Button5: TButton
                Left = 224
                Top = 469
                Width = 75
                Height = 25
                Caption = 'Excluir'
                TabOrder = 2
                OnClick = Button5Click
              end
              object dbgridSeg: TDBGrid
                Left = 24
                Top = 24
                Width = 857
                Height = 419
                DataSource = dm.dsSeg
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'RESP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME_SEGURADORA'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_APOLICE'
                    Width = 149
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_AVERBACAO'
                    Width = 159
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR'
                    Width = 198
                    Visible = True
                  end>
              end
            end
            object TabSheet29: TTabSheet
              Caption = 'Produtod Perigosos'
              ImageIndex = 4
            end
            object TabSheet30: TTabSheet
              Caption = 'Veiculos Novos'
              ImageIndex = 5
            end
            object TabSheet31: TTabSheet
              Caption = 'Cobran'#231'as'
              ImageIndex = 6
              object GroupBox7: TGroupBox
                Left = 4
                Top = 12
                Width = 991
                Height = 82
                Caption = 'Fatura'
                TabOrder = 0
              end
              object GroupBox8: TGroupBox
                Left = 7
                Top = 96
                Width = 987
                Height = 331
                Caption = 'Duplicatas'
                TabOrder = 1
              end
              object Button6: TButton
                Left = 8
                Top = 463
                Width = 75
                Height = 25
                Caption = 'Incluir'
                TabOrder = 2
              end
              object Button7: TButton
                Left = 106
                Top = 463
                Width = 75
                Height = 25
                Caption = 'Editar'
                TabOrder = 3
              end
              object Button8: TButton
                Left = 208
                Top = 463
                Width = 75
                Height = 25
                Caption = 'Excluir'
                TabOrder = 4
              end
            end
          end
        end
        object TabSheet21: TTabSheet
          Caption = 'Rodovi'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 9
          ParentFont = False
          object PageControl9: TPageControl
            Left = -4
            Top = 3
            Width = 1008
            Height = 574
            ActivePage = TabSheet23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object TabSheet23: TTabSheet
              Caption = 'Gerais'
              OnShow = TabSheet23Show
              object Label148: TLabel
                Left = 27
                Top = 17
                Width = 57
                Height = 13
                Caption = ' * RNTRC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label165: TLabel
                Left = 168
                Top = 17
                Width = 153
                Height = 13
                Caption = '* Data Prevista de Entrega'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edtRodRNTRC: TEdit
                Left = 27
                Top = 36
                Width = 120
                Height = 24
                TabOrder = 0
                OnKeyPress = FormKeyPress
              end
              object dataRodPrev: TJvDatePickerEdit
                Left = 167
                Top = 36
                Width = 153
                Height = 24
                AllowNoDate = True
                Checked = True
                TabOrder = 1
                OnKeyPress = FormKeyPress
              end
              object rgRodLotacao: TRadioGroup
                Left = 419
                Top = 16
                Width = 133
                Height = 44
                Caption = 'Indicador de Lota'#231#227'o'
                Columns = 2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ItemIndex = 0
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
                ParentFont = False
                TabOrder = 2
              end
              object GroupBox13: TGroupBox
                Left = 11
                Top = 153
                Width = 166
                Height = 89
                Caption = 'Lacres - N'#250'meros   '
                TabOrder = 3
              end
              object GroupBox12: TGroupBox
                Left = 307
                Top = 141
                Width = 438
                Height = 101
                Caption = 'Ordem de Coleta Associadas (10 no m'#225'ximo)      '
                TabOrder = 4
              end
            end
            object TabSheet40: TTabSheet
              Caption = 'Vale Ped'#225'gio'
              ImageIndex = 1
            end
            object TabSheet41: TTabSheet
              Caption = 'Ve'#237'culos'
              ImageIndex = 2
              OnShow = TabSheet41Show
              object Button19: TButton
                Left = 16
                Top = 479
                Width = 75
                Height = 25
                Caption = 'Incluir'
                TabOrder = 0
                OnClick = Button19Click
              end
              object Button20: TButton
                Left = 122
                Top = 479
                Width = 75
                Height = 25
                Caption = 'Editar'
                TabOrder = 1
                OnClick = Button20Click
              end
              object Button21: TButton
                Left = 220
                Top = 479
                Width = 75
                Height = 25
                Caption = 'Excluir'
                TabOrder = 2
                OnClick = Button21Click
              end
              object dbgridVeic: TDBGrid
                Left = 16
                Top = 0
                Width = 971
                Height = 450
                DataSource = dm.dsVeic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = [fsBold]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CINT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RENAVAM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLACA'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TARA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CAPKG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CAPM3'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPROD'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCAR'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPVEIC'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPPROP'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UF'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CNPJ'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RNTRC'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IE'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VTPPROP'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VUF'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_CTE_VEICULOS'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_CTE'
                    Width = 64
                    Visible = True
                  end>
              end
            end
            object TabSheet42: TTabSheet
              Caption = 'Motorista'
              ImageIndex = 3
              OnShow = TabSheet42Show
              object dbgridMot: TDBGrid
                Left = 16
                Top = 24
                Width = 961
                Height = 430
                DataSource = dm.dsMot
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CPF'
                    Width = 223
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Width = 579
                    Visible = True
                  end>
              end
              object Button16: TButton
                Left = 16
                Top = 484
                Width = 75
                Height = 25
                Caption = 'Incluir'
                TabOrder = 1
                OnClick = Button16Click
              end
              object Button17: TButton
                Left = 130
                Top = 484
                Width = 75
                Height = 25
                Caption = 'Editar'
                TabOrder = 2
                OnClick = Button17Click
              end
              object Button18: TButton
                Left = 242
                Top = 484
                Width = 75
                Height = 25
                Caption = 'Excluir'
                TabOrder = 3
                OnClick = Button18Click
              end
            end
          end
        end
        object TabSheet22: TTabSheet
          Caption = 'Obs.'
          ImageIndex = 10
          object PageControl7: TPageControl
            Left = 0
            Top = 1
            Width = 1004
            Height = 576
            ActivePage = TabSheet35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object TabSheet35: TTabSheet
              Caption = 'Observa'#231#245'es Gerais  '
              object GroupBox14: TGroupBox
                Left = 3
                Top = 3
                Width = 981
                Height = 486
                Caption = 'Observa'#231#245'es Gerais'
                TabOrder = 0
                object memxObs: TMemo
                  Left = 5
                  Top = 24
                  Width = 968
                  Height = 449
                  TabOrder = 0
                end
              end
            end
            object TabSheet36: TTabSheet
              Caption = 'Observa'#231#245'es de Interesse do Contribuinte'
              ImageIndex = 1
              object GroupBox15: TGroupBox
                Left = 1
                Top = 9
                Width = 994
                Height = 492
                Caption = 'Listagem de Observa'#231#245'es do Contribuinte (10 no m'#225'ximo) '
                TabOrder = 0
              end
            end
            object TabSheet37: TTabSheet
              Caption = 'Observa'#231#245'es de Interesse do Fisco'
              ImageIndex = 2
              object GroupBox16: TGroupBox
                Left = 1
                Top = 9
                Width = 991
                Height = 506
                Caption = 'Listagem de Observa'#231#245'es do Contribuinte ( 10 no m'#225'ximo )   '
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet24: TTabSheet
          Caption = 'CTe Geradas'
          ImageIndex = 12
          OnShow = TabSheet24Show
          object dgGridCTE: TDBGrid
            Left = 8
            Top = 48
            Width = 985
            Height = 462
            DataSource = dm.dsCTE
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'COD_CTE'
                Title.Caption = 'Cod CTe'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIE_CTE'
                Title.Caption = 'CTe S'#233'rie'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTE_NUMERO'
                Title.Caption = 'CTe N'#250'mero'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DHEMI'
                Title.Caption = 'Data Emiss'#227'o'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTE_CHAVE'
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHCTE'
                Title.Caption = 'Chave'
                Width = 141
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NPROT'
                Title.Caption = 'N. Protrocolo'
                Width = 234
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTE_CFOP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTE_NATOP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENV_CODCIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENV_CIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENV_ESTADO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INI_CODCIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INI_CIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INI_ESTADO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FIM_CODCIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FIM_CIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FIM_ESTADO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMITENTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_RG'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_CNPJCPF'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_IESTADUAL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_RSOCIAL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_FANTASIA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_TELEFONE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_ENDERECO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_NUMERO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_COMPLEMENTO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_BAIRRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_CODIGOMUNICIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_CIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_CEP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_ESTADO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_CODIGOPAIS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_PAIS'
                Width = 64
                Visible = True
              end>
          end
          object Button15: TButton
            Left = 19
            Top = 528
            Width = 87
            Height = 44
            Caption = 'Listar CTe'
            TabOrder = 1
            OnClick = Button15Click
          end
          object btnEditarCte: TBitBtn
            Left = 112
            Top = 528
            Width = 89
            Height = 44
            Caption = 'Editar'
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000060000002E00000003FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00052D354602171B34631B039C5A1A04C60000004800000002FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D2E
              3313612611BDC43C13FFAF492AFFD0522CFFB6350BFF5B1B05C900000002FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000106070C052C35440924
              293E7B877BFF907464FF8D492EFFE37E62FFC1431CFFC13D14FF000000480000
              0003FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198498981BA5BFC9625A
              50E69EC7C1FF8DBEBAFFB56D52FFE88A6DFFD16545FFC94921FF5A1903C90000
              004900000002FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF000106070C052C354454A7AAD87B887CFF9075
              64FFBA5736FFE6896FFFE5856AFFE47E5EFFE78565FFD26441FFEE7B59FFC43C
              13FF591903C800000002FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0002080A05198498981BA5BFC9BC6041FC9EC4BFFF8DC0
              BFFFDD795AFFE58162FFE48569FFE47F5DFFE5805EFFE47C5CFFEEB6A2FFEE79
              57FFC43B13FF0000004900000002FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000D2E33132EB9CFCE612611BDB04828FFC56A4FFFE881
              63FFE58A71FFE48264FFE4805FFFE48265FFE47F5DFFE6815FFFCF8062FFFFDA
              CBFFEB7251FF5A1903C90000004900000003FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0002080A0519849898625A50E6BC6041FC9EC8C4FFB56E55FFDD7F66FFE58C
              76FFE48263FFE4876EFFE4866CFFE47E5EFFE48164FFE58364FFC2512AFFF4BF
              9AFFFFE6CCFFEA7251FFC73F16FF511704C1FFFFFF00FFFFFF00FFFFFF00FFFF
              FF000D2E33132EB9CFCEC44015FFB04727FFC56F59FFE7876CFFE58465FFE48A
              72FFE48365FFE48162FFE4866BFFE58365FFE68464FFE48061FFE09974FFFFD9
              B5FFFFD1AAFFFDC2AFFFE05028FF942B08EBFFFFFF00FFFFFF00FFFFFF00052C
              35440924293E54A7AAD8907666FF8D472DFFBA5736FFE58D77FFE4876BFFE482
              63FFE48971FFE68568FFE7896BFFE79076FFE58466FFC7542EFFFFE3C5FFFFD3
              AEFFFFDBB9FFEF8667FFC43E14FF5217037FFFFFFF00FFFFFF000B3137196126
              12BCC44015FFB14929FFE88161FFE7896FFFE58E79FFE48061FFE4886FFFE590
              7AFFCC7F69FFA8614FFFBC7D6FFFBB4C27FFBF8063FFF7DDC5FFFFDFC0FFFFE6
              D8FFF08566FF55170284FFFFFF00FFFFFF00FFFFFF00FFFFFF00131313097A88
              7DFF907565FF8D472CFFE68D75FFE48061FFE4856BFFE68D75FFE89479FFEAA6
              93FFDA9582FFB58075FFC5928BFF80818CFF6DA0BCFF7B8994FFFCDFCDFFF287
              68FFC33A11FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F2801499DBF
              B8FF8DC3C3FFB5755FFFE69079FFE6937DFFE8957BFFECB0A1FFEDAF9EFFEDA9
              95FFECB3A4FFCF9D95FFB75B41FF7CD9FFFF43AAFFFF208CF5FFA85C42FFBF39
              11FC57170283FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A82F060FDB80
              67FBECAB99FFF2BDAFFFF1C1B5FFF1C1B5FFF1C1B5FFF0BCABFFF0BFB1FFF3C8
              BCFFD06038FFB29693FF73D5FFFF00B9FFFF01BEFFFF18A1FAFF2593FFFF0F4A
              82C400000047FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C858
              36E8EAAC9CF1EDB3A2FFF3CBBFFFF3CABFFFF3CBBFFFF2CABEFFF5CCBDFFF1BD
              AFFFE1A890FFF7E3D6FF4CD8F7FF0BCEFFFF00B9FFFF01BEFFFF298DFAFF2894
              FFFF144C83CA00000002FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AF31
              09B1E49682E3EFC2B7F6F5D0C4FFF5D3CBFFF4D3CAFFF7D9D2FFF3C5B9FFCA60
              3DFFFFFFFFFFFFF4E9FF6FEAEFFF1CEEFFFF0BCDFFFF00BAFFFF18A1FAFF298D
              FAFF2894FFFF0000004900000002FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00AB2D03A2E39985EAF3D6CDFAF6D7CEFFFBE9E4FFCA6A4CFFDEAD9CFFFFFF
              FFFFFFECDBFFFFF2E9FFF68C6AFF2ABDC5DE18F5FFFF1CEEFFFF00BAFFFF01BE
              FFFF18A1FAFF2894FFFF144C83CA00000049FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00A62C0132C04D29E2FBEDEAF2FAE9E4FCF5D1C7FFDEB0A0FFFFFFFFFFFFFF
              FFFFFFF5EDFFF1916EFFC33B12FF0B4B511C1AF2FFB91CF0FFFF0BCEFFFF00BA
              FFFF01BEFFFF298DFAFF2894FFFF144C83CA00000002FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00A929008FFFFFFFF5F9E0DAF1C05432FDFFE7D7FFFFFFFFFFFFFF
              FFFFF19371FFC33B12FF55170184FFFFFF001BEEFF111BEFFFBA1CEEFFFF0BCD
              FFFF00B9FFFF18A1FAFF2A8DFAFF2894FFFF0000004A00000006FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00B73C15E4A82D035CFFFFFF00AA2E05B9D76A44FFEB82
              5EFF55170184FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001BEDFFBA1CEE
              FFFF1CEEFFFF00B9FFFF01BFFFFF3EB0F9FF5194BBCB00010213FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00A72E041FFFFFFF00FFFFFF00A8300712AA2F05B3B332
              09E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001BEDFF111BED
              FFBB1CEEFFFF09D2FFFF2DADE0FF385660FF1832434BFFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AB310706982C
              0719FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001BED
              FF111BEDFFBA3EE6FFFF537F97FF4C7F97FCFFFFFF00FFFFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0049A6DA781834492EFFFFFF00FFFFFF00FFFFFF00}
            TabOrder = 2
            OnClick = btnEditarCteClick
          end
          object btnIncCte: TButton
            Left = 207
            Top = 527
            Width = 98
            Height = 45
            Caption = 'Incluir CTe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btnIncCteClick
          end
        end
      end
      object btnGerar: TButton
        Left = 506
        Top = 615
        Width = 177
        Height = 25
        Caption = 'Gerar CTe'
        Enabled = False
        TabOrder = 2
        OnClick = btnGerarCTeClick
      end
      object Button13: TButton
        Left = 378
        Top = 615
        Width = 177
        Height = 25
        Caption = 'Validar CTe -  XML'
        TabOrder = 3
        Visible = False
        OnClick = btnValidarXMLClick
      end
      object btnGravarCTe: TBitBtn
        Left = 840
        Top = 615
        Width = 145
        Height = 25
        Caption = 'Gravar CTE'
        TabOrder = 4
        OnClick = btnGravarCTeClick
      end
      object BitBtn1: TBitBtn
        Left = 689
        Top = 615
        Width = 145
        Height = 25
        Hint = 'Cancelar Inclus'#227'o ou Altera'#231#227'o'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BitBtn1Click
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'Diversos'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 3
        Top = 3
        Width = 886
        Height = 406
        TabOrder = 0
        object btnImprimir: TButton
          Left = 8
          Top = 128
          Width = 177
          Height = 25
          Caption = 'Imprimir DACTe'
          TabOrder = 3
          OnClick = btnImprimirClick
        end
        object btnConsultar: TButton
          Left = 8
          Top = 66
          Width = 177
          Height = 25
          Caption = 'Consultar carregando XML'
          TabOrder = 4
          OnClick = btnConsultarClick
        end
        object btnValidarXML: TButton
          Left = 193
          Top = 94
          Width = 177
          Height = 25
          Caption = 'Validar XML'
          TabOrder = 1
          OnClick = btnValidarXMLClick
        end
        object btnStatusServ: TButton
          Left = 9
          Top = 6
          Width = 177
          Height = 25
          Caption = 'Status Servi'#231'o'
          TabOrder = 0
          OnClick = btnStatusServClick
        end
        object btnCancCTe: TButton
          Left = 376
          Top = 95
          Width = 177
          Height = 25
          Caption = 'Cancelamento por Evento'
          TabOrder = 6
          OnClick = btnCancCTeClick
        end
        object btnCriarEnviar: TButton
          Left = 192
          Top = 36
          Width = 177
          Height = 25
          Caption = 'Criar e Enviar'
          TabOrder = 2
          OnClick = btnCriarEnviarClick
        end
        object btnInutilizar: TButton
          Left = 192
          Top = 6
          Width = 177
          Height = 25
          Caption = 'Inutilizar Numera'#231#227'o'
          TabOrder = 5
          OnClick = btnInutilizarClick
        end
        object btnGerarCTe: TButton
          Left = 376
          Top = 6
          Width = 177
          Height = 25
          Caption = 'Gerar CTe'
          TabOrder = 7
          OnClick = btnGerarCTeClick
        end
        object btnConsCad: TButton
          Left = 9
          Top = 34
          Width = 177
          Height = 25
          Caption = 'Consulta Cadastro'
          TabOrder = 8
          OnClick = btnConsCadClick
        end
        object btnGerarPDF: TButton
          Left = 192
          Top = 128
          Width = 177
          Height = 25
          Caption = 'Gerar PDF'
          TabOrder = 9
          OnClick = btnGerarPDFClick
        end
        object btnEnviarEmail: TButton
          Left = 376
          Top = 128
          Width = 177
          Height = 25
          Caption = 'Enviar CTe Email'
          TabOrder = 10
          OnClick = btnEnviarEmailClick
        end
        object btnConsultarRecibo: TButton
          Left = 376
          Top = 36
          Width = 177
          Height = 25
          Caption = 'Consultar Recibo Lote'
          TabOrder = 11
          OnClick = btnConsultarReciboClick
        end
        object btnEnvEPEC: TButton
          Left = 377
          Top = 64
          Width = 177
          Height = 25
          Caption = 'Enviar EPEC'
          TabOrder = 12
          OnClick = btnEnvEPECClick
        end
        object btnImprimirEvento: TButton
          Left = 8
          Top = 160
          Width = 177
          Height = 25
          Caption = 'Imprimir Evento'
          TabOrder = 13
          OnClick = btnImprimirEventoClick
        end
        object btnImportarXML: TButton
          Left = 9
          Top = 96
          Width = 177
          Height = 25
          Caption = 'Importar XML'
          TabOrder = 14
          OnClick = btnImportarXMLClick
        end
        object btnConsultarChave: TButton
          Left = 192
          Top = 64
          Width = 177
          Height = 25
          Caption = 'Consultar pela Chave'
          TabOrder = 15
          OnClick = btnConsultarChaveClick
        end
        object btnEnviarEventoEmail: TButton
          Left = 376
          Top = 160
          Width = 177
          Height = 25
          Caption = 'Enviar Evento Email'
          TabOrder = 16
          OnClick = btnEnviarEventoEmailClick
        end
        object btnGerarPDFEvento: TButton
          Left = 192
          Top = 160
          Width = 177
          Height = 25
          Caption = 'Gerar PDF Evento'
          TabOrder = 17
          OnClick = btnGerarPDFEventoClick
        end
        object btnImprimirInut: TButton
          Left = 8
          Top = 192
          Width = 177
          Height = 25
          Caption = 'Imprimir Inutiliza'#231#227'o'
          TabOrder = 18
          OnClick = btnImprimirInutClick
        end
        object btnGerarPDFInut: TButton
          Left = 192
          Top = 192
          Width = 177
          Height = 25
          Caption = 'Gerar PDF Inutiliza'#231#227'o'
          TabOrder = 19
          OnClick = btnGerarPDFInutClick
        end
        object btnAtualizarBD: TButton
          Left = 8
          Top = 240
          Width = 161
          Height = 25
          Caption = 'Atualizar BD'
          TabOrder = 20
          OnClick = btnAtualizarBDClick
        end
      end
    end
    object TabSheet19: TTabSheet
      Caption = 'Eventos'
      ImageIndex = 2
      object PageControl2: TPageControl
        Left = 16
        Top = 3
        Width = 953
        Height = 590
        ActivePage = TabSheet9
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = 'Respostas'
          object MemoResp: TMemo
            Left = 0
            Top = 0
            Width = 945
            Height = 559
            Align = alClient
            TabOrder = 0
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'XML Resposta'
          ImageIndex = 1
        end
        object TabSheet8: TTabSheet
          Caption = 'Log'
          ImageIndex = 2
          object memoLog: TMemo
            Left = 0
            Top = 0
            Width = 945
            Height = 559
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'CTe'
          ImageIndex = 3
          object trvwCTe: TTreeView
            Left = 0
            Top = 0
            Width = 945
            Height = 559
            Align = alClient
            Indent = 19
            TabOrder = 0
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Retorno Completo WS'
          ImageIndex = 4
          object memoRespWS: TMemo
            Left = 0
            Top = 0
            Width = 945
            Height = 559
            Align = alClient
            TabOrder = 0
          end
        end
        object Dados: TTabSheet
          Caption = 'Dados'
          ImageIndex = 5
          object MemoDados: TMemo
            Left = 0
            Top = 0
            Width = 945
            Height = 559
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet20: TTabSheet
      Caption = 'Outros'
      ImageIndex = 3
      OnShow = TabSheet20Show
      object Label7: TLabel
        Left = 8
        Top = 237
        Width = 72
        Height = 16
        Caption = 'Logo Marca'
      end
      object sbtnLogoMarca: TSpeedButton
        Left = 235
        Top = 249
        Width = 23
        Height = 24
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = sbtnLogoMarcaClick
      end
      object sbtnPathSalvar: TSpeedButton
        Left = 235
        Top = 297
        Width = 23
        Height = 24
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = sbtnPathSalvarClick
      end
      object Label30: TLabel
        Left = 24
        Top = 386
        Width = 40
        Height = 16
        Caption = 'SERIE'
        FocusControl = DBEdit1
      end
      object Label31: TLabel
        Left = 99
        Top = 386
        Width = 79
        Height = 16
        Caption = 'ULTIMO CTe'
        FocusControl = DBEdit2
      end
      object Label32: TLabel
        Left = 201
        Top = 386
        Width = 57
        Height = 16
        Caption = 'MODELO'
        FocusControl = DBEdit3
      end
      object Label33: TLabel
        Left = 24
        Top = 567
        Width = 285
        Height = 16
        Caption = '* Obs. Na tabela Series em Modelo  = CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtLogoMarca: TEdit
        Left = 8
        Top = 253
        Width = 228
        Height = 24
        TabOrder = 0
      end
      object ckSalvar: TCheckBox
        Left = 8
        Top = 285
        Width = 209
        Height = 15
        Caption = 'Salvar Arquivos de Envio e Resposta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtPathLogs: TEdit
        Left = 8
        Top = 301
        Width = 228
        Height = 24
        TabOrder = 2
      end
      object GroupBox4: TGroupBox
        Left = 277
        Top = 12
        Width = 265
        Height = 141
        Caption = 'WebService'
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 231
          Height = 13
          Caption = 'Selecione UF da SEFAZ-Autorizadora (Emitente):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ckVisualizar: TCheckBox
          Left = 8
          Top = 118
          Width = 153
          Height = 17
          Caption = 'Visualizar Mensagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object cbUF: TComboBox
          Left = 8
          Top = 32
          Width = 249
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 24
          ParentFont = False
          TabOrder = 1
          Text = 'SP'
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object rgTipoAmb: TRadioGroup
          Left = 3
          Top = 60
          Width = 249
          Height = 52
          Caption = 'Selecione o Ambiente de Destino'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Produ'#231#227'o'
            'Homologa'#231#227'o')
          TabOrder = 2
        end
      end
      object gbProxy: TGroupBox
        Left = 277
        Top = 184
        Width = 265
        Height = 105
        Caption = 'Proxy'
        TabOrder = 4
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 28
          Height = 16
          Caption = 'Host'
        end
        object Label9: TLabel
          Left = 208
          Top = 16
          Width = 32
          Height = 16
          Caption = 'Porta'
        end
        object Label10: TLabel
          Left = 8
          Top = 56
          Width = 47
          Height = 16
          Caption = 'Usu'#225'rio'
        end
        object Label11: TLabel
          Left = 138
          Top = 56
          Width = 39
          Height = 16
          Caption = 'Senha'
        end
        object edtProxyHost: TEdit
          Left = 8
          Top = 32
          Width = 193
          Height = 24
          TabOrder = 0
        end
        object edtProxyPorta: TEdit
          Left = 208
          Top = 32
          Width = 50
          Height = 24
          TabOrder = 1
        end
        object edtProxyUser: TEdit
          Left = 8
          Top = 72
          Width = 123
          Height = 24
          TabOrder = 2
        end
        object edtProxySenha: TEdit
          Left = 135
          Top = 72
          Width = 123
          Height = 24
          PasswordChar = '*'
          TabOrder = 3
        end
      end
      object GroupBox5: TGroupBox
        Left = 601
        Top = 60
        Width = 264
        Height = 324
        Caption = 'Email'
        TabOrder = 5
        object Label3: TLabel
          Left = 8
          Top = 16
          Width = 92
          Height = 16
          Caption = 'Servidor SMTP'
        end
        object Label4: TLabel
          Left = 206
          Top = 16
          Width = 32
          Height = 16
          Caption = 'Porta'
        end
        object Label5: TLabel
          Left = 8
          Top = 56
          Width = 47
          Height = 16
          Caption = 'Usu'#225'rio'
        end
        object Label26: TLabel
          Left = 137
          Top = 56
          Width = 39
          Height = 16
          Caption = 'Senha'
        end
        object Label27: TLabel
          Left = 8
          Top = 96
          Width = 155
          Height = 16
          Caption = 'Assunto do email enviado'
        end
        object Label28: TLabel
          Left = 8
          Top = 168
          Width = 124
          Height = 16
          Caption = 'Mensagem do Email'
        end
        object edtSmtpHost: TEdit
          Left = 8
          Top = 32
          Width = 193
          Height = 24
          TabOrder = 0
        end
        object edtSmtpPort: TEdit
          Left = 206
          Top = 32
          Width = 51
          Height = 24
          TabOrder = 1
        end
        object edtSmtpUser: TEdit
          Left = 8
          Top = 72
          Width = 120
          Height = 24
          TabOrder = 2
        end
        object edtSmtpPass: TEdit
          Left = 137
          Top = 72
          Width = 120
          Height = 24
          TabOrder = 3
        end
        object edtEmailAssunto: TEdit
          Left = 8
          Top = 112
          Width = 249
          Height = 24
          TabOrder = 4
        end
        object cbEmailSSL: TCheckBox
          Left = 10
          Top = 144
          Width = 167
          Height = 17
          Caption = 'SMTP exige conex'#227'o segura'
          TabOrder = 5
        end
        object mmEmailMsg: TMemo
          Left = 8
          Top = 184
          Width = 249
          Height = 130
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 12
        Width = 265
        Height = 144
        Caption = 'Certificado'
        TabOrder = 6
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 53
          Height = 16
          Caption = 'Caminho'
        end
        object Label2: TLabel
          Left = 8
          Top = 56
          Width = 39
          Height = 16
          Caption = 'Senha'
        end
        object sbtnCaminhoCert: TSpeedButton
          Left = 235
          Top = 32
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object Label25: TLabel
          Left = 8
          Top = 96
          Width = 102
          Height = 16
          Caption = 'N'#250'mero de S'#233'rie'
        end
        object sbtnGetCert: TSpeedButton
          Left = 235
          Top = 110
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbtnGetCertClick
        end
        object edtCaminho: TEdit
          Left = 8
          Top = 32
          Width = 225
          Height = 24
          TabOrder = 0
        end
        object edtSenha: TEdit
          Left = 8
          Top = 72
          Width = 249
          Height = 24
          PasswordChar = '*'
          TabOrder = 1
        end
        object edtNumSerie: TEdit
          Left = 8
          Top = 112
          Width = 225
          Height = 24
          TabOrder = 2
        end
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 408
        Width = 61
        Height = 24
        DataField = 'SERIE_CTE'
        DataSource = dsSeries
        TabOrder = 7
      end
      object DBEdit2: TDBEdit
        Left = 100
        Top = 408
        Width = 85
        Height = 24
        DataField = 'ULTIMO_NUMERO'
        DataSource = dsSeries
        TabOrder = 8
      end
      object DBEdit3: TDBEdit
        Left = 207
        Top = 408
        Width = 30
        Height = 24
        DataField = 'MODELO'
        DataSource = dsSeries
        TabOrder = 9
      end
      object Button27: TButton
        Left = 280
        Top = 408
        Width = 75
        Height = 25
        Caption = 'Corrigir'
        TabOrder = 10
        OnClick = Button27Click
      end
      object DBGrid1: TDBGrid
        Left = 24
        Top = 441
        Width = 577
        Height = 120
        DataSource = dsSeries
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SERIE_CTE'
            Title.Caption = 'Serie CTe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMO_NUMERO'
            Title.Caption = 'Ultimo Num'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Title.Caption = 'Modelo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODSERIE'
            Title.Caption = 'Empresa'
            Width = 77
            Visible = True
          end>
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 834
    Top = 520
  end
  object ACBrCTe1: TACBrCTe
    MAIL = ACBrMail1
    OnStatusChange = ACBrCTe1StatusChange
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DACTE = ACBrCTeDACTeRL1
    Left = 674
    Top = 510
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 747
    Top = 510
  end
  object ACBrCTeDACTeRL1: TACBrCTeDACTeRL
    ACBrCTE = ACBrCTe1
    ImprimirHoraSaida = False
    MostrarPreview = True
    MostrarStatus = True
    TipoDACTE = tiSemGeracao
    TamanhoPapel = tpA4
    NumCopias = 1
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CTeCancelada = False
    ExibirResumoCanhoto = False
    EPECEnviado = False
    ImprimirDescPorc = False
    PrintDialog = True
    Left = 900
    Top = 503
  end
  object qSeries: TZQuery
    Connection = dm.con
    SQL.Strings = (
      'select * from series where modelo = '#39'CT'#39' order by codserie')
    Params = <>
    Left = 96
    Top = 371
    object qSeriesSERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
    end
    object qSeriesULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object qSeriesCODSERIE: TWideStringField
      FieldName = 'CODSERIE'
      Size = 3
    end
    object qSeriesNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
    object qSeriesICMS_DESTACADO: TFloatField
      FieldName = 'ICMS_DESTACADO'
    end
    object qSeriesMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qSeriesSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 3
    end
  end
  object dsSeries: TDataSource
    DataSet = cdsSeries
    Left = 268
    Top = 379
  end
  object cdsSeries: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSeries'
    Left = 212
    Top = 371
    object cdsSeriesSERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
    end
    object cdsSeriesULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object cdsSeriesCODSERIE: TWideStringField
      FieldName = 'CODSERIE'
      Size = 3
    end
    object cdsSeriesNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
    object cdsSeriesICMS_DESTACADO: TFloatField
      FieldName = 'ICMS_DESTACADO'
    end
    object cdsSeriesMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsSeriesSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 3
    end
  end
  object dspSeries: TDataSetProvider
    DataSet = qSeries
    Left = 164
    Top = 371
  end
end
