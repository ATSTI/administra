inherited fDeclaracaoImportacao: TfDeclaracaoImportacao
  Left = 60
  Top = 137
  Width = 800
  Height = 467
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 386
    Width = 792
    inherited btnGravar: TBitBtn
      Left = 466
      Width = 95
    end
    inherited btnIncluir: TBitBtn
      Left = 466
      Width = 95
    end
    inherited btnCancelar: TBitBtn
      Left = 571
      Width = 95
    end
    inherited btnExcluir: TBitBtn
      Left = 571
      Width = 95
    end
    inherited btnProcurar: TBitBtn
      Left = 17
      Width = 32
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 676
      Width = 95
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 792
    inherited Label1: TLabel
      Left = 18
      Width = 364
      Height = 36
      Caption = 'Documento de Importa'#231#227'o'
      Font.Height = -32
    end
    inherited Label2: TLabel
      Left = 15
      Width = 364
      Height = 36
      Caption = 'Documento de Importa'#231#227'o'
      Font.Height = -32
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 54
    Width = 792
    Height = 68
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 97
      Height = 13
      Caption = 'N'#250'mero DI/DSI/DA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 218
      Top = 10
      Width = 68
      Height = 13
      Caption = 'Data Registro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 416
      Top = 7
      Width = 101
      Height = 13
      Caption = 'Local Desembara'#231'o :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 37
      Width = 89
      Height = 13
      Caption = 'UF Desembara'#231'o :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 190
      Top = 37
      Width = 95
      Height = 13
      Caption = 'Data Desembara'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 457
      Top = 37
      Width = 57
      Height = 13
      Caption = 'Exportador :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 114
      Top = 7
      Width = 92
      Height = 21
      DataField = 'DI_NUMDI'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 294
      Top = 9
      Width = 109
      Height = 21
      DataField = 'DI_DATA'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 526
      Top = 9
      Width = 250
      Height = 21
      DataField = 'DI_LOCALDESEMB'
      DataSource = DtSrc
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 115
      Top = 37
      Width = 44
      Height = 21
      DataField = 'DI_UFDESEMB'
      DataSource = DtSrc
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 295
      Top = 37
      Width = 109
      Height = 21
      DataField = 'DI_DATADESEMB'
      DataSource = DtSrc
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 526
      Top = 37
      Width = 44
      Height = 21
      DataField = 'DI_CODEXPORTADOR'
      DataSource = DtSrc
      TabOrder = 5
      OnExit = DBEdit6Exit
    end
    object Button1: TButton
      Left = 572
      Top = 37
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 6
      OnClick = Button1Click
    end
    object DBEdit7: TDBEdit
      Left = 594
      Top = 37
      Width = 182
      Height = 21
      DataField = 'NOMEFORNECEDOR'
      DataSource = DtSrc
      ReadOnly = True
      TabOrder = 7
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [3]
    Left = 0
    Top = 122
    Width = 792
    Height = 264
    Align = alClient
    DataSource = DtSrc
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
        FieldName = 'DI_NUMDI'
        Title.Caption = 'N'#250'mero DI/DSI/DA'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_DATA'
        Title.Caption = 'Data Registro'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_LOCALDESEMB'
        Title.Caption = 'Local Desembara'#231'o'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_UFDESEMB'
        Title.Caption = 'UF Desembara'#231'o'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_DATADESEMB'
        Title.Caption = 'Data Desembara'#231'o'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_CODEXPORTADOR'
        Title.Caption = 'C'#243'd.'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFORNECEDOR'
        Title.Caption = 'Exportador'
        Width = 180
        Visible = True
      end>
  end
  inherited XPMenu1: TXPMenu
    Left = 96
    Top = 0
  end
  inherited DtSrc: TDataSource
    DataSet = cdsDI
    Left = 320
    Top = 0
  end
  object dspDI: TDataSetProvider
    DataSet = sdsDI
    Left = 32
  end
  object cdsDI: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'coddi'
        ParamType = ptInput
      end>
    ProviderName = 'dspDI'
    Left = 64
    object cdsDIDI_CODDI: TIntegerField
      FieldName = 'DI_CODDI'
      Required = True
    end
    object cdsDIDI_NUMDI: TStringField
      FieldName = 'DI_NUMDI'
      Required = True
      Size = 10
    end
    object cdsDIDI_DATA: TDateField
      FieldName = 'DI_DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDIDI_LOCALDESEMB: TStringField
      FieldName = 'DI_LOCALDESEMB'
      Size = 60
    end
    object cdsDIDI_UFDESEMB: TStringField
      FieldName = 'DI_UFDESEMB'
      Size = 2
    end
    object cdsDIDI_DATADESEMB: TDateField
      FieldName = 'DI_DATADESEMB'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDIDI_CODEXPORTADOR: TStringField
      FieldName = 'DI_CODEXPORTADOR'
      Size = 60
    end
    object cdsDINOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cdsDINOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Size = 10
    end
    object cdsDICODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
  end
  object sdsDI: TSQLDataSet
    CommandText = 
      'select DI_CODDI, '#13#10'DI_NUMDI, '#13#10'DI_DATA, '#13#10'DI_LOCALDESEMB, '#13#10'DI_U' +
      'FDESEMB, '#13#10'DI_DATADESEMB,'#13#10'DI_CODEXPORTADOR,  NOTASERIE, CODMOVI' +
      'MENTO, '#13#10'NOMEFORNECEDOR from DECLARACAOIMPORTACAO, FORNECEDOR'#13#10'W' +
      'here CODFORNECEDOR = DI_CODEXPORTADOR'#13#10'and DI_CODDI = :coddi'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'coddi'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    object sdsDIDI_CODDI: TIntegerField
      FieldName = 'DI_CODDI'
      Required = True
    end
    object sdsDIDI_NUMDI: TStringField
      FieldName = 'DI_NUMDI'
      Required = True
      Size = 10
    end
    object sdsDIDI_DATA: TDateField
      FieldName = 'DI_DATA'
    end
    object sdsDIDI_LOCALDESEMB: TStringField
      FieldName = 'DI_LOCALDESEMB'
      Size = 60
    end
    object sdsDIDI_UFDESEMB: TStringField
      FieldName = 'DI_UFDESEMB'
      Size = 2
    end
    object sdsDIDI_DATADESEMB: TDateField
      FieldName = 'DI_DATADESEMB'
    end
    object sdsDIDI_CODEXPORTADOR: TStringField
      FieldName = 'DI_CODEXPORTADOR'
      Size = 60
    end
    object sdsDINOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object sdsDINOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Size = 10
    end
    object sdsDICODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
  end
end
