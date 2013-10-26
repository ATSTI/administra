inherited fTb_Ibge: TfTb_Ibge
  Width = 722
  Height = 571
  Caption = 'Tabela do IBGE'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 240
    Top = 56
    Width = 86
    Height = 13
    Caption = 'Nome do Local'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited MMJPanel1: TMMJPanel
    Top = 490
    Width = 714
  end
  inherited MMJPanel2: TMMJPanel
    Width = 714
    Height = 145
    inherited Label1: TLabel
      Left = 128
      Width = 442
      Caption = 'Tabela de Cidades do IBGE'
    end
    inherited Label2: TLabel
      Left = 132
      Width = 442
      Caption = 'Tabela de Cidades do IBGE'
    end
    object Label3: TLabel
      Left = 32
      Top = 96
      Width = 86
      Height = 13
      Caption = 'Nome do Local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 156
      Top = 96
      Width = 60
      Height = 13
      Caption = 'C'#243'd. IBGE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 268
      Top = 96
      Width = 111
      Height = 13
      Caption = 'Nome do Munic'#237'pio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 437
      Top = 96
      Width = 79
      Height = 13
      Caption = 'Tipo do Local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 520
      Top = 96
      Width = 112
      Height = 13
      Caption = 'Sequ'#234'ncia do IBGE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 640
      Top = 96
      Width = 40
      Height = 13
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 32
      Top = 56
      Width = 86
      Height = 13
      Caption = 'Nome do Local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 361
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 225
      Top = 56
      Width = 73
      Height = 13
      Caption = 'C'#243'digo IBGE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 112
      Width = 129
      Height = 21
      DataField = 'NM_LOCALIDADE'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 152
      Top = 112
      Width = 67
      Height = 21
      DataField = 'CD_IBGE'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 224
      Top = 112
      Width = 211
      Height = 21
      DataField = 'NM_MUNICIPIO'
      DataSource = DtSrc
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 438
      Top = 112
      Width = 76
      Height = 21
      DataField = 'NM_TIPO_LOCALIDADE'
      DataSource = DtSrc
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 519
      Top = 112
      Width = 113
      Height = 21
      DataField = 'SQ_IBGE'
      DataSource = DtSrc
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 637
      Top = 112
      Width = 68
      Height = 21
      DataField = 'CD_UF'
      DataSource = DtSrc
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 169
      Top = 72
      Width = 45
      Height = 21
      Caption = 'Filtrar'
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      Left = 14
      Top = 72
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 144
    Width = 714
    Height = 345
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NM_LOCALIDADE'
        Title.Caption = 'Nome do Local'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_IBGE'
        Title.Caption = 'Cod. IBGE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_MUNICIPIO'
        Title.Caption = 'Nome do Munic'#237'pio'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_TIPO_LOCALIDADE'
        Title.Caption = 'Tipo do Local'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SQ_IBGE'
        Title.Caption = 'Sequ'#234'ncia do IBGE'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_UF'
        Title.Caption = 'Estado'
        Width = 56
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn [4]
    Left = 425
    Top = 72
    Width = 45
    Height = 21
    Caption = 'Filtrar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Edit2: TEdit [5]
    Left = 358
    Top = 72
    Width = 59
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object Edit3: TEdit [6]
    Left = 222
    Top = 72
    Width = 80
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object BitBtn3: TBitBtn [7]
    Left = 305
    Top = 72
    Width = 45
    Height = 21
    Caption = 'Filtrar'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  inherited XPMenu1: TXPMenu
    Left = 640
  end
  inherited PopupMenu1: TPopupMenu
    Left = 672
  end
  inherited DtSrc: TDataSource
    DataSet = cds_IBGE
    Left = 608
  end
  object cds_IBGE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_IBGE'
    Left = 72
    Top = 8
    object cds_IBGENM_LOCALIDADE: TStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object cds_IBGECD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object cds_IBGENM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object cds_IBGENM_TIPO_LOCALIDADE: TStringField
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object cds_IBGESQ_IBGE: TIntegerField
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object cds_IBGECD_UF: TStringField
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
  end
  object dsp_IBGE: TDataSetProvider
    DataSet = sds_IBGE
    Options = [poAllowCommandText]
    Left = 40
    Top = 8
  end
  object sds_IBGE: TSQLDataSet
    CommandText = 'Select * From TB_IBGE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 8
    object sds_IBGENM_LOCALIDADE: TStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object sds_IBGECD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object sds_IBGENM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object sds_IBGENM_TIPO_LOCALIDADE: TStringField
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object sds_IBGESQ_IBGE: TIntegerField
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object sds_IBGECD_UF: TStringField
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
  end
end
