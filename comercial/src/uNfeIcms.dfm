object fNfeIcms: TfNfeIcms
  Left = 282
  Top = 127
  Width = 930
  Height = 614
  Caption = 'Sped Fiscal(ICMS)'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    922
    587)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 384
    Top = 136
    Width = 63
    Height = 13
    Caption = 'Lista de erros'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 384
    Top = 272
    Width = 74
    Height = 13
    Caption = 'Arquivo Gerado'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 24
    Top = 507
    Width = 62
    Height = 13
    Caption = 'Buffer Linhas'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 128
    Top = 507
    Width = 59
    Height = 13
    Caption = 'Buffer Notas'
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object btnTXT: TButton
    Left = 610
    Top = 527
    Width = 150
    Height = 40
    Caption = 'Gerar arquivo SPED ICMS'
    TabOrder = 0
    OnClick = btnTXTClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 922
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 16776176
    TabOrder = 1
    DesignSize = (
      918
      109)
    object Label1: TLabel
      Left = 19
      Top = 14
      Width = 82
      Height = 13
      Caption = 'Nome do Arquivo'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 0
      Top = 0
      Width = 918
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = '1 - Informe o Nome do Arquivo e m'#233'todo de Gera'#231#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 654
      Top = 14
      Width = 69
      Height = 13
      Caption = 'Num.Notas (C)'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 512
      Top = 57
      Width = 87
      Height = 13
      Caption = 'Finalidade Arquivo'
    end
    object Label13: TLabel
      Left = 515
      Top = 79
      Width = 62
      Height = 13
      Caption = 'Apura'#231'a'#245' IPI'
    end
    object edtFile: TEdit
      Left = 17
      Top = 28
      Width = 440
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = edtFileChange
      OnExit = edtFileExit
    end
    object cbConcomitante: TCheckBox
      Left = 509
      Top = 28
      Width = 134
      Height = 19
      Hint = 
        'Grava os Registros a medida que s'#227'o alimentados'#13#10'Economizando me' +
        'm'#243'ria. '#13#10#218'til para evitar erros em arquivos Enormes'
      Anchors = [akTop, akRight]
      Caption = 'Gerar Concomitante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cbConcomitanteClick
    end
    object edNotas: TEdit
      Left = 654
      Top = 28
      Width = 80
      Height = 21
      TabOrder = 2
      Text = '10'
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 58
      Width = 476
      Height = 45
      Caption = 'Per'#237'odo'
      TabOrder = 3
      object Label4: TLabel
        Left = 24
        Top = 16
        Width = 20
        Height = 13
        Caption = 'M'#234's'
      end
      object Label9: TLabel
        Left = 235
        Top = 18
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object Label10: TLabel
        Left = 352
        Top = 19
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object cbMes: TComboBox
        Left = 53
        Top = 15
        Width = 176
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbMesChange
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object data_ini: TJvDatePickerEdit
        Left = 234
        Top = 16
        Width = 107
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 1
      end
      object data_fim: TJvDatePickerEdit
        Left = 366
        Top = 16
        Width = 101
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 2
      end
    end
    object cbTipo: TComboBox
      Left = 611
      Top = 53
      Width = 121
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '0 - Original'
      OnChange = cbTipoChange
      Items.Strings = (
        '0 - Original'
        '1 - Retificadora')
    end
    object BitBtn1: TBitBtn
      Left = 457
      Top = 25
      Width = 33
      Height = 25
      Caption = '...'
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object GroupBox1: TGroupBox
      Left = 744
      Top = 4
      Width = 170
      Height = 105
      Caption = 'INVENT'#193'RIO'
      TabOrder = 6
      object Label12: TLabel
        Left = 14
        Top = 63
        Width = 111
        Height = 13
        Caption = 'Conta Cont'#225'bil Estoque'
      end
      object edDataInventario: TJvDatePickerEdit
        Left = 12
        Top = 34
        Width = 101
        Height = 23
        AllowNoDate = True
        Checked = True
        TabOrder = 0
      end
      object chkInventario: TCheckBox
        Left = 14
        Top = 14
        Width = 97
        Height = 18
        Hint = 
          'Em Materiais execute o Fechamento de Estoque no per'#237'odo desejado' +
          '.'#13#10'Para ver o estoque: Relatorios -> Rel. Materiais -> Lista Est' +
          'oque -> Valor Estoque'
        Caption = 'INVENT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object edContaContabil: TEdit
        Left = 12
        Top = 79
        Width = 148
        Height = 21
        Hint = 'C'#243'digo da Conta Cont'#225'bil do Plano de Contas do Contador'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object cbIPI: TComboBox
      Left = 611
      Top = 77
      Width = 121
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = '0 - Mensal'
      OnChange = cbTipoChange
      Items.Strings = (
        '0 - Mensal'
        '1 - Decendial')
    end
  end
  object memoError: TMemo
    Left = 384
    Top = 153
    Width = 532
    Height = 112
    Anchors = [akLeft, akTop, akRight]
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object memoTXT: TMemo
    Left = 384
    Top = 288
    Width = 532
    Height = 217
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    WantReturns = False
    WordWrap = False
  end
  object edBufLinhas: TEdit
    Left = 16
    Top = 521
    Width = 80
    Height = 21
    TabOrder = 4
    Text = '1000'
  end
  object edBufNotas: TEdit
    Left = 128
    Top = 521
    Width = 80
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = '1000'
  end
  object ProgressBar1: TJvProgressBar
    Left = 120
    Top = 120
    Width = 401
    Height = 16
    TabOrder = 6
  end
  object btnError: TButton
    Left = 691
    Top = 517
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Gerar TXT Error'
    TabOrder = 7
    Visible = False
    OnClick = btnErrorClick
  end
  object PageControl1: TPageControl
    Left = 16
    Top = 144
    Width = 361
    Height = 361
    ActivePage = TabSheet1
    TabOrder = 8
    object TabSheet1: TTabSheet
      Caption = 'Difal'
      object Label14: TLabel
        Left = 32
        Top = 8
        Width = 70
        Height = 13
        Caption = 'Indicador (0/1)'
      end
      object Label15: TLabel
        Left = 32
        Top = 32
        Width = 140
        Height = 13
        Caption = 'Saldo Credor per'#237'odo Anterior'
      end
      object Label16: TLabel
        Left = 32
        Top = 56
        Width = 110
        Height = 13
        Caption = 'Valor Total dos D'#233'bitos'
      end
      object Label17: TLabel
        Left = 32
        Top = 80
        Width = 108
        Height = 13
        Caption = 'Valor Total dos Ajustes'
      end
      object Label18: TLabel
        Left = 32
        Top = 104
        Width = 133
        Height = 13
        Caption = 'Valor Total dos D'#233'bitos FCP'
      end
      object Label19: TLabel
        Left = 32
        Top = 128
        Width = 112
        Height = 13
        Caption = 'Valor Total dos Cr'#233'ditos'
      end
      object Label20: TLabel
        Left = 32
        Top = 152
        Width = 135
        Height = 13
        Caption = 'Valor Total dos Cr'#233'ditos FCP'
      end
      object Label21: TLabel
        Left = 32
        Top = 176
        Width = 123
        Height = 13
        Caption = 'Valor Outros Cr'#233'ditos Difal'
      end
      object Label22: TLabel
        Left = 32
        Top = 200
        Width = 140
        Height = 13
        Caption = 'Valor Total do Saldo Devedor'
      end
      object Label23: TLabel
        Left = 32
        Top = 224
        Width = 100
        Height = 13
        Caption = 'Valor Dedu'#231#245'es Difal'
      end
      object Label24: TLabel
        Left = 32
        Top = 248
        Width = 145
        Height = 13
        Caption = 'Valor Recolhido ou a Recolher'
      end
      object Label25: TLabel
        Left = 32
        Top = 272
        Width = 127
        Height = 13
        Caption = 'Saldo Credor a Transportar'
      end
      object DBEdit1: TDBEdit
        Left = 184
        Top = 8
        Width = 121
        Height = 21
        Hint = 
          '0 - Sem opera'#231#245'es de ICMS com Diferencial de Aliquota'#13#10'1 - Com o' +
          'pere'#231#245'es de ICMS com Diferencial de Aliquota'
        DataField = 'IND_MOV_DIFAL'
        DataSource = dsDifalCad
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 184
        Top = 32
        Width = 121
        Height = 21
        DataField = 'VL_SLD_CRED_ANT_DIFAL'
        DataSource = dsDifalCad
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 184
        Top = 56
        Width = 121
        Height = 21
        DataField = 'VL_TOT_DEBITOS_DIFAL'
        DataSource = dsDifalCad
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 184
        Top = 80
        Width = 121
        Height = 21
        Hint = 
          'Valor total de Ajustes (Outros cr'#233'ditos ICMS Diferencial de'#13#10'Ali' +
          'quota de UF de Origem/Destino e Estorno de cr'#233'ditos ICMS ...'
        DataField = 'VL_OUT_DEB_DIFAL'
        DataSource = dsDifalCad
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 104
        Width = 121
        Height = 21
        DataField = 'VL_TOT_DEB_FCP'
        DataSource = dsDifalCad
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 184
        Top = 128
        Width = 121
        Height = 21
        DataField = 'VL_TOT_CREDITOS_DIFAL'
        DataSource = dsDifalCad
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 184
        Top = 152
        Width = 121
        Height = 21
        DataField = 'VL_TOT_CRED_FCP'
        DataSource = dsDifalCad
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 184
        Top = 176
        Width = 121
        Height = 21
        DataField = 'VL_OUT_CRED_DIFAL'
        DataSource = dsDifalCad
        TabOrder = 7
      end
      object DBEdit10: TDBEdit
        Left = 184
        Top = 200
        Width = 121
        Height = 21
        DataField = 'VL_SLD_DEV_ANT_DIFAL'
        DataSource = dsDifalCad
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 184
        Top = 224
        Width = 121
        Height = 21
        DataField = 'VL_DEDUCOES_DIFAL'
        DataSource = dsDifalCad
        TabOrder = 9
      end
      object DBEdit12: TDBEdit
        Left = 184
        Top = 248
        Width = 121
        Height = 21
        DataField = 'DEB_ESP_DIFAL'
        DataSource = dsDifalCad
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 184
        Top = 272
        Width = 121
        Height = 21
        DataField = 'VL_SLD_CRED_TRANSPORTAR'
        DataSource = dsDifalCad
        TabOrder = 11
      end
    end
  end
  object btnDifal: TButton
    Left = 457
    Top = 527
    Width = 150
    Height = 40
    Caption = 'Carregar Dados Difal'
    TabOrder = 9
    OnClick = btnDifalClick
  end
  object btnSair: TBitBtn
    Left = 762
    Top = 527
    Width = 150
    Height = 40
    Caption = 'F9-Sair'
    TabOrder = 10
    OnClick = btnSairClick
    Glyph.Data = {
      E60C0000424DE60C0000000000003600000028000000250000001D0000000100
      180000000000B00C0000120B0000120B00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBF9F60606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06060A06060
      6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F60
      60A06060B06060C06060CF6060B060606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F60609F6060AF6F6FC06F6FCF6F6FCF6F6FCF606FCF606FB06060
      6F3030AF60609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060D06F70D06F70D06F
      6FD06F6FD06F6FD06F6FD06F6FB0606F6F3030FFA0A0FFAFAFFFAFB0FFB0B0FF
      BFBFFFC0C0FFC0C0FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060DF7070DF7070D07070D07070D06F70D06F6FD06F6FB06F6F
      6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060DF7070DF7070DF70
      70DF7070DF7070D07070D07070BF6F6F6F30305FB06030CF6030CF6030CF6030
      CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060DF7F7FDF7F7FDF7F7FDF707FDF7070DF7070DF7070BF6F6F
      6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060E07F7FE07F7FE07F
      7FE07F7FDF7F7FDF7F7FDF707FBF6F6F6F30305FB06030CF6030CF6030CF6030
      CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060E08080E07F80E07F7FE07F7FE07F7FE07F7FE07F7FBF7070
      6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060EF8080EF8080E080
      80E08080E0808FEFA0A0E07F7FBF70706F303070BF7030CF6030CF6030CF6030
      CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060EF808FEF8080EF8080EF8080F0BFBFFFFFFFF0B0B0C07070
      6F3030F0DFC0C0F0BF7FDF907FDF9060D08060D08060D080FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F08F8FEF8F8FEF8F
      8FEF808FF0BFBFFFFFFFF0AFAFC070706F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFE0FFCFE0FFCFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060F08F8FF08F8FF08F8FF08F8FEF8F8FF0A0A0EF808FC07070
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F09090F09090F08F
      90F08F8FF08F8FF08F8FF08F8FC07F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060FF9090FF9090FF9090F09090F09090F08F90F08F8FC07F7F
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF909FFF9090FF90
      90FF9090FF9090FF9090F09090CF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060FF9F9FFF9F9FFF9F9FFF909FFF909FFF9090FF9090CF7F7F
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF9F9FFF9F9FFF9F
      9FFF9F9FFF9F9FFF9F9FFF9F9FCF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060FF9090FF9F9FFF9F9FFF9F9FFF9F9FFF9F9FFF9F9FCF8080
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060C07F7FDF8F
      8FFF9F9FFF9F9FFF9F9FFF9F9FCF80806F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06F6FC07F7FF09090FF9F9FCF8080
      6F3030A060609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF9F60609F6060AF7070B070706F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060
      6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00}
  end
  object SpeedButton1: TBitBtn
    Left = 304
    Top = 527
    Width = 150
    Height = 40
    Caption = 'Rel. Estoque'
    TabOrder = 11
    TabStop = False
    OnClick = SpeedButton1Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0999697999697999697C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0999697999697999697C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0999697ABA8A9A7A5A5A29FA09B9899999697999697C0C0
      C0C0C0C0999697999697D9D7D8DFDEDEBEBCBD999697999697999697C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0999697A9A7A7EFEFEFB5B3B3B5B3B3B5B3B3B0AEAFA4A2A38987
      88939192BBB9BADCDCDCE2E2E2E4E3E3E5E5E5E6E5E5D7D7D7BBB9B999969799
      9697999697C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0999697B8B6B7E9E8E8EFEFEFBFBEBEB5B3B3B5B3B3B5B3B3B5B3B39E9D
      9D282828787878BDBCBCD7D7D7D8D8D8DAD9D9DBD9DADBDBDBDCDCDCDEDDDDD1
      D0D0B7B5B5999697999697999697C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      999697BBB9B9E8E7E7E9E8E8E9E8E8BBBABAB5B3B3B5B3B3B5B3B3B5B3B38886
      86000000000000000000282828787878BBBBBBD6D6D6D6D6D6D6D6D6D6D6D6D6
      D6D6D7D7D7D7D7D7CBCBCBB4B2B3999697999697999697C0C0C0C0C0C0999697
      C5C4C4E1E1E1E2E2E2E2E2E2DAD9D9AEACACAEACACAEACACB0AEAFB5B3B37170
      70000000000000000000000000000000000000282828787878BBBBBBD6D6D6D6
      D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6B0AEAF999697999697999697C5C4C4
      DBDBDBDBDBDBDCDCDCD0CFD09D9B9CA09D9EA09D9EA09D9E9D9A9B9996979996
      97737171605E5E4D4B4C26262600000000000000000000000000000028282878
      7878BBBBBBD6D6D6D6D6D6C7C6C6A4A2A3999697C0C0C0C0C0C0999697D6D6D6
      D6D6D6D6D6D6CBCBCB9D9A9BA8A4A4C6C4C4B5B3B3B5B3B3B5B3B3B5B3B3B3B1
      B1AEACACA9A7A7A4A2A39E9B9C9996977C7A7B4D4B4C1D1C1C00000000000000
      00000000002828287E7E7E9996979B9899C0C0C0C0C0C0C0C0C0999697D6D6D6
      D6D6D6CBCBCB9D9A9BACAAAAE9E8E8F9F8F8F7F6F6E5E5E5D7D7D7C8C6C6B8B6
      B7B5B3B3B5B3B3B5B3B3B5B3B3B3B1B1ACAAAAA4A1A29B989986838443424213
      13130000000000002C2B2BA4A1A2A4A1A2999697C0C0C0C0C0C0999697D6D6D6
      D2D2D2A4A2A3B3B1B2F2F1F1F9F8F8F9F8F8F8F7F7F6F5F5F3F3F3F1F1F1EFEF
      EFE2E2E2D2D2D2C5C4C4B8B6B7B5B3B3B5B3B3B5B3B3B5B3B3ACAAAAA4A1A299
      9697605E5E131313393838B5B3B3B5B3B39D9A9BC0C0C0C0C0C0999697D2D2D2
      A4A2A3BDBBBBF6F5F5F9F8F8F9F8F8F9F8F8F8F7F7F6F5F5F4F3F3F2F1F1EFEF
      EFEEEDEDEBEBEBE9E9E9E7E7E7D9D7D8C9C8C8BDBCBCB5B3B3B5B3B3B5B3B3B2
      AFB0A7A5A59B98998D8B8BB2AFB0B5B3B3999697C0C0C0C0C0C0999697A4A2A3
      D0CECEF9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F8F7F7F6F5F5C9C5C6AEA6A8D0CE
      CEEEEDEDECEBEBEAE9E9E8E7E7E5E5E5E4E3E3E1E1E1DBD9DACCCBCBC1C0C0B5
      B3B3B5B3B3B3B1B1A4A1A29B9899A29FA0999697C0C0C0C0C0C0999697E1E1E1
      F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F8F7F7DBD9DAA69FA093888A7F70
      727D6F719E9597C4C1C1DEDDDDE6E5E5E4E3E3E2E1E1E0DFDFDEDDDDDBDBDBD7
      D7D7C9C7C8BBBABAB5B3B3B0AEAFA09D9E999697C0C0C0C0C0C0999697C9C7C8
      F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8C6C3C3BEBCBDC7C5C6C5C4C4BEBB
      BCB1ABACA097988C808280727593888AB3ADAED4D3D3E0DFDFDEDDDDDCDBDBDA
      D9D9D7D7D7D6D6D6CECDCDC1C0C0AEACAC999697C0C0C0C0C0C0C0C0C0999697
      999697E1E1E1F9F8F8F9F8F8F9F8F8A69D9F7767698C7F829F9698AFA9AABBB9
      B9C4C2C3C7C6C6C4C2C3BAB6B7ABA5A6998F91897C7F8A7F81A59D9FC4C2C3D5
      D5D5D8D8D8D6D6D6D6D6D6D6D6D6B7B6B6999697C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0999697999697D5D3D4D8C9C9A48A7C6B53515740445E494C6B595D7E6F
      7193888AA59D9FB3AEAFBEBCBDC5C4C4C7C5C6C1BFBFB5B1B2A59E9F958B8DD2
      D1D1D8D8D8D6D6D6D6D6D6BFBEBE999697C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C09D9697A99B9AFFDFBDFFDCB7EBC4A7C09E85876B636148
      49594246624D51715F6385787A998F91AAA3A4B7B5B5C1C0C0C4C2C3CECDCDDB
      D9DAD8D8D8D6D6D6B0AEAF999697C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0CC9A99FFE0C0FFDEBBFFDBB6FFD9B1FFD6ABFFD3
      A6D5AC89A07E6A765A53563F435B454966535678676A8E8385C8C6C6DCDCDCDB
      D9DAD0CFD0A4A2A3999697C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0CC9A99FFE3C6FFE0C0FFDEBBFFDBB5FFD8AFFFD5
      AAFFD3A5FFD09FFFCE9AF4C494C09879876B636B595DC2BEBFDFDEDEDCDCDCBE
      BCBD9D9A9B999697C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0CC9A99FFE5CAFFE2C5FFE0BFFFDDBAFFDAB3FFD8
      AFFFD5A9FFD3A5FFCF9EFFCD9AFFCD99C6A5989D969799969799969799969799
      9697C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0CC9A99ECCCBEFFE7CFFFE5C9FFE2C5FFDFBEFFDDB9FFDA
      B3FFD7ADFFD4A7FFD2A2FFCF9EFFCD99D2A19AC0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0CC9A99F4DCCDFFEAD3FFE7CFFFE4C7FFE1C3FFDFBDFFDC
      B7FFD9B2FFD7ADFFD4A7FFD2A2FCCB9CCC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0CF9F9DFFEEDDFFECD8FFE9D2FFE6CDFFE4C7FFE1C3FFDE
      BBFFDBB6FFD9B1FFD6ABFFD3A6EFC09FCC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0CC9A99FFF1E2FFEEDDFFEBD7FFE9D1FFE6CDFFE3C6FFE0
      C0FFDEBBFFDBB5FFD8AFFFD5AACC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0CC9A99EED5CDFFF3E7FFF0E1FFEDDBFFEBD7FFE7CFFFE5CAFFE2
      C5FFE0BFFFDDBAFFDAB3FFD8AFCC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0CC9A99FCF2EBFFF4EAFFF2E5FFF0E1FFEDDBFFEAD4FFE7CFFFE5
      C9FFE2C5FFDFBEFFDDB9EBC4A7CC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0CC9A99DFBEBBFFFAF5FFF7EEFFF4EAFFF2E5FFEFDFFFECD8FFEAD3FFE7
      CFFFE4C7FFE2C3FFDFBDD2A29DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0CC9A99F9EFEBFFFBF7FFF9F4FFF7EEFFF4EAFFF1E2FFEEDDFFECD8FFE9
      D2FFE6CDFFE4C7ECC7B3CC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      CC9A99DCB8B6F5E9E5FFFBF7FFFBF7FFF9F3FFF7EEFFF3E7FFF1E2FFEEDDFFEB
      D7FFE9D1F9DCC6CF9F9DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      CC9A99CC9A99CC9A99CC9A99CC9A99CC9A99DFBEBBE6C8C2EED5CDF4DCCDFFEE
      DBFCE6D2D8ABA4CC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CC9A99CC9A99CC9A99CC9A99CC9A
      99CC9A99CC9A99C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
  end
  object sdsNFVenda: TSQLDataSet
    CommandText = 
      'SELECT NF.*, C.*, EC.*, V.CODMOVIMENTO, s.MODELO'#13#10'   FROM NOTAFI' +
      'SCAL NF, CLIENTES C, ENDERECOCLIENTE EC, '#13#10'   VENDA V,  SERIES S' +
      #13#10'WHERE NF.CODCLIENTE = C.CODCLIENTE'#13#10'      AND C.CODCLIENTE   =' +
      ' EC.CODCLIENTE'#13#10'      AND V.CODVENDA = NF.CODVENDA'#13#10'      AND S.' +
      'SERIE = NF.SERIE'#13#10'      AND NF.DTAEMISSAO BETWEEN :DTA1 AND :DTA' +
      '2'#13#10'      AND C.CODCLIENTE > 0'#13#10'      AND EC.TIPOEND = 0 '#13#10'      ' +
      'AND V.CODMOVIMENTO BETWEEN :CODINI AND :CODFIM '#13#10'      AND NF.PR' +
      'OTOCOLOCANC IS NULL '#13#10'      AND NF.STATUS IS NOT NULL '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 128
    object sdsNFVendaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object sdsNFVendaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNFVendaNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object sdsNFVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNFVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object sdsNFVendaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object sdsNFVendaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNFVendaDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object sdsNFVendaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNFVendaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object sdsNFVendaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsNFVendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsNFVendaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object sdsNFVendaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object sdsNFVendaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNFVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsNFVendaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object sdsNFVendaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object sdsNFVendaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sdsNFVendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsNFVendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsNFVendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object sdsNFVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsNFVendaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sdsNFVendaCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 200
    end
    object sdsNFVendaCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 200
    end
    object sdsNFVendaCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object sdsNFVendaCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object sdsNFVendaCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object sdsNFVendaCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object sdsNFVendaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNFVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNFVendaFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object sdsNFVendaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsNFVendaREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object sdsNFVendaNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdsNFVendaPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsNFVendaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNFVendaEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdsNFVendaCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdsNFVendaUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNFVendaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object sdsNFVendaIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sdsNFVendaSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object sdsNFVendaPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object sdsNFVendaNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object sdsNFVendaPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object sdsNFVendaPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object sdsNFVendaVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object sdsNFVendaVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object sdsNFVendaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object sdsNFVendaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sdsNFVendaIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object sdsNFVendaXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object sdsNFVendaBCII: TFloatField
      FieldName = 'BCII'
    end
    object sdsNFVendaNOMEXML: TStringField
      FieldName = 'NOMEXML'
      Size = 60
    end
    object sdsNFVendaII: TFloatField
      FieldName = 'II'
    end
    object sdsNFVendaINDPAG: TIntegerField
      FieldName = 'INDPAG'
    end
    object sdsNFVendaCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object sdsNFVendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object sdsNFVendaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object sdsNFVendaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sdsNFVendaTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsNFVendaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsNFVendaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsNFVendaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsNFVendaRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sdsNFVendaSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sdsNFVendaREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sdsNFVendaLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sdsNFVendaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sdsNFVendaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsNFVendaSTATUS_1: TSmallintField
      FieldName = 'STATUS_1'
      Required = True
    end
    object sdsNFVendaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sdsNFVendaPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sdsNFVendaPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sdsNFVendaCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sdsNFVendaBASE_ICMS_1: TSmallintField
      FieldName = 'BASE_ICMS_1'
    end
    object sdsNFVendaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sdsNFVendaCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sdsNFVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsNFVendaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sdsNFVendaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sdsNFVendaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sdsNFVendaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sdsNFVendaCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sdsNFVendaEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sdsNFVendaEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sdsNFVendaDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sdsNFVendaGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sdsNFVendaSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object sdsNFVendaSERIE_1: TStringField
      FieldName = 'SERIE_1'
      Size = 4
    end
    object sdsNFVendaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsNFVendaCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object sdsNFVendaIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object sdsNFVendaN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sdsNFVendaMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object sdsNFVendaMARCA_1: TStringField
      FieldName = 'MARCA_1'
      Size = 60
    end
    object sdsNFVendaBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object sdsNFVendaBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object sdsNFVendaTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object sdsNFVendaCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sdsNFVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sdsNFVendaMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object sdsNFVendaANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object sdsNFVendaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsNFVendaPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object sdsNFVendaNUMERO_1: TIntegerField
      FieldName = 'NUMERO_1'
    end
    object sdsNFVendaDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sdsNFVendaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object sdsNFVendaSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsNFVendaRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object sdsNFVendaCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object sdsNFVendaPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object sdsNFVendaRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object sdsNFVendaCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object sdsNFVendaLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object sdsNFVendaTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object sdsNFVendaCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object sdsNFVendaUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsNFVendaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object sdsNFVendaCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object sdsNFVendaLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sdsNFVendaFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object sdsNFVendaLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object sdsNFVendaLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object sdsNFVendaTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object sdsNFVendaTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object sdsNFVendaINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object sdsNFVendaCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object sdsNFVendaRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object sdsNFVendaLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object sdsNFVendaTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object sdsNFVendaRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object sdsNFVendaCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object sdsNFVendaCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object sdsNFVendaDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object sdsNFVendaDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object sdsNFVendaDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sdsNFVendaESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sdsNFVendaFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object sdsNFVendaCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object sdsNFVendaCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object sdsNFVendaFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object sdsNFVendaCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object sdsNFVendaCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object sdsNFVendaVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object sdsNFVendaDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object sdsNFVendaCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object sdsNFVendaPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object sdsNFVendaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object sdsNFVendaDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sdsNFVendaCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sdsNFVendaID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sdsNFVendaCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object sdsNFVendaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaCFOP_1: TStringField
      FieldName = 'CFOP_1'
      FixedChar = True
      Size = 4
    end
    object sdsNFVendaCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object sdsNFVendaCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object sdsNFVendaVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object sdsNFVendaE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object sdsNFVendaCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object sdsNFVendaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object sdsNFVendaCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sdsNFVendaCODCLIENTE_2: TIntegerField
      FieldName = 'CODCLIENTE_2'
      Required = True
    end
    object sdsNFVendaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsNFVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsNFVendaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsNFVendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsNFVendaUF_1: TStringField
      FieldName = 'UF_1'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsNFVendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsNFVendaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object sdsNFVendaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object sdsNFVendaFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object sdsNFVendaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sdsNFVendaRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object sdsNFVendaTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object sdsNFVendaDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object sdsNFVendaDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sdsNFVendaDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object sdsNFVendaDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object sdsNFVendaDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object sdsNFVendaNUMERO_2: TStringField
      FieldName = 'NUMERO_2'
      Size = 5
    end
    object sdsNFVendaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsNFVendaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object sdsNFVendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sdsNFVendaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sdsNFVendaBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object sdsNFVendaBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object sdsNFVendaBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object sdsNFVendaVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
    end
    object sdsNFVendaNFE_FINNFE: TStringField
      FieldName = 'NFE_FINNFE'
    end
    object sdsNFVendaNFE_MODELO: TStringField
      FieldName = 'NFE_MODELO'
      Size = 10
    end
    object sdsNFVendaNFE_VERSAO: TStringField
      FieldName = 'NFE_VERSAO'
      Size = 10
    end
    object sdsNFVendaNFE_DESTOPERACAO: TStringField
      FieldName = 'NFE_DESTOPERACAO'
    end
    object sdsNFVendaNFE_FORMATODANFE: TStringField
      FieldName = 'NFE_FORMATODANFE'
    end
    object sdsNFVendaNFE_TIPOEMISSAO: TStringField
      FieldName = 'NFE_TIPOEMISSAO'
      Size = 15
    end
    object sdsNFVendaNFE_INDFINAL: TStringField
      FieldName = 'NFE_INDFINAL'
    end
    object sdsNFVendaNFE_INDPRES: TStringField
      FieldName = 'NFE_INDPRES'
    end
    object sdsNFVendaNFE_TIPO: TStringField
      FieldName = 'NFE_TIPO'
      Size = 15
    end
    object sdsNFVendaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspNFVenda: TDataSetProvider
    DataSet = sdsNFVenda
    Left = 360
    Top = 128
  end
  object cdsNFVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspNFVenda'
    Left = 392
    Top = 128
    object cdsNFVendaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cdsNFVendaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNFVendaNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object cdsNFVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNFVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsNFVendaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object cdsNFVendaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNFVendaDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object cdsNFVendaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNFVendaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsNFVendaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNFVendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsNFVendaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object cdsNFVendaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cdsNFVendaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNFVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNFVendaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNFVendaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNFVendaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNFVendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsNFVendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsNFVendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cdsNFVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsNFVendaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNFVendaCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 200
    end
    object cdsNFVendaCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 200
    end
    object cdsNFVendaCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object cdsNFVendaCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object cdsNFVendaCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object cdsNFVendaCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object cdsNFVendaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNFVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNFVendaFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object cdsNFVendaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsNFVendaREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object cdsNFVendaNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsNFVendaPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object cdsNFVendaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNFVendaEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsNFVendaCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsNFVendaUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNFVendaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object cdsNFVendaIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsNFVendaSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object cdsNFVendaPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object cdsNFVendaNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object cdsNFVendaPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object cdsNFVendaPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object cdsNFVendaVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsNFVendaVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsNFVendaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object cdsNFVendaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cdsNFVendaIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object cdsNFVendaXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object cdsNFVendaBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsNFVendaNOMEXML: TStringField
      FieldName = 'NOMEXML'
      Size = 60
    end
    object cdsNFVendaII: TFloatField
      FieldName = 'II'
    end
    object cdsNFVendaINDPAG: TIntegerField
      FieldName = 'INDPAG'
    end
    object cdsNFVendaCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object cdsNFVendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object cdsNFVendaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object cdsNFVendaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsNFVendaTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsNFVendaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsNFVendaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsNFVendaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsNFVendaRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsNFVendaSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cdsNFVendaREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cdsNFVendaLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cdsNFVendaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cdsNFVendaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsNFVendaSTATUS_1: TSmallintField
      FieldName = 'STATUS_1'
      Required = True
    end
    object cdsNFVendaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cdsNFVendaPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cdsNFVendaPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cdsNFVendaCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cdsNFVendaBASE_ICMS_1: TSmallintField
      FieldName = 'BASE_ICMS_1'
    end
    object cdsNFVendaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cdsNFVendaCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cdsNFVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsNFVendaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cdsNFVendaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cdsNFVendaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cdsNFVendaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cdsNFVendaCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cdsNFVendaEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cdsNFVendaEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cdsNFVendaDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cdsNFVendaGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cdsNFVendaSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cdsNFVendaSERIE_1: TStringField
      FieldName = 'SERIE_1'
      Size = 4
    end
    object cdsNFVendaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsNFVendaCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cdsNFVendaIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object cdsNFVendaN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsNFVendaMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object cdsNFVendaMARCA_1: TStringField
      FieldName = 'MARCA_1'
      Size = 60
    end
    object cdsNFVendaBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object cdsNFVendaBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object cdsNFVendaTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object cdsNFVendaCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsNFVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsNFVendaMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cdsNFVendaANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object cdsNFVendaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsNFVendaPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object cdsNFVendaNUMERO_1: TIntegerField
      FieldName = 'NUMERO_1'
    end
    object cdsNFVendaDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsNFVendaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object cdsNFVendaSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsNFVendaRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object cdsNFVendaCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object cdsNFVendaPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cdsNFVendaRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object cdsNFVendaCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object cdsNFVendaLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object cdsNFVendaTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object cdsNFVendaCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object cdsNFVendaUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsNFVendaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object cdsNFVendaCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object cdsNFVendaLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object cdsNFVendaFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object cdsNFVendaLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object cdsNFVendaLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object cdsNFVendaTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object cdsNFVendaTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object cdsNFVendaINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object cdsNFVendaCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object cdsNFVendaRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object cdsNFVendaLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cdsNFVendaTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object cdsNFVendaRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object cdsNFVendaCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object cdsNFVendaCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object cdsNFVendaDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object cdsNFVendaDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object cdsNFVendaDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cdsNFVendaESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object cdsNFVendaFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object cdsNFVendaCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object cdsNFVendaCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object cdsNFVendaFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object cdsNFVendaCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object cdsNFVendaCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object cdsNFVendaVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object cdsNFVendaDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object cdsNFVendaCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object cdsNFVendaPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object cdsNFVendaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object cdsNFVendaDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object cdsNFVendaCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cdsNFVendaID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cdsNFVendaCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object cdsNFVendaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaCFOP_1: TStringField
      FieldName = 'CFOP_1'
      FixedChar = True
      Size = 4
    end
    object cdsNFVendaCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object cdsNFVendaCORTESIA: TStringField
      FieldName = 'CORTESIA'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
    end
    object cdsNFVendaVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
    end
    object cdsNFVendaE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsNFVendaCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaCARGOFUNCAO: TIntegerField
      FieldName = 'CARGOFUNCAO'
    end
    object cdsNFVendaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object cdsNFVendaCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cdsNFVendaCODCLIENTE_2: TIntegerField
      FieldName = 'CODCLIENTE_2'
      Required = True
    end
    object cdsNFVendaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsNFVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsNFVendaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsNFVendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsNFVendaUF_1: TStringField
      FieldName = 'UF_1'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsNFVendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsNFVendaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cdsNFVendaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cdsNFVendaFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cdsNFVendaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cdsNFVendaRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cdsNFVendaTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cdsNFVendaDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cdsNFVendaDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cdsNFVendaDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cdsNFVendaDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsNFVendaDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsNFVendaNUMERO_2: TStringField
      FieldName = 'NUMERO_2'
      Size = 5
    end
    object cdsNFVendaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsNFVendaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsNFVendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsNFVendaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsNFVendaBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object cdsNFVendaBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object cdsNFVendaBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object cdsNFVendaVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
    end
    object cdsNFVendaNFE_FINNFE: TStringField
      FieldName = 'NFE_FINNFE'
    end
    object cdsNFVendaNFE_MODELO: TStringField
      FieldName = 'NFE_MODELO'
      Size = 10
    end
    object cdsNFVendaNFE_VERSAO: TStringField
      FieldName = 'NFE_VERSAO'
      Size = 10
    end
    object cdsNFVendaNFE_DESTOPERACAO: TStringField
      FieldName = 'NFE_DESTOPERACAO'
    end
    object cdsNFVendaNFE_FORMATODANFE: TStringField
      FieldName = 'NFE_FORMATODANFE'
    end
    object cdsNFVendaNFE_TIPOEMISSAO: TStringField
      FieldName = 'NFE_TIPOEMISSAO'
      Size = 15
    end
    object cdsNFVendaNFE_INDFINAL: TStringField
      FieldName = 'NFE_INDFINAL'
    end
    object cdsNFVendaNFE_INDPRES: TStringField
      FieldName = 'NFE_INDPRES'
    end
    object cdsNFVendaNFE_TIPO: TStringField
      FieldName = 'NFE_TIPO'
      Size = 15
    end
    object cdsNFVendaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsItens: TSQLDataSet
    CommandText = 
      'SELECT MOV.CODMOVIMENTO, MOV.DATAMOVIMENTO, MOV.CODCLIENTE, MOV.' +
      'CODNATUREZA, MOV.STATUS, MOV.CODUSUARIO, MOV.CODVENDEDOR, MOV.CO' +
      'DALMOXARIFADO, MOV.CODFORNECEDOR,'#13#10'DET.CODPRODUTO, DET.QUANTIDAD' +
      'E, DET.PRECO, DET.ICMS, '#13#10'DET.UN, DET.QTDE_ALT, DET.NOTAFISCAL, ' +
      'DET.DESCPRODUTO, DET.CST, DET.VALOR_ICMS, DET.VLR_BASE, DET.PORC' +
      'ENTAGENDESC, DET.ICMS_SUBST, DET.ICMS_SUBSTD, DET.VLR_BASEICMS, ' +
      'DET.PIPI, DET.VIPI, DET.CFOP, DET.FRETE, DET.BCFRETE, DET.STFRET' +
      'E, DET.BCSTFRETE, DET.ICMSFRETE, DET.CSOSN, DET.VALOR_DESCONTO, ' +
      'DET.VALOR_SEGURO, DET.VALOR_OUTROS, DET.OBS, DET.CODSOLICITACAO,' +
      ' DET.VALOR_PIS, DET.VALOR_COFINS, DET.II, DET.BCII, PRO.CODPRO, ' +
      'PRO.NCM, DET.CSTIPI, DET.CSTPIS, DET.CSTCOFINS, DET.CST_IPI_CENQ' +
      ' '#13#10', DET.VBCUFDEST  '#13#10', DET.PFCPUFDEST '#13#10', DET.PICMSUFDEST '#13#10', D' +
      'ET.PICMSINTER    '#13#10', DET.PICMSINTERPART '#13#10', DET.VFCPUFDEST  '#13#10', ' +
      'DET.VICMSUFDEST '#13#10', DET.VICMSUFREMET '#13#10'   FROM MOVIMENTO MOV, MO' +
      'VIMENTODETALHE DET, PRODUTOS PRO'#13#10'WHERE MOV.CODMOVIMENTO = DET.C' +
      'ODMOVIMENTO'#13#10'      AND PRO.CODPRODUTO     = DET.CODPRODUTO'#13#10'    ' +
      '  AND MOV.CODMOVIMENTO = :PMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 168
  end
  object dspItens: TDataSetProvider
    DataSet = sdsItens
    Left = 360
    Top = 168
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspItens'
    Left = 393
    Top = 168
    object cdsItensCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsItensDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object cdsItensCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsItensCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object cdsItensSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsItensCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsItensCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cdsItensCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsItensCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsItensICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsItensUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsItensQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsItensNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object cdsItensDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsItensCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsItensVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object cdsItensPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
    end
    object cdsItensICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsItensICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object cdsItensVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object cdsItensPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object cdsItensVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object cdsItensCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsItensFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsItensBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object cdsItensSTFRETE: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object cdsItensBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object cdsItensICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object cdsItensCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsItensVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object cdsItensVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsItensVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object cdsItensOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object cdsItensCODSOLICITACAO: TIntegerField
      FieldName = 'CODSOLICITACAO'
    end
    object cdsItensVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsItensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsItensII: TFloatField
      FieldName = 'II'
    end
    object cdsItensBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsItensCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsItensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsItensCST_IPI_CENQ: TStringField
      FieldName = 'CST_IPI_CENQ'
      FixedChar = True
      Size = 3
    end
    object cdsItensVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
    end
    object cdsItensPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
    end
    object cdsItensPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
    end
    object cdsItensPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
    end
    object cdsItensPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
    end
    object cdsItensVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
    end
    object cdsItensVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
    end
    object cdsItensVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
    end
  end
  object sdsUnimed: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT UN.CODUN, UN.DESCRICAO '
      
        '   FROM UNIDADEMEDIDA UN, COMPRA C, MOVIMENTO mov, MOVIMENTODETA' +
        'LHE DET '
      'WHERE UN.CODUN = DET.UN'
      '       AND mov.codmovimento = det.codmovimento'
      '       AND C.codmovimento = MOV.codmovimento'
      '        AND (MOV.CODNATUREZA = 4)'
      '')
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 208
  end
  object sdsMov: TSQLDataSet
    CommandText = 
      'select MIN(codmovimento), MAX(codmovimento) from MOVIMENTO'#13#10'   w' +
      'here  CODNATUREZA IN (4,15,12)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 96
    Top = 136
  end
  object dspMov: TDataSetProvider
    DataSet = sdsMov
    Options = [poAllowCommandText]
    Left = 128
    Top = 136
  end
  object cdsMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov'
    Left = 160
    Top = 136
  end
  object sdsCompra: TSQLDataSet
    CommandText = 
      'SELECT C.DATACOMPRA, C.NOTAFISCAL, C.VALOR_ICMS, C.VALOR_FRETE, ' +
      'C.VALOR_SEGURO, C.VALOR_IPI'#13#10', f.CODFORNECEDOR, f.RAZAOSOCIAL, f' +
      '.CNPJ, f.INSCESTADUAL, f.TIPOFIRMA, ef.LOGRADOURO, ef.BAIRRO, ef' +
      '.CIDADE, ef.CD_IBGE, ef.CEP'#13#10',ef.COMPLEMENTO, ef.DDD, ef.TELEFON' +
      'E, ef.NUMERO, ef.PAIS'#13#10', C.SERIE, C.VALOR, C.ICMS_ST, C.ICMS_BAS' +
      'E_ST, c.CODMOVIMENTO, c.CHAVENF, c.MODELO'#13#10', SUM(MD.VIPI) IPI, S' +
      'UM(MD.VALOR_PIS) PIS, SUM(MD.VALOR_COFINS) COFINS , SUM(VLR_BASE' +
      'ICMS) BASE_ICMS '#13#10', c.OPERACAO, MOV.DATA_ENTREGA  , c.DESCONTO ,' +
      ' c.MUN_ORIGEM, c.MUN_DESTINO'#13#10'    FROM COMPRA C, MOVIMENTO MOV, ' +
      'FORNECEDOR f, ENDERECOFORNECEDOR ef, MOVIMENTODETALHE MD '#13#10'   WH' +
      'ERE C.CODMOVIMENTO = MOV.CODMOVIMENTO'#13#10'     AND md.CODMOVIMENTO ' +
      '= c.CODMOVIMENTO      '#13#10'     AND  f.CODFORNECEDOR = c.CODFORNECE' +
      'DOR'#13#10'     AND ef.CODFORNECEDOR = f.CODFORNECEDOR'#13#10'     AND ef.TI' +
      'POEND = 0  '#13#10'     AND MOV.CODNATUREZA = 4    '#13#10'     AND ((COALES' +
      'CE(C.MODELO, '#39#39') <> '#39#39')) '#13#10'     AND C.CODMOVIMENTO BETWEEN  :COD' +
      'INI AND :CODFIM'#13#10'     AND ((C.DATACOMPRA      BETWEEN :DTA_INI A' +
      'ND :DTA_FIM) OR (MOV.DATA_ENTREGA BETWEEN :DTA_INI AND :DTA_FIM)' +
      ')'#13#10'     group by C.DATACOMPRA, C.NOTAFISCAL, C.VALOR_ICMS, C.VAL' +
      'OR_FRETE, C.VALOR_SEGURO, C.VALOR_IPI'#13#10', f.CODFORNECEDOR, f.RAZA' +
      'OSOCIAL, f.CNPJ, f.INSCESTADUAL, f.TIPOFIRMA, ef.LOGRADOURO, ef.' +
      'BAIRRO, ef.CIDADE, ef.CD_IBGE, ef.CEP'#13#10',ef.COMPLEMENTO, ef.DDD, ' +
      'ef.TELEFONE, ef.NUMERO, ef.PAIS'#13#10', C.SERIE, C.VALOR, C.ICMS_ST, ' +
      'C.ICMS_BASE_ST, c.CODMOVIMENTO, c.CHAVENF, c.MODELO, c.OPERACAO,' +
      ' MOV.DATA_ENTREGA , C.DESCONTO '#13#10', c.MUN_ORIGEM, c.MUN_DESTINO'#13#10 +
      '  ORDER BY F.CODFORNECEDOR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 432
    Top = 328
    object sdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object sdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sdsCompraRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsCompraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsCompraINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsCompraTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsCompraLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsCompraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsCompraCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsCompraCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsCompraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsCompraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsCompraDDD: TSmallintField
      FieldName = 'DDD'
    end
    object sdsCompraTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsCompraNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsCompraPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object sdsCompraSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsCompraICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
    end
    object sdsCompraICMS_BASE_ST: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object sdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sdsCompraCHAVENF: TStringField
      FieldName = 'CHAVENF'
      Size = 44
    end
    object sdsCompraMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sdsCompraIPI: TFloatField
      FieldName = 'IPI'
      ReadOnly = True
    end
    object sdsCompraPIS: TFloatField
      FieldName = 'PIS'
      ReadOnly = True
    end
    object sdsCompraCOFINS: TFloatField
      FieldName = 'COFINS'
      ReadOnly = True
    end
    object sdsCompraBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ReadOnly = True
    end
    object sdsCompraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object sdsCompraDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ReadOnly = True
    end
    object sdsCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
    object sdsCompraMUN_ORIGEM: TStringField
      FieldName = 'MUN_ORIGEM'
      ReadOnly = True
      Size = 12
    end
    object sdsCompraMUN_DESTINO: TStringField
      FieldName = 'MUN_DESTINO'
      ReadOnly = True
      Size = 12
    end
  end
  object dspCompra: TDataSetProvider
    DataSet = sdsCompra
    Left = 432
    Top = 360
  end
  object cdsCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompra'
    Left = 432
    Top = 392
    object cdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object cdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsCompraRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsCompraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsCompraINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsCompraTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsCompraLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsCompraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsCompraCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsCompraCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsCompraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsCompraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsCompraDDD: TSmallintField
      FieldName = 'DDD'
    end
    object cdsCompraTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsCompraNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsCompraPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsCompraSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsCompraICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
    end
    object cdsCompraICMS_BASE_ST: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object cdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsCompraCHAVENF: TStringField
      FieldName = 'CHAVENF'
      Size = 44
    end
    object cdsCompraMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsCompraIPI: TFloatField
      FieldName = 'IPI'
      ReadOnly = True
    end
    object cdsCompraPIS: TFloatField
      FieldName = 'PIS'
      ReadOnly = True
    end
    object cdsCompraCOFINS: TFloatField
      FieldName = 'COFINS'
      ReadOnly = True
    end
    object cdsCompraBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ReadOnly = True
    end
    object cdsCompraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsCompraDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ReadOnly = True
    end
    object cdsCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
    object cdsCompraMUN_ORIGEM: TStringField
      FieldName = 'MUN_ORIGEM'
      ReadOnly = True
      Size = 12
    end
    object cdsCompraMUN_DESTINO: TStringField
      FieldName = 'MUN_DESTINO'
      ReadOnly = True
      Size = 12
    end
  end
  object sdsEmpS: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT C.RAZAOSOCIAL, C.CNPJ, C.INSCESTADUAL,   C.TIPOF' +
      'IRMA,  EC.* '#13#10'FROM NOTAFISCAL NF, CLIENTES C, ENDERECOCLIENTE EC' +
      ', VENDA V, MOVIMENTO M'#13#10'WHERE NF.CODCLIENTE = C.CODCLIENTE'#13#10'    ' +
      '  AND C.CODCLIENTE   = EC.CODCLIENTE'#13#10'      AND V.CODVENDA = NF.' +
      'CODVENDA'#13#10'      AND V.CODMOVIMENTO = M.CODMOVIMENTO '#13#10'      AND ' +
      'M.CODNATUREZA IN (12, 15)'#13#10'      AND NF.DTAEMISSAO BETWEEN :DTA1' +
      ' AND :DTA2'#13#10'      AND C.CODCLIENTE > 0'#13#10'      AND EC.TIPOEND = 0' +
      #13#10'      AND NF.PROTOCOLOCANC IS NULL '#13#10'      AND ((NF.STATUS = '#39 +
      'E'#39') or (NF.STATUS = '#39'C'#39'))'#13#10'      AND V.CODMOVIMENTO BETWEEN  :CO' +
      'DMOV AND :CODMOVF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODMOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODMOVF'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 264
    object sdsEmpSRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsEmpSCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsEmpSINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsEmpSTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsEmpSCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sdsEmpSCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsEmpSLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsEmpSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsEmpSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsEmpSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsEmpSUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsEmpSCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsEmpSTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsEmpSTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object sdsEmpSTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object sdsEmpSFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object sdsEmpSE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sdsEmpSRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object sdsEmpSTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object sdsEmpSDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object sdsEmpSDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sdsEmpSDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object sdsEmpSDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object sdsEmpSDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object sdsEmpSNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsEmpSCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsEmpSPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspEmpS: TDataSetProvider
    DataSet = sdsEmpS
    Left = 304
    Top = 264
  end
  object cdsEmpS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODMOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODMOVF'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpS'
    Left = 336
    Top = 264
    object cdsEmpSRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsEmpSCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsEmpSINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsEmpSTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsEmpSCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cdsEmpSCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsEmpSLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsEmpSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsEmpSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEmpSUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEmpSCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpSTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsEmpSTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cdsEmpSTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cdsEmpSFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cdsEmpSE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cdsEmpSRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cdsEmpSTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cdsEmpSDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cdsEmpSDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cdsEmpSDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cdsEmpSDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsEmpSDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsEmpSNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsEmpSCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsEmpSPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object sdsEmpE: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT f.CODFORNECEDOR, f.RAZAOSOCIAL, f.CNPJ, f.INSCES' +
      'TADUAL, f.TIPOFIRMA, ef.LOGRADOURO, ef.BAIRRO, ef.CIDADE, ef.CD_' +
      'IBGE, ef.CEP'#13#10',ef.COMPLEMENTO, ef.DDD, ef.TELEFONE, ef.NUMERO, e' +
      'f.PAIS'#13#10'    FROM COMPRA C,  FORNECEDOR f, ENDERECOFORNECEDOR ef,' +
      ' MOVIMENTO M'#13#10'   WHERE f.CODFORNECEDOR = c.CODFORNECEDOR'#13#10'     A' +
      'ND ef.CODFORNECEDOR = f.CODFORNECEDOR'#13#10'     AND C.CODMOVIMENTO =' +
      ' M.CODMOVIMENTO '#13#10'      AND M.CODNATUREZA = 4'#13#10'     AND ef.TIPOE' +
      'ND = 0      '#13#10'    AND ((COALESCE(C.MODELO, '#39#39') <> '#39#39')) '#13#10'     AN' +
      'D C.DATACOMPRA BETWEEN :DTA_INI AND :DTA_FIM'#13#10'     AND C.CODMOVI' +
      'MENTO BETWEEN :CODINI AND :CODFIM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 296
    object sdsEmpECODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sdsEmpERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsEmpECNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsEmpEINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsEmpETIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsEmpELOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsEmpEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsEmpECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsEmpECD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsEmpECEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsEmpECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsEmpEDDD: TSmallintField
      FieldName = 'DDD'
    end
    object sdsEmpETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsEmpENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsEmpEPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspEmpE: TDataSetProvider
    DataSet = sdsEmpE
    Left = 304
    Top = 296
  end
  object cdsEmpE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpE'
    Left = 336
    Top = 296
    object cdsEmpECODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsEmpERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsEmpECNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsEmpEINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsEmpETIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsEmpELOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsEmpEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEmpECD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsEmpECEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsEmpEDDD: TSmallintField
      FieldName = 'DDD'
    end
    object cdsEmpETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsEmpENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsEmpEPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object sdsProduto: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT DET.CODPRODUTO, PRO.CODPRO, PRO.NCM, PRO.PRODUTO' +
      ', DET.UN , UDF_LEFT(PRO.CLASSIFIC_FISCAL, 2)  AS CLASS_FISCAL '#13#10 +
      ', pro.UNIDADEMEDIDA , det.UN_CONV '#13#10'   FROM COMPRA C,MOVIMENTO M' +
      'OV, MOVIMENTODETALHE DET, PRODUTOS PRO'#13#10'WHERE C.CODMOVIMENTO = M' +
      'OV.CODMOVIMENTO'#13#10'      AND MOV.CODMOVIMENTO = DET.CODMOVIMENTO'#13#10 +
      '      AND PRO.CODPRODUTO     = DET.CODPRODUTO'#13#10'      AND (MOV.CO' +
      'DNATUREZA = 4)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 328
    object sdsProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object sdsProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object sdsProdutoUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object sdsProdutoCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      ReadOnly = True
      Size = 254
    end
    object sdsProdutoUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object sdsProdutoUN_CONV: TFloatField
      FieldName = 'UN_CONV'
      ReadOnly = True
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Options = [poAllowCommandText]
    Left = 304
    Top = 328
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 337
    Top = 328
    object cdsProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsProdutoUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsProdutoCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      ReadOnly = True
      Size = 254
    end
    object cdsProdutoUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsProdutoUN_CONV: TFloatField
      FieldName = 'UN_CONV'
      ReadOnly = True
    end
  end
  object sdsCompraDet: TSQLDataSet
    CommandText = 
      'SELECT C.DATACOMPRA, C.NOTAFISCAL, C.VALOR_ICMS, C.VALOR_FRETE, ' +
      'C.VALOR_SEGURO, C.VALOR_IPI, r.CODPRODUTO, r.QUANTIDADE, r.PRECO' +
      ', r.ICMS, r.UN, r.QTDE_ALT, r.DESCPRODUTO, '#13#10' r.CST, r.VALOR_ICM' +
      'S, r.VLR_BASE,  r.ICMS_SUBST, r.ICMS_SUBSTD, r.VLR_BASEICMS, r.P' +
      'IPI, r.VIPI, r.CFOP, r.FRETE, r.BCFRETE, r.STFRETE, r.BCSTFRETE,' +
      ' r.ICMSFRETE, r.CSOSN, r.VALOR_SEGURO, '#13#10'r.VALOR_OUTROS,  r.VALO' +
      'R_PIS, r.VALOR_COFINS, r.II, r.BCII, r.CSTIPI, r.CSTPIS, r.CSTCO' +
      'FINS, r.PPIS, r.PCOFINS'#13#10', f.CODFORNECEDOR, f.RAZAOSOCIAL, f.CNP' +
      'J, f.INSCESTADUAL, f.TIPOFIRMA, ef.LOGRADOURO, ef.BAIRRO, ef.CID' +
      'ADE, ef.CD_IBGE, ef.CEP'#13#10',ef.COMPLEMENTO, ef.DDD, ef.TELEFONE, e' +
      'f.NUMERO, ef.PAIS'#13#10', C.SERIE, C.VALOR, C.ICMS_ST, C.ICMS_BASE_ST' +
      ', r.coddetalhe, p.CODPRO'#13#10'    FROM COMPRA C,  MOVIMENTODETALHE r' +
      ', FORNECEDOR f, ENDERECOFORNECEDOR ef, PRODUTOS p'#13#10'   WHERE C.CO' +
      'DMOVIMENTO = r.CODMOVIMENTO'#13#10'     AND f.CODFORNECEDOR = c.CODFOR' +
      'NECEDOR'#13#10'     AND ef.CODFORNECEDOR = f.CODFORNECEDOR'#13#10'     AND r' +
      '.CODPRODUTO = p.CODPRODUTO '#13#10'     AND ef.TIPOEND = 0      '#13#10'    ' +
      ' AND C.CODMOVIMENTO =  :CODINI '#13#10'  ORDER BY C.DATACOMPRA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 464
    Top = 328
    object DateField1: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object FloatField2: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object FloatField3: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object FloatField4: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object FloatField5: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object FloatField6: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField7: TFloatField
      FieldName = 'ICMS'
    end
    object StringField1: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object FloatField8: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object StringField2: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object StringField3: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object FloatField9: TFloatField
      FieldName = 'VALOR_ICMS_1'
    end
    object FloatField10: TFloatField
      FieldName = 'VLR_BASE'
    end
    object FloatField11: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object FloatField12: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object FloatField13: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object FloatField14: TFloatField
      FieldName = 'PIPI'
    end
    object FloatField15: TFloatField
      FieldName = 'VIPI'
    end
    object StringField4: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object FloatField16: TFloatField
      FieldName = 'FRETE'
    end
    object FloatField17: TFloatField
      FieldName = 'BCFRETE'
    end
    object StringField5: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object FloatField18: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object FloatField19: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object StringField6: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object FloatField20: TFloatField
      FieldName = 'VALOR_SEGURO_1'
    end
    object FloatField21: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object FloatField22: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object FloatField23: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object FloatField24: TFloatField
      FieldName = 'II'
    end
    object FloatField25: TFloatField
      FieldName = 'BCII'
    end
    object StringField7: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object StringField8: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object FloatField26: TFloatField
      FieldName = 'PPIS'
    end
    object FloatField27: TFloatField
      FieldName = 'PCOFINS'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object StringField10: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object StringField12: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object StringField14: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object StringField15: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object StringField16: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object StringField17: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object StringField18: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SmallintField2: TSmallintField
      FieldName = 'DDD'
    end
    object StringField19: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object StringField20: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object StringField21: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object StringField22: TStringField
      FieldName = 'SERIE'
    end
    object FloatField28: TFloatField
      FieldName = 'VALOR'
    end
    object FloatField29: TFloatField
      FieldName = 'ICMS_ST'
    end
    object FloatField30: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object sdsCompraDetCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object dspCompraDet: TDataSetProvider
    DataSet = sdsCompraDet
    Left = 464
    Top = 360
  end
  object cdsCompraDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompraDet'
    Left = 464
    Top = 392
    object cdsCompraDetDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object cdsCompraDetNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsCompraDetVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsCompraDetVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsCompraDetVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsCompraDetVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsCompraDetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsCompraDetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsCompraDetPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsCompraDetICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsCompraDetUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsCompraDetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsCompraDetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsCompraDetCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsCompraDetVALOR_ICMS_1: TFloatField
      FieldName = 'VALOR_ICMS_1'
    end
    object cdsCompraDetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object cdsCompraDetICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsCompraDetICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object cdsCompraDetVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object cdsCompraDetPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object cdsCompraDetVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object cdsCompraDetCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsCompraDetFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsCompraDetBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object cdsCompraDetSTFRETE: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object cdsCompraDetBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object cdsCompraDetICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object cdsCompraDetCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsCompraDetVALOR_SEGURO_1: TFloatField
      FieldName = 'VALOR_SEGURO_1'
    end
    object cdsCompraDetVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object cdsCompraDetVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsCompraDetVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsCompraDetII: TFloatField
      FieldName = 'II'
    end
    object cdsCompraDetBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsCompraDetCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsCompraDetCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsCompraDetCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsCompraDetPPIS: TFloatField
      FieldName = 'PPIS'
    end
    object cdsCompraDetPCOFINS: TFloatField
      FieldName = 'PCOFINS'
    end
    object cdsCompraDetCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsCompraDetRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsCompraDetCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsCompraDetINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsCompraDetTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsCompraDetLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsCompraDetBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsCompraDetCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsCompraDetCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsCompraDetCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsCompraDetCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsCompraDetDDD: TSmallintField
      FieldName = 'DDD'
    end
    object cdsCompraDetTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsCompraDetNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsCompraDetPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsCompraDetSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsCompraDetVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsCompraDetICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
    end
    object cdsCompraDetICMS_BASE_ST: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object cdsCompraDetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cdsCompraDetCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object sdsTotal: TSQLDataSet
    CommandText = 
      'SELECT SUM(MD.VIPI) IPI, SUM(MD.VALOR_PIS) PIS, SUM(MD.VALOR_COF' +
      'INS) COFINS , SUM(VLR_BASEICMS) BASE_ICMS '#13#10'   FROM COMPRA C, MO' +
      'VIMENTODETALHE MD   '#13#10'WHERE md.CODMOVIMENTO = c.CODMOVIMENTO    ' +
      '  '#13#10'     AND C.CODMOVIMENTO BETWEEN  :CODINI AND :CODFIM'#13#10'     A' +
      'ND C.DATACOMPRA      BETWEEN :DTA_INI AND :DTA_FIM'#13#10' '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 496
    Top = 160
    object sdsTotalIPI: TFloatField
      FieldName = 'IPI'
      ReadOnly = True
    end
    object sdsTotalPIS: TFloatField
      FieldName = 'PIS'
      ReadOnly = True
    end
    object sdsTotalCOFINS: TFloatField
      FieldName = 'COFINS'
      ReadOnly = True
    end
    object sdsTotalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ReadOnly = True
    end
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 712
    Top = 112
  end
  object sdsC190: TSQLDataSet
    CommandText = 
      'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM((r.QUANTIDADE * r.VLR_BAS' +
      'E))  VLR_OPERACAO,  '#13#10'r.ICMS,  r.CST,  '#13#10'SUM(r.ICMS_SUBST) ICMS_' +
      'ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, SUM(r.VLR_BASEICMS) VLR' +
      '_BASE_ICMS, '#13#10'SUM(r.VIPI) VLR_IPI, r.CFOP'#13#10'    FROM COMPRA C,  M' +
      'OVIMENTO MOV, MOVIMENTODETALHE r'#13#10'   WHERE C.CODMOVIMENTO = MOV.' +
      'CODMOVIMENTO'#13#10'         AND C.CODMOVIMENTO = r.CODMOVIMENTO'#13#10'    ' +
      '     AND MOV.CODNATUREZA = 4'#13#10'         AND C.CODMOVIMENTO =  :CO' +
      'DINI '#13#10'   GROUP BY r.CFOP, r.ICMS, r.CST'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 496
    Top = 328
  end
  object dspC190: TDataSetProvider
    DataSet = sdsC190
    Left = 496
    Top = 360
  end
  object cdsC190: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    ProviderName = 'dspC190'
    Left = 496
    Top = 392
    object cdsC190VLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object cdsC190VLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object cdsC190ICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object cdsC190CST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 5
    end
    object cdsC190ICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object cdsC190VLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object cdsC190VLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object cdsC190VLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object cdsC190CFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = '*.txt'
    Left = 808
    Top = 120
  end
  object sdsVC190: TSQLDataSet
    CommandText = 
      'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM(r.FRETE + r.VALOR_SEGURO ' +
      '+ r.VIPI + r.VALOR_OUTROS +  '#13#10'r.ICMS_SUBST + (r.QUANTIDADE * r.' +
      'VLR_BASE))  VLR_OPERACAO,  '#13#10'r.ICMS,  r.CST, '#13#10'SUM(r.ICMS_SUBST)' +
      ' ICMS_ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, SUM(r.VLR_BASEICM' +
      'S) VLR_BASE_ICMS, '#13#10'SUM(r.VIPI) VLR_IPI, r.CFOP'#13#10'    FROM NOTAFI' +
      'SCAL NF, VENDA v, MOVIMENTO m, MOVIMENTODETALHE r'#13#10'   WHERE NF.C' +
      'ODVENDA = v.CODVENDA'#13#10'     AND M.CODMOVIMENTO = v.CODMOVIMENTO '#13 +
      #10'     AND m.CODMOVIMENTO = r.CODMOVIMENTO'#13#10'     AND m.CODNATUREZ' +
      'A in (12, 15)'#13#10'     AND M.CODMOVIMENTO =  :CODINI '#13#10'   GROUP BY ' +
      'r.CFOP, r.ICMS, r.CST'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 536
    Top = 272
  end
  object dspVC190: TDataSetProvider
    DataSet = sdsVC190
    Left = 536
    Top = 304
  end
  object cdsVC190: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end>
    ProviderName = 'dspVC190'
    Left = 536
    Top = 336
    object cdsVC190VLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object cdsVC190VLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object cdsVC190ICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object cdsVC190CST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 5
    end
    object cdsVC190ICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object cdsVC190VLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object cdsVC190VLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object cdsVC190VLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object cdsVC190CFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object sqlTotalEntrada: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM(r.FRETE + r.VALOR_SEGURO ' +
        '+ r.VIPI + r.VALOR_OUTROS +  '
      'r.ICMS_SUBST + (r.QUANTIDADE * r.VLR_BASE))  VLR_OPERACAO,  '
      
        'SUM(r.ICMS_SUBST) ICMS_ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, ' +
        'SUM(r.VLR_BASEICMS) VLR_BASE_ICMS, '
      'SUM(r.VIPI) VLR_IPI, SUM(r.VLRBC_IPI) as VLR_BASE_IPI'
      '  FROM COMPRA C, MOVIMENTO M, MOVIMENTODETALHE r'
      'WHERE C.CODMOVIMENTO = M.CODMOVIMENTO '
      '      AND C.CODMOVIMENTO = r.CODMOVIMENTO'
      '      AND M.CODNATUREZA = 4 '
      '      AND C.DATACOMPRA BETWEEN :DTA1 AND :DTA2')
    SQLConnection = DM.sqlsisAdimin
    Left = 640
    Top = 272
    object sqlTotalEntradaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object sqlTotalEntradaVLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object sqlTotalEntradaICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object sqlTotalEntradaVLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object sqlTotalEntradaVLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object sqlTotalEntradaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object sqlTotalEntradaVLR_BASE_IPI: TFloatField
      FieldName = 'VLR_BASE_IPI'
      ReadOnly = True
    end
  end
  object sqlTotalSaida: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM(r.FRETE + r.VALOR_SEGURO ' +
        '+ r.VIPI + r.VALOR_OUTROS +  '
      'r.ICMS_SUBST + (r.QUANTIDADE * r.VLR_BASE))  VLR_OPERACAO,  '
      
        'SUM(r.ICMS_SUBST) ICMS_ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, ' +
        'SUM(r.VLR_BASEICMS) VLR_BASE_ICMS, '
      'SUM(r.VIPI) VLR_IPI, SUM(r.VLRBC_IPI) as VLR_BASE_IPI'
      ', sum(r.VBCUFDEST) VBCUFDEST, sum(r.PFCPUFDEST) PFCPUFDEST, '
      'sum(r.PICMSUFDEST) PICMSUFDEST, sum(r.PICMSINTER) PICMSINTER, '
      'sum(r.PICMSINTERPART) PICMSINTERPART   , '
      'sum(r.VFCPUFDEST) VFCPUFDEST   ,sum(r.VICMSUFDEST) VICMSUFDEST, '
      'sum(r.VICMSUFREMET) VICMSUFREMET   '
      '    FROM NOTAFISCAL NF, VENDA v, MOVIMENTO m, MOVIMENTODETALHE r'
      '   WHERE NF.CODVENDA = v.CODVENDA'
      '     AND M.CODMOVIMENTO = v.CODMOVIMENTO '
      '     AND m.CODMOVIMENTO = r.CODMOVIMENTO'
      '     AND m.CODNATUREZA in (12, 15)'
      '     AND NF.NFE_FINNFE <> '#39'fnDenegado'#39
      '     AND NF.NFE_TIPO = '#39'tnSaida'#39' '
      '     AND NF.PROTOCOLOCANC IS NULL '
      '     AND NF.DTAEMISSAO BETWEEN :dta1 AND :dta2')
    SQLConnection = DM.sqlsisAdimin
    Left = 672
    Top = 272
    object sqlTotalSaidaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object sqlTotalSaidaVLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object sqlTotalSaidaICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object sqlTotalSaidaVLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object sqlTotalSaidaVLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object sqlTotalSaidaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object sqlTotalSaidaVLR_BASE_IPI: TFloatField
      FieldName = 'VLR_BASE_IPI'
      ReadOnly = True
    end
    object sqlTotalSaidaVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
      ReadOnly = True
    end
    object sqlTotalSaidaPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
      ReadOnly = True
    end
    object sqlTotalSaidaPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
      ReadOnly = True
    end
    object sqlTotalSaidaPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
      ReadOnly = True
    end
    object sqlTotalSaidaPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
      ReadOnly = True
    end
    object sqlTotalSaidaVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
      ReadOnly = True
    end
    object sqlTotalSaidaVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
      ReadOnly = True
    end
    object sqlTotalSaidaVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
      ReadOnly = True
    end
  end
  object sqlEnergia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FORNENERGIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT C.DATACOMPRA, C.NOTAFISCAL, C.VALOR_ICMS, C.VALOR_FRETE, ' +
        'C.VALOR_SEGURO, C.VALOR_IPI'
      
        ', f.CODFORNECEDOR, f.RAZAOSOCIAL, f.CNPJ, f.INSCESTADUAL, f.TIPO' +
        'FIRMA, ef.LOGRADOURO, ef.BAIRRO, ef.CIDADE, ef.CD_IBGE, ef.CEP'
      ',ef.COMPLEMENTO, ef.DDD, ef.TELEFONE, ef.NUMERO, ef.PAIS'
      
        ', C.SERIE, C.VALOR, C.ICMS_ST, C.ICMS_BASE_ST, c.CODMOVIMENTO, c' +
        '.CHAVENF'
      
        '    FROM COMPRA C, MOVIMENTO MOV, FORNECEDOR f, ENDERECOFORNECED' +
        'OR ef'
      '   WHERE C.CODMOVIMENTO = MOV.CODMOVIMENTO '
      '     AND  f.CODFORNECEDOR = c.CODFORNECEDOR'
      '     AND ef.CODFORNECEDOR = f.CODFORNECEDOR'
      '     AND ef.TIPOEND = 0  '
      '     AND MOV.CODNATUREZA = 4'
      '     AND MOV.CODFORNECEDOR = :FORNENERGIA    '
      '     AND C.CODMOVIMENTO BETWEEN  :CODINI AND :CODFIM'
      '     AND C.DATACOMPRA      BETWEEN :DTA_INI AND :DTA_FIM'
      '  ORDER BY F.CODFORNECEDOR')
    SQLConnection = DM.sqlsisAdimin
    Left = 760
    Top = 272
    object sqlEnergiaDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object sqlEnergiaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sqlEnergiaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sqlEnergiaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sqlEnergiaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sqlEnergiaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sqlEnergiaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sqlEnergiaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sqlEnergiaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sqlEnergiaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sqlEnergiaTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sqlEnergiaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sqlEnergiaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sqlEnergiaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sqlEnergiaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sqlEnergiaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlEnergiaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sqlEnergiaDDD: TSmallintField
      FieldName = 'DDD'
    end
    object sqlEnergiaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sqlEnergiaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sqlEnergiaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object sqlEnergiaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sqlEnergiaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlEnergiaICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
    end
    object sqlEnergiaICMS_BASE_ST: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object sqlEnergiaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sqlEnergiaCHAVENF: TStringField
      FieldName = 'CHAVENF'
      Size = 44
    end
  end
  object sdsEnergiaDet: TSQLDataSet
    CommandText = 
      'SELECT C.DATACOMPRA, C.NOTAFISCAL, C.VALOR_ICMS, C.VALOR_FRETE, ' +
      'C.VALOR_SEGURO, C.VALOR_IPI, r.CODPRODUTO, r.QUANTIDADE, r.PRECO' +
      ', r.ICMS, r.UN, r.QTDE_ALT, r.DESCPRODUTO, '#13#10' r.CST, r.VALOR_ICM' +
      'S, r.VLR_BASE,  r.ICMS_SUBST, r.ICMS_SUBSTD, r.VLR_BASEICMS, r.P' +
      'IPI, r.VIPI, r.CFOP, r.FRETE, r.BCFRETE, r.STFRETE, r.BCSTFRETE,' +
      ' r.ICMSFRETE, r.CSOSN, r.VALOR_SEGURO, '#13#10'r.VALOR_OUTROS,  r.VALO' +
      'R_PIS, r.VALOR_COFINS, r.II, r.BCII, r.CSTIPI, r.CSTPIS, r.CSTCO' +
      'FINS, r.PPIS, r.PCOFINS'#13#10', f.CODFORNECEDOR, f.RAZAOSOCIAL, f.CNP' +
      'J, f.INSCESTADUAL, f.TIPOFIRMA'#13#10', C.SERIE, C.VALOR, C.ICMS_ST, C' +
      '.ICMS_BASE_ST, r.coddetalhe'#13#10'    FROM COMPRA C,  MOVIMENTO mov, ' +
      'MOVIMENTODETALHE r, FORNECEDOR f'#13#10'   WHERE C.CODMOVIMENTO = r.CO' +
      'DMOVIMENTO'#13#10'     AND C.CODMOVIMENTO = mov.CODMOVIMENTO'#13#10'     AND' +
      ' f.CODFORNECEDOR = c.CODFORNECEDOR'#13#10'     AND MOV.CODNATUREZA = 4' +
      '    '#13#10'     AND C.CODMOVIMENTO BETWEEN  :CODINI AND :CODFIM'#13#10'    ' +
      ' AND C.DATACOMPRA      BETWEEN :DTA_INI AND :DTA_FIM'#13#10'     AND C' +
      '.CODFORNECEDOR = :codFornec'#13#10'  ORDER BY C.DATACOMPRA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codFornec'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 800
    Top = 272
  end
  object dspEnergiaDet: TDataSetProvider
    DataSet = sdsEnergiaDet
    Left = 800
    Top = 304
  end
  object cdsEnergiaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA_FIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codFornec'
        ParamType = ptInput
      end>
    ProviderName = 'dspEnergiaDet'
    Left = 800
    Top = 336
    object cdsEnergiaDetDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object cdsEnergiaDetNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsEnergiaDetVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsEnergiaDetVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsEnergiaDetVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsEnergiaDetVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsEnergiaDetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsEnergiaDetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsEnergiaDetPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsEnergiaDetICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsEnergiaDetUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsEnergiaDetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsEnergiaDetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsEnergiaDetCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsEnergiaDetVALOR_ICMS_1: TFloatField
      FieldName = 'VALOR_ICMS_1'
    end
    object cdsEnergiaDetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object cdsEnergiaDetICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsEnergiaDetICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object cdsEnergiaDetVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object cdsEnergiaDetPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object cdsEnergiaDetVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object cdsEnergiaDetCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsEnergiaDetFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsEnergiaDetBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object cdsEnergiaDetSTFRETE: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object cdsEnergiaDetBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object cdsEnergiaDetICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object cdsEnergiaDetCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsEnergiaDetVALOR_SEGURO_1: TFloatField
      FieldName = 'VALOR_SEGURO_1'
    end
    object cdsEnergiaDetVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object cdsEnergiaDetVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsEnergiaDetVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsEnergiaDetII: TFloatField
      FieldName = 'II'
    end
    object cdsEnergiaDetBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsEnergiaDetCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsEnergiaDetCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsEnergiaDetCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsEnergiaDetPPIS: TFloatField
      FieldName = 'PPIS'
    end
    object cdsEnergiaDetPCOFINS: TFloatField
      FieldName = 'PCOFINS'
    end
    object cdsEnergiaDetCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsEnergiaDetRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsEnergiaDetCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsEnergiaDetINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsEnergiaDetTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsEnergiaDetSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsEnergiaDetVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsEnergiaDetICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
    end
    object cdsEnergiaDetICMS_BASE_ST: TFloatField
      FieldName = 'ICMS_BASE_ST'
    end
    object cdsEnergiaDetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
  end
  object sqlInventario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 856
    Top = 272
  end
  object sqlTotalEntradaIpi: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM(r.FRETE + r.VALOR_SEGURO ' +
        '+ r.VIPI + r.VALOR_OUTROS +  '
      'r.ICMS_SUBST + (r.QUANTIDADE * r.VLR_BASE))  VLR_OPERACAO,  '
      
        'SUM(r.ICMS_SUBST) ICMS_ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, ' +
        'SUM(r.VLR_BASEICMS) VLR_BASE_ICMS, '
      
        'SUM(r.VIPI) VLR_IPI, SUM(r.VLRBC_IPI) as VLR_BASE_IPI, r.CSTIPI,' +
        ' r.CFOP'
      '  FROM COMPRA C, MOVIMENTO M, MOVIMENTODETALHE r'
      'WHERE C.CODMOVIMENTO = M.CODMOVIMENTO '
      '      AND C.CODMOVIMENTO = r.CODMOVIMENTO'
      '      AND M.CODNATUREZA in (4, 20) '
      '      AND C.DATACOMPRA BETWEEN :DTA1 AND :DTA2'
      'group by   r.CFOP, r.CSTIPI')
    SQLConnection = DM.sqlsisAdimin
    Left = 640
    Top = 304
    object FloatField31: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object FloatField32: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object FloatField33: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object FloatField34: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object FloatField35: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object FloatField36: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object FloatField37: TFloatField
      FieldName = 'VLR_BASE_IPI'
      ReadOnly = True
    end
    object sqlTotalEntradaIpiCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
    object sqlTotalEntradaIpiCFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object sqlTotalSaidaIpi: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT SUM(r.VALOR_ICMS) VLR_ICMS, SUM(r.FRETE + r.VALOR_SEGURO ' +
        '+ r.VIPI + r.VALOR_OUTROS +  '
      'r.ICMS_SUBST + (r.QUANTIDADE * r.VLR_BASE))  VLR_OPERACAO,  '
      
        'SUM(r.ICMS_SUBST) ICMS_ST, SUM(r.ICMS_SUBSTD) VLR_BASE_ICMS_ST, ' +
        'SUM(r.VLR_BASEICMS) VLR_BASE_ICMS, '
      
        'SUM(r.VIPI) VLR_IPI, SUM(r.VLRBC_IPI) as VLR_BASE_IPI, r.CFOP, r' +
        '.CSTIPI'
      ''
      '    FROM NOTAFISCAL NF, VENDA v, MOVIMENTO m, MOVIMENTODETALHE r'
      '   WHERE NF.CODVENDA = v.CODVENDA'
      '     AND M.CODMOVIMENTO = v.CODMOVIMENTO '
      '     AND m.CODMOVIMENTO = r.CODMOVIMENTO'
      '     AND m.CODNATUREZA in (12, 15) '
      '     AND NF.NATUREZA in (12,15)'
      '     AND NF.PROTOCOLOCANC IS NULL '
      '     AND NF.DTAEMISSAO BETWEEN :dta1 AND :dta2'
      '  '
      'GROUP BY r.CFOP, r.CSTIPI')
    SQLConnection = DM.sqlsisAdimin
    Left = 672
    Top = 304
    object FloatField38: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object FloatField39: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object FloatField40: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object FloatField41: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object FloatField42: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object FloatField43: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object FloatField44: TFloatField
      FieldName = 'VLR_BASE_IPI'
      ReadOnly = True
    end
    object sqlTotalSaidaIpiCFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object sqlTotalSaidaIpiCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
  end
  object dsp_tot_ipi: TDataSetProvider
    DataSet = sqlTotalEntradaIpi
    Left = 640
    Top = 336
  end
  object dsp_tot_ipi_s: TDataSetProvider
    DataSet = sqlTotalSaidaIpi
    Left = 672
    Top = 336
  end
  object cdsTotIpi: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_tot_ipi'
    Left = 640
    Top = 368
    object cdsTotIpiVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object cdsTotIpiVLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object cdsTotIpiICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object cdsTotIpiVLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object cdsTotIpiVLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object cdsTotIpiVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object cdsTotIpiVLR_BASE_IPI: TFloatField
      FieldName = 'VLR_BASE_IPI'
      ReadOnly = True
    end
    object cdsTotIpiCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
    object cdsTotIpiCFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object cdsTotIpiSaida: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_tot_ipi_s'
    Left = 672
    Top = 368
    object cdsTotIpiSaidaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object cdsTotIpiSaidaVLR_OPERACAO: TFloatField
      FieldName = 'VLR_OPERACAO'
      ReadOnly = True
    end
    object cdsTotIpiSaidaICMS_ST: TFloatField
      FieldName = 'ICMS_ST'
      ReadOnly = True
    end
    object cdsTotIpiSaidaVLR_BASE_ICMS_ST: TFloatField
      FieldName = 'VLR_BASE_ICMS_ST'
      ReadOnly = True
    end
    object cdsTotIpiSaidaVLR_BASE_ICMS: TFloatField
      FieldName = 'VLR_BASE_ICMS'
      ReadOnly = True
    end
    object cdsTotIpiSaidaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      ReadOnly = True
    end
    object cdsTotIpiSaidaVLR_BASE_IPI: TFloatField
      FieldName = 'VLR_BASE_IPI'
      ReadOnly = True
    end
    object cdsTotIpiSaidaCFOP: TStringField
      FieldName = 'CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object cdsTotIpiSaidaCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
  end
  object sdsSat: TSQLDataSet
    CommandText = 
      'SELECT  V.DATAVENDA, V.VALOR, V.VALOR_ICMS, '#13#10'V.N_BOLETO AS N_CN' +
      'PJ, V.OBS AS SAT, '#13#10'V.N_DOCUMENTO AS N_CFE,  '#13#10' SUM(MD.VALOR_ICM' +
      'S) ICMS, SUM(MD.VALOR_PIS) PIS,  SUM(MD.VALOR_COFINS) COFINS '#13#10',' +
      ' V.CODMOVIMENTO '#13#10'   FROM VENDA V, CLIENTES C, ENDERECOCLIENTE E' +
      'C, '#13#10'     SERIES S, MOVIMENTODETALHE MD'#13#10' WHERE V.CODCLIENTE = C' +
      '.CODCLIENTE'#13#10'      AND C.CODCLIENTE   = EC.CODCLIENTE'#13#10'      AND' +
      ' S.SERIE = V.SERIE'#13#10'     AND MD.CODMOVIMENTO = V.CODMOVIMENTO '#13#10 +
      '      AND V.DATAVENDA BETWEEN :DTA1 AND :DTA2'#13#10'      AND C.CODCL' +
      'IENTE > 0'#13#10'      AND EC.TIPOEND = 0 '#13#10'      AND V.CODMOVIMENTO B' +
      'ETWEEN :CODINI AND :CODFIM '#13#10'      AND V.STATUS1 = '#39'E'#39#13#10' GROUP B' +
      'Y V.CODMOVIMENTO,  V.DATAVENDA, V.VALOR, V.VALOR_ICMS, '#13#10'V.N_BOL' +
      'ETO , V.OBS , '#13#10'V.N_DOCUMENTO '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 416
  end
  object dspSat: TDataSetProvider
    DataSet = sdsSat
    Left = 304
    Top = 416
  end
  object cdsSat: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspSat'
    Left = 336
    Top = 416
    object cdsSatDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      Required = True
    end
    object cdsSatVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsSatVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsSatN_CNPJ: TStringField
      FieldName = 'N_CNPJ'
      ReadOnly = True
      Size = 30
    end
    object cdsSatSAT: TStringField
      FieldName = 'SAT'
      ReadOnly = True
      Size = 500
    end
    object cdsSatN_CFE: TStringField
      FieldName = 'N_CFE'
      ReadOnly = True
    end
    object cdsSatICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object cdsSatPIS: TFloatField
      FieldName = 'PIS'
      ReadOnly = True
    end
    object cdsSatCOFINS: TFloatField
      FieldName = 'COFINS'
      ReadOnly = True
    end
    object cdsSatCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ReadOnly = True
      Required = True
    end
  end
  object sdsSatAnal: TSQLDataSet
    CommandText = 
      'SELECT md.CFOP, md.CST,  sum(MD.VALOR_ICMS) VLR_ICMS, SUM(md.VAL' +
      'TOTAL) TOTAL, md.ICMS'#13#10'   FROM VENDA V, CLIENTES C, ENDERECOCLIE' +
      'NTE EC, '#13#10'     SERIES S, MOVIMENTODETALHE MD'#13#10' WHERE V.CODCLIENT' +
      'E = C.CODCLIENTE'#13#10'      AND C.CODCLIENTE   = EC.CODCLIENTE'#13#10'    ' +
      '  AND S.SERIE = V.SERIE'#13#10'     AND MD.CODMOVIMENTO = V.CODMOVIMEN' +
      'TO '#13#10'      AND V.DATAVENDA BETWEEN :DTA1 AND :DTA2'#13#10'      AND C.' +
      'CODCLIENTE > 0'#13#10'      AND EC.TIPOEND = 0 '#13#10'      AND V.CODMOVIME' +
      'NTO BETWEEN :CODINI AND :CODFIM '#13#10'      AND V.STATUS1 = '#39'E'#39#13#10' GR' +
      'OUP BY md.CFOP, md.CST, md.ICMS'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 448
  end
  object dspSatAnal: TDataSetProvider
    DataSet = sdsSatAnal
    Left = 304
    Top = 448
  end
  object cdsSatAnal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspSatAnal'
    Left = 336
    Top = 448
    object cdsSatAnalCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsSatAnalCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsSatAnalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      ReadOnly = True
    end
    object cdsSatAnalTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object cdsSatAnalICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
  end
  object sdsDifal: TSQLDataSet
    CommandText = 
      'SELECT  sum(MD.VBCUFDEST) VBCUFDEST, sum(MD.PFCPUFDEST) PFCPUFDE' +
      'ST, sum(MD.PICMSUFDEST) PICMSUFDEST, sum(MD.PICMSINTER) PICMSINT' +
      'ER, sum(MD.PICMSINTERPART) PICMSINTERPART   , sum(MD.VFCPUFDEST)' +
      ' VFCPUFDEST   ,sum( MD.VICMSUFDEST) VICMSUFDEST, sum(MD.VICMSUFR' +
      'EMET) VICMSUFREMET, NF.UF   '#13#10'   FROM  NOTAFISCAL NF , VENDA V, ' +
      'MOVIMENTODETALHE MD '#13#10'WHERE  V.CODVENDA = NF.CODVENDA'#13#10'     AND ' +
      'md.CODMOVIMENTO = v.CODMOVIMENTO '#13#10'      AND NF.DTAEMISSAO BETWE' +
      'EN :PDTA1 AND :PDTA2'#13#10'      AND NF.PROTOCOLOCANC IS NULL '#13#10'     ' +
      ' AND NF.STATUS IS NOT NULL '#13#10'GROUP BY NF.UF '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'PDTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PDTA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 440
  end
  object dspDifal: TDataSetProvider
    DataSet = sdsDifal
    Left = 472
    Top = 440
  end
  object cdsDifal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'PDTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PDTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspDifal'
    Left = 505
    Top = 440
    object cdsDifalVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
      ReadOnly = True
    end
    object cdsDifalPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
      ReadOnly = True
    end
    object cdsDifalPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
      ReadOnly = True
    end
    object cdsDifalPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
      ReadOnly = True
    end
    object cdsDifalPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
      ReadOnly = True
    end
    object cdsDifalVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
      ReadOnly = True
    end
    object cdsDifalVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
      ReadOnly = True
    end
    object cdsDifalVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
      ReadOnly = True
    end
    object cdsDifalUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object sdsDifalCad: TSQLDataSet
    CommandText = 
      'SELECT * FROM SPEDICMS WHERE DT_INI = :PDATA1 AND DT_FIM = :PDAT' +
      'A2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'PDATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PDATA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 28
    Top = 328
  end
  object dspDifalCad: TDataSetProvider
    DataSet = sdsDifalCad
    Left = 28
    Top = 360
  end
  object cdsDifalCad: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'PDATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PDATA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspDifalCad'
    Left = 28
    Top = 392
    object cdsDifalCadDT_INI: TDateField
      FieldName = 'DT_INI'
      Required = True
    end
    object cdsDifalCadIND_MOV_DIFAL: TStringField
      FieldName = 'IND_MOV_DIFAL'
      FixedChar = True
      Size = 1
    end
    object cdsDifalCadVL_SLD_CRED_ANT_DIFAL: TFloatField
      FieldName = 'VL_SLD_CRED_ANT_DIFAL'
    end
    object cdsDifalCadVL_TOT_DEBITOS_DIFAL: TFloatField
      FieldName = 'VL_TOT_DEBITOS_DIFAL'
    end
    object cdsDifalCadVL_OUT_DEB_DIFAL: TFloatField
      FieldName = 'VL_OUT_DEB_DIFAL'
    end
    object cdsDifalCadVL_TOT_DEB_FCP: TFloatField
      FieldName = 'VL_TOT_DEB_FCP'
    end
    object cdsDifalCadVL_TOT_CREDITOS_DIFAL: TFloatField
      FieldName = 'VL_TOT_CREDITOS_DIFAL'
    end
    object cdsDifalCadVL_TOT_CRED_FCP: TFloatField
      FieldName = 'VL_TOT_CRED_FCP'
    end
    object cdsDifalCadVL_OUT_CRED_DIFAL: TFloatField
      FieldName = 'VL_OUT_CRED_DIFAL'
    end
    object cdsDifalCadVL_SLD_DEV_ANT_DIFAL: TFloatField
      FieldName = 'VL_SLD_DEV_ANT_DIFAL'
    end
    object cdsDifalCadVL_DEDUCOES_DIFAL: TFloatField
      FieldName = 'VL_DEDUCOES_DIFAL'
    end
    object cdsDifalCadVL_SLD_CRED_TRANSPORTAR: TFloatField
      FieldName = 'VL_SLD_CRED_TRANSPORTAR'
    end
    object cdsDifalCadDEB_ESP_DIFAL: TFloatField
      FieldName = 'DEB_ESP_DIFAL'
    end
    object cdsDifalCadDT_FIM: TDateField
      FieldName = 'DT_FIM'
    end
  end
  object dsDifalCad: TDataSource
    DataSet = cdsDifalCad
    Left = 28
    Top = 424
  end
  object sdsItensDifal: TSQLDataSet
    CommandText = 
      'SELECT '#13#10' SUM(COALESCE(DET.VBCUFDEST, 0))  VBCUFDEST'#13#10', SUM(COAL' +
      'ESCE(DET.PFCPUFDEST , 0)) PFCPUFDEST'#13#10', SUM(COALESCE(DET.PICMSUF' +
      'DEST , 0)) PICMSUFDEST'#13#10', SUM(COALESCE(DET.PICMSINTER    , 0)) P' +
      'ICMSINTER'#13#10', SUM(COALESCE(DET.PICMSINTERPART, 0))  PICMSINTERPAR' +
      'T'#13#10', SUM(COALESCE(DET.VFCPUFDEST  , 0))  VFCPUFDEST'#13#10', SUM(COALE' +
      'SCE(DET.VICMSUFDEST , 0))  VICMSUFDEST'#13#10', SUM(COALESCE(DET.VICMS' +
      'UFREMET , 0)) VICMSUFREMET '#13#10'   FROM MOVIMENTO MOV, MOVIMENTODET' +
      'ALHE DET, PRODUTOS PRO'#13#10'WHERE MOV.CODMOVIMENTO = DET.CODMOVIMENT' +
      'O'#13#10'      AND PRO.CODPRODUTO     = DET.CODPRODUTO'#13#10'      AND MOV.' +
      'CODMOVIMENTO = :PMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 216
  end
  object dspItensDifal: TDataSetProvider
    DataSet = sdsItensDifal
    Left = 424
    Top = 216
  end
  object cdsItensDifal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensDifal'
    Left = 457
    Top = 216
    object cdsItensDifalVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
      ReadOnly = True
    end
    object cdsItensDifalPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
      ReadOnly = True
    end
    object cdsItensDifalPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
      ReadOnly = True
    end
    object cdsItensDifalPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
      ReadOnly = True
    end
    object cdsItensDifalPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
      ReadOnly = True
    end
    object cdsItensDifalVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
      ReadOnly = True
    end
    object cdsItensDifalVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
      ReadOnly = True
    end
    object cdsItensDifalVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
      ReadOnly = True
    end
  end
  object vcReportEstoque: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 265
    Top = 529
  end
end
