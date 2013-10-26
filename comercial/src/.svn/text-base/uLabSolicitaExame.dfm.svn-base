inherited fLabSolicitaExame: TfLabSolicitaExame
  Left = 209
  Top = 105
  Width = 655
  Caption = 'Solicita'#231#227'o de Exame'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 647
    TabOrder = 1
    Background.StartColor = clMaroon
    object DBText1: TDBText
      Left = 224
      Top = 16
      Width = 201
      Height = 25
      DataField = 'GRUPO_CLIENTE'
      DataSource = dsClienteBusca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 225
      Top = 13
      Width = 201
      Height = 25
      DataField = 'GRUPO_CLIENTE'
      DataSource = dsClienteBusca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 647
    TabOrder = 0
    Background.StartColor = clMaroon
    Background.EndColor = clCaptionText
    inherited btnGravar: TBitBtn
      Left = 199
    end
    inherited btnIncluir: TBitBtn
      Left = 199
    end
    inherited btnCancelar: TBitBtn
      Left = 330
    end
    inherited btnExcluir: TBitBtn
      Left = 330
    end
    inherited btnProcurar: TBitBtn
      Left = 68
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 461
    end
  end
  object JvDBGrid1: TJvDBGrid [2]
    Left = 0
    Top = 193
    Width = 647
    Height = 281
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AlternateRowColor = clInfoBk
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
        FieldName = 'TIPOEXAME'
        Title.Caption = 'Exame'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Solicitante'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATASOLICITACAO'
        Title.Caption = 'Solicitado'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPREVISTAENTREGA'
        Title.Caption = 'Prev.Entrega'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAENTREGAMATERIAL'
        Title.Caption = 'Coleta'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATARETIRADA'
        Title.Caption = 'Entrega'
        Width = 58
        Visible = True
      end>
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 51
    Width = 647
    Height = 142
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 7
      Width = 43
      Height = 16
      Caption = 'Nome :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 51
      Width = 105
      Height = 16
      Caption = 'Exame Solicitado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 95
      Width = 110
      Height = 16
      Caption = 'M'#233'dico Solicitante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 426
      Top = 51
      Width = 99
      Height = 16
      Caption = 'Data Solicita'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 528
      Top = 51
      Width = 112
      Height = 16
      Caption = 'Data prev. Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbCliente: TJvDBSearchComboBox
      Left = 6
      Top = 23
      Width = 600
      Height = 24
      DataField = 'NOMECLIENTE'
      DataSource = dsClienteBusca
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 609
      Top = 22
      Width = 32
      Height = 25
      Hint = 'Incluir novo Cadastro'
      Caption = '...'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object cbExame: TDBComboBox
      Left = 6
      Top = 67
      Width = 195
      Height = 24
      AutoComplete = False
      DataField = 'DESCRICAO'
      DataSource = dtsexame
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object cbMedico: TJvDBSearchComboBox
      Left = 6
      Top = 111
      Width = 634
      Height = 24
      DataField = 'NOME_REPRFOR'
      DataSource = dsMedico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object JvDBDateTimePicker1: TJvDBDateTimePicker
      Left = 426
      Top = 67
      Width = 99
      Height = 24
      Date = 39364.311849861110000000
      Time = 39364.311849861110000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
      DropDownDate = 39364.000000000000000000
      DataField = 'DATASOLICITACAO'
      DataSource = DtSrc
    end
    object JvDBDateTimePicker2: TJvDBDateTimePicker
      Left = 528
      Top = 67
      Width = 113
      Height = 24
      Date = 39364.311951134260000000
      Time = 39364.311951134260000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = FormKeyPress
      DropDownDate = 39364.000000000000000000
      DataField = 'DATAPREVISTAENTREGA'
      DataSource = DtSrc
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 201
      Top = 56
      Width = 224
      Height = 41
      BiDiMode = bdRightToLeftNoAlign
      Caption = 'Cobran'#231'a'
      Columns = 3
      DataField = 'COBRANCA'
      DataSource = DtSrc
      Items.Strings = (
        'Sem'
        'Particular'
        'Extra Firma')
      ParentBiDiMode = False
      TabOrder = 6
      Values.Strings = (
        '0'
        '1'
        '2')
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsExame
  end
  inherited XPMenu1: TXPMenu
    Left = 512
  end
  inherited PopupMenu1: TPopupMenu
    Left = 544
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
  end
  object sdsClienteBusca: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA , GRUPO_CLIENTE ' +
      ' from CLIENTES where  STATUS = 0 '#13#10'ORDER BY NOMECLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 320
    Top = 8
  end
  object dspBuscaCliente: TDataSetProvider
    DataSet = sdsClienteBusca
    Options = [poAllowCommandText]
    Left = 352
    Top = 8
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscaCliente'
    Left = 384
    Top = 8
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsClienteBuscaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
  end
  object dsClienteBusca: TDataSource
    DataSet = cdsClienteBusca
    Left = 416
    Top = 8
  end
  object sdsMedico: TSQLDataSet
    CommandText = 'select COD_REPRFOR, NOME_REPRFOR, FUNCAO from REPR_FORNECEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 16
  end
  object dspMedico: TDataSetProvider
    DataSet = sdsMedico
    Left = 120
    Top = 16
  end
  object cdsMedico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMedico'
    Left = 152
    Top = 16
    object cdsMedicoCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
      Required = True
    end
    object cdsMedicoNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object cdsMedicoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
  end
  object dsMedico: TDataSource
    DataSet = cdsMedico
    Left = 184
    Top = 16
  end
  object sdsexame: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS '#13#10'where USO = :tipo '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 184
    Top = 336
  end
  object dstexame: TDataSetProvider
    DataSet = sdsexame
    Left = 216
    Top = 336
  end
  object cdsexame: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'dstexame'
    Left = 248
    Top = 336
    object cdsexameCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsexameDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsexameUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cdsexameCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cdsexameOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object cdsexameCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object cdsexameDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
  end
  object dtsexame: TDataSource
    DataSet = cdsexame
    Left = 280
    Top = 336
  end
  object procMedico: TSQLDataSet
    CommandText = 'select COD_REPRFOR, NOME_REPRFOR, FUNCAO from REPR_FORNECEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 224
    Top = 264
    object procMedicoCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
      Required = True
    end
    object procMedicoNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object procMedicoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
  end
end
