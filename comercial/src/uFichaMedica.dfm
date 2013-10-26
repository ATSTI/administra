inherited fFichaMedica: TfFichaMedica
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    object Label4: TLabel
      Left = 273
      Top = 11
      Width = 221
      Height = 36
      Caption = 'Ficha M'#233'dica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -32
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 277
      Top = 8
      Width = 221
      Height = 36
      Caption = 'Ficha M'#233'dica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8344832
      Font.Height = -32
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object PagAluno: TPageControl [2]
    Left = 0
    Top = 51
    Width = 772
    Height = 417
    ActivePage = TabDadosAdicionais
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 2
    object TabDadosAdicionais: TTabSheet
      Caption = 'Dados Adicionais'
      ImageIndex = 4
      PopupMenu = PopupMenu1
      object Label89: TLabel
        Left = 0
        Top = 5
        Width = 108
        Height = 13
        Caption = 'O Aluno Mora com o(s)'
      end
      object Label90: TLabel
        Left = 156
        Top = 5
        Width = 62
        Height = 13
        Caption = 'Nome Outros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label91: TLabel
        Left = 0
        Top = 54
        Width = 124
        Height = 13
        Caption = 'Empresa em que Trabalha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label92: TLabel
        Left = 315
        Top = 54
        Width = 91
        Height = 13
        Caption = 'Telefone Comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label93: TLabel
        Left = 430
        Top = 54
        Width = 100
        Height = 13
        Caption = 'Telefone Residencial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label94: TLabel
        Left = 545
        Top = 54
        Width = 32
        Height = 13
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label95: TLabel
        Left = 660
        Top = 54
        Width = 30
        Height = 13
        Caption = 'Ramal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBox5: TDBComboBox
        Left = 0
        Top = 18
        Width = 155
        Height = 24
        DataField = 'CQUEMMORA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'Pais'
          'Pai'
          'M'#227'e'
          'Outros')
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DBEdit65: TDBEdit
        Left = 156
        Top = 18
        Width = 606
        Height = 24
        DataField = 'NOME_OUTROS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit66: TDBEdit
        Left = 0
        Top = 67
        Width = 314
        Height = 24
        DataField = 'EMPRESA_OUTROS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit67: TDBEdit
        Left = 315
        Top = 67
        Width = 114
        Height = 24
        DataField = 'FONE_OUTROS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit68: TDBEdit
        Left = 430
        Top = 67
        Width = 114
        Height = 24
        DataField = 'FONE1_OUTROS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit69: TDBEdit
        Left = 545
        Top = 67
        Width = 114
        Height = 24
        DataField = 'FONE2_OUTROS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit70: TDBEdit
        Left = 660
        Top = 67
        Width = 102
        Height = 24
        DataField = 'RAMAL_OUTROS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object GroupBox15: TGroupBox
        Left = 1
        Top = 96
        Width = 761
        Height = 72
        Caption = 
          'Em caso de emerg'#234'ncia n'#227'o sendo Localizados os pais ou respons'#225'v' +
          'eis quem devera se avisado ?'
        PopupMenu = PopupMenu1
        TabOrder = 7
        object Label105: TLabel
          Left = 11
          Top = 19
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label106: TLabel
          Left = 499
          Top = 19
          Width = 54
          Height = 13
          Caption = 'Parentesco'
        end
        object Label107: TLabel
          Left = 11
          Top = 47
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label108: TLabel
          Left = 173
          Top = 47
          Width = 38
          Height = 13
          Caption = 'Hospital'
        end
        object Label109: TLabel
          Left = 561
          Top = 47
          Width = 55
          Height = 13
          Caption = 'Fone Hosp.'
        end
        object DBEdit81: TDBEdit
          Left = 49
          Top = 15
          Width = 446
          Height = 24
          DataField = 'NOME_AVISO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit82: TDBEdit
          Left = 556
          Top = 15
          Width = 186
          Height = 24
          DataField = 'PARENTESCO_AVISO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit83: TDBEdit
          Left = 49
          Top = 43
          Width = 120
          Height = 24
          DataField = 'FONE_AVISO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit84: TDBEdit
          Left = 219
          Top = 43
          Width = 337
          Height = 24
          DataField = 'HOSPITAL_AVISO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit85: TDBEdit
          Left = 622
          Top = 43
          Width = 120
          Height = 24
          DataField = 'FONE_HOSPITAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
      end
      object DBRadioGroup20: TDBRadioGroup
        Left = 1
        Top = 172
        Width = 255
        Height = 95
        Caption = 'Quantas horas o aluno estuda por dia, em m'#233'dia ?'
        DataField = 'HORAS_ESTUDA'
        DataSource = DtSrc
        Items.Strings = (
          '1 Hora'
          '2 Horas'
          '3 Horas ou mais'
          'Estuda Apenas em per'#237'odo de provas')
        PopupMenu = PopupMenu1
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object DBRadioGroup21: TDBRadioGroup
        Left = 257
        Top = 172
        Width = 218
        Height = 95
        Caption = 'Com rela'#231#227'o a professores particulares ?'
        DataField = 'PROFESSORES_PARTICULAR'
        DataSource = DtSrc
        Items.Strings = (
          'Utiliza com alguma frequ'#234'ncia'
          'Utiliza raramente'
          'Nunca utiliza')
        PopupMenu = PopupMenu1
        TabOrder = 9
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBRadioGroup19: TDBRadioGroup
        Left = 477
        Top = 173
        Width = 285
        Height = 45
        Caption = 'Est'#225' autorizado a deixar a escola sozinho ?'
        Columns = 2
        DataField = 'AUTORIZADO_DX_ESCOLA_SOZ'
        DataSource = DtSrc
        Items.Strings = (
          'Sim'
          'N'#227'o')
        PopupMenu = PopupMenu1
        TabOrder = 10
        Values.Strings = (
          '0'
          '1')
      end
      object DBRadioGroup18: TDBRadioGroup
        Left = 477
        Top = 222
        Width = 285
        Height = 45
        Caption = 'Est'#225' autorizado a esperar pelos pais fora da escola ?'
        Columns = 2
        DataField = 'ESPERAR_FORA_ESCOLA'
        DataSource = DtSrc
        Items.Strings = (
          'Sim'
          'N'#227'o')
        PopupMenu = PopupMenu1
        TabOrder = 11
        Values.Strings = (
          '0'
          '1')
      end
      object GroupBox25: TGroupBox
        Left = 1
        Top = 272
        Width = 761
        Height = 81
        Caption = 'Pessoa autorizada a retir'#225'-lo da escola '
        PopupMenu = PopupMenu1
        TabOrder = 12
        object Label110: TLabel
          Left = 11
          Top = 26
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label111: TLabel
          Left = 11
          Top = 50
          Width = 16
          Height = 13
          Caption = 'RG'
        end
        object Label113: TLabel
          Left = 253
          Top = 54
          Width = 54
          Height = 13
          Caption = 'Parentesco'
        end
        object Label114: TLabel
          Left = 577
          Top = 54
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object DBEdit94: TDBEdit
          Left = 49
          Top = 22
          Width = 693
          Height = 24
          DataField = 'NOME_RETIRA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit95: TDBEdit
          Left = 49
          Top = 50
          Width = 192
          Height = 24
          DataField = 'ENDERECO_RETIRA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit97: TDBEdit
          Left = 315
          Top = 50
          Width = 256
          Height = 24
          DataField = 'PARENTESCO_RETIRA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit98: TDBEdit
          Left = 622
          Top = 50
          Width = 120
          Height = 24
          DataField = 'FONE_RETIRA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TabFicha1: TTabSheet
      Caption = '1'#186' Ficha M'#233'dica'
      ImageIndex = 5
      PopupMenu = PopupMenu1
      object Label99: TLabel
        Left = 1
        Top = 302
        Width = 81
        Height = 13
        Caption = 'Nome do M'#233'dico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label100: TLabel
        Left = 639
        Top = 302
        Width = 99
        Height = 13
        Caption = 'Telefone de contado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label101: TLabel
        Left = 1
        Top = 342
        Width = 98
        Height = 13
        Caption = 'Endere'#231'o do m'#233'dico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 1
        Top = 109
        Width = 105
        Height = 67
        Caption = 'O Aluno '#233' :'
        DataField = 'CANHOTO_DESTRO'
        DataSource = DtSrc
        Items.Strings = (
          'Destro'
          'Canhoto')
        PopupMenu = PopupMenu1
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object GroupBox8: TGroupBox
        Left = 106
        Top = 110
        Width = 657
        Height = 66
        Caption = 
          'O Aluno '#233' alergico a algum medicamento t'#243'pico, oral ou injetavel' +
          ' ?'
        PopupMenu = PopupMenu1
        TabOrder = 3
        object Label97: TLabel
          Left = 112
          Top = 19
          Width = 84
          Height = 13
          Caption = 'Caso Sim, quais ?'
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 10
          Top = 11
          Width = 95
          Height = 49
          Columns = 2
          DataField = 'ALERGICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
        end
        object DBEdit71: TDBEdit
          Left = 109
          Top = 34
          Width = 543
          Height = 24
          DataField = 'TIPO_ALERGIA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 1
        Top = 180
        Width = 164
        Height = 57
        Caption = 'O M'#233'dico do Aluno '#233
        Columns = 2
        DataField = 'MEDICO_ALUNO'
        DataSource = DtSrc
        Items.Strings = (
          'Alopata'
          'Homeopata')
        PopupMenu = PopupMenu1
        TabOrder = 4
        Values.Strings = (
          '0'
          '1')
      end
      object GroupBox9: TGroupBox
        Left = 166
        Top = 180
        Width = 597
        Height = 57
        Caption = 'Est'#225' fazendo algum tipo de tratamento m'#233'dico ?'
        PopupMenu = PopupMenu1
        TabOrder = 5
        object Label96: TLabel
          Left = 103
          Top = 15
          Width = 79
          Height = 13
          Caption = 'Caso Sim, qual ?'
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 5
          Top = 12
          Width = 95
          Height = 40
          Columns = 2
          DataField = 'TRATAMENTO_MEDICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
        end
        object DBEdit72: TDBEdit
          Left = 102
          Top = 27
          Width = 490
          Height = 24
          DataField = 'TIPO_TRATAMENTO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox10: TGroupBox
        Left = 1
        Top = 240
        Width = 762
        Height = 57
        Caption = 'Est'#225' ingerindo medica'#231#227'o especifica ?'
        PopupMenu = PopupMenu1
        TabOrder = 6
        object Label98: TLabel
          Left = 104
          Top = 15
          Width = 79
          Height = 13
          Caption = 'Caso Sim, qual ?'
        end
        object DBRadioGroup7: TDBRadioGroup
          Left = 5
          Top = 12
          Width = 95
          Height = 40
          Columns = 2
          DataField = 'INGERINDO_MEDICACAO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
        end
        object DBEdit73: TDBEdit
          Left = 102
          Top = 27
          Width = 656
          Height = 24
          DataField = 'TIPO_MEDICACAO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
      end
      object DBEdit74: TDBEdit
        Left = 1
        Top = 315
        Width = 634
        Height = 24
        DataField = 'NOME_MEDICO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBEdit75: TDBEdit
        Left = 637
        Top = 315
        Width = 125
        Height = 24
        DataField = 'FONE_MEDICO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit76: TDBEdit
        Left = 1
        Top = 356
        Width = 760
        Height = 24
        DataField = 'ENDERECO_MEDICO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 426
        Height = 105
        Caption = 'Educa'#231#227'o Especial - Tipo de Excepcionalidades:'
        PopupMenu = PopupMenu1
        TabOrder = 0
        object DBRadioGroup1: TDBRadioGroup
          Left = 4
          Top = 19
          Width = 104
          Height = 36
          Caption = 'Defici'#234'ncia Mental'
          Columns = 2
          DataField = 'D_MENTAL'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 4
          Top = 62
          Width = 104
          Height = 36
          Caption = 'Defici'#234'ncia Visual'
          Columns = 2
          DataField = 'D_VISUAL'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
        end
        object DBRadioGroup22: TDBRadioGroup
          Left = 108
          Top = 19
          Width = 104
          Height = 36
          Caption = 'Defici'#234'ncia F'#237'sica'
          Columns = 2
          DataField = 'D_FISICA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
        end
        object DBRadioGroup23: TDBRadioGroup
          Left = 212
          Top = 62
          Width = 104
          Height = 36
          Caption = 'Defici'#234'ncia Auditiva'
          Columns = 2
          DataField = 'D_AUDITIVA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
        end
        object DBRadioGroup24: TDBRadioGroup
          Left = 316
          Top = 62
          Width = 104
          Height = 36
          Caption = 'Outros'
          Columns = 2
          DataField = 'OUTROS'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
        end
        object DBRadioGroup25: TDBRadioGroup
          Left = 108
          Top = 62
          Width = 104
          Height = 36
          Caption = 'Defici'#234'ncia M'#250'ltipla'
          Columns = 2
          DataField = 'D_MULTIPLA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
        end
        object DBRadioGroup26: TDBRadioGroup
          Left = 316
          Top = 19
          Width = 104
          Height = 36
          Caption = 'Probl. de Conduta'
          Columns = 2
          DataField = 'CONDUTA_TIPICA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 6
        end
        object DBRadioGroup27: TDBRadioGroup
          Left = 212
          Top = 19
          Width = 104
          Height = 36
          Caption = 'Super-Dotado'
          Columns = 2
          DataField = 'SUPER_DOTADO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 7
        end
      end
      object GroupBox5: TGroupBox
        Left = 427
        Top = 1
        Width = 334
        Height = 105
        Caption = 'Tem Acompanhamento Profissional especializado ?'
        PopupMenu = PopupMenu1
        TabOrder = 1
        object DBRadioGroup28: TDBRadioGroup
          Left = 10
          Top = 19
          Width = 104
          Height = 36
          Caption = 'Psic'#243'logo'
          Columns = 2
          DataField = 'PSICOLOGO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 0
        end
        object DBRadioGroup29: TDBRadioGroup
          Left = 10
          Top = 62
          Width = 104
          Height = 36
          Caption = 'Fisioterapia'
          Columns = 2
          DataField = 'FISIOTERAPIA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
        end
        object DBRadioGroup30: TDBRadioGroup
          Left = 114
          Top = 19
          Width = 104
          Height = 36
          Caption = 'M'#233'dico'
          Columns = 2
          DataField = 'MEDICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
        end
        object DBRadioGroup31: TDBRadioGroup
          Left = 114
          Top = 62
          Width = 104
          Height = 36
          Caption = 'Fonoaudi'#243'logo'
          Columns = 2
          DataField = 'FONOAUDIOLOGO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
        end
        object DBRadioGroup32: TDBRadioGroup
          Left = 219
          Top = 62
          Width = 104
          Height = 36
          Caption = 'Outro'
          Columns = 2
          DataField = 'OUTRO_1'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
        end
        object DBRadioGroup33: TDBRadioGroup
          Left = 218
          Top = 19
          Width = 104
          Height = 36
          Caption = 'Psicopedagogo'
          Columns = 2
          DataField = 'PSICOPEDAGOGO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
        end
      end
    end
    object TabFicha2: TTabSheet
      Caption = '2'#186' Ficha M'#233'dica'
      ImageIndex = 6
      PopupMenu = PopupMenu1
      object GroupBox11: TGroupBox
        Left = 5
        Top = 0
        Width = 380
        Height = 57
        Caption = 'O aluno possui algum plano de sa'#250'de ?'
        PopupMenu = PopupMenu1
        TabOrder = 0
        object Label102: TLabel
          Left = 104
          Top = 15
          Width = 79
          Height = 13
          Caption = 'Caso Sim, qual ?'
        end
        object DBRadioGroup8: TDBRadioGroup
          Left = 5
          Top = 12
          Width = 95
          Height = 40
          Columns = 2
          DataField = 'PLANO_SAUDE'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
        end
        object DBEdit77: TDBEdit
          Left = 102
          Top = 27
          Width = 271
          Height = 24
          DataField = 'QUAL_PLANO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox12: TGroupBox
        Left = 387
        Top = 0
        Width = 368
        Height = 57
        Caption = 'A crian'#231'a tem doen'#231'a cong'#234'nita ?'
        PopupMenu = PopupMenu1
        TabOrder = 1
        object Label103: TLabel
          Left = 104
          Top = 15
          Width = 79
          Height = 13
          Caption = 'Caso Sim, qual ?'
        end
        object DBRadioGroup9: TDBRadioGroup
          Left = 5
          Top = 12
          Width = 95
          Height = 40
          Columns = 2
          DataField = 'DOENCA_CONGENITA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
        end
        object DBEdit78: TDBEdit
          Left = 102
          Top = 27
          Width = 260
          Height = 24
          DataField = 'QUAL_DOENCA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox13: TGroupBox
        Left = 5
        Top = 59
        Width = 751
        Height = 49
        Caption = 
          'Em caso de febre alta, n'#227'o sendo localizados os pais ou respons'#225 +
          'veis pelo aluno com qual medicamento o aluno dever'#225' ser medicado' +
          ' ?'
        PopupMenu = PopupMenu1
        TabOrder = 2
        object DBEdit79: TDBEdit
          Left = 6
          Top = 18
          Width = 739
          Height = 24
          DataField = 'SER_MEDICADO_POR'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox6: TGroupBox
        Left = 4
        Top = 190
        Width = 751
        Height = 198
        PopupMenu = PopupMenu1
        TabOrder = 4
        object DBRadioGroup10: TDBRadioGroup
          Left = 5
          Top = 12
          Width = 103
          Height = 43
          Caption = 'Tem Hiperten'#231#227'o ?'
          Columns = 2
          DataField = 'TEM_HIPERTENCAO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
        end
        object GroupBox16: TGroupBox
          Left = 108
          Top = 12
          Width = 259
          Height = 43
          Caption = 'est'#225' em tratamento ?'
          PopupMenu = PopupMenu1
          TabOrder = 1
          object DBEdit86: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'HIPERTENCAO'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
        object GroupBox17: TGroupBox
          Left = 481
          Top = 12
          Width = 259
          Height = 43
          Caption = 'est'#225' em tratamento ?'
          PopupMenu = PopupMenu1
          TabOrder = 2
          object DBEdit87: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'EPILETICO'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
        object DBRadioGroup11: TDBRadioGroup
          Left = 378
          Top = 12
          Width = 103
          Height = 43
          Caption = #201' epil'#233'tico ?'
          Columns = 2
          DataField = 'E_EPILETICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 3
          Values.Strings = (
            '0'
            '1')
        end
        object GroupBox18: TGroupBox
          Left = 108
          Top = 55
          Width = 259
          Height = 43
          Caption = 'est'#225' em tratamento ?'
          PopupMenu = PopupMenu1
          TabOrder = 4
          object DBEdit88: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'HEMOFILICO'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
        object DBRadioGroup12: TDBRadioGroup
          Left = 5
          Top = 55
          Width = 103
          Height = 43
          Caption = #201' hemof'#237'lico ?'
          Columns = 2
          DataField = 'E_HEMOFILICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 5
          Values.Strings = (
            '0'
            '1')
        end
        object GroupBox19: TGroupBox
          Left = 481
          Top = 55
          Width = 259
          Height = 43
          Caption = 'est'#225' em tratamento ?'
          PopupMenu = PopupMenu1
          TabOrder = 6
          object DBEdit89: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'DEFICIENTE_AUDITIVO'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
        object DBRadioGroup13: TDBRadioGroup
          Left = 378
          Top = 55
          Width = 103
          Height = 43
          Caption = #201' def. Auditivo ?'
          Columns = 2
          DataField = 'E_DEFICIENTE_AUDITIVO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 7
          Values.Strings = (
            '0'
            '1')
        end
        object GroupBox20: TGroupBox
          Left = 108
          Top = 101
          Width = 259
          Height = 43
          Caption = 'est'#225' em tratamento ?'
          PopupMenu = PopupMenu1
          TabOrder = 8
          object DBEdit90: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'DEFICIENTE_VISUAL'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
        object DBRadioGroup14: TDBRadioGroup
          Left = 5
          Top = 101
          Width = 103
          Height = 43
          Caption = #201' def. visual ?'
          Columns = 2
          DataField = 'E_DEFICIENTE_VISUAL'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 9
          Values.Strings = (
            '0'
            '1')
        end
        object GroupBox21: TGroupBox
          Left = 481
          Top = 101
          Width = 259
          Height = 43
          Caption = 'est'#225' em tratamento ?'
          PopupMenu = PopupMenu1
          TabOrder = 10
          object DBEdit91: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'DEFICIENTE_FISICO'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
        object DBRadioGroup15: TDBRadioGroup
          Left = 378
          Top = 101
          Width = 103
          Height = 43
          Caption = #201' def. F'#237'sico ?'
          Columns = 2
          DataField = 'E_DEFICIENTE_FISICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 11
          Values.Strings = (
            '0'
            '1')
        end
        object DBRadioGroup16: TDBRadioGroup
          Left = 5
          Top = 147
          Width = 103
          Height = 43
          Caption = #201' diab'#233'tico ?'
          Columns = 2
          DataField = 'E_DIABETICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 12
          Values.Strings = (
            '0'
            '1')
        end
        object GroupBox22: TGroupBox
          Left = 108
          Top = 147
          Width = 259
          Height = 43
          Caption = 'Usa insulina ?'
          PopupMenu = PopupMenu1
          TabOrder = 13
          object DBEdit92: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'DIABETICO'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
        object DBRadioGroup17: TDBRadioGroup
          Left = 378
          Top = 147
          Width = 103
          Height = 43
          Caption = #201' asm'#225'tico ?'
          Columns = 2
          DataField = 'E_ASMATICO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          PopupMenu = PopupMenu1
          TabOrder = 14
          Values.Strings = (
            '0'
            '1')
        end
        object GroupBox23: TGroupBox
          Left = 481
          Top = 147
          Width = 259
          Height = 43
          Caption = 'est'#225' em tratamento ?'
          PopupMenu = PopupMenu1
          TabOrder = 15
          object DBEdit93: TDBEdit
            Left = 5
            Top = 15
            Width = 249
            Height = 24
            BorderStyle = bsNone
            DataField = 'ASMATICO'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
        end
      end
      object GroupBox14: TGroupBox
        Left = 4
        Top = 112
        Width = 751
        Height = 82
        Caption = 'Quais as doen'#231'as contagiosas j'#225' contraidas'
        PopupMenu = PopupMenu1
        TabOrder = 3
        object Label104: TLabel
          Left = 8
          Top = 58
          Width = 36
          Height = 13
          Caption = 'Quais ?'
        end
        object DBEdit80: TDBEdit
          Left = 49
          Top = 54
          Width = 686
          Height = 24
          DataField = 'QUAIS_OUTRA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBRadioGroup34: TDBRadioGroup
          Left = 8
          Top = 16
          Width = 104
          Height = 36
          Caption = 'Caxumba'
          Columns = 2
          DataField = 'CONTRAIU_CAXUMBA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
        end
        object DBRadioGroup35: TDBRadioGroup
          Left = 112
          Top = 16
          Width = 104
          Height = 36
          Caption = 'Sarampo'
          Columns = 2
          DataField = 'CONTRAIU_SARAMPO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 2
        end
        object DBRadioGroup36: TDBRadioGroup
          Left = 216
          Top = 16
          Width = 104
          Height = 36
          Caption = 'Rub'#233'ola'
          Columns = 2
          DataField = 'CONTRAIU_RUBEOLA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 3
        end
        object DBRadioGroup37: TDBRadioGroup
          Left = 320
          Top = 16
          Width = 104
          Height = 36
          Caption = 'Catapora'
          Columns = 2
          DataField = 'CONTRAIU_CATAPORA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
        end
        object DBRadioGroup38: TDBRadioGroup
          Left = 424
          Top = 16
          Width = 104
          Height = 36
          Caption = 'Escarlatina'
          Columns = 2
          DataField = 'CONTRAIU_ESCARLATINA'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
        end
        object DBRadioGroup39: TDBRadioGroup
          Left = 528
          Top = 16
          Width = 104
          Height = 36
          Caption = 'Coqueluche'
          Columns = 2
          DataField = 'CONTRAIU_COQUELUCHE'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 6
        end
        object DBRadioGroup40: TDBRadioGroup
          Left = 632
          Top = 16
          Width = 104
          Height = 36
          Caption = 'Outras'
          Columns = 2
          DataField = 'CONTRAIU_OUTRAS'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 7
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 3
      object DBMemo4: TDBMemo
        Left = 4
        Top = 22
        Width = 753
        Height = 161
        DataField = 'OUTROS_H'
        DataSource = DtSrc
        PopupMenu = PopupMenu1
        TabOrder = 0
      end
      object DBMemo5: TDBMemo
        Left = 4
        Top = 207
        Width = 753
        Height = 167
        DataField = 'OBSERVACOES'
        DataSource = DtSrc
        PopupMenu = PopupMenu1
        TabOrder = 1
      end
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsFicha
    Left = 528
    Top = 2
  end
  object cdsFicha: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
      end>
    ProviderName = 'dspFicha'
    Left = 496
    Top = 3
    object cdsFichaID_FICHA: TIntegerField
      FieldName = 'ID_FICHA'
      Required = True
    end
    object cdsFichaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsFichaD_MENTAL: TStringField
      FieldName = 'D_MENTAL'
      Size = 5
    end
    object cdsFichaD_VISUAL: TStringField
      FieldName = 'D_VISUAL'
      Size = 5
    end
    object cdsFichaD_AUDITIVA: TStringField
      FieldName = 'D_AUDITIVA'
      Size = 5
    end
    object cdsFichaD_FISICA: TStringField
      FieldName = 'D_FISICA'
      Size = 5
    end
    object cdsFichaD_MULTIPLA: TStringField
      FieldName = 'D_MULTIPLA'
      Size = 5
    end
    object cdsFichaSUPER_DOTADO: TStringField
      FieldName = 'SUPER_DOTADO'
      Size = 5
    end
    object cdsFichaCONDUTA_TIPICA: TStringField
      FieldName = 'CONDUTA_TIPICA'
      Size = 5
    end
    object cdsFichaOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 5
    end
    object cdsFichaOUTROS_H: TMemoField
      FieldName = 'OUTROS_H'
      BlobType = ftMemo
    end
    object cdsFichaTEM_ACOMPANHANTE: TStringField
      FieldName = 'TEM_ACOMPANHANTE'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTIPO_ACOMPANHANTE: TStringField
      FieldName = 'TIPO_ACOMPANHANTE'
      Size = 15
    end
    object cdsFichaCQUEMMORA: TStringField
      FieldName = 'CQUEMMORA'
      Size = 6
    end
    object cdsFichaNOME_OUTROS: TStringField
      FieldName = 'NOME_OUTROS'
      Size = 150
    end
    object cdsFichaEMPRESA_OUTROS: TStringField
      FieldName = 'EMPRESA_OUTROS'
      Size = 150
    end
    object cdsFichaFONE_OUTROS: TStringField
      FieldName = 'FONE_OUTROS'
      Size = 13
    end
    object cdsFichaFONE1_OUTROS: TStringField
      FieldName = 'FONE1_OUTROS'
      Size = 13
    end
    object cdsFichaFONE2_OUTROS: TStringField
      FieldName = 'FONE2_OUTROS'
      Size = 13
    end
    object cdsFichaRAMAL_OUTROS: TStringField
      FieldName = 'RAMAL_OUTROS'
      Size = 4
    end
    object cdsFichaHORAS_ESTUDA: TIntegerField
      FieldName = 'HORAS_ESTUDA'
    end
    object cdsFichaPROFESSORES_PARTICULAR: TIntegerField
      FieldName = 'PROFESSORES_PARTICULAR'
    end
    object cdsFichaCANHOTO_DESTRO: TIntegerField
      FieldName = 'CANHOTO_DESTRO'
    end
    object cdsFichaALERGICO: TStringField
      FieldName = 'ALERGICO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTIPO_ALERGIA: TStringField
      FieldName = 'TIPO_ALERGIA'
      Size = 250
    end
    object cdsFichaMEDICO_ALUNO: TIntegerField
      FieldName = 'MEDICO_ALUNO'
    end
    object cdsFichaTRATAMENTO_MEDICO: TIntegerField
      FieldName = 'TRATAMENTO_MEDICO'
    end
    object cdsFichaTIPO_TRATAMENTO: TStringField
      FieldName = 'TIPO_TRATAMENTO'
      Size = 250
    end
    object cdsFichaINGERINDO_MEDICACAO: TIntegerField
      FieldName = 'INGERINDO_MEDICACAO'
    end
    object cdsFichaTIPO_MEDICACAO: TStringField
      FieldName = 'TIPO_MEDICACAO'
      Size = 250
    end
    object cdsFichaNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      Size = 100
    end
    object cdsFichaFONE_MEDICO: TStringField
      FieldName = 'FONE_MEDICO'
      Size = 13
    end
    object cdsFichaENDERECO_MEDICO: TStringField
      FieldName = 'ENDERECO_MEDICO'
      Size = 100
    end
    object cdsFichaPLANO_SAUDE: TIntegerField
      FieldName = 'PLANO_SAUDE'
    end
    object cdsFichaQUAL_PLANO: TStringField
      FieldName = 'QUAL_PLANO'
      Size = 50
    end
    object cdsFichaSER_MEDICADO_POR: TStringField
      FieldName = 'SER_MEDICADO_POR'
      Size = 50
    end
    object cdsFichaDOENCA_CONGENITA: TIntegerField
      FieldName = 'DOENCA_CONGENITA'
    end
    object cdsFichaQUAL_DOENCA: TStringField
      FieldName = 'QUAL_DOENCA'
      Size = 50
    end
    object cdsFichaCONTRAIU_CAXUMBA: TStringField
      FieldName = 'CONTRAIU_CAXUMBA'
      Size = 5
    end
    object cdsFichaCONTRAIU_SARAMPO: TStringField
      FieldName = 'CONTRAIU_SARAMPO'
      Size = 5
    end
    object cdsFichaCONTRAIU_RUBEOLA: TStringField
      FieldName = 'CONTRAIU_RUBEOLA'
      Size = 5
    end
    object cdsFichaCONTRAIU_CATAPORA: TStringField
      FieldName = 'CONTRAIU_CATAPORA'
      Size = 5
    end
    object cdsFichaCONTRAIU_ESCARLATINA: TStringField
      FieldName = 'CONTRAIU_ESCARLATINA'
      Size = 5
    end
    object cdsFichaCONTRAIU_COQUELUCHE: TStringField
      FieldName = 'CONTRAIU_COQUELUCHE'
      Size = 5
    end
    object cdsFichaCONTRAIU_OUTRAS: TStringField
      FieldName = 'CONTRAIU_OUTRAS'
      Size = 5
    end
    object cdsFichaQUAIS_OUTRA: TStringField
      FieldName = 'QUAIS_OUTRA'
      Size = 200
    end
    object cdsFichaNOME_AVISO: TStringField
      FieldName = 'NOME_AVISO'
      Size = 100
    end
    object cdsFichaENDERECO_AVISO: TStringField
      FieldName = 'ENDERECO_AVISO'
      Size = 100
    end
    object cdsFichaPARENTESCO_AVISO: TStringField
      FieldName = 'PARENTESCO_AVISO'
      Size = 30
    end
    object cdsFichaFONE_AVISO: TStringField
      FieldName = 'FONE_AVISO'
      Size = 13
    end
    object cdsFichaHOSPITAL_AVISO: TStringField
      FieldName = 'HOSPITAL_AVISO'
      Size = 100
    end
    object cdsFichaTEM_HIPERTENCAO: TIntegerField
      FieldName = 'TEM_HIPERTENCAO'
    end
    object cdsFichaHIPERTENCAO: TStringField
      FieldName = 'HIPERTENCAO'
      Size = 60
    end
    object cdsFichaE_EPILETICO: TIntegerField
      FieldName = 'E_EPILETICO'
    end
    object cdsFichaEPILETICO: TStringField
      FieldName = 'EPILETICO'
      Size = 60
    end
    object cdsFichaE_HEMOFILICO: TIntegerField
      FieldName = 'E_HEMOFILICO'
    end
    object cdsFichaHEMOFILICO: TStringField
      FieldName = 'HEMOFILICO'
      Size = 60
    end
    object cdsFichaE_DEFICIENTE_AUDITIVO: TIntegerField
      FieldName = 'E_DEFICIENTE_AUDITIVO'
    end
    object cdsFichaDEFICIENTE_AUDITIVO: TStringField
      FieldName = 'DEFICIENTE_AUDITIVO'
      Size = 60
    end
    object cdsFichaE_DEFICIENTE_VISUAL: TIntegerField
      FieldName = 'E_DEFICIENTE_VISUAL'
    end
    object cdsFichaDEFICIENTE_VISUAL: TStringField
      FieldName = 'DEFICIENTE_VISUAL'
      Size = 60
    end
    object cdsFichaE_DEFICIENTE_FISICO: TIntegerField
      FieldName = 'E_DEFICIENTE_FISICO'
    end
    object cdsFichaDEFICIENTE_FISICO: TStringField
      FieldName = 'DEFICIENTE_FISICO'
      Size = 60
    end
    object cdsFichaE_DIABETICO: TIntegerField
      FieldName = 'E_DIABETICO'
    end
    object cdsFichaDIABETICO: TStringField
      FieldName = 'DIABETICO'
      Size = 60
    end
    object cdsFichaUSA_INSULINA: TIntegerField
      FieldName = 'USA_INSULINA'
    end
    object cdsFichaAUTORIZADO_DX_ESCOLA_SOZ: TIntegerField
      FieldName = 'AUTORIZADO_DX_ESCOLA_SOZ'
    end
    object cdsFichaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object cdsFichaMOTIVO_MEDICAMENTO: TStringField
      FieldName = 'MOTIVO_MEDICAMENTO'
      Size = 150
    end
    object cdsFichaAPTO: TStringField
      FieldName = 'APTO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaESPERAR_FORA_ESCOLA: TIntegerField
      FieldName = 'ESPERAR_FORA_ESCOLA'
    end
    object cdsFichaFONE_HOSPITAL: TStringField
      FieldName = 'FONE_HOSPITAL'
      Size = 13
    end
    object cdsFichaNOME_RETIRA: TStringField
      FieldName = 'NOME_RETIRA'
      Size = 100
    end
    object cdsFichaENDERECO_RETIRA: TStringField
      FieldName = 'ENDERECO_RETIRA'
      Size = 100
    end
    object cdsFichaPARENTESCO_RETIRA: TStringField
      FieldName = 'PARENTESCO_RETIRA'
      Size = 30
    end
    object cdsFichaFONE_RETIRA: TStringField
      FieldName = 'FONE_RETIRA'
      Size = 13
    end
    object cdsFichaPSICOLOGO: TStringField
      FieldName = 'PSICOLOGO'
      Size = 5
    end
    object cdsFichaFISIOTERAPIA: TStringField
      FieldName = 'FISIOTERAPIA'
      Size = 5
    end
    object cdsFichaMEDICO: TStringField
      FieldName = 'MEDICO'
      Size = 5
    end
    object cdsFichaFONOAUDIOLOGO: TStringField
      FieldName = 'FONOAUDIOLOGO'
      Size = 5
    end
    object cdsFichaPSICOPEDAGOGO: TStringField
      FieldName = 'PSICOPEDAGOGO'
      Size = 5
    end
    object cdsFichaOUTRO_1: TStringField
      FieldName = 'OUTRO_1'
      Size = 5
    end
    object cdsFichaNAO: TStringField
      FieldName = 'NAO'
      Size = 5
    end
    object cdsFichaE_ASMATICO: TIntegerField
      FieldName = 'E_ASMATICO'
    end
    object cdsFichaASMATICO: TStringField
      FieldName = 'ASMATICO'
      Size = 60
    end
  end
  object dspFicha: TDataSetProvider
    DataSet = sdsFicha
    UpdateMode = upWhereKeyOnly
    Left = 468
    Top = 3
  end
  object sdsFicha: TSQLDataSet
    CommandText = 'select * from FICHAMEDICA '#13#10'where RA = :ra'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 437
    Top = 3
    object sdsFichaID_FICHA: TIntegerField
      FieldName = 'ID_FICHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFichaRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsFichaD_MENTAL: TStringField
      FieldName = 'D_MENTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_VISUAL: TStringField
      FieldName = 'D_VISUAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_AUDITIVA: TStringField
      FieldName = 'D_AUDITIVA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_FISICA: TStringField
      FieldName = 'D_FISICA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaD_MULTIPLA: TStringField
      FieldName = 'D_MULTIPLA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaSUPER_DOTADO: TStringField
      FieldName = 'SUPER_DOTADO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONDUTA_TIPICA: TStringField
      FieldName = 'CONDUTA_TIPICA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaOUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaOUTROS_H: TMemoField
      FieldName = 'OUTROS_H'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sdsFichaTEM_ACOMPANHANTE: TStringField
      FieldName = 'TEM_ACOMPANHANTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFichaTIPO_ACOMPANHANTE: TStringField
      FieldName = 'TIPO_ACOMPANHANTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsFichaCQUEMMORA: TStringField
      FieldName = 'CQUEMMORA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsFichaNOME_OUTROS: TStringField
      FieldName = 'NOME_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsFichaEMPRESA_OUTROS: TStringField
      FieldName = 'EMPRESA_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsFichaFONE_OUTROS: TStringField
      FieldName = 'FONE_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaFONE1_OUTROS: TStringField
      FieldName = 'FONE1_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaFONE2_OUTROS: TStringField
      FieldName = 'FONE2_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaRAMAL_OUTROS: TStringField
      FieldName = 'RAMAL_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsFichaHORAS_ESTUDA: TIntegerField
      FieldName = 'HORAS_ESTUDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaPROFESSORES_PARTICULAR: TIntegerField
      FieldName = 'PROFESSORES_PARTICULAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaCANHOTO_DESTRO: TIntegerField
      FieldName = 'CANHOTO_DESTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaALERGICO: TStringField
      FieldName = 'ALERGICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFichaTIPO_ALERGIA: TStringField
      FieldName = 'TIPO_ALERGIA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sdsFichaMEDICO_ALUNO: TIntegerField
      FieldName = 'MEDICO_ALUNO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaTRATAMENTO_MEDICO: TIntegerField
      FieldName = 'TRATAMENTO_MEDICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaTIPO_TRATAMENTO: TStringField
      FieldName = 'TIPO_TRATAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sdsFichaINGERINDO_MEDICACAO: TIntegerField
      FieldName = 'INGERINDO_MEDICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaTIPO_MEDICACAO: TStringField
      FieldName = 'TIPO_MEDICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sdsFichaNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaFONE_MEDICO: TStringField
      FieldName = 'FONE_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaENDERECO_MEDICO: TStringField
      FieldName = 'ENDERECO_MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaPLANO_SAUDE: TIntegerField
      FieldName = 'PLANO_SAUDE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaQUAL_PLANO: TStringField
      FieldName = 'QUAL_PLANO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFichaSER_MEDICADO_POR: TStringField
      FieldName = 'SER_MEDICADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFichaDOENCA_CONGENITA: TIntegerField
      FieldName = 'DOENCA_CONGENITA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaQUAL_DOENCA: TStringField
      FieldName = 'QUAL_DOENCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFichaCONTRAIU_CAXUMBA: TStringField
      FieldName = 'CONTRAIU_CAXUMBA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_SARAMPO: TStringField
      FieldName = 'CONTRAIU_SARAMPO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_RUBEOLA: TStringField
      FieldName = 'CONTRAIU_RUBEOLA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_CATAPORA: TStringField
      FieldName = 'CONTRAIU_CATAPORA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_ESCARLATINA: TStringField
      FieldName = 'CONTRAIU_ESCARLATINA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_COQUELUCHE: TStringField
      FieldName = 'CONTRAIU_COQUELUCHE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaCONTRAIU_OUTRAS: TStringField
      FieldName = 'CONTRAIU_OUTRAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaQUAIS_OUTRA: TStringField
      FieldName = 'QUAIS_OUTRA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsFichaNOME_AVISO: TStringField
      FieldName = 'NOME_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaENDERECO_AVISO: TStringField
      FieldName = 'ENDERECO_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaPARENTESCO_AVISO: TStringField
      FieldName = 'PARENTESCO_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsFichaFONE_AVISO: TStringField
      FieldName = 'FONE_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaHOSPITAL_AVISO: TStringField
      FieldName = 'HOSPITAL_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaTEM_HIPERTENCAO: TIntegerField
      FieldName = 'TEM_HIPERTENCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaHIPERTENCAO: TStringField
      FieldName = 'HIPERTENCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_EPILETICO: TIntegerField
      FieldName = 'E_EPILETICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaEPILETICO: TStringField
      FieldName = 'EPILETICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_HEMOFILICO: TIntegerField
      FieldName = 'E_HEMOFILICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaHEMOFILICO: TStringField
      FieldName = 'HEMOFILICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DEFICIENTE_AUDITIVO: TIntegerField
      FieldName = 'E_DEFICIENTE_AUDITIVO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDEFICIENTE_AUDITIVO: TStringField
      FieldName = 'DEFICIENTE_AUDITIVO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DEFICIENTE_VISUAL: TIntegerField
      FieldName = 'E_DEFICIENTE_VISUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDEFICIENTE_VISUAL: TStringField
      FieldName = 'DEFICIENTE_VISUAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DEFICIENTE_FISICO: TIntegerField
      FieldName = 'E_DEFICIENTE_FISICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDEFICIENTE_FISICO: TStringField
      FieldName = 'DEFICIENTE_FISICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaE_DIABETICO: TIntegerField
      FieldName = 'E_DIABETICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaDIABETICO: TStringField
      FieldName = 'DIABETICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsFichaUSA_INSULINA: TIntegerField
      FieldName = 'USA_INSULINA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaAUTORIZADO_DX_ESCOLA_SOZ: TIntegerField
      FieldName = 'AUTORIZADO_DX_ESCOLA_SOZ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sdsFichaMOTIVO_MEDICAMENTO: TStringField
      FieldName = 'MOTIVO_MEDICAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsFichaAPTO: TStringField
      FieldName = 'APTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFichaESPERAR_FORA_ESCOLA: TIntegerField
      FieldName = 'ESPERAR_FORA_ESCOLA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaFONE_HOSPITAL: TStringField
      FieldName = 'FONE_HOSPITAL'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaNOME_RETIRA: TStringField
      FieldName = 'NOME_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaENDERECO_RETIRA: TStringField
      FieldName = 'ENDERECO_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsFichaPARENTESCO_RETIRA: TStringField
      FieldName = 'PARENTESCO_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsFichaFONE_RETIRA: TStringField
      FieldName = 'FONE_RETIRA'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsFichaPSICOLOGO: TStringField
      FieldName = 'PSICOLOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaFISIOTERAPIA: TStringField
      FieldName = 'FISIOTERAPIA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaMEDICO: TStringField
      FieldName = 'MEDICO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaFONOAUDIOLOGO: TStringField
      FieldName = 'FONOAUDIOLOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaPSICOPEDAGOGO: TStringField
      FieldName = 'PSICOPEDAGOGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaOUTRO_1: TStringField
      FieldName = 'OUTRO_1'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaNAO: TStringField
      FieldName = 'NAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsFichaE_ASMATICO: TIntegerField
      FieldName = 'E_ASMATICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFichaASMATICO: TStringField
      FieldName = 'ASMATICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
end
