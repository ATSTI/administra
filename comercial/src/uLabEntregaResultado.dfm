inherited fLabEntregaResultado: TfLabEntregaResultado
  Top = 103
  Height = 540
  Caption = 'Laudos'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 668
    Top = 420
    Width = 56
    Height = 13
    Caption = 'Data Coleta'
  end
  object Label5: TLabel [1]
    Left = 431
    Top = 440
    Width = 207
    Height = 13
    Caption = 'A procura deve ser feita pela : Data Coleta :'
  end
  object Label6: TLabel [2]
    Left = 228
    Top = 423
    Width = 98
    Height = 13
    Caption = 'Data Entrega Exame'
  end
  inherited MMJPanel1: TMMJPanel
    Background.StartColor = clMaroon
    Background.EndColor = clBtnFace
    object Label2: TLabel
      Left = 240
      Top = 16
      Width = 215
      Height = 29
      Caption = 'Entrega de Exame'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 241
      Top = 16
      Width = 215
      Height = 29
      Caption = 'Entrega de Exame'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 462
    Background.StartColor = clBtnFace
    Background.EndColor = clMaroon
    inherited btnGravar: TBitBtn
      Left = 277
      Caption = 'F4-Entregue'
    end
    inherited btnIncluir: TBitBtn
      Left = 31
      Visible = False
    end
    inherited btnCancelar: TBitBtn
      Left = 399
    end
    inherited btnExcluir: TBitBtn
      Left = 25
      Visible = False
    end
    inherited btnProcurar: TBitBtn
      Left = 164
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 520
    end
    object BitBtn2: TBitBtn
      Left = 142
      Top = 6
      Width = 127
      Height = 41
      Caption = 'Exames (Pr'#233'-Impresso)'
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 616
      Top = 6
      Width = 17
      Height = 41
      Caption = 'Imprimir Novos'
      TabOrder = 7
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 640
      Top = 6
      Width = 121
      Height = 40
      Hint = 'Imprimi s'#243' os que tem data de coleta Iguais'
      Caption = '(CTRL+ I) Imprimir '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BitBtn4Click
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 6
      Width = 127
      Height = 41
      Caption = 'Crian'#231'a(Pr'#233'-Impresso)'
      TabOrder = 9
      OnClick = BitBtn6Click
    end
  end
  object GroupBox1: TGroupBox [5]
    Left = 24
    Top = 64
    Width = 721
    Height = 65
    Caption = 'Procurar Exame'
    TabOrder = 2
    object Label1: TLabel
      Left = 136
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Paciente'
    end
    object edtCliente: TJvDBSearchComboBox
      Left = 136
      Top = 33
      Width = 369
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = dsClienteBusca
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 507
      Top = 16
      Width = 101
      Height = 42
      Caption = 'F8-Procura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C06C6360534949524A4A534B4C514B4C4F4A4C504B4D524C
        4D524D4C544C4C534B4B544B4E53494F534A4D534A4D534B4C544C4D514B4C50
        4A4B514C4B504B4A504C4B4F4B4A615F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C097908DB0A7A4BBB1B1AAA2A2AAA4A5A8A3A4A6A1A3A49FA1A49E
        9FA39D9EA39B9BA199999E979A9D96999B94979A93969C949599939498929397
        9192969190979392918D8C736F6E646262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0B6AEAEE6DEDEE3DBDBE8E0E0E3DDDEE1DCDEE0DADFDCD9DBDDD8
        D9DCD7D8DBD6D5DAD5D4DCD7D8DBD6D7D9D4D5D8D3D4D8D2D3D5D0D1D3CECFD2
        CDCECCC7C8CFCACBC6C2C18D8B8A656362C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BDB8B7EEE6E6E7DFDFE9E3E4E5E0E2E2DFE1E1DDE2E1DDE2E1DE
        E0E2DDDEE1DCDDE0DCDBD9D7D6D6D7D5D6D4D3D5D3D3D4D2D2D5D0D1D3CECFD2
        CDCED6D1D2D5D0D1CECCCB92908F646261C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0ADA8A7E9E4E3ECE6E7E8E3E4E6E3E5E3E2E6E1DFE5E0DFE3DFDE
        E0E0DEDEDEDCDCDDDBDAD9DCDAD8DCD7D9DAD6D8D9D7D7D7D7D8D6D6D6D4D4D5
        D3D3D2D0D0CDCBCBCCCACA939191626361C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C1BCBDEEEAE9ECE7E8EBE9E9E9E8ECE6E7EBE4E4EAE3E3E9E2E3
        E7E3E2E4E1E0E2E0E0E0DBE0DED9DFDAD8DED9D8DBD9D7D9D9D7D7D7D7D5D5D6
        D4D4D6D4D4D0CECED2D0D0969494626262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0ABA6A7F2EEEDF3EEEFEBE9E9E8E7EBE5E6EAE4E4EAE2E5EAE1E4
        E8E3E5E6E2E4E5E1E3E3DCE3E0DBE2DDD9E0DDD8DDDBD9DBDBD7D9D9D7D6D8D6
        D5D7D7D4D6D5D2D4D6D3D5959393616161C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C2BEBDF5F1F0F0ECEBF3F1F1EDECEEEAEBEFE7EAEEE5E8EDE5E8
        ECE3E6EAE4E6E7E1E6E5DFE6E3DCE5E2DCE3E0DCE1DFDCDEDEDDDDDDDBDADCDC
        D9DBD7D4D6D6D3D5D6D3D5928F91646262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BFBCB8F8F5F1F6F3EFF3F1F0F2F2F2E9EBECE9ECF0ECEFF3EEF1
        F5E3E6EAE5E7E8E5E9EADEE4E3E2EAE9DAE0DFDEE3E2DDDFDFDBDBDBE5E3E3DD
        D8D9DFDADBD9D4D6DAD5D79C999B5E5B5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C07F7B7637332E1C19111C18133C39357B7978F2F2F2F2F4F5E5E8ECE7EA
        EEEFF2F6E5E7E8EBEDEEE4E9EAE4EAE9DEE3E2E6E8E8E4E4E4DFDDDCE2DEDD81
        7C7B3C37361B16151812133B3637878283C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        413D383F3A3198938AC7C3B8B9B4AB56534B0202003839357A7C7CECEEEFF1F3
        F4ECEEEFF0EFF1E8EAEBE7EBECE7EBECEAECECE5E5E5EAE8E7E9E6E23E3A3512
        0C076E6863C4BEB9C2BBB8817C791D1817373233C0C0C0C0C0C0C0C0C0444238
        4B473CCCC6B9EFE8D9F1ECDDFAF4E7EDE9DE9B998F020200292A286C6E6EEDED
        EDF8F7F9EEEDEFF3F2F4EEEFF3E8EAEBE9E9E9E7E5E4A09D983330281A150CB3
        ADA2EAE1D7ECE6DBFDF6EDF4EEE7D2CCC739343135302FC0C0C0A5A2942E281B
        E1DACBEAE3D2F6EFDCFFFBE8FAF2E1FFFFF4FFFFF7928F870504006869677775
        74BBB9B9FAF8F8F3F0F2F6F2F7F1EEF0F1EDEC9C989378736A090300A39C8DE9
        E2D1F3ECD9EEE6D5FAF1E3FFFFF5FFFCF3CFC9C41A1512948F8C4B4433989180
        E6DFCCECE3CFF0E7D3F6EDD9FFFFF0FFFFF1FFFCEFDEDACF33302B41403CCDC9
        C89C9897A8A3A4F8F3F4F8F3F5B3AEB0A6A1A0CAC4BD544C3F403827EDE6D2E1
        DAC1F4EDD4FFF8DFFFF6E2FFF7E6FFFFF5FEF7EE938D863D39342A2310D1CAB6
        E2D9C5E3D8C2F8EED6FFF6DEFFF9E2FFF8E4FAF3E4F4F1E385827A191611BBB6
        B3CBC6C59B9695B7B1B2CFC8CB9C9697D7D0CDC5BEB5292012857C68DFD8BDDF
        D7BAEEE6C9FAF2D5FFFBE2FFFFEAFFF8E7F3EDE0D3CCC3221C151C1504DDD6C3
        E2D9C5E4DAC2FEF3D7F6EBCFFFF4D8FFF7DFF6EFDBF4EDDE928E830C0901BDB8
        B5CAC6C5BCB8B7B4AFB0C0BBBDA39D9ECBC4C1C3BCB31109008E8875EAE4CDE0
        D9BEEAE2C5FFF8DAFCF1D3FDF1D5FFF4DEF6ECDBDBD5CA151007302821BFB6AC
        F4ECDBE7DDC5E7DCBCEFE3BFFFF3CFF9EDCBF9EED2EFE6D26E66591E1910C5C2
        BDC7C8C45C5F5D5759595E5B5D595456C3BFBEC6C2BD2321195F5E54F0F0E4E5
        E2D3E2D7C1F3E3C6FFEBC8FFF0CDFCE7CBF4E6D0C4BBB1232018645C5C6B635C
        FFFDEFFFF6E0F4E9C9EBDEB8E6D6B1F0E2BEFAEED2C8BDA9251D10504D45CBCA
        C6838684313634363B3A383A3A3C3C3C797672D4D1CC5C5954100D08D9D7CFFF
        FFF5F3E8D4EEDBC0F5DDB9F4DAB5FFECCCF4E6CF4E4A3F4C4E48BFB9BA160F0C
        AFA69CFFFFF0F2E7CCE8DDBDE6D9B9F5E9CDD9CCB6625A49090200989390B5B3
        B2454747191E1D09100D09120F232B243F4036A9A59AABA59A0B0200665C52F6
        EBDDFFFBE8F1DEC3E8D4B1F7E4BFF7E8C8847C65060800A3AAA5C0C0C06C6766
        120A03878071E2D9C5EDE3CBEBDFC7BEB39D5F55440B0200645E59D1CDCC4745
        452E2E2E030505878D8CA1A9A80002003F40373B392ECBC5B8746C5F0B020063
        5B4EC6BBADE9DDCBFBEDD6CFC4A98078610906005D6259C0C0C0C0C0C0C0C0C0
        79726F110A01251E0F38301F3F37261B1405160F06706A65C2BDBE4946480100
        023D3C3E0100025B5E626D6F7901040C50505004020038382CAFAFA16F736805
        0903070B062324222D2A261D1A16120F0B767571C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0B0AAA55952494E483D373126302A234A45424E494A2421230201050000
        033231353B3A3C06070B00000841424C3E3B3D0401000907000F0E0441433D43
        4644282D2C3337383C3B3D625F61B8B5B7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DFDBD6FFFCF7EBE8E3C7C4C09492926463655152564F4F555758
        5C7E7D81C0BFC1838284818181BBB9B88E8A896D65655D5353605557695E609C
        9292C9C0BDD8D0C9BBB3ACABA39C6D6461C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0D8D6D5FFFFFEFEFCFBFFFFFFFCFEFFFBFEFFF5F8FCFBFEFFFBFC
        FFFDFCFEFFFDFFFFFFFFFFFFFCFFFFFCFFFFFEFFFCFFFFF9FEFFFCFFFFF5FBFF
        FDFFFFFEFCFFF5EFFFF7EFB2A59D695D59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DBDBDBFEFEFEFBFBFBFCFEFEFAFEFFF9FEFFF9FEFFFBFFFFFDFF
        FFFFFFFFFFFFFFFFFFFEFFFFFEFFFEFFFFFCFEFDFEFFF7FAFFFBFEFFFFFDFFFF
        FDFFFFF9FBFFFAFBFFF6F5AE9C9B756866C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DDDDDDFFFFFFFFFFFFFDFFFFFBFFFFFAFFFFFAFFFFFBFFFFFDFF
        FFFEFFFDFFFEFDFFFEFDFFFBFCFFFAFCFDFEFFFBFEFFFAFFFFFDFFFFD8D5CDDF
        D3C7E8D6C5E1CBB9D9C2B3B5A19692857DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DEDCDBFDFEFCFBFCFAFBFEFCFDFFFEFBFFFEFBFFFFFBFFFEFDFF
        FEFFFFFCFFFFFCFFFFFEFFFFFFFDFFFFF9FCFFF3F5F6FFFFFCFFFFF2B7A384AE
        9466A3824AA58348987946927853BEAF9CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E5E3E2FFFFFEFFFFFEFFFFFEFDFEFCFCFFFBFCFFFDFCFFFBFFFF
        FCFFFFFCFFFFFCFFFFFEF9FAF8FBFFFFFAFFFFFDFFFFFFFEF6FFFFF0D5BE98F1
        D29FEEC98BE5C181C1A26BC2AC82C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E8E4E3FFFFFEFFFFFBFFFFFBFFFFFCFFFFFBFFFFFCFFFFFCFFFF
        FCFFFFFCFFFFFEFFFFFEFFFFFCFAFEF9F5FBFAFBFFFFFAFCF6FFFDF0CBBBA4EB
        D2B2E7C9A6C4A885BFA98DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E9E4E3FFFEFDFFFFFCFFFFFCFFFFFAFFFFFAFFFFFAFFFFFBFFFF
        FCFFFFFEFFFEFFFFFFFEFFFDFAFFFFFCFAFCFCFDFFFFFBFCFAFFFFF9DCCFC1ED
        D9C7C4AC98B8A493C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0F0E8E8FFFEFEFFFFFCFFFFFCFFFFFBFFFFF9FFFFF9FFFFFBFFFF
        FCFFFFFEFFFEFFFFFEFFFFFDFDFFFEFEFFFDFFFFFDFFFFFDFFFFFCFCC0B0A9BE
        ADA0B1A093C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E7DDDDF4EAEAEEE5E2E6E0DBE6E0DBE2E0D8E0DED6DBDBD5D9D8
        D4D7D5D5D7D2D4D9D0D3DBCDCED6C8C9D4C7CFCEC6CDCBC0C8D4C9CBC2B2ACC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
    object RadioGroup1: TRadioGroup
      Left = 5
      Top = 20
      Width = 124
      Height = 40
      Caption = 'Entregues'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 2
    end
  end
  object JvDBGrid1: TJvDBGrid [6]
    Left = 23
    Top = 131
    Width = 723
    Height = 286
    DataSource = DtSrc_exame
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    MultiSelect = True
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
        FieldName = 'CODEXAME'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOEXAME'
        Title.Caption = 'Exame'
        Width = 274
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATASOLICITACAO'
        Title.Caption = 'Data Solicitado'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATARETIRADA'
        Title.Caption = 'Data Entrega Exame'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAENTREGAMATERIAL'
        Title.Caption = 'Data Coleta'
        Width = 94
        Visible = True
      end>
  end
  object dt1: TJvDatePickerEdit [7]
    Left = 648
    Top = 435
    Width = 101
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object dataentrega: TJvDatePickerEdit [8]
    Left = 227
    Top = 437
    Width = 101
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object BitBtn5: TBitBtn [9]
    Left = 636
    Top = 80
    Width = 107
    Height = 42
    Caption = 'F5-Busca Detalhada'
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  inherited PopupMenu1: TPopupMenu
    inherited Procurar1: TMenuItem
      OnClick = BitBtn1Click
    end
    object BuscaDetalhada1: TMenuItem
      Caption = 'Busca Detalhada'
      ShortCut = 116
      OnClick = BitBtn5Click
    end
    object ImprimirNovos1: TMenuItem
      Caption = 'Imprimir Novos'
      ShortCut = 16457
      OnClick = BitBtn4Click
    end
  end
  object sdsClienteBusca: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA , GRUPO_CLIENTE ' +
      ' from CLIENTES where STATUS = 0'#13#10'ORDER BY NOMECLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 320
    Top = 8
  end
  object dspBuscaCliente: TDataSetProvider
    DataSet = sdsClienteBusca
    Options = [poAllowCommandText]
    Left = 352
    Top = 8
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscaCliente'
    Left = 384
    Top = 8
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsClienteBuscaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
  end
  object dsClienteBusca: TDataSource
    DataSet = cdsClienteBusca
    Left = 416
    Top = 8
  end
  object DtSrc_exame: TDataSource
    DataSet = cds
    Left = 172
    Top = 7
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 139
    Top = 8
    object cdsCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 104
    Top = 8
  end
  object sds: TSQLDataSet
    CommandText = 
      'select lab.*, cli.NOMECLIENTE from LABEXAME lab left outer join ' +
      'CLIENTES cli on cli.CODCLIENTE = lab.CODCLIENTE ORDER BY LAB.COD' +
      'EXAME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 8
    object sdsCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 120
    Top = 424
  end
end
