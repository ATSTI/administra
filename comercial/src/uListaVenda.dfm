inherited fListaVenda: TfListaVenda
  Left = 175
  Top = 36
  Width = 801
  Height = 659
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 483
    Width = 793
    Height = 149
    object Label7: TLabel [0]
      Left = 11
      Top = 5
      Width = 37
      Height = 13
      Caption = 'Produto'
    end
    object Label13: TLabel [1]
      Left = 8
      Top = 49
      Width = 67
      Height = 13
      Caption = 'Pre'#231'o Compra'
    end
    object Label14: TLabel [2]
      Left = 99
      Top = 51
      Width = 83
      Height = 13
      Caption = 'Margem p/Venda'
    end
    object Label12: TLabel [3]
      Left = 200
      Top = 51
      Width = 62
      Height = 13
      Caption = 'Pre'#231'o Venda'
    end
    object Label8: TLabel [4]
      Left = 336
      Top = 51
      Width = 72
      Height = 13
      Caption = 'Desconto Max.'
    end
    object Label9: TLabel [5]
      Left = 416
      Top = 51
      Width = 69
      Height = 13
      Caption = 'Desconto Min.'
    end
    object Label10: TLabel [6]
      Left = 508
      Top = 51
      Width = 64
      Height = 13
      Caption = 'Margem Max.'
    end
    object Label11: TLabel [7]
      Left = 584
      Top = 51
      Width = 61
      Height = 13
      Caption = 'Margem Min.'
    end
    inherited btnGravar: TBitBtn
      Left = 467
      Top = 104
      TabOrder = 11
    end
    inherited btnIncluir: TBitBtn
      Left = 466
      Top = 104
      TabOrder = 8
    end
    inherited btnCancelar: TBitBtn
      Left = 572
      Top = 104
      TabOrder = 12
    end
    inherited btnExcluir: TBitBtn
      Left = 572
      Top = 104
      TabOrder = 9
    end
    inherited btnProcurar: TBitBtn
      Left = 360
      Top = 104
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 677
      Top = 104
      TabOrder = 10
    end
    object DBEdit1: TDBEdit
      Left = 55
      Top = 4
      Width = 638
      Height = 21
      DataField = 'PRODUTO'
      DataSource = dtsrcDet
      TabOrder = 13
    end
    object chkPermite: TDBCheckBox
      Left = 157
      Top = 27
      Width = 154
      Height = 17
      Caption = 'Permite Altera'#231#227'o na Venda'
      DataField = 'ALTPRECO'
      DataSource = dtsrcDet
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit7: TDBEdit
      Left = 8
      Top = 65
      Width = 80
      Height = 21
      DataField = 'PRECOCOMPRA'
      DataSource = dtsrcDet
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 95
      Top = 65
      Width = 89
      Height = 21
      DataSource = dtsrcDet
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 196
      Top = 65
      Width = 114
      Height = 21
      DataField = 'PRECOVENDA'
      DataSource = dtsrcDet
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 336
      Top = 65
      Width = 75
      Height = 21
      DataField = 'DESCONTOMAX'
      DataSource = dtsrcDet
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 416
      Top = 65
      Width = 75
      Height = 21
      DataField = 'DESCONTOMIN'
      DataSource = dtsrcDet
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 506
      Top = 65
      Width = 70
      Height = 21
      DataField = 'MARGEMMAX'
      DataSource = dtsrcDet
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 582
      Top = 65
      Width = 70
      Height = 21
      DataField = 'MARGEMMIN'
      DataSource = dtsrcDet
      TabOrder = 7
    end
    object chkDesconto: TDBCheckBox
      Left = 349
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Usa Desconto'
      DataField = 'DESCONTO'
      DataSource = dtsrcDet
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = chkDescontoClick
    end
    object chkMargem: TDBCheckBox
      Left = 509
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Usa Margem'
      DataField = 'MARGEM'
      DataSource = dtsrcDet
      TabOrder = 16
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = chkMargemClick
    end
    object btnImprimir: TBitBtn
      Left = 254
      Top = 104
      Width = 103
      Height = 40
      BiDiMode = bdLeftToRight
      Caption = '&Imprimir'
      ParentBiDiMode = False
      PopupMenu = PopupMenu1
      TabOrder = 17
      OnClick = btnImprimirClick
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
      Margin = 0
    end
    object btnAumento: TBitBtn
      Left = 144
      Top = 104
      Width = 107
      Height = 40
      Caption = 'Aumento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = btnAumentoClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0ADD2B02A71
        32196E2313741D0F761B11751B15741D1A6F242C7233ACD4B1C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C049854F1773200F77180C77
        170E791C0A781A08781A08781A0A78180C78180C77160D781718731E558E5BC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D2F1D41871211078190D781808781A118A
        2F22A2492CB65E2AB55D2AB65B37BD6324A2491389300A781A0D78180F77181F
        7128C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C028762F12771B0C771A1B91403EC3732DBE691EC0
        6117C16113C15D0FC05914C15F19BF6021C26626BF6938C1704DCA7B20903C0D
        771A11761A28772EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C01D6E2512771B10781B52C87D40C17635C06F2BBF6B1CBF
        631EBB601BB15819A9561FAF5C23B05F22B46228BF6937C17443C1794DC27D54
        C27A0E781B14771B1F6E25C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C028762F0F77180F771A36A25644BF7B3BC17533C06F28BF6920BF
        63429F689AC4AB97BAA696B9A593BAA54F9E722ABD6836C17040C1764AC17D4F
        BE80379E5310781B10761728742DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C6E6C713761A0C751A4FB56E57C28448C07F40C17636C07229BC6A23BF
        684F956CE9F3EDE0DFE1D7D6D8BBC2BF5E91752DBD6A38C07240C0784AC07F50
        BE8364C88E52B3700F771A13751BCDECCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C01C70220C741C6DCD8D62C98C58C2874CC07D42C07839C07430C06D27BD
        694F956DF1FBF5F8F8F8F0F1EFCCD1CF62927635BF713BC17541BF774AC17D51
        BF8460C68C66C78F6CCD8D0C761D1A7022C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        629B6811781724853B69C88F62C88E5CC68B4EC08043C07A3CC27635C06F2EC0
        6E569672F2FCF6F8F8F8F0F0F0CED1CF63907539BF733FBF7744C07A4CC07D53
        BF8460C68C69C7906DC89023863E0F7718649868C0C0C0C0C0C0C0C0C0C0C0C0
        1973200F771875CF946BC79267C88F5FC68C4DC18047C07C40C0783AC17535BF
        71589573F1FBF5F8F8F8F0F0F0CCD1CF6390753FBF7842BF7948C17D4EC08057
        C18660C78A67C88F6DC89173CD910F771818721FC0C0C0C0C0C0C0C0C0B4DAB6
        11771810761E73CB966BC89167C88F5FC78A4EC08048C07F43C07840C0783BC0
        775A9674F2F9F4F8F8F8F0F0F0CDD0CE66917642BF7A46C17D49C07C4EC08055
        C18660C88965C8906CC99272CB930C741C127819A7D2ADC0C0C0C0C0C0307836
        0F771825853875CA986DC79264B48556A57A4FA2754DA47249A36E47A16C48A1
        6F58826BF5FAF8F9F9F9EFEFEFCDD2D06C89794B9F6F4DA3734EA37653A27655
        A2765AA47A62AF836CC6916FC791278C3E0F77182C7636C0C0C0C0C0C01F7926
        0E761737994D70C9976AC79080AD93BBCFC3B2C6BAAEBEB7ACBFB6ADC0B7B3C7
        BBCED5D0F1F1F1F8F8F8F7F7F7E0E0E0C4CAC5B3C4B9AFC0B7AFC0B7AFBFB8B0
        BEB8ACBDB48CB09F6DC49268C68F4FB4690F771A177020C0C0C0C0C0C012731C
        0F771853B5696DC7926CC69193B19EEEF0F0E0E0E0E3E1E1E2DFE1E2DFE1E0E0
        E0EAE7E9F8F8F8F8F8F8FAF8F8F0F0F0EAE7E9E0E0E0E0E0E0E2DFE1E2DFE1E2
        DFE1C8C9C795AC9E6CC69169C79065C57F12791E13751BC0C0C0C0C0C00F761B
        0F771A51B5696AC8926AC8928DB39DF4F9F7F8F8F8F8F8F8F8F8F8F8F8F8F9F9
        F9F9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F8F9F7F8F9F7F8F8F8F8F8F8F9
        F9F9D0D0D094AE9E6DC79267C89065C48112782011751BC0C0C0C0C0C012761E
        0E76174CB26462C98C61C68F8CB39EF4F9F7F8F8F8F8F8F8F7F7F7F8F8F8F7F7
        F7F8F8F8F8F8F8F9F9F9F8F7F9F8F8F8F7F7F7F8F9F7F8F8F8F8F8F8FAF8F8F6
        F8F8E6E8E89BB5A764C58D61C88E62C57F12782011751BC0C0C0C0C0C0187622
        0F771A47AD6060C8895FC68C8BBEA2E8FEF2ECFDF2ECFDF4ECFDF4EDFCF4EDFC
        F4F4F9F7F8F8F8F8F8F8FAF8F8F8F8F8F4F9F7F0FDF5EEFDF5EDFCF4EDFCF4EC
        FDF4ECFDF4BAE1CC68C68F61C98861C47E11771F13741DC0C0C0C0C0C0277930
        0F7718298F3E5AC18859C0865DBB855BAB7C64B18566B38767B1876EB38E76B2
        90738D7DF6F9F7F8F8F8F1F1F1DEE0E08A9E927DB39574B28E74B18F70B38E67
        B08865B2865EB58362C68A61C98A47AD600F771A196F21C0C0C0C0C0C04E8D55
        0F78171078215AC08657C18656BF8656BF8662C98C68C9906AC79074C99780C8
        9D7A9787F4F9F7F8F9F7F1F1F1D0D1CF7C928688C8A47FCA9E77C79873C89468
        C68F65C8905FC78A60C8895BC1871F86350E7617347A3BC0C0C0C0C0C0C0C0C0
        13741D0D771A61CB8957C18657C18659C18465C98F6AC79077C8997FC99F8CCB
        A4819A8CF6F8F8F8F8F8EFEFEFD0D0D07F91848FC8A787C8A182CA9F77C79872
        CA9565C89061C88B60C88964C98B0D761B0F7718B4DCB9C0C0C0C0C0C0C0C0C0
        2B743010791857BC7854BF8157C0875AC08667C79172CA957AC79B87C8A193C7
        A985988FF6F8F8F9F9F9F0F0F0CED1CF83938893C7A98AC7A384C7A07CC79B74
        C89869C88F62C88E62C78967CB890E76191C7022C0C0C0C0C0C0C0C0C0C0C0C0
        B7DDB913751B0C741F63CB8A59C0875BC18769C79076CB9982CAA08BC9A59BCA
        B0899A91F6F8F8F9F9F9F0F0F0CED0D083928A99C9AD90C9A887C8A17FCA9E74
        C89869C88F62C78F63CA8D167C2B12771B71A478C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C03075380D78182D974A5CC38663C78D6CC79078C99A83CBA18ECBA7A0CA
        B1899890F7F9F9F9F9F9F9F9F9D6D8D88A99919CC9AE8FC8A789C8A17FC99F76
        CA9A69C88F63C98F52BB720D771A1E6F26C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C018721F0E7617137B2862CC876CCA9178C99A83C69F8FC8A79DC7
        B096AA9EE4E9E7E4E9E7E5EAE8E3EAE7A6B9B09CC8B18EC7A88AC9A27FCA9E73
        CA9862C98C2C964911771815741DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C08EC69316741D0E771608751F63C88A70CA9580CAA08CC9A59EC9
        AEA8C6B3AFC6B8B2C6B9ADC7B9A8C5B5A0C6B099C8AE8DC9A782C89F76CB9964
        C789137E2F0C771713761A509257C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C06CA67016741D0E7617258E3F62CB8860BE877BC69A97CC
        AB9DC8ADA4C9B5A8C8B5A1C7B19EC9AE98C9AD8ECAA87EC89E63BD8862C9863A
        A2550E761713751B2D7533C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C019711E1078190C761D2A93485FC88561BE
        876BBA8E7CC29D85C5A281C49D78C2986ABB8E62BE8962CA893FA7600C741F0F
        771A16731E5A9961C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C049854F18721F1178170F771A0D75
        1D0F77221C8633278F3C288F3A278F3A147C270C771B0D771A0F781712741A34
        7A3BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEFBE2639B681C71211278
        191079181078191079181079181078191079181177181773223E8045C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A3CB
        A86CA3723B80432D77352C79352E78365F996388B58EC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
    object btnCopiarCusto: TBitBtn
      Left = 34
      Top = 104
      Width = 107
      Height = 40
      Hint = 'Copia da Lista aberta para a Lista Informada'
      Caption = 'Copiar Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      OnClick = btnCopiarCustoClick
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        0000000000000000000008888770000770000000000000000080087770088770
        070788FFFFFFFFFF808007000F87700F87078F8FFFFFFFFF8080070FF87008FC
        870788FCCCCCCCCC8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
        870788FFFFFFFFFF8080070F870FCF8F87078F8CCCCCCCCC8080070F870FF8FC
        870788FFFFFFFFFF8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
        870788FCCCCCCCCC8080070F870FCF8F87078F8FFFFFFFFF8080070F870FF8FC
        870788FFFFFFFFFF8080070F870FFFCF87078F8CCCCCCCCC8080070F870FFCF8
        870788FFFFFFFFFF8080070F870FCF8F87078F8FFFFFFFFF8080070F870FF8FC
        870788FCCCCCCCCC8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
        870788FFFFFFFFFF8080070F870FCF8F87078F8CCCCCCCCC8080070F870FF8FC
        870788FFFFFFFFFF8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
        870788FCCCCCCCCC8080070F870FCF8F87078F8FFFFFFFFF8080070F870FF8FC
        870788FFFFFFFFFF8080000F870FFFCF87000000000000000000880F800FFCF8
        808888888888888888888800080FCF80088888888888888888888808880FF008
        8888888888888888888888888800088888888888888888888888888888088888
        8888888888888888888888888888888888888888888888888888}
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 793
    inherited Label1: TLabel
      Left = 152
      Width = 411
      Caption = 'Listas de Pre'#231'os de Venda'
    end
    inherited Label2: TLabel
      Left = 156
      Width = 411
      Caption = 'Listas de Pre'#231'os de Venda'
    end
  end
  object gbLista: TGroupBox [2]
    Left = 0
    Top = 105
    Width = 793
    Height = 378
    Align = alClient
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 2
      Top = 15
      Width = 789
      Height = 361
      Align = alClient
      Caption = 'Itens Lista'
      TabOrder = 0
      object dbgDetalhe: TDBGrid
        Left = 2
        Top = 15
        Width = 785
        Height = 344
        Align = alClient
        DataSource = dtsrcDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = dbgDetalheKeyPress
        OnTitleClick = dbgDetalheTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPRO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto'
            Width = 450
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOCOMPRA'
            Title.Caption = 'Pre'#231'o Custo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOVENDA'
            Title.Caption = 'Pre'#231'o Venda'
            Width = 100
            Visible = True
          end>
      end
      object pnCopia: TPanel
        Left = 296
        Top = 152
        Width = 201
        Height = 137
        TabOrder = 1
        Visible = False
        object Label17: TLabel
          Left = 32
          Top = 16
          Width = 137
          Height = 13
          Caption = 'Lista para onde ser'#225' copiado'
        end
        object cbListaCopia: TComboBox
          Left = 32
          Top = 40
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 48
          Top = 83
          Width = 107
          Height = 40
          Hint = 'Copia da Lista aberta para a Lista Informada'
          Caption = 'Fazer Copia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000008888770000770000000000000000080087770088770
            070788FFFFFFFFFF808007000F87700F87078F8FFFFFFFFF8080070FF87008FC
            870788FCCCCCCCCC8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
            870788FFFFFFFFFF8080070F870FCF8F87078F8CCCCCCCCC8080070F870FF8FC
            870788FFFFFFFFFF8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
            870788FCCCCCCCCC8080070F870FCF8F87078F8FFFFFFFFF8080070F870FF8FC
            870788FFFFFFFFFF8080070F870FFFCF87078F8CCCCCCCCC8080070F870FFCF8
            870788FFFFFFFFFF8080070F870FCF8F87078F8FFFFFFFFF8080070F870FF8FC
            870788FCCCCCCCCC8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
            870788FFFFFFFFFF8080070F870FCF8F87078F8CCCCCCCCC8080070F870FF8FC
            870788FFFFFFFFFF8080070F870FFFCF87078F8FFFFFFFFF8080070F870FFCF8
            870788FCCCCCCCCC8080070F870FCF8F87078F8FFFFFFFFF8080070F870FF8FC
            870788FFFFFFFFFF8080000F870FFFCF87000000000000000000880F800FFCF8
            808888888888888888888800080FCF80088888888888888888888808880FF008
            8888888888888888888888888800088888888888888888888888888888088888
            8888888888888888888888888888888888888888888888888888}
        end
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 54
    Width = 793
    Height = 51
    Align = alTop
    TabOrder = 3
    object Label15: TLabel
      Left = 8
      Top = 2
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 58
      Top = 4
      Width = 53
      Height = 13
      Caption = 'Nome Lista'
    end
    object Label4: TLabel
      Left = 255
      Top = 4
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label5: TLabel
      Left = 345
      Top = 4
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label6: TLabel
      Left = 434
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Validade'
    end
    object Label16: TLabel
      Left = 585
      Top = 1
      Width = 38
      Height = 13
      Caption = 'Margem'
      Visible = False
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 18
      Width = 38
      Height = 21
      DataField = 'CODLISTA'
      DataSource = DtSrc
      ReadOnly = True
      TabOrder = 0
    end
    object dbNomeLista: TDBEdit
      Left = 56
      Top = 18
      Width = 190
      Height = 21
      DataField = 'NOMELISTA'
      DataSource = DtSrc
      TabOrder = 1
    end
    object dbDataInicial: TJvDBDatePickerEdit
      Left = 252
      Top = 18
      Width = 83
      Height = 21
      AllowNoDate = True
      DataField = 'DATAINICIAL'
      DataSource = DtSrc
      TabOrder = 2
    end
    object dbDataFinal: TJvDBDatePickerEdit
      Left = 341
      Top = 18
      Width = 83
      Height = 21
      AllowNoDate = True
      DataField = 'DATAFINAL'
      DataSource = DtSrc
      TabOrder = 3
    end
    object dbValidade: TJvDBDatePickerEdit
      Left = 432
      Top = 18
      Width = 86
      Height = 21
      AllowNoDate = True
      DataField = 'VALIDADE'
      DataSource = DtSrc
      TabOrder = 4
      OnExit = dbValidadeExit
    end
    object btnTodosProd: TButton
      Left = 637
      Top = 14
      Width = 153
      Height = 25
      Caption = 'Adicionar Todos Produtos'
      TabOrder = 5
      OnClick = btnTodosProdClick
    end
    object edMargem: TEdit
      Left = 584
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 6
      Text = '0'
      Visible = False
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsListaVenda
  end
  object cdsLista_det: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODLISTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista_det'
    BeforePost = cdsLista_detBeforePost
    OnNewRecord = cdsLista_detNewRecord
    Left = 109
    Top = 278
    object cdsLista_detCODLISTADET: TIntegerField
      FieldName = 'CODLISTADET'
      Required = True
    end
    object cdsLista_detCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
      Required = True
    end
    object cdsLista_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsLista_detALTPRECO: TStringField
      FieldName = 'ALTPRECO'
      FixedChar = True
      Size = 1
    end
    object cdsLista_detDESCONTO: TStringField
      FieldName = 'DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsLista_detDESCONTOMAX: TFloatField
      FieldName = 'DESCONTOMAX'
    end
    object cdsLista_detDESCONTOMIN: TFloatField
      FieldName = 'DESCONTOMIN'
    end
    object cdsLista_detMARGEM: TStringField
      FieldName = 'MARGEM'
      FixedChar = True
      Size = 1
    end
    object cdsLista_detMARGEMMAX: TFloatField
      FieldName = 'MARGEMMAX'
    end
    object cdsLista_detMARGEMMIN: TFloatField
      FieldName = 'MARGEMMIN'
    end
    object cdsLista_detESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object cdsLista_detPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsLista_detPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsLista_detPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object cdsLista_detCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsLista_detCOD_P: TStringField
      FieldName = 'COD_P'
      ReadOnly = True
    end
  end
  object dspLista_det: TDataSetProvider
    DataSet = sdsLista_det
    Options = [poAllowCommandText]
    Left = 77
    Top = 278
  end
  object sdsLista_det: TSQLDataSet
    CommandText = 
      'SELECT UDF_STRZERO(UDF_DIGITS(p.CODPRO),12) AS COD_P,  l.*, p.CO' +
      'DPRO'#13#10'FROM LISTAPRECO_VENDADET  l, PRODUTOS P'#13#10'where  l.codprodu' +
      'to = p.codproduto '#13#10'order by COD_P'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 45
    Top = 278
    object sdsLista_detCOD_P: TStringField
      FieldName = 'COD_P'
      ReadOnly = True
    end
    object sdsLista_detCODLISTADET: TIntegerField
      FieldName = 'CODLISTADET'
      Required = True
    end
    object sdsLista_detCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object sdsLista_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsLista_detALTPRECO: TStringField
      FieldName = 'ALTPRECO'
      FixedChar = True
      Size = 1
    end
    object sdsLista_detDESCONTO: TStringField
      FieldName = 'DESCONTO'
      FixedChar = True
      Size = 1
    end
    object sdsLista_detDESCONTOMAX: TFloatField
      FieldName = 'DESCONTOMAX'
    end
    object sdsLista_detDESCONTOMIN: TFloatField
      FieldName = 'DESCONTOMIN'
    end
    object sdsLista_detMARGEM: TStringField
      FieldName = 'MARGEM'
      FixedChar = True
      Size = 1
    end
    object sdsLista_detMARGEMMAX: TFloatField
      FieldName = 'MARGEMMAX'
    end
    object sdsLista_detMARGEMMIN: TFloatField
      FieldName = 'MARGEMMIN'
    end
    object sdsLista_detESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object sdsLista_detPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object sdsLista_detPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object sdsLista_detPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object sdsLista_detCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object dtsrcDet: TDataSource
    DataSet = cdsLista_det
    OnStateChange = DtSrcStateChange
    OnDataChange = dtsrcDetDataChange
    Left = 96
    Top = 232
  end
  object sdsListaVenda: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM LISTAPRECO_VENDA l'#13#10'where l.CODLISTA = :CODLISTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODLISTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 389
    Top = 14
    object sdsListaVendaCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object sdsListaVendaNOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 60
    end
    object sdsListaVendaVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object sdsListaVendaDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
    end
    object sdsListaVendaDATAFINAL: TDateField
      FieldName = 'DATAFINAL'
    end
  end
  object dspListaVenda: TDataSetProvider
    DataSet = sdsListaVenda
    Left = 421
    Top = 14
  end
  object cdsListaVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODLISTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspListaVenda'
    OnNewRecord = cdsListaVendaNewRecord
    Left = 453
    Top = 14
    object cdsListaVendaCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object cdsListaVendaNOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 60
    end
    object cdsListaVendaVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object cdsListaVendaDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
    end
    object cdsListaVendaDATAFINAL: TDateField
      FieldName = 'DATAFINAL'
    end
  end
  object scds_produto_proc: TSQLDataSet
    CommandText = 
      'select p.CODPRODUTO, p.CODPRO, p.PRODUTO, p.VALORUNITARIOATUAL, ' +
      'p.VALOR_PRAZO, p.VALORMINIMO, p.ESTOQUEATUAL '#13#10'FROM PRODUTOS p'#13#10 +
      'where ((usa is null) or (usa = '#39'S'#39'))'#13#10'and not exists( select lp.' +
      'codproduto from LISTAPRECO_VENDADET lp where lp.codproduto = p.c' +
      'odproduto and lp.CODLISTA = :COD )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 206
    Top = 130
    object scds_produto_procCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object scds_produto_procPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produto_procVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object scds_produto_procVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object scds_produto_procVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object scds_produto_procESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 176
    Top = 233
  end
end
