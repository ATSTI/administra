object fSat: TfSat
  Left = 192
  Top = 106
  Width = 1329
  Height = 705
  Caption = 'S.A.T'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1321
    Height = 254
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'SAT'
      object Label25: TLabel
        Left = 72
        Top = 72
        Width = 181
        Height = 13
        Caption = 'Informar CPF para Nota Fiscal Paulista'
      end
      object edCPF: TEdit
        Left = 72
        Top = 88
        Width = 185
        Height = 21
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1313
        Height = 202
        Align = alTop
        TabOrder = 0
        object gpOperacao: TGroupBox
          Left = 1
          Top = 1
          Width = 169
          Height = 200
          Align = alLeft
          Caption = 'Inicializa'#231#227'o'
          TabOrder = 0
          object bInicializar: TButton
            Left = 30
            Top = 55
            Width = 105
            Height = 33
            Caption = 'Inicializar'
            TabOrder = 0
            OnClick = bInicializarClick
          end
          object cbxModelo: TComboBox
            Left = 16
            Top = 24
            Width = 133
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 1
            Items.Strings = (
              'Procurar'
              'ecfNaoFiscal'
              'ecfBematech'
              'ecfSweda'
              'ecfDaruma'
              'ecfSchalter'
              'ecfMecaf'
              'ecfYanco'
              'ecfDataRegis'
              'ecfUrano'
              'ecfICash'
              'ecfQuattro')
          end
          object GroupBox2: TGroupBox
            Left = 2
            Top = 109
            Width = 165
            Height = 89
            Align = alBottom
            Caption = 'Par'#226'metros'
            TabOrder = 2
            object btLerParams: TButton
              Left = 31
              Top = 20
              Width = 105
              Height = 25
              Caption = 'Ler'
              TabOrder = 0
              OnClick = btLerParamsClick
            end
            object btSalvarParams: TButton
              Left = 31
              Top = 52
              Width = 105
              Height = 25
              Caption = 'Salvar'
              TabOrder = 1
              OnClick = btSalvarParamsClick
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 170
          Top = 1
          Width = 1142
          Height = 200
          Align = alClient
          Caption = 'Configura'#231#227'o'
          TabOrder = 1
          object PageControl2: TPageControl
            Left = 2
            Top = 15
            Width = 1138
            Height = 183
            ActivePage = tsDadosSAT
            Align = alClient
            TabOrder = 0
            object tsDadosSAT: TTabSheet
              Caption = 'Dados do SAT CFe'
              DesignSize = (
                1130
                155)
              object Label9: TLabel
                Left = 21
                Top = 7
                Width = 40
                Height = 13
                Alignment = taRightJustify
                Caption = 'Arq.Log:'
                Color = clBtnFace
                ParentColor = False
              end
              object SbArqLog: TSpeedButton
                Left = 185
                Top = 24
                Width = 24
                Height = 22
                Caption = '...'
                OnClick = SbArqLogClick
              end
              object Label10: TLabel
                Left = 222
                Top = 7
                Width = 54
                Height = 13
                Alignment = taRightJustify
                Caption = 'Nome DLL:'
                Color = clBtnFace
                ParentColor = False
              end
              object Label1: TLabel
                Left = 16
                Top = 56
                Width = 93
                Height = 13
                Caption = 'C'#243'digo de Ativa'#231#227'o'
                Color = clBtnFace
                ParentColor = False
              end
              object Label4: TLabel
                Left = 217
                Top = 56
                Width = 36
                Height = 13
                Caption = 'C'#243'd.UF'
                Color = clBtnFace
                ParentColor = False
              end
              object Label3: TLabel
                Left = 312
                Top = 57
                Width = 51
                Height = 13
                Caption = 'Num.Caixa'
                Color = clBtnFace
                ParentColor = False
              end
              object Label8: TLabel
                Left = 152
                Top = 106
                Width = 58
                Height = 13
                Caption = 'P'#225'g.C'#243'digo:'
                Color = clBtnFace
                ParentColor = False
              end
              object Label13: TLabel
                Left = 257
                Top = 106
                Width = 33
                Height = 13
                Caption = 'Vers'#227'o'
                Color = clBtnFace
                ParentColor = False
              end
              object Label6: TLabel
                Left = 385
                Top = 55
                Width = 44
                Height = 13
                Caption = 'Ambiente'
                Color = clBtnFace
                ParentColor = False
              end
              object edLog: TEdit
                Left = 17
                Top = 24
                Width = 163
                Height = 21
                Cursor = crIBeam
                TabOrder = 0
              end
              object edNomeDLL: TEdit
                Left = 217
                Top = 24
                Width = 907
                Height = 21
                Cursor = crIBeam
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 1
              end
              object edtCodigoAtivacao: TEdit
                Left = 16
                Top = 72
                Width = 164
                Height = 21
                TabOrder = 2
                Text = '123456789'
              end
              object edtCodUF: TEdit
                Left = 218
                Top = 72
                Width = 61
                Height = 21
                TabOrder = 3
              end
              object seNumeroCaixa: TSpinEdit
                Left = 312
                Top = 73
                Width = 58
                Height = 22
                MaxValue = 999
                MinValue = 1
                TabOrder = 4
                Value = 1
              end
              object cbxUTF8: TCheckBox
                Left = 16
                Top = 103
                Width = 47
                Height = 19
                Caption = 'UTF8'
                TabOrder = 5
              end
              object sePagCod: TSpinEdit
                Left = 152
                Top = 123
                Width = 83
                Height = 22
                MaxValue = 65001
                MinValue = 0
                TabOrder = 6
                Value = 0
              end
              object sfeVersaoEnt: TEdit
                Left = 256
                Top = 123
                Width = 114
                Height = 21
                TabOrder = 7
              end
              object cbxFormatXML: TCheckBox
                Left = 17
                Top = 127
                Width = 95
                Height = 19
                Caption = 'Formatar XML'
                Checked = True
                State = cbChecked
                TabOrder = 8
              end
              object cbxAmbiente: TComboBox
                Left = 385
                Top = 72
                Width = 739
                Height = 21
                Style = csDropDownList
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 0
                TabOrder = 9
              end
              object cbxSalvarCFe: TCheckBox
                Left = 424
                Top = 120
                Width = 79
                Height = 19
                Caption = 'Salvar CFes'
                Checked = True
                State = cbChecked
                TabOrder = 10
              end
            end
            object tsDadosEmit: TTabSheet
              Caption = 'Dados Emitente'
              object Label11: TLabel
                Left = 12
                Top = 23
                Width = 27
                Height = 13
                Caption = 'CNPJ'
                Color = clBtnFace
                ParentColor = False
              end
              object Label12: TLabel
                Left = 192
                Top = 23
                Width = 64
                Height = 13
                Caption = 'Insc.Estadual'
                Color = clBtnFace
                ParentColor = False
              end
              object Label14: TLabel
                Left = 336
                Top = 23
                Width = 68
                Height = 13
                Caption = 'Insc.Municipal'
                Color = clBtnFace
                ParentColor = False
              end
              object Label15: TLabel
                Left = 192
                Top = 71
                Width = 96
                Height = 13
                Caption = 'Regime Trib. ISSQN'
                Color = clBtnFace
                ParentColor = False
              end
              object Label16: TLabel
                Left = 336
                Top = 71
                Width = 71
                Height = 13
                Caption = 'Ind.Rat.ISSQN'
                Color = clBtnFace
                ParentColor = False
              end
              object Label17: TLabel
                Left = 12
                Top = 73
                Width = 83
                Height = 13
                Caption = 'Regime Tributario'
                Color = clBtnFace
                ParentColor = False
              end
              object edtEmitCNPJ: TEdit
                Left = 12
                Top = 38
                Width = 166
                Height = 21
                Cursor = crIBeam
                TabOrder = 0
              end
              object edtEmitIE: TEdit
                Left = 192
                Top = 38
                Width = 134
                Height = 21
                Cursor = crIBeam
                TabOrder = 1
              end
              object edtEmitIM: TEdit
                Left = 336
                Top = 38
                Width = 134
                Height = 21
                Cursor = crIBeam
                TabOrder = 2
              end
              object cbxRegTribISSQN: TComboBox
                Left = 192
                Top = 87
                Width = 130
                Height = 21
                Style = csDropDownList
                ItemHeight = 0
                TabOrder = 4
              end
              object cbxIndRatISSQN: TComboBox
                Left = 336
                Top = 87
                Width = 134
                Height = 21
                Style = csDropDownList
                ItemHeight = 0
                TabOrder = 5
              end
              object cbxRegTributario: TComboBox
                Left = 12
                Top = 87
                Width = 166
                Height = 21
                Style = csDropDownList
                ItemHeight = 0
                TabOrder = 3
              end
            end
            object tsDadosSwHouse: TTabSheet
              Caption = 'Dados Sw.House'
              DesignSize = (
                1130
                155)
              object Label2: TLabel
                Left = 10
                Top = 15
                Width = 27
                Height = 13
                Caption = 'CNPJ'
                Color = clBtnFace
                ParentColor = False
              end
              object Label5: TLabel
                Left = 10
                Top = 71
                Width = 181
                Height = 13
                Caption = 'Assinatura Sw.House (344 caracteres)'
                Color = clBtnFace
                ParentColor = False
              end
              object edtSwHCNPJ: TEdit
                Left = 10
                Top = 31
                Width = 848
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 0
              end
              object edtSwHAssinatura: TEdit
                Left = 10
                Top = 89
                Width = 1113
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 1
              end
            end
            object tsRede: TTabSheet
              Caption = 'Rede'
              ImageIndex = 4
              object gbIPFix: TGroupBox
                Left = 160
                Top = 48
                Width = 289
                Height = 105
                Caption = 'IPFIX'
                TabOrder = 1
                Visible = False
                object lSSID2: TLabel
                  Left = 36
                  Top = 21
                  Width = 10
                  Height = 13
                  Caption = 'IP'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID3: TLabel
                  Left = 21
                  Top = 51
                  Width = 26
                  Height = 13
                  Caption = 'Mask'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID4: TLabel
                  Left = 4
                  Top = 81
                  Width = 42
                  Height = 13
                  Caption = 'Gateway'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID5: TLabel
                  Left = 160
                  Top = 21
                  Width = 29
                  Height = 13
                  Caption = 'DNS1'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID6: TLabel
                  Left = 159
                  Top = 49
                  Width = 29
                  Height = 13
                  Caption = 'DNS2'
                  Color = clBtnFace
                  ParentColor = False
                end
                object edRedeIP: TEdit
                  Left = 60
                  Top = 13
                  Width = 88
                  Height = 21
                  TabOrder = 0
                end
                object edRedeMask: TEdit
                  Left = 60
                  Top = 43
                  Width = 88
                  Height = 21
                  TabOrder = 1
                end
                object edRedeGW: TEdit
                  Left = 60
                  Top = 73
                  Width = 88
                  Height = 21
                  TabOrder = 2
                end
                object edRedeDNS1: TEdit
                  Left = 196
                  Top = 13
                  Width = 87
                  Height = 21
                  TabOrder = 3
                end
                object edRedeDNS2: TEdit
                  Left = 196
                  Top = 43
                  Width = 87
                  Height = 21
                  TabOrder = 4
                end
              end
              object gbPPPoE: TGroupBox
                Left = 160
                Top = 48
                Width = 289
                Height = 105
                Caption = 'PPPoE'
                TabOrder = 0
                Visible = False
                object lSSID7: TLabel
                  Left = 17
                  Top = 24
                  Width = 36
                  Height = 13
                  Caption = 'Usuario'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID8: TLabel
                  Left = 17
                  Top = 54
                  Width = 31
                  Height = 13
                  Caption = 'Senha'
                  Color = clBtnFace
                  ParentColor = False
                end
                object edRedeUsuario: TEdit
                  Left = 64
                  Top = 16
                  Width = 88
                  Height = 21
                  TabOrder = 0
                end
                object edRedeSenha: TEdit
                  Left = 64
                  Top = 46
                  Width = 88
                  Height = 21
                  TabOrder = 1
                end
              end
              object rgRedeTipoInter: TRadioGroup
                Left = 4
                Top = 0
                Width = 144
                Height = 41
                Caption = 'Tipo Rede'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'ETHE'
                  'WIFI')
                TabOrder = 2
              end
              object gbWiFi: TGroupBox
                Left = 4
                Top = 48
                Width = 144
                Height = 105
                Caption = 'WiFi'
                TabOrder = 3
                Visible = False
                object lSSID: TLabel
                  Left = 8
                  Top = 22
                  Width = 28
                  Height = 13
                  Caption = 'SSID:'
                  Color = clBtnFace
                  ParentColor = False
                end
                object Label24: TLabel
                  Left = 8
                  Top = 52
                  Width = 22
                  Height = 13
                  Caption = 'Seg:'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID1: TLabel
                  Left = 8
                  Top = 82
                  Width = 31
                  Height = 13
                  Caption = 'Senha'
                  Color = clBtnFace
                  ParentColor = False
                end
                object edRedeSSID: TEdit
                  Left = 47
                  Top = 14
                  Width = 82
                  Height = 21
                  TabOrder = 0
                end
                object cbxRedeSeg: TComboBox
                  Left = 47
                  Top = 44
                  Width = 82
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  ItemIndex = 1
                  TabOrder = 1
                  Text = 'WEP'
                  Items.Strings = (
                    'NONE'
                    'WEP'
                    'WPA-PERSONAL'
                    'WPA-ENTERPRISE')
                end
                object edRedeCodigo: TEdit
                  Left = 47
                  Top = 74
                  Width = 82
                  Height = 21
                  TabOrder = 2
                end
              end
              object rgRedeTipoLan: TRadioGroup
                Left = 160
                Top = 0
                Width = 288
                Height = 41
                Caption = 'Tipo Rede'
                Columns = 3
                ItemIndex = 0
                Items.Strings = (
                  'DHCP'
                  'PPPoE'
                  'IPFIX')
                TabOrder = 4
              end
              object gbProxy: TGroupBox
                Left = 458
                Top = 0
                Width = 150
                Height = 153
                Caption = 'Proxy'
                TabOrder = 5
                object lSSID9: TLabel
                  Left = 24
                  Top = 48
                  Width = 10
                  Height = 13
                  Caption = 'IP'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID10: TLabel
                  Left = 11
                  Top = 78
                  Width = 25
                  Height = 13
                  Caption = 'Porta'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID11: TLabel
                  Left = 3
                  Top = 104
                  Width = 36
                  Height = 13
                  Caption = 'Usuario'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lSSID12: TLabel
                  Left = 8
                  Top = 130
                  Width = 31
                  Height = 13
                  Caption = 'Senha'
                  Color = clBtnFace
                  ParentColor = False
                end
                object cbxRedeProxy: TComboBox
                  Left = 8
                  Top = 16
                  Width = 129
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  ItemIndex = 0
                  TabOrder = 0
                  Text = '0= N'#227'o usa proxy'
                  Items.Strings = (
                    '0= N'#227'o usa proxy'
                    '1= Proxy com configura'#231#227'o'
                    '2= Proxy transparente')
                end
                object edRedeProxyIP: TEdit
                  Left = 49
                  Top = 44
                  Width = 88
                  Height = 21
                  Enabled = False
                  TabOrder = 1
                end
                object edRedeProxyUser: TEdit
                  Left = 49
                  Top = 96
                  Width = 88
                  Height = 21
                  Enabled = False
                  TabOrder = 2
                end
                object edRedeProxySenha: TEdit
                  Left = 49
                  Top = 122
                  Width = 88
                  Height = 21
                  Enabled = False
                  TabOrder = 3
                end
                object edRedeProxyPorta: TSpinEdit
                  Left = 49
                  Top = 70
                  Width = 88
                  Height = 22
                  Enabled = False
                  MaxValue = 999999
                  MinValue = 0
                  TabOrder = 4
                  Value = 0
                end
              end
            end
            object Impressao: TTabSheet
              Caption = 'Impressao'
              object GroupBox3: TGroupBox
                Left = 0
                Top = 0
                Width = 874
                Height = 155
                Align = alClient
                Caption = 'Fortes'
                TabOrder = 0
                object Label19: TLabel
                  Left = 8
                  Top = 16
                  Width = 36
                  Height = 13
                  Caption = 'Largura'
                  Color = clBtnFace
                  ParentColor = False
                end
                object Label20: TLabel
                  Left = 96
                  Top = 16
                  Width = 25
                  Height = 13
                  Caption = 'Topo'
                  Color = clBtnFace
                  ParentColor = False
                end
                object Label21: TLabel
                  Left = 8
                  Top = 64
                  Width = 30
                  Height = 13
                  Caption = 'Fundo'
                  Color = clBtnFace
                  ParentColor = False
                end
                object Label22: TLabel
                  Left = 96
                  Top = 64
                  Width = 45
                  Height = 13
                  Caption = 'Esquerda'
                  Color = clBtnFace
                  ParentColor = False
                end
                object Label23: TLabel
                  Left = 184
                  Top = 64
                  Width = 30
                  Height = 13
                  Caption = 'Direita'
                  Color = clBtnFace
                  ParentColor = False
                end
                object lImpressora: TLabel
                  Left = 136
                  Top = 120
                  Width = 93
                  Height = 13
                  Caption = 'Impresssora Default'
                  Color = clBtnFace
                  ParentColor = False
                end
                object seLargura: TSpinEdit
                  Left = 8
                  Top = 30
                  Width = 64
                  Height = 22
                  MaxValue = 9999
                  MinValue = 0
                  TabOrder = 0
                  Value = 0
                end
                object seMargemTopo: TSpinEdit
                  Left = 96
                  Top = 30
                  Width = 64
                  Height = 22
                  MaxValue = 9999
                  MinValue = 0
                  TabOrder = 1
                  Value = 0
                end
                object seMargemFundo: TSpinEdit
                  Left = 8
                  Top = 78
                  Width = 64
                  Height = 22
                  MaxValue = 9999
                  MinValue = 0
                  TabOrder = 2
                  Value = 0
                end
                object seMargemEsquerda: TSpinEdit
                  Left = 96
                  Top = 78
                  Width = 64
                  Height = 22
                  MaxValue = 9999
                  MinValue = 0
                  TabOrder = 3
                  Value = 0
                end
                object seMargemDireita: TSpinEdit
                  Left = 184
                  Top = 78
                  Width = 64
                  Height = 22
                  MaxValue = 9999
                  MinValue = 0
                  TabOrder = 4
                  Value = 0
                end
                object bImpressora: TButton
                  Left = 8
                  Top = 112
                  Width = 122
                  Height = 25
                  Caption = 'Definir Impressora'
                  TabOrder = 5
                  OnClick = bImpressoraClick
                end
                object cbUsarFortes: TRadioButton
                  Left = 184
                  Top = 16
                  Width = 78
                  Height = 19
                  Caption = 'Usar Fortes'
                  TabOrder = 6
                end
                object cbPreview: TCheckBox
                  Left = 192
                  Top = 40
                  Width = 61
                  Height = 19
                  Caption = 'Preview'
                  TabOrder = 7
                end
              end
              object GroupBox4: TGroupBox
                Left = 874
                Top = 0
                Width = 256
                Height = 155
                Align = alRight
                Caption = 'EscPOS'
                TabOrder = 1
                DesignSize = (
                  256
                  155)
                object Label7: TLabel
                  Left = 16
                  Top = 88
                  Width = 79
                  Height = 13
                  Anchors = [akTop, akRight]
                  Caption = 'Porta Impressora'
                  Color = clBtnFace
                  ParentColor = False
                end
                object edtPorta: TEdit
                  Left = 16
                  Top = 105
                  Width = 215
                  Height = 21
                  Anchors = [akTop, akRight]
                  TabOrder = 0
                  Text = '\\127.0.0.1\EPSON'
                end
                object btSerial: TBitBtn
                  Left = 177
                  Top = 40
                  Width = 54
                  Height = 45
                  Anchors = [akTop, akRight]
                  Caption = 'Serial'
                  ModalResult = 1
                  TabOrder = 1
                  OnClick = btSerialClick
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232
                    3232323E3E3E565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF503200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    565656565656FFFFFFFFFFFF3232322626262626262626262626265032005032
                    000000504873FFFFFFFFFFFFFFFFFFFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFF6E
                    6E6E32323232323232323232323250320000005025AAFFFFFFFFFFFFFF565656
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656563232323232326E6E6E5032005032
                    008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFF50320050320056
                    56564A4A4A5050003232325032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
                    FFFFFF5656563E3E3E2626265032006262625656565050003232325032005032
                    008FFF6B8ED4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050005050006E
                    6E6E5656565050003250005032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686865656565656563250005032005032
                    008FFF6B48B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323E
                    3E3EA4A0A08686866E6E6E565656503200C0C0C02557FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF5050004A4A4A3232323232323232323232325032
                    00FFFFFF6B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                  Layout = blGlyphTop
                end
                object cbUsarEscPos: TRadioButton
                  Left = 8
                  Top = 16
                  Width = 85
                  Height = 19
                  Caption = 'Usar EscPOS'
                  TabOrder = 2
                end
              end
            end
          end
        end
      end
    end
  end
  object PageControl3: TPageControl
    Left = 0
    Top = 254
    Width = 1321
    Height = 405
    ActivePage = tsLog
    Align = alClient
    TabOrder = 1
    object tsLog: TTabSheet
      Caption = 'Log de Comandos'
      object mLog: TMemo
        Left = 0
        Top = 0
        Width = 1313
        Height = 377
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tsGerado: TTabSheet
      Caption = 'XML Gerado'
      inline mVendaEnviar: TMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 196
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tsRecebido: TTabSheet
      Caption = 'XML Recebido'
      inline mRecebido: TWebBrowser
        Left = 0
        Top = 0
        Width = 1313
        Height = 377
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C000000B4870000F72600000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tsCancelamento: TTabSheet
      Caption = 'XML Cancelamento'
      inline mCancelamentoEnviar: TMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 171
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 0
        Top = 171
        Width = 794
        Height = 25
        Align = alBottom
        TabOrder = 1
        object Label18: TLabel
          Left = 1
          Top = 1
          Width = 105
          Height = 13
          Align = alLeft
          Caption = 'Chave Cancelamento:'
          Color = clBtnFace
          ParentColor = False
          Layout = tlCenter
        end
        object edChaveCancelamento: TEdit
          Left = 127
          Top = 1
          Width = 581
          Height = 21
          TabOrder = 0
        end
      end
    end
    object tsRedeXML: TTabSheet
      Caption = 'XML Rede'
      ImageIndex = 4
      inline mRede: TWebBrowser
        Left = 0
        Top = 0
        Width = 794
        Height = 196
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C00000010520000421400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object ACBrSAT1: TACBrSAT
    Config.infCFe_versaoDadosEnt = 0.050000000000000000
    Config.ide_numeroCaixa = 0
    Config.ide_tpAmb = taHomologacao
    Config.emit_cRegTrib = RTSimplesNacional
    Config.emit_cRegTribISSQN = RTISSMicroempresaMunicipal
    Config.emit_indRatISSQN = irSim
    Config.EhUTF8 = False
    Config.PaginaDeCodigo = 0
    ConfigArquivos.PrefixoArqCFe = 'AD'
    ConfigArquivos.PrefixoArqCFeCanc = 'ADC'
    Rede.tipoInter = infETHE
    Rede.seg = segNONE
    Rede.tipoLan = lanDHCP
    Rede.proxy = 0
    Rede.proxy_porta = 0
    Left = 608
    Top = 64
  end
  object MainMenu1: TMainMenu
    Left = 224
    Top = 224
    object MenuItem1: TMenuItem
      Caption = 'Ativa'#231#227'o'
      object mAtivarSAT: TMenuItem
        Caption = 'Ativar SAT'
        OnClick = mAtivarSATClick
      end
      object mComunicarCertificado: TMenuItem
        Caption = 'Comunicar Certificado'
        OnClick = mComunicarCertificadoClick
      end
      object mAssociarAssinatura: TMenuItem
        Caption = 'Associar Assinatura'
        OnClick = mAssociarAssinaturaClick
      end
      object MenuItem3: TMenuItem
        Caption = '-'
      end
      object mBloquearSAT: TMenuItem
        Caption = 'Bloquear SAT'
        OnClick = mBloquearSATClick
      end
      object mDesbloquearSAT: TMenuItem
        Caption = 'Desbloquear SAT'
        OnClick = mDesbloquearSATClick
      end
      object MenuItem4: TMenuItem
        Caption = '-'
      end
      object MenuItem5: TMenuItem
        Caption = 'Trocar  C'#243'digo de Ativa'#231#227'o'
        OnClick = MenuItem5Click
      end
    end
    object MenuItem2: TMenuItem
      Caption = 'Venda'
      object mGerarVenda: TMenuItem
        Caption = 'Gerar Venda'
        OnClick = mGerarVendaClick
      end
      object mEnviarVenda: TMenuItem
        Caption = 'Enviar Venda'
        OnClick = mEnviarVendaClick
      end
      object mImprimirExtratoVenda: TMenuItem
        Caption = 'Imprimir Extrato Venda'
        OnClick = mImprimirExtratoVendaClick
      end
      object mImprimirExtratoVendaResumido: TMenuItem
        Caption = 'Imprimir Extrato Venda Resumido'
        OnClick = mImprimirExtratoVendaResumidoClick
      end
    end
    object MenuItem12: TMenuItem
      Caption = 'Cancelamento'
      object miGerarXMLCancelamento: TMenuItem
        Caption = 'Gerar XML Cancelamento'
      end
      object miEnviarCancelamento: TMenuItem
        Caption = 'Enviar Cancelamento'
      end
      object miImprimirExtratoCancelamento: TMenuItem
        Caption = 'Imprimir Extrato Cancelamento'
      end
    end
    object MenuItem6: TMenuItem
      Caption = 'Consultas'
      object mConsultarStatusOperacional: TMenuItem
        Caption = 'Consultar Status Operacional'
      end
      object mConsultarSAT: TMenuItem
        Caption = 'Consultar SAT'
      end
      object mConsultarNumeroSessao: TMenuItem
        Caption = 'Consultar Numero Sess'#227'o'
      end
    end
    object MenuItem7: TMenuItem
      Caption = 'Configura'#231#227'o'
      object mAtaulizarSoftwareSAT: TMenuItem
        Caption = 'Atualizar Software SAT'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object LerXMLinterfaceRede1: TMenuItem
        Caption = 'Ler XML Interface Rede'
      end
      object GerarXMLInterfaceRede1: TMenuItem
        Caption = 'Gerar XML Interface Rede'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mConfigurarInterfaceRede: TMenuItem
        Caption = 'Configurar Interface Rede'
      end
    end
    object MenuItem8: TMenuItem
      Caption = 'Diversos'
      object mTesteFimAFim: TMenuItem
        Caption = 'Teste Fim a Fim'
      end
      object mExtrairLogs: TMenuItem
        Caption = 'Extrair Logs'
      end
    end
    object mLimpar: TMenuItem
      Caption = 'Limpar'
    end
  end
  object sds_Movimento: TSQLDataSet
    CommandText = 
      'select mov.*'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.OBS'#13#10'    ' +
      '    , cli.CNPJ'#13#10'        , vei.PLACA'#13#10'        , vei.MARCA_MODELO'#13 +
      #10'        , usu.NOMEUSUARIO'#13#10'        , forn.NOMEFORNECEDOR'#13#10'     ' +
      '   , nat.DESCNATUREZA'#13#10'        , alm.NOME AS ALMOXARIFADO'#13#10'     ' +
      '   , nat.TIPOTITULO'#13#10'        , nat.BAIXAMOVIMENTO '#13#10'from MOVIMEN' +
      'TO mov '#13#10'left outer join CLIENTES cli on cli.CODCLIENTE = mov.CO' +
      'DCLIENTE '#13#10'left outer join VEICULO vei on vei.COD_CLIENTE = mov.' +
      'CODCLIENTE '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = mov' +
      '.CODVENDEDOR '#13#10'left outer join FORNECEDOR forn on forn.CODFORNEC' +
      'EDOR =  mov.CODFORNECEDOR '#13#10'inner join NATUREZAOPERACAO nat on  ' +
      'nat.CODNATUREZA = mov.CODNATUREZA '#13#10'left outer join PLANO alm on' +
      ' alm.CODIGO =  mov.CODALMOXARIFADO where mov.CODMOVIMENTO = :pCO' +
      'DMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 552
    Top = 346
    object sds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object sds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object sds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object sds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
  object dsp_Movimento: TDataSetProvider
    DataSet = sds_Movimento
    UpdateMode = upWhereKeyOnly
    Left = 583
    Top = 346
  end
  object cds_Movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Movimento'
    Left = 615
    Top = 346
    object cds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object cds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object cds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
  object sdsItensNF: TSQLDataSet
    CommandText = 
      'select vd.codmovimento, md.CODPRODUTO, md.coddetalhe, '#13#10'        ' +
      '  md.QUANTIDADE,          md.PRECO,'#13#10'          md.CFOP,         ' +
      ' md.DESCPRODUTO, md.OBS,'#13#10'          case when udf_Pos('#39'-'#39', pr.CO' +
      'DPRO) > 0 then '#13#10'          udf_Copy(pr.CODPRO, 0, (udf_Pos('#39'-'#39', ' +
      'pr.CODPRO)-1))'#13#10'          ELSE'#13#10'          pr.CODPRO'#13#10'          E' +
      'ND as codpro,'#13#10'          pr.UNIDADEMEDIDA,'#13#10'          UDF_TRIM(m' +
      'd.CST) CST,'#13#10'          md.ICMS, md.CSOSN,'#13#10'          UDF_ROUNDDE' +
      'C(md.pIPI, 2) as pIPI,'#13#10'          UDF_ROUNDDEC(md.FRETE, 2) as F' +
      'RETE,'#13#10'          UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DES' +
      'CONTO,'#13#10'          UDF_ROUNDDEC(md.vIPI, 2) as vIPI,'#13#10'          U' +
      'DF_ROUNDDEC(md.VLR_BASEICMS, 2) as VLR_BASEICMS,'#13#10'          UDF_' +
      'ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, '#13#10'          UDF_ROUNDD' +
      'EC(md.VLR_BASE, 2) as VLR_BASE,'#13#10'          UDF_ROUNDDEC(md.ICMS_' +
      'SUBST, 2) as ICMS_SUBST,'#13#10'          UDF_ROUNDDEC(md.ICMS_SUBSTD,' +
      ' 2) as ICMS_SUBSTD, '#13#10'          UDF_ROUNDDEC(md.VALOR_PIS, 2) as' +
      ' VALOR_PIS, '#13#10'          UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALO' +
      'R_COFINS, '#13#10'          UDF_ROUNDDEC((md.VLR_BASE * md.QUANTIDADE)' +
      ', 2) as VALTOTAL, '#13#10'          UDF_ROUNDDEC(md.VALOR_SEGURO, 2) a' +
      's VALOR_SEGURO,'#13#10'          UDF_ROUNDDEC(md.VALOR_OUTROS, 2) as V' +
      'ALOR_OUTROS,'#13#10'          UDF_ROUNDDEC(md.II, 2) as II,'#13#10'         ' +
      ' UDF_ROUNDDEC(md.BCII, 2) as BCII,'#13#10'          md.CSTIPI, md.CSTP' +
      'IS, md.CSTCOFINS, md.PPIS, md.PCOFINS,'#13#10'          md.NITEMPED, m' +
      'd.PEDIDO, MD.VLRBC_IPI, MD.VLRBC_PIS,'#13#10'          md.VLRBC_COFINS' +
      ', md.VLRTOT_TRIB, pr.COD_BARRA'#13#10'          , pr.NCM '#13#10'          ,' +
      ' md.ORIGEM'#13#10'from VENDA vd '#13#10'inner join MOVIMENTODETALHE md on'#13#10'm' +
      'd.CODMOVIMENTO = vd.CODMOVIMENTO '#13#10'inner join NOTAFISCAL nf on'#13#10 +
      'nf.CODVENDA = vd.CODVENDA'#13#10'inner join PRODUTOS pr on '#13#10'pr.CODPRO' +
      'DUTO = md.CODPRODUTO'#13#10'where vd.CODVENDA = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 456
    Top = 379
    object sdsItensNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsItensNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsItensNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sdsItensNFCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object sdsItensNFCODPRO: TStringField
      FieldName = 'CODPRO'
      ReadOnly = True
      Size = 254
    end
    object sdsItensNFUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object sdsItensNFICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object sdsItensNFPIPI: TFloatField
      FieldName = 'PIPI'
      ReadOnly = True
    end
    object sdsItensNFVIPI: TFloatField
      FieldName = 'VIPI'
      ReadOnly = True
    end
    object sdsItensNFVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
      ReadOnly = True
    end
    object sdsItensNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ReadOnly = True
    end
    object sdsItensNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ReadOnly = True
    end
    object sdsItensNFICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ReadOnly = True
    end
    object sdsItensNFICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
      ReadOnly = True
    end
    object sdsItensNFVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ReadOnly = True
    end
    object sdsItensNFCSOSN: TStringField
      FieldName = 'CSOSN'
      ReadOnly = True
      Size = 3
    end
    object sdsItensNFFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object sdsItensNFVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
    end
    object sdsItensNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsItensNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ReadOnly = True
    end
    object sdsItensNFVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ReadOnly = True
    end
    object sdsItensNFCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object sdsItensNFCST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 3
    end
    object sdsItensNFVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ReadOnly = True
    end
    object sdsItensNFVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ReadOnly = True
    end
    object sdsItensNFII: TFloatField
      FieldName = 'II'
      ReadOnly = True
    end
    object sdsItensNFBCII: TFloatField
      FieldName = 'BCII'
      ReadOnly = True
    end
    object sdsItensNFOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object sdsItensNFCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
    object sdsItensNFCSTPIS: TStringField
      FieldName = 'CSTPIS'
      ReadOnly = True
      Size = 2
    end
    object sdsItensNFCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ReadOnly = True
      Size = 2
    end
    object sdsItensNFPPIS: TFloatField
      FieldName = 'PPIS'
      ReadOnly = True
    end
    object sdsItensNFPCOFINS: TFloatField
      FieldName = 'PCOFINS'
      ReadOnly = True
    end
    object sdsItensNFNITEMPED: TIntegerField
      FieldName = 'NITEMPED'
      ReadOnly = True
    end
    object sdsItensNFPEDIDO: TStringField
      FieldName = 'PEDIDO'
      ReadOnly = True
    end
    object sdsItensNFVLRBC_IPI: TFloatField
      FieldName = 'VLRBC_IPI'
      ReadOnly = True
    end
    object sdsItensNFVLRBC_PIS: TFloatField
      FieldName = 'VLRBC_PIS'
      ReadOnly = True
    end
    object sdsItensNFVLRBC_COFINS: TFloatField
      FieldName = 'VLRBC_COFINS'
      ReadOnly = True
    end
    object sdsItensNFVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      ReadOnly = True
    end
    object sdsItensNFCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ReadOnly = True
    end
    object sdsItensNFCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sdsItensNFNCM: TStringField
      FieldName = 'NCM'
      ReadOnly = True
      Size = 8
    end
    object sdsItensNFORIGEM: TStringField
      FieldName = 'ORIGEM'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object dspItensNF: TDataSetProvider
    DataSet = sdsItensNF
    Options = [poAllowCommandText]
    Left = 488
    Top = 379
  end
  object cdsItensNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensNF'
    Left = 520
    Top = 379
    object cdsItensNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsItensNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsItensNFCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsItensNFCODPRO: TStringField
      FieldName = 'CODPRO'
      ReadOnly = True
      Size = 254
    end
    object cdsItensNFUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsItensNFICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object cdsItensNFPIPI: TFloatField
      FieldName = 'PIPI'
      ReadOnly = True
    end
    object cdsItensNFVIPI: TFloatField
      FieldName = 'VIPI'
      ReadOnly = True
    end
    object cdsItensNFVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
      ReadOnly = True
    end
    object cdsItensNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ReadOnly = True
    end
    object cdsItensNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ReadOnly = True
      DisplayFormat = ',###0.000'
    end
    object cdsItensNFICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ReadOnly = True
    end
    object cdsItensNFICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
      ReadOnly = True
    end
    object cdsItensNFVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ReadOnly = True
    end
    object cdsItensNFCSOSN: TStringField
      FieldName = 'CSOSN'
      ReadOnly = True
      Size = 3
    end
    object cdsItensNFFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object cdsItensNFVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
    end
    object cdsItensNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsItensNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ReadOnly = True
    end
    object cdsItensNFVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ReadOnly = True
    end
    object cdsItensNFCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cdsItensNFCST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 3
    end
    object cdsItensNFVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ReadOnly = True
    end
    object cdsItensNFVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ReadOnly = True
    end
    object cdsItensNFII: TFloatField
      FieldName = 'II'
      ReadOnly = True
    end
    object cdsItensNFBCII: TFloatField
      FieldName = 'BCII'
      ReadOnly = True
    end
    object cdsItensNFOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object cdsItensNFCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
    object cdsItensNFCSTPIS: TStringField
      FieldName = 'CSTPIS'
      ReadOnly = True
      Size = 2
    end
    object cdsItensNFCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ReadOnly = True
      Size = 2
    end
    object cdsItensNFPPIS: TFloatField
      FieldName = 'PPIS'
      ReadOnly = True
    end
    object cdsItensNFPCOFINS: TFloatField
      FieldName = 'PCOFINS'
      ReadOnly = True
    end
    object cdsItensNFNITEMPED: TIntegerField
      FieldName = 'NITEMPED'
      ReadOnly = True
    end
    object cdsItensNFPEDIDO: TStringField
      FieldName = 'PEDIDO'
      ReadOnly = True
    end
    object cdsItensNFVLRBC_IPI: TFloatField
      FieldName = 'VLRBC_IPI'
      ReadOnly = True
    end
    object cdsItensNFVLRBC_PIS: TFloatField
      FieldName = 'VLRBC_PIS'
      ReadOnly = True
    end
    object cdsItensNFVLRBC_COFINS: TFloatField
      FieldName = 'VLRBC_COFINS'
      ReadOnly = True
    end
    object cdsItensNFVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      ReadOnly = True
    end
    object cdsItensNFCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ReadOnly = True
    end
    object cdsItensNFCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsItensNFNCM: TStringField
      FieldName = 'NCM'
      ReadOnly = True
      Size = 8
    end
    object cdsItensNFORIGEM: TStringField
      FieldName = 'ORIGEM'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object sEmpresa: TSQLDataSet
    CommandText = 
      'select e.* from EMPRESA e,  PLANO p'#13#10'where p.CODEMPRESA = e.CODI' +
      'GO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 519
    Top = 443
    object sEmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object sEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object sEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object sEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object sEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object sEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object sEmpresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object sEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object sEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object sEmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object sEmpresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object sEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object sEmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object sEmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object sEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sEmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object sEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sEmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object sEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object sEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object sEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object sEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sEmpresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
  end
  object sCliente: TSQLDataSet
    CommandText = 
      'select c.CODCLIENTE,'#13#10'           c.NOMECLIENTE,'#13#10'           c.CO' +
      'NTATO,'#13#10'           c.INSCESTADUAL,'#13#10'           cast(c.RAZAOSOCIA' +
      'L as varchar (60) )as RAZAOSOCIAL,'#13#10'           cast(c.CNPJ as va' +
      'rchar (60) )as CNPJ,'#13#10'           cast(e.LOGRADOURO as varchar (6' +
      '0) ) as LOGRADOURO,'#13#10'           cast(e.BAIRRO as varchar (60) ) ' +
      'as BAIRRO, '#13#10'           cast(e.COMPLEMENTO as varchar (60) ) as ' +
      'COMPLEMENTO, '#13#10'           cast(e.CIDADE as varchar (60) ) as CID' +
      'ADE, '#13#10'           e.UF,            e.CEP ,           e.NUMERO,  ' +
      '         e.TELEFONE,'#13#10'           e.DDD,           e.CD_IBGE,    ' +
      '       e.E_MAIL,'#13#10'           e.PAIS, p.CODPAIS, c.CODFISCAL, c.S' +
      'UFRAMA'#13#10'          , c.TIPOFIRMA '#13#10'from CLIENTES c '#13#10'inner join E' +
      'NDERECOCLIENTE e on'#13#10' e.CODCLIENTE = c.CODCLIENTE '#13#10'inner join P' +
      'AIS p on p.PAIS = e.PAIS'#13#10'where c.CODCLIENTE = :id and e.TIPOEND' +
      ' = 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 584
    Top = 443
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object sClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object sClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 60
    end
    object sClienteLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ReadOnly = True
      Size = 60
    end
    object sClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 60
    end
    object sClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ReadOnly = True
      Size = 60
    end
    object sClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ReadOnly = True
      Size = 60
    end
    object sClienteUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object sClienteCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
    object sClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 5
    end
    object sClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ReadOnly = True
      Size = 9
    end
    object sClienteDDD: TStringField
      FieldName = 'DDD'
      ReadOnly = True
      Size = 3
    end
    object sClienteCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      ReadOnly = True
      Size = 10
    end
    object sClienteE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ReadOnly = True
      Size = 100
    end
    object sClientePAIS: TStringField
      FieldName = 'PAIS'
      ReadOnly = True
      Size = 60
    end
    object sClienteCODPAIS: TStringField
      FieldName = 'CODPAIS'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 4
    end
    object sClienteCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object sClienteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      ReadOnly = True
      Size = 9
    end
    object sClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ReadOnly = True
      Required = True
    end
  end
  object sdsFatura: TSQLDataSet
    CommandText = 
      'select r.DATAVENCIMENTO, r.via, r.VALOR_RESTO, r.parcelas, r.for' +
      'maRecebimento from RECEBIMENTO r  where r.CODVENDA = :codvenda o' +
      'rder by r.DATAVENCIMENTO, r.VIA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codvenda'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 551
    Top = 473
    object sdsFaturaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object sdsFaturaVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object sdsFaturaVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object sdsFaturaPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object sdsFaturaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspFatura: TDataSetProvider
    DataSet = sdsFatura
    Left = 583
    Top = 474
  end
  object cdsFatura: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codvenda'
        ParamType = ptInput
      end>
    ProviderName = 'dspFatura'
    Left = 615
    Top = 473
    object cdsFaturaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsFaturaVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object cdsFaturaVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object cdsFaturaPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object cdsFaturaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS
    Mask_qCom = '0.0000'
    Mask_vUnCom = '0.000'
    Left = 612
    Top = 104
  end
  object ACBrSATExtratoFortes1: TACBrSATExtratoFortes
    Mask_qCom = '0.0000'
    Mask_vUnCom = '0.000'
    Left = 620
    Top = 144
  end
  object OpenDialog1: TOpenDialog
    Left = 484
    Top = 96
  end
  object PrintDialog1: TPrintDialog
    Left = 420
    Top = 104
  end
end
