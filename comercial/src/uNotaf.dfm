object fNotaf: TfNotaf
  Left = 256
  Top = 164
  Width = 801
  Height = 614
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 59
    Width = 793
    Height = 526
    ActivePage = TabNF
    Align = alTop
    PopupMenu = PopupMenu1
    Style = tsFlatButtons
    TabOrder = 2
    object TabNF: TTabSheet
      Caption = 'Nota Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object JvGroupBox1: TJvGroupBox
        Left = 3
        Top = -1
        Width = 183
        Height = 42
        Caption = 'Natureza da Opera'#231#227'o'
        TabOrder = 0
        object cbNatureza: TDBComboBox
          Left = 7
          Top = 14
          Width = 170
          Height = 21
          BevelKind = bkFlat
          DataField = 'DESCNATUREZA'
          DataSource = DMNF.DtSrc_NF
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbNaturezaChange
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox2: TJvGroupBox
        Left = 186
        Top = -1
        Width = 173
        Height = 42
        Caption = 'C.F.O.P'
        TabOrder = 1
        object lblFatura: TLabel
          Left = 2
          Top = 27
          Width = 169
          Height = 13
          Align = alBottom
          Caption = '..'
        end
        object cbCFOP: TDBComboBox
          Left = 8
          Top = 14
          Width = 75
          Height = 21
          BevelKind = bkFlat
          Color = clInfoBk
          DataField = 'CFOP'
          DataSource = DMNF.DtSrc_NF
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbCFOPChange
          OnExit = cbCFOPChange
          OnKeyPress = FormKeyPress
        end
        object btnRemessa: TButton
          Left = 88
          Top = 11
          Width = 77
          Height = 25
          Caption = 'N.F. Remessa '
          Enabled = False
          TabOrder = 1
          OnClick = btnRemessaClick
        end
      end
      object JvGroupBox3: TJvGroupBox
        Left = 367
        Top = -1
        Width = 135
        Height = 42
        Caption = 'C.N.P.J.'
        TabOrder = 3
        object DBText1: TDBText
          Left = 5
          Top = 18
          Width = 70
          Height = 20
          AutoSize = True
          DataField = 'CNPJ_CPF'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object JvGroupBox4: TJvGroupBox
        Left = 505
        Top = -1
        Width = 135
        Height = 42
        Caption = 'Inscri'#231#227'o Estadual'
        TabOrder = 4
        object DBText2: TDBText
          Left = 5
          Top = 18
          Width = 70
          Height = 20
          AutoSize = True
          DataField = 'IE_RG'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object JvGroupBox5: TJvGroupBox
        Left = 3
        Top = 41
        Width = 452
        Height = 41
        Caption = 'Nome / Raz'#227'o Social'
        TabOrder = 5
        object cbCLiente: TDBComboBox
          Left = 7
          Top = 14
          Width = 218
          Height = 21
          BevelKind = bkFlat
          DataField = 'NOMECLIENTE'
          DataSource = DMNF.DtSrc_NF
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbCLienteChange
          OnKeyPress = FormKeyPress
        end
        object btnProcCli: TBitBtn
          Left = 224
          Top = 11
          Width = 31
          Height = 25
          Caption = '...'
          TabOrder = 1
          OnClick = btnProcCliClick
        end
        object DBEdit48: TDBEdit
          Left = 258
          Top = 14
          Width = 190
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'RAZAOSOCIAL'
          DataSource = DMNF.DtSrc_NF
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox6: TJvGroupBox
        Left = 456
        Top = 41
        Width = 185
        Height = 41
        Caption = 'C.N.P.J.'
        TabOrder = 6
        object DBEdit1: TDBEdit
          Left = 5
          Top = 14
          Width = 175
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CNPJCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox7: TJvGroupBox
        Left = 3
        Top = 83
        Width = 321
        Height = 41
        Caption = 'Endere'#231'o'
        TabOrder = 7
        object DBEdit2: TDBEdit
          Left = 5
          Top = 14
          Width = 310
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'LOGRADOURO'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox8: TJvGroupBox
        Left = 324
        Top = 83
        Width = 206
        Height = 41
        Caption = 'Bairro'
        TabOrder = 8
        object DBEdit3: TDBEdit
          Left = 5
          Top = 14
          Width = 196
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'BAIRROCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox9: TJvGroupBox
        Left = 530
        Top = 83
        Width = 111
        Height = 41
        Caption = 'CEP'
        TabOrder = 9
        object DBEdit4: TDBEdit
          Left = 5
          Top = 14
          Width = 100
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CEPCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox10: TJvGroupBox
        Left = 642
        Top = 41
        Width = 118
        Height = 41
        Caption = 'Data da Emiss'#227'o'
        TabOrder = 14
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 5
          Top = 15
          Width = 108
          Height = 21
          DataField = 'DTAEMISSAO'
          DataSource = DMNF.DtSrc_NF
          BorderStyle = bsNone
          DefaultToday = True
          BevelKind = bkFlat
          TabOrder = 0
        end
      end
      object JvGroupBox11: TJvGroupBox
        Left = 642
        Top = 83
        Width = 118
        Height = 41
        Caption = 'Data Saida/Entrada'
        TabOrder = 15
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 5
          Top = 15
          Width = 108
          Height = 21
          DataField = 'DTASAIDA'
          DataSource = DMNF.DtSrc_NF
          BorderStyle = bsNone
          BevelKind = bkFlat
          TabOrder = 0
        end
      end
      object JvGroupBox12: TJvGroupBox
        Left = 3
        Top = 125
        Width = 302
        Height = 41
        Caption = 'Munic'#237'pio'
        TabOrder = 10
        object DBEdit5: TDBEdit
          Left = 5
          Top = 14
          Width = 292
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CIDADECLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox13: TJvGroupBox
        Left = 305
        Top = 125
        Width = 111
        Height = 41
        Caption = 'Fone / Fax'
        TabOrder = 11
        object DBEdit6: TDBEdit
          Left = 5
          Top = 14
          Width = 100
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'TELEFONE'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox14: TJvGroupBox
        Left = 416
        Top = 125
        Width = 40
        Height = 41
        Caption = 'UF'
        TabOrder = 12
        object DBEdit7: TDBEdit
          Left = 5
          Top = 14
          Width = 29
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'UFCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnChange = DBEdit7Change
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox15: TJvGroupBox
        Left = 456
        Top = 125
        Width = 185
        Height = 41
        Caption = 'Inscri'#231#227'o Estadual'
        TabOrder = 13
        object DBEdit8: TDBEdit
          Left = 5
          Top = 14
          Width = 175
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'INSCCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox16: TJvGroupBox
        Left = 642
        Top = 125
        Width = 118
        Height = 41
        Caption = 'Hora da Saida'
        TabOrder = 16
        object DBEdit34: TDBEdit
          Left = 5
          Top = 14
          Width = 108
          Height = 21
          DataField = 'HORASAIDA'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
        end
      end
      object JvGroupBox28: TJvGroupBox
        Left = 641
        Top = -1
        Width = 118
        Height = 41
        Caption = 'N. da Nota'
        TabOrder = 2
        object DBEdit33: TDBEdit
          Left = 5
          Top = 14
          Width = 76
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NOTASERIE'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object btnSerie: TBitBtn
          Left = 82
          Top = 11
          Width = 32
          Height = 25
          Caption = '...'
          TabOrder = 1
          OnClick = btnSerieClick
        end
      end
      object memo1: TMemo
        Left = 224
        Top = 208
        Width = 409
        Height = 65
        Lines.Strings = (
          'Recebe descri'#231#227'o classifica'#231#227'o fiscal')
        TabOrder = 17
        Visible = False
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 168
        Width = 761
        Height = 121
        ActivePage = TabSheet2
        TabOrder = 18
        object TabSheet2: TTabSheet
          Caption = 'Itens'
          object JvDBGrid1: TJvDBGrid
            Left = 0
            Top = 0
            Width = 753
            Height = 93
            Align = alClient
            DataSource = DMNF.DtSrc1
            PopupMenu = PopupMenu1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid1DblClick
            OnKeyPress = JvDBGrid1KeyPress
            OnEditChange = JvDBGrid1EditChange
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'CODPRO'
                ReadOnly = True
                Title.Caption = 'C'#243'digo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCPRODUTO'
                ReadOnly = True
                Title.Caption = 'Produtos'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCM'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CFOP'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CST'
                ReadOnly = True
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CSOSN'
                ReadOnly = True
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UN'
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                ReadOnly = True
                Title.Caption = 'Quant.'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_BASE'
                ReadOnly = True
                Title.Caption = 'Valor Unit.'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_DESCONTO'
                Title.Caption = 'Desconto'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorTotal'
                ReadOnly = True
                Title.Caption = 'Valor Total'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMS'
                ReadOnly = True
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_BASEICMS'
                ReadOnly = True
                Title.Caption = 'Base ICMS'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_ICMS'
                ReadOnly = True
                Title.Caption = 'Valor ICMS'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FRETE'
                Title.Caption = 'Frete'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMS_SUBSTD'
                ReadOnly = True
                Title.Caption = 'Base ST'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMS_SUBST'
                ReadOnly = True
                Title.Caption = 'ST'
                Width = 60
                Visible = True
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Fatura'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 705
            Height = 93
            Hint = 'Grave as altera'#231#245'es em cada linha.'
            Align = alCustom
            DataSource = ds_Cr
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'TITULO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'T'#237'tulo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VIA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'Via'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAVENCIMENTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'Vencimento'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORTITULO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'R$ T'#237'tulo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'Status'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORRECEBIDO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'R$ Recebido'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORREC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'R$ Resto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'N_DOCUMENTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'N'#176' doc.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAIXA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Caption = 'Caixa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -13
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Visible = True
              end>
          end
          object btnCr: TBitBtn
            Left = 709
            Top = 2
            Width = 39
            Height = 37
            TabOrder = 1
            OnClick = btnCrClick
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C02B00002E0000290000FFFCF89084808281857D80847F807C7D7F79797B
              7B848687837F84807F817C817F757A78858389857C8685747D9A828A95777C24
              00003103002B0000FFFBFB2802002E0000290000C0C0C0C0C0C0C0C0C0C0C0C0
              640000A80B0FB5030A9F050A4C000098787387797F7D797F85848081837D7A84
              7E747E7882837F807F7B8586827F807E7D7E8285858B7B7C808F787CC57B817F
              050DAD070EAD020A7300008A080FAF0C0E9C11142F0000C0C0C0C0C0C0370003
              A9070CD80000FC0810DD0C10810B06B77F7A9D8286927A82FFF8FBFFF6F3FFFD
              F8FFFFF8837D7688867E7C7C76878B86767A7B777C7F7B8382937979D5757BB2
              0F17E1000AE8020EFFE8F2B0050DDF0309BF060A3A0000C0C0C0C0C0C03A0000
              C10B0CF30201F40000DD08049C0D06CD79749D757AB57882A00913B10B127C0C
              0CFFF9F59C857D817F777E807A8086817C84837B83837B827F9B807CD37675A2
              0305E6060BE20207FFE1E3AC0E0EDD0303C00907380300C0C0C0C0C0C03B0000
              BD0000FF0F0CF80000DB0000AE0F0BDC7975A27A7CC77D83C20007DE0007A309
              0AFFF6F29B7D787E807A848680767C777880807F85847F7E7A9B7874D37471AF
              120FE10303E10301FFEEEBA10904DC0400C20B072E0000C0C0C0C0C0C02E0000
              C30D07F60000FF0403E10303AE0E0ED1726F9D7E7DB27271D01213E30505AA10
              0BFFF6F18F76747F848380817F8583827C7D817E7B7D90817FB1817FD87571A1
              0603DF0100E60905FFEFEAAC130CDB0500C00A04390000C0C0C0C0C0C02D0000
              BA0700FF0B06F40000E50608A9080AD77777A08281B27873C20504E20501A60A
              05FFF6F29981837A7F827F7D7D847F807F7D838982878E7C7DA87876DB7A77A4
              0B08E40906DA0000FFEFEAA60A04DE0803C209053B0000C0C0C0C0C0C0370000
              BB0A03F20200FF0507E20207AC0A0FD774769A7A7BBA7A79C60809E40604A308
              05FFF5F497797E8080868380827F7C7E7E798289858B8781829C7976D379789C
              0907DD0706DB0200FFEDEBAC0D09E00200C50908380000C0C0C0C0C0C0450000
              BF0A08F10000F00000E30308B20509E37478A17F80AA7C7B9C0D0AB6100B8611
              0CFFF8F59B8084817D828281838180827E7A807C787E7D7B7B987F7DC97C7993
              120FBE0501CE0A08FFE7E8B6070AEB0609C103043A0000C0C0C0C0C0C0400000
              C20306FA0404F40403E90B0BC40002FF787E9D7A7E888382A87A6FB77D71AA80
              749A7E777F72708A86857A7D7B7F818187868A868287858383947E79AB6C687A
              181296160BA70E07FFEAEECB020BEA0003CB0A0D3D0000C0C0C0C0C0C0410000
              C50309FF0608EF0000E20301D10B0C910205B1777C917C7E9E8178A08073A080
              75A6847E9E7876A27E7E9D827E937A7899797E98767C9E797BAE7E7DCF8682CC
              716AE07266FC6E67C60710D90005FA060ECA0B0E390000C0C0C0C0C0C0380000
              C3070DF90002F60000E50604BC0C069912107C151C610B136E17156C130F6F18
              166C12126E0C12700F13711717680F1270131C74121E761119710A0F7A0D0F85
              130D92160CAA0B07DD0510F2000BF70005C20709320000C0C0C0C0C0C0380000
              C1070DF30005EB0406D80A08FFE3DCFFF0EBFFEBF2FFEFF7FFEDEDFFF1EFFFED
              EEFFEEF4FFEEF7FFEFF5FFF1F1FFEFEFFFEEF7FFEBF6FFEDF7FFEEF5FFF0F0FF
              F2EEFFEDE5FFECE8CC0006E9010DF70107BD0303350000C0C0C0C0C0C0330000
              C5090EE20003BE0404FF6E6BBF100DB00D0A960F118208089B191496110A920D
              0F93121786050E860B0F87120B8C120C940C10950910950D1391121483120F8D
              1008B81009C00E09FFECEDB70206E80403C70A07370000C0C0C0C0C0C0350000
              C20409E6060CAF0B0CFF726FB10E0BFFEAE7FFF0F0FFF5F2FFEFEAFFF5F0FFF0
              EEFFF2F4FFF2F9FFF3F7FFF5F0FFF6F0FFF1F2FFF2F5FFF3F5FFF3F4FFF6F1FF
              F5F0FFEBE6B50C08FFEFEEA60808E20404C205043D0000C0C0C0C0C0C0390000
              C50609E40308AD080BF7726F96100CFFF4F0FFF9F8FFFBFCFFFCF9FFFCF9FFFD
              F9FFFDF9FFFAFEFFFAFEFFFAFCFFFBFBFFFCFBFFFCFBFFFCFBFFFBFCFFFBFCFF
              F9F8FFF4F0960E0AFFF0F0AE0B0DE20106C6070A3A0000C0C0C0C0C0C0370000
              C40709E30308AD080BF371718C110DFFF6F1FFFAFBFEFDFFFEFEFEFAFFFDF9FF
              FBFAFFFBFFFDFEFFFCFFFFFBFFFFFDFFFAFFFDF9FFFBFCFEFEFEFEFEFEFDFFFF
              FAFBFFF6F28A0F0BFFF0F0AF0A0DE10107C5070C370000C0C0C0C0C0C0300000
              C00709E10406AC090AF5717191100DFFF6F19B7C7D7E80817E808080817F8281
              7D82817D847F80847F81857E83847F8182807F80817D8080807E80807E7F839B
              7C7DFFF5F28F0E0BFFF0F0AE0B0DDF0206C1080A300000C0C0C0C0C0C0300000
              C00808E10406AA0A0AF3726F91110CFFF6F1FFFCFBFBFFFFFFFFFFFFFFFEFFFF
              FCFFFFFCFFFFFFFFFEFFFFFDFFFFFEFFFFFFFEFFFFFCFFFEFFFFFFFFFDFEFFFF
              FCFCFFF5F28F0E0BFFF0F0AC0B0DDF0206C1080A300000C0C0C0C0C0C0370000
              C40708E10406A80A0AF0736F8F110CFFF6F1FFFCFBFFFEFFFFFEFFFFFEFEFFFF
              FCFFFFFEFDFFFFFAFFFFFBFEFFFDFFFFFFFFFEFFFFFCFFFEFFFFFEFFFFFEFFFF
              FBFCFFF5F28D0F0BFFF1F0AA0C0CDF0204C50809370000C0C0C0C0C0C0390000
              C50708E30406A60A0AEE736F8A120CFFF7F1997D7D807F81857F8085807F8280
              7F80817F7C80817C7F837C7F837C808180817F82817D857F80857F80807F8399
              7D7DFFF6F288100BFFF2F0A80C0CE10204C60809390000C0C0C0C0C0C0370000
              C50708E30406A60A0AEC746F85130CFFF8F1FFFBFBFAFEFFFCFEFEFCFFFDF9FF
              FDF9FFFDFEFDFFFFFCFFFFFCFFFEFDFFF9FFFDF9FFFBFCFEFEFCFEFEFAFDFFFF
              FBFBFFF7F283110BFFF2F0A80C0DE10204C60809370000C0C0C0C0C0C0390000
              C40709E10406A8090BEC737183130DFFF7F2FFFCFCFFFEFFFFFEFFFBFFFEF6FF
              FEF6FFFEFDFFFFFFFDFFFFFDFFFDFFFFF6FFFEF6FFFCFBFFFFFFFFFFFFFEFFFF
              FCFCFFF7F281110BFFF1F1A80C0DDF0206C5080A390000C0C0C0C0C0C0420000
              C3050AD80003AA0B0FED6E6F87120DFFF6F2A27A7C8A7C80867D80817F7E7881
              7E76817E7A7F807B7E827B7E827A7F8076817E78827C817F7F867E7F8A7C82A1
              7A7CFFF6F2820D08FFF0F1AA0B0FDE0208C90B103E0000C0C0C0C0C0C0360000
              B10C0FCD0A0C9E090DF1747687100EFFF4F3FFF8FEFFFAFFFFFCFFFFFEFFFDFF
              FEFAFFFEFAFFFFF8FFFFFAFFFFFAFFFFFAFFFEFDFFFEFFFEFFFFFCFFFFFAFFFF
              F8FEFFF4F38C1513FFEAEC9E090CC70406A90407340000C0C0C0C0C0C0190000
              83100D9A0501921114E46F72840E0DFFF5F4FFF8FEFFFBFFFFFCFFFFFEFFFFFF
              FEFFFFFEFDFFFFFAFFFFFBFFFFFDFFFFFFFFFEFFFFFEFFFEFFFFFCFFFFFBFFFF
              F8FEFFF5F4891411FFF0F19515169D08048916131F0302C0C0C0C0C0C0160002
              530000760000880A0FEE7579870F10FFF3F4A4787F8B7A83847D82837E7F867E
              7E847F7E817E807D7E827F7E80817F7F847F7E867E7E837E7F847D828B7A83A4
              787FFFF1F2820A0AFFEEF28E1113700000540000130000C0C0C0C0C0C0250002
              5300007000009A1018FB71798B0A0FFFF2F6FFF8FFFFFBFFFBFEFFFAFFFFFFFF
              FEFFFFFEFFFDFFFFFDFFFFFDFFFFFEFFFFFFFEFFFFFEFAFFFFFBFEFFFFFBFFFF
              F8FFFFF3F5901113FFEDF5950B127000005300002D030AC0C0C0C0C0C0200001
              5D161370140F7D1117D86C72771717FFF7F7FFF8FFFFFCFFF7FEFFF7FFFEFEFF
              FDFFFEFDFFFDFFFFFCFFFFFDFFFFFDFEFFFEFDFEFFFDF7FFFEF7FEFFFFFCFFFF
              F8FFFFF2F270110EFFF0F3780D10721710631C18200001C0C0C0C0C0C0C0C0C0
              1703001E04002000002000001D07000E01000300040000070000050001020301
              0003010000010100010200010200010103020003020000010100000400000503
              00021105001E08001E00002000001E0400150100C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          end
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 291
        Width = 784
        Height = 204
        ActivePage = tsTrib
        TabOrder = 19
        object tsTrib: TTabSheet
          Caption = 'Tributa'#231#227'o'
          object JvGroupBox18: TJvGroupBox
            Left = 6
            Top = 12
            Width = 115
            Height = 41
            Caption = 'Base Calculo ICMS'
            TabOrder = 0
            object DBEdit10: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'BASE_ICMS'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox19: TJvGroupBox
            Left = 125
            Top = 12
            Width = 115
            Height = 41
            Caption = 'Valor do ICMS'
            TabOrder = 1
            object DBEdit11: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_ICMS'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox55: TJvGroupBox
            Left = 6
            Top = 60
            Width = 115
            Height = 41
            Caption = 'Base Calculo Cofins'
            TabOrder = 6
            object DBEdit50: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 20
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'BASE_COFINS'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox23: TJvGroupBox
            Left = 125
            Top = 60
            Width = 115
            Height = 41
            Caption = 'Valor do Cofins'
            TabOrder = 7
            object DBEdit15: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_COFINS'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox20: TJvGroupBox
            Left = 244
            Top = 12
            Width = 130
            Height = 41
            Caption = 'Base Calc. ICMS Subst.'
            TabOrder = 2
            object DBEdit12: TDBEdit
              Left = 5
              Top = 14
              Width = 118
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'BASE_ICMS_SUBST'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox21: TJvGroupBox
            Left = 379
            Top = 12
            Width = 130
            Height = 41
            Caption = 'Valor ICMS Substitui'#231#227'o'
            TabOrder = 3
            object DBEdit13: TDBEdit
              Left = 5
              Top = 14
              Width = 118
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_ICMS_SUBST'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox26: TJvGroupBox
            Left = 635
            Top = 12
            Width = 115
            Height = 41
            Caption = 'Valor do IPI'
            TabOrder = 5
            object DBEdit18: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_IPI'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox22: TJvGroupBox
            Left = 379
            Top = 108
            Width = 182
            Height = 41
            Caption = 'Valor Total dos Produtos'
            TabOrder = 15
            object DBEdit14: TDBEdit
              Left = 7
              Top = 14
              Width = 167
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_PRODUTO'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox27: TJvGroupBox
            Left = 568
            Top = 108
            Width = 182
            Height = 41
            Caption = 'Valor Total da Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
            object DBEdit19: TDBEdit
              Left = 7
              Top = 14
              Width = 166
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_TOTAL_NOTA'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox25: TJvGroupBox
            Left = 379
            Top = 60
            Width = 130
            Height = 41
            Caption = 'Valor do Pis'
            TabOrder = 9
            object DBEdit17: TDBEdit
              Left = 5
              Top = 14
              Width = 118
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_PIS'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox24: TJvGroupBox
            Left = 244
            Top = 60
            Width = 130
            Height = 41
            Caption = 'Base Calculo Pis'
            TabOrder = 8
            object DBEdit16: TDBEdit
              Left = 5
              Top = 14
              Width = 118
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'BASE_PIS'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox17: TJvGroupBox
            Left = 514
            Top = 12
            Width = 115
            Height = 41
            Caption = 'Base Calculo IPI'
            TabOrder = 4
            object DBEdit49: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'BASE_IPI'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox53: TJvGroupBox
            Left = 514
            Top = 60
            Width = 115
            Height = 41
            Caption = 'Valor do Desconto'
            TabOrder = 10
            object DBEdit51: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 20
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_DESCONTO'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox56: TJvGroupBox
            Left = 635
            Top = 60
            Width = 115
            Height = 41
            Caption = 'Valor do Frete'
            TabOrder = 11
            object DBEdit52: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_FRETE'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox57: TJvGroupBox
            Left = 6
            Top = 108
            Width = 115
            Height = 41
            Caption = 'Valor do Seguro'
            TabOrder = 12
            object DBEdit53: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VALOR_SEGURO'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox58: TJvGroupBox
            Left = 125
            Top = 108
            Width = 115
            Height = 41
            Caption = 'Outras Desp. Acess.'
            TabOrder = 13
            object DBEdit54: TDBEdit
              Left = 5
              Top = 14
              Width = 103
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'OUTRAS_DESP'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox59: TJvGroupBox
            Left = 244
            Top = 108
            Width = 130
            Height = 41
            Caption = 'Valor Total dosTributos'
            TabOrder = 14
            object DBEdit55: TDBEdit
              Left = 5
              Top = 14
              Width = 118
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'VLRTOT_TRIB'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnChange = DBEdit11Change
              OnKeyPress = FormKeyPress
            end
          end
          object calcman: TCheckBox
            Left = 11
            Top = 156
            Width = 122
            Height = 17
            Caption = 'Calculo Manual?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
          end
        end
        object tsTransp: TTabSheet
          Caption = 'Transportadora'
          ImageIndex = 1
          object JvGroupBox29: TJvGroupBox
            Left = 3
            Top = 12
            Width = 322
            Height = 41
            Caption = 'Nome da Transportadora / Raz'#227'o Social'
            TabOrder = 0
            object cbTransportadora: TDBComboBox
              Left = 7
              Top = 14
              Width = 273
              Height = 21
              BevelKind = bkFlat
              DataField = 'NOMETRANSP'
              DataSource = DMNF.DtSrc_NF
              ItemHeight = 13
              TabOrder = 0
              OnChange = cbTransportadoraChange
              OnKeyPress = FormKeyPress
            end
            object btnProcTransp: TBitBtn
              Left = 284
              Top = 11
              Width = 32
              Height = 25
              Caption = '...'
              TabOrder = 1
              OnClick = btnProcTranspClick
            end
          end
          object GroupBox1: TGroupBox
            Left = 327
            Top = 12
            Width = 93
            Height = 41
            Caption = 'Frete'
            TabOrder = 1
            object cboFrete: TComboBox
              Left = 8
              Top = 16
              Width = 81
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              OnChange = cboFreteChange
              Items.Strings = (
                '0 - Emitente'
                '1 - Dest/Rem'
                '2 - Terceiros'
                '9 - Sem Frete')
            end
          end
          object JvGroupBox30: TJvGroupBox
            Left = 422
            Top = 12
            Width = 106
            Height = 41
            Caption = 'Placa'
            TabOrder = 2
            object DBEdit20: TDBEdit
              Left = 5
              Top = 14
              Width = 96
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PLACATRANSP'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox31: TJvGroupBox
            Left = 530
            Top = 12
            Width = 40
            Height = 41
            Caption = 'UF'
            TabOrder = 3
            object DBEdit21: TDBEdit
              Left = 5
              Top = 14
              Width = 29
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'UF_VEICULO_TRANSP'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox32: TJvGroupBox
            Left = 572
            Top = 12
            Width = 178
            Height = 41
            Caption = 'C.N.P.J.'
            TabOrder = 4
            object DBEdit22: TDBEdit
              Left = 5
              Top = 14
              Width = 167
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'CNPJ_CPF'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox33: TJvGroupBox
            Left = 3
            Top = 53
            Width = 321
            Height = 41
            Caption = 'Endere'#231'o'
            TabOrder = 5
            object DBEdit23: TDBEdit
              Left = 5
              Top = 14
              Width = 309
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'END_TRANSP'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox34: TJvGroupBox
            Left = 327
            Top = 53
            Width = 201
            Height = 41
            Caption = 'Munic'#237'pio'
            TabOrder = 6
            object DBEdit24: TDBEdit
              Left = 5
              Top = 14
              Width = 191
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'CIDADE_TRANSP'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox35: TJvGroupBox
            Left = 530
            Top = 53
            Width = 40
            Height = 41
            Caption = 'UF'
            TabOrder = 7
            object DBEdit25: TDBEdit
              Left = 5
              Top = 14
              Width = 29
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'UF_TRANSP'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox36: TJvGroupBox
            Left = 572
            Top = 53
            Width = 178
            Height = 41
            Caption = 'Inscri'#231#227'o Estadual'
            TabOrder = 8
            object DBEdit26: TDBEdit
              Left = 5
              Top = 14
              Width = 167
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'INSCRICAOESTADUAL'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox42: TJvGroupBox
            Left = 622
            Top = 100
            Width = 128
            Height = 41
            Caption = 'Peso Liquido'
            TabOrder = 14
            object DBEdit32: TDBEdit
              Left = 5
              Top = 14
              Width = 116
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              Color = clInfoBk
              DataField = 'PESOLIQUIDO'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox41: TJvGroupBox
            Left = 494
            Top = 100
            Width = 125
            Height = 41
            Caption = 'Peso Bruto'
            TabOrder = 13
            object DBEdit31: TDBEdit
              Left = 5
              Top = 14
              Width = 110
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              Color = clInfoBk
              DataField = 'PESOBRUTO'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox40: TJvGroupBox
            Left = 400
            Top = 100
            Width = 88
            Height = 41
            Caption = 'N'#250'mero'
            TabOrder = 12
            object DBEdit30: TDBEdit
              Left = 5
              Top = 14
              Width = 76
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'NUMERO'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox39: TJvGroupBox
            Left = 252
            Top = 100
            Width = 145
            Height = 41
            Caption = 'Marca'
            TabOrder = 11
            object DBEdit29: TDBEdit
              Left = 5
              Top = 14
              Width = 133
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'MARCA'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox38: TJvGroupBox
            Left = 102
            Top = 100
            Width = 147
            Height = 41
            Caption = 'Esp'#233'cie'
            TabOrder = 10
            object DBEdit28: TDBEdit
              Left = 5
              Top = 14
              Width = 135
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'ESPECIE'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
          object JvGroupBox37: TJvGroupBox
            Left = 3
            Top = 100
            Width = 96
            Height = 41
            Caption = 'Quantidade'
            TabOrder = 9
            object DBEdit27: TDBEdit
              Left = 5
              Top = 14
              Width = 85
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'QUANTIDADE'
              DataSource = DMNF.DtSrc_NF
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
          end
        end
        object tsDadosAdic: TTabSheet
          Caption = 'Dados Adicionais'
          ImageIndex = 2
          object GroupBox6: TGroupBox
            Left = 5
            Top = -2
            Width = 770
            Height = 176
            Caption = 
              'Use ; (ponto e v'#237'rgula) para quebrar a linha na exibi'#231#227'o da DANF' +
              'E, os 4 primeiros campos s'#227'o 200 caracteres por campo, os '#250'ltimo' +
              's 2 s'#227'o apenas 75 caracteres.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit61: TDBEdit
              Left = 3
              Top = 20
              Width = 765
              Height = 24
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'CORPONF1'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = FormKeyPress
            end
            object DBEdit62: TDBEdit
              Left = 3
              Top = 45
              Width = 765
              Height = 24
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'CORPONF2'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyPress = FormKeyPress
            end
            object DBEdit63: TDBEdit
              Left = 3
              Top = 70
              Width = 765
              Height = 24
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'CORPONF3'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyPress = FormKeyPress
            end
            object DBEdit64: TDBEdit
              Left = 3
              Top = 95
              Width = 765
              Height = 24
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'CORPONF4'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnKeyPress = FormKeyPress
            end
            object DBEdit65: TDBEdit
              Left = 3
              Top = 120
              Width = 765
              Height = 24
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'CORPONF5'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnKeyPress = FormKeyPress
            end
            object DBEdit66: TDBEdit
              Left = 3
              Top = 145
              Width = 765
              Height = 24
              BevelKind = bkTile
              BorderStyle = bsNone
              DataField = 'CORPONF6'
              DataSource = DMNF.DtSrc_NF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnKeyPress = FormKeyPress
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'N.F.Serv'
      ImageIndex = 1
      object Label1: TLabel
        Left = 493
        Top = 357
        Width = 115
        Height = 13
        Caption = 'Valor Total dos Servi'#231'os'
      end
      object Label2: TLabel
        Left = 528
        Top = 379
        Width = 81
        Height = 13
        Caption = 'Outras Despesas'
      end
      object Label3: TLabel
        Left = 517
        Top = 404
        Width = 92
        Height = 13
        Caption = 'Valor Total da Nota'
      end
      object JvGroupBox43: TJvGroupBox
        Left = 1
        Top = 46
        Width = 420
        Height = 41
        Caption = 'Nome / Raz'#227'o Social'
        TabOrder = 0
        object cbCLiente1: TDBComboBox
          Left = 7
          Top = 14
          Width = 376
          Height = 21
          BevelKind = bkFlat
          DataField = 'RAZAOSOCIAL'
          DataSource = DMNF.DtSrc_NF
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbCLiente1Change
          OnKeyPress = FormKeyPress
        end
        object btnProcCli2: TBitBtn
          Left = 385
          Top = 11
          Width = 31
          Height = 25
          Caption = '...'
          TabOrder = 1
          OnClick = btnProcCliClick
        end
      end
      object JvGroupBox44: TJvGroupBox
        Left = 422
        Top = 46
        Width = 176
        Height = 41
        Caption = 'C.N.P.J.'
        TabOrder = 1
        object DBEdit35: TDBEdit
          Left = 5
          Top = 14
          Width = 167
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CNPJCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox45: TJvGroupBox
        Left = 598
        Top = 46
        Width = 166
        Height = 41
        Caption = 'Inscri'#231#227'o Estadual'
        TabOrder = 2
        object DBEdit36: TDBEdit
          Left = 5
          Top = 14
          Width = 157
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'INSCCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox46: TJvGroupBox
        Left = 1
        Top = 89
        Width = 531
        Height = 41
        Caption = 'Endere'#231'o'
        TabOrder = 3
        object DBEdit37: TDBEdit
          Left = 5
          Top = 14
          Width = 520
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'LOGRADOURO'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox47: TJvGroupBox
        Left = 1
        Top = 132
        Width = 288
        Height = 41
        Caption = 'Bairro'
        TabOrder = 6
        object DBEdit38: TDBEdit
          Left = 5
          Top = 14
          Width = 276
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'BAIRROCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox48: TJvGroupBox
        Left = 611
        Top = 132
        Width = 112
        Height = 41
        Caption = 'CEP'
        TabOrder = 8
        object DBEdit39: TDBEdit
          Left = 5
          Top = 14
          Width = 100
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CEPCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox49: TJvGroupBox
        Left = 290
        Top = 132
        Width = 320
        Height = 41
        Caption = 'Munic'#237'pio'
        TabOrder = 7
        object DBEdit40: TDBEdit
          Left = 5
          Top = 14
          Width = 292
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CIDADECLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox50: TJvGroupBox
        Left = 533
        Top = 89
        Width = 111
        Height = 41
        Caption = 'Fone / Fax'
        TabOrder = 4
        object DBEdit41: TDBEdit
          Left = 5
          Top = 14
          Width = 100
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'TELEFONE'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox51: TJvGroupBox
        Left = 724
        Top = 132
        Width = 40
        Height = 41
        Caption = 'UF'
        TabOrder = 9
        object DBEdit42: TDBEdit
          Left = 5
          Top = 14
          Width = 29
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'UFCLI'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object JvGroupBox52: TJvGroupBox
        Left = 646
        Top = 89
        Width = 118
        Height = 41
        Caption = 'Data da Emiss'#227'o'
        TabOrder = 5
        object JvDBDateEdit3: TJvDBDateEdit
          Left = 5
          Top = 15
          Width = 108
          Height = 21
          DataField = 'DTAEMISSAO'
          DataSource = DMNF.DtSrc_NF
          BorderStyle = bsNone
          DefaultToday = True
          BevelKind = bkFlat
          TabOrder = 0
        end
      end
      object DBEdit45: TDBEdit
        Left = 618
        Top = 356
        Width = 143
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VALOR_PRODUTO'
        DataSource = DMNF.DtSrc_NF
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit46: TDBEdit
        Left = 618
        Top = 378
        Width = 143
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'OUTRAS_DESP'
        DataSource = DMNF.DtSrc_NF
        TabOrder = 11
        OnChange = DBEdit11Change
        OnKeyPress = FormKeyPress
      end
      object DBEdit44: TDBEdit
        Left = 618
        Top = 402
        Width = 143
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VALOR_TOTAL_NOTA'
        DataSource = DMNF.DtSrc_NF
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object JvGroupBox54: TJvGroupBox
        Left = 646
        Top = 0
        Width = 118
        Height = 41
        Caption = 'N. da Nota'
        TabOrder = 13
        object DBEdit47: TDBEdit
          Left = 5
          Top = 14
          Width = 76
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NOTASERIE'
          DataSource = DMNF.DtSrc_NF
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object btnSerie2: TBitBtn
          Left = 82
          Top = 11
          Width = 32
          Height = 25
          Caption = '...'
          TabOrder = 1
          OnClick = btnSerieClick
        end
      end
      object JvDBGrid2: TJvDBGrid
        Left = 1
        Top = 184
        Width = 761
        Height = 165
        DataSource = DMNF.DtSrc1
        TabOrder = 14
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = JvDBGrid2KeyPress
        OnEditChange = JvDBGrid2EditChange
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPRO'
            Title.Caption = 'C'#243'digo'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPRODUTO'
            Title.Caption = 'Produtos'
            Width = 354
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UN'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_BASE'
            Title.Caption = 'Valor Unit'#225'rio'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorTotal'
            Title.Caption = 'Valor Total'
            Width = 105
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 350
        Width = 382
        Height = 77
        Caption = 'Dados Adicionais'
        TabOrder = 15
        object DBEdit9: TDBEdit
          Left = 4
          Top = 14
          Width = 368
          Height = 24
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'CORPONF1'
          DataSource = DMNF.DtSrc_NF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit43: TDBEdit
          Left = 4
          Top = 40
          Width = 368
          Height = 24
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'CORPONF2'
          DataSource = DMNF.DtSrc_NF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
      end
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 59
    Align = alTop
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clActiveCaption
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object btnCancelar: TBitBtn
      Left = 68
      Top = 2
      Width = 68
      Height = 55
      Caption = 'F3-Cancelar'
      PopupMenu = PopupMenu1
      TabOrder = 5
      OnClick = btnCancelarClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08A23F08A2
        3F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08BC5804BC5804A23F08A2
        3F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A74407C96501CC6701BC5804A2
        3F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08B24E05CC6701CC6701BC
        5804A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08B45105CC6701CC
        6701B45105A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08BC5804CC
        6701CC6701AF4C06A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08
        A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08C4
        6002CC6701C96501A74407A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08
        A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08A5
        4208C76202CC6701C25D03A23F08A23F08A23F08C0C0C0C0C0C0A23F08A23F08
        C5681AC16214BD5D0FBA5709B75305B75305B75305B75305B75305B75305B753
        05B75305B75305B75305AF4C06A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A2
        3F08AA4707C96501CC6701B75305A23F08A23F08C0C0C0C0C0C0A23F08A23F08
        EE9B37E7902BDF841FD87914D06E08CC6701CC6701CC6701CC6701CC6701CC67
        01CC6701CC6701CC6701CC6701A54208A23F08C0C0C0C0C0C0C0C0C0C0C0C0A2
        3F08A23F08AF4C06CC6701C96501A74407A23F08A23F08C0C0C0A23F08A23F08
        F7A944F09D39E8922DE18621D97B15D26F0ACD6802CC6701CC6701CC6701CC67
        01CC6701CC6701CC6701C25D03A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0A23F08A23F08BA5604CC6701BC5804A23F08A23F08C0C0C0A23F08A23F08
        FCB04CF8AA46F19F3BE9942FE28823D77917A94609A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0A23F08A23F08A74407CC6701CC6701A74407A23F08A23F08A23F08A23F08
        FCB04CFCB04CE9983CD37A27EB9531E38A25CB6C16A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08BF5B03CC6701BA5604A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA7450CE38F33EC9733E48C27B95A11A23F08A23F08C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08B45105CC6701C25D03A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08B25313EF9E3CED9935E28928AE4D0DA23F08A23F
        08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08AD4906CC6701C96501A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C36820F6A742EE9B37E38B29AE4D0EA23F
        08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08AD4906CC6701CC6701A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08A23F08CF7729F7A844F09D39E48D2BAF4E
        0EA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08AD4906CC6701CC6701A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08A23F08A23F08DA8532F8AA46F19F3BE58F
        2DAF4E0EA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08B75305CC6701C76202A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08A23F08A23F08A23F08DA8632F9AC48F2A1
        3DE6912FB75813A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08C76202CC6701BF5B03A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0A23F08A23F08A23F08DA8633FAAD
        49F3A33EEC9733C06317A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A2
        3F08A23F08A23F08B45105CC6701CC6701B24E05A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0A23F08A23F08A23F08C469
        22FBAE4AF5A540ED9935CD721EA6440AA23F08A23F08A23F08A23F08A23F08A2
        3F08A23F08AA4707CC6701CC6701C76202A23F08A23F08C0C0C0A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08A23F
        08B95B19F6A846F6A742EE9B36DB8225B65611A23F08A23F08A23F08A23F08A2
        3F08B45105CC6701CC6701C96501AA4707A23F08A23F08C0C0C0A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F
        08A23F08A8460CDA8532F7A844F09D38E8912DDD8220CC6D13C6640AC25E03C4
        6002CC6701CC6701C76202AA4707A23F08A23F08C0C0C0C0C0C0A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0A23F08A23F08A23F08B85B19DC8731F19F3AE9932FE28823DA7C17D2710BCD
        6802C76202B75305A54208A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08
        D57F2EF6A948C46922A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0A23F08A23F08A23F08A23F08A7450BBF621AC5681BC16315B7560DAB
        4808A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08
        A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08A23F08A23F08A23F08A2
        3F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      Layout = blGlyphTop
    end
    object btnExcluir: TBitBtn
      Left = 70
      Top = 2
      Width = 68
      Height = 55
      Caption = 'F7-Excluir'
      Enabled = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = btnExcluirClick
      Glyph.Data = {
        1E070000424D1E070000000000003600000028000000160000001A0000000100
        180000000000E8060000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF00000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBF
        BFBFBFBFBFBFBFBFBFBF0000FF0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBF
        BFBFBFBFBFBFBFBF00000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
        7F7F7F7F7FBFBFBFBFBFBF0000FF00007F0000000000007F7F7F7F7F7F7F7F7F
        7F7F7FBFBFBFBFBFBFBFBFBF00000000FF00007F00007F00007F000000000000
        7F7F7F7F7F7F7F7F7F7F7F7FBFBFBF0000FF00007F00007F0000000000007F7F
        7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF00000000FF00007F00007F00007F0000
        7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
        00000000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBF00000000FF0000FF00007F00
        007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
        00007F00007F000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF0000FF
        00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
        7F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BF0000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
        007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF0000FF0000FF00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000
        7F00007F00007F00007F00007F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00
        007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF
        00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
        7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF0000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F0000
        7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000FF0000FF00
        007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000007F7F7F
        0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
        7FBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F0000007F7F
        7FBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F00007F00
        00007F7F7FBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F
        0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F0000
        7F00007F0000000000007F7F7FBFBFBF0000BFBFBF0000FF0000FF0000FF0000
        7F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF00
        00FF00007F00007F00007F000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF00
        00FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF0000FF0000FF00007F00007FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000}
      Layout = blGlyphTop
    end
    object btnGravar: TBitBtn
      Left = 1
      Top = 2
      Width = 68
      Height = 55
      Caption = 'F4-Gravar'
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnClick = btnGravarClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C00066000066000066000066000066000066005B8D5AB5B3B3B5B3B3B5B3
        B3B5B3B3B5B3B3B5B3B3B5B3B3B5B3B3B5B3B3B5B3B3B5B3B32D792D00660000
        6600006600006600006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008300008C00008C00008C00008C00007000367C36FAF6F3FDF9F6FDF9
        F6FDF9F6FDF9F6FDF9F6F9F6F3F0EEECE7E5E4DEDDDDDEDDDD327E3200660000
        6600006600007500008A00008300006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C00009900009900009900009900007300297528FAF6F30066000066
        00006600006600FAF6F3FDF9F6F9F6F3F0EEECE7E5E4DEDDDD37833600660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000099000099000099000099000073002A7629F6F0ED0066000066
        00006600006600F3F0EDFBF7F4FDF9F7F8F4F2EFECEAE6E4E338843800660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000099000099000099000099000073002B772AEFE8E40066000066
        00006600006600E9E6E4F5F2EFFCF8F5FDF9F6F6F3F0EDEBE93A863900660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000099000099000099000099000073002D782BE8DEDB0066000066
        00006600006600DBD8D7ECE9E6F7F3F0FCF9F6FCF9F6F5F1EF3C883B00660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C00009900009900009900009900007300307A2DE0D4D10066000066
        00006600006600C9C7C5DEDCDAEEEBE8F8F4F1FDF9F6FBF8F53E893C00660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C00009900009900009900009900007300327C2FDACCC90066000066
        00006600006600B2B1B0CDCBCAE2DFDDF0EDEAF9F5F3FDF9F63F8B3E00660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C00009900009900009900009900007300357E30D6C6C30066000066
        00006600006600A2A1A1B7B6B5D1CFCDE5E2E0F2EFECFAF7F43F8B3E00660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C00009900009900009900009900007300377F32D6C6C3C9BDBABDB4
        B2B2ADACA9A6A6A3A2A1A3A3A3BCBBBAD5D3D1E8E4E2F4F0EE3E8A3D00660000
        6600006600007A00009700008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000099000099000099000099000099000099000099000099000099
        0000990000990000990000990000990000990000990000990000990000990000
        9900009900009900009800008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000099000099000099000099000099000099000099000099000099
        0000990000990000990000990000990000990000990000990000990000990000
        9900009900009900009900008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C00009300008C00018E01049408079B0F0AA0140CA4180DA61A0DA6
        1A0DA61A0DA61A0DA61A0DA61A0DA61A0DA61A0DA61A0DA61A0DA61A0DA61A0D
        A61A0DA61A0AA213009900008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C00008000006600036B051187211EA13C29B65130C56133CB6733CB
        6733CB6733CB6733CB6733CB6733CB6733CB6733CB6733CB6733CB6733CB6733
        CB6733CB6726BF4D009900008C00006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        006600008C000080003F893DFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BF4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0066000083000079003B863AFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3
        F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FA
        F3F2FAF3F226BB4D009900006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0006600006600317D31C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2
        C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3
        C2C2D6BCBB26B24D006600006600C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      Layout = blGlyphTop
    end
    object btnIncluir: TBitBtn
      Left = 1
      Top = 1
      Width = 68
      Height = 55
      Caption = 'F2-Incluir'
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnClick = btnIncluirClick
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00090909001212
        12001F1F1F002C2C2C003939390045454500525252005F5F5F006C6C6C007878
        780085858500929292009F9F9F00ABABAB00B8B8B800C5C5C500D2D2D200DEDE
        DE00EBEBEB00F8F8F800F0FBFF00A4A0A000C0DCC000F0CAA60000003E000000
        5D0000007C0000009B000000BA000000D9000000F0002424FF004848FF006C6C
        FF009090FF00B4B4FF0000143E00001E5D0000287C0000329B00003CBA000046
        D9000055F000246DFF004885FF006C9DFF0090B5FF00B4CDFF00002A3E00003F
        5D0000547C0000699B00007EBA000093D90000AAF00024B6FF0048C2FF006CCE
        FF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B9B0000BABA0000D9
        D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FFFF00003E2A00005D
        3F00007C5400009B690000BA7E0000D9930000F0AA0024FFB60048FFC2006CFF
        CE0090FFDA00B4FFE600003E1400005D1E00007C2800009B320000BA3C0000D9
        460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FFCD00003E0000005D
        0000007C0000009B000000BA000000D9000000F0000024FF240048FF48006CFF
        6C0090FF9000B4FFB400143E00001E5D0000287C0000329B00003CBA000046D9
        000055F000006DFF240085FF48009DFF6C00B5FF9000CDFFB4002A3E00003F5D
        0000547C0000699B00007EBA000093D90000AAF00000B6FF2400C2FF4800CEFF
        6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B0000BABA0000D9D9
        0000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFFB4003E2A00005D3F
        00007C5400009B690000BA7E0000D9930000F0AA0000FFB62400FFC24800FFCE
        6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B320000BA3C0000D946
        0000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCDB4003E0000005D00
        00007C0000009B000000BA000000D9000000F0000000FF242400FF484800FF6C
        6C00FF909000FFB4B4003E0014005D001E007C0028009B003200BA003C00D900
        4600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4CD003E002A005D00
        3F007C0054009B006900BA007E00D9009300F000AA00FF24B600FF48C200FF6C
        CE00FF90DA00FFB4E6003E003E005D005D007C007C009B009B00BA00BA00D900
        D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4FF002A003E003F00
        5D0054007C0069009B007E00BA009300D900AA00F000B624FF00C248FF00CE6C
        FF00DA90FF00E6B4FF0014003E001E005D0028007C0032009B003C00BA004600
        D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF00070707070707
        0707070707070707070707070707070707070707070707070707070707070707
        0000000000000000000000000000000000000000000000000707070707070707
        004F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F0007070707070707
        00564A564A5656564A5656564A564A4A564A4A4A4A4A4A4F0007070707070707
        005656564A564A4A56564A56564A56564A4A4A4A4A4A4A4F0007070707070700
        565656564A564A4A4A564A56564A564A4A4A4A4A565649000007070707070700
        564A56565656564A564A564A564A4A56564A4A564A4A4F000007070707070700
        56565656564A5656565656565656564A4A56564A564A03000007070707070056
        565656565656564A564A56564A565656564A4A564A49004F0007070707070056
        564A56565656565656564A565656564A56564A5656490049000707070707004A
        564A4A4A564A56564A4A564A4A4A564A56564A564A4F00490007001616160056
        56564A564A564A564A5656564A564A564A564A4A560300490007002020200056
        4A5656565656565656564A5656565656565656564A0049490007000F0F004A56
        56564A564A56564A565656564A564A56564A5656560049490007000F00005656
        56565656564A5656565656565656564A565656564A0049490007000F0F004A56
        4A565656565656564A564A565656565656564A56560049490007000F0F000000
        0000000000000000000000000000000000000000004A4A490007000F00000000
        0000000000000000000000000F200056564A564A56564A490007000F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F20004A565656564A4A56560007000F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F20005656495656565656560007000F00000000
        0000000000000000000000000F20000000564956564956560007000F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F20000700565656565656560007000F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F20000700000000000000000707000F00000000
        0000000000000000000000000F20000707070707070707070707000F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F20000707070707070707070707000F0F0F0F0F
        0F0F0F0F0F0F0F0F242322070F1C000707070707070707070707000F00000000
        00000000000000002322201C1C19000707070707070707070707000F0F0F0F0F
        0F0F0F0F0F0F0F0F241613131313130707070707070707070707000F0F0F0F0F
        0F0F0F0F0F0F0F0F2400221C1607070707070707070707070707000F00000000
        0000000000000000240020160707070707070707070707070707000F24242424
        24242424242424240F001C070707070707070707070707070707000000000000
        0000000000000000000007070707070707070707070707070707}
      Layout = blGlyphTop
    end
    object rg: TRadioGroup
      Left = 503
      Top = -63
      Width = 140
      Height = 40
      Color = clTeal
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Entrada'
        'Saida')
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object btnProcurar: TBitBtn
      Left = 419
      Top = 2
      Width = 72
      Height = 55
      Caption = 'F8-Procurar'
      PopupMenu = PopupMenu1
      TabOrder = 3
      OnClick = btnProcurarClick
      Glyph.Data = {
        B6040000424DB604000000000000B60000002800000020000000200000000100
        08000000000000040000120B0000120B00002000000020000000FFFFFF00CCCC
        CC00BBBBBB00AAAAAA00CC999900888888007777770099666600666666005555
        5500444444006633330033333300222222001111110000000000C0C0C0000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000101010101010
        1010101010101010101010101010101010101010101010101010101010101010
        10100F0F0F0F0F0F0F0F0F060606101010101010101010101010101010101010
        0F0F0101010100040004040F0F0F060606101010101010101010101010100F0F
        01010101010100040004040404040F0F060610101010101010101010100F0404
        010101010101000400040404040404040F06061010101010101010100F040404
        01010101010100040004040404040404040C0606101010101010100F04040404
        01010F0F0F0F0F0F0F0F0F0404040404040906060610101010100F0404040404
        0F0F0000000000000000000F0F0F040404040F060610101010100F04040B0F05
        00020F060606060606060500000006050B040F060606101010100F040F000000
        0F0A0404040404040404040F0F0F0000000B0F060606061010100F0F0000000F
        04040404040404040404040404040F0000050F060606061010100F0000000F07
        0404040404040404000000040404040F00000F060606061010100F00000F0404
        070404040404040404040400040407040F000F060606101010100F00000F0404
        040701040404040404040400070704040F000F060606101010100F00000F0404
        040400010707070707070707040404040F000F060610101010100F0000000F04
        0404010404040404040404040403040F00000F06101010101010100F0000000F
        04040404040404040404040404040F00000F101010101010101010100F000000
        0F0F040404040404040404040F0F0000000F10101010101010101010100F0000
        00000F0F0F0F0F0F0F0F0F0F000000000F061010101010101010101010100F0F
        00000000000000000000000000000F0F050C0610101010101010101010101010
        0F0F000000000000000000000F0F0202020F0F06101010101010101010101010
        10100F0F0F0F0F0F0F0F0F0F0200000202080F0F061010101010101010101010
        1010101010101010101010100F020000020F0F0F0F0610101010101010101010
        10101010101010101010101010050F0E0C0E0F0F0F0F06021010101010101010
        1010101010101010101010101010100F0D0A0F0F0F0F0F061010101010101010
        101010101010101010101010101010100F090D0F0F0F0F0F1010101010101010
        10101010101010101010101010101010100F060D0F0F0F0F1010101010101010
        1010101010101010101010101010101010050D060D0F0F0F1010101010101010
        1010101010101010101010101010101010100F0D060D0F0F1010101010101010
        101010101010101010101010101010101010100F0F0F0F101010101010101010
        1010101010101010101010101010101010101010101010101010101010101010
        1010101010101010101010101010101010101010101010101010}
      Layout = blGlyphTop
    end
    object btnSair: TBitBtn
      Left = 491
      Top = 2
      Width = 70
      Height = 55
      Caption = 'F9-Sair'
      PopupMenu = PopupMenu1
      TabOrder = 4
      OnClick = btnSairClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C08AB4CE005696005D9F005F99005C94005B93005A90005A91005A9000
        598E195B811F5D8230627C4D6D7E5C7582C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B4CDDE186A9D146B9F176FA2176F
        A21970A30C679A02639C1B76C91976C61674C11575BE1272BA106FB60B6BAE0B
        6AAE0364A90064A500619E005A9F005C9C20597BDDD7D4C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C072A5C7004A8206437007406D0640
        6D073F6D014D800766A5217FD22083D22487D32183D22183D22183D22081D01F
        7ECF1D7DCC1B78C91A78C71871C00668AD125A85D6D0CBC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0EEE7EF5F9BBD00508513375F14355D1436
        5F14325A044F660866AC268AD7288CD5278ED6278DD6268DD6268BD5268AD426
        8AD42286D22287D32387D3207FD01072BC125985D3CDC7C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0D4D5D4408440629ABE005288123964133561112A
        5F013E220D785A0B65B7288ED92D93D9268BD5298FD72B91D82B91D8258CD626
        8CD5268DD6268CD5268BD52188D41475C6125886C9C3BEC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0A8B7A71E8F2305880A4A84B60044800B2E4C06393C0465
        1550BC533C95A10762B02F93DC2D94D9278CD52B92D92D94DA2D94DA258DD627
        8DD62A91D8288ED7268DD5288ED7187EC6115883C0BCB8C0C0C0C0C0C0C0C0C0
        C0C0C064956303940E27C23A32C0442EB63C35B84251C55E69D27A76D88D85DF
        9D79DA8C0062641371BB3396DF349ADD238BD33198DC3298DC3399DD298FD72B
        91D82F96DA2C93D9288FD72C92D91F82C900588DB0AFAEC0C0C0C0C0C0EAEFE9
        35863700A1061EBB2F25BB362FBC403AC54E58CC6C60D07664D07975D68C7BDC
        90177F180044611579C93599DF399EDF268DD9389EE2359CDF379DDF2B90D82B
        91D83198DC3096DB2990D72F94DB2587D500588EA8A8A7C0C0C0C0C0C0C7DCC6
        0085010EB72016B92826BB3730BC4039C34C4EC96260CF7570D78579DE8E24A2
        1E063934034F8B1A7BBF389FE53CA4E51F78B02C83B7369BDC3DA5E82D93DA2D
        94D9379ADD3299DD2A91D83397DD278BD4005B91A0A3A2C0C0C0C0C0C0C0C0C0
        DAE8D92B9A2F12AD2128BF3A2FBC403BC54E51CD6357CD6541B34A0B6E1A072F
        481334620153861B80CA3996D21B5E9A0A4D920D4883164C6E3594D12E97DE2F
        95DB389FE1349BDE2A91D7399EE02A8DD9005C93979C9EC0C0C0C0C0C0C0C0C0
        C0C0C0EAECE94D9F4E04A31134C5472BB137188D2516633B09483C0B37501435
        6413385F005288278BCE1A6FB6105EAA1A7DCB1472C30A417D2D72932F97DE31
        98DC3BA1E3389EE12A91D8389EE22E93DA02619D8A9399C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C071B57315A0211B911C096095083D731332601337621337
        5F13375F02578F288CD20F5EA81879C82086D31D81D00F5EAC175E8E3196D934
        9ADE3EA4E53BA1E22991D83BA2E33398E10665A4869093C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0AFD1AE1B931A06639F0C406B13365E1338601337
        5F12385F005D942C91D7145EA657A3D860ACDF5DAADC155FA72172A0359ADE34
        9BDE40A6E53EA4E42991D83FA5E5369CE40666A5768992C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E1F5DC005B9210386013375F1338601337
        5F12375E005D943199DB2175B19CB0D3EEF5FDC2D2E7195D9E3C9DD3339BE037
        9DE041A7E541A7E72990D840A6E53A9FE50668A671858CC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000578F11386013375F1338601337
        5E0D3D670360963297D93FA8E92A84BD559ACA2F85BF41A2DD4CB4F1359CDE38
        A0E245ABEA48AEEA2A90D743A9E73EA6E80F72B4607F8DC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000568E13355E1338611338601336
        5E0E3C6604639E3399DA4DB1F03FA9E92994DC4DB5F24CB3F04CB2EE359CE038
        9FE148AEEA49AEEB2B91D946AAEA3FA7E71374B7597A8BC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004F861233520F2E501338601336
        5D0B426C0565A13B9FE14DB3EF3EA6E739A1E44DB7F248B0EF4AB3F1319BE034
        9FE445AFEF46B1F0258FD93DA8EA47AFEE1375B748718BC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004984025A16003B170D254B1436
        5C0B426E0A6BA93EA2E54AB5F438A1E43AA4E853B5EE4EB4EE53B6EF419EDD53
        A8DD60B7E863B9E84B9CD462B4E64AAEEF1478BE466F87C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00035740E771623A3260033180A18
        3A09406B0B6EABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF127DC63A6B86C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08BA08D0062072E9B3280E39940B2480042
        0D0A32530B74BA0000FF0000FF0000FFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1A81CB306380C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0819E802B862C219E2C4AC55A62CD736ED4847DDB9356C6
        5C0868470B6DBBFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1981CB2C6382C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C057965705A4122CC03E44C85856CB6B60D0766CD18076D68C90E8
        9F3793930B6CB50000FF0000FF0000FFFFFFFF0000FF0000FF0000FF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1B87D2245F81C0C0C0C0C0C0C0C0C0
        C0C0C000920321BD322ABF3C31C3443DC54F54CD6565D2786BD28083DE9B77DC
        7E127572147BC60000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FF0000FF0000FF2694DC1B587CC0C0C0C0C0C0C0C0C0
        4FA0520BB51D1EBE3012AD2118992144A84F095B3024912D79DD9056BF620B66
        10004D6D1C83CB0000FF0000FF0000FFFFFFFFFFFFFF0000FF0000FFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF2C98DE195B7EC0C0C0C0C0C0C0C0C0
        0B90100CB61D00900678A178C2D4BEC0C0C008367019842B4BC34D0157110F2C
        53024F851B87CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF349BE015597FC0C0C0C0C0C0C3DEC3
        0190062A8F2DD2D1CFC0C0C0C0C0C0C0C0C00F39660464180149201330651532
        5B025182228BCF5EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55E
        B9F55EB9F55EB9F55EB9F55EB9F55EB9F5339BE00C547EC0C0C0C0C0C0C3E1C3
        007000B4BBB5C0C0C0C0C0C0C0C0C0C0C0C000487C00467400437900477A0045
        76005588268CCE49B5FB5EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55E
        B9F53EAAF033A1E92C9AE23093D42B8FCF0F76BD105780C0C0C0C0C0C0C5E2C5
        4F9250C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04389B2488BB6478CB5478CB54F91
        B80461962485C644AAEE3BA8EF39A2E92E9BE02892D9238ACF1780C90A74BE04
        6CAD005C96005991005A97025893096195186B9D75A0B8C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C02E77A600589500609E00548F00518800548B0F6192256C972C78A13F7DA14B
        89AA7AA6C3A5C6DABDCAD2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      Layout = blGlyphTop
    end
    object btnImpNF: TBitBtn
      Left = 205
      Top = 2
      Width = 72
      Height = 55
      Caption = 'Imprimir NF'
      PopupMenu = PopupMenu1
      TabOrder = 7
      OnClick = btnImpNFClick
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888800000000000
        0000000000000000008880777777777777777777777777777088070000000000
        000000000000000000080F7777777777777777777777777777080F7777777777
        777777777777777777080F77F7F7F7F7F7F7F7F7F7F7F77777080F77FFFFFFFF
        FFFFFFFFFFFFF77777080F7777777777777777777777F77777080F7700000000
        000000000000F72277080F777777777777777777777777AA77080F7777777777
        777777777777777777080F7F7F7F7F7F7F7F7F7F7F7F7F7F7F080FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF080F77777777777777777777777777770880F700000000
        0000000000000777708880F87088888888888888880077777088880F808F8F8F
        8F8F8F8F8F0777770888880880FFFFFFFFFFFFFFFF0777770888888000FFFFFF
        FFFFFFFFFF0000008888888880FFFFFFFFFFFFFFFF0888888888888880FFFFFF
        FFFFFFFFFF0888888888888880FFFFFFFFFFFF88880888888888888880FFFFFF
        FFFFF700070888888888888880FFFFFFFFFFF7FFF08888888888888880FFFFFF
        FFFFF7FF088888888888888880FFFFFFFFFFF7F0888888888888888880FFFFFF
        FFFFF70888888888888888888000000000000088888888888888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphTop
    end
    object cbFinanceiro: TJvCheckBox
      Left = 657
      Top = 13
      Width = 73
      Height = 17
      Caption = 'Financeiro '
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 8
      LinkedControls = <>
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object cbEstoque: TJvCheckBox
      Left = 657
      Top = 31
      Width = 116
      Height = 17
      Caption = 'Movimenta Estoque'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 9
      LinkedControls = <>
      AutoSize = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object dbeSerie: TDBEdit
      Left = 500
      Top = -75
      Width = 78
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SERIE'
      DataSource = DMNF.DtSrcVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Visible = False
    end
    object dbeUsuario: TDBEdit
      Left = 500
      Top = -49
      Width = 78
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CODVENDEDOR'
      DataSource = DMNF.DtSrcVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Visible = False
    end
    object BitBtn5: TBitBtn
      Left = 501
      Top = -64
      Width = 75
      Height = 25
      Caption = 'BitBtn5'
      TabOrder = 12
      Visible = False
      OnClick = BitBtn5Click
    end
    object btnImpServ: TBitBtn
      Left = 277
      Top = 2
      Width = 72
      Height = 55
      Caption = 'Imp. N.Serv'
      PopupMenu = PopupMenu1
      TabOrder = 13
      OnClick = btnImpServClick
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888800000000000
        0000000000000000008880777777777777777777777777777088070000000000
        000000000000000000080F7777777777777777777777777777080F7777777777
        777777777777777777080F77F7F7F7F7F7F7F7F7F7F7F77777080F77FFFFFFFF
        FFFFFFFFFFFFF77777080F7777777777777777777777F77777080F7700000000
        000000000000F72277080F777777777777777777777777AA77080F7777777777
        777777777777777777080F7F7F7F7F7F7F7F7F7F7F7F7F7F7F080FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF080F77777777777777777777777777770880F700000000
        0000000000000777708880F87088888888888888880077777088880F808F8F8F
        8F8F8F8F8F0777770888880880FFFFFFFFFFFFFFFF0777770888888000FFFFFF
        FFFFFFFFFF0000008888888880FFFFFFFFFFFFFFFF0888888888888880FFFFFF
        FFFFFFFFFF0888888888888880FFFFFFFFFFFF88880888888888888880FFFFFF
        FFFFF700070888888888888880FFFFFFFFFFF7FFF08888888888888880FFFFFF
        FFFFF7FF088888888888888880FFFFFFFFFFF7F0888888888888888880FFFFFF
        FFFFF70888888888888888888000000000000088888888888888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphTop
    end
    object RadioGroup1: TRadioGroup
      Left = 563
      Top = 3
      Width = 91
      Height = 52
      Caption = 'Nota de ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Servi'#231'o'
        'Venda/Saida')
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 14
      OnClick = RadioGroup1Click
    end
    object btnGuia: TBitBtn
      Left = 349
      Top = 2
      Width = 70
      Height = 55
      Caption = 'Guia'
      PopupMenu = PopupMenu1
      TabOrder = 15
      OnClick = btnGuiaClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FF000000FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FF000000FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        00000000000000000000000000FF000000FF808080FF808080FF808080FF8080
        80FF000000FF000000FF00000000000000000000000000000000000000000000
        00000000000000000000000000FF000000FF808080FF808080FF808080FF8080
        80FF000000FF000000FF00000000000000000000000000000000000000000000
        000000000000000000FF000000FF808080FF808080FFC0C0C0FFC0C0C0FF8080
        80FF808080FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF808080FF808080FFC0C0C0FFC0C0C0FF8080
        80FF808080FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF808080FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF808080FF000000FF000000FF000000000000000000000000000000000000
        00FF808080FF000000FF000000FF808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF808080FF000000FF000000FF808080FF008080FF008080FF008080FF0080
        80FF808080FF000000FF000000FF808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF808080FF000000FF000000FF808080FF000000FF00000000000000FF0080
        80FF008080FF000000FF000000FF808080FF808080FFC0C0C0FFC0C0C0FF8080
        80FF808080FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF000000FF000000FF808080FF808080FFC0C0C0FFC0C0C0FF8080
        80FF808080FF000000FF000000FF008080FF008080FF000000FF000000FF0080
        80FF00FFFFFF808080FF000000FF000000FF808080FF808080FF808080FF8080
        80FF000000FF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF808080FF000000FF000000FF808080FF808080FF808080FF8080
        80FF000000FF000000FF808080FF00FFFFFF008080FF000000FF000000FF00FF
        FFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF8080
        80FF00FFFFFF00FFFFFF00FFFFFF808080FF000000FF000000FF000000FF0000
        00FF808080FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF808080FF000000FF000000FF000000FF0000
        00FF808080FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF8080
        80FF808080FF00FFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00000000000000FF8080
        80FF808080FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFC0C0
        C0FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000FF8080
        80FF808080FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFC0C0
        C0FF00FFFFFF00FFFFFF000000FF008080FF000000FF008080FF008080FF0080
        80FF008080FF008080FF008080FF008080FF008080FF008080FF008080FF0080
        80FF008080FF008080FF008080FF008080FF000000FF00000000000000FF8080
        80FF808080FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF808080FFC0C0
        C0FF00FFFFFF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF008080FF000000FF000000FF8080
        80FF808080FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFC0C0
        C0FF00FFFFFF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000FF00FF
        FFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00FFFFFF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        00FF000000FFC0C0C0FFC0C0C0FF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF000000FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000FFFF0000FFFF0000FFFF0000
        FFFFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000FFFF0000FFFFC0C0
        C0FFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF808080FF808080FFC0C0
        C0FFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        00FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF808080FF808080FF008080FFC0C0
        C0FFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        0000000000FFC0C0C0FFC0C0C0FF808080FFFF0000FF008080FF008080FFC0C0
        C0FFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        0000000000FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFC0C0
        C0FFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        0000000000FFC0C0C0FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFFC0C0
        C0FFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        0000000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FF000000FF008080FF000000FF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF00FF
        FFFF00FFFFFF00FFFFFFC0C0C0FF00FFFFFF00FFFFFF000000FF000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF008080FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF000000FF000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
    end
    object btnNotaFiscal: TBitBtn
      Left = 138
      Top = 2
      Width = 67
      Height = 55
      Caption = 'NFe'
      PopupMenu = PopupMenu1
      TabOrder = 16
      OnClick = btnNotaFiscalClick
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
        DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
        FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
        5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
        DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
        FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
        5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
        DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
        FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
        5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
        9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
        8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
        1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
        0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
        6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
        0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
        0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
        6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
        0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
        00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
        6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
        0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
        000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
        8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
        1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
        920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
        FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
        5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
        9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
        3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
        0707070707070707070707070707070707070707070707070707070707070707
        0707070707070707070707070707070707070707070707070707070707070707
        0700000000000000000000000000000000000007070707070707070707070707
        0700070707070707070707070707070707070007070707070707070707070707
        070007EE07EE07EE07EE07EE07EE07EE07EE0007070707070707070707070707
        0700EEBEEEBEEEBEEEA6EEBEEEBEEEBEEE070007070707070707070707070707
        0700BE07BE07BE07BE07BE07BE07BE0707EE0007070707070707070707070707
        0700EEBE07BE07BE07BE07BE07BE07BEEE070007070707070707070707070707
        0700BE07BE07BE07BE07BE000000000000EE0007070707070707070707070707
        0700EEBE07BE07BE070000000000000000000007070707070707070707070707
        0700BE07BE07BE07000000BEBEBEBEBEBE000000000707070707070707070707
        0700EEBE07BE07C800BEBEBEBEBEBEBEBEBEBE00000007070707070707070707
        0700BE07BE070000BEBEBEBEBEBEBEBEBEBEBE00000000070707070707070707
        070007BEEE0000BEBEBEBEBEBEBEBEBEBEBEBE00000000070707070707070707
        0700BE07BE00BE00BEBEBE00BE00BEBEBEBEBE00000700000707070707070707
        070007EE0000BE00BEBE0000BE00BEBEBEBEBE00000700000707070707070707
        0700BE000000BE00BE00BE00BE00BEBEBEBEBE00000707000007070707070707
        0700070000BEBE00BE00BE00BE000000BEBEBE00000707000007070707070707
        0700BE0000BEBE00BE00BE00BE00BEBEBEBEBE00000707000007070707070707
        0700070000BEBE0000BEBE00BE00BEBEBEBEBE00000707000007070707070707
        0700BE0000BEBE00BEBEBE00BE00000000BEBE00000707000007070707070707
        0700000000BEBEBEBEBEBEBEBEBEBEBEBEBEBE00000707000007070707070707
        070707000000BEBEBEBEBEBEBEBEBEBEBEBEBE00000707000007070707070707
        070707000000BEBEBEBEBEBEBEBEBEBEBEBEBE00000700000707070707070707
        0707070700000000000000000000000000000000000700000707070707070707
        0707070707000000000000000000000000000000000000070707070707070707
        0707070707000007070707070707070707070707070000070707070707070707
        0707070707070000070707070707070707070707000007070707070707070707
        0707070707070700000000070707070707000000000707070707070707070707
        0707070707070707070000000000000000000007070707070707070707070707
        0707070707070707070707000000000000070707070707070707070707070707
        0707070707070707070707070707070707070707070707070707}
      Layout = blGlyphTop
    end
  end
  object CheckBox1: TCheckBox
    Left = 661
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Dados Extras ?'
    TabOrder = 1
  end
  object ChkComp: TCheckBox
    Left = 650
    Top = 64
    Width = 111
    Height = 17
    Caption = 'Nota Complemetar'
    TabOrder = 3
    OnClick = ChkCompClick
  end
  object DataSource1: TDataSource
    DataSet = DM.cds_empresa
    Left = 591
    Top = 61
  end
  object proc_transp: TSQLDataSet
    CommandText = 'select * from TRANSPORTADORA '#13#10'where CODTRANSP = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 432
    Top = 152
    object proc_transpCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object proc_transpNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object proc_transpPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object proc_transpCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object proc_transpEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object proc_transpCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object proc_transpUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object proc_transpUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object proc_transpFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object proc_transpINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object proc_transpCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object proc_transpCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object proc_transpCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object proc_transpCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object proc_transpCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object proc_transpCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object proc_transpFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object proc_transpFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object proc_transpFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object proc_transpCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object proc_transpBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object proc_transpCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
  end
  object listaCliente1: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.CNP' +
      'J, cli.INSCESTADUAL, cli.PRAZORECEBIMENTO, cli.COD_TRANPORTADORA' +
      ' '#13#10', ende.LOGRADOURO, ende.BAIRRO, ende.COMPLEMENTO, ende.CIDADE' +
      ', ende.UF, ende.CEP, ende.TELEFONE , CLI.TIPOFIRMA, cli.codfisca' +
      'l'#13#10'from CLIENTES cli '#13#10'left outer join ENDERECOCLIENTE ende on e' +
      'nde.CODCLIENTE = cli.CODCLIENTE '#13#10'where cli.CODCLIENTE = :pCodCl' +
      'i'#13#10' order by cli.RAZAOSOCIAL '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 368
    Top = 80
    object listaCliente1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object listaCliente1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object listaCliente1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object listaCliente1CNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Visible = False
      Size = 18
    end
    object listaCliente1INSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = []
      Visible = False
      Size = 24
    end
    object listaCliente1LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object listaCliente1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object listaCliente1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object listaCliente1CIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object listaCliente1UF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 2
    end
    object listaCliente1CEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object listaCliente1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Visible = False
      Size = 9
    end
    object listaCliente1PRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object listaCliente1COD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object listaCliente1CODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTotal: TSQLDataSet
    CommandText = 
      'select sum(vlr_base * quantidade) from movimentodetalhe where co' +
      'dmovimento = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 424
    Top = 72
  end
  object localizaProduto: TSQLDataSet
    CommandText = 'select PRODUTO, CODPRO from PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 559
    Top = 377
    object localizaProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object localizaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object PopupMenu1: TPopupMenu
    Alignment = paCenter
    Left = 524
    Top = 376
    object ExcluirItemNF1: TMenuItem
      Caption = 'Excluir Item NF'
      ShortCut = 16452
      OnClick = ExcluirItemNF1Click
    end
  end
  object sClasFiscal: TSQLDataSet
    CommandText = 
      'select CLASSIFICAO, '#13#10'          CODIGO_REDUZ, '#13#10'          DESCRI' +
      'CAO, '#13#10'          TIPO_CLASSIFICA,'#13#10'          ICMS_SUBST, '#13#10'     ' +
      '     ICMS_SUBST_IC, '#13#10'          ICMS_SUBST_IND '#13#10'from CLASSIFICA' +
      'CAOFISCAL where  CLASSIFICAO = :TIPO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 356
    Top = 150
    object sClasFiscalCLASSIFICAO: TStringField
      FieldName = 'CLASSIFICAO'
      Required = True
      Size = 30
    end
    object sClasFiscalCODIGO_REDUZ: TStringField
      FieldName = 'CODIGO_REDUZ'
      Size = 10
    end
    object sClasFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sClasFiscalTIPO_CLASSIFICA: TStringField
      FieldName = 'TIPO_CLASSIFICA'
      Size = 30
    end
    object sClasFiscalICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object sClasFiscalICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object sClasFiscalICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
  end
  object sdsNotaMae: TSQLDataSet
    CommandText = 'select * from NOTAFISCAL nf where nf.numnf = :nfmae'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'nfmae'
        ParamType = ptUnknown
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 160
    Top = 152
    object sdsNotaMaeNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object sdsNotaMaeNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNotaMaeNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object sdsNotaMaeQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNotaMaeMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object sdsNotaMaePESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNotaMaePESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNotaMaeESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object sdsNotaMaeDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNotaMaeDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object sdsNotaMaeUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsNotaMaeCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNotaMaeCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object sdsNotaMaeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsNotaMaeNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsNotaMaeHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object sdsNotaMaeDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object sdsNotaMaeBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaMaeVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsNotaMaeBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object sdsNotaMaeVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object sdsNotaMaeVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sdsNotaMaeVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsNotaMaeVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsNotaMaeOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object sdsNotaMaeVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsNotaMaeVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sdsNotaMaeCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object sdsNotaMaeCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object sdsNotaMaeCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object sdsNotaMaeCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object sdsNotaMaeCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object sdsNotaMaeCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object sdsNotaMaeCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNotaMaeCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNotaMaeFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object sdsNotaMaeICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsNotaMaeREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object sdsNotaMaeNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdsNotaMaePLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsNotaMaeCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNotaMaeEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdsNotaMaeCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdsNotaMaeUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNotaMaeUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNotaMaeFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaMaeINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNotaMaeSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaMaeVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object sdsNotaMaeIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaMaeSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sdsNotaMaeSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object sdsNotaMaeID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object sdsNotaMaePROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object sdsNotaMaeNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object sdsNotaMaePROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object sdsNotaMaeNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object sdsNotaMaePESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
  end
  object dspNotaMae: TDataSetProvider
    DataSet = sdsNotaMae
    UpdateMode = upWhereKeyOnly
    Left = 195
    Top = 152
  end
  object cdsNotaMae: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'nfmae'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspNotaMae'
    Left = 231
    Top = 152
    object cdsNotaMaeNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cdsNotaMaeNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNotaMaeNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object cdsNotaMaeQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNotaMaeMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsNotaMaePESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNotaMaePESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNotaMaeESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object cdsNotaMaeDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNotaMaeDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object cdsNotaMaeUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotaMaeCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNotaMaeCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsNotaMaeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNotaMaeNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsNotaMaeHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object cdsNotaMaeDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cdsNotaMaeBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNotaMaeVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNotaMaeBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNotaMaeVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNotaMaeVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNotaMaeVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsNotaMaeVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsNotaMaeOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cdsNotaMaeVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsNotaMaeVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNotaMaeCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object cdsNotaMaeCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object cdsNotaMaeCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object cdsNotaMaeCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object cdsNotaMaeCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object cdsNotaMaeCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object cdsNotaMaeCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNotaMaeCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNotaMaeFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object cdsNotaMaeICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsNotaMaeREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object cdsNotaMaeNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsNotaMaePLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object cdsNotaMaeCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNotaMaeEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsNotaMaeCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsNotaMaeUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNotaMaeUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNotaMaeFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaMaeINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNotaMaeSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaMaeVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object cdsNotaMaeIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaMaeSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsNotaMaeSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cdsNotaMaeID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object cdsNotaMaePROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object cdsNotaMaeNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object cdsNotaMaePROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object cdsNotaMaeNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object cdsNotaMaePESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
  end
  object sCfop: TSQLDataSet
    CommandText = 
      'select * from ESTADO_ICMS ei where ei.UF = :uf and ei.CFOP = :cf' +
      'op and ei.CODFISCAL = :pessoa'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'uf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cfop'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pessoa'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 159
    Top = 195
    object sCfopCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object sCfopUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object sCfopDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object sCfopDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object sCfopDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object sCfopDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object sCfopDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object sCfopDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object sCfopNAOENVFATURA: TStringField
      FieldName = 'NAOENVFATURA'
      FixedChar = True
      Size = 1
    end
    object sCfopCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object sqlValida: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 200
    Top = 64
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select rec.CODCLIENTE, rec.CODRECEBIMENTO, rec.TITULO, rec.VIA, ' +
      'rec.DATAVENCIMENTO, rec.VALORTITULO, rec.DP, '#13#10'          CASE re' +
      'c.STATUS WHEN '#39'5-'#39' then '#39'Pendente'#39' when '#39'7-'#39' then '#39'Recebido'#39' whe' +
      'n '#39'8-'#39' then '#39'Credito Duvidoso'#39' when '#39'9-'#39' then '#39'Em Cobran'#231'a'#39' when' +
      ' '#39'14'#39' then '#39'Cancelado'#39' end  as STATUS, '#13#10'          rec.VALORRECE' +
      'BIDO, rec.VALOR_RESTO, rec.VALOR_PRIM_VIA, rec.N_DOCUMENTO, rec.' +
      'CAIXA, rec.FORMARECEBIMENTO, rec.DATARECEBIMENTO,'#13#10'          cli' +
      '.NOMECLIENTE, (CASE WHEN (REC.VALORRECEBIDO > 0) THEN (REC.VALOR' +
      'TITULO - rec.VALOR_RESTO)'#13#10'          WHEN (REC.VALORRECEBIDO = 0' +
      ') THEN rec.VALOR_RESTO END)'#13#10'          as VALORREC, rec.EMISSAO,' +
      ' (udf_digits(rec.TITULO) || '#39'/'#39' || rec.VIA) as TIT, rec.STATUS a' +
      's SITUACAO '#13#10'from RECEBIMENTO rec '#13#10'           inner join CLIENT' +
      'ES cli on cli.CODCLIENTE=rec.CODCLIENTE '#13#10'where CODVENDA = :pcod' +
      ' order by rec.CODRECEBIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 593
    Top = 377
    object SQLDataSet1TITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object SQLDataSet1DATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1CAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1STATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 16
    end
    object SQLDataSet1VIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1N_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = []
    end
    object SQLDataSet1CODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 50
    end
    object SQLDataSet1DP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1EMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1VALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object SQLDataSet1TIT: TStringField
      FieldName = 'TIT'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object SQLDataSet1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1FORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1DATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ReadOnly = True
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 625
    Top = 377
  end
  object scdsCr_proc: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 657
    Top = 377
    object scdsCr_procTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object scdsCr_procEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procSTATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 16
    end
    object scdsCr_procVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object scdsCr_procN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object scdsCr_procVALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = []
      DisplayFormat = ',#0.00'
    end
    object scdsCr_procCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scdsCr_procDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object scdsCr_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scdsCr_procTIT: TStringField
      FieldName = 'TIT'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object scdsCr_procSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object scdsCr_procFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object scdsCr_procDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ReadOnly = True
    end
    object scdsCr_procTRecebido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TRecebido'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'SUM(VALORRECEBIDO)'
    end
    object scdsCr_procTotal_resto: TAggregateField
      Alignment = taRightJustify
      FieldName = 'Total_resto'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_PRIM_VIA-VALORRECEBIDO)'
    end
    object scdsCr_procTotalTitulo: TAggregateField
      FieldName = 'TotalTitulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_PRIM_VIA)'
    end
  end
  object ds_Cr: TDataSource
    DataSet = scdsCr_proc
    Left = 689
    Top = 376
  end
end
