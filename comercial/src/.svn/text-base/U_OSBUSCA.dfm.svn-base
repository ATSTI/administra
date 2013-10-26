object F_OSBUSCA: TF_OSBUSCA
  Left = 218
  Top = 146
  Width = 866
  Height = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 45
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object lbl1: TLabel
      Left = 66
      Top = 42
      Width = 323
      Height = 25
      Caption = 'Entre com o C'#243'digo de Barras -->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Modern No. 20'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = True
    end
  end
  object MMJPanel5: TMMJPanel
    Left = 0
    Top = 499
    Width = 850
    Height = 40
    Align = alBottom
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object btn_cancelar: TBitBtn
      Left = 336
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F3-Cancelar'
      TabOrder = 7
    end
    object btn_gravar: TBitBtn
      Left = 249
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F4-Gravar'
      TabOrder = 6
    end
    object btn_excluir: TBitBtn
      Left = 336
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F7-Excluir'
      Enabled = False
      TabOrder = 2
    end
    object btn_incluir: TBitBtn
      Left = 249
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F2-Incluir'
      TabOrder = 0
    end
    object btn4: TBitBtn
      Left = 424
      Top = 5
      Width = 83
      Height = 31
      Caption = 'Apr. Or'#231'amento'
      TabOrder = 1
    end
    object btn_procura: TBitBtn
      Left = 162
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F8-Procurar'
      TabOrder = 3
    end
    object btn12: TBitBtn
      Left = 511
      Top = 5
      Width = 83
      Height = 31
      Caption = 'Relat'#243'rios'
      TabOrder = 4
    end
    object btn_sair: TBitBtn
      Left = 598
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F9-Sair'
      TabOrder = 5
    end
  end
  object JvDBGrid5: TJvDBGrid
    Left = 0
    Top = 45
    Width = 850
    Height = 454
    Align = alClient
    BorderStyle = bsNone
    DataSource = D_BUSCAOS
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
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
        FieldName = 'CODOS'
        Title.Caption = 'Cod. OS'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLACA'
        Title.Caption = 'Placa'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCLIENTE'
        Title.Caption = 'Cod. Cliente'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Cliente'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROBLEMAS'
        Title.Caption = 'Observa'#231#245'es Gerais'
        Width = 357
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_INI'
        Title.Caption = 'Data Inicio'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_FIM'
        Title.Caption = 'Data Termino'
        Width = 54
        Visible = True
      end>
  end
  object S_BUSCAOS: TSQLDataSet
    CommandText = 
      'SELECT o.*, cli.NOMECLIENTE, vei.PLACA '#13#10'FROM OS o '#13#10'left outer ' +
      'join CLIENTES cli on cli.CODCLIENTE = o.CODCLIENTE '#13#10'left outer ' +
      'join VEICULO vei on vei.COD_VEICULO = o.CODVEICULO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 160
    object S_BUSCAOSCODOS: TIntegerField
      FieldName = 'CODOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object S_BUSCAOSCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object S_BUSCAOSCODVEICULO: TIntegerField
      FieldName = 'CODVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object S_BUSCAOSCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object S_BUSCAOSDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object S_BUSCAOSDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object S_BUSCAOSPROBLEMAS: TStringField
      FieldName = 'PROBLEMAS'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object S_BUSCAOSSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object S_BUSCAOSDATA_INI: TDateField
      FieldName = 'DATA_INI'
      ProviderFlags = [pfInUpdate]
    end
    object S_BUSCAOSDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object S_BUSCAOSNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object S_BUSCAOSPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
  end
  object P_BUSCAOS: TDataSetProvider
    DataSet = S_BUSCAOS
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 216
    Top = 160
  end
  object C_BUSCAOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_BUSCAOS'
    Left = 256
    Top = 160
    object C_BUSCAOSCODOS: TIntegerField
      FieldName = 'CODOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object C_BUSCAOSCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object C_BUSCAOSCODVEICULO: TIntegerField
      FieldName = 'CODVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object C_BUSCAOSCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object C_BUSCAOSDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object C_BUSCAOSDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object C_BUSCAOSPROBLEMAS: TStringField
      FieldName = 'PROBLEMAS'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object C_BUSCAOSSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object C_BUSCAOSDATA_INI: TDateField
      FieldName = 'DATA_INI'
      ProviderFlags = [pfInUpdate]
    end
    object C_BUSCAOSDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object C_BUSCAOSNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object C_BUSCAOSPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
  end
  object D_BUSCAOS: TDataSource
    DataSet = C_BUSCAOS
    Left = 296
    Top = 160
  end
end
