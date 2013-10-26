inherited fApontHoras: TfApontHoras
  Left = 241
  Top = 114
  Width = 800
  Height = 600
  Caption = 'Apontamento de Horas'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 508
    Width = 784
    inherited btnGravar: TBitBtn
      Left = 7
    end
    inherited btnIncluir: TBitBtn
      Left = 7
    end
    inherited btnCancelar: TBitBtn
      Left = 111
    end
    inherited btnExcluir: TBitBtn
      Left = 111
    end
    inherited btnProcurar: TBitBtn
      Left = 215
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 319
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 784
    inherited Label1: TLabel
      Left = 208
      Top = 6
      Width = 365
      Caption = 'Apontamento de Horas'
    end
    inherited Label2: TLabel
      Left = 212
      Top = 7
      Width = 365
      Caption = 'Apontamento de Horas'
    end
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 54
    Width = 784
    Height = 114
    Align = alTop
    TabOrder = 2
    object grp3: TGroupBox
      Left = 632
      Top = 9
      Width = 149
      Height = 48
      Caption = 'Data Ini. Movimento'
      PopupMenu = PopupMenu1
      TabOrder = 0
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 11
        Top = 17
        Width = 121
        Height = 21
        DataField = 'DATA_MOVIMENTO'
        DataSource = DtSrc
        TabOrder = 0
      end
    end
    object grp2: TGroupBox
      Left = 446
      Top = 59
      Width = 184
      Height = 48
      Caption = 'Centro de Custo'
      PopupMenu = PopupMenu1
      TabOrder = 1
      object cbb1: TComboBox
        Left = 4
        Top = 16
        Width = 176
        Height = 24
        BevelKind = bkFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
    end
    object grp1: TGroupBox
      Left = 0
      Top = 9
      Width = 332
      Height = 48
      Caption = 'Cliente'
      PopupMenu = PopupMenu1
      TabOrder = 2
      object BitBtn1: TBitBtn
        Left = 294
        Top = 16
        Width = 33
        Height = 25
        Caption = '...'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object dbedtCOD_CLIENTE: TDBEdit
        Left = 5
        Top = 18
        Width = 52
        Height = 21
        DataField = 'COD_CLIENTE'
        DataSource = DtSrc
        TabOrder = 1
      end
      object dbedtNOMECLIENTE: TDBEdit
        Left = 59
        Top = 18
        Width = 231
        Height = 21
        DataField = 'NOMECLIENTE'
        DataSource = DtSrc
        TabOrder = 2
      end
    end
    object grp4: TGroupBox
      Left = 0
      Top = 59
      Width = 444
      Height = 48
      Caption = 'Equipamento / Pe'#231'a'
      PopupMenu = PopupMenu1
      TabOrder = 3
      object BitBtn3: TBitBtn
        Left = 405
        Top = 15
        Width = 33
        Height = 25
        Caption = '...'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object dbedtPRODUTO: TDBEdit
        Left = 59
        Top = 18
        Width = 342
        Height = 21
        DataField = 'PRODUTO'
        DataSource = DtSrc
        TabOrder = 1
      end
      object dbedtCODPRO: TDBEdit
        Left = 5
        Top = 18
        Width = 52
        Height = 21
        DataField = 'CODPRO'
        DataSource = DtSrc
        TabOrder = 2
      end
    end
    object grp5: TGroupBox
      Left = 334
      Top = 9
      Width = 296
      Height = 48
      Caption = 'Fornecedor / Funcion'#225'rio'
      PopupMenu = PopupMenu1
      TabOrder = 4
      object BitBtn2: TBitBtn
        Left = 259
        Top = 16
        Width = 33
        Height = 25
        Caption = '...'
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object dbedtNOMEFORNECEDOR: TDBEdit
        Left = 59
        Top = 18
        Width = 198
        Height = 21
        DataField = 'NOMEFORNECEDOR'
        DataSource = DtSrc
        TabOrder = 1
      end
      object dbedtCOD_FORNECEDOR: TDBEdit
        Left = 5
        Top = 18
        Width = 52
        Height = 21
        DataField = 'COD_FORNECEDOR'
        DataSource = DtSrc
        TabOrder = 2
      end
    end
    object grp6: TGroupBox
      Left = 632
      Top = 60
      Width = 149
      Height = 48
      Caption = 'N'#186' de Ordem'
      PopupMenu = PopupMenu1
      TabOrder = 5
      object dbedtID: TDBEdit
        Left = 16
        Top = 17
        Width = 121
        Height = 21
        DataField = 'ID_APONTHORAS'
        DataSource = DtSrc
        TabOrder = 0
      end
    end
  end
  object pnl3: TPanel [3]
    Left = 0
    Top = 240
    Width = 784
    Height = 268
    Align = alClient
    TabOrder = 3
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 782
      Height = 266
      Align = alClient
      DataSource = ds3
      TabOrder = 0
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
          FieldName = 'DATA'
          Title.Caption = 'Data Apont.'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAREFA_LOCAL'
          Title.Caption = 'Tarefa'
          Width = 224
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INICIO'
          Title.Caption = 'Inicio'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TERMINO'
          Title.Caption = 'Termino'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS'
          Width = 334
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KM'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'KM_VALOR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'KM_TOTAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESPESA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PEDAGIO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VALOR_HORA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TOTAL_HORA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TOTAL_GERAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'N_RELATORIO'
          Visible = False
        end>
    end
  end
  object pgc1: TPageControl [4]
    Left = 0
    Top = 168
    Width = 784
    Height = 72
    ActivePage = ts1
    Align = alTop
    TabOrder = 4
    object ts1: TTabSheet
      object lbl11: TLabel
        Left = 97
        Top = 2
        Width = 31
        Height = 13
        Caption = 'Tarefa'
      end
      object lbl12: TLabel
        Left = 317
        Top = 2
        Width = 25
        Height = 13
        Caption = 'Inicio'
      end
      object lbl13: TLabel
        Left = 360
        Top = 2
        Width = 38
        Height = 13
        Caption = 'Termino'
      end
      object lbl14: TLabel
        Left = 409
        Top = 2
        Width = 22
        Height = 13
        Caption = 'Obs.'
      end
      object lbl5: TLabel
        Left = 3
        Top = 2
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object edt10: TEdit
        Left = 95
        Top = 18
        Width = 219
        Height = 21
        TabOrder = 1
      end
      object medt6: TMaskEdit
        Left = 316
        Top = 18
        Width = 44
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 2
        Text = '  :  '
      end
      object medt7: TMaskEdit
        Left = 361
        Top = 18
        Width = 44
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 3
        Text = '  :  '
      end
      object edt11: TEdit
        Left = 407
        Top = 18
        Width = 269
        Height = 21
        TabOrder = 4
      end
      object BitBtn4: TBitBtn
        Left = 676
        Top = 15
        Width = 32
        Height = 25
        Caption = '+'
        TabOrder = 5
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 709
        Top = 15
        Width = 32
        Height = 25
        Caption = '-'
        TabOrder = 6
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 743
        Top = 15
        Width = 32
        Height = 25
        Caption = 'OK'
        TabOrder = 7
        OnClick = BitBtn6Click
      end
      object JvDateEdit1: TJvDateEdit
        Left = 1
        Top = 17
        Width = 94
        Height = 21
        TabOrder = 0
      end
    end
    object ts2: TTabSheet
      ImageIndex = 1
      object lbl15: TLabel
        Left = 2
        Top = 2
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object lbl16: TLabel
        Left = 66
        Top = 2
        Width = 26
        Height = 13
        Caption = 'Local'
      end
      object lbl17: TLabel
        Left = 228
        Top = 2
        Width = 25
        Height = 13
        Caption = 'Inicio'
      end
      object lbl18: TLabel
        Left = 269
        Top = 2
        Width = 38
        Height = 13
        Caption = 'Termino'
      end
      object lbl19: TLabel
        Left = 317
        Top = 2
        Width = 14
        Height = 13
        Caption = 'km'
      end
      object lbl20: TLabel
        Left = 363
        Top = 2
        Width = 41
        Height = 13
        Caption = 'Valor km'
      end
      object lbl21: TLabel
        Left = 411
        Top = 2
        Width = 43
        Height = 13
        Caption = 'Total KM'
      end
      object lbl22: TLabel
        Left = 469
        Top = 2
        Width = 42
        Height = 13
        Caption = 'Despesa'
      end
      object lbl1: TLabel
        Left = 522
        Top = 2
        Width = 39
        Height = 13
        Caption = 'Pedagio'
      end
      object lbl2: TLabel
        Left = 581
        Top = 2
        Width = 50
        Height = 13
        Caption = 'Valor Hora'
      end
      object lbl3: TLabel
        Left = 640
        Top = 2
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object lbl4: TLabel
        Left = 713
        Top = 2
        Width = 57
        Height = 13
        Caption = 'N'#186' Relat'#243'rio'
      end
      object medt8: TMaskEdit
        Left = 1
        Top = 18
        Width = 63
        Height = 21
        EditMask = '!99/99/00;1;_'
        MaxLength = 8
        TabOrder = 0
        Text = '  /  /  '
      end
      object edt12: TEdit
        Left = 65
        Top = 18
        Width = 159
        Height = 21
        TabOrder = 1
        Text = 'edt1'
      end
      object medt9: TMaskEdit
        Left = 225
        Top = 18
        Width = 44
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 2
        Text = '  :  '
      end
      object medt10: TMaskEdit
        Left = 270
        Top = 18
        Width = 45
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 3
        Text = '  :  '
      end
      object edt7: TEdit
        Left = 712
        Top = 18
        Width = 61
        Height = 21
        TabOrder = 11
        Text = 'edt1'
      end
      object JvValidateEdit1: TJvValidateEdit
        Left = 317
        Top = 18
        Width = 44
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 4
      end
      object JvValidateEdit2: TJvValidateEdit
        Left = 364
        Top = 18
        Width = 44
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 5
      end
      object JvValidateEdit3: TJvValidateEdit
        Left = 412
        Top = 18
        Width = 44
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 6
      end
      object JvValidateEdit4: TJvValidateEdit
        Left = 470
        Top = 18
        Width = 44
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 7
      end
      object JvValidateEdit5: TJvValidateEdit
        Left = 523
        Top = 18
        Width = 44
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 8
      end
      object JvValidateEdit6: TJvValidateEdit
        Left = 583
        Top = 18
        Width = 44
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 9
      end
      object JvValidateEdit7: TJvValidateEdit
        Left = 640
        Top = 18
        Width = 44
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        TabOrder = 10
      end
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 680
  end
  inherited PopupMenu1: TPopupMenu
    Left = 712
  end
  inherited DtSrc: TDataSource
    DataSet = dsApont
    Left = 693
    Top = 249
  end
  object sApontHoras: TSQLDataSet
    CommandText = 
      'select ap.*, fo.NOMEFORNECEDOR, cl.NOMECLIENTE, pr.PRODUTO, pr.C' +
      'ODPRO '#13#10'  from APONTHORAS ap '#13#10'  inner join FORNECEDOR fo on fo.' +
      'CODFORNECEDOR = ap.COD_FORNECEDOR'#13#10'  inner join CLIENTES cl on c' +
      'l.CODCLIENTE = ap.COD_CLIENTE'#13#10'  inner join PRODUTOS pr on pr.CO' +
      'DPRODUTO = ap.COD_PRODUTO'#13#10'where ap.ID_APONTHORAS = :id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 602
    Top = 249
    object sApontHorasID_APONTHORAS: TIntegerField
      FieldName = 'ID_APONTHORAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sApontHorasCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sApontHorasCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object sApontHorasCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object sApontHorasDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
    end
    object sApontHorasCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object sApontHorasCOD_CC: TIntegerField
      FieldName = 'COD_CC'
    end
    object sApontHorasNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sApontHorasNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sApontHorasPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
    object sApontHorasCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
  end
  object dApont: TDataSetProvider
    DataSet = sApontHoras
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 249
  end
  object dsApont: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dApont'
    Left = 662
    Top = 249
    object dsApontID_APONTHORAS: TIntegerField
      FieldName = 'ID_APONTHORAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsApontCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object dsApontCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object dsApontCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object dsApontDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
    end
    object dsApontCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object dsApontCOD_CC: TIntegerField
      FieldName = 'COD_CC'
    end
    object dsApontNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object dsApontNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object dsApontPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
    object dsApontCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
  end
  object sApontDet: TSQLDataSet
    CommandText = 'select * from APONTHORASDET '#13#10'where ID_APONTHORAS = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 602
    Top = 289
    object sApontDetID_APONTHORASDET: TIntegerField
      FieldName = 'ID_APONTHORASDET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sApontDetID_APONTHORAS: TIntegerField
      FieldName = 'ID_APONTHORAS'
    end
    object sApontDetDATA: TDateField
      FieldName = 'DATA'
    end
    object sApontDetTAREFA_LOCAL: TStringField
      FieldName = 'TAREFA_LOCAL'
      Size = 150
    end
    object sApontDetINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object sApontDetTERMINO: TTimeField
      FieldName = 'TERMINO'
    end
    object sApontDetOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object sApontDetKM: TFloatField
      FieldName = 'KM'
    end
    object sApontDetKM_VALOR: TFloatField
      FieldName = 'KM_VALOR'
    end
    object sApontDetKM_TOTAL: TFloatField
      FieldName = 'KM_TOTAL'
    end
    object sApontDetDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
    object sApontDetPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
    end
    object sApontDetVALOR_HORA: TFloatField
      FieldName = 'VALOR_HORA'
    end
    object sApontDetTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object sApontDetTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
    end
    object sApontDetN_RELATORIO: TIntegerField
      FieldName = 'N_RELATORIO'
    end
  end
  object dApontDet: TDataSetProvider
    DataSet = sApontDet
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 289
  end
  object dsApontDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dApontDet'
    Left = 662
    Top = 289
    object dsApontDetID_APONTHORASDET: TIntegerField
      FieldName = 'ID_APONTHORASDET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsApontDetID_APONTHORAS: TIntegerField
      FieldName = 'ID_APONTHORAS'
    end
    object dsApontDetDATA: TDateField
      FieldName = 'DATA'
    end
    object dsApontDetTAREFA_LOCAL: TStringField
      FieldName = 'TAREFA_LOCAL'
      Size = 150
    end
    object dsApontDetINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object dsApontDetTERMINO: TTimeField
      FieldName = 'TERMINO'
    end
    object dsApontDetOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object dsApontDetKM: TFloatField
      FieldName = 'KM'
    end
    object dsApontDetKM_VALOR: TFloatField
      FieldName = 'KM_VALOR'
    end
    object dsApontDetKM_TOTAL: TFloatField
      FieldName = 'KM_TOTAL'
    end
    object dsApontDetDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
    object dsApontDetPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
    end
    object dsApontDetVALOR_HORA: TFloatField
      FieldName = 'VALOR_HORA'
    end
    object dsApontDetTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object dsApontDetTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
    end
    object dsApontDetN_RELATORIO: TIntegerField
      FieldName = 'N_RELATORIO'
    end
  end
  object ds3: TDataSource
    DataSet = dsApontDet
    OnStateChange = DtSrcStateChange
    Left = 693
    Top = 289
  end
  object ds_ccusto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    ProviderName = 'd_2'
    Left = 288
    Top = 363
    object ds_ccustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ds_ccustoCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object ds_ccustoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 254
    Top = 362
  end
  object s_2: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME from PLANO where plnCtaRoot(CONTA) = ' +
      ':PCONTADESPESA AND CONSOLIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 221
    Top = 362
    object s_2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_2CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 256
    Top = 400
  end
  object scds_proc: TSQLClientDataSet
    CommandText = 
      'select ap.ID_APONTHORAS, ap.DATA_MOVIMENTO, fo.NOMEFORNECEDOR '#13#10 +
      '    from APONTHORAS ap '#13#10' inner join FORNECEDOR fo on fo.CODFORN' +
      'ECEDOR = ap.COD_FORNECEDOR'#13#10' where  fo.NOMEFORNECEDOR  like :PFO' +
      'R'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PFOR'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 496
    Top = 280
    object scds_procDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
    end
    object scds_procNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object scds_procID_APONTHORAS: TIntegerField
      FieldName = 'ID_APONTHORAS'
      Required = True
    end
  end
end
