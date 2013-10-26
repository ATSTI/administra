inherited fProcedimentos: TfProcedimentos
  Left = 168
  Top = 117
  Caption = 'Procedimentos'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 305
    Top = 118
    Width = 70
    Height = 13
    Caption = 'Procedimentos'
  end
  object Label4: TLabel [1]
    Left = 305
    Top = 172
    Width = 78
    Height = 13
    Caption = 'Fator Moderador'
  end
  object Label5: TLabel [2]
    Left = 305
    Top = 204
    Width = 93
    Height = 13
    Caption = 'Ind'#237'ce de desconto'
  end
  object Label6: TLabel [3]
    Left = 305
    Top = 237
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label7: TLabel [4]
    Left = 305
    Top = 70
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label8: TLabel [5]
    Left = 304
    Top = 272
    Width = 87
    Height = 13
    Caption = 'Ordem impress'#227'o :'
  end
  object Label9: TLabel [6]
    Left = 11
    Top = 62
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label10: TLabel [7]
    Left = 74
    Top = 62
    Width = 65
    Height = 13
    Caption = 'Procedimento'
  end
  object Label11: TLabel [8]
    Left = 480
    Top = 72
    Width = 41
    Height = 13
    Caption = 'FAMILIA'
    FocusControl = DBEdit4
  end
  inherited MMJPanel1: TMMJPanel
    TabOrder = 6
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    TabOrder = 7
    inherited Label1: TLabel
      Left = 96
      Width = 431
      Caption = 'Cadastro de Procedimentos'
    end
    inherited Label2: TLabel
      Left = 98
      Top = 8
      Width = 431
      Caption = 'Cadastro de Procedimentos'
    end
  end
  object JvDBGrid1: TJvDBGrid [11]
    Left = 8
    Top = 112
    Width = 289
    Height = 249
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    OnDblClick = JvDBGrid1DblClick
    OnKeyDown = JvDBGrid1KeyUp
    OnKeyUp = JvDBGrid1KeyUp
    OnMouseDown = JvDBGrid1MouseDown
    OnMouseUp = JvDBGrid1MouseDown
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
        FieldName = 'CODPRO'
        Title.Caption = 'C'#243'digo'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Procedimentos'
        Width = 186
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [12]
    Left = 305
    Top = 134
    Width = 321
    Height = 21
    DataField = 'PRODUTO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object JvDBCalcEdit1: TJvDBCalcEdit [13]
    Left = 409
    Top = 172
    Width = 121
    Height = 21
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
    DataField = 'VALORUNITARIOATUAL'
    DataSource = DtSrc
  end
  object JvDBCalcEdit2: TJvDBCalcEdit [14]
    Left = 409
    Top = 206
    Width = 121
    Height = 21
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
    DataField = 'ESTOQUEREPOSICAO'
    DataSource = DtSrc
  end
  object JvDBCalcEdit3: TJvDBCalcEdit [15]
    Left = 409
    Top = 238
    Width = 121
    Height = 21
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
    DataField = 'VALOR_PRAZO'
    DataSource = DtSrc
  end
  object DBEdit2: TDBEdit [16]
    Left = 305
    Top = 87
    Width = 129
    Height = 21
    DataField = 'CODPRO'
    DataSource = DtSrc
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [17]
    Left = 408
    Top = 272
    Width = 61
    Height = 21
    DataField = 'PRO_COD'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object rgAsh: TJvCheckBox [18]
    Left = 304
    Top = 320
    Width = 43
    Height = 17
    Caption = 'ASH'
    TabOrder = 9
    OnClick = rgAshClick
    LinkedControls = <>
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object rgPcmso: TJvCheckBox [19]
    Left = 360
    Top = 320
    Width = 59
    Height = 17
    Caption = 'PCMSO'
    TabOrder = 10
    OnClick = rgPcmsoClick
    LinkedControls = <>
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvDBSearchEdit2: TJvDBSearchComboBox [20]
    Left = 72
    Top = 77
    Width = 221
    Height = 21
    DataField = 'PRODUTO'
    DataSource = DtSrc
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 11
  end
  object JvDBSearchComboBox1: TJvDBSearchComboBox [21]
    Left = 8
    Top = 77
    Width = 57
    Height = 21
    DataField = 'CODPRO'
    DataSource = DtSrc
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 12
  end
  object JvCheckBox1: TJvCheckBox [22]
    Left = 464
    Top = 320
    Width = 148
    Height = 17
    Caption = 'Incluir Previs'#227'o de Exames'
    TabOrder = 13
    OnClick = rgAshClick
    LinkedControls = <>
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object DBEdit4: TDBEdit [23]
    Left = 480
    Top = 88
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FAMILIA'
    DataSource = DtSrc
    TabOrder = 14
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    OnDataChange = DtSrcDataChange
  end
  object sds: TSQLDataSet
    CommandText = 
      'select CODPRODUTO, VALORUNITARIOATUAL, VALOR_PRAZO, ESTOQUEREPOS' +
      'ICAO, PRODUTO, CONTA_DESPESA, CODPRO, CONTA_RECEITA, CONTA_ESTOQ' +
      'UE, PRO_COD, TIPO , LOTES,FAMILIA from PRODUTOS order by codprod' +
      'uto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 8
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 424
    Top = 8
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 464
    Top = 8
    object cdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cdsESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object cdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object cdsCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object cdsCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object cdsVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object cdsCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object cdsFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
  end
  object sdsProcConta: TSQLDataSet
    CommandText = 'select conta, nome from plano where conta = :pconta'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pconta'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 449
    Top = 56
    object sdsProcContaCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object sdsProcContaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
  end
end
