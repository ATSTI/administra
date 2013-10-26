inherited fCombo: TfCombo
  Left = 390
  Top = 159
  Width = 592
  Height = 395
  Caption = 'Cadastros'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 12
    Top = 271
    Width = 42
    Height = 13
    Caption = 'CODIGO'
  end
  object Label5: TLabel [1]
    Left = 360
    Top = 71
    Width = 46
    Height = 13
    Caption = 'OUTROS'
    Visible = False
  end
  object Label8: TLabel [2]
    Left = 405
    Top = 55
    Width = 36
    Height = 13
    Caption = 'VALOR'
    Visible = False
  end
  object Label4: TLabel [3]
    Left = 83
    Top = 270
    Width = 62
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object GroupBox1: TGroupBox [4]
    Left = 56
    Top = 57
    Width = 282
    Height = 39
    Caption = 'Procurar por :'
    TabOrder = 9
  end
  inherited MMJPanel1: TMMJPanel
    Top = 314
    Width = 584
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 584
    TabOrder = 6
    inherited Label1: TLabel
      Left = 144
    end
    inherited Label2: TLabel
      Left = 147
      Top = 5
    end
  end
  object DBGrid1: TDBGrid [7]
    Left = 8
    Top = 96
    Width = 553
    Height = 169
    DataSource = DtSrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGOS'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 359
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [8]
    Left = 12
    Top = 286
    Width = 65
    Height = 21
    DataField = 'CODIGOS'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [9]
    Left = 82
    Top = 286
    Width = 471
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [10]
    Left = 473
    Top = 70
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OUTROS'
    DataSource = DtSrc
    TabOrder = 3
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object EvDBFind1: TEvDBFind [11]
    Left = 61
    Top = 70
    Width = 266
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 8
  end
  object DBEdit5: TDBEdit [12]
    Left = 338
    Top = 46
    Width = 86
    Height = 21
    DataField = 'OUTROS'
    DataSource = DtSrc
    TabOrder = 4
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBRadioGroup1: TDBRadioGroup [13]
    Left = 437
    Top = 43
    Width = 116
    Height = 40
    Caption = 'Somente Pr'#233'-Impresso'
    Columns = 2
    DataField = 'USO'
    DataSource = DtSrc
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 5
    Values.Strings = (
      '1'
      '2')
    Visible = False
  end
  inherited XPMenu1: TXPMenu
    Left = 376
  end
  inherited PopupMenu1: TPopupMenu
    Left = 408
  end
  inherited DtSrc: TDataSource
    DataSet = cdsCombo
    Left = 328
  end
  object sdsCombo: TSQLDataSet
    CommandText = 
      'select * from DADOS_COMBOS where uso = '#39'TIPO ATENDIMENTO'#39' ORDer ' +
      'by descricao'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 264
    Top = 40
    object sdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
  object dspCombo: TDataSetProvider
    DataSet = sdsCombo
    Left = 272
    Top = 88
  end
  object cdsCombo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCombo'
    Left = 272
    Top = 136
    object cdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object cdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
end
