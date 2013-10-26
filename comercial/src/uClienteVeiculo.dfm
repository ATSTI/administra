inherited fClienteVeiculo: TfClienteVeiculo
  Left = 300
  Top = 180
  Width = 685
  Height = 472
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 74
    Top = 97
    Width = 41
    Height = 16
    Caption = 'Placa :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 16
    Top = 129
    Width = 100
    Height = 16
    Caption = 'Marca / Modelo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 22
    Top = 161
    Width = 94
    Height = 16
    Caption = 'Esp'#233'cie / Tipo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [3]
    Left = 36
    Top = 193
    Width = 80
    Height = 16
    Caption = 'Combust'#237'vel :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [4]
    Left = 14
    Top = 225
    Width = 102
    Height = 16
    Caption = 'Ano Fabrica'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [5]
    Left = 37
    Top = 259
    Width = 79
    Height = 16
    Caption = 'Ano Modelo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [6]
    Left = 14
    Top = 293
    Width = 114
    Height = 16
    Caption = 'Cor Predominante :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [7]
    Left = 266
    Top = 97
    Width = 47
    Height = 16
    Caption = 'Chassi :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 391
    Width = 677
    TabOrder = 8
    inherited btnGravar: TBitBtn
      Left = 180
    end
    inherited btnIncluir: TBitBtn
      Left = 180
    end
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 406
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 677
    TabOrder = 9
    inherited Label1: TLabel
      Top = -54
    end
    inherited Label2: TLabel
      Top = -55
    end
    object DBText1: TDBText
      Left = 8
      Top = 6
      Width = 658
      Height = 41
      DataField = 'MARCA_MODELO'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -29
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object DBText2: TDBText
      Left = 10
      Top = 6
      Width = 661
      Height = 41
      DataField = 'MARCA_MODELO'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  object DBNavigator1: TDBNavigator [10]
    Left = 234
    Top = 349
    Width = 220
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Proximo Registro'
      'Ultimo Registro'
      ''
      '')
    PopupMenu = PopupMenu1
    TabOrder = 10
    Visible = False
  end
  object DBEdit2: TDBEdit [11]
    Left = 136
    Top = 97
    Width = 113
    Height = 24
    CharCase = ecUpperCase
    DataField = 'PLACA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [12]
    Left = 136
    Top = 129
    Width = 537
    Height = 24
    CharCase = ecUpperCase
    DataField = 'MARCA_MODELO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [13]
    Left = 136
    Top = 161
    Width = 409
    Height = 24
    CharCase = ecUpperCase
    DataField = 'TIPO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [14]
    Left = 136
    Top = 193
    Width = 257
    Height = 24
    CharCase = ecUpperCase
    DataField = 'COMBUSTIVEL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [15]
    Left = 136
    Top = 225
    Width = 193
    Height = 24
    CharCase = ecUpperCase
    DataField = 'ANO_FAB'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [16]
    Left = 136
    Top = 259
    Width = 193
    Height = 24
    CharCase = ecUpperCase
    DataField = 'ANO_MOD'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [17]
    Left = 136
    Top = 293
    Width = 257
    Height = 24
    CharCase = ecUpperCase
    DataField = 'COR'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [18]
    Left = 327
    Top = 96
    Width = 346
    Height = 24
    CharCase = ecUpperCase
    DataField = 'CHASSIS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cds_Veiculocli
    Left = 560
  end
  object sds_Veiculocli: TSQLDataSet
    CommandText = 'select * from VEICULO '#13#10'where PLACA = :pplaca'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pplaca'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 464
    Top = 8
    object sds_VeiculocliCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_VeiculocliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_VeiculocliPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_VeiculocliMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_VeiculocliTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_VeiculocliCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_VeiculocliANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_VeiculocliANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_VeiculocliCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_VeiculocliCHASSIS: TStringField
      FieldName = 'CHASSIS'
      Size = 30
    end
  end
  object dsp_Veiculocli: TDataSetProvider
    DataSet = sds_Veiculocli
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 8
  end
  object cds_Veiculocli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pplaca'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Veiculocli'
    OnNewRecord = cds_VeiculocliNewRecord
    OnReconcileError = cds_VeiculocliReconcileError
    Left = 528
    Top = 8
    object cds_VeiculocliCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
    end
    object cds_VeiculocliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cds_VeiculocliPLACA: TStringField
      FieldName = 'PLACA'
      Required = True
      EditMask = 'LLL\-0000;1;_'
      Size = 10
    end
    object cds_VeiculocliMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      Size = 60
    end
    object cds_VeiculocliTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cds_VeiculocliCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
    end
    object cds_VeiculocliANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Size = 4
    end
    object cds_VeiculocliANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      Size = 4
    end
    object cds_VeiculocliCOR: TStringField
      FieldName = 'COR'
    end
    object cds_VeiculocliCHASSIS: TStringField
      FieldName = 'CHASSIS'
      Size = 30
    end
  end
end
