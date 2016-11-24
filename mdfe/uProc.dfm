object fProc: TfProc
  Left = 124
  Top = 120
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
  Position = poDesktopCenter
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
          FieldName = 'COD_MDFE'
          Title.Caption = 'C'#243'd.'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_MDF'
          Title.Caption = 'N'#250'm.'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Title.Caption = 'S'#233'rie'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Caption = 'Modelo'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_MDFE'
          Title.Caption = 'Chave'
          Width = 271
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_MDF'
          Title.Caption = 'Data'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLOENV'
          Title.Caption = 'Prot. Env.'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLOENC'
          Title.Caption = 'Prot. Enc.'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLOCAN'
          Title.Caption = 'Prot. Canc.'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_DESCARREGAMENTO'
          Title.Caption = 'UF-d'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_PERCURSO'
          Title.Caption = 'UF-perc.'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_MUNICIPIO_DESCARREG'
          Title.Caption = 'C.Mun.-d'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUNICIPO_DESCARREG'
          Title.Caption = 'Munic'#237'pio-d'
          Width = 119
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
