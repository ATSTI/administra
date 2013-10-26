inherited fClasseCadastro: TfClasseCadastro
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 142
    Top = 142
    Width = 35
    Height = 16
    Caption = 'Turno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 342
    Top = 142
    Width = 93
    Height = 16
    Caption = 'Tipo De Ensino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 372
    Top = 96
    Width = 107
    Height = 16
    Caption = 'Descri'#231#227'o Classe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 287
    Top = 96
    Width = 42
    Height = 16
    Caption = 'Classe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [4]
    Left = 142
    Top = 95
    Width = 60
    Height = 16
    Caption = 'Cod.S'#233'rie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    object DBText1: TDBText
      Left = 6
      Top = 9
      Width = 425
      Height = 28
      DataField = 'TIPOENSINO'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBTextDestaque: TDBText
      Left = 8
      Top = 9
      Width = 425
      Height = 28
      DataField = 'TIPOENSINO'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = 8344832
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnGravar: TBitBtn
      Left = 210
    end
    inherited btnIncluir: TBitBtn
      Left = 210
    end
    inherited btnCancelar: TBitBtn
      Left = 333
    end
    inherited btnExcluir: TBitBtn
      Left = 333
    end
    inherited btnProcurar: TBitBtn
      Left = 12
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 456
    end
  end
  object dblSerie: TDBLookupComboBox [7]
    Left = 144
    Top = 111
    Width = 139
    Height = 24
    DataField = 'SERIE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'TIPOSERIE'
    ListField = 'SERIE'
    ListSource = DataSource1
    ParentFont = False
    TabOrder = 2
    OnClick = dblSerieClick
    OnKeyPress = FormKeyPress
  end
  object DBEditSerieLetra: TDBEdit [8]
    Left = 285
    Top = 111
    Width = 83
    Height = 24
    DataField = 'SERIELETRA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnExit = DBEditSerieLetraExit
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [9]
    Left = 370
    Top = 111
    Width = 260
    Height = 24
    DataField = 'DESC_CLASSE'
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
  object DBEdit3: TDBEdit [10]
    Left = 142
    Top = 157
    Width = 193
    Height = 24
    DataField = 'TURNO'
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
  object DBEdit2: TDBEdit [11]
    Left = 342
    Top = 157
    Width = 288
    Height = 24
    DataField = 'TIPOENSINO'
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
  object DBGridSeries: TDBGrid [12]
    Left = 341
    Top = 192
    Width = 288
    Height = 232
    DataSource = dsMaterias
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MATERIAS'
        Title.Alignment = taCenter
        Title.Caption = 'Materias'
        Width = 300
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid [13]
    Left = 142
    Top = 192
    Width = 193
    Height = 232
    DataSource = DtSrc
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIELETRA'
        Title.Alignment = taCenter
        Title.Caption = 'Classe/Turma'
        Width = 152
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = DM.TableSeries
  end
  object DataSource1: TDataSource
    DataSet = DM.TableTipoSerie
    Left = 680
    Top = 16
  end
  object dsMaterias: TDataSource
    DataSet = TableMaterias_proc
    Left = 736
    Top = 149
  end
  object sds: TSQLDataSet
    CommandText = 
      'select MATERIAS, TIPOENSINO, IDMATERIAS from TABMATERIAS where T' +
      'IPOENSINO = :pClasse'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pClasse'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 736
    Top = 58
    object sdsMATERIAS: TStringField
      FieldName = 'MATERIAS'
      Size = 50
    end
    object sdsTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object sdsIDMATERIAS: TIntegerField
      FieldName = 'IDMATERIAS'
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 88
  end
  object TableMaterias_proc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pClasse'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 736
    Top = 117
    object TableMaterias_procMATERIAS: TStringField
      FieldName = 'MATERIAS'
      Size = 50
    end
    object TableMaterias_procTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object TableMaterias_procIDMATERIAS: TIntegerField
      FieldName = 'IDMATERIAS'
      Required = True
    end
  end
end
