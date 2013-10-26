object FManu: TFManu
  Left = 315
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sistema'
  ClientHeight = 351
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LInformacao: TLabel
    Left = 8
    Top = 16
    Width = 434
    Height = 27
    Alignment = taCenter
    AutoSize = False
    Caption = 'LInformacao'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 120
    Width = 377
    Height = 193
    DataSource = DSCDSFiles
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object SQLFiles: TSQLDataSet
    CommandText = 'SELECT * FROM ATUALIZA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Form1.sc
    Left = 240
    Top = 40
  end
  object DSPFiles: TDataSetProvider
    DataSet = SQLFiles
    Options = [poAllowCommandText]
    Left = 280
    Top = 40
  end
  object CDSFiles: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ATUALIZA'
    Params = <>
    ProviderName = 'DSPFiles'
    Left = 320
    Top = 40
    object CDSFilesCODATUALIZA: TIntegerField
      FieldName = 'CODATUALIZA'
      Required = True
    end
    object CDSFilesSCRIPT: TStringField
      FieldName = 'SCRIPT'
      Size = 200
    end
    object CDSFilesDATASCRIPT: TDateField
      FieldName = 'DATASCRIPT'
    end
    object CDSFilesPARAQSERVE: TStringField
      FieldName = 'PARAQSERVE'
      Size = 200
    end
    object CDSFilesVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
    object CDSFilesINSERIDO: TStringField
      FieldName = 'INSERIDO'
      FixedChar = True
      Size = 1
    end
    object CDSFilesDATA_MODIFICADO: TSQLTimeStampField
      FieldName = 'DATA_MODIFICADO'
    end
  end
  object DSCDSFiles: TDataSource
    DataSet = CDSFiles
    Left = 352
    Top = 40
  end
end
