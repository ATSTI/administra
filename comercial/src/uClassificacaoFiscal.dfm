inherited fClassificacaoFiscal: TfClassificacaoFiscal
  Left = 170
  Top = 187
  Width = 667
  Height = 483
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 16
    Top = 72
    Width = 94
    Height = 13
    Caption = 'Classifica'#231#227'o / CST'
  end
  object Label4: TLabel [1]
    Left = 178
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label5: TLabel [2]
    Left = 385
    Top = 72
    Width = 52
    Height = 13
    Caption = 'Icms Subs.'
  end
  object Label6: TLabel [3]
    Left = 465
    Top = 72
    Width = 68
    Height = 13
    Caption = 'Icms Subs. IC.'
  end
  object Label7: TLabel [4]
    Left = 552
    Top = 72
    Width = 73
    Height = 13
    Caption = 'Icms Subs. Ind.'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 395
    Width = 659
    inherited btnGravar: TBitBtn
      Left = 179
    end
    inherited btnIncluir: TBitBtn
      Left = 179
    end
    inherited btnCancelar: TBitBtn
      Left = 292
    end
    inherited btnExcluir: TBitBtn
      Left = 292
    end
    inherited btnProcurar: TBitBtn
      Left = -77
      Top = -51
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 405
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 659
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 156
      Top = -62
      Width = 373
      Caption = 'Classifica'#231#227'o Fiscal'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 160
      Top = -58
      Width = 373
      Caption = 'Classifica'#231#227'o Fiscal'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 657
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Classifica'#231#227'o Fiscal'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -32
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 16
    Top = 86
    Width = 161
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CLASSIFICAO'
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
  object DBEdit2: TDBEdit [8]
    Left = 178
    Top = 86
    Width = 205
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
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
  object DBGrid1: TDBGrid [9]
    Left = 16
    Top = 112
    Width = 633
    Height = 273
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLASSIFICAO'
        Title.Caption = 'Classifica'#231#227'o'
        Width = 150
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
        FieldName = 'ICMS_SUBST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IND'
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit [10]
    Left = 384
    Top = 86
    Width = 80
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBST'
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
  object DBEdit4: TDBEdit [11]
    Left = 465
    Top = 86
    Width = 86
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBST_IC'
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
  object DBEdit5: TDBEdit [12]
    Left = 552
    Top = 86
    Width = 89
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBST_IND'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  inherited PopupMenu1: TPopupMenu
    Left = 560
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    Left = 608
    Top = 24
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 576
    Top = 24
    object cdsCLASSIFICAO: TStringField
      FieldName = 'CLASSIFICAO'
      Required = True
      Size = 30
    end
    object cdsCODIGO_REDUZ: TStringField
      FieldName = 'CODIGO_REDUZ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsTIPO_CLASSIFICA: TStringField
      FieldName = 'TIPO_CLASSIFICA'
      Size = 30
    end
    object cdsICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 544
    Top = 24
  end
  object sds: TSQLDataSet
    CommandText = 
      'select CLASSIFICAO, '#13#10'          CODIGO_REDUZ, '#13#10'          DESCRI' +
      'CAO, '#13#10'          TIPO_CLASSIFICA,'#13#10'          ICMS_SUBST, '#13#10'     ' +
      '     ICMS_SUBST_IC, '#13#10'          ICMS_SUBST_IND '#13#10'from CLASSIFICA' +
      'CAOFISCAL where TIPO_CLASSIFICA = :TIPO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 512
    Top = 24
    object sdsCLASSIFICAO: TStringField
      FieldName = 'CLASSIFICAO'
      Required = True
      Size = 30
    end
    object sdsCODIGO_REDUZ: TStringField
      FieldName = 'CODIGO_REDUZ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsTIPO_CLASSIFICA: TStringField
      FieldName = 'TIPO_CLASSIFICA'
      Size = 30
    end
    object sdsICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sdsICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
      ProviderFlags = [pfInUpdate]
    end
  end
end
