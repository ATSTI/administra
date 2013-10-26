inherited fFuncionario: TfFuncionario
  Left = 195
  Top = 148
  Width = 693
  Height = 486
  Caption = 'fFuncionario'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 10
    Top = 55
    Width = 42
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = DBEdit1
  end
  object Label4: TLabel [1]
    Left = 8
    Top = 246
    Width = 29
    Height = 13
    Caption = 'SEXO'
    FocusControl = DBEdit2
  end
  object Label5: TLabel [2]
    Left = 218
    Top = 246
    Width = 73
    Height = 13
    Caption = 'ESTADO CIVIL'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [3]
    Left = 408
    Top = 207
    Width = 61
    Height = 13
    Caption = 'DATA NASC'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [4]
    Left = 10
    Top = 92
    Width = 23
    Height = 13
    Caption = 'RUA'
    FocusControl = DBEdit5
  end
  object Label8: TLabel [5]
    Left = 320
    Top = 92
    Width = 8
    Height = 13
    Caption = 'N'
    FocusControl = DBEdit6
  end
  object Label9: TLabel [6]
    Left = 376
    Top = 92
    Width = 83
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = DBEdit7
  end
  object Label10: TLabel [7]
    Left = 480
    Top = 92
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit8
  end
  object Label11: TLabel [8]
    Left = 10
    Top = 130
    Width = 40
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit9
  end
  object Label12: TLabel [9]
    Left = 320
    Top = 130
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit10
  end
  object Label13: TLabel [10]
    Left = 379
    Top = 130
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit11
  end
  object Label14: TLabel [11]
    Left = 8
    Top = 207
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit12
  end
  object Label15: TLabel [12]
    Left = 192
    Top = 207
    Width = 16
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit13
  end
  object Label16: TLabel [13]
    Left = 55
    Top = 168
    Width = 56
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit14
  end
  object Label17: TLabel [14]
    Left = 167
    Top = 168
    Width = 49
    Height = 13
    Caption = 'CELULAR'
    FocusControl = DBEdit15
  end
  object Label20: TLabel [15]
    Left = 408
    Top = 246
    Width = 51
    Height = 13
    Caption = 'C'#212'NJUGE'
    FocusControl = DBEdit18
  end
  object Label21: TLabel [16]
    Left = 8
    Top = 321
    Width = 17
    Height = 13
    Caption = 'PAI'
    FocusControl = DBEdit19
  end
  object Label22: TLabel [17]
    Left = 8
    Top = 284
    Width = 23
    Height = 13
    Caption = 'MAE'
    FocusControl = DBEdit20
  end
  object Label23: TLabel [18]
    Left = 81
    Top = 55
    Width = 109
    Height = 13
    Caption = 'NOME FUNCIONARIO'
    FocusControl = DBEdit21
  end
  object Label24: TLabel [19]
    Left = 10
    Top = 168
    Width = 24
    Height = 13
    Caption = 'DDD'
    FocusControl = DBEdit22
  end
  object Label18: TLabel [20]
    Left = 487
    Top = 55
    Width = 85
    Height = 13
    Caption = 'FUN'#199#195'O CARGO'
    FocusControl = DBEdit17
  end
  object Label19: TLabel [21]
    Left = 317
    Top = 168
    Width = 88
    Height = 13
    Caption = 'DATA ADMISS'#195'O'
    FocusControl = DBEdit23
  end
  object Label25: TLabel [22]
    Left = 469
    Top = 168
    Width = 117
    Height = 13
    Caption = 'DATA DESLIGAMENTO'
    FocusControl = DBEdit24
  end
  object Label26: TLabel [23]
    Left = 11
    Top = 359
    Width = 81
    Height = 13
    Caption = 'REGI'#195'O VENDA'
    FocusControl = DBEdit25
  end
  inherited MMJPanel1: TMMJPanel
    Top = 405
    Width = 685
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 685
    TabOrder = 26
    inherited Label1: TLabel
      Left = 128
      Width = 388
      Caption = 'Cadastro Colaboradores'
    end
    inherited Label2: TLabel
      Left = 130
      Top = 4
      Width = 388
      Caption = 'Cadastro Colaboradores'
    end
  end
  object DBEdit1: TDBEdit [26]
    Left = 8
    Top = 68
    Width = 49
    Height = 21
    DataField = 'COD_FUNCIONARIO'
    DataSource = DtSrc
    TabOrder = 27
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [27]
    Left = 8
    Top = 259
    Width = 177
    Height = 21
    DataField = 'SEXO'
    DataSource = DtSrc
    TabOrder = 18
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [28]
    Left = 216
    Top = 259
    Width = 145
    Height = 21
    DataField = 'ESTADO_CIVIL'
    DataSource = DtSrc
    TabOrder = 19
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [29]
    Left = 408
    Top = 221
    Width = 134
    Height = 21
    DataField = 'DATA_NASC'
    DataSource = DtSrc
    TabOrder = 17
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [30]
    Left = 8
    Top = 104
    Width = 297
    Height = 21
    DataField = 'RUA'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [31]
    Left = 320
    Top = 104
    Width = 41
    Height = 21
    DataField = 'N'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [32]
    Left = 376
    Top = 104
    Width = 89
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [33]
    Left = 480
    Top = 104
    Width = 185
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [34]
    Left = 8
    Top = 142
    Width = 297
    Height = 21
    DataField = 'CIDADE'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [35]
    Left = 320
    Top = 142
    Width = 43
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DtSrc
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [36]
    Left = 376
    Top = 142
    Width = 134
    Height = 21
    DataField = 'CEP'
    DataSource = DtSrc
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit12: TDBEdit [37]
    Left = 8
    Top = 221
    Width = 173
    Height = 21
    DataField = 'CPF'
    DataSource = DtSrc
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  object DBEdit13: TDBEdit [38]
    Left = 192
    Top = 221
    Width = 173
    Height = 21
    DataField = 'RG'
    DataSource = DtSrc
    TabOrder = 16
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [39]
    Left = 56
    Top = 180
    Width = 97
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DtSrc
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBEdit15: TDBEdit [40]
    Left = 168
    Top = 180
    Width = 129
    Height = 21
    DataField = 'CELULAR'
    DataSource = DtSrc
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object DBEdit18: TDBEdit [41]
    Left = 408
    Top = 259
    Width = 209
    Height = 21
    DataField = 'ESPOSA'
    DataSource = DtSrc
    TabOrder = 20
    OnKeyPress = FormKeyPress
  end
  object DBEdit19: TDBEdit [42]
    Left = 8
    Top = 337
    Width = 465
    Height = 21
    DataField = 'PAI'
    DataSource = DtSrc
    TabOrder = 22
    OnKeyPress = FormKeyPress
  end
  object DBEdit20: TDBEdit [43]
    Left = 8
    Top = 299
    Width = 465
    Height = 21
    DataField = 'MAE'
    DataSource = DtSrc
    TabOrder = 21
    OnKeyPress = FormKeyPress
  end
  object DBEdit21: TDBEdit [44]
    Left = 80
    Top = 68
    Width = 401
    Height = 21
    DataField = 'NOME_FUNCIONARIO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit22: TDBEdit [45]
    Left = 10
    Top = 180
    Width = 30
    Height = 21
    DataField = 'DDD'
    DataSource = DtSrc
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBRadioGroup1: TDBRadioGroup [46]
    Left = 487
    Top = 302
    Width = 114
    Height = 43
    Caption = 'Recebe Comiss'#227'o'
    Columns = 2
    DataField = 'RECEBE_COMISSAO'
    DataSource = DtSrc
    Items.Strings = (
      'SIM'
      'N'#195'O')
    PopupMenu = PopupMenu1
    TabOrder = 23
    Values.Strings = (
      'S'
      'N')
  end
  object GroupBox1: TGroupBox [47]
    Left = 608
    Top = 304
    Width = 73
    Height = 41
    Caption = '% Comiss'#227'o'
    TabOrder = 28
  end
  object DBEdit16: TDBEdit [48]
    Left = 625
    Top = 316
    Width = 33
    Height = 21
    DataField = 'VALOR_COMISSAO'
    DataSource = DtSrc
    TabOrder = 24
    OnKeyPress = FormKeyPress
  end
  object DBEdit17: TDBEdit [49]
    Left = 488
    Top = 68
    Width = 169
    Height = 21
    DataField = 'FUNCAO_CARGO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit23: TDBEdit [50]
    Left = 318
    Top = 180
    Width = 134
    Height = 21
    DataField = 'DATA_ADMISSAO'
    DataSource = DtSrc
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBEdit24: TDBEdit [51]
    Left = 470
    Top = 180
    Width = 134
    Height = 21
    DataField = 'DATA_DESLIGAMENTO'
    DataSource = DtSrc
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object DBEdit25: TDBEdit [52]
    Left = 9
    Top = 373
    Width = 672
    Height = 21
    DataField = 'REGIAO_VENDA'
    DataSource = DtSrc
    TabOrder = 25
    OnKeyPress = FormKeyPress
  end
  inherited XPMenu1: TXPMenu
    AutoDetect = False
    Active = False
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = False
  end
  inherited DtSrc: TDataSource
    DataSet = cds_fun
    Left = 552
  end
  object dsp_fun: TDataSetProvider
    DataSet = sql_fun
    UpdateMode = upWhereKeyOnly
    Left = 440
    Top = 24
  end
  object cds_fun: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_fun'
    Left = 480
    Top = 24
    object cds_funCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_funSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_funDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_funRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_funN: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_funCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_funCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_funCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cds_funRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_funTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '0000\-0000;1;_'
      Size = 13
    end
    object cds_funCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '0000\-0000;1;_'
      Size = 13
    end
    object cds_funRECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_funVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\/00;1;_'
      Size = 14
    end
    object cds_funDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object cds_funFUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      Size = 50
    end
    object cds_funDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cds_funDATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cds_funREGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      Size = 200
    end
    object cds_funESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      Size = 100
    end
    object cds_funCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 10
    end
    object cds_funBANCO: TStringField
      FieldName = 'BANCO'
      Size = 10
    end
  end
  object sql_fun: TSQLDataSet
    CommandText = 
      'select * from FUNCIONARIO '#13#10'where COD_FUNCIONARIO = :Pcod order ' +
      'by NOME_FUNCIONARIO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 400
    Top = 24
    object sql_funCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sql_funSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_funDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object sql_funRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_funN: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sql_funCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_funCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sql_funCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funRECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sql_funVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\/00;1;_'
      Size = 14
    end
    object sql_funDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object sql_funFUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      Size = 50
    end
    object sql_funDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
    end
    object sql_funDATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
    end
    object sql_funREGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      Size = 200
    end
    object sql_funESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      Size = 100
    end
    object sql_funCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 10
    end
    object sql_funBANCO: TStringField
      FieldName = 'BANCO'
      Size = 10
    end
  end
  object sql_proc_fun: TSQLClientDataSet
    CommandText = 
      'select COD_FUNCIONARIO, NOME_FUNCIONARIO from FUNCIONARIO '#13#10'wher' +
      'e NOME_FUNCIONARIO LIKE :Pnome order by NOME_FUNCIONARIO'#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'Pnome'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 584
    Top = 224
    object sql_proc_funCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_proc_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 60
    end
  end
  object EvCheckCPF1: TEvCheckCPF
    Associate = DBEdit12
    Left = 72
    Top = 224
  end
end
