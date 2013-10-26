inherited fSerieNF: TfSerieNF
  Left = 259
  Top = 116
  Width = 491
  Height = 423
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 69
    Top = 78
    Width = 44
    Height = 16
    Caption = 'S'#233'rie ..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 18
    Top = 108
    Width = 95
    Height = 16
    Caption = 'Ultimo n'#250'mero..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 342
    Width = 483
    TabOrder = 2
    inherited btnGravar: TBitBtn
      Left = 77
    end
    inherited btnIncluir: TBitBtn
      Left = 77
    end
    inherited btnCancelar: TBitBtn
      Left = 190
    end
    inherited btnExcluir: TBitBtn
      Left = 190
    end
    inherited btnProcurar: TBitBtn
      Left = 18
      Top = -54
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 303
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 483
    TabOrder = 3
    inherited Label1: TLabel
      Left = 127
      Width = 225
      Caption = 'S'#233'rie N. Fiscal'
    end
    inherited Label2: TLabel
      Left = 131
      Width = 225
      Caption = 'S'#233'rie N. Fiscal'
    end
  end
  object DBEdit2: TDBEdit [4]
    Left = 116
    Top = 78
    Width = 94
    Height = 24
    CharCase = ecUpperCase
    DataField = 'SERIE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [5]
    Left = 116
    Top = 103
    Width = 95
    Height = 24
    DataField = 'ULTIMO_NUMERO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [6]
    Left = 215
    Top = 78
    Width = 262
    Height = 251
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ULTIMO_NUMERO'
        Title.Caption = 'Ultimo n'#250'mero'
        Visible = True
      end>
  end
  inherited XPMenu1: TXPMenu
    Left = 136
  end
  inherited PopupMenu1: TPopupMenu
    Left = 168
  end
  inherited sds: TSQLDataSet
    SQLConnection = DM.sqlsisAdimin
    CommandText = 'select * from SERIES'
    MaxBlobSize = -1
    Left = 8
    object sdsSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCODSERIE: TStringField
      FieldName = 'CODSERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited dsp: TDataSetProvider
    Left = 40
  end
  inherited cds: TClientDataSet
    Left = 72
    object cdsSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object cdsULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object cdsCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object cdsNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
  end
  inherited DtSrc: TDataSource
    Left = 104
  end
end
