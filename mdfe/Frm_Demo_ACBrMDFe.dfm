object fACBrMDFe: TfACBrMDFe
  Left = 373
  Top = 151
  Width = 1031
  Height = 568
  Caption = 'ATS - ACBrMDFe 1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label37: TLabel
    Left = -100
    Top = 232
    Width = 66
    Height = 13
    Caption = 'RNTRC Prop.'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 541
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 4
      Top = 3
      Width = 344
      Height = 496
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 340
        Height = 479
        ActivePage = TabSheet12
        Align = alClient
        MultiLine = True
        Style = tsButtons
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Emitente'
          ImageIndex = 3
          object GroupBox6: TGroupBox
            Left = 32
            Top = 16
            Width = 265
            Height = 321
            Caption = 'Empresa'
            TabOrder = 0
            object Label12: TLabel
              Left = 8
              Top = 20
              Width = 27
              Height = 13
              Caption = 'CNPJ'
            end
            object Label13: TLabel
              Left = 136
              Top = 20
              Width = 41
              Height = 13
              Caption = 'Insc.Est.'
            end
            object Label14: TLabel
              Left = 8
              Top = 60
              Width = 63
              Height = 13
              Caption = 'Raz'#227'o Social'
            end
            object Label15: TLabel
              Left = 8
              Top = 100
              Width = 40
              Height = 13
              Caption = 'Fantasia'
            end
            object Label24: TLabel
              Left = 8
              Top = 140
              Width = 24
              Height = 13
              Caption = 'Fone'
            end
            object Label23: TLabel
              Left = 136
              Top = 140
              Width = 21
              Height = 13
              Caption = 'CEP'
            end
            object Label16: TLabel
              Left = 8
              Top = 180
              Width = 54
              Height = 13
              Caption = 'Logradouro'
            end
            object Label17: TLabel
              Left = 208
              Top = 180
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label18: TLabel
              Left = 8
              Top = 220
              Width = 64
              Height = 13
              Caption = 'Complemento'
            end
            object Label19: TLabel
              Left = 136
              Top = 220
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object Label20: TLabel
              Left = 8
              Top = 260
              Width = 61
              Height = 13
              Caption = 'C'#243'd. Cidade '
            end
            object Label21: TLabel
              Left = 76
              Top = 260
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label22: TLabel
              Left = 225
              Top = 260
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object edtEmitIE: TEdit
              Left = 137
              Top = 36
              Width = 123
              Height = 21
              TabOrder = 0
            end
            object edtEmitCNPJ: TEdit
              Left = 8
              Top = 36
              Width = 123
              Height = 21
              TabOrder = 1
            end
            object edtEmitRazao: TEdit
              Left = 8
              Top = 76
              Width = 252
              Height = 21
              TabOrder = 2
            end
            object edtEmitFantasia: TEdit
              Left = 8
              Top = 116
              Width = 252
              Height = 21
              TabOrder = 3
            end
            object edtEmitFone: TEdit
              Left = 8
              Top = 156
              Width = 125
              Height = 21
              TabOrder = 4
            end
            object edtEmitCEP: TEdit
              Left = 137
              Top = 156
              Width = 123
              Height = 21
              TabOrder = 5
            end
            object edtEmitNumero: TEdit
              Left = 210
              Top = 196
              Width = 50
              Height = 21
              TabOrder = 6
            end
            object edtEmitLogradouro: TEdit
              Left = 8
              Top = 196
              Width = 196
              Height = 21
              TabOrder = 7
            end
            object edtEmitComp: TEdit
              Left = 8
              Top = 236
              Width = 123
              Height = 21
              TabOrder = 8
            end
            object edtEmitBairro: TEdit
              Left = 137
              Top = 236
              Width = 123
              Height = 21
              TabOrder = 9
            end
            object edtEmitCodCidade: TEdit
              Left = 8
              Top = 276
              Width = 61
              Height = 21
              TabOrder = 10
            end
            object edtEmitCidade: TEdit
              Left = 76
              Top = 276
              Width = 142
              Height = 21
              TabOrder = 11
            end
            object edtEmitUF: TEdit
              Left = 225
              Top = 276
              Width = 35
              Height = 21
              TabOrder = 12
            end
          end
          object GroupBox10: TGroupBox
            Left = 32
            Top = 344
            Width = 265
            Height = 81
            Caption = 'MDF-e'
            TabOrder = 1
            object Label77: TLabel
              Left = 8
              Top = 16
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label78: TLabel
              Left = 11
              Top = 48
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object edNumMdfe: TEdit
              Left = 68
              Top = 14
              Width = 121
              Height = 21
              ReadOnly = True
              TabOrder = 0
            end
            object dtaMdfe: TJvDatePickerEdit
              Left = 68
              Top = 44
              Width = 121
              Height = 21
              AllowNoDate = True
              Checked = True
              TabOrder = 1
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Notas Fiscais'
          ImageIndex = 6
          object Label42: TLabel
            Left = 8
            Top = 13
            Width = 69
            Height = 13
            Caption = 'Chave NFe - 1'
          end
          object Label46: TLabel
            Left = 8
            Top = 64
            Width = 69
            Height = 13
            Caption = 'Chave NFe - 2'
          end
          object Label47: TLabel
            Left = 8
            Top = 112
            Width = 69
            Height = 13
            Caption = 'Chave NFe - 3'
          end
          object Label48: TLabel
            Left = 8
            Top = 160
            Width = 69
            Height = 13
            Caption = 'Chave NFe - 4'
          end
          object Label49: TLabel
            Left = 8
            Top = 208
            Width = 69
            Height = 13
            Caption = 'Chave NFe - 5'
          end
          object Label50: TLabel
            Left = 8
            Top = 256
            Width = 69
            Height = 13
            Caption = 'Chave NFe - 6'
          end
          object Label51: TLabel
            Left = 8
            Top = 304
            Width = 69
            Height = 13
            Caption = 'Chave NFe - 7'
          end
          object Label52: TLabel
            Left = 0
            Top = 368
            Width = 43
            Height = 13
            Caption = 'Qtde. NF'
          end
          object Label53: TLabel
            Left = 118
            Top = 368
            Width = 51
            Height = 13
            Caption = 'Valor Total'
          end
          object Label54: TLabel
            Left = 0
            Top = 400
            Width = 40
            Height = 13
            Caption = 'Unidade'
          end
          object Label55: TLabel
            Left = 118
            Top = 400
            Width = 52
            Height = 13
            Caption = 'Peso Bruto'
          end
          object Label58: TLabel
            Left = 110
            Top = 10
            Width = 65
            Height = 13
            Caption = 'Peso, Volume'
          end
          object Label59: TLabel
            Left = 110
            Top = 61
            Width = 65
            Height = 13
            Caption = 'Peso, Volume'
          end
          object Label60: TLabel
            Left = 110
            Top = 109
            Width = 65
            Height = 13
            Caption = 'Peso, Volume'
          end
          object Label61: TLabel
            Left = 110
            Top = 157
            Width = 65
            Height = 13
            Caption = 'Peso, Volume'
          end
          object Label62: TLabel
            Left = 110
            Top = 205
            Width = 65
            Height = 13
            Caption = 'Peso, Volume'
          end
          object Label63: TLabel
            Left = 110
            Top = 253
            Width = 65
            Height = 13
            Caption = 'Peso, Volume'
          end
          object Label64: TLabel
            Left = 110
            Top = 301
            Width = 65
            Height = 13
            Caption = 'Peso, Volume'
          end
          object edNFe1: TEdit
            Left = 8
            Top = 29
            Width = 305
            Height = 21
            TabOrder = 1
          end
          object edNFe2: TEdit
            Left = 8
            Top = 80
            Width = 305
            Height = 21
            TabOrder = 3
          end
          object edNFe3: TEdit
            Left = 8
            Top = 128
            Width = 305
            Height = 21
            TabOrder = 5
          end
          object edNFe4: TEdit
            Left = 8
            Top = 176
            Width = 305
            Height = 21
            TabOrder = 7
          end
          object edNFe5: TEdit
            Left = 8
            Top = 224
            Width = 305
            Height = 21
            TabOrder = 9
          end
          object edNFe6: TEdit
            Left = 8
            Top = 272
            Width = 305
            Height = 21
            TabOrder = 11
          end
          object edNFe7: TEdit
            Left = 8
            Top = 320
            Width = 305
            Height = 21
            TabOrder = 13
          end
          object edQtdeNF: TEdit
            Left = 45
            Top = 362
            Width = 66
            Height = 21
            Hint = 'Quantidade total de NF-e relacionadas no '#13#10'Manifesto. '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
          end
          object edValorTotal: TJvCalcEdit
            Left = 180
            Top = 362
            Width = 134
            Height = 21
            Hint = 'Valor total da carga / mercadorias '#13#10'transportadas.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            DecimalPlacesAlwaysShown = False
          end
          object edPesoBruto: TJvCalcEdit
            Left = 180
            Top = 394
            Width = 134
            Height = 21
            Hint = 'Peso Bruto Total da Carga / Mercadorias '#13#10'transportadas. '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            DecimalPlacesAlwaysShown = False
          end
          object edPesoVol1: TJvCalcEdit
            Left = 190
            Top = 7
            Width = 123
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
          end
          object edPesoVol2: TJvCalcEdit
            Left = 190
            Top = 58
            Width = 123
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
          end
          object edPesoVol3: TJvCalcEdit
            Left = 190
            Top = 106
            Width = 123
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            DecimalPlacesAlwaysShown = False
          end
          object edPesoVol4: TJvCalcEdit
            Left = 190
            Top = 154
            Width = 123
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            DecimalPlacesAlwaysShown = False
          end
          object edPesoVol5: TJvCalcEdit
            Left = 190
            Top = 202
            Width = 123
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            DecimalPlacesAlwaysShown = False
          end
          object edPesoVol6: TJvCalcEdit
            Left = 190
            Top = 250
            Width = 123
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            DecimalPlacesAlwaysShown = False
          end
          object edPesoVol7: TJvCalcEdit
            Left = 190
            Top = 298
            Width = 123
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            DecimalPlacesAlwaysShown = False
          end
          object cbUnidade: TComboBox
            Left = 45
            Top = 394
            Width = 65
            Height = 21
            ItemHeight = 13
            TabOrder = 16
            Items.Strings = (
              'M3'
              'KG'
              'TON'
              'UNIDADE'
              'LITROS'
              'MMBTU')
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Transporte'
          ImageIndex = 5
          object Label29: TLabel
            Left = 8
            Top = 8
            Width = 38
            Height = 13
            Caption = 'RNTRC'
          end
          object Label30: TLabel
            Left = 8
            Top = 32
            Width = 25
            Height = 13
            Caption = 'CIOT'
          end
          object Label31: TLabel
            Left = 8
            Top = 61
            Width = 25
            Height = 13
            Caption = 'CINT'
          end
          object Label32: TLabel
            Left = 135
            Top = 58
            Width = 27
            Height = 13
            Caption = 'Placa'
          end
          object Label33: TLabel
            Left = 8
            Top = 79
            Width = 22
            Height = 13
            Caption = 'Tara'
          end
          object Label34: TLabel
            Left = 118
            Top = 80
            Width = 37
            Height = 13
            Caption = 'Cap. kg'
          end
          object Label35: TLabel
            Left = 227
            Top = 80
            Width = 39
            Height = 13
            Caption = 'Cap. m'#179' '
          end
          object Label36: TLabel
            Left = 8
            Top = 168
            Width = 66
            Height = 13
            Caption = 'RNTRC Prop.'
          end
          object Label38: TLabel
            Left = 8
            Top = 196
            Width = 43
            Height = 13
            Caption = 'Condutor'
          end
          object Label39: TLabel
            Left = 8
            Top = 223
            Width = 66
            Height = 13
            Caption = 'CPF Condutor'
          end
          object Label40: TLabel
            Left = 8
            Top = 240
            Width = 92
            Height = 13
            Caption = 'Municipo Descarga'
          end
          object Label41: TLabel
            Left = 8
            Top = 282
            Width = 64
            Height = 13
            Caption = 'C'#243'digo IBGE '
          end
          object Label43: TLabel
            Left = 8
            Top = 305
            Width = 51
            Height = 13
            Caption = 'Transporte'
          end
          object Label44: TLabel
            Left = 8
            Top = 329
            Width = 61
            Height = 13
            Caption = 'Identifica'#231#227'o'
          end
          object Label45: TLabel
            Left = 9
            Top = 400
            Width = 61
            Height = 13
            Caption = 'Identificacao'
          end
          object Label65: TLabel
            Left = 203
            Top = 281
            Width = 69
            Height = 13
            Caption = 'UF - Descarga'
          end
          object Label66: TLabel
            Left = 251
            Top = 58
            Width = 34
            Height = 13
            Caption = 'UF Lic.'
          end
          object Label75: TLabel
            Left = 8
            Top = 122
            Width = 77
            Height = 13
            Caption = 'Tipo de Rodado'
          end
          object Label76: TLabel
            Left = 168
            Top = 122
            Width = 87
            Height = 13
            Caption = 'Tipo de Carroceria'
          end
          object edRntrc: TEdit
            Left = 64
            Top = 8
            Width = 249
            Height = 21
            Hint = 'Registro Nacional de Transportadores '#13#10'Rodovi'#225'rios de Carga '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object edCIOT: TEdit
            Left = 64
            Top = 32
            Width = 249
            Height = 21
            Hint = 'C'#243'digo Identificador da Opera'#231#227'o de Transporte.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object edCINT: TEdit
            Left = 64
            Top = 56
            Width = 65
            Height = 21
            Hint = 'C'#243'digo interno do ve'#237'culo '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object edTara: TEdit
            Left = 8
            Top = 96
            Width = 97
            Height = 21
            TabOrder = 5
          end
          object edCapKg: TEdit
            Left = 115
            Top = 96
            Width = 97
            Height = 21
            TabOrder = 6
          end
          object edCapM3: TEdit
            Left = 221
            Top = 96
            Width = 92
            Height = 21
            TabOrder = 7
          end
          object edPlaca: TEdit
            Left = 169
            Top = 56
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edRNTRCProp: TEdit
            Left = 88
            Top = 168
            Width = 225
            Height = 21
            Hint = 
              'Registro Nacional de Transportadores '#13#10'Rodovi'#225'rios de Carga '#13#10'Pr' +
              'opriet'#225'rios do Ve'#237'culo. S'#243' preenchido '#13#10'   quando o ve'#237'culo n'#227'o ' +
              'pertencer '#224' '#13#10'      empresa emitente do MDF-e '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
          end
          object edCondutor: TEdit
            Left = 88
            Top = 193
            Width = 225
            Height = 21
            Hint = 
              'Registro Nacional de Transportadores '#13#10'Rodovi'#225'rios de Carga '#13#10'Pr' +
              'opriet'#225'rios do Ve'#237'culo. S'#243' preenchido '#13#10'   quando o ve'#237'culo n'#227'o ' +
              'pertencer '#224' '#13#10'      empresa emitente do MDF-e '
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
          end
          object edCondutorCPF: TEdit
            Left = 88
            Top = 219
            Width = 224
            Height = 21
            TabOrder = 12
          end
          object edMunicipioDescarga: TEdit
            Left = 8
            Top = 255
            Width = 304
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 13
          end
          object rgTipoUnidCarga: TRadioGroup
            Left = 1
            Top = 349
            Width = 331
            Height = 49
            Caption = 'Tipo unidade da Carga'
            Columns = 4
            ItemIndex = 3
            Items.Strings = (
              '1 - Container'
              '2 - ULD'
              '3 - Pallet'
              '4 - Outros')
            TabOrder = 18
          end
          object cbTransporte: TComboBox
            Left = 76
            Top = 302
            Width = 236
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 16
            Text = '1 - Rodovi'#225'rio Tra'#231#227'o;'
            Items.Strings = (
              '1 - Rodovi'#225'rio Tra'#231#227'o;'
              '2 - Rodovi'#225'rio Reboque;'
              '3 - Navio;'
              '4 - Balsa;'
              '5 - Aeronave;'
              '6 - Vag'#227'o;'
              '7 - Outros')
          end
          object edIdentUnidTransp: TEdit
            Left = 76
            Top = 325
            Width = 236
            Height = 21
            Hint = 
              'Informar a identifica'#231#227'o conforme o tipo de'#13#10'unidade de transpor' +
              'te.'#13#10'Por exemplo: para rodovi'#225'rio tra'#231#227'o ou reboque'#13#10'dever'#225' pree' +
              'ncher com a placa do ve'#237'culo.'
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            Text = 'CAMINHAO'
          end
          object edIdentUnidCarga: TEdit
            Left = 75
            Top = 400
            Width = 236
            Height = 21
            Hint = 
              'Informar a identifica'#231#227'o da unidade de carga,'#13#10'por exemplo: n'#250'me' +
              'ro do container.'
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
          end
          object edUFDescarga: TEdit
            Left = 278
            Top = 279
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 15
          end
          object edUFLicVeiculo: TEdit
            Left = 287
            Top = 56
            Width = 26
            Height = 21
            Hint = 'UF em que ve'#237'culo est'#225' licenciado '
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object edCodIbgeDescarga: TMaskEdit
            Left = 77
            Top = 279
            Width = 63
            Height = 21
            EditMask = '0000000;1;_'
            MaxLength = 7
            TabOrder = 14
            Text = '0000000'
          end
          object cbTipoRodado: TComboBox
            Left = 8
            Top = 138
            Width = 145
            Height = 21
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 8
            Text = '02-Truck'
            Items.Strings = (
              '01-N'#227'o Aplicavel'
              '02-Truck'
              '03-Toco'
              '04-Cavalo Mecanico'
              '05-Van'
              '06-Utilitarios'
              '07-Outros')
          end
          object cbTipoCarroceria: TComboBox
            Left = 168
            Top = 138
            Width = 145
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 9
            Text = '00-N'#227'o Aplicavel'
            Items.Strings = (
              '00-N'#227'o Aplicavel'
              '01-Aberta'
              '02-Fechada/Bau'
              '03-Granelera'
              '04-Porta Container'
              '05-Sider')
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Outros Info.'
          ImageIndex = 8
          object GroupBox7: TGroupBox
            Left = 1
            Top = 0
            Width = 330
            Height = 69
            Caption = 'Autorizados para download do XML'
            TabOrder = 0
            object Label67: TLabel
              Left = 8
              Top = 20
              Width = 61
              Height = 13
              Caption = 'CPF/CNPJ 1'
            end
            object Label68: TLabel
              Left = 8
              Top = 45
              Width = 61
              Height = 13
              Caption = 'CPF/CNPJ 2'
            end
            object edAutorizado1: TEdit
              Left = 80
              Top = 16
              Width = 233
              Height = 21
              TabOrder = 0
            end
            object edAutorizado2: TEdit
              Left = 80
              Top = 40
              Width = 233
              Height = 21
              TabOrder = 1
            end
          end
          object GroupBox8: TGroupBox
            Left = 1
            Top = 75
            Width = 330
            Height = 158
            Caption = 'Propriet'#225'rio Ve'#237'culo (qdo n'#227'o pertencer a empresa emitente)'
            TabOrder = 1
            object Label69: TLabel
              Left = 8
              Top = 16
              Width = 52
              Height = 13
              Caption = 'CPF/CNPJ'
            end
            object Label70: TLabel
              Left = 8
              Top = 94
              Width = 41
              Height = 13
              Caption = 'RNTRC '
            end
            object Label71: TLabel
              Left = 8
              Top = 119
              Width = 21
              Height = 13
              Caption = 'Tipo'
            end
            object Label72: TLabel
              Left = 8
              Top = 68
              Width = 28
              Height = 13
              Caption = 'Nome'
            end
            object Label73: TLabel
              Left = 8
              Top = 42
              Width = 67
              Height = 13
              Caption = 'Insc. Estadual'
            end
            object Label74: TLabel
              Left = 238
              Top = 95
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object edPropCNPJ: TEdit
              Left = 80
              Top = 16
              Width = 233
              Height = 21
              TabOrder = 0
            end
            object edPropRntrc: TEdit
              Left = 80
              Top = 92
              Width = 97
              Height = 21
              TabOrder = 3
            end
            object cbPropTipo: TComboBox
              Left = 80
              Top = 116
              Width = 233
              Height = 21
              ItemHeight = 13
              TabOrder = 5
              Items.Strings = (
                '0-TAC Agregado'
                '1-TAC Independente'
                '2-Outros.')
            end
            object edPropNome: TEdit
              Left = 80
              Top = 68
              Width = 233
              Height = 21
              TabOrder = 2
            end
            object edPropIE: TEdit
              Left = 80
              Top = 40
              Width = 233
              Height = 21
              TabOrder = 1
            end
            object edPropUF: TEdit
              Left = 259
              Top = 92
              Width = 54
              Height = 21
              TabOrder = 4
            end
          end
          object GroupBox9: TGroupBox
            Left = 8
            Top = 248
            Width = 321
            Height = 161
            Caption = 'Reboque'
            TabOrder = 2
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Info. Adic.'
          ImageIndex = 7
          object Label56: TLabel
            Left = 11
            Top = 14
            Width = 133
            Height = 13
            Caption = 'Informa'#231#245'es adicionais fisco'
          end
          object Label57: TLabel
            Left = 11
            Top = 193
            Width = 166
            Height = 13
            Caption = 'Informa'#231#245'es adicionais contribuinte'
          end
          object memInfoFisco: TMemo
            Left = 8
            Top = 29
            Width = 313
            Height = 145
            Hint = 'Informa'#231#245'es adicionais de interesse do '#13#10'  Fisco .'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object memInfoContribuinte: TMemo
            Left = 8
            Top = 208
            Width = 313
            Height = 185
            Hint = 'Informa'#231#245'es  complementares '#13#10'do  interesse do Contribuinte .'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Certificado'
          object GroupBox2: TGroupBox
            Left = 32
            Top = 36
            Width = 265
            Height = 144
            Caption = 'Certificado'
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Caminho'
            end
            object Label2: TLabel
              Left = 8
              Top = 56
              Width = 31
              Height = 13
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
              OnClick = sbtnCaminhoCertClick
            end
            object Label25: TLabel
              Left = 8
              Top = 96
              Width = 79
              Height = 13
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
              Height = 21
              TabOrder = 0
            end
            object edtSenha: TEdit
              Left = 8
              Top = 72
              Width = 249
              Height = 21
              PasswordChar = '*'
              TabOrder = 1
            end
            object edtNumSerie: TEdit
              Left = 8
              Top = 112
              Width = 225
              Height = 21
              TabOrder = 2
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          object GroupBox3: TGroupBox
            Left = 30
            Top = 6
            Width = 265
            Height = 245
            Caption = 'Geral'
            TabOrder = 0
            object Label7: TLabel
              Left = 8
              Top = 144
              Width = 57
              Height = 13
              Caption = 'Logo Marca'
            end
            object sbtnLogoMarca: TSpeedButton
              Left = 235
              Top = 156
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
              Top = 204
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
            object edtLogoMarca: TEdit
              Left = 8
              Top = 160
              Width = 228
              Height = 21
              TabOrder = 0
              Text = 'C:\Home\sisadmin\logo.bmp'
            end
            object edtPathLogs: TEdit
              Left = 8
              Top = 208
              Width = 228
              Height = 21
              TabOrder = 1
              Text = 'c:\home'
            end
            object ckSalvar: TCheckBox
              Left = 8
              Top = 192
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object rgTipoDAMDFe: TRadioGroup
              Left = 8
              Top = 16
              Width = 249
              Height = 57
              Caption = 'DAMDFe'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Retrato'
                'Paisagem')
              TabOrder = 3
            end
            object rgFormaEmissao: TRadioGroup
              Left = 8
              Top = 80
              Width = 249
              Height = 57
              Caption = 'Forma de Emiss'#227'o'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Normal'
                'Conting'#234'ncia')
              TabOrder = 4
            end
          end
          object rgVersaoDF: TRadioGroup
            Left = 31
            Top = 257
            Width = 265
            Height = 57
            Caption = 'Vers'#227'o do Documento Fiscal'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              '1.00'
              '1.00a')
            TabOrder = 1
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'WebService'
          ImageIndex = 2
          object GroupBox4: TGroupBox
            Left = 32
            Top = 4
            Width = 265
            Height = 141
            Caption = 'WebService'
            TabOrder = 0
            object Label6: TLabel
              Left = 8
              Top = 16
              Width = 121
              Height = 13
              Caption = 'Selecione UF de Destino:'
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
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
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
              ItemHeight = 16
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
              Left = 8
              Top = 61
              Width = 249
              Height = 52
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              ItemIndex = 1
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              TabOrder = 2
            end
          end
          object gbProxy: TGroupBox
            Left = 32
            Top = 152
            Width = 265
            Height = 105
            Caption = 'Proxy'
            TabOrder = 1
            object Label8: TLabel
              Left = 8
              Top = 16
              Width = 22
              Height = 13
              Caption = 'Host'
            end
            object Label9: TLabel
              Left = 208
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label10: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label11: TLabel
              Left = 138
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object edtProxyHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtProxyPorta: TEdit
              Left = 208
              Top = 32
              Width = 50
              Height = 21
              TabOrder = 1
            end
            object edtProxyUser: TEdit
              Left = 8
              Top = 72
              Width = 123
              Height = 21
              TabOrder = 2
            end
            object edtProxySenha: TEdit
              Left = 135
              Top = 72
              Width = 123
              Height = 21
              PasswordChar = '*'
              TabOrder = 3
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Email'
          ImageIndex = 4
          object GroupBox5: TGroupBox
            Left = 25
            Top = 12
            Width = 264
            Height = 324
            Caption = 'Email'
            TabOrder = 0
            object Label3: TLabel
              Left = 8
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Servidor SMTP'
            end
            object Label4: TLabel
              Left = 206
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label5: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label26: TLabel
              Left = 137
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
              Visible = False
            end
            object Label27: TLabel
              Left = 8
              Top = 96
              Width = 121
              Height = 13
              Caption = 'Assunto do email enviado'
            end
            object Label28: TLabel
              Left = 8
              Top = 168
              Width = 95
              Height = 13
              Caption = 'Mensagem do Email'
            end
            object edtSmtpHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtSmtpPort: TEdit
              Left = 206
              Top = 32
              Width = 51
              Height = 21
              TabOrder = 1
            end
            object edtSmtpUser: TEdit
              Left = 8
              Top = 72
              Width = 249
              Height = 21
              TabOrder = 2
            end
            object edtSmtpPass: TEdit
              Left = 137
              Top = 64
              Width = 120
              Height = 21
              TabOrder = 3
              Visible = False
            end
            object edtEmailAssunto: TEdit
              Left = 8
              Top = 112
              Width = 249
              Height = 21
              TabOrder = 4
            end
            object cbEmailSSL: TCheckBox
              Left = 10
              Top = 144
              Width = 167
              Height = 17
              Caption = 'SMTP exige conex'#227'o segura'
              Checked = True
              State = cbChecked
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
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 102
      Top = 504
      Width = 153
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      TabOrder = 1
      OnClick = btnSalvarConfigClick
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
    end
  end
  object Panel2: TPanel
    Left = 353
    Top = 0
    Width = 670
    Height = 541
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 668
      Height = 176
      Align = alTop
      TabOrder = 0
      object btnImprimir: TButton
        Left = 8
        Top = 104
        Width = 177
        Height = 25
        Caption = '4-Imprimir DAMDFe'
        TabOrder = 3
        OnClick = btnImprimirClick
      end
      object btnConsultar: TButton
        Left = 376
        Top = 40
        Width = 177
        Height = 25
        Caption = 'Consultar carregando XML'
        TabOrder = 4
        OnClick = btnConsultarClick
      end
      object btnValidarXML: TButton
        Left = 376
        Top = 8
        Width = 177
        Height = 25
        Caption = '2-Validar XML'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnValidarXMLClick
      end
      object btnStatusServ: TButton
        Left = 8
        Top = 8
        Width = 177
        Height = 25
        Caption = 'Status Servi'#231'o'
        TabOrder = 0
        OnClick = btnStatusServClick
      end
      object btnCancelamento: TButton
        Left = 376
        Top = 72
        Width = 177
        Height = 25
        Caption = 'Cancelamento'
        TabOrder = 5
        OnClick = btnCancelamentoClick
      end
      object btnCriarEnviar: TButton
        Left = 8
        Top = 40
        Width = 177
        Height = 25
        Caption = '3-Criar e Enviar'
        TabOrder = 2
        OnClick = btnCriarEnviarClick
      end
      object btnGerarMDFe: TButton
        Left = 192
        Top = 8
        Width = 177
        Height = 25
        Caption = '1-Gerar MDFe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnGerarMDFeClick
      end
      object btnGerarPDF: TButton
        Left = 192
        Top = 104
        Width = 177
        Height = 25
        Caption = 'Gerar PDF'
        TabOrder = 7
        OnClick = btnGerarPDFClick
      end
      object btnConsultarRecibo: TButton
        Left = 192
        Top = 40
        Width = 177
        Height = 25
        Caption = 'Consultar Recibo Lote'
        TabOrder = 8
        OnClick = btnConsultarReciboClick
      end
      object btnConsultarChave: TButton
        Left = 8
        Top = 72
        Width = 177
        Height = 25
        Caption = 'Consultar pela Chave'
        TabOrder = 9
        OnClick = btnConsultarChaveClick
      end
      object btnEncerramento: TButton
        Left = 192
        Top = 72
        Width = 177
        Height = 25
        Caption = 'Encerramento'
        TabOrder = 10
        OnClick = btnEncerramentoClick
      end
      object btnImprimirEvento: TButton
        Left = 8
        Top = 135
        Width = 177
        Height = 25
        Caption = 'Imprimir Evento'
        TabOrder = 11
        OnClick = btnImprimirEventoClick
      end
      object btnEnviarEventoEmail: TButton
        Left = 376
        Top = 135
        Width = 177
        Height = 25
        Caption = 'Enviar Evento Email'
        TabOrder = 12
        OnClick = btnEnviarEventoEmailClick
      end
      object btnEnviarMDFeEmail: TButton
        Left = 376
        Top = 103
        Width = 177
        Height = 25
        Caption = 'Enviar MDF-e Email'
        TabOrder = 13
        OnClick = btnEnviarMDFeEmailClick
      end
      object btnGerarPDFEvento: TButton
        Left = 192
        Top = 136
        Width = 177
        Height = 25
        Caption = 'Gerar PDF Evento'
        TabOrder = 14
        OnClick = btnGerarPDFEventoClick
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 177
      Width = 668
      Height = 363
      ActivePage = TabSheet5
      Align = alClient
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 660
          Height = 335
          Align = alClient
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 548
          Height = 364
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C000000A33800009F2500000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 548
          Height = 364
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'MDFe'
        ImageIndex = 3
        object trvwMDFe: TTreeView
          Left = 0
          Top = 0
          Width = 660
          Height = 335
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
          Width = 548
          Height = 364
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
          Width = 548
          Height = 364
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 480
    Top = 256
  end
  object ACBrMDFe1: TACBrMDFe
    Configuracoes.Geral.PathSalvar = 'C:\home\'
    Configuracoes.Geral.VersaoDF = ve100a
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    OnStatusChange = ACBrMDFe1StatusChange
    DAMDFe = DAMDFE
    Left = 526
    Top = 257
  end
  object DAMDFE: TACBrMDFeDAMDFEQR
    ACBrMDFe = ACBrMDFe1
    PathPDF = 'c:\home\'
    ImprimirHoraSaida = False
    MostrarPreview = True
    MostrarStatus = True
    TipoDAMDFe = tiRetrato
    TamanhoPapel = tpA4
    NumCopias = 1
    ImprimirDescPorc = False
    MargemInferior = 0.850000000000000000
    MargemSuperior = 0.850000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    MDFeCancelada = False
    Left = 574
    Top = 257
  end
  object sqlEmitente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.sc
    Left = 16
    Top = 400
  end
end
