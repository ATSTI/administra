object fAtualiza: TfAtualiza
  Left = 33
  Top = 36
  Width = 724
  Height = 533
  Caption = 'fAtualiza'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 272
    Top = 464
    Width = 161
    Height = 25
    Caption = 'Executar Atualiza'#231#245'es'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 673
    Height = 441
    DataSource = ds
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SCRIPT'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATASCRIPT'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARAQSERVE'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERSAO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSERIDO'
        Visible = True
      end>
  end
  object sds: TSQLDataSet
    CommandText = 'select * from atualiza'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 480
    object sdsSCRIPT: TStringField
      FieldName = 'SCRIPT'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsDATASCRIPT: TDateField
      FieldName = 'DATASCRIPT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPARAQSERVE: TStringField
      FieldName = 'PARAQSERVE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsINSERIDO: TStringField
      FieldName = 'INSERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCODATUALIZA: TIntegerField
      FieldName = 'CODATUALIZA'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 480
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 96
    Top = 480
    object cdsSCRIPT: TStringField
      FieldName = 'SCRIPT'
      Size = 200
    end
    object cdsDATASCRIPT: TDateField
      FieldName = 'DATASCRIPT'
    end
    object cdsPARAQSERVE: TStringField
      FieldName = 'PARAQSERVE'
      Size = 200
    end
    object cdsVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
    object cdsINSERIDO: TStringField
      FieldName = 'INSERIDO'
      FixedChar = True
      Size = 1
    end
    object cdsCODATUALIZA: TIntegerField
      FieldName = 'CODATUALIZA'
      Required = True
    end
  end
  object ds: TDataSource
    DataSet = cds
    Left = 128
    Top = 480
  end
end
