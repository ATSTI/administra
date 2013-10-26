inherited fCadDep: TfCadDep
  Left = 282
  Top = 96
  Caption = 'Cadastro de Departamentos'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 64
    Top = 88
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 136
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 64
    Top = 184
    Width = 22
    Height = 13
    Caption = 'OBS'
    FocusControl = DBEdit3
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnExcluir: TBitBtn [0]
      Left = 274
      Enabled = True
      Visible = False
    end
    inherited btnGravar: TBitBtn [1]
    end
    inherited btnIncluir: TBitBtn [2]
      Left = 274
    end
    inherited btnCancelar: TBitBtn [3]
    end
    inherited btnProcurar: TBitBtn
      Left = 156
      Visible = False
      OnClick = btnProcurarClick
    end
  end
  object DBEdit1: TDBEdit [5]
    Left = 64
    Top = 104
    Width = 81
    Height = 21
    DataField = 'CODDEP'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [6]
    Left = 64
    Top = 152
    Width = 524
    Height = 21
    DataField = 'DESCR'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [7]
    Left = 64
    Top = 200
    Width = 524
    Height = 21
    DataField = 'OBS'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBGrid1: TDBGrid [8]
    Left = 64
    Top = 232
    Width = 681
    Height = 209
    DataSource = DtSrc
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODDEP'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsCa
    Left = 360
    Top = 16
  end
  object cdsCa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCA'
    Left = 304
    Top = 16
    object cdsCaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCaCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object cdsCaDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
    object cdsCaOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
  end
  object dspCA: TDataSetProvider
    DataSet = sqlCa
    Left = 240
    Top = 16
  end
  object sqlCa: TSQLDataSet
    CommandText = 'select ID, CODDEP, DESCR, OBS from CADDEP '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 192
    Top = 16
    object sqlCaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlCaCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object sqlCaDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
    object sqlCaOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
  end
end
