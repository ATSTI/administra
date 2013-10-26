inherited fCadSetor: TfCadSetor
  Left = 312
  Top = 122
  Caption = 'Cadastro de Setor'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 176
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit [4]
    Left = 72
    Top = 88
    Width = 82
    Height = 21
    DataField = 'CODSEC'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [5]
    Left = 176
    Top = 88
    Width = 529
    Height = 21
    DataField = 'DESCR'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBGrid1: TDBGrid [6]
    Left = 72
    Top = 128
    Width = 633
    Height = 297
    DataSource = DtSrc
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODSEC'
        Title.Caption = 'Codigo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Caption = 'Descri'#231#227'o'
        Width = 349
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsCa
  end
  object cdsCa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCa'
    Left = 360
    Top = 56
    object cdsCaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCaCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object cdsCaDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
  end
  object dspCa: TDataSetProvider
    DataSet = sqlCa
    Left = 312
    Top = 56
  end
  object sqlCa: TSQLDataSet
    CommandText = 'select ID, CODSEC, DESCR  from CADSEC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 256
    Top = 56
    object sqlCaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlCaCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object sqlCaDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
  end
end
