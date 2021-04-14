inherited fEstado: TfEstado
  Left = 237
  Top = 21
  Width = 980
  Height = 640
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Classifica'#231#227'o Fiscal por Estado'
  Font.Height = -13
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label18: TLabel [0]
    Left = 225
    Top = 57
    Width = 29
    Height = 16
    Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
    Anchors = [akTop]
    Caption = 'CST'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  inherited MMJPanel1: TMMJPanel
    Top = 559
    Width = 972
    inherited btnIncluir: TBitBtn [0]
      Left = 383
      Anchors = [akTop, akBottom]
    end
    inherited btnGravar: TBitBtn [1]
      Left = 383
      Anchors = [akTop, akBottom]
    end
    inherited btnCancelar: TBitBtn
      Left = 527
      Anchors = [akTop, akBottom]
    end
    inherited btnExcluir: TBitBtn
      Left = 527
      Anchors = [akTop, akBottom]
    end
    inherited btnProcurar: TBitBtn
      Left = 237
      Anchors = [akTop, akBottom]
      Caption = 'CFOP'
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 673
      Anchors = [akTop, akBottom]
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 972
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    Background.StartColor = clMoneyGreen
    inherited Label1: TLabel
      Top = -74
    end
    inherited Label2: TLabel
      Top = -75
    end
    object DBText2: TDBText
      Left = 16
      Top = 9
      Width = 657
      Height = 24
      DataField = 'CFNOME'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object Label3: TLabel
      Left = 9
      Top = 43
      Width = 39
      Height = 16
      Anchors = [akTop]
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 80
      Top = 44
      Width = 20
      Height = 16
      Hint = 'Estado'
      Anchors = [akTop]
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label5: TLabel
      Left = 114
      Top = 43
      Width = 76
      Height = 16
      Anchors = [akTop]
      Caption = 'Tipo Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 264
      Top = 136
      Width = 3
      Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 61
      Width = 66
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CFOP'
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
    object DBEdit2: TDBEdit
      Left = 77
      Top = 61
      Width = 28
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object CheckBox1: TCheckBox
      Left = 257
      Top = 61
      Width = 142
      Height = 13
      Anchors = [akTop]
      Caption = 'N'#227'o Gera Fatura'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 110
      Top = 61
      Width = 144
      Height = 24
      BevelKind = bkFlat
      Ctl3D = True
      DataField = 'CODFISCAL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODFISCAL'
      ListField = 'DESCRICAO'
      ListSource = DtSrcTFiscal
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object dxButton11: TdxButton
      Left = 911
      Top = 3
      Width = 56
      Height = 41
      Hint = 'Chat-Suporte'
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      Version = '1.0.2e'
      OnClick = dxButton11Click
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000C0B
        0B0029272700FEFBFB00F6F4F400FEFDFD00F2F1F100EAE9E900E4DDDB00FDFA
        F900FCF7F500F4EFED00CB957C00E8C8B900C4AEA400F5E0D700EDDCD400D7C7
        C000F4E5DE00F6E7E000E8DBD500DAD1CD00FAF1ED00BC562300CA5F2900BC58
        2700CA602B00C05C2900BD5A2800CB602C00CD632D00CB622D00C35E2B00BF5C
        2B00BB5B2A00CD642F00CB622E00BE5D2C00CB643000CA633000C05E2D00CD65
        3100C7633000C3602F00D0673300CC653200CC663300CB663300CA653300C663
        3200C5633200C2613100CE683500CC673400CA653400CA663400C8653300C764
        3300CD683500C9653400C8663400D56D3800D26B3700CE693600CD683600D06B
        3800CE6A3700CB683600BE613300D26C3900CF6B3900C7673700D36E3B00D26D
        3B00D16C3A00D26E3C00C96A3A00C6693900C2663800DF764100D8723F00D571
        3E00CF6E3E00E0774400D8744100DA764400E47C4800DF794600DC784600CC71
        4300E27E4C00C46E4300E8835000F0895500EC865300D2774A00F6915D00C674
        4B00C0704800FA946100D37D5200EC926500C47B5600DB8B6300D4876100BE7A
        5800C8815E00F19C7300DB916C00CC876600E6A17E00CD907100DFA08100D098
        7C00E6AA8C00BB8C7500DDA68B00DCA88F00D1A18900E7B49A00D5AB9600C69F
        8C00E6BBA600DCB8A600C5AA9D00FADBCB00201C1A00544A4500352F2C005C52
        4D00F8DFD300DCC7BD00D1BDB300EEDBD200F4E2D900EADAD200C6BAB400F7E9
        E200F6E8E100F8ECE600EDE3DE00F8EEE900F5EDE900FCF6F300FEFAF800EBE7
        E500ECEAE900C7C5C400FFA36F00FEA37300FEAC7D00FBC9AE00E9C1AC008173
        6B008B7C7400B9A69C00A2928900D4C0B500DFCABF00B6A59C00E9D5CA00E7D3
        C800F2DDD200F0DCD100EFDBD000F2DED300F1DDD200ECD9CE00F1DED300BBAC
        A400F3E0D600F2DFD500F3E2D900F5E5DC00F5E6DE00F3E5DD00E5D8D100F7EA
        E300F6EBE500F4E9E300C9C2BE00F7B38900FFE3D200B2A1970083777000E1CD
        C100C9B7AC00746A6400F5E4DA00605B5800F7ECE500FEF6F100F6F1EE00FFB5
        8100BCB9B700FFBB8700FCF8F500FEBF8D00FFC99700FDF5EE00FFEAD6000000
        0000F3F2F100FFD7AB00FFD19C00FFE9C700FFF6E800FFE8B600FFF6C300FFFB
        D100FFFDE500FFFEED00FFFFFD00F6F6F500F4F4F300EDEDEC00FCFFFF00EFF2
        F200EFF1F100F6F7F700F4F5F500F7FBFC00F6FAFB00F0F4F500E4EAEC00FAFD
        FE00E8EBEC00EEF3F500F5FCFF00F5F9FB00F1F5F700F6F8F900ECEEEF00F1F6
        F900EDF0F200DFE2E400F7F9FB00EDEFF100F5F6F700F3F4F500F2F3F400F1F2
        F300F0F1F200F9F9FA00FFFFFF00F1F1F100777777006C6C6C00555555004444
        44003C3C3C0036363600161616000202020000000000FFFFFF00B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B80201FEFEFEFEFEFDFCFAB4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B8B8BAA1A3A3A3A3A3A49E9F02FD02B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4BBA0AAB30BD6EFF1F1F1068EAFA4BA80FDF7B4B4B4B4B4B4B4B4B4B4B4B4B4
        9DABC0EFF1E8EBEBE2EDEDEAEAD9CAB3A49AFEFAB4B4B4B4B4B4B4B4B4B4B4A1
        B2DCF2EA080E736966666F78B907EAF204AC9BFEFAB4B4B4B4B4B4B4B4B4A7C0
        EFDF917862221C446A611719446D83EADADC129BFEF7B4B4B4B4B4B4B49DC0DC
        DFB06A1C212B4E7CE88E68202819447607DAEEAC9AFDB4B4B4B4B4B49D8ADBE9
        B95B1C3331246993F3F40D2A3132281C6F92F1DBA67FFCB4B4B4B4B4A8F3DC14
        5B1B32382F2962C2F4E4752430382A331971EDF08E8301B4B4B4B49D8DE7F56D
        1B393B35352E266D0D7543262E2E30312B257BE6EEAB81FCB4B4B4A4F3DE982B
        31373535352E2D1E1A18242E2E2E2F3039286191DC8E83FDB4B49DADF3D66D20
        37403A352E2D370C989864242E2E35353632217BE5D5A47EF6B4A58DE110473C
        40403A2E2E2D4788F4F46C182E2E35352F381B6DF5ECAB99F9B4A6C4D87A2A40
        41342E2E2E2D380ED8F472182E2E2E353A352B618CECAEB7FBB4A305F4753046
        41342E2E2E2E2373E0F416671A2E2E353A40384D87DDB3A9FBB4A3D4F470344B
        4A3F2E2E2E2E294D9BE9F416671A2E353F3F374CA7E1B20EFBB4A305F4724551
        483F2E2E2E2E2E234D0EDEF416681F353F46404C85D8BEA9FAB4A303F4775055
        5141352E2E2E2E2E234D84D8F40F52294149425912F4B1A9F8B4A28FF47D575A
        5548341E1D1A262E2E1E6191F4D46C2349513F688FF4AD9CF6B4AA8BF490655C
        5A50526F757A641F2E2E27B9F4F4772C51543E72F4D4A381B4B41586F4F4975D
        5D565FB4E9F49818241D598CF4E1743D58585582F409A7F9B4B4B4A609F4BF95
        63605679E6F405775F640DD8F4D76C4F5A5372F4F48AB7B4B4B4B49D13F4F4B6
        9494636793E1F4F48FC4F4F4DD9E5C5E5C65C7F403A4BDB4B4B4B4B4A609F4F4
        CDC1C1946E15E3E5DDDDDDE9876B606363B6F4F4899BB4B4B4B4B4B49DAAF4F4
        F4C8CCC6C3B5988311119E9896949496C8F4F40AA0C2B4B4B4B4B4B4B49D13F4
        F4F4D3CDCFCBCCC6C5C5C5C3C3C5CB90F4F405A3A9B4B4B4B4B4B4B4B4B49D13
        F4F4F4F4D3D2D1D0CFCFCFCFCDCEF4F4F409A388B4B4B4B4B4B4B4B4B4B4B49D
        AA0AF4F4F4F4F4D4D4D4D4D4F4F4F4F48DA49DB4B4B4B4B4B4B4B4B4B4B4B4B4
        9DA6AEC4F4F4F4F4F4F4F4F4F40316ABA1B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B49DA5AA8A160903030A8DADA4A7B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B415BCABA6A6A6A8AA9DB4B4B4B4B4B4B4B4B4B4B4B4B4}
      TabOrder = 4
    end
    object GroupBox2: TGroupBox
      Left = 629
      Top = 48
      Width = 113
      Height = 121
      Caption = 'IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      DesignSize = (
        113
        121)
      object Label15: TLabel
        Left = 3
        Top = 16
        Width = 27
        Height = 16
        Cursor = crHandPoint
        Anchors = [akTop]
        Caption = 'CST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label15Click
      end
      object Label7: TLabel
        Left = 3
        Top = 45
        Width = 34
        Height = 16
        Hint = 'Imposto sobre produtos industrializados'
        Anchors = [akTop]
        Caption = 'Aliq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label22: TLabel
        Left = 3
        Top = 73
        Width = 33
        Height = 16
        Hint = 'Imposto sobre produtos industrializados'
        Anchors = [akTop]
        Caption = 'Enq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object DBEdit12: TDBEdit
        Left = 42
        Top = 16
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CSTIPI'
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
      object DBEdit5: TDBEdit
        Left = 42
        Top = 45
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'IPI'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit23: TDBEdit
        Left = 42
        Top = 76
        Width = 53
        Height = 24
        Hint = 'C'#243'digo de Enquadramento Legal do IPI'
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CST_IPI_CENQ'
        DataSource = DtSrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 742
      Top = 48
      Width = 113
      Height = 121
      Caption = 'PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      DesignSize = (
        113
        121)
      object Label16: TLabel
        Left = 6
        Top = 17
        Width = 25
        Height = 16
        Cursor = crHandPoint
        Anchors = [akTop]
        Caption = 'CST'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label16Click
      end
      object Label9: TLabel
        Left = 2
        Top = 46
        Width = 34
        Height = 16
        Hint = 'Programa de Integra'#231#227'o Social'
        Anchors = [akTop]
        Caption = 'Aliq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object DBEdit13: TDBEdit
        Left = 44
        Top = 17
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CSTPIS'
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
      object DBEdit10: TDBEdit
        Left = 44
        Top = 46
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PIS'
        DataSource = DtSrc
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
    object GroupBox4: TGroupBox
      Left = 855
      Top = 48
      Width = 113
      Height = 121
      Caption = 'COFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      DesignSize = (
        113
        121)
      object Label17: TLabel
        Left = 5
        Top = 17
        Width = 25
        Height = 16
        Cursor = crHandPoint
        Anchors = [akTop]
        Caption = 'CST'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label17Click
      end
      object Label14: TLabel
        Left = 4
        Top = 49
        Width = 34
        Height = 16
        Hint = 'Contribui'#231#227'o para o Financiamento da Seguridade Social'
        Anchors = [akTop]
        Caption = 'Aliq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object DBEdit14: TDBEdit
        Left = 46
        Top = 17
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CSTCOFINS'
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
      object DBEdit11: TDBEdit
        Left = 47
        Top = 49
        Width = 51
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'COFINS'
        DataSource = DtSrc
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
    object GroupBox5: TGroupBox
      Left = 403
      Top = 48
      Width = 113
      Height = 121
      Caption = 'ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      DesignSize = (
        113
        121)
      object Label13: TLabel
        Left = 4
        Top = 20
        Width = 27
        Height = 16
        Cursor = crHandPoint
        Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
        Anchors = [akTop]
        Caption = 'CST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        OnClick = Label13Click
      end
      object Label21: TLabel
        Left = 5
        Top = 51
        Width = 34
        Height = 16
        Anchors = [akTop]
        Caption = 'Aliq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 5
        Top = 83
        Width = 39
        Height = 16
        Anchors = [akTop]
        Caption = 'R. BC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBEdit9: TDBEdit
        Left = 50
        Top = 21
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CST'
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
      object DBEdit3: TDBEdit
        Left = 50
        Top = 51
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ICMS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit4: TDBEdit
        Left = 50
        Top = 83
        Width = 53
        Height = 24
        Hint = 'Redu'#231#227'o da Base de C'#225'lculo'
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'REDUCAO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox6: TGroupBox
      Left = 516
      Top = 48
      Width = 113
      Height = 121
      Caption = 'ICMS ST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      DesignSize = (
        113
        121)
      object Label10: TLabel
        Left = 6
        Top = 20
        Width = 35
        Height = 16
        Hint = 'Margem De Valor Agregado(ST)'
        Anchors = [akTop]
        Caption = 'MVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label11: TLabel
        Left = 4
        Top = 52
        Width = 48
        Height = 15
        Anchors = [akTop]
        Caption = 'Origem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 5
        Top = 84
        Width = 34
        Height = 16
        Anchors = [akTop]
        Caption = 'Dest.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBEdit6: TDBEdit
        Left = 52
        Top = 21
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ICMS_SUBSTRIB'
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
      object DBEdit7: TDBEdit
        Left = 52
        Top = 53
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ICMS_SUBSTRIB_IC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit8: TDBEdit
        Left = 52
        Top = 85
        Width = 53
        Height = 24
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ICMS_SUBSTRIB_IND'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox7: TGroupBox
      Left = 5
      Top = 87
      Width = 113
      Height = 43
      Caption = 'Simples'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      DesignSize = (
        113
        43)
      object Label19: TLabel
        Left = 4
        Top = 17
        Width = 46
        Height = 16
        Cursor = crHandPoint
        Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
        Anchors = [akTop]
        Caption = 'CSOSN'
        DragCursor = crDefault
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        OnClick = Label19Click
      end
      object DBEdit21: TDBEdit
        Left = 55
        Top = 15
        Width = 53
        Height = 22
        Hint = 
          'A partir da vers'#227'o 2.00 do leiaute da NF-e, o contribuinte emiss' +
          'or do SIMPLES NACIONAL deve informar um dos seguintes C'#243'digo de ' +
          'Situa'#231#227'o da Opera'#231#227'o - SIMPLES NACIONAL (CSOSN) em substitui'#231#227'o ' +
          'ao CST:'#13#10#13#10'    101 - Tributada pelo Simples Nacional com permiss' +
          #227'o de cr'#233'dito;'#13#10'    102 - Tributada pelo Simples Nacional sem pe' +
          'rmiss'#227'o de cr'#233'dito;'#13#10'    103 - Isen'#231#227'o do ICMS no Simples Nacion' +
          'al para faixa de receita bruta;'#13#10'    201 - Tributada pelo Simple' +
          's Nacional com permiss'#227'o de cr'#233'dito e com cobran'#231'a do ICMS por s' +
          'ubstitui'#231#227'o tribut'#225'ria;'#13#10'    202 - Tributada pelo Simples Nacion' +
          'al sem permiss'#227'o de cr'#233'dito e com cobran'#231'a do ICMS por substitui' +
          #231#227'o tribut'#225'ria;'#13#10'    203 - Isen'#231#227'o do ICMS no Simples Nacional p' +
          'ara faixa de receita bruta e com cobran'#231'a do ICMS por substitui'#231 +
          #227'o tribut'#225'ria;'#13#10'    300 - Imune;'#13#10'    400 - N'#227'o tributada pelo S' +
          'imples Nacional;'#13#10'    500 - ICMS cobrado anteriormente por subst' +
          'itui'#231#227'o tribut'#225'ria (substitu'#237'do) ou por antecipa'#231#227'o;'#13#10'    900 - ' +
          'Outros.'
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CSOSN'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox8: TGroupBox
      Left = 5
      Top = 124
      Width = 113
      Height = 45
      Caption = 'Cupom'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      DesignSize = (
        113
        45)
      object Label20: TLabel
        Left = 5
        Top = 18
        Width = 38
        Height = 16
        Hint = 'Contribui'#231#227'o para o Financiamento da Seguridade Social'
        Anchors = [akTop]
        Caption = 'Aliq. '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object DBEdit22: TDBEdit
        Left = 55
        Top = 19
        Width = 53
        Height = 21
        Hint = 
          'II (ii) para ISENTO'#13#10'FF  Produto com Substitui'#231#227'o Tributaria'#13#10'Pr' +
          'odutos Tributados informar a Aliquota :  1800  0700  1200'
        Anchors = [akTop]
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ALIQ_CUPOM'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox9: TGroupBox
      Left = 119
      Top = 88
      Width = 284
      Height = 81
      Caption = 'ICMS UF destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      DesignSize = (
        284
        81)
      object Label8: TLabel
        Left = 4
        Top = 21
        Width = 77
        Height = 15
        Hint = 'Margem De Valor Agregado(ST)'
        Anchors = [akTop]
        Caption = 'FCP UF D.%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label23: TLabel
        Left = 2
        Top = 47
        Width = 86
        Height = 15
        Hint = 'Margem De Valor Agregado(ST)'
        Anchors = [akTop]
        Caption = 'ICMS UF D.%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label24: TLabel
        Left = 147
        Top = 24
        Width = 75
        Height = 15
        Hint = 'Margem De Valor Agregado(ST)'
        Anchors = [akTop]
        Caption = 'Aliq. Inter.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label25: TLabel
        Left = 153
        Top = 52
        Width = 71
        Height = 15
        Hint = 'Margem De Valor Agregado(ST)'
        Anchors = [akTop]
        Caption = 'Perc. Part.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Cooper Blk BT'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object DBEdit41: TDBEdit
        Left = 92
        Top = 22
        Width = 53
        Height = 24
        Hint = 
          'Percentual do ICMS relativo ao Fundo de Combate '#224' Pobreza (FCP) ' +
          'na UF de destino'
        DataField = 'PFCPUFDEST'
        DataSource = DtSrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit42: TDBEdit
        Left = 92
        Top = 49
        Width = 53
        Height = 24
        Hint = 
          'Al'#237'quota interna da UF de destino'#13#10'Al'#237'quota adotada nas opera'#231#245'e' +
          's internas na UF de destino para o'#13#10'produto / mercadoria.'
        DataField = 'PICMSUFDEST'
        DataSource = DtSrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object DBEdit35: TDBEdit
        Left = 225
        Top = 22
        Width = 53
        Height = 24
        Hint = 
          'Al'#237'quota interestadual das UF envolvidas:'#13#10'- 4% al'#237'quota interes' +
          'tadual para produtos importados;'#13#10'- 7% para os Estados de origem' +
          ' do Sul e Sudeste (exceto ES),'#13#10'destinado para os Estados do Nor' +
          'te, Nordeste, Centro-'#13#10'Oeste e Esp'#237'rito Santo;'#13#10'- 12% para os de' +
          'mais casos.'
        DataField = 'PICMSINTER'
        DataSource = DtSrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit36: TDBEdit
        Left = 225
        Top = 49
        Width = 53
        Height = 24
        Hint = 
          'Percentual provis'#243'rio de partilha de ICMS Interestadual'#13#10'Percent' +
          'ual de ICMS Interestadual para a UF de destino:'#13#10'- 40% em 2016;'#13 +
          #10'- 60% em 2017;'#13#10'- 80% em 2018;'#13#10'- 100% a partir de 2019.'
        DataField = 'PICMSINTERPART'
        DataSource = DtSrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 326
    Width = 972
    Height = 233
    Align = alClient
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFNOME'
        Title.Caption = 'CFOP - Nome'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSOSN'
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
        FieldName = 'REDUCAO'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTIPI'
        Title.Caption = 'CST IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB'
        Title.Caption = 'MVA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IC'
        Title.Caption = 'ICMS Origem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IND'
        Title.Caption = 'ICMS Destino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTPIS'
        Title.Caption = 'CST PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTCOFINS'
        Title.Caption = 'CST COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFISCAL'
        Title.Caption = 'Codigo Fiscal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC1'
        Title.Caption = 'Dados Adicionais 1'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC2'
        Title.Caption = 'Dados Adicionais 2'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC3'
        Title.Caption = 'Dados Adicionais 3'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC4'
        Title.Caption = 'Dados Adicionais 4'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC5'
        Title.Caption = 'Dados Adicionais 5'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC6'
        Title.Caption = 'Dados Adicionais 6'
        Width = 700
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 177
    Width = 972
    Height = 149
    Align = alTop
    Caption = 'Dados Adicionais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      972
      149)
    object DBEdit15: TDBEdit
      Left = 155
      Top = 13
      Width = 627
      Height = 21
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC1'
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
    object DBEdit16: TDBEdit
      Left = 155
      Top = 33
      Width = 627
      Height = 21
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC2'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 155
      Top = 55
      Width = 627
      Height = 21
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC3'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit18: TDBEdit
      Left = 155
      Top = 77
      Width = 627
      Height = 22
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC4'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit19: TDBEdit
      Left = 155
      Top = 100
      Width = 627
      Height = 22
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC5'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 155
      Top = 123
      Width = 627
      Height = 22
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC6'
      DataSource = DtSrc
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
  object panelAjuda: TPanel [5]
    Left = 144
    Top = 161
    Width = 665
    Height = 352
    TabOrder = 4
    Visible = False
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 663
      Height = 350
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 488
  end
  inherited PopupMenu1: TPopupMenu
    Left = 536
  end
  inherited DtSrc: TDataSource
    DataSet = cds_estado
    Left = 408
  end
  object sds: TSQLDataSet
    CommandText = 
      'select esta.CODESTADO, esta.CFOP'#13#10'        , esta.UF        , est' +
      'a.ICMS'#13#10'        , esta.REDUCAO        , cfo.CFNOME'#13#10'        , es' +
      'ta.IPI         , esta.CSTIPI'#13#10'        , esta.ICMS_SUBSTRIB, esta' +
      '.ICMS_SUBSTRIB_IC'#13#10'        , esta.ICMS_SUBSTRIB_IND, esta.CST'#13#10' ' +
      '       , esta.PIS , esta.COFINS , esta.CSTPIS , esta.CSTCOFINS'#13#10 +
      '        , esta.DADOSADC1        , esta.DADOSADC2'#13#10'        , esta' +
      '.DADOSADC3        , esta.DADOSADC4'#13#10'        , esta.DADOSADC5    ' +
      '    , esta.DADOSADC6'#13#10'        , esta.NAOENVFATURA, esta.CSOSN, e' +
      'sta.CODFISCAL'#13#10'        , esta.ALIQ_CUPOM  '#13#10'        , esta.VBCUF' +
      'DEST   '#13#10'        , esta.PFCPUFDEST '#13#10'        , esta.PICMSUFDEST ' +
      #13#10'        , esta.PICMSINTER '#13#10'        , esta.PICMSINTERPART  '#13#10' ' +
      '       , esta.VFCPUFDEST '#13#10'        , esta.VICMSUFDEST '#13#10'        ' +
      ', esta.VICMSUFREMET '#13#10'        , esta.CST_IPI_CENQ '#13#10'FROM ESTADO_' +
      'ICMS esta '#13#10'left outer join CFOP cfo on cfo.CFCOD = esta.CFOP '#13#10 +
      'order by esta.CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 288
    Top = 8
    object sdsUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object sdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object sdsCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object sdsIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCFOP: TStringField
      DisplayWidth = 30
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sdsICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object sdsICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object sdsICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object sdsCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sdsCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsPIS: TFloatField
      FieldName = 'PIS'
    end
    object sdsCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object sdsCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object sdsDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object sdsDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object sdsDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object sdsNAOENVFATURA: TStringField
      FieldName = 'NAOENVFATURA'
      FixedChar = True
      Size = 1
    end
    object sdsDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object sdsDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object sdsCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sdsCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsALIQ_CUPOM: TStringField
      FieldName = 'ALIQ_CUPOM'
      FixedChar = True
      Size = 4
    end
    object sdsVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
    end
    object sdsPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
    end
    object sdsPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
    end
    object sdsPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
    end
    object sdsPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
    end
    object sdsVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
    end
    object sdsVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
    end
    object sdsVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
    end
    object sdsCST_IPI_CENQ: TStringField
      FieldName = 'CST_IPI_CENQ'
      FixedChar = True
      Size = 3
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 328
    Top = 8
  end
  object cds_estado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    OnPostError = cds_estadoPostError
    OnReconcileError = cds_estadoReconcileError
    Left = 368
    Top = 8
    object cds_estadoCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_estadoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object cds_estadoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds_estadoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object cds_estadoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object cds_estadoICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object cds_estadoICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object cds_estadoCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cds_estadoCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_estadoPIS: TFloatField
      FieldName = 'PIS'
    end
    object cds_estadoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object cds_estadoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cds_estadoCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cds_estadoCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cds_estadoDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object cds_estadoDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object cds_estadoDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object cds_estadoDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object cds_estadoNAOENVFATURA: TStringField
      FieldName = 'NAOENVFATURA'
      FixedChar = True
      Size = 1
    end
    object cds_estadoDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object cds_estadoDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object cds_estadoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cds_estadoCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      FixedChar = True
      Size = 1
    end
    object cds_estadoALIQ_CUPOM: TStringField
      FieldName = 'ALIQ_CUPOM'
      FixedChar = True
      Size = 4
    end
    object cds_estadoVBCUFDEST: TFloatField
      FieldName = 'VBCUFDEST'
    end
    object cds_estadoPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
    end
    object cds_estadoPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
    end
    object cds_estadoPICMSINTER: TFloatField
      FieldName = 'PICMSINTER'
    end
    object cds_estadoPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
    end
    object cds_estadoVFCPUFDEST: TFloatField
      FieldName = 'VFCPUFDEST'
    end
    object cds_estadoVICMSUFDEST: TFloatField
      FieldName = 'VICMSUFDEST'
    end
    object cds_estadoVICMSUFREMET: TFloatField
      FieldName = 'VICMSUFREMET'
    end
    object cds_estadoCST_IPI_CENQ: TStringField
      FieldName = 'CST_IPI_CENQ'
      FixedChar = True
      Size = 3
    end
  end
  object sdsTFiscal: TSQLDataSet
    CommandText = 'select * from TIPO_FISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 588
    Top = 7
    object sdsTFiscalCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsTFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object dspTFiscal: TDataSetProvider
    DataSet = sdsTFiscal
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 626
    Top = 7
  end
  object cdsTFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTFiscal'
    Left = 657
    Top = 7
    object cdsTFiscalCODFISCAL: TStringField
      FieldName = 'CODFISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object DtSrcTFiscal: TDataSource
    DataSet = cdsTFiscal
    Left = 695
    Top = 6
  end
end
