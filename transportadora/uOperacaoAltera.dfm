inherited fOperacaoAltera: TfOperacaoAltera
  Width = 582
  Height = 480
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 75
    Top = 75
    Width = 107
    Height = 16
    Caption = 'Local do Servi'#231'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 131
    Top = 102
    Width = 51
    Height = 16
    Caption = 'Veiculo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 147
    Top = 183
    Width = 34
    Height = 16
    Caption = 'Tipo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 114
    Top = 210
    Width = 67
    Height = 16
    Caption = 'Opera'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 82
    Top = 237
    Width = 99
    Height = 16
    Caption = 'Tipo de Servi'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 140
    Top = 264
    Width = 41
    Height = 16
    Caption = 'Modo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 143
    Top = 290
    Width = 38
    Height = 16
    Caption = 'Setor :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 82
    Top = 158
    Width = 100
    Height = 16
    Caption = 'Transportadora :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 141
    Top = 131
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
  object Label10: TLabel [9]
    Left = 143
    Top = 319
    Width = 38
    Height = 16
    Caption = 'Peso :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 143
    Top = 347
    Width = 39
    Height = 16
    Caption = 'Faixa :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 332
    Top = 345
    Width = 38
    Height = 16
    Caption = 'Valor :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Width = 574
  end
  inherited MMJPanel2: TMMJPanel
    Top = 395
    Width = 574
    inherited btnGravar: TBitBtn
      Left = 132
    end
    inherited btnIncluir: TBitBtn
      Left = 132
    end
    inherited btnCancelar: TBitBtn
      Left = 255
    end
    inherited btnExcluir: TBitBtn
      Left = 255
    end
    inherited btnProcurar: TBitBtn
      Left = 4
    end
    inherited btnSair: TBitBtn
      Left = 378
    end
  end
  object cbLocal: TDBComboBox [14]
    Left = 185
    Top = 72
    Width = 188
    Height = 24
    DataField = 'LOCAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
  end
  object cbVeiculo: TDBComboBox [15]
    Left = 185
    Top = 99
    Width = 188
    Height = 24
    DataField = 'VEICULO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 3
  end
  object cbTipo: TDBComboBox [16]
    Left = 185
    Top = 180
    Width = 211
    Height = 24
    DataField = 'TIPO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
  end
  object cbOper: TDBComboBox [17]
    Left = 185
    Top = 207
    Width = 312
    Height = 24
    DataField = 'OPERACAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 5
  end
  object cbServico: TDBComboBox [18]
    Left = 185
    Top = 234
    Width = 312
    Height = 24
    DataField = 'SERVICO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 6
  end
  object cbModo: TDBComboBox [19]
    Left = 185
    Top = 261
    Width = 312
    Height = 24
    DataField = 'MODO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 7
  end
  object cbSetor: TDBComboBox [20]
    Left = 185
    Top = 287
    Width = 312
    Height = 24
    DataField = 'SETOR'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit1: TDBEdit [21]
    Left = 185
    Top = 153
    Width = 205
    Height = 24
    DataField = 'TRANSPORTE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit2: TDBEdit [22]
    Left = 185
    Top = 126
    Width = 123
    Height = 24
    DataField = 'PLACA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit3: TDBEdit [23]
    Left = 185
    Top = 314
    Width = 123
    Height = 24
    DataField = 'PESO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBEdit4: TDBEdit [24]
    Left = 185
    Top = 342
    Width = 123
    Height = 24
    DataField = 'CODFAIXA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit5: TDBEdit [25]
    Left = 374
    Top = 340
    Width = 123
    Height = 24
    DataField = 'VALOROPERACAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  inherited DtSrc: TDataSource
    DataSet = cPalmAltera
    Left = 536
    Top = 64
  end
  inherited XPMenu1: TXPMenu
    Left = 400
  end
  inherited PopupMenu1: TPopupMenu
    Left = 432
  end
  object sTipoOper: TSQLDataSet
    CommandText = 
      'select CODDADOS'#13#10'         , DESCRICAO '#13#10'from DADOS_COMBOS '#13#10'wher' +
      'e USO = :uso'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'uso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 331
    Top = 7
    object sTipoOperCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sTipoOperDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
  end
  object sPalm: TSQLDataSet
    CommandText = 'select * from PALM '#13#10'where COD_PALM = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 424
    Top = 64
    object sPalmCOD_PALM: TIntegerField
      FieldName = 'COD_PALM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sPalmCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sPalmLOCAL: TStringField
      FieldName = 'LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmVEICULO: TStringField
      FieldName = 'VEICULO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sPalmTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmMODO: TStringField
      FieldName = 'MODO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmSETOR: TStringField
      FieldName = 'SETOR'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sPalmOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sPalmDATAOPERACAO: TStringField
      FieldName = 'DATAOPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sPalmDATATERMINO: TStringField
      FieldName = 'DATATERMINO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sPalmFATURADO: TStringField
      FieldName = 'FATURADO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sPalmRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sPalmRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sPalmHORAINICIAL: TStringField
      FieldName = 'HORAINICIAL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sPalmHORAFINAL: TStringField
      FieldName = 'HORAFINAL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sPalmPESO: TStringField
      FieldName = 'PESO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sPalmMARCOU: TStringField
      FieldName = 'MARCOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sPalmGEROUARQUIVO: TStringField
      FieldName = 'GEROUARQUIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sPalmNOMEARQUIVO: TStringField
      FieldName = 'NOMEARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sPalmCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sPalmVALOROPERACAO: TFloatField
      FieldName = 'VALOROPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sPalmGEROUFINANCEIRO: TStringField
      FieldName = 'GEROUFINANCEIRO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dPalm: TDataSetProvider
    DataSet = sPalm
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 64
  end
  object cPalmAltera: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dPalm'
    Left = 504
    Top = 64
    object cPalmAlteraCOD_PALM: TIntegerField
      FieldName = 'COD_PALM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cPalmAlteraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cPalmAlteraLOCAL: TStringField
      FieldName = 'LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraVEICULO: TStringField
      FieldName = 'VEICULO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cPalmAlteraTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraMODO: TStringField
      FieldName = 'MODO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraSETOR: TStringField
      FieldName = 'SETOR'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cPalmAlteraOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cPalmAlteraDATAOPERACAO: TStringField
      FieldName = 'DATAOPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cPalmAlteraDATATERMINO: TStringField
      FieldName = 'DATATERMINO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cPalmAlteraFATURADO: TStringField
      FieldName = 'FATURADO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cPalmAlteraRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cPalmAlteraRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cPalmAlteraHORAINICIAL: TStringField
      FieldName = 'HORAINICIAL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cPalmAlteraHORAFINAL: TStringField
      FieldName = 'HORAFINAL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cPalmAlteraPESO: TStringField
      FieldName = 'PESO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cPalmAlteraMARCOU: TStringField
      FieldName = 'MARCOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cPalmAlteraGEROUARQUIVO: TStringField
      FieldName = 'GEROUARQUIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cPalmAlteraNOMEARQUIVO: TStringField
      FieldName = 'NOMEARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cPalmAlteraCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cPalmAlteraVALOROPERACAO: TFloatField
      FieldName = 'VALOROPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cPalmAlteraGEROUFINANCEIRO: TStringField
      FieldName = 'GEROUFINANCEIRO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
end
