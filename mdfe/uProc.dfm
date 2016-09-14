object fProc: TfProc
  Left = 192
  Top = 121
  Width = 1054
  Height = 534
  Caption = 'MDF-e'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 105
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 24
      Top = 16
      Width = 489
      Height = 81
      Caption = 'Per'#237'odo'
      TabOrder = 0
      object dtaProcura: TJvDatePickerEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 0
      end
      object dtaProcura2: TJvDatePickerEdit
        Left = 247
        Top = 23
        Width = 121
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 1
      end
      object cbPeriodo: TCheckBox
        Left = 16
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Por Per'#237'odo ?'
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 1046
    Height = 329
    Align = alClient
    TabOrder = 1
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 1
      Top = 1
      Width = 1044
      Height = 327
      Align = alClient
      DataSource = ds
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = JvDBUltimGrid1TitleClick
      MultiSelect = True
      MaxColumnWidth = 100
      MinColumnWidth = 20
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_MDFE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_MDF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_MDF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIGITO_MDF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODALIDADE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_MDF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_CARREGAMENTO'
          Title.Caption = 'UF_CAR'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_DESCARREGAMENTO'
          Title.Caption = 'UF_DES.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_MUNICIPIO_CARREG'
          Title.Caption = 'COD_MUN.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUNICIPO_CARREG'
          Title.Caption = 'MUNICIPO'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_PERCURSO'
          Title.Caption = 'UF'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_MUNICIPIO_DESCARREG'
          Title.Caption = 'COD_MUN'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUNICIPO_DESCARREG'
          Title.Caption = 'MUNICIPO_DES.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE1'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE2'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE3'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE4'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE5'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE6'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_NFE7'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_TRANSP'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNID_TRANSP'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_CARGA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNID_CARGA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDENT_CARGA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_NFE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_CARGA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNID_PESO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_BRUTO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_AUTORIZADO1'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_AUTORIZADO2'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INFO_ADIC_FISCO'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INFO_ADIC_CONTRIBUINTE'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RNTRC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIOT'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CINT'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TARA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAPKG'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAPM3'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROP_CNPJ'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROP_RNTRC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROP_NOME'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROP_IE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROP_UF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROP_TIPO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONDUTOR_NOME'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONDUTOR_CPF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_RODADO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_CARROCERIA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_VEICULO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_CINT'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_PLACA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_TARA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_CAPKG'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_CAPM3'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_CPF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_CNPJ'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_RNTRC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_NOME'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_IE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_UF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_TIPOPROP'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_TIPOCARROCERIA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REBOQUE_UFVEICULO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_VOLUME1'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_VOLUME2'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_VOLUME3'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_VOLUME4'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_VOLUME5'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_VOLUME6'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO_VOLUME7'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_MDFE'
          Width = 50
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 434
    Width = 1046
    Height = 73
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 776
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 856
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 944
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 696
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Procurar'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
  end
  object ds: TDataSource
    DataSet = dm.cds
    Left = 424
    Top = 32
  end
end
