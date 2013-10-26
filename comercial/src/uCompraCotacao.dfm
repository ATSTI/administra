inherited fCompraCotacao: TfCompraCotacao
  Left = 188
  Top = 0
  Width = 998
  Height = 737
  Caption = 'Cota'#231#227'o de Compras'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 982
    Height = 44
    object GroupBox5: TGroupBox
      Left = 4
      Top = 4
      Width = 982
      Height = 37
      Caption = 'Filtro'
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 15
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label4: TLabel
        Left = 228
        Top = 12
        Width = 30
        Height = 13
        Caption = 'Marca'
      end
      object Label5: TLabel
        Left = 379
        Top = 14
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label6: TLabel
        Left = 539
        Top = 14
        Width = 48
        Height = 13
        Caption = 'SubGrupo'
      end
      object Label7: TLabel
        Left = 724
        Top = 13
        Width = 49
        Height = 13
        Caption = 'Solicitante'
      end
      object edDescricao: TEdit
        Left = 64
        Top = 11
        Width = 158
        Height = 21
        TabOrder = 0
        OnKeyPress = edDescricaoKeyPress
      end
      object edMarca: TEdit
        Left = 264
        Top = 10
        Width = 109
        Height = 21
        TabOrder = 1
        OnKeyPress = edMarcaKeyPress
      end
      object edGrupo: TEdit
        Left = 414
        Top = 10
        Width = 121
        Height = 21
        TabOrder = 2
        OnKeyPress = edGrupoKeyPress
      end
      object edSubGrupo: TEdit
        Left = 596
        Top = 10
        Width = 121
        Height = 21
        TabOrder = 3
        OnKeyPress = edSubGrupoKeyPress
      end
      object edSolicitante: TEdit
        Left = 778
        Top = 11
        Width = 176
        Height = 21
        TabOrder = 4
      end
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 650
    Width = 982
    Height = 49
    object Label2: TLabel [0]
      Left = 72
      Top = 16
      Width = 6
      Height = 13
      Caption = '..'
    end
    inherited btnGravar: TBitBtn
      Left = 447
      Top = 4
      Caption = 'Gravar'
      Enabled = False
      Visible = False
    end
    inherited btnIncluir: TBitBtn
      Left = 243
      Top = 4
      Caption = 'Gerar Pedido'
      Visible = False
    end
    inherited btnCancelar: TBitBtn
      Left = -200
      Top = 325
    end
    inherited btnExcluir: TBitBtn
      Left = -200
      Top = 325
    end
    inherited btnProcurar: TBitBtn
      Left = -200
      Top = 325
    end
    inherited btnSair: TBitBtn
      Left = 786
    end
    object BitBtn4: TBitBtn
      Left = 671
      Top = 5
      Width = 115
      Height = 42
      Caption = 'Imprimir'
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = BitBtn4Click
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
    object BitBtn2: TBitBtn
      Left = 27
      Top = 5
      Width = 107
      Height = 42
      Caption = 'Ver Cota'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 7
      Visible = False
      OnClick = BitBtn2Click
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 44
    Width = 982
    Height = 284
    Align = alTop
    Caption = 'Solicita'#231#245'es em aberto'
    TabOrder = 2
    object jvdbgrd1: TJvDBGrid
      Left = 2
      Top = 15
      Width = 978
      Height = 267
      Align = alClient
      DataSource = dsSolic
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = jvdbgrd1CellClick
      OnDrawColumnCell = jvdbgrd1DrawColumnCell
      OnTitleClick = jvdbgrd1TitleClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <
        item
          ControlName = 'DBCheckBox1'
          FieldName = 'SELEC'
          FitCell = fcCellSize
          LeaveOnEnterKey = True
          LeaveOnUpDownKey = True
        end>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'SOLIC_CODIGO'
          Title.Caption = 'C'#243'd. Solic.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_DATA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_DTNECESSIT'
          Title.Caption = 'Necessidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADEMEDIDA'
          Title.Caption = 'UN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_QUANTIDADE'
          Title.Caption = 'Qtde'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Caption = 'Marca'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAMILIA'
          Title.Caption = 'Grupo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CATEGORIA'
          Title.Caption = 'Sub-Gupo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_OBSERVACAO'
          Title.Caption = 'Observa'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_SOLICITANTE'
          Title.Caption = 'Solicitante'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_SITUACAO'
          Title.Caption = 'Situa'#231#227'o'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_APROVACAO'
          Title.Caption = 'Aprovado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_DATAAPROV'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_TIPO'
          Title.Caption = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLIC_PRODUTO'
          Title.Caption = 'Prod./Material'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 0
    Top = 338
    Width = 982
    Height = 55
    Align = alBottom
    Caption = 'Criar Cota'#231#227'o'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 49
      Height = 13
      Caption = 'C'#243'd. Forn.'
      Transparent = True
    end
    object Edit1: TEdit
      Left = 61
      Top = 20
      Width = 81
      Height = 21
      Hint = 'C'#243'digo do Fornecedor'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = Edit1Exit
    end
    object btnClienteProcura: TBitBtn
      Left = 142
      Top = 12
      Width = 35
      Height = 38
      TabOrder = 1
      TabStop = False
      OnClick = btnClienteProcuraClick
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
        D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF00070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040700000707070707444407444407070707070707070707070704
        0404070404040700000707070707444407444407070707070707070707070704
        0404070404040700000707070707444407444407070707070707070707070704
        040407040404070000070707072F2F2F2F2F2F2F070707070707070707070704
        040407040404070000070707072F2F2F2F2F2F2F070707070707070707460708
        040408040404070000070707462F2F2F2F2F2F2F460707070707070746460804
        040404040404080046070746462F2F2F2F2F2F2F464607070707070707070804
        040404040404084646080746080C0C0C0C0C0C0C084607070707070704040804
        040404040404080708070700000C0C0C040C0C0C000007070707070704040804
        04040404040408040407070C0C040C0C0C0C0C040C0C07070707070704040704
        04040404040408040407070C0C040C0C040C0C040C0C07070707070704040804
        04040504040407040407070C0C040C0C0C0C0C040C0C07070707070704040404
        04080508040408040407070C0C040C0C000C0C040C0C07070707070708040404
        04070507040404040407070C0C040C0C000C0C040C0C07070707070707040404
        040F050F040404040807070C0C040C0007000C040C0C07070707070707040404
        040F050F040404040707070C0C0C0C080F08000C0C0C07070707070707040404
        040F050F040404040707070C0C0C000F0C0F000C0C0C07070707070707040404
        040F050F04040408070707080C0C000F0C0F000C0C0807070707070707070404
        070F0F0F0404080707070707080C000C000C0000080707070707070707070707
        0707000707070707070707070707070046000707070707070707070707070707
        0700460007070707070707070708004646460008070707070707070707070707
        0846464608070707070707070700004646460000070707070707070707070707
        0046464600070707070707070707000046000007070707070707070707070707
        0000000000070707070707070707000000000007070707070707070707070707
        0800000008070707070707070707070000000707070707070707070707070707
        0708000807070707070707070707070808080707070707070707070707070707
        0707070707070707070707070707070707070707070707070707070707070707
        0707070707070707070707070707070707070707070707070707}
    end
    object Edit2: TEdit
      Left = 177
      Top = 21
      Width = 444
      Height = 21
      Color = clBtnShadow
      Enabled = False
      TabOrder = 2
    end
    object btnIncluiCotacao: TBitBtn
      Left = 621
      Top = 20
      Width = 93
      Height = 25
      Hint = 'Incluir cota'#231#227'o para o Fornecedor Selecionado'
      Caption = '+ Nova Cota'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 3
      OnClick = btnIncluiCotacaoClick
    end
    object BitBtn1: TBitBtn
      Left = 915
      Top = 20
      Width = 32
      Height = 25
      Hint = 'Excluir o Item Selecionado abaixo da lista de Cota'#231#227'o'
      Caption = '-'
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 4
      OnClick = btnExcluirClick
    end
    object btnProcCotacao: TBitBtn
      Left = 949
      Top = 20
      Width = 32
      Height = 25
      Hint = 'Procurar Cota'#231#227'o para o Fornecedor Selecionado'
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 5
      OnClick = btnProcCotacaoClick
    end
    object BitBtn3: TBitBtn
      Left = 806
      Top = 20
      Width = 108
      Height = 25
      Hint = 'Incluir cota'#231#227'o para o Fornecedor Selecionado'
      Caption = '+ Cota'#231#227'o Existente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object edCodCotacao: TEdit
      Left = 723
      Top = 20
      Width = 81
      Height = 21
      Hint = 'C'#243'digo da Cota'#231#227'o '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnExit = edCodCotacaoExit
    end
  end
  object GroupBox4: TGroupBox [4]
    Left = 0
    Top = 393
    Width = 982
    Height = 257
    Align = alBottom
    Caption = 'Cota'#231#227'o'
    TabOrder = 4
    object jvdbgrd2: TJvDBGrid
      Left = 2
      Top = 15
      Width = 713
      Height = 240
      Align = alClient
      DataSource = dsCotacao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = jvdbgrd2CellClick
      OnDrawColumnCell = jvdbgrd2DrawColumnCell
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'COTACAO_CODIGO'
          Title.Caption = 'C'#243'd.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_DATA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_DTENTREGA'
          Title.Caption = 'Data Entrega'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_FORNEC'
          Title.Caption = 'C'#243'd. Fornec.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_ITEM'
          Title.Caption = 'Prod./Material'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_ITEMDESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_SITUACAO'
          Title.Caption = 'Sit.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_QTDE'
          Title.Caption = 'Qtde.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_PRECO'
          Title.Caption = 'Preco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_DESCONTO'
          Title.Caption = 'Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_FRETE'
          Title.Caption = 'Frete'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_IPI'
          Title.Caption = 'IPI'
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 715
      Top = 15
      Width = 265
      Height = 240
      Align = alRight
      Caption = 'Cota'#231#245'es em aberto'
      TabOrder = 1
      object JvDBGrid1: TJvDBGrid
        Left = 5
        Top = 15
        Width = 257
        Height = 284
        Align = alCustom
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = JvDBGrid1CellClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'COTACAO_CODIGO'
            Title.Caption = 'Cot.'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COTACAO_FORNEC'
            Title.Caption = 'C'#243'd. Fornec.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEFORNECEDOR'
            Title.Caption = 'Fornecedor'
            Width = 780
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Title.Caption = 'Telefone'
            Visible = True
          end>
      end
    end
  end
  inherited DtSrc: TDataSource
    Top = 96
  end
  inherited XPMenu1: TXPMenu
    Left = 624
    Top = 96
  end
  inherited PopupMenu1: TPopupMenu
    Left = 656
    Top = 96
  end
  object sqlSolic: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT p.FAMILIA , p.CATEGORIA, p.MARCA, cs.SOLIC_CODIGO, '
      'cs.SOLIC_DATA, cs.SOLIC_PRODUTO, cs.SOLIC_QUANTIDADE, '
      'cs.SOLIC_SOLICITANTE, cs.SOLIC_APROVACAO, '
      
        'CASE cs.SOLIC_SITUACAO WHEN '#39'A'#39' THEN '#39'APROVADO'#39' WHEN '#39'C'#39' THEN '#39'C' +
        'ANCELADO'#39
      
        '      WHEN '#39'G'#39' THEN '#39'EM COTA'#199#195'O'#39' WHEN '#39'E'#39' THEN '#39'ENCERRADO'#39' ELSE ' +
        #39'OUTROS'#39' END AS SOLIC_SITUACAO,'
      'cs.SOLIC_DATAAPROV, cs.SOLIC_DESCRICAO, cs.SOLIC_TIPO, '
      'cs.SOLIC_DTNECESSIT, cs.SOLIC_OBSERVACAO'
      ', 0 as SELEC, p.UNIDADEMEDIDA'
      'FROM COMPRA_SOLIC cs'
      'inner join PRODUTOS p on p.codpro = cs.SOLIC_PRODUTO'
      'WHERE ((SOLIC_SITUACAO <> '#39'E'#39') '
      '      AND  (SOLIC_SITUACAO <> '#39'P'#39')'
      '      AND  (SOLIC_SITUACAO <> '#39'C'#39'))  '
      'ORDER BY SOLIC_SITUACAO DESC, SOLIC_DTNECESSIT DESC')
    SQLConnection = DM.sqlsisAdimin
    Left = 248
    Top = 120
  end
  object dspSolic: TDataSetProvider
    DataSet = sqlSolic
    Options = [poAllowCommandText]
    Left = 280
    Top = 120
  end
  object cdsSolic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSolic'
    Left = 312
    Top = 120
    object cdsSolicSOLIC_CODIGO: TIntegerField
      FieldName = 'SOLIC_CODIGO'
      Required = True
    end
    object cdsSolicSOLIC_DATA: TDateField
      FieldName = 'SOLIC_DATA'
    end
    object cdsSolicSOLIC_PRODUTO: TStringField
      FieldName = 'SOLIC_PRODUTO'
      Required = True
      Size = 15
    end
    object cdsSolicSOLIC_QUANTIDADE: TFloatField
      FieldName = 'SOLIC_QUANTIDADE'
    end
    object cdsSolicSOLIC_SOLICITANTE: TStringField
      FieldName = 'SOLIC_SOLICITANTE'
      Size = 30
    end
    object cdsSolicSOLIC_SITUACAO: TStringField
      FieldName = 'SOLIC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsSolicSOLIC_APROVACAO: TStringField
      FieldName = 'SOLIC_APROVACAO'
      Size = 30
    end
    object cdsSolicSOLIC_DATAAPROV: TDateField
      FieldName = 'SOLIC_DATAAPROV'
    end
    object cdsSolicSOLIC_DESCRICAO: TStringField
      FieldName = 'SOLIC_DESCRICAO'
      Size = 300
    end
    object cdsSolicSOLIC_TIPO: TStringField
      FieldName = 'SOLIC_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsSolicSOLIC_DTNECESSIT: TDateField
      FieldName = 'SOLIC_DTNECESSIT'
    end
    object cdsSolicSOLIC_OBSERVACAO: TStringField
      FieldName = 'SOLIC_OBSERVACAO'
      Size = 300
    end
    object cdsSolicFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object cdsSolicCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object cdsSolicMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsSolicSELEC: TIntegerField
      FieldName = 'SELEC'
    end
    object cdsSolicUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object dsSolic: TDataSource
    DataSet = cdsSolic
    Left = 344
    Top = 120
  end
  object sqlCotacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FORNEC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORNEC'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM COMPRA_COTACAO '
      'WHERE ((COTACAO_FORNEC = :FORNEC) '
      '         OR (:FORNEC = 0)) '
      '       AND COTACAO_SITUACAO = '#39'P'#39)
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 80
  end
  object dspCotacao: TDataSetProvider
    DataSet = sqlCotacao
    Left = 200
    Top = 80
  end
  object cdsCotacao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FORNEC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORNEC'
        ParamType = ptInput
      end>
    ProviderName = 'dspCotacao'
    Left = 232
    Top = 80
    object cdsCotacaoCOTACAO_CODIGO: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      Required = True
    end
    object cdsCotacaoCOTACAO_DATA: TDateField
      FieldName = 'COTACAO_DATA'
    end
    object cdsCotacaoCOTACAO_FORNEC: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object cdsCotacaoCOTACAO_SOLICIT: TStringField
      FieldName = 'COTACAO_SOLICIT'
    end
    object cdsCotacaoCOTACAO_ITEMDESCRICAO: TStringField
      FieldName = 'COTACAO_ITEMDESCRICAO'
      Size = 300
    end
    object cdsCotacaoCOTACAO_SITUACAO: TStringField
      FieldName = 'COTACAO_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCotacaoCOTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
    end
    object cdsCotacaoCOTACAO_PRECO: TFloatField
      FieldName = 'COTACAO_PRECO'
    end
    object cdsCotacaoCOTACAO_USER: TStringField
      FieldName = 'COTACAO_USER'
    end
    object cdsCotacaoCOTACAO_ITEM: TStringField
      FieldName = 'COTACAO_ITEM'
      Required = True
      Size = 15
    end
    object cdsCotacaoCOTACAO_DTENTREGA: TDateField
      FieldName = 'COTACAO_DTENTREGA'
    end
    object cdsCotacaoCOTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      Size = 30
    end
    object cdsCotacaoCOTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      Size = 200
    end
    object cdsCotacaoCOTACAO_IPI: TFloatField
      FieldName = 'COTACAO_IPI'
    end
    object cdsCotacaoCOTACAO_DESCONTO: TFloatField
      FieldName = 'COTACAO_DESCONTO'
    end
    object cdsCotacaoCOTACAO_FRETE: TFloatField
      FieldName = 'COTACAO_FRETE'
    end
  end
  object dsCotacao: TDataSource
    DataSet = cdsCotacao
    OnStateChange = dsCotacaoStateChange
    Left = 264
    Top = 80
  end
  object sqlBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 296
    Top = 80
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 336
    Top = 80
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT distinct(COTACAO_FORNEC), f.NOMEFORNECEDOR, '
      
        '('#39'( '#39' || ef.DDD ||  '#39' )   '#39' || ef.TELEFONE) as TELEFONE, COTACAO' +
        '_CODIGO'
      '  FROM COMPRA_COTACAO, FORNECEDOR f, ENDERECOFORNECEDOR ef'
      'WHERE COTACAO_FORNEC = f.CODFORNECEDOR '
      '     AND f.CODFORNECEDOR = ef.CODFORNECEDOR'
      '     AND ef.TIPOEND = 0'
      '     AND COTACAO_SITUACAO = '#39'P'#39)
    SQLConnection = DM.sqlsisAdimin
    Left = 432
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = [poAllowCommandText]
    Left = 464
    Top = 64
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 496
    Top = 72
    object ClientDataSet1COTACAO_FORNEC: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object ClientDataSet1NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 400
    end
    object ClientDataSet1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ReadOnly = True
      Size = 22
    end
    object ClientDataSet1COTACAO_CODIGO: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      ReadOnly = True
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 528
    Top = 80
  end
  object ImageList2: TImageList
    Left = 544
    Top = 392
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003142
      7300294AB500A5522100A5522100A5522100A5522100A5522100A55221008463
      6300EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000297B
      DE00297BDE00A5522100C68C6B00C68C6B00C68C6B00C68C6B00AD7B7300C68C
      6B00846363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000297B
      DE0031427300A5522100C6A59400C6A59400C6A59400C68C6B00C68C6B00C68C
      6B00A5522100EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00E7E7E700E7E7
      E700EFEFEF00E7E7E700A5522100C68C6B00E7BD9400A5522100F79C9C00C68C
      6B00C68C6B00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000294AB50031427300294AB500A552
      2100A5522100A5522100A5522100C68C6B00EFCE9C00C68C6B00C68C6B00AD7B
      7300A55221000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031427300297BDE00297BDE00B573
      4A00B5734A00B5734A00A5522100B5734A00E7BD9400B5734A00C68C6B00B573
      4A00A55221000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063638400297BDE0031427300C68C
      6B00C68C6B00C68C6B00A5522100B5734A0031427300314273009C5A5A00A552
      2100BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003963BD00636384003963BD00B573
      4A00B5734A00B5734A009C73730010216B0021429C0010216B00080808002929
      2900424242000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000214A5A0021429C00294AB500294AB50010216B000808
      080008080800EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031427300395ACE003963BD00395ACE00294AB5002929
      290008080800C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000295A8400297BDE00297BDE00297BDE003963BD002929
      290029292900C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031427300297BDE00294AB500214A5A00424242004242
      4200424242000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052525200292929004242420063636300636363005252
      5200292929000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052525200AD9C9400A5A5A500847B7B004242
      4200E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000847B7B008C8C8400CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A7342004A7342004A73
      42004A7342004A7342004A7342004A7342004A7342004A734200396B94006363
      840052849C00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005263310052AD520052AD520052AD
      520052AD520052AD520052AD520052AD520052AD52004A73420039A5F70039A5
      F700396B9400F7F7F7000000000000000000000000000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B5000000B500000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000F7FFF7000000000000000000000000000000
      0000000000000000000000000000000000004A73420063BD6B0052AD520052AD
      5200A5CEA500A5CEA500A5CEA500A5CEA500A5CEA5004A734200396B940039A5
      F700396B9400EFEFEF000000000000000000000000000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000000000000000000000009CADAD0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000108C290018732100C6CEC60000000000000000000000
      00000000000000000000000000000000000052AD520052AD520052AD5200C6D6
      BD004A7342004A7342004A7342004A7342004A7342004A73420052849C00396B
      940052849C00EFEFEF000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      B5000000B500000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000318C4A0000940000008400005AA56B0000000000000000000000
      00000000000000000000000000000000000052AD520052AD5200A5CEA5004A73
      4200C6D6BD00C6D6BD0063BD6B0063BD6B004A734200EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F7F7F700FFFFFF0000000000000000000000D6000000
      BD000000B5000000B500000000000000000000000000000000000000B5000000
      B50000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00008CB59C001084310000840000008C0000008C210000000000000000000000
      00000000000000000000000000000000000052AD520052AD520063BD6B0063BD
      6B00C6D6BD00C6D6BD0063BD6B0063BD6B004A7342004A7342004A7342004A73
      42004A734200396B9400295A840052849C000000000000000000000000000000
      00000000B5000000B5000000B500000000000000B5000000B5000000B5000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000008CB5
      9C0010843100008400000000000042AD5A000073000073AD8400000000000000
      0000000000000000000000000000000000004A73420052AD520063BD6B0052AD
      5200C6D6BD00FFF7EF0063BD6B0063BD6B004A73420052AD520052AD520052AD
      52004A73420039A5F70039A5F700295A84000000000000000000000000000000
      0000000000000000B5000000C6000000C6000000CE000000B500000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000002163
      310010732900000000000000000000000000218C290029733900000000000000
      000000000000000000000000000000000000000000004A73420052AD52008C9C
      7B00ADBDCE00ADBDCE0063BD6B0063BD6B004A73420094BD7300A5CEA500A5CE
      A5004A734200295A840039A5F700295A84000000000000000000000000000000
      000000000000000000000000C6000000C6000000DE0000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C000042A552000000
      0000000000000000000000000000000000000000000000000000214A5A002194
      D600297BDE00298CBD0052849C004A734200000000009CB594004A7342004A73
      42004A73420052849C00295A840052849C000000000000000000000000000000
      0000000000000000B5000000D6000000CE000000DE000000EF00000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000108C2900187B31008CCE
      9C00000000000000000000000000000000000000000000000000297BDE002994
      F7002994F7002994F700297BDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E7000000DE000000D60000000000000000000000E7000000EF000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000108C2900187B
      31008CCE9C00000000000000000000000000000000000000000039A5F70039A5
      F70039A5F70039A5F70039A5F7006B8CB5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000DE000000EF00000000000000000000000000000000000000FF000000
      F70000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000108C
      2900187B31008CCE9C00000000000000000000000000298CBD004AB5F7004AB5
      F7004AB5F7004AB5F7004AB5F7004A9CC600F7F7F70000000000000000000000
      00000000000000000000000000000000000000000000000000000000F7000000
      F7000000FF000000000000000000000000000000000000000000000000000000
      F7000000F700000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000108C2900187B31008CCE9C0000000000000000002194D6004AB5F7004AB5
      F7004AB5F7004AB5F7004AB5F7006BA5BD00EFEFEF0000000000000000000000
      000000000000000000000000000000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000F7000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000106B2900188429000000000000000000297BA500399CDE00399C
      DE00399CDE00299CC600299CC6006BA5BD000000000000000000000000000000
      0000000000000000000000000000000000000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD009CADAD009CAD
      AD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CAD
      AD009CADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000088C2100000000000000000000000000399CDE0094BD
      CE007BCEEF006BB5D600298CBD00EFF7F7000000000000000000000000000000
      0000000000000000000000000000000000000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000087B2100000000000000000052849C006BB5
      D6009CCEDE006BA5BD00C6DEE700000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E00F000000000000E007000000000000
      E007000000000000E00300000000000080030000000000000007000000000000
      000700000000000000070000000000000007000000000000FC03000000000000
      FC03000000000000FC03000000000000FC07000000000000FC07000000000000
      FE07000000000000FF1F000000000000FFFFFFFFFFFF8003FFFCFFFFFFFF0003
      9FF9C003FEFF00038FF38003FC7F000387E78003F87F0000C3CF8003F07F0000
      F11F8003E23F0000F83F8003E73F8000FC7F8003FF9FC080F83F8003FF8FC1FF
      F19F8003FFC7C0FFE3CF8003FFE3807FC7E78003FFF1807F8FFB8003FFF980FF
      1FFF8007FFFDC0FF3FFFFFFFFFFEC1FF00000000000000000000000000000000
      000000000000}
  end
end
