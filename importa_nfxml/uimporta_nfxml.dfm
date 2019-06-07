object fImporta_XML: TfImporta_XML
  Left = 8
  Top = 97
  Width = 1036
  Height = 683
  Caption = 'Importar XML - NFe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblNF: TLabel
    Left = 259
    Top = 200
    Width = 3
    Height = 13
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 875
    Top = 57
    Width = 153
    Height = 599
    Align = alRight
    PopupMenu = PopupMenu1
    TabOrder = 0
    object Label4: TLabel
      Left = 33
      Top = 304
      Width = 72
      Height = 13
      Caption = 'Margem Venda'
    end
    object Label2: TLabel
      Left = 64
      Top = 582
      Width = 78
      Height = 13
      Caption = 'V. 2.0 - 05/2019'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnImportaNF: TBitBtn
      Left = 20
      Top = 458
      Width = 109
      Height = 41
      Hint = 'Conclui a importa'#231#227'o, inserindo a Nota do Xml no Sistema.'
      Caption = '5'#186' - Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnImportaNFClick
    end
    object btnFechar: TBitBtn
      Left = 20
      Top = 512
      Width = 109
      Height = 41
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
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
    object btnProcurar: TBitBtn
      Left = 20
      Top = 5
      Width = 109
      Height = 41
      Hint = 'Exibe as notas importadas na Tela'
      Caption = '2'#186' -Procurar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    end
    object btnVerificaFornec: TBitBtn
      Left = 20
      Top = 49
      Width = 109
      Height = 41
      Hint = 'Verifica se existe os Fornecedores cadastrados no sistema'
      Caption = '3'#186' - Verifica Fornec.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnVerificaFornecClick
      Layout = blGlyphTop
    end
    object btnExisteProdutoFornec: TBitBtn
      Left = 20
      Top = 216
      Width = 109
      Height = 41
      Hint = 
        'Verifica se existe uma rela'#231#227'o do c'#243'digo do fornecedor com o c'#243'd' +
        'igo do sistema.'
      Caption = '4'#186' - Verifica Produto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnExisteProdutoFornecClick
    end
    object btnCadastrarProduto: TBitBtn
      Left = 20
      Top = 344
      Width = 109
      Height = 41
      Hint = 'Cadastra no sistema os itens da Nota que n'#227'o existe.'
      Caption = 'Cadastrar Produto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnCadastrarProdutoClick
    end
    object chkCodBarra: TCheckBox
      Left = 32
      Top = 261
      Width = 97
      Height = 17
      Hint = 'Configure no parametro: XML_CODBARRA, em DADOS coloque CODBARRA.'
      Caption = 'C'#243'd. de Barras'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object edMargem: TEdit
      Left = 32
      Top = 319
      Width = 97
      Height = 21
      TabOrder = 7
      Text = '33'
    end
    object chkFornec: TCheckBox
      Left = 32
      Top = 285
      Width = 97
      Height = 17
      Hint = 'Buscar pelo c'#243'digo do Fornecedor.'
      Caption = 'C'#243'd. Fornecedor'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 8
    end
    object BitBtn1: TBitBtn
      Left = 20
      Top = 392
      Width = 109
      Height = 41
      Hint = 'Cadastra no sistema os itens da Nota que n'#227'o existe.'
      Caption = 'Convers'#227'o Unidade'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BitBtn1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 875
    Height = 599
    Align = alClient
    Caption = 'Notas Fiscais'
    TabOrder = 1
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 224
      Width = 871
      Height = 373
      Align = alClient
      DataSource = dsNFItem
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = JvDBGrid1DblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_ITEM'
          Title.Caption = 'N'#186
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRODUTO_ATS'
          Title.Caption = 'C'#243'd. ATS'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO_ATS'
          Title.Caption = 'C'#243'd. Prod. ATS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Produto'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UN_CONV'
          Title.Caption = 'UN C.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_CONV'
          Title.Caption = 'Qtde. Conv.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNIT'
          Title.Caption = 'Vlr. Unit.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_CONV'
          Title.Caption = 'Vlr. Conv.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Caption = 'Vlr. Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_BARRA'
          Title.Caption = 'C'#243'd. Barras'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRODUTO'
          Title.Caption = 'C'#243'd. Prod. Fornec.'
          Width = 80
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 871
      Height = 209
      Align = alTop
      TabOrder = 1
      object JvDBUltimGrid1: TJvDBUltimGrid
        Left = 449
        Top = 1
        Width = 421
        Height = 207
        Align = alClient
        DataSource = dsNF
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = JvDBUltimGrid1CellClick
        OnDblClick = JvDBUltimGrid1DblClick
        OnKeyDown = JvDBUltimGrid1KeyDown
        OnKeyUp = JvDBUltimGrid1KeyUp
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Sit.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTAFISCAL'
            Title.Caption = 'NF'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Caption = 'S'#233'rie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMISSAO'
            Title.Caption = 'Emiss'#227'o'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_EMITENTE'
            Title.Caption = 'CNPJ'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_EMITENTE'
            Title.Caption = 'Emitente'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCLIENTE_ATS'
            Title.Caption = 'C'#243'd. Forn.'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAOSOCIAL_ATS'
            Title.Caption = 'Cadastro Fornecedor'
            Visible = True
          end>
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 448
        Height = 207
        ActivePage = TabSheet2
        Align = alLeft
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Importando Arquivos'
          ImageIndex = 1
          object memLista: TMemo
            Left = 0
            Top = 0
            Width = 440
            Height = 179
            Align = alClient
            Lines.Strings = (
              'Arquivos XML')
            TabOrder = 0
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Arquivos Importados'
          object memExcluido: TMemo
            Left = 0
            Top = 0
            Width = 440
            Height = 179
            Align = alClient
            Lines.Strings = (
              'Arquivos XML')
            TabOrder = 0
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 344
      Top = 296
      Width = 345
      Height = 137
      TabOrder = 2
      Visible = False
      object Label5: TLabel
        Left = 16
        Top = 56
        Width = 40
        Height = 13
        Caption = 'Unidade'
      end
      object Label7: TLabel
        Left = 16
        Top = 24
        Width = 37
        Height = 13
        Caption = 'Produto'
      end
      object Label6: TLabel
        Left = 16
        Top = 85
        Width = 28
        Height = 13
        Caption = 'Conv.'
      end
      object edUni: TEdit
        Left = 72
        Top = 55
        Width = 40
        Height = 21
        Hint = 'Unidade Convers'#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyPress = edNotaKeyPress
      end
      object edProdUni: TEdit
        Left = 72
        Top = 24
        Width = 257
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object BitBtn2: TBitBtn
        Left = 232
        Top = 96
        Width = 86
        Height = 36
        Caption = 'Fechar'
        TabOrder = 4
        OnClick = BitBtn2Click
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF8687878787
          87878787878083338077FF867878787878787878787083333807FF8600000000
          00000787878083333380FF868888888888880878787083333330FF8688888888
          88880000000083333330FF868888888880880777777083333330FF8688888888
          80080777777083333330FF868888888880600777777083333330FF8688888888
          80660777777083663330FF868888888880E66077777086863330FF8688888888
          80EE6607777086863330FF868800000000EEE660777083663330FF8680666666
          66EEEE66077083333330FF8680EEEEEEEEEEEEE6607083333330FF8680EEEEEE
          EEEEEEEE607083333330FF8680EEEEEEEEEEEEE6077083333330FF8688000000
          00EEEE60777083333330FF868888888880EEE607777083333330FF8688888888
          80EE6077777083333330FF868888888880E60777777088333330FF8688888888
          80600777777708833330FF868888888880080777777770883330FF8688888888
          88880777777777088330FF868888888888880777777777708830FF8688888888
          88880777777777770880FF868888888888880777777777777080FF8688888888
          88880000000000000000FF868888888888888888888888888888FF8666666666
          66666666666666666666FF888888888888888888888888888888FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BitBtn3: TBitBtn
        Left = 232
        Top = 56
        Width = 86
        Height = 36
        Caption = 'Confirma'
        TabOrder = 2
        OnClick = BitBtn3Click
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          08000000000000040000000000000000000000010000000000001C3404002434
          1C00242424001C3C0400243C0C00244404002C5C04003C5C240044543C005C5C
          54005C5C5C00646464006C6C6C0054743C007474740044840400747C74007C7C
          7C0084848400449404006C8C540054AC0400000000008C8C8C008C948C009494
          94009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC040074F404007CFC
          040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC240094EC3C0094FC
          2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC5400ACFC6400B4FC
          6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCCAC00BCC4B400BCCC
          B400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0C000002A3E00003F
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
          D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF003F3F3F3F3F3F
          3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
          3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
          3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
          3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
          3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
          3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F17
          17110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F12
          12140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F18
          181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F3F3F3F3F3F3F3F18
          181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F3F3F3F3F3F3F3F24
          242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F3F3F3F3F3F2B2B21
          21222323222213130517170C0C0C0E0E1111173F3F3F3F3F3F3F3F3F3F2B2B21
          21222323222213130517170C0C0C0E0E1111173F3F3F3F3F3F3F3F3F35212122
          2223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F3F3F3F3F2B222223
          232727272626222213040418180E0C0C0C0C0E12123F3F3F3F3F3F3F29262625
          252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F3F3F3F3F29262625
          252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F3F3F3838302D2D23
          232C393933332E2E23151503031111110E0E0C0E0E1111173F3F3F3F392E2E28
          28383F3F373731312A22220F0F01171711110E0E0E0E0E1219193F3F3F37373F
          3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E1117173F3F3F37373F
          3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E1117173F3F3F3F3F3F
          3F3F3F3F3F3F3F3F322E2E23231503030C0C17121211111217173F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3734342D2D231313000018191917171719193F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3734342D2D231313000018191917171719193F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F3F3F3F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F3F3F3F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F3F3F3F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F3F3F3F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D3123232020353F3F3F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A2323363F3F3F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A2323363F3F3F3F3F3F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F3F3F}
      end
      object edConv: TJvCalcEdit
        Left = 72
        Top = 85
        Width = 84
        Height = 21
        DecimalPlaces = 5
        DisplayFormat = '0.#####'
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
        OnKeyPress = edNotaKeyPress
      end
      object rgTipoConv: TRadioGroup
        Left = 115
        Top = 46
        Width = 93
        Height = 31
        Caption = 'Menor / Maior'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          '<'
          '>')
        TabOrder = 5
        Visible = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 506
      Top = 9
      Width = 23
      Height = 13
      Caption = 'Nota'
    end
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 52
      Height = 13
      Caption = 'Pasta XML'
    end
    object btnImportarXml: TBitBtn
      Left = 895
      Top = 9
      Width = 109
      Height = 41
      Hint = 'Importa o XML para o Sistema'
      Caption = '1'#186' - Importar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnImportarXmlClick
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
    object cbNaoEnviada: TCheckBox
      Left = 655
      Top = 26
      Width = 97
      Height = 17
      Caption = 'N'#227'o Enviadas'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbNaoEnviadaClick
    end
    object edNota: TEdit
      Left = 504
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = edNotaKeyPress
    end
    object btnLimpa: TBitBtn
      Left = 625
      Top = 20
      Width = 25
      Height = 25
      Hint = 'Limpa o campo Nota Fiscal'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnLimpaClick
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
    object Button1: TButton
      Left = 352
      Top = 10
      Width = 109
      Height = 41
      Hint = 
        'Desmarca o XML como Importado, e deixa apto a Importar novamente' +
        '.'
      Caption = 'Refazer Imp. p/ Ats'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 10
      Width = 109
      Height = 41
      Hint = 'Tira o XML da LISTA ABAIXO'
      Caption = 'Excluir Imp. Xml'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 6
      Top = 24
      Width = 171
      Height = 21
      Hint = 'Parametro: XML_IMPORTA , dados  : o diretorio.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = 'C:\home\xml'
    end
  end
  object sqlConn: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.6.100:sge_gh'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq21'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\sisadmin\relatorio\')
    VendorLib = 'fbclient.dll'
    Left = 112
    Top = 552
  end
  object sdsNF: TSQLDataSet
    CommandText = 
      'SELECT r.NOTAFISCAL, r.NATUREZAOPERACAO, r.MODELO,'#13#10'    r.SERIE,' +
      ' r.EMISSAO, r.CNPJ_EMITENTE,'#13#10'    r.CNPJ_DESTINATARIO, r.NOME_EM' +
      'ITENTE,'#13#10'    r.CODCLIENTE_ATS, r.RAZAOSOCIAL_ATS, r.STATUS'#13#10'FROM' +
      ' NOTAFISCAL_IMPORTA r '#13#10'WHERE r.STATUS = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 160
    Top = 552
  end
  object sdsNFItem: TSQLDataSet
    CommandText = 'SELECT * FROM NOTAFISCAL_PROD_IMPORTA ORDER BY NUM_ITEM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 336
    Top = 552
  end
  object dspNF: TDataSetProvider
    DataSet = sdsNF
    Options = [poAllowCommandText]
    Left = 192
    Top = 552
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    Left = 224
    Top = 552
    object cdsNFNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNFNATUREZAOPERACAO: TStringField
      FieldName = 'NATUREZAOPERACAO'
      Size = 50
    end
    object cdsNFMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 5
    end
    object cdsNFSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNFEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsNFCNPJ_EMITENTE: TStringField
      FieldName = 'CNPJ_EMITENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object cdsNFCNPJ_DESTINATARIO: TStringField
      FieldName = 'CNPJ_DESTINATARIO'
      Size = 25
    end
    object cdsNFNOME_EMITENTE: TStringField
      FieldName = 'NOME_EMITENTE'
      Size = 150
    end
    object cdsNFCODCLIENTE_ATS: TIntegerField
      FieldName = 'CODCLIENTE_ATS'
    end
    object cdsNFRAZAOSOCIAL_ATS: TStringField
      FieldName = 'RAZAOSOCIAL_ATS'
      Size = 60
    end
    object cdsNFSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
  end
  object dsNF: TDataSource
    DataSet = cdsNF
    Left = 256
    Top = 552
  end
  object dspNfItem: TDataSetProvider
    DataSet = sdsNFItem
    Options = [poAllowCommandText]
    Left = 368
    Top = 552
  end
  object cdsNFItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNfItem'
    OnReconcileError = cdsNFItemReconcileError
    Left = 400
    Top = 552
    object cdsNFItemNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object cdsNFItemSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsNFItemCNPJ_EMITENTE: TStringField
      FieldName = 'CNPJ_EMITENTE'
      Required = True
      Size = 25
    end
    object cdsNFItemNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Required = True
    end
    object cdsNFItemCODPRODUTO_ATS: TIntegerField
      FieldName = 'CODPRODUTO_ATS'
    end
    object cdsNFItemCODPRO_ATS: TStringField
      FieldName = 'CODPRO_ATS'
      Size = 15
    end
    object cdsNFItemPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 150
    end
    object cdsNFItemPRODUTO_ATS: TStringField
      FieldName = 'PRODUTO_ATS'
      Size = 150
    end
    object cdsNFItemNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object cdsNFItemCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsNFItemUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 5
    end
    object cdsNFItemQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object cdsNFItemVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsNFItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsNFItemICMS: TStringField
      FieldName = 'ICMS'
      Size = 50
    end
    object cdsNFItemPIS: TStringField
      FieldName = 'PIS'
      Size = 50
    end
    object cdsNFItemCOFINS: TStringField
      FieldName = 'COFINS'
      Size = 50
    end
    object cdsNFItemIPI: TStringField
      FieldName = 'IPI'
      Size = 50
    end
    object cdsNFItemCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 30
    end
    object cdsNFItemCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 30
    end
    object cdsNFItemUN_CONV: TStringField
      FieldName = 'UN_CONV'
      Size = 2
    end
    object cdsNFItemQTDE_CONV: TFloatField
      FieldName = 'QTDE_CONV'
    end
    object cdsNFItemVLR_CONV: TFloatField
      FieldName = 'VLR_CONV'
    end
  end
  object dsNFItem: TDataSource
    DataSet = cdsNFItem
    Left = 432
    Top = 552
  end
  object sqlFaltandoFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 136
    Top = 512
  end
  object sqlFaltaProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 320
    Top = 520
  end
  object sqlBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 296
    Top = 552
  end
  object sqlGenProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 512
    Top = 512
  end
  object sqlVeSeExisteCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 448
    Top = 200
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 736
    Top = 16
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.xml'
    Left = 176
    Top = 21
  end
  object PopupMenu1: TPopupMenu
    Left = 883
    Top = 177
    object ConferirBancodeDados1: TMenuItem
      Caption = 'Atualizar Banco de Dados'
      OnClick = ConferirBancodeDados1Click
    end
    object ConversoUnidade1: TMenuItem
      Caption = 'Convers'#227'o Unidade'
      ShortCut = 114
      OnClick = ConversoUnidade1Click
    end
    object ProcurarProduto1: TMenuItem
      Caption = 'Procurar Produto'
      ShortCut = 115
      OnClick = JvDBGrid1DblClick
    end
  end
end
