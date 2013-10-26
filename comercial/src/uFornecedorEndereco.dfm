inherited fFornecedorEndereco: TfFornecedorEndereco
  Width = 700
  Height = 470
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 9
    Top = 69
    Width = 59
    Height = 16
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 9
    Top = 117
    Width = 36
    Height = 16
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 308
    Top = 117
    Width = 84
    Height = 16
    Caption = 'Complemento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [3]
    Left = 9
    Top = 165
    Width = 44
    Height = 16
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [4]
    Left = 412
    Top = 165
    Width = 25
    Height = 16
    Caption = 'Cep'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [5]
    Left = 511
    Top = 165
    Width = 18
    Height = 16
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [6]
    Left = 9
    Top = 298
    Width = 38
    Height = 16
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [7]
    Left = 236
    Top = 298
    Width = 107
    Height = 16
    Caption = 'Dados Adicionais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 387
    Width = 692
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
    Width = 692
    inherited Label1: TLabel
      Top = -73
    end
    inherited Label2: TLabel
      Top = -74
    end
    object DBText1: TDBText
      Left = 8
      Top = 6
      Width = 658
      Height = 41
      DataField = 'NOMEFORNECEDOR'
      DataSource = fFornecedorCadastro.DtSrc
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
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'NOMEFORNECEDOR'
      DataSource = fFornecedorCadastro.DtSrc
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
  object DBEdit2: TDBEdit [10]
    Left = 9
    Top = 85
    Width = 665
    Height = 24
    DataField = 'LOGRADOURO'
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
  object DBEdit1: TDBEdit [11]
    Left = 9
    Top = 133
    Width = 298
    Height = 24
    DataField = 'BAIRRO'
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
  object DBEdit3: TDBEdit [12]
    Left = 308
    Top = 133
    Width = 249
    Height = 24
    DataField = 'COMPLEMENTO'
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
  object DBRadioGroup1: TDBRadioGroup [13]
    Left = 560
    Top = 112
    Width = 113
    Height = 93
    Caption = 'Endere'#231'o'
    DataField = 'TIPOEND'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Principal'
      'Cobran'#231'a'
      'Entrega')
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  object DBEdit4: TDBEdit [14]
    Left = 9
    Top = 181
    Width = 401
    Height = 24
    DataField = 'CIDADE'
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
  object DBEdit5: TDBEdit [15]
    Left = 412
    Top = 181
    Width = 97
    Height = 24
    CharCase = ecUpperCase
    DataField = 'CEP'
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
  object GroupBox1: TGroupBox [16]
    Left = 8
    Top = 215
    Width = 665
    Height = 75
    Caption = 'Telefones :'
    TabOrder = 9
    object Label11: TLabel
      Left = 34
      Top = 22
      Width = 30
      Height = 16
      Caption = 'DDD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 78
      Top = 22
      Width = 46
      Height = 16
      Caption = '1'#186' Fone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 190
      Top = 22
      Width = 46
      Height = 16
      Caption = '2'#186' Fone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 302
      Top = 22
      Width = 46
      Height = 16
      Caption = '3'#186' Fone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 414
      Top = 22
      Width = 22
      Height = 16
      Caption = 'Fax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 526
      Top = 22
      Width = 40
      Height = 16
      Caption = 'Ramal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit7: TDBEdit
      Left = 33
      Top = 38
      Width = 38
      Height = 24
      CharCase = ecUpperCase
      DataField = 'DDD'
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
    object DBEdit8: TDBEdit
      Left = 76
      Top = 38
      Width = 108
      Height = 24
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
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
    object DBEdit9: TDBEdit
      Left = 188
      Top = 38
      Width = 108
      Height = 24
      CharCase = ecUpperCase
      DataField = 'TELEFONE1'
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
    object DBEdit10: TDBEdit
      Left = 300
      Top = 38
      Width = 108
      Height = 24
      CharCase = ecUpperCase
      DataField = 'TELEFONE2'
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
    object DBEdit11: TDBEdit
      Left = 412
      Top = 38
      Width = 108
      Height = 24
      CharCase = ecUpperCase
      DataField = 'FAX'
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
    object DBEdit12: TDBEdit
      Left = 524
      Top = 38
      Width = 108
      Height = 24
      CharCase = ecUpperCase
      DataField = 'RAMAL'
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
  end
  object DBEdit13: TDBEdit [17]
    Left = 9
    Top = 314
    Width = 224
    Height = 24
    DataField = 'E_MAIL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [18]
    Left = 236
    Top = 314
    Width = 437
    Height = 24
    DataField = 'DADOSADICIONAIS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBNavigator1: TDBNavigator [19]
    Left = 234
    Top = 358
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
    TabOrder = 12
  end
  object DBComboBox1: TDBComboBox [20]
    Left = 511
    Top = 181
    Width = 43
    Height = 24
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ParentFont = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cds_endfor
  end
  object sds_endfor: TSQLDataSet
    CommandText = 'select * from ENDERECOFORNECEDOR'#13#10'where CODFORNECEDOR =:codfor'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codfor'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 473
    Top = 8
    object sds_endforCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_endforCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_endforLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_endforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_endforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_endforCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_endforUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_endforCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_endforDDD: TSmallintField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
    end
    object sds_endforTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_endforRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_endforTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_endforDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dsp_endfor: TDataSetProvider
    DataSet = sds_endfor
    UpdateMode = upWhereKeyOnly
    Left = 505
    Top = 8
  end
  object cds_endfor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codfor'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_endfor'
    OnNewRecord = cds_endforNewRecord
    Left = 545
    Top = 8
    object cds_endforCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_endforCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_endforLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_endforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_endforUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_endforCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000-999;1;_'
      Size = 10
    end
    object cds_endforDDD: TSmallintField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
    end
    object cds_endforTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_endforTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_endforDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
end
