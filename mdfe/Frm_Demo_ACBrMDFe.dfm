object fACBrMDFe: TfACBrMDFe
  Left = 259
  Top = 135
  Width = 1031
  Height = 582
  Caption = 'ATS - ACBrMDFe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
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
    Width = 385
    Height = 543
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 4
      Top = 3
      Width = 381
      Height = 496
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object Label86: TLabel
        Left = 8
        Top = 472
        Width = 24
        Height = 13
        Caption = 'Mun.'
      end
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 377
        Height = 479
        ActivePage = TabSheet4
        Align = alClient
        MultiLine = True
        Style = tsButtons
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Emitente'
          ImageIndex = 3
          object GroupBox6: TGroupBox
            Left = 3
            Top = 5
            Width = 326
            Height = 292
            Caption = 'Empresa'
            TabOrder = 0
            object Label12: TLabel
              Left = 8
              Top = 14
              Width = 27
              Height = 13
              Caption = 'CNPJ'
            end
            object Label13: TLabel
              Left = 104
              Top = 14
              Width = 41
              Height = 13
              Caption = 'Insc.Est.'
            end
            object Label14: TLabel
              Left = 8
              Top = 51
              Width = 63
              Height = 13
              Caption = 'Raz'#227'o Social'
            end
            object Label15: TLabel
              Left = 8
              Top = 91
              Width = 40
              Height = 13
              Caption = 'Fantasia'
            end
            object Label24: TLabel
              Left = 8
              Top = 130
              Width = 24
              Height = 13
              Caption = 'Fone'
            end
            object Label23: TLabel
              Left = 103
              Top = 131
              Width = 21
              Height = 13
              Caption = 'CEP'
            end
            object Label16: TLabel
              Left = 8
              Top = 168
              Width = 54
              Height = 13
              Caption = 'Logradouro'
            end
            object Label17: TLabel
              Left = 255
              Top = 170
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label18: TLabel
              Left = 8
              Top = 207
              Width = 64
              Height = 13
              Caption = 'Complemento'
            end
            object Label19: TLabel
              Left = 136
              Top = 207
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object Label20: TLabel
              Left = 8
              Top = 245
              Width = 52
              Height = 13
              Caption = 'C'#243'd. Mun. '
            end
            object Label21: TLabel
              Left = 70
              Top = 246
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label22: TLabel
              Left = 282
              Top = 246
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object Label106: TLabel
              Left = 198
              Top = 15
              Width = 41
              Height = 13
              Caption = 'Emitente'
            end
            object edtEmitIE: TEdit
              Left = 105
              Top = 30
              Width = 88
              Height = 21
              TabOrder = 0
            end
            object edtEmitCNPJ: TEdit
              Left = 8
              Top = 30
              Width = 97
              Height = 21
              TabOrder = 1
            end
            object edtEmitRazao: TEdit
              Left = 8
              Top = 67
              Width = 298
              Height = 21
              TabOrder = 2
            end
            object edtEmitFantasia: TEdit
              Left = 8
              Top = 107
              Width = 298
              Height = 21
              TabOrder = 3
            end
            object edtEmitFone: TEdit
              Left = 8
              Top = 146
              Width = 89
              Height = 21
              TabOrder = 4
            end
            object edtEmitCEP: TEdit
              Left = 101
              Top = 146
              Width = 76
              Height = 21
              TabOrder = 5
            end
            object edtEmitNumero: TEdit
              Left = 253
              Top = 185
              Width = 51
              Height = 21
              TabOrder = 6
            end
            object edtEmitLogradouro: TEdit
              Left = 8
              Top = 184
              Width = 240
              Height = 21
              TabOrder = 7
            end
            object edtEmitComp: TEdit
              Left = 8
              Top = 223
              Width = 123
              Height = 21
              TabOrder = 8
            end
            object edtEmitBairro: TEdit
              Left = 137
              Top = 223
              Width = 168
              Height = 21
              TabOrder = 9
            end
            object edtEmitCodCidade: TEdit
              Left = 9
              Top = 261
              Width = 57
              Height = 21
              TabOrder = 10
            end
            object edtEmitCidade: TEdit
              Left = 68
              Top = 261
              Width = 187
              Height = 21
              TabOrder = 11
            end
            object edtEmitUF: TEdit
              Left = 279
              Top = 261
              Width = 27
              Height = 21
              TabOrder = 12
            end
            object BitBtn3: TBitBtn
              Left = 255
              Top = 261
              Width = 23
              Height = 20
              Hint = 
                'Digite parte do Nome da Cidade para busca (Ex.: Campinas, Hol, e' +
                'tc...)'
              Caption = '...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              OnClick = BitBtn3Click
            end
            object cbTipoEmit: TComboBox
              Left = 196
              Top = 30
              Width = 112
              Height = 21
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 14
              Text = 'Carga Propria'
              OnClick = cbTipoEmitClick
              Items.Strings = (
                'Carga Propria'
                'Transportadora')
            end
          end
          object GroupBox10: TGroupBox
            Left = 3
            Top = 366
            Width = 326
            Height = 49
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
              Left = 163
              Top = 16
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object edNumMdfe: TEdit
              Left = 68
              Top = 14
              Width = 85
              Height = 21
              TabOrder = 0
            end
            object dtaMdfe: TJvDatePickerEdit
              Left = 212
              Top = 12
              Width = 101
              Height = 21
              AllowNoDate = True
              Checked = True
              TabOrder = 1
            end
          end
          object GroupBox12: TGroupBox
            Left = 3
            Top = 301
            Width = 326
            Height = 61
            Caption = 'Carregamento'
            TabOrder = 2
            object Label87: TLabel
              Left = 284
              Top = 16
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object Label85: TLabel
              Left = 9
              Top = 15
              Width = 49
              Height = 13
              Caption = 'C'#243'd. Mun.'
            end
            object Label84: TLabel
              Left = 71
              Top = 16
              Width = 47
              Height = 13
              Caption = 'Mun'#237'cipio'
            end
            object edtUFCarregamento: TEdit
              Left = 279
              Top = 31
              Width = 27
              Height = 21
              Color = clInfoBk
              TabOrder = 0
            end
            object edtMunCarregaIBGE: TEdit
              Left = 9
              Top = 31
              Width = 57
              Height = 21
              Color = clInfoBk
              TabOrder = 1
            end
            object edtMunicipioCarrega: TEdit
              Left = 68
              Top = 31
              Width = 187
              Height = 21
              Color = clInfoBk
              TabOrder = 2
            end
            object BitBtn4: TBitBtn
              Left = 255
              Top = 31
              Width = 23
              Height = 20
              Hint = 
                'Digite parte do Nome da Cidade para busca (Ex.: Campinas, Hol, e' +
                'tc...)'
              Caption = '...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = BitBtn4Click
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'NFe'
          ImageIndex = 6
          object Label42: TLabel
            Left = 4
            Top = 31
            Width = 54
            Height = 13
            Caption = 'Chave NFe'
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
            Left = 3
            Top = 70
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
          object Label98: TLabel
            Left = 142
            Top = 72
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object Label60: TLabel
            Left = 5
            Top = 96
            Width = 45
            Height = 13
            Caption = 'Municipio'
          end
          object Label99: TLabel
            Left = 256
            Top = 72
            Width = 25
            Height = 13
            Caption = 'IBGE'
          end
          object edNFe1: TEdit
            Left = 2
            Top = 45
            Width = 290
            Height = 21
            Color = clInfoBk
            TabOrder = 0
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
            Left = 76
            Top = 70
            Width = 61
            Height = 21
            Hint = 
              'Quantidade rateada (Peso,Volume) '#13#10'5 posi'#231#245'es, sendo 3 inteiras ' +
              'e 2 decimais.'
            ParentShowHint = False
            ShowButton = False
            ShowHint = True
            TabOrder = 1
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
              'KG'
              'TON')
          end
          object JvDBUltimGrid1: TJvDBUltimGrid
            Left = 6
            Top = 119
            Width = 363
            Height = 240
            DataSource = dsMdfeDocs
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 18
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = JvDBUltimGrid1CellClick
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'MDFE'
                Title.Caption = 'C'#243'd.'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHAVE_NFE'
                Title.Caption = 'Chave'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PESO_VOLUME'
                Title.Caption = 'Peso/Vol.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_NF'
                Title.Caption = 'Valor'
                Width = 60
                Visible = True
              end>
          end
          object BitBtn5: TBitBtn
            Left = 318
            Top = 45
            Width = 25
            Height = 22
            Hint = 'Gravar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = BitBtn5Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284848284FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF848284840000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84000084000084000084000084
              8284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              848284840000840000840000840000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF848284840000840000FF000084000084000084
              0000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000
              840000FF0000FFFFFFFF0000840000840000848284FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000840000FFFFFFFFFFFFFFFFFFFF000084
              0000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000840000840000848284FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF840000840000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00008400008400008400008482
              84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF0000840000840000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00008400008400
              00848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000840000848284FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              00840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object BitBtn6: TBitBtn
            Left = 344
            Top = 45
            Width = 25
            Height = 22
            Hint = 'Remover NFe'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = BitBtn6Click
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
          object edValorNFe1: TJvCalcEdit
            Left = 169
            Top = 70
            Width = 80
            Height = 21
            Hint = 'Valor Nota Fiscal'
            ParentShowHint = False
            ShowButton = False
            ShowHint = True
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
          end
          object rgOrigemNFe: TRadioGroup
            Left = 8
            Top = 0
            Width = 345
            Height = 30
            Caption = 'Origem NFe'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'Pr'#243'pria (N'#250'mero da NFe)'
              'Terceiros'
              'CTe')
            TabOrder = 19
          end
          object BitBtn7: TBitBtn
            Left = 293
            Top = 45
            Width = 25
            Height = 22
            Hint = 'Nova NFe'
            Caption = '+'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BitBtn7Click
          end
          object edMunNfe: TEdit
            Left = 284
            Top = 70
            Width = 69
            Height = 21
            Color = clInfoBk
            TabOrder = 20
          end
          object edxMunNfe: TEdit
            Left = 76
            Top = 94
            Width = 253
            Height = 21
            Color = clInfoBk
            TabOrder = 21
          end
          object BitBtn10: TBitBtn
            Left = 329
            Top = 95
            Width = 23
            Height = 20
            Hint = 
              'Digite parte do Nome da Cidade para busca (Ex.: Campinas, Hol, e' +
              'tc...)'
            Caption = '...'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 22
            OnClick = BitBtn10Click
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
            Color = clInfoBk
            TabOrder = 5
          end
          object edCapKg: TEdit
            Left = 115
            Top = 96
            Width = 97
            Height = 21
            Color = clInfoBk
            TabOrder = 6
          end
          object edCapM3: TEdit
            Left = 221
            Top = 96
            Width = 92
            Height = 21
            Color = clInfoBk
            TabOrder = 7
          end
          object edPlaca: TEdit
            Left = 169
            Top = 56
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
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
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
          end
          object edCondutorCPF: TEdit
            Left = 88
            Top = 219
            Width = 224
            Height = 21
            Color = clInfoBk
            TabOrder = 12
          end
          object edMunicipioDescarga: TEdit
            Left = 8
            Top = 255
            Width = 304
            Height = 21
            Color = clInfoBk
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
            OnChange = cbTransporteChange
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
            Color = clInfoBk
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
            Color = clInfoBk
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
            Color = clInfoBk
            TabOrder = 15
          end
          object edUFLicVeiculo: TEdit
            Left = 287
            Top = 56
            Width = 26
            Height = 21
            Hint = 'UF em que ve'#237'culo est'#225' licenciado '
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object edCodIbgeDescarga: TMaskEdit
            Left = 77
            Top = 279
            Width = 63
            Height = 21
            Color = clInfoBk
            TabOrder = 14
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
          object BitBtn8: TBitBtn
            Left = 142
            Top = 279
            Width = 23
            Height = 20
            Hint = 
              'Digite parte do Nome da Cidade para busca (Ex.: Campinas, Hol, e' +
              'tc...)'
            Caption = '...'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 20
            OnClick = BitBtn8Click
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
              Left = 26
              Top = 19
              Width = 52
              Height = 13
              Caption = 'CPF/CNPJ'
            end
            object Label70: TLabel
              Left = 37
              Top = 95
              Width = 41
              Height = 13
              Caption = 'RNTRC '
            end
            object Label71: TLabel
              Left = 56
              Top = 119
              Width = 21
              Height = 13
              Caption = 'Tipo'
            end
            object Label72: TLabel
              Left = 50
              Top = 70
              Width = 28
              Height = 13
              Caption = 'Nome'
            end
            object Label73: TLabel
              Left = 11
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
            Left = 0
            Top = 288
            Width = 329
            Height = 137
            Caption = 'Seguro'
            TabOrder = 2
            object Label100: TLabel
              Left = 8
              Top = 12
              Width = 59
              Height = 13
              Caption = 'Res. Seguro'
            end
            object Label104: TLabel
              Left = 161
              Top = 12
              Width = 120
              Height = 13
              Caption = 'CNPJ/CPF Resp. Seguro'
            end
            object Label101: TLabel
              Left = 37
              Top = 53
              Width = 55
              Height = 13
              Caption = 'Seguradora'
            end
            object Label105: TLabel
              Left = 7
              Top = 73
              Width = 85
              Height = 13
              Caption = 'CNPJ Seguradora'
            end
            object Label102: TLabel
              Left = 57
              Top = 94
              Width = 35
              Height = 13
              Caption = 'Apolice'
            end
            object Label103: TLabel
              Left = 58
              Top = 115
              Width = 34
              Height = 13
              Caption = 'Averba'
            end
            object cbSegResp: TComboBox
              Left = 8
              Top = 28
              Width = 145
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              OnChange = cbSegRespChange
              Items.Strings = (
                '1- Emitente do MDF-e'
                '22 - Resp. contrat. transporte')
            end
            object edSegCNPJCPF: TEdit
              Left = 160
              Top = 28
              Width = 161
              Height = 21
              Hint = 'Cnpj/Cpf - Respons'#225'vel pelo Seguro'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object edSeguradora: TEdit
              Left = 94
              Top = 50
              Width = 227
              Height = 21
              TabOrder = 2
            end
            object edSegCnpj: TEdit
              Left = 94
              Top = 71
              Width = 147
              Height = 21
              TabOrder = 3
            end
            object edApolice: TEdit
              Left = 94
              Top = 92
              Width = 147
              Height = 21
              TabOrder = 4
            end
            object edAverba: TEdit
              Left = 94
              Top = 113
              Width = 147
              Height = 21
              TabOrder = 5
            end
          end
          object GroupBox15: TGroupBox
            Left = 0
            Top = 232
            Width = 329
            Height = 57
            Caption = 'UF Percurso'
            TabOrder = 3
            object edUFPercuso: TEdit
              Left = 8
              Top = 16
              Width = 49
              Height = 21
              TabOrder = 0
            end
            object edUFPercuso2: TEdit
              Left = 61
              Top = 16
              Width = 49
              Height = 21
              TabOrder = 1
            end
            object edUFPercuso3: TEdit
              Left = 114
              Top = 16
              Width = 49
              Height = 21
              TabOrder = 2
            end
            object edUFPercuso4: TEdit
              Left = 167
              Top = 16
              Width = 49
              Height = 21
              TabOrder = 3
            end
            object edUFPercuso5: TEdit
              Left = 221
              Top = 16
              Width = 49
              Height = 21
              TabOrder = 4
            end
            object edUFPercuso6: TEdit
              Left = 273
              Top = 16
              Width = 47
              Height = 21
              TabOrder = 5
            end
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
          object lSSLLib: TLabel
            Left = 43
            Top = 204
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'SSLLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lCryptLib: TLabel
            Left = 39
            Top = 231
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'CryptLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lHttpLib: TLabel
            Left = 43
            Top = 258
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'HttpLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lXmlSign: TLabel
            Left = 20
            Top = 285
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'XMLSignLib'
            Color = clBtnFace
            ParentColor = False
          end
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
          object cbSSLLib: TComboBox
            Left = 88
            Top = 196
            Width = 160
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 1
          end
          object cbCryptLib: TComboBox
            Left = 88
            Top = 223
            Width = 160
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 2
          end
          object cbHttpLib: TComboBox
            Left = 88
            Top = 250
            Width = 160
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 3
          end
          object cbXmlSignLib: TComboBox
            Left = 88
            Top = 277
            Width = 160
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 4
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          object GroupBox3: TGroupBox
            Left = 30
            Top = 6
            Width = 265
            Height = 277
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
            object Label83: TLabel
              Left = 8
              Top = 235
              Width = 44
              Height = 13
              Caption = 'Schemas'
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
            object edtPathSchemas: TEdit
              Left = 8
              Top = 251
              Width = 228
              Height = 21
              TabOrder = 5
              Text = 'c:\home'
            end
          end
          object rgVersaoDF: TRadioGroup
            Left = 31
            Top = 301
            Width = 265
            Height = 57
            Caption = 'Vers'#227'o do Documento Fiscal'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              '1.00'
              '3.00')
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
        object TabSheet15: TTabSheet
          Caption = 'NF'
          ImageIndex = 9
          object GroupBox11: TGroupBox
            Left = 8
            Top = 8
            Width = 313
            Height = 94
            Caption = 'Nota Fiscal 1'
            TabOrder = 0
            object Label79: TLabel
              Left = 9
              Top = 16
              Width = 27
              Height = 13
              Caption = 'CNPJ'
            end
            object Label80: TLabel
              Left = 9
              Top = 40
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
            end
            object Label81: TLabel
              Left = 10
              Top = 66
              Width = 49
              Height = 13
              Caption = 'Num./S'#233'r.'
            end
            object LblNFVl: TLabel
              Left = 185
              Top = 48
              Width = 24
              Height = 13
              Caption = 'Valor'
            end
            object Label82: TLabel
              Left = 181
              Top = 18
              Width = 18
              Height = 13
              Caption = 'PIN'
            end
            object edNFCnpj1: TEdit
              Left = 40
              Top = 16
              Width = 129
              Height = 21
              TabOrder = 0
            end
            object edNFUF1: TEdit
              Left = 133
              Top = 40
              Width = 34
              Height = 21
              Hint = 'UF'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object edNFNum1: TEdit
              Left = 64
              Top = 64
              Width = 67
              Height = 21
              TabOrder = 3
            end
            object edNFSerie1: TEdit
              Left = 132
              Top = 64
              Width = 35
              Height = 21
              TabOrder = 4
            end
            object edNFPin1: TEdit
              Left = 219
              Top = 16
              Width = 86
              Height = 21
              TabOrder = 5
            end
            object edNFValor1: TJvCalcEdit
              Left = 182
              Top = 64
              Width = 123
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              DecimalPlacesAlwaysShown = False
            end
            object dtNF1: TJvDatePickerEdit
              Left = 51
              Top = 40
              Width = 82
              Height = 21
              AllowNoDate = True
              Checked = True
              TabOrder = 1
            end
          end
          object GroupBox13: TGroupBox
            Left = 8
            Top = 106
            Width = 313
            Height = 94
            Caption = 'Nota Fiscal 2'
            TabOrder = 1
            object Label88: TLabel
              Left = 9
              Top = 16
              Width = 27
              Height = 13
              Caption = 'CNPJ'
            end
            object Label89: TLabel
              Left = 9
              Top = 40
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
            end
            object Label90: TLabel
              Left = 10
              Top = 66
              Width = 49
              Height = 13
              Caption = 'Num./S'#233'r.'
            end
            object Label91: TLabel
              Left = 185
              Top = 48
              Width = 24
              Height = 13
              Caption = 'Valor'
            end
            object Label92: TLabel
              Left = 181
              Top = 18
              Width = 18
              Height = 13
              Caption = 'PIN'
            end
            object edNFCnpj2: TEdit
              Left = 40
              Top = 16
              Width = 128
              Height = 21
              TabOrder = 0
            end
            object edNFUF2: TEdit
              Left = 134
              Top = 40
              Width = 34
              Height = 21
              Hint = 'UF'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object edNFNum2: TEdit
              Left = 64
              Top = 64
              Width = 68
              Height = 21
              TabOrder = 3
            end
            object edNFSerie2: TEdit
              Left = 134
              Top = 64
              Width = 34
              Height = 21
              TabOrder = 4
            end
            object edNFPin2: TEdit
              Left = 219
              Top = 16
              Width = 86
              Height = 21
              TabOrder = 5
            end
            object edNFValor2: TJvCalcEdit
              Left = 182
              Top = 64
              Width = 123
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              DecimalPlacesAlwaysShown = False
            end
            object dtNF2: TJvDatePickerEdit
              Left = 51
              Top = 40
              Width = 82
              Height = 21
              AllowNoDate = True
              Checked = True
              TabOrder = 1
            end
          end
          object GroupBox14: TGroupBox
            Left = 8
            Top = 210
            Width = 313
            Height = 94
            Caption = 'Nota Fiscal 3'
            TabOrder = 2
            object Label93: TLabel
              Left = 9
              Top = 16
              Width = 27
              Height = 13
              Caption = 'CNPJ'
            end
            object Label94: TLabel
              Left = 9
              Top = 40
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
            end
            object Label95: TLabel
              Left = 10
              Top = 66
              Width = 49
              Height = 13
              Caption = 'Num./S'#233'r.'
            end
            object Label96: TLabel
              Left = 185
              Top = 48
              Width = 24
              Height = 13
              Caption = 'Valor'
            end
            object Label97: TLabel
              Left = 181
              Top = 18
              Width = 18
              Height = 13
              Caption = 'PIN'
            end
            object edNFCnpj3: TEdit
              Left = 40
              Top = 16
              Width = 129
              Height = 21
              TabOrder = 0
            end
            object edNFUF3: TEdit
              Left = 134
              Top = 40
              Width = 34
              Height = 21
              Hint = 'UF'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object edNFNum3: TEdit
              Left = 64
              Top = 64
              Width = 67
              Height = 21
              TabOrder = 3
            end
            object edNFSerie3: TEdit
              Left = 134
              Top = 64
              Width = 34
              Height = 21
              TabOrder = 4
            end
            object edNFPin3: TEdit
              Left = 219
              Top = 16
              Width = 86
              Height = 21
              TabOrder = 5
            end
            object edNFValor3: TJvCalcEdit
              Left = 182
              Top = 64
              Width = 123
              Height = 21
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              DecimalPlacesAlwaysShown = False
            end
            object dtNF3: TJvDatePickerEdit
              Left = 51
              Top = 40
              Width = 82
              Height = 21
              AllowNoDate = True
              Checked = True
              TabOrder = 1
            end
          end
        end
        object TabSheet17: TTabSheet
          Caption = 'Inf. Pagamento'
          ImageIndex = 10
          object GroupBox17: TGroupBox
            Left = 0
            Top = 1
            Width = 369
            Height = 422
            Caption = 'Informa'#231#245'es Pagamento'
            TabOrder = 0
            object Label136: TLabel
              Left = 10
              Top = 22
              Width = 94
              Height = 13
              Caption = 'Valor Total Contrato'
            end
            object Label137: TLabel
              Left = 8
              Top = 58
              Width = 56
              Height = 13
              Caption = 'C'#243'd. Banco'
            end
            object Label138: TLabel
              Left = 80
              Top = 58
              Width = 39
              Height = 13
              Caption = 'Ag'#234'ncia'
            end
            object Label139: TLabel
              Left = 202
              Top = 58
              Width = 61
              Height = 13
              Caption = 'Banco CNPJ'
            end
            object Label140: TLabel
              Left = 8
              Top = 120
              Width = 21
              Height = 13
              Caption = 'Tipo'
            end
            object Label142: TLabel
              Left = 168
              Top = 120
              Width = 24
              Height = 13
              Caption = 'Valor'
            end
            object Label143: TLabel
              Left = 8
              Top = 144
              Width = 51
              Height = 13
              Caption = 'Descri'#231#227'o '
            end
            object Label144: TLabel
              Left = 8
              Top = 307
              Width = 64
              Height = 13
              Caption = 'Num. Parcela'
            end
            object Label145: TLabel
              Left = 157
              Top = 275
              Width = 82
              Height = 13
              Caption = 'Data Vencimento'
            end
            object Label146: TLabel
              Left = 138
              Top = 306
              Width = 63
              Height = 13
              Caption = 'Valor Parcela'
            end
            object Label152: TLabel
              Left = 168
              Top = 76
              Width = 15
              Height = 13
              Caption = 'ou'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rgPagInd: TRadioGroup
              Left = 7
              Top = 268
              Width = 145
              Height = 33
              Caption = 'Tipo Pagamento'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'A Vista'
                'A Prazo')
              TabOrder = 7
              OnClick = rgPagIndClick
            end
            object edtPagBancoCod: TEdit
              Left = 8
              Top = 74
              Width = 57
              Height = 21
              TabOrder = 1
            end
            object edtPagBancoAgencia: TEdit
              Left = 80
              Top = 74
              Width = 73
              Height = 21
              TabOrder = 2
            end
            object edtPagBancoCnpj: TEdit
              Left = 200
              Top = 74
              Width = 150
              Height = 21
              TabOrder = 3
            end
            object cbpagcomp: TComboBox
              Left = 40
              Top = 120
              Width = 121
              Height = 21
              ItemHeight = 13
              TabOrder = 4
              Items.Strings = (
                '0-Vale Pedagio'
                '1-Impostos'
                '2-Despesas'
                '3-Outros')
            end
            object edtpagCompDesc: TEdit
              Left = 64
              Top = 144
              Width = 241
              Height = 21
              TabOrder = 6
            end
            object dtpPagVencimento: TJvDatePickerEdit
              Left = 249
              Top = 272
              Width = 101
              Height = 21
              AllowNoDate = True
              Checked = True
              Enabled = False
              TabOrder = 8
            end
            object edtPagParcela: TEdit
              Left = 81
              Top = 306
              Width = 48
              Height = 21
              Enabled = False
              TabOrder = 9
            end
            object DBGrid2: TDBGrid
              Left = 9
              Top = 167
              Width = 352
              Height = 90
              DataSource = ds_comp
              TabOrder = 11
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TP_COMP'
                  Title.Caption = 'Tipo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMP_DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_COMPONENTE'
                  Title.Caption = 'Valor'
                  Visible = True
                end>
            end
            object BitBtn12: TBitBtn
              Left = 304
              Top = 142
              Width = 25
              Height = 22
              Hint = 'Gravar novo Componente'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnClick = BitBtn12Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284848284FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF848284840000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84000084000084000084000084
                8284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                848284840000840000840000840000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF848284840000840000FF000084000084000084
                0000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000
                840000FF0000FFFFFFFF0000840000840000848284FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000840000FFFFFFFFFFFFFFFFFFFF000084
                0000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000840000840000848284FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF840000840000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00008400008400008400008482
                84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0000840000840000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00008400008400
                00848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000840000848284FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                00840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object BitBtn13: TBitBtn
              Left = 330
              Top = 142
              Width = 25
              Height = 22
              Hint = 'Informe o TIPO a ser removido'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              OnClick = BitBtn13Click
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
            object DBGrid3: TDBGrid
              Left = 8
              Top = 328
              Width = 344
              Height = 89
              DataSource = ds_pag
              TabOrder = 14
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'N_PARCELA'
                  Title.Caption = 'Parcela'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_VENCIMENTO'
                  Title.Caption = 'Vencimento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_PARCELA'
                  Title.Caption = 'Valor'
                  Visible = True
                end>
            end
            object BitBtn14: TBitBtn
              Left = 299
              Top = 303
              Width = 25
              Height = 22
              Hint = 'Gravar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 15
              OnClick = BitBtn14Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284848284FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF848284840000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84000084000084000084000084
                8284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                848284840000840000840000840000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF848284840000840000FF000084000084000084
                0000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF840000
                840000FF0000FFFFFFFF0000840000840000848284FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000840000FFFFFFFFFFFFFFFFFFFF000084
                0000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000840000840000848284FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF840000840000840000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00008400008400008400008482
                84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0000840000840000840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00008400008400
                00848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000840000848284FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                00840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object BitBtn15: TBitBtn
              Left = 325
              Top = 303
              Width = 25
              Height = 22
              Hint = 'Informe o n'#250'mero da PARCELA a ser removido'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 16
              OnClick = BitBtn15Click
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
            object edtpagcompvalor: TJvCalcEdit
              Left = 201
              Top = 118
              Width = 149
              Height = 21
              ParentShowHint = False
              ShowButton = False
              ShowHint = True
              TabOrder = 5
              DecimalPlacesAlwaysShown = False
            end
            object edtPagVContrato: TJvCalcEdit
              Left = 201
              Top = 19
              Width = 149
              Height = 21
              ParentShowHint = False
              ShowButton = False
              ShowHint = True
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
            end
            object edtPagParcelaValor: TJvCalcEdit
              Left = 208
              Top = 306
              Width = 87
              Height = 21
              ParentShowHint = False
              ShowButton = False
              ShowHint = True
              TabOrder = 10
              DecimalPlacesAlwaysShown = False
            end
          end
        end
        object TabSheet18: TTabSheet
          Caption = 'Produto'
          ImageIndex = 11
          object Label141: TLabel
            Left = 8
            Top = 56
            Width = 105
            Height = 13
            Caption = 'Produto Predominante'
          end
          object Label147: TLabel
            Left = 8
            Top = 8
            Width = 120
            Height = 13
            Caption = 'Tipo Predominante Carga'
          end
          object Label148: TLabel
            Left = 8
            Top = 104
            Width = 92
            Height = 13
            Caption = 'C'#243'digo Barra (EAN)'
          end
          object Label149: TLabel
            Left = 8
            Top = 152
            Width = 24
            Height = 13
            Caption = 'NCM'
          end
          object Label150: TLabel
            Left = 8
            Top = 224
            Width = 119
            Height = 13
            Caption = 'CEP Local Carregamento'
          end
          object Label151: TLabel
            Left = 8
            Top = 280
            Width = 137
            Height = 13
            Caption = 'CEP Local Descarregamento'
          end
          object edtPagProdPred: TEdit
            Left = 8
            Top = 72
            Width = 345
            Height = 21
            TabOrder = 1
          end
          object cbPagTipoCargaPred: TComboBox
            Left = 8
            Top = 24
            Width = 345
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Items.Strings = (
              '01-Granel Solido'
              '02-Granel Liquido'
              '03-Frigorificada'
              '04-Conteinerizada'
              '05-Carga Geral'
              '06-Neogranel'
              '07-Perigosa Granel Solido'
              '08-Perigosa Granel Liquido'
              '09-Perigosa Carga Frigorificada'
              '10-Perigosa Conteinerizada'
              '11-Perigosa Carga Geral')
          end
          object edtPagProdEAN: TEdit
            Left = 8
            Top = 120
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object edtPagProdNCM: TEdit
            Left = 9
            Top = 168
            Width = 121
            Height = 21
            TabOrder = 3
          end
          object edtPagProdLocalCarrega: TEdit
            Left = 8
            Top = 240
            Width = 121
            Height = 21
            TabOrder = 4
          end
          object edtPagProdLocalDescarrega: TEdit
            Left = 8
            Top = 296
            Width = 121
            Height = 21
            TabOrder = 5
          end
        end
        object TabSheet19: TTabSheet
          Caption = 'Contratante/Outros'
          ImageIndex = 12
          object GroupBox18: TGroupBox
            Left = 8
            Top = 8
            Width = 361
            Height = 393
            Caption = 'Informa'#231#227'o do Contratante'
            TabOrder = 0
            object Label134: TLabel
              Left = 10
              Top = 22
              Width = 182
              Height = 13
              Caption = 'Raz'#227'o Social ou Nome do Contratante'
            end
            object Label135: TLabel
              Left = 10
              Top = 65
              Width = 110
              Height = 13
              Caption = 'CNPJ/CPF Contratante'
            end
            object Label153: TLabel
              Left = 11
              Top = 106
              Width = 83
              Height = 13
              Caption = 'Ident. Estrangeiro'
            end
            object Label46: TLabel
              Left = 8
              Top = 168
              Width = 30
              Height = 13
              Caption = 'Placa '
            end
            object lblidunid: TLabel
              Left = 8
              Top = 210
              Width = 28
              Height = 13
              Caption = 'Carga'
            end
            object Label59: TLabel
              Left = 75
              Top = 168
              Width = 66
              Height = 13
              Caption = 'Lacre Transp.'
            end
            object Label47: TLabel
              Left = 75
              Top = 208
              Width = 58
              Height = 13
              Caption = 'Lacre Carga'
            end
            object edtPagEmpresa: TEdit
              Left = 8
              Top = 37
              Width = 345
              Height = 21
              TabOrder = 0
            end
            object edtPagCnpj: TEdit
              Left = 8
              Top = 78
              Width = 145
              Height = 21
              TabOrder = 1
            end
            object edtIdEstrangeiro: TEdit
              Left = 8
              Top = 122
              Width = 145
              Height = 21
              Hint = 'Identifica'#231#227'o do Contratante em caso de Estrangeiro'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object edPlacaMDFE: TEdit
              Left = 8
              Top = 184
              Width = 121
              Height = 21
              TabOrder = 3
            end
            object edUnidCargaMDFE: TEdit
              Left = 8
              Top = 224
              Width = 121
              Height = 21
              TabOrder = 4
            end
            object edLacreMDFE: TEdit
              Left = 72
              Top = 184
              Width = 121
              Height = 21
              TabOrder = 5
            end
            object edLacreCargaMDFE: TEdit
              Left = 72
              Top = 224
              Width = 121
              Height = 21
              TabOrder = 6
            end
          end
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 108
      Top = 501
      Width = 153
      Height = 38
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
    object BitBtn9: TBitBtn
      Left = 261
      Top = 501
      Width = 83
      Height = 38
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = BitBtn9Click
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888887788877
        88877888000887788888888788877888778887780EE088877888888877888778
        887788870EE607888778877888778887788877880EE660778887888778887788
        877888770EE666007788878887788877888778880EE666600077800000000000
        008887780EE666660000888888888888807788870EE666660778888888888888
        800077880EE666660778888888888887800000000EE666660778888888888807
        707777770EE666660778888888888800707777770EE666660778888888888806
        007777770EE666660778888888888806607777770EE60066077888888777770E
        660777770EE07066077888887777770EE66077770EE0F066077888800000000E
        EE6607770EE60066077888066666666EEEE660770EE666660778880EEEEEEEEE
        EEEE66070EE666660778880EEFFFFFFFFFFEE6070EE666660778880EEEEEEEEE
        EFEE60770EE66666077888800000000EFEE607770EE66666077888888888880E
        EE6077770EE66666077888888888880EE60777770EE66666077888888888880E
        607777770EE6666607788888888888060077777770EE66660778888888888800
        80777777770EE6660778888888888888807777777770EE660778888888888888
        8077777777770EE6077888888888888880777777777770EE0788888888888888
        8000000000000000088888888888888888888888888888888888}
    end
  end
  object Panel2: TPanel
    Left = 385
    Top = 0
    Width = 630
    Height = 543
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 628
      Height = 176
      Align = alTop
      TabOrder = 0
      object btnImprimir: TButton
        Left = 39
        Top = 104
        Width = 177
        Height = 25
        Caption = '4-Imprimir DAMDFe'
        TabOrder = 3
        OnClick = btnImprimirClick
      end
      object btnConsultar: TButton
        Left = 407
        Top = 40
        Width = 177
        Height = 25
        Caption = 'Consultar carregando XML'
        TabOrder = 4
        OnClick = btnConsultarClick
      end
      object btnValidarXML: TButton
        Left = 407
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
        Left = 39
        Top = 8
        Width = 177
        Height = 25
        Caption = 'Status Servi'#231'o'
        TabOrder = 0
        OnClick = btnStatusServClick
      end
      object btnCancelamento: TButton
        Left = 407
        Top = 72
        Width = 177
        Height = 25
        Caption = 'Cancelamento'
        TabOrder = 5
        OnClick = btnCancelamentoClick
      end
      object btnCriarEnviar: TButton
        Left = 39
        Top = 40
        Width = 177
        Height = 25
        Caption = '3-Criar e Enviar'
        TabOrder = 2
        OnClick = btnCriarEnviarClick
      end
      object btnGerarMDFe: TButton
        Left = 223
        Top = 8
        Width = 177
        Height = 25
        Caption = '1-GRAVAR/Gerar MDFe'
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
        Left = 223
        Top = 104
        Width = 177
        Height = 25
        Caption = 'Gerar PDF'
        TabOrder = 7
        OnClick = btnGerarPDFClick
      end
      object btnConsultarRecibo: TButton
        Left = 223
        Top = 40
        Width = 177
        Height = 25
        Caption = 'Consultar Recibo Lote'
        TabOrder = 8
        OnClick = btnConsultarReciboClick
      end
      object btnConsultarChave: TButton
        Left = 39
        Top = 72
        Width = 177
        Height = 25
        Caption = 'Consultar pela Chave'
        TabOrder = 9
        OnClick = btnConsultarChaveClick
      end
      object btnEncerramento: TButton
        Left = 223
        Top = 72
        Width = 177
        Height = 25
        Caption = 'Encerramento'
        TabOrder = 10
        OnClick = btnEncerramentoClick
      end
      object btnImprimirEvento: TButton
        Left = 39
        Top = 135
        Width = 177
        Height = 25
        Caption = 'Imprimir Evento'
        TabOrder = 11
        OnClick = btnImprimirEventoClick
      end
      object btnEnviarEventoEmail: TButton
        Left = 407
        Top = 135
        Width = 177
        Height = 25
        Caption = 'Enviar Evento Email'
        TabOrder = 12
        OnClick = btnEnviarEventoEmailClick
      end
      object btnEnviarMDFeEmail: TButton
        Left = 407
        Top = 103
        Width = 177
        Height = 25
        Caption = 'Enviar MDF-e Email'
        TabOrder = 13
        OnClick = btnEnviarMDFeEmailClick
      end
      object btnGerarPDFEvento: TButton
        Left = 223
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
      Width = 628
      Height = 365
      ActivePage = TabSheet5
      Align = alClient
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 620
          Height = 337
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
          Width = 628
          Height = 335
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C000000E8400000A02200000000000000000000000000000000000000000000
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
          Width = 628
          Height = 335
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
          Width = 620
          Height = 337
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
        object GroupBox16: TGroupBox
          Left = 8
          Top = 8
          Width = 593
          Height = 325
          Caption = 'Reboque'
          TabOrder = 1
          Visible = False
          object Label108: TLabel
            Left = 34
            Top = 17
            Width = 25
            Height = 13
            Caption = 'CINT'
          end
          object Label109: TLabel
            Left = 32
            Top = 42
            Width = 27
            Height = 13
            Caption = 'Placa'
          end
          object Label110: TLabel
            Left = 36
            Top = 66
            Width = 22
            Height = 13
            Caption = 'Tara'
          end
          object Label111: TLabel
            Left = 22
            Top = 115
            Width = 40
            Height = 13
            Caption = 'Cap. KG'
          end
          object Label112: TLabel
            Left = 24
            Top = 89
            Width = 40
            Height = 13
            Caption = 'Cap. M3'
          end
          object Label113: TLabel
            Left = 13
            Top = 138
            Width = 52
            Height = 13
            Caption = 'CPF/CNPJ'
          end
          object Label115: TLabel
            Left = 24
            Top = 162
            Width = 38
            Height = 13
            Caption = 'RNTRC'
          end
          object Label116: TLabel
            Left = 32
            Top = 186
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object Label117: TLabel
            Left = 18
            Top = 211
            Width = 46
            Height = 13
            Caption = 'Renavam'
          end
          object Label118: TLabel
            Left = 48
            Top = 235
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label119: TLabel
            Left = 16
            Top = 256
            Width = 49
            Height = 13
            Caption = 'Tipo Prop.'
          end
          object Label120: TLabel
            Left = 6
            Top = 280
            Width = 58
            Height = 13
            Caption = 'Tipo Carroc.'
          end
          object Label121: TLabel
            Left = 24
            Top = 303
            Width = 41
            Height = 13
            Caption = 'UF Veic.'
          end
          object Label114: TLabel
            Left = 322
            Top = 17
            Width = 25
            Height = 13
            Caption = 'CINT'
          end
          object Label122: TLabel
            Left = 320
            Top = 42
            Width = 27
            Height = 13
            Caption = 'Placa'
          end
          object Label123: TLabel
            Left = 324
            Top = 66
            Width = 22
            Height = 13
            Caption = 'Tara'
          end
          object Label124: TLabel
            Left = 312
            Top = 89
            Width = 40
            Height = 13
            Caption = 'Cap. M3'
          end
          object Label125: TLabel
            Left = 310
            Top = 115
            Width = 40
            Height = 13
            Caption = 'Cap. KG'
          end
          object Label126: TLabel
            Left = 301
            Top = 138
            Width = 52
            Height = 13
            Caption = 'CPF/CNPJ'
          end
          object Label127: TLabel
            Left = 312
            Top = 162
            Width = 38
            Height = 13
            Caption = 'RNTRC'
          end
          object Label128: TLabel
            Left = 320
            Top = 186
            Width = 28
            Height = 13
            Caption = 'Nome'
          end
          object Label129: TLabel
            Left = 306
            Top = 211
            Width = 46
            Height = 13
            Caption = 'Renavam'
          end
          object Label130: TLabel
            Left = 336
            Top = 235
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label131: TLabel
            Left = 304
            Top = 256
            Width = 49
            Height = 13
            Caption = 'Tipo Prop.'
          end
          object Label132: TLabel
            Left = 294
            Top = 280
            Width = 58
            Height = 13
            Caption = 'Tipo Carroc.'
          end
          object Label133: TLabel
            Left = 312
            Top = 303
            Width = 41
            Height = 13
            Caption = 'UF Veic.'
          end
          object edRebocoCint: TEdit
            Left = 72
            Top = 16
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 0
          end
          object edRebocoPlaca: TEdit
            Left = 72
            Top = 40
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 1
          end
          object edRebocoTara: TEdit
            Left = 72
            Top = 64
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 2
          end
          object edRebocoCapM: TEdit
            Left = 72
            Top = 88
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 3
          end
          object edRebocoCapKg: TEdit
            Left = 72
            Top = 112
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 4
          end
          object edRebocoRNTRC: TEdit
            Left = 72
            Top = 160
            Width = 209
            Height = 21
            Color = clHighlightText
            TabOrder = 5
          end
          object edRebocoNome: TEdit
            Left = 72
            Top = 184
            Width = 209
            Height = 21
            TabOrder = 6
          end
          object edRebocoIE: TEdit
            Left = 72
            Top = 208
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 7
          end
          object edRebocoUF: TEdit
            Left = 72
            Top = 232
            Width = 209
            Height = 21
            Color = clHighlightText
            TabOrder = 8
          end
          object edRebocoTipoProp: TEdit
            Left = 72
            Top = 254
            Width = 209
            Height = 21
            TabOrder = 9
          end
          object edRebocoUFVeic: TEdit
            Left = 72
            Top = 300
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 10
          end
          object edRebocoCPF: TEdit
            Left = 72
            Top = 136
            Width = 209
            Height = 21
            TabOrder = 11
          end
          object edRebocoCint2: TEdit
            Left = 360
            Top = 16
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 12
          end
          object edRebocoPlaca2: TEdit
            Left = 360
            Top = 40
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 13
          end
          object edRebocoTara2: TEdit
            Left = 360
            Top = 64
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 14
          end
          object edRebocoCapM2: TEdit
            Left = 360
            Top = 88
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 15
          end
          object edRebocoCapKg2: TEdit
            Left = 360
            Top = 112
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 16
          end
          object edRebocoCPF2: TEdit
            Left = 360
            Top = 136
            Width = 209
            Height = 21
            TabOrder = 17
          end
          object edRebocoRNTRC2: TEdit
            Left = 360
            Top = 160
            Width = 209
            Height = 21
            Color = clHighlightText
            TabOrder = 18
          end
          object edRebocoNome2: TEdit
            Left = 360
            Top = 184
            Width = 209
            Height = 21
            TabOrder = 19
          end
          object edRebocoIE2: TEdit
            Left = 360
            Top = 208
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 20
          end
          object edRebocoUF2: TEdit
            Left = 360
            Top = 232
            Width = 209
            Height = 21
            Color = clHighlightText
            TabOrder = 21
          end
          object edRebocoTipoProp2: TEdit
            Left = 360
            Top = 254
            Width = 209
            Height = 21
            TabOrder = 22
          end
          object edRebocoUFVeic2: TEdit
            Left = 360
            Top = 300
            Width = 209
            Height = 21
            Color = clInfoBk
            TabOrder = 23
          end
          object edRebocoTipoCarroc: TComboBox
            Left = 72
            Top = 277
            Width = 209
            Height = 21
            Color = clInfoBk
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 24
            Text = '00 - n'#227'o aplic'#225'vel;'
            Items.Strings = (
              '00 - n'#227'o aplic'#225'vel;'
              '01 - Aberta;'
              '02 - Fechada/Ba'#250';'
              '03 - Granelera;')
          end
          object edRebocoTipoCarroc2: TComboBox
            Left = 360
            Top = 277
            Width = 209
            Height = 21
            Color = clInfoBk
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 25
            Text = '00 - n'#227'o aplic'#225'vel;'
            Items.Strings = (
              '00 - n'#227'o aplic'#225'vel;'
              '01 - Aberta;'
              '02 - Fechada/Ba'#250';'
              '03 - Granelera;')
          end
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        object memoRespWS: TMemo
          Left = 0
          Top = 0
          Width = 628
          Height = 335
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
          Width = 628
          Height = 335
          Align = alClient
          TabOrder = 0
        end
        object pnCity: TPanel
          Left = 8
          Top = 0
          Width = 617
          Height = 329
          TabOrder = 1
          Visible = False
          object BitBtn11: TBitBtn
            Left = 528
            Top = 280
            Width = 75
            Height = 41
            Caption = 'Fechar'
            TabOrder = 0
            OnClick = BitBtn11Click
          end
          object DBGrid1: TDBGrid
            Left = 8
            Top = 32
            Width = 585
            Height = 241
            DataSource = dsProc
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
      object TabSheet16: TTabSheet
        Caption = 'Outros'
        ImageIndex = 6
        object BitBtn1: TBitBtn
          Left = 24
          Top = 8
          Width = 137
          Height = 25
          Hint = 'Adiciona a tabela MDF campos novos.'
          Caption = 'Atualizar Banco de Dados'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 24
          Top = 40
          Width = 137
          Height = 25
          Hint = 'Adiciona a tabela MDF campos novos.'
          Caption = 'Excluir MDFe'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn2Click
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
  object sqlEmitente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.sc
    Left = 104
    Top = 360
  end
  object sqlProc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO '
      '       from TB_IBGE ')
    SQLConnection = dm.sc
    Left = 926
    Top = 161
    object sqlProcNM_LOCALIDADE: TStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object sqlProcCD_UF: TStringField
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
    object sqlProcCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object sqlProcNM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
  end
  object sdsMdfeDocs: TSQLDataSet
    CommandText = 
      'SELECT * FROM MDFE_DOCS WHERE MDFE = :MDFE '#13#10'AND ((CD_IBGE = :PI' +
      'BGE) OR (:PIBGE = 0))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MDFE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIBGE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIBGE'
        ParamType = ptInput
      end>
    SQLConnection = dm.sc
    Left = 646
    Top = 153
  end
  object dspMdfeDocs: TDataSetProvider
    DataSet = sdsMdfeDocs
    Left = 678
    Top = 153
  end
  object cdsMdfeDocs: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'MDFE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIBGE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIBGE'
        ParamType = ptInput
      end>
    ProviderName = 'dspMdfeDocs'
    Left = 710
    Top = 153
    object cdsMdfeDocsMDFE: TIntegerField
      FieldName = 'MDFE'
    end
    object cdsMdfeDocsCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 60
    end
    object cdsMdfeDocsPESO_VOLUME: TFloatField
      FieldName = 'PESO_VOLUME'
      DisplayFormat = ',##0.0'
    end
    object cdsMdfeDocsVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      DisplayFormat = ',##0.00'
    end
    object cdsMdfeDocsCD_IBGE: TIntegerField
      FieldName = 'CD_IBGE'
    end
    object cdsMdfeDocsMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 50
    end
    object cdsMdfeDocsTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
  end
  object dsMdfeDocs: TDataSource
    DataSet = cdsMdfeDocs
    Left = 758
    Top = 153
  end
  object OpenDialog2: TOpenDialog
    Left = 234
    Top = 53
  end
  object sqlProcNfe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.sc
    Left = 862
    Top = 161
  end
  object sqlMDFEMun: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT udf_collatebr(udf_upper(MUNICIPIO)) as MUNICIPIO' +
      ', CD_IBGE FROM MDFE_DOCS WHERE MDFE = :MDFE ORDER BY MUNICIPIO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MDFE'
        ParamType = ptInput
      end>
    SQLConnection = dm.sc
    Left = 422
    Top = 145
  end
  object dspMun: TDataSetProvider
    DataSet = sqlMDFEMun
    Left = 454
    Top = 145
  end
  object cdsMun: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'MDFE'
        ParamType = ptInput
      end>
    ProviderName = 'dspMun'
    Left = 486
    Top = 145
    object cdsMunMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 50
    end
    object cdsMunCD_IBGE: TIntegerField
      FieldName = 'CD_IBGE'
    end
  end
  object cdsProc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 394
    Top = 89
  end
  object dsProc: TDataSource
    DataSet = cdsProc
    Left = 394
    Top = 121
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = sqlProc
    Left = 394
    Top = 57
  end
  object sds_comp: TSQLDataSet
    CommandText = 'SELECT * FROM MDFE_COMP_FRETE WHERE MDFE = :pMDFE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMDFE'
        ParamType = ptInput
      end>
    SQLConnection = dm.sc
    Left = 154
    Top = 262
  end
  object sds_pag: TSQLDataSet
    CommandText = 'SELECT * FROM MDFE_INF_PRAZO WHERE MDFE = :pMDFE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMDFE'
        ParamType = ptInput
      end>
    SQLConnection = dm.sc
    Left = 162
    Top = 422
  end
  object dsp_pag: TDataSetProvider
    DataSet = sds_pag
    Left = 194
    Top = 422
  end
  object cds_pag: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pMDFE'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_pag'
    Left = 226
    Top = 422
    object cds_pagMDFE: TIntegerField
      FieldName = 'MDFE'
      Required = True
    end
    object cds_pagN_PARCELA: TIntegerField
      FieldName = 'N_PARCELA'
      Required = True
    end
    object cds_pagVALOR_PARCELA: TFloatField
      FieldName = 'VALOR_PARCELA'
      DisplayFormat = '#,##0.00'
    end
    object cds_pagDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object dsp_comp: TDataSetProvider
    DataSet = sds_comp
    Left = 194
    Top = 262
  end
  object cds_comp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pMDFE'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_comp'
    Left = 234
    Top = 262
    object cds_compMDFE: TIntegerField
      FieldName = 'MDFE'
      Required = True
    end
    object cds_compTP_COMP: TStringField
      FieldName = 'TP_COMP'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cds_compVALOR_COMPONENTE: TFloatField
      FieldName = 'VALOR_COMPONENTE'
      DisplayFormat = '#,##0.00'
    end
    object cds_compCOMP_DESCRICAO: TStringField
      FieldName = 'COMP_DESCRICAO'
      Size = 40
    end
  end
  object ds_comp: TDataSource
    DataSet = cds_comp
    Left = 266
    Top = 262
  end
  object ds_pag: TDataSource
    DataSet = cds_pag
    Left = 258
    Top = 422
  end
end
