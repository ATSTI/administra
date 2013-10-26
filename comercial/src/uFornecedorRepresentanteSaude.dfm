inherited fFornecedorRepresentanteSaude: TfFornecedorRepresentanteSaude
  Left = 156
  Top = 111
  Width = 697
  Height = 486
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 9
    Top = 75
    Width = 139
    Height = 16
    Caption = 'Profissional Executante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 194
    Top = 122
    Width = 191
    Height = 16
    Caption = 'Especialidade = C'#243'digo CBO S '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 73
    Top = 205
    Width = 59
    Height = 16
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel [3]
    Left = 10
    Top = 123
    Width = 93
    Height = 16
    Caption = 'N'#186' no Conselho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [4]
    Left = 539
    Top = 75
    Width = 130
    Height = 16
    Caption = 'Conselho Profissional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [5]
    Left = 153
    Top = 202
    Width = 36
    Height = 16
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label9: TLabel [6]
    Left = 9
    Top = 234
    Width = 44
    Height = 16
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label10: TLabel [7]
    Left = 373
    Top = 237
    Width = 25
    Height = 16
    Caption = 'Cep'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel [8]
    Left = 135
    Top = 123
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
  object Label15: TLabel [9]
    Left = 9
    Top = 282
    Width = 38
    Height = 16
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 405
    Width = 689
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnGravar: TBitBtn
      Left = 180
    end
    inherited btnIncluir: TBitBtn
      Left = 180
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
    Width = 689
    TabOrder = 6
    inherited Label1: TLabel
      Top = -66
    end
    inherited Label2: TLabel
      Top = -67
    end
    object DBText1: TDBText
      Left = 8
      Top = 6
      Width = 658
      Height = 41
      DataField = 'NOME_REPRFOR'
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
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'NOME_REPRFOR'
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
  object DBEdit2: TDBEdit [12]
    Left = 9
    Top = 91
    Width = 512
    Height = 24
    DataField = 'NOME_REPRFOR'
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
  object DBEdit1: TDBEdit [13]
    Left = 194
    Top = 139
    Width = 439
    Height = 24
    DataField = 'FUNCAO'
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
  object DBEdit3: TDBEdit [14]
    Left = 73
    Top = 221
    Width = 72
    Height = 24
    DataField = 'ENDERECO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 7
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [15]
    Left = 10
    Top = 139
    Width = 103
    Height = 24
    CharCase = ecUpperCase
    DataField = 'NUMERO'
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
  object DBEdit5: TDBEdit [16]
    Left = 539
    Top = 91
    Width = 128
    Height = 24
    CharCase = ecUpperCase
    DataField = 'COMPLEMENTO'
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
  object DBEdit6: TDBEdit [17]
    Left = 153
    Top = 218
    Width = 56
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
    TabOrder = 8
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [18]
    Left = 9
    Top = 253
    Width = 362
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
    TabOrder = 9
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [19]
    Left = 373
    Top = 253
    Width = 105
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
    TabOrder = 10
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [20]
    Left = 135
    Top = 139
    Width = 41
    Height = 24
    CharCase = ecUpperCase
    DataField = 'UF'
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
  object DBEdit13: TDBEdit [21]
    Left = 9
    Top = 301
    Width = 512
    Height = 24
    DataField = 'EMAIL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 11
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBNavigator1: TDBNavigator [22]
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
  object MMJPanel3: TMMJPanel [23]
    Left = 516
    Top = 177
    Width = 161
    Height = 201
    TabOrder = 13
    Visible = False
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object Panel1: TPanel
      Left = 8
      Top = 9
      Width = 145
      Height = 184
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label12: TLabel
        Left = 20
        Top = 19
        Width = 54
        Height = 16
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 20
        Top = 71
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
      object Label14: TLabel
        Left = 20
        Top = 124
        Width = 42
        Height = 16
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit10: TDBEdit
        Left = 20
        Top = 35
        Width = 105
        Height = 24
        CharCase = ecUpperCase
        DataField = 'FONE'
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
      object DBEdit11: TDBEdit
        Left = 20
        Top = 87
        Width = 105
        Height = 24
        CharCase = ecUpperCase
        DataField = 'FONE1'
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
      object DBEdit12: TDBEdit
        Left = 20
        Top = 140
        Width = 105
        Height = 24
        CharCase = ecUpperCase
        DataField = 'FONE2'
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
    end
  end
  object BitBtn1: TBitBtn [24]
    Left = 638
    Top = 138
    Width = 31
    Height = 25
    Caption = '...'
    TabOrder = 14
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid [25]
    Left = 16
    Top = 176
    Width = 657
    Height = 169
    DataSource = DtSrc
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_REPRFOR'
        Title.Caption = 'PROFISSIONAL EXECUTANTE'
        Width = 349
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUNCAO'
        Title.Caption = 'ESPECIALIDADE'
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cds_repfor
    Left = 520
    Top = 48
  end
  object sds_repfor: TSQLDataSet
    CommandText = 'select * from REPR_FORNECEDOR '#13#10'where COD_FORNECEDOR=:pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 484
    Top = 8
    object sds_repforCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_repforCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_repforFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repforFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repforFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repforENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repforNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_repforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_repforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_repforCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repforUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_repforCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_repforEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_repforNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repforFUNCAO: TStringField
      FieldName = 'FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_repfor: TDataSetProvider
    DataSet = sds_repfor
    UpdateMode = upWhereChanged
    Left = 515
    Top = 8
  end
  object cds_repfor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_repfor'
    OnNewRecord = cds_repforNewRecord
    Left = 546
    Top = 8
    object cds_repforCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object cds_repforCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
    end
    object cds_repforFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repforFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repforFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repforENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cds_repforNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cds_repforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_repforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cds_repforCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cds_repforUF: TStringField
      FieldName = 'UF'
      EditMask = 'LL;1;_'
      Size = 2
    end
    object cds_repforCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cds_repforEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object cds_repforNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object cds_repforFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
  end
  object procCBO: TSQLClientDataSet
    CommandText = 
      'select  NM_CBO_SAUDE, CD_CBO_SAUDE, NM_CONSELHO_PROF from TB_CBO' +
      '_SAUDE '#13#10'where NM_CBO_SAUDE like :NOME'#13#10#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 584
    Top = 40
    object procCBONM_CBO_SAUDE: TStringField
      FieldName = 'NM_CBO_SAUDE'
      Required = True
      Size = 50
    end
    object procCBOCD_CBO_SAUDE: TStringField
      FieldName = 'CD_CBO_SAUDE'
      Required = True
      Size = 12
    end
    object procCBONM_CONSELHO_PROF: TStringField
      FieldName = 'NM_CONSELHO_PROF'
      Size = 40
    end
  end
end
