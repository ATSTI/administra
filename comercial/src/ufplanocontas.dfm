inherited fPlanoContas: TfPlanoContas
  Left = 210
  Top = 246
  Width = 808
  Height = 559
  Caption = 'Plano de Contas'
  OldCreateOrder = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 7
    Top = 62
    Width = 28
    Height = 13
    Caption = 'Conta'
  end
  object Label4: TLabel [1]
    Left = 247
    Top = 62
    Width = 58
    Height = 13
    Caption = 'C. Reduzido'
  end
  object Label5: TLabel [2]
    Left = 522
    Top = 62
    Width = 56
    Height = 13
    Caption = 'Desc. Cont.'
  end
  object Label6: TLabel [3]
    Left = 7
    Top = 97
    Width = 37
    Height = 16
    Caption = 'Grupo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel [4]
    Left = 410
    Top = 97
    Width = 67
    Height = 16
    Caption = 'Sub. Grupo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label8: TLabel [5]
    Left = 7
    Top = 114
    Width = 28
    Height = 13
    Caption = 'Conta'
  end
  object Label9: TLabel [6]
    Left = 98
    Top = 114
    Width = 46
    Height = 13
    Caption = 'Conta Pai'
  end
  object Label10: TLabel [7]
    Left = 191
    Top = 114
    Width = 48
    Height = 13
    Caption = 'Cod. Red.'
  end
  object Label11: TLabel [8]
    Left = 258
    Top = 114
    Width = 74
    Height = 13
    Caption = 'Nome da Conta'
  end
  object Label12: TLabel [9]
    Left = 418
    Top = 114
    Width = 77
    Height = 13
    Caption = 'Outra Descri'#231#227'o'
  end
  object Label13: TLabel [10]
    Left = 611
    Top = 115
    Width = 46
    Height = 13
    Caption = 'Consolida'
  end
  object Label14: TLabel [11]
    Left = 676
    Top = 115
    Width = 31
    Height = 13
    Caption = 'Rateio'
  end
  object lbl1: TLabel [12]
    Left = 719
    Top = 115
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 478
    Width = 800
    inherited btnGravar: TBitBtn
      Left = 232
    end
    inherited btnIncluir: TBitBtn
      Left = 232
    end
    inherited btnCancelar: TBitBtn
      Left = 345
    end
    inherited btnExcluir: TBitBtn
      Left = 345
    end
    inherited btnProcurar: TBitBtn
      Left = 7
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 458
    end
    object btnImprimir: TBitBtn
      Left = 120
      Top = 7
      Width = 103
      Height = 40
      Caption = '&Imprimir'
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = btnImprimirClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00101
        01000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000070707BFBF
        BF9898989E9E9E000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000050505D0D0D0B4B4B4B8B8
        B89F9F9FA2A2A29B9B9B989898020202000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0060606020202DBDBDBC8C8C8CDCDCDC5C5C58585
        85000000000000A4A4A4A2A2A2929292868686050505000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0050505000000E3E3E3D8D8D8D5D5D5BCBCBC888888888888BEBE
        BE9B9B9BA8A8A80000000101019B9B9B9696969C9C9C808080000000010101C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        030303000000EDEDEDE1E1E1E3E3E3C5C5C5848484898989BFBFBF979797DBDB
        DBA0A0A094949498989895959502020200000093939398989889898978787800
        0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
        FAFAFAF2F2F2EBEBEBC1C1C1838383878787CECECECCCCCCC4C4C49A9A9AD4D4
        D4A3A3A398989896969695959597979788888800000002020285858584848489
        8989777777060606000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0989898
        F5F5F5BFBFBF818181848484DBDBDBCBCBCBCBCBCBCFCFCFB6B6B6969696DDDD
        DD9F9F9F9D9D9D9D9D9D9999998585859797978282829C9C9C00000003030384
        84847676767474747A7A7A090909C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09B9B9B
        808080888888DCDCDCD9D9D9CCCCCCCBCBCBD0D0D0CACACACFCFCF9D9D9DD3D3
        D3939393A2A2A29696969898989292928585859797978B8B8B82828277777702
        0202030303757575777777000000C0C0C0C0C0C0C0C0C0C0C0C0969696939393
        EBEBEB9B9B9BD4D4D4D3D3D3DCDCDCD8D8D8C9C9C9CBCBCBCACACA999999D5D5
        D5A0A0A0959595A1A1A19696968484849B9B9B8383838080807E7E7E86868672
        7272777777000000010101000000C0C0C0C0C0C0C0C0C0C0C0C0999999F8F8F8
        EDEDEDA0A0A0D2D2D2D8D8D8D3D3D3D6D6D6D6D6D6CACACAD4D4D4999999F5F5
        F59C9C9CA6A6A69393938282829898988888888787877878788787877373738E
        8E8E797979767676737373020202010101C0C0C0C0C0C0C0C0C08F8F8FFFFFFF
        E7E7E7929292E6E6E6D5D5D5D9D9D9D9D9D9CCCCCCCFCFCFF2F2F29A9A9A8A8A
        8ABCBCBCB9B9B98787879A9A9A7F7F7F86868681818190909074747488888871
        71716D6D6D7F7F7F7676765F5F5F040404C0C0C0C0C0C0C0C0C09E9E9EFAFAFA
        ECECEC949494D3D3D3DBDBDBCECECECACACAF8F8F8FBFBFBBCBCBCC1C1C1C8C8
        C87F7F7F838383C2C2C2C4C4C48383838C8C8C8A8A8A6B6B6B8B8B8B79797978
        78787B7B7B7575756A6A6A6C6C6C000000C0C0C0C0C0C0C0C0C0999796F6F6F6
        E7E6E89FA1A2C5CAC8CAD2CBF0F8F1F3FAF7B9BCC4BCBEC8C8C9D3CBCED3C9CB
        CBC8C9C7C7C4C6838284818286C1C3C4BEBDBF77777789878777787675767475
        7777767676666567727173686567050303C0C0C0C0C0C0C0C0C09C9994FBF9F8
        E8E7F0979BA0EDFDF2E8FFE9B0CAB3AEC6BCBFCADE3B405F3A3E5BC3C7DAD3D7
        D87576728B858AC1BEC7BDBFC96D737A848589C5C3C3B4B0AF7877737B7F7A6F
        747263656676777B6763686660650E090BC0C0C0C0C0C0C0C0C09C9994FCFAFA
        F1F0FA8B9196788A7DB2CCB4B6D5BA7E998F616F85B8C0E59CA0C37B7E93767A
        7BD9DAD6D2CCD1C0B8C2BEBDC6BDBDC3020001868182797672C0BFBBB9BDB877
        7C7A797D7E6364686D676C6C6769040000C0C0C0C0C0C0C0C0C09B97969D9B9B
        F1F1F7DFE4E7B4C2B77A8D7C6C8270AEC3BBA3B0C079809B787C95DADDECD9DB
        DCD1D0CCD1CCCBD8CDCF0F03030B0000B7AFAFBAB6B5060705838886808583BB
        C0BFAAACAC666666666464686666050302C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        9E9D9F909292F4FCF5CFDDD2B9C8C07684827D868F626A77C0C3D1DADBE5D5D4
        D6DFDCD80B07020D0100C8AEA8FDE3DDF1E1DBB7B2AF000100BCC2C1C1C7C67F
        8483898B8BC0C1BFB7B5B4676662020000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0969A958C918FF8FEFDD2DADAB9BEBF838889777B7C8281830200
        01040000B2B0A6EDDDD0FFDED0572D20442B21E6DCD5CBCCCA000100787D7EBC
        C1C0ACADAB8B8A86848680C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0939399999A9EF7FBF6D6DBD2B6B7B3918F8E7671
        72BCB8B7EFEDE34030205C311EFFE4D2FFE8D9F6E7DEE5E2DD0002007D828182
        84848C8D8BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09A9A949A9C90FFFFF8D5D2CDC7C2
        C3888384E1DFD7F7E8D8FFDCC7FFFBE54D2917472F23F1E6DEC0BBB8060403C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09A998F9F9C97FAF5
        F78A8789E9E6E2F0E4D85E3925532710FFF0DEFFEADBFFECE1FDF0E8C8BFBB05
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09D9A
        9C9C9B9F848183F7ECE8FFECDCFFE9D5FFF7E55332224B2E20FFEEE3F5E5DECC
        C3C0050303C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C089878DF0EAEBFFF7EB4C33234B2D1CFFF3E3FFF8EAFFF4E6FFF1E9FD
        F2EEC1BFBF000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0878388FFFEF7FFFAEEFFF5E9FFFFF2FFEFE14E2E21463129F9
        EEEAF6F4F4B6B6BC04060E000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C083827EFCF6EFFFFBF2452C22492B20FFFAF0FFF8F1FF
        F6F2F9F7F7EEEFF38083887F8287C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C08B8884FFF6F4FFF9F6FFF4EFFFFDF8FFF4EEFF
        F9F4878584888A8AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0847F80FDF7F8FFFAFAFAF2F29089868D
        8885C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07C7F847F828784878BC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 800
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 238
      Top = 180
      Width = 312
      Caption = 'Plano de Contas'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 242
      Top = 180
      Width = 312
      Caption = 'Plano de Contas'
      Font.Name = 'Cooper Black'
    end
    object BitBtn8: TBitBtn
      Left = 42
      Top = 8
      Width = 130
      Height = 41
      Caption = 'ATIVO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 182
      Top = 8
      Width = 130
      Height = 41
      Caption = 'PASSIVO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 323
      Top = 8
      Width = 130
      Height = 41
      Caption = 'RECEITA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 604
      Top = 8
      Width = 149
      Height = 41
      Caption = 'C. RESULTADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 462
      Top = 8
      Width = 130
      Height = 41
      Caption = 'DESPESAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn12Click
    end
  end
  object Edit1: TEdit [15]
    Left = 46
    Top = 62
    Width = 145
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object Edit2: TEdit [16]
    Left = 322
    Top = 62
    Width = 145
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object ComboBox1: TComboBox [17]
    Left = 594
    Top = 62
    Width = 145
    Height = 24
    BevelKind = bkFlat
    DropDownCount = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object BitBtn1: TBitBtn [18]
    Left = 193
    Top = 62
    Width = 45
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [19]
    Left = 469
    Top = 62
    Width = 45
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn [20]
    Left = 741
    Top = 62
    Width = 45
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object ComboBox2: TComboBox [21]
    Left = 48
    Top = 94
    Width = 265
    Height = 24
    BevelKind = bkFlat
    DropDownCount = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 8
    Visible = False
    OnClick = ComboBox2Click
    OnKeyPress = FormKeyPress
  end
  object BitBtn4: TBitBtn [22]
    Left = 315
    Top = 94
    Width = 45
    Height = 25
    Caption = 'Incluir'
    TabOrder = 9
    Visible = False
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn [23]
    Left = 359
    Top = 94
    Width = 45
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 10
    Visible = False
    OnClick = BitBtn5Click
  end
  object ComboBox3: TComboBox [24]
    Left = 480
    Top = 94
    Width = 217
    Height = 24
    BevelKind = bkFlat
    DropDownCount = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 11
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object BitBtn6: TBitBtn [25]
    Left = 699
    Top = 94
    Width = 45
    Height = 25
    Caption = 'Incluir'
    TabOrder = 12
    Visible = False
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn [26]
    Left = 743
    Top = 94
    Width = 45
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 13
    Visible = False
    OnClick = BitBtn7Click
  end
  object DBEdit1: TDBEdit [27]
    Left = 7
    Top = 130
    Width = 90
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CONTA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [28]
    Left = 98
    Top = 130
    Width = 92
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CONTAPAI'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [29]
    Left = 191
    Top = 130
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODREDUZIDO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [30]
    Left = 258
    Top = 130
    Width = 159
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOME'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [31]
    Left = 418
    Top = 130
    Width = 192
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [32]
    Left = 7
    Top = 160
    Width = 786
    Height = 314
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 21
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTA'
        Title.Caption = 'Conta'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTAPAI'
        Title.Caption = 'Conta Pai'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODREDUZIDO'
        Title.Caption = 'C. Reduzido'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONSOLIDA'
        Title.Caption = 'Consolida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATEIO'
        Title.Caption = 'Rateio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox [33]
    Left = 611
    Top = 130
    Width = 62
    Height = 24
    BevelKind = bkFlat
    DataField = 'CONSOLIDA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'S'
      'N')
    ParentFont = False
    TabOrder = 19
  end
  object DBComboBox2: TDBComboBox [34]
    Left = 675
    Top = 130
    Width = 42
    Height = 24
    BevelKind = bkFlat
    DataField = 'RATEIO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'S'
      'N')
    ParentFont = False
    TabOrder = 20
  end
  object dbcbbRATEIO: TDBComboBox [35]
    Left = 718
    Top = 130
    Width = 67
    Height = 24
    BevelKind = bkFlat
    DataField = 'TIPOLANC'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'INTERNO'
      'DEBITO'
      'CREDITO'
      'VALE'
      'OUTROS'
      'CAIXINHA')
    ParentFont = False
    TabOrder = 22
  end
  inherited XPMenu1: TXPMenu
    Left = 600
    Top = 44
  end
  inherited PopupMenu1: TPopupMenu
    Left = 632
    Top = 44
  end
  inherited DtSrc: TDataSource
    DataSet = DM.c_1_planoc
    Left = 528
    Top = 44
  end
  object sds_desp: TSQLDataSet
    CommandText = 'select CODIGO, NOME, CONTA from PLANO  where  NOME  like  :PNOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PNOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 448
    Top = 44
  end
  object dsp_desp: TDataSetProvider
    DataSet = sds_desp
    Left = 472
    Top = 44
  end
  object cds_desp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PNOME'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_desp'
    Left = 504
    Top = 44
    object cds_despCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_despNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object cds_despCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
  end
  object sds_sub: TSQLDataSet
    CommandText = 'select NOME, CONTA from PLANO  where  CONTAPAI = :PCONTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 656
    Top = 52
  end
  object dsp_sub: TDataSetProvider
    DataSet = sds_sub
    Left = 696
    Top = 52
  end
  object cds_sub: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_sub'
    Left = 720
    Top = 52
    object cds_subNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object cds_subCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
  end
  object rep: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 632
    Top = 478
  end
end
