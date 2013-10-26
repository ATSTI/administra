object fFiltro_forn_plano: TfFiltro_forn_plano
  Left = 268
  Top = 146
  Width = 780
  Height = 477
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 396
    Width = 772
    Height = 54
    Align = alBottom
    BevelInner = bvLowered
    PopupMenu = PopupMenu1
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clActiveCaption
    Background.FillType = GradUpDown
    object BitBtn2: TBitBtn
      Left = 496
      Top = 8
      Width = 107
      Height = 41
      TabOrder = 0
      OnClick = BitBtn2Click
      Kind = bkOK
    end
    object DBNavigator1: TDBNavigator
      Left = 272
      Top = 8
      Width = 224
      Height = 41
      DataSource = DtSrc
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      PopupMenu = PopupMenu1
      TabOrder = 1
    end
    object btnIncluir: TBitBtn
      Left = 169
      Top = 8
      Width = 103
      Height = 41
      Caption = 'F2-Incluir'
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnClick = btnIncluirClick
      Glyph.Data = {
        1E060000424D1E06000000000000360000002800000018000000150000000100
        180000000000E8050000CA0E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302F60302F7F7F
        7FCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF9790
        FF979000FFFF60302F60302FCF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF
        9790FFC8CFFFC8CFFFC8CF00FFFFFFC8CF60302FCF6760CF6760CF67607F7F7F
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F6030
        2FFF9790FFC8CF00FFFFCFFFFFFFC8CFFFC8CFCFFFFFFFC8CFCF676060302FCF
        6760CF6760CF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        7F7F7FCF6760FFC8CF00FFFFFFC8CFFFC8CF7F7F7F7F7F7FCFFFFFFFC8CFCFFF
        FFFFC8CF60302FFF0000CF6760CF6760CF67607F7F7F7F7F7FBFBFBFBFBFBFBF
        BFBFBFBFBF7F7F7FFF9790FFC8CF00FFFFCFFFFF7F7F7F7F7F7FFFC8CF00FFFF
        FFC8CF00FFFFFFC8CFCFFFFFCF67600000FFFF0000FF00007F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF00FFFFFFC8CFFFC8CF7F7F7FFFC8CFCF
        FFFFFFC8CF7F7F7F7F7F7FCFFFFFCFFFFFFFC8CFCFFFFF60302F0000FFFF0000
        CF67607F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFF
        FFFFFFFF00FFFF7F7F7F7F7F7FCFFFFFCFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCF
        6760FF97900000FFFF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFFFC8CFFFFFFFFFFFFF1F201F7F7F7FCFFFFFCFFFFF7F7F7F7F7F7FCFFF
        FFFFC8CFCFFFFFFFC8CF60302FFFC8CF0000FFFF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8CFCF6760CF67601F201F7F7F7F7F7F7F
        CFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCFFFFFCF6760CFFFFFFF97900000FFFF00
        00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8CFFF9790CF
        67601F201F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFC8CFFFFFFF60302F
        CFFFFFFF97900000FFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8
        CFFFC8CFFF9790FF9790CF67601F201F7F7F7FCFFFFFFFFFFFCFFFFFFFFFFFCF
        FFFFFFC8CFCF6760FFFFFFFFFFFFFF00000000FFCF6760BFBFBFBFBFBFBFBFBF
        CF6760FFC8CFFFC8CFFFC8CFFF9790FF9790FF9790CF67601F201F7F7F7FFFFF
        FFFFFFFFFFFFFFFFC8CFCFFFFFFFC8CFFFFFFFFFFFFFFFFFFFCF6760CF6760BF
        BFBFBFBFBFCF6760FFC8CFFFFFFFFFC8CFFFC8CFFF9790CF6760CF6760CF6760
        CF67601F201F7F7F7FFFFFFF3F3700CFFFFFCF6760FFFFFF0000FF0000FF0000
        FFCF6760BFBFBFBFBFBFBFBFBF60302F60302F60302FFFC8CFFFC8CFFF9790CF
        67601F201F1F201F1F201F1F201F1F201FFFFFFFFFFFFFFFC8CFFFFFFFFFFFFF
        FFFFFFFFC8CFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8
        CFFFC8CFFF9790CF67601F201F60302F60302F60302F60302FFFC8CFFFC8CFFF
        FFFFFF0000FF0000CF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        FF9790FFC8CFFFC8CFFFFFFFFF9790CF67601F201F60302F0000FF0000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFCF6760FFFFFFFFFFFFFFC8CFFF9790CF67601F201F60302F
        BFBFBFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FF9790FF9790FF9790FF9790CF
        67601F201F60302FBFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760CF6760CF67
        60CF6760CF67601F201F60302F7F7F7FFFC8CFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF}
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    PopupMenu = PopupMenu1
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clActiveCaption
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object BitBtn1: TBitBtn
      Left = 530
      Top = -59
      Width = 106
      Height = 36
      Caption = 'F8-Procurar'
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0B3A3AA776E7174717358585E615F65978890C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DBCFC9776A686763697578866E758986899E685B698A787FC0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0CABEB45D56536D79836A849C6284A85A7197908BAA715E71917C
        7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DBCFCB5B5D5E53798B84C3E55DACDF4483BD6674A99380AB7C5A
        72977881D4C7C9C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0F6E2DD8D87884D6A796CA9C969C2F550A0DF5C86C75F6AA49987
        B06F597180757DCFCDCDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0F9D6C9DEC1BA918387495A6D77B5DB6DC0F44A9CDD3A7BBF5B76
        AF848AB3615E6E7C767BD1CBD0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0EBC9BC
        AB7A6AA56A578C47368A423686443F5A303740435883AED576C7FF4EA4E63C79
        BD5276AC858DAB6861707F7680D7D0D3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FBCAAA7B4020
        923F1FAE482BC54E38D1513FE35D51D35D58B15A5D7452638DAFDA74BEF855AB
        F13178B86276A59791B0625563A6989CEADCDDE6DAD6D2C7BFC3BAADBCB4A7BD
        B5A8D2CCC1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D5976E93471D
        B64D26D04F2EEC5B45FF6757FD6050FF6F5EEB6D5BB2615C5850617EADD36BBC
        F55DABE65D7CAF7B7B9F685B695D4B4C9887847A6B6266594B61574571685475
        6E5B6C64537F776ABCB4ADC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C5845D93421D
        CA5834E75F43F46250FF6D5DFB745EFA7C60FE8662C86E4C7D50427C7F8485B4
        D087C2EA8CB2DC7A87A77D727A67514B7460558D7D6CAD9F89C3B79FD5CCB1D4
        CDB4C3BCA88B84735E584D837A76C0C0C0C0C0C0C0C0C0C0C0C0E8AB8B8F3F20
        D25A3DEB6046FF725FFD7662F2795FFE8E6AF88E5F9A4213FBC29BD1B49F5A5C
        5C8A9AAA8A9CB39299AA988987AE9585B8A290E2D0B9FCEED2FFF5D7FFFADDFF
        FADFFBF5DEF2EBDAC3BDB26D655E6F6565C0C0C0C0C0C0C0C0C0FFD6BF8E442C
        D15844FD725FF4725BF87D63FF9070FB946DAD5526ECA671FFD6A0FFDBACB37D
        5F8C5B4D866867907C77B19987CEB69AFFECCDFFF0CFFFFAD9FFF6D6FFFBDDFF
        FBE0FFFDE9FFFDECFFFFF4CEC6BF7067637B726FC0C0C0C0C0C0C0C0C0BD8574
        A33A2DEB6C5DFA7F65FF8A6BFF9979C56744B96F4BFFCEA6FECD9FFFCA9BF4A5
        7EA85A3D9D67569D7765D6B99AFBE5BCFFF0C7FFEEC7FFFDD7FFFDDBFFFFE1FF
        FFE6FFFFEDFFFFF3FFFDF2FFFFF8BEB6AF4C443DB4ABA2C0C0C0C0C0C0C0C0C0
        9B534BB04A3DF88269FF8E6ED66A4BA34931F9B7ACE9B2ABF6BFB0FFC9B1EAA3
        829C5638915946C79D86F1D5ACFFFFD0F2E1B0FEEFC1FFFDD3FFF9D4FFFDE0FF
        FFECFFFFF4FFFDF2FFFEF5FFFFF8FCF6EB878174686152ECE3D5C0C0C0C0C0C0
        F9CECBA56057A0462EC86B52954332A36363683E57583759714A63A37581D298
        928348389D6959E3BAA1FFF7CAFFECB5F5E3AEFCEEBDFFFFD5FFFED9FFFFE9FF
        FDE8FFFEECFFFFF4FFFFF3F5F3E1FFFDECC3BBAA4C4231D5C8B8C0C0C0C0C0C0
        F2E0E1D2B2AD7F5443471A0F3915212F1A412422681C22751E1E6A2117534929
        4C562B3AA57875F3CCB6FFF6CAF9E3AFECDAA5FFF3C2FFF9CEFFFAD7FFFFE6FF
        FFECFFFFECFCFFE6FCFFE2FFFFE4FFFCDFE4D7C1594639C4ADA5C0C0C0DDE2E5
        7B777C2018190C00000C0208000019000036162F8F1534A1102E931D2E842E28
        633D264699787CFDDCC8FFF1CAF2DDAAF0DDAAF9EBBAFFF7CBFFFAD5FDFBDDFE
        FDE1FDFFE1FFFFE7FAFED5FFFFD8FFFAD7E7DAC0655146A9908CE4E3EC3D3C45
        0000050A0A1003060E00001812235B2A45961C42A8133EAB1846AB1B42972E44
        8526294F88777BF2D9C5FFF0CEF2DDB0F3E1B2EEE2B2FCF2C3FFFDD2FFFDD8FF
        FFDCFFFAD5FFFFD6FFFFD4FFFCD1FFFFDDDCD0B85A4B42B6A4A38B878C0D0C10
        0B0C100B121B000D200D264E2A4E942350AB1F52BA1349B41C53BB194CAA2F57
        A22137676B666FE1CDBCFFF6DAFFEFC9F8E8BEEFE0B2F2E3B5FFF1C3FFF6CBFF
        F9CDFFFFD5FFF5C7FFFDCDFFF9CDFFFDDBCBC0AA40322CD0C2C42E2D230F0F09
        1719190A121F0007261F4379225AA91E60BF1D5EC1225FC7225BC8275BC52255
        B32D4E8D484858C4B6AAFAEDD7FFFFE4FFEFCBFEECC3F2DBAEFDE3B5FFEDBEFF
        EDBBFFF2BFFEF0BCF8EDBBFFFCCFF1EAC9A49A885B4E4CE1D2D6100E03212016
        1F211B1B252C000222345C96276ABF1B69CE1E69CF266AD32B68D62A65D32765
        CB3662AF2D3856837D7EE1D9CCFFFFEEFFFFE4FFFFE1FCE3BBF8DDB1FEE0B1F8
        DAA9F4DCA8FEE9B5FFF3C2FFF9D1D3C8AC5D5446A49898C0C0C00401002F2E24
        28281A252B26011227385D912970C81D72DF2577E62975E5387BE83172DE337A
        E23871C72A4276484A62AFA4A6F9E9DCFFFFEEFFFFEAFFF1D0F9E4BEF4DDB0F1
        D7A9FFE8B9FFECBFFFF3C9E6D3B29A8C765F564CD4CFD0C0C0C00E0C0C262521
        333325333B310E1B292546733D81D42F85EF3188F6398EFC3E8AF43F8AF1267A
        E0367ED62F589737476C58535CB4A49DF2E2D5FFFEEBFFFAE0FFF7D8FFF2CFFF
        F3CEFFF5D0FFECC7E2CBABAF9B825C4F3FBAB2ABC0C0C0C0C0C0151620272A2E
        333A3339433D28323C000F315897DB4699F43E99FC3E9AFF459CFE3B92F23E9E
        FC3A90E42460A254779F8F95A071666281736DC0ADA5E0C9BAEED4C3F8E0CAF1
        DAC0E3D0B5D1C2A8837862675F4EBBB2A9C0C0C0C0C0C0C0C0C042414B212429
        3C40413B3F404C4E560E1C330833642464A5327CCA3D8BDE4891E55CA8FB499B
        ED54A0E81C52897C9BBCC0C0C0C0C0C0998C8A7B6A67705C57836E669A877A9D
        8D7D7C6F5F746C5B9D948AD9D3CCC0C0C0C0C0C0C0C0C0C0C0C0B5ADAE140D10
        3D3841524A55554550544B582A354B00163600083400275C264F8E3963A63F6D
        AD32598D001332C2C8D5C0C0C0C0C0C0EFE2E4D5CACCC4BCBDBBB3B3BAB1ADBD
        B5AED6CCC5DED4CDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E4DFDC4E494A
        28252E51495352444865585A7D797E83879277869933486400082C000A330002
        2A0006262A2B35C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B3BEBB
        141F1D40494662665B6F6E647978748F9192A0A6ABAEB8BF78868C5262693947
        53091118948D8AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        919C99121A133C4237767A6F7F7D7C90909088888893979280887E5E675D1319
        18505252C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        F5F0F1C2BCBD3A3536201F21504F597A798274717363625E27291D0E11087073
        77C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E7DDE3B0ABB45C5C6A3E3E4A3A363B53504B7F7F73C5C6BCC0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
    object BitBtn6: TBitBtn
      Left = 40
      Top = -50
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = BitBtn6Click
    end
    object BitBtn8: TBitBtn
      Left = 41
      Top = 4
      Width = 130
      Height = 41
      Caption = 'ATIVO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 181
      Top = 4
      Width = 130
      Height = 41
      Caption = 'PASSIVO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 322
      Top = 4
      Width = 130
      Height = 41
      Caption = 'RECEITA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn10Click
    end
    object BitBtn12: TBitBtn
      Left = 461
      Top = 4
      Width = 130
      Height = 41
      Caption = 'DESPESAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn12Click
    end
    object BitBtn11: TBitBtn
      Left = 603
      Top = 4
      Width = 149
      Height = 41
      Caption = 'C. RESULTADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -16
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn11Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 772
    Height = 347
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 217
      Top = 3
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Transparent = True
    end
    object EditProc: TEdit
      Left = 219
      Top = 22
      Width = 329
      Height = 17
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 211
      Top = 45
      Width = 555
      Height = 296
      DataSource = DtSrc
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CONTAPAI'
          Title.Caption = 'Conta Principal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTA'
          Title.Caption = 'Conta'
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODREDUZIDO'
          Title.Caption = 'C'#243'd. Reduzido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Descri'#231#227'o'
          Width = 345
          Visible = True
        end>
    end
    object EvDBFind1: TEvDBFind
      Left = 212
      Top = 19
      Width = 552
      Height = 24
      DataField = 'NOME'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tvContaPai: TJvTreeView
      Left = 3
      Top = 8
      Width = 206
      Height = 333
      Indent = 19
      TabOrder = 2
      OnClick = tvContaPaiClick
      LineColor = 13160660
    end
  end
  object DtSrc: TDataSource
    DataSet = DM.c_1_planoc
    Left = 256
    Top = 64
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
    Left = 240
    Top = 96
  end
  object dsp_desp: TDataSetProvider
    DataSet = sds_desp
    Left = 272
    Top = 96
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
    Left = 304
    Top = 96
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
    Left = 344
    Top = 96
  end
  object dsp_sub: TDataSetProvider
    DataSet = sds_sub
    Left = 376
    Top = 96
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
    Left = 408
    Top = 96
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
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 456
    Top = 104
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = btnIncluirClick
    end
    object OK1: TMenuItem
      Caption = 'OK'
      ShortCut = 115
      OnClick = BitBtn2Click
    end
    object Procurar1: TMenuItem
      Caption = 'Procurar'
      ShortCut = 119
      OnClick = BitBtn1Click
    end
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 288
    Top = 64
  end
  object sdsContaPai: TSQLDataSet
    CommandText = 'Select nome, conta, contapai from PLANO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 232
    Top = 168
    object sdsContaPaiNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object sdsContaPaiCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object sdsContaPaiCONTAPAI: TStringField
      FieldName = 'CONTAPAI'
      Size = 10
    end
  end
  object dspContaPai: TDataSetProvider
    DataSet = sdsContaPai
    Options = [poAllowCommandText]
    Left = 264
    Top = 168
  end
  object cdsContaPai: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaPai'
    Left = 296
    Top = 168
    object cdsContaPaiNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object cdsContaPaiCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cdsContaPaiCONTAPAI: TStringField
      FieldName = 'CONTAPAI'
      Size = 10
    end
  end
  object dsContaPai: TDataSource
    DataSet = cdsContaPai
    Left = 336
    Top = 176
  end
  object sdsContaPlano: TSQLDataSet
    CommandText = 
      'Select NOME, CONTA, udf_len(udf_strip(conta, '#39'0123456789'#39'))  fro' +
      'm plano'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 184
  end
  object dspContaPlano: TDataSetProvider
    DataSet = sdsContaPlano
    Left = 440
    Top = 184
  end
  object cdsContaPlano: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaPlano'
    Left = 472
    Top = 184
    object cdsContaPlanoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object cdsContaPlanoCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cdsContaPlanoUDF_LEN: TIntegerField
      FieldName = 'UDF_LEN'
      ReadOnly = True
    end
  end
end
