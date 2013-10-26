inherited fCargosFuncoes: TfCargosFuncoes
  Left = 245
  Top = 211
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 24
    Top = 64
    Width = 92
    Height = 16
    Caption = 'Cargo / Fun'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    inherited btnGravar: TBitBtn
      Left = 151
    end
    inherited btnIncluir: TBitBtn
      Left = 151
    end
    inherited btnCancelar: TBitBtn
      Left = 264
    end
    inherited btnExcluir: TBitBtn
      Left = 264
    end
    inherited btnProcurar: TBitBtn
      Left = 26
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 377
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited Label1: TLabel
      Left = 178
      Width = 270
      Caption = 'Cargos / Fun'#231#245'es'
    end
    inherited Label2: TLabel
      Left = 182
      Width = 270
      Caption = 'Cargos / Fun'#231#245'es'
    end
  end
  object JvDBGrid1: TJvDBGrid [3]
    Left = 24
    Top = 115
    Width = 577
    Height = 230
    BorderStyle = bsNone
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CARGOSFUNCOES'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Cargos / Fun'#231#245'es'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [4]
    Left = 24
    Top = 80
    Width = 576
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  inherited DtSrc: TDataSource
    DataSet = cCargo
  end
  object sCargo: TSQLDataSet
    CommandText = 'select * from CARGOSFUNCOES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 448
    Top = 8
    object sCargoCOD_CARGOSFUNCOES: TIntegerField
      FieldName = 'COD_CARGOSFUNCOES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sCargoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dCargos: TDataSetProvider
    DataSet = sCargo
    UpdateMode = upWhereKeyOnly
    Left = 480
    Top = 8
  end
  object cCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dCargos'
    Left = 512
    Top = 8
    object cCargoCOD_CARGOSFUNCOES: TIntegerField
      FieldName = 'COD_CARGOSFUNCOES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cCargoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
end
