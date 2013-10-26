inherited fUnidadeMedida: TfUnidadeMedida
  Caption = 'Cadastro de Unidade de Medida'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gridUn: TJvDBUltimGrid [2]
    Left = 0
    Top = 51
    Width = 772
    Height = 423
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODUN'
        Title.Caption = 'UN'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o da Unidade de Medida'
        Width = 350
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsUn
  end
  object sqlUn: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM UNIDADEMEDIDA')
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 16
  end
  object dspUn: TDataSetProvider
    DataSet = sqlUn
    Left = 280
    Top = 16
  end
  object cdsUn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUn'
    Left = 320
    Top = 16
    object cdsUnCODUN: TStringField
      FieldName = 'CODUN'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsUnDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
end
