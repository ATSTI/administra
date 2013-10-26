inherited fMapeamento: TfMapeamento
  Left = 352
  Top = 194
  Width = 711
  Height = 562
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 16
    Top = 64
    Width = 29
    Height = 13
    Caption = 'CTRC'
  end
  object Label4: TLabel [1]
    Left = 112
    Top = 64
    Width = 29
    Height = 13
    Caption = 'N'#186' BB'
  end
  object Label5: TLabel [2]
    Left = 176
    Top = 64
    Width = 21
    Height = 13
    Caption = 'Lote'
  end
  object Label6: TLabel [3]
    Left = 272
    Top = 64
    Width = 21
    Height = 13
    Caption = 'I / S'
  end
  object Label7: TLabel [4]
    Left = 313
    Top = 64
    Width = 59
    Height = 13
    Caption = 'DT Validade'
  end
  object Label8: TLabel [5]
    Left = 409
    Top = 64
    Width = 20
    Height = 13
    Caption = 'Rua'
  end
  object Label9: TLabel [6]
    Left = 449
    Top = 64
    Width = 44
    Height = 13
    Caption = 'Travessa'
  end
  object Label10: TLabel [7]
    Left = 545
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Andar'
  end
  object Label11: TLabel [8]
    Left = 642
    Top = 64
    Width = 25
    Height = 13
    Caption = 'Topo'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 474
    Width = 703
    inherited btnGravar: TBitBtn
      Left = 187
    end
    inherited btnIncluir: TBitBtn
      Left = 187
    end
    inherited btnCancelar: TBitBtn
      Left = 300
    end
    inherited btnExcluir: TBitBtn
      Left = 300
    end
    inherited btnProcurar: TBitBtn
      Left = 26
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 413
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 703
    inherited Label1: TLabel
      Left = 178
      Width = 343
      Caption = 'Mapeamento Estoque'
    end
    inherited Label2: TLabel
      Left = 182
      Width = 343
      Caption = 'Mapeamento Estoque'
    end
  end
  object DBEdit1: TDBEdit [11]
    Left = 16
    Top = 80
    Width = 97
    Height = 21
    DataField = 'CRTR'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [12]
    Left = 112
    Top = 80
    Width = 65
    Height = 21
    DataField = 'N_BB'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [13]
    Left = 176
    Top = 80
    Width = 97
    Height = 21
    DataField = 'LOTE'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [14]
    Left = 272
    Top = 80
    Width = 41
    Height = 21
    DataField = 'I_S'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [15]
    Left = 313
    Top = 80
    Width = 97
    Height = 21
    DataField = 'DT_VALIDADE'
    DataSource = DtSrc
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [16]
    Left = 409
    Top = 80
    Width = 41
    Height = 21
    DataField = 'RUA'
    DataSource = DtSrc
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [17]
    Left = 449
    Top = 80
    Width = 97
    Height = 21
    DataField = 'TRAVESSA'
    DataSource = DtSrc
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [18]
    Left = 545
    Top = 80
    Width = 97
    Height = 21
    DataField = 'ANDAR'
    DataSource = DtSrc
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [19]
    Left = 642
    Top = 80
    Width = 39
    Height = 21
    DataField = 'TOPO'
    DataSource = DtSrc
    TabOrder = 10
  end
  object JvDBGrid1: TJvDBGrid [20]
    Left = 16
    Top = 104
    Width = 665
    Height = 363
    DataSource = DtSrc
    TabOrder = 11
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
        FieldName = 'CRTR'
        Title.Caption = 'CTRC'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_BB'
        Title.Caption = 'N'#186' BB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
        Title.Caption = 'Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'I_S'
        Title.Caption = 'I / S'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VALIDADE'
        Title.Caption = 'DT Validade'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA'
        Title.Caption = 'Rua'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRAVESSA'
        Title.Caption = 'Travessa'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANDAR'
        Title.Caption = 'Andar'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOPO'
        Title.Caption = 'Topo'
        Width = 36
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    Left = 536
    Top = 16
  end
  object sds: TSQLDataSet
    CommandText = 'select * from MAPEAMENTOESTOQUE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 16
    object sdsIDMAPEAMENTO: TIntegerField
      FieldName = 'IDMAPEAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCRTR: TStringField
      FieldName = 'CRTR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsN_BB: TIntegerField
      FieldName = 'N_BB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsI_S: TStringField
      FieldName = 'I_S'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRUA: TIntegerField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTRAVESSA: TStringField
      FieldName = 'TRAVESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsANDAR: TStringField
      FieldName = 'ANDAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object sdsTOPO: TStringField
      FieldName = 'TOPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 472
    Top = 16
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 504
    Top = 16
    object cdsIDMAPEAMENTO: TIntegerField
      FieldName = 'IDMAPEAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCRTR: TStringField
      FieldName = 'CRTR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsN_BB: TIntegerField
      FieldName = 'N_BB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsI_S: TStringField
      FieldName = 'I_S'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRUA: TIntegerField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTRAVESSA: TStringField
      FieldName = 'TRAVESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsANDAR: TStringField
      FieldName = 'ANDAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdsTOPO: TStringField
      FieldName = 'TOPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
end
