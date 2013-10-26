object fGeraCob: TfGeraCob
  Left = 176
  Top = 115
  Width = 477
  Height = 527
  BorderIcons = [biSystemMenu]
  Caption = 'Gerar Mensalidade '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 125
    Top = 15
    Width = 53
    Height = 16
    Caption = 'Emiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 237
    Top = 15
    Width = 71
    Height = 16
    Caption = 'Vencimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object FlatGauge1: TFlatGauge
    Left = 96
    Top = 225
    Width = 281
    Height = 25
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
  end
  object Label2: TLabel
    Left = 40
    Top = 363
    Width = 42
    Height = 16
    Caption = 'Planos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 96
    Top = 283
    Width = 129
    Height = 16
    Caption = 'Centro de Resultado :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 295
    Top = 112
    Width = 95
    Height = 16
    Caption = 'Centro de Custo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 20
    Top = 112
    Width = 39
    Height = 16
    Caption = 'Turma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object meDta3: TMaskEdit
    Left = 124
    Top = 32
    Width = 81
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditMask = '!99/99/00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 0
    Text = '  /  /  '
    OnKeyPress = FormKeyPress
  end
  object meDta4: TMaskEdit
    Left = 237
    Top = 32
    Width = 75
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditMask = '!99/99/00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 1
    Text = '  /  /  '
    OnKeyPress = FormKeyPress
  end
  object BitBtn7: TBitBtn
    Left = 313
    Top = 25
    Width = 32
    Height = 32
    TabOrder = 2
    TabStop = False
    OnClick = BitBtn7Click
    Glyph.Data = {
      1E070000424D1E070000000000003600000028000000160000001A0000000100
      180000000000E806000000000000000000000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C000000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0
      C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0
      C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
      7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F7F7F7F7F7F7F7F7F
      7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F000000000000
      7F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F0000000000007F7F
      7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F00007F00007F0000
      7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
      00000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF0000FF00007F00
      007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
      00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C00000FF
      00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
      7F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C00000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
      007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00007F00007F00007F
      00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
      7F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00
      007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
      00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
      7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C00000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
      C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F0000
      7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000FF0000FF00
      007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000007F7F7F
      0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
      7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000007F7F
      7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F00007F00
      00007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F
      0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F0000
      7F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF0000FF0000FF0000
      7F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00
      00FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
      00FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000}
  end
  object dxButton1: TdxButton
    Left = 144
    Top = 168
    Width = 185
    Height = 41
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'GERAR'
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 382
    Width = 282
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object ComboBox2: TComboBox
    Left = 96
    Top = 302
    Width = 283
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'ASH'
      'PCMSO')
  end
  object CheckBox1: TCheckBox
    Left = 128
    Top = 88
    Width = 233
    Height = 17
    Caption = 'Data de Vencimento pelo Cadastro Cliente'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 12
    Top = 274
    Width = 440
    Height = 201
    TabOrder = 7
  end
  object edCodCCusto: TComboBox
    Left = 295
    Top = 128
    Width = 165
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object ComboBox3: TComboBox
    Left = 20
    Top = 128
    Width = 272
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 9
  end
  object sds_cli: TSQLDataSet
    CommandText = 
      'select * from CLIENTES'#13#10'where ((SERIE = :serie) or (:serie = '#39'tu' +
      'do'#39')) '#13#10'and ((RA = :ra) or (:ra = '#39'todos osra'#39')) '#13#10'and ((CODBANC' +
      'O = :bc) or (:bc = 0)) '#13#10'and STATUS = 1 '#13#10'and DESCONTO < 100 '#13#10'a' +
      'nd SITUACAOESCOLAR = '#39'M'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = 'tudo'
      end
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = 'tudo'
      end
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
        Value = 'todos osra'
      end
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
        Value = 'todos osra'
      end
      item
        DataType = ftSmallint
        Name = 'bc'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftSmallint
        Name = 'bc'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 23
  end
  object dsp_cli: TDataSetProvider
    DataSet = sds_cli
    Left = 40
    Top = 23
  end
  object cds_cli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = 'tudo'
      end
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = 'tudo'
      end
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
        Value = 'todos osra'
      end
      item
        DataType = ftString
        Name = 'ra'
        ParamType = ptInput
        Value = 'todos osra'
      end
      item
        DataType = ftSmallint
        Name = 'bc'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftSmallint
        Name = 'bc'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dsp_cli'
    Left = 72
    Top = 23
    object cds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cds_cliCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cds_cliRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object cds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cds_cliOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cds_cliSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cds_cliSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cds_cliRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cds_cliCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cds_cliIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object cds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cds_cliMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object cds_cliMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object cds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object cds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object cds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
  end
  object sds_CR: TSQLDataSet
    CommandText = 
      'select * from RECEBIMENTO '#13#10'where CODCLIENTE = :cod and DATAVENC' +
      'IMENTO = :venc'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'venc'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 8
    object sds_CRCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object sds_CRTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object sds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object sds_CRCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sds_CRDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object sds_CRDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object sds_CRCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object sds_CRCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object sds_CRCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object sds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sds_CRVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sds_CRDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object sds_CRHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object sds_CRCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sds_CRCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object sds_CRCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object sds_CRCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object sds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object sds_CRDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object sds_CRVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object sds_CRJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object sds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sds_CRPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object sds_CRTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object sds_CRFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object sds_CRVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object sds_CRVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object sds_CRVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object sds_CROUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object sds_CROUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object sds_CRPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object sds_CRDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object sds_CRNF: TIntegerField
      FieldName = 'NF'
    end
    object sds_CRDP: TIntegerField
      FieldName = 'DP'
    end
    object sds_CRBL: TIntegerField
      FieldName = 'BL'
    end
    object sds_CRCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
  end
  object sds_parametro: TSQLDataSet
    CommandText = 'select * from PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 143
    object sds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object sds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object sds_parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object sds_parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object sds_parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object sds_parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object sds_parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object sds_parametroD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object sds_parametroD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object sds_parametroD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object sds_parametroD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object sds_parametroD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object sds_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds_parametro
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 175
  end
  object cds_parametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 408
    Top = 207
    object cds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cds_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object cds_parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object cds_parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object cds_parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object cds_parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object cds_parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object cds_parametroD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object cds_parametroD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object cds_parametroD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object cds_parametroD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object cds_parametroD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object cds_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object cds_cli_1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fx'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cli_1'
    Left = 280
    Top = 56
    object cds_cli_1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_cli_1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cds_cli_1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cds_cli_1CONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cds_cli_1TIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cds_cli_1CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cds_cli_1CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cds_cli_1INSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cds_cli_1RG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cds_cli_1SEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cds_cli_1REGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cds_cli_1LIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cds_cli_1DATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cds_cli_1CODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_cli_1STATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_cli_1HOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cds_cli_1PRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cds_cli_1PRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cds_cli_1CODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cds_cli_1BASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object cds_cli_1DATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cds_cli_1CONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cds_cli_1OBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cds_cli_1TEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cds_cli_1ID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cds_cli_1DATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cds_cli_1NOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cds_cli_1SEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cds_cli_1FORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cds_cli_1GRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cds_cli_1CODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cds_cli_1EXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cds_cli_1EXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cds_cli_1DATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cds_cli_1GERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cds_cli_1GERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cds_cli_1GERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cds_cli_1EMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cds_cli_1DTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cds_cli_1SERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cds_cli_1SERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cds_cli_1RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cds_cli_1CURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cds_cli_1IP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object cds_cli_1N_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cds_cli_1MAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object cds_cli_1MARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object cds_cli_1BANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object cds_cli_1BANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object cds_cli_1TORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object cds_cli_1COD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cds_cli_1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
  end
  object dsp_cli_1: TDataSetProvider
    DataSet = sds_cli_1
    Options = [poAllowCommandText]
    Left = 248
    Top = 56
  end
  object sds_cli_1: TSQLDataSet
    CommandText = 
      'select * from CLIENTES'#13#10'where (COD_FAIXA IS NOT NULL) and (STATU' +
      'S = 1) and ((CODCLIENTE = :id) or (:id = 9999999)) '#13#10'and ((COD_F' +
      'AIXA = :fx) or (:fx = 9999999)) '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fx'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fx'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 216
    Top = 56
  end
  object sds_faixa: TSQLDataSet
    CommandText = 'select * from FAIXA_ETARIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 40
    object sds_faixaCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      Required = True
    end
    object sds_faixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sds_faixaIDADE_MIN: TSmallintField
      FieldName = 'IDADE_MIN'
    end
    object sds_faixaIDADE_MAX: TSmallintField
      FieldName = 'IDADE_MAX'
    end
    object sds_faixaVALOR_PLANO: TFloatField
      FieldName = 'VALOR_PLANO'
    end
    object sds_faixaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sds_faixaUSO: TStringField
      FieldName = 'USO'
    end
  end
  object dsp_faixa: TDataSetProvider
    DataSet = sds_faixa
    Left = 408
    Top = 72
  end
  object cds_faixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_faixa'
    Left = 408
    Top = 105
    object cds_faixaCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      Required = True
    end
    object cds_faixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cds_faixaIDADE_MIN: TSmallintField
      FieldName = 'IDADE_MIN'
    end
    object cds_faixaIDADE_MAX: TSmallintField
      FieldName = 'IDADE_MAX'
    end
    object cds_faixaVALOR_PLANO: TFloatField
      FieldName = 'VALOR_PLANO'
    end
    object cds_faixaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cds_faixaUSO: TStringField
      FieldName = 'USO'
    end
  end
  object sds_serieletra: TSQLDataSet
    CommandText = 'select * from TABSERIES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQl
    Left = 24
    Top = 168
    object sds_serieletraSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Required = True
      Size = 4
    end
    object sds_serieletraTURNO: TStringField
      FieldName = 'TURNO'
      Size = 7
    end
    object sds_serieletraTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object sds_serieletraSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object sds_serieletraDESC_CLASSE: TStringField
      FieldName = 'DESC_CLASSE'
      Size = 30
    end
  end
  object sdscli: TSQLDataSet
    CommandText = 'select distinct(SERIE) from TABSERIES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQl
    Left = 56
    Top = 168
    object sdscliSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
  end
  object dsp_serie: TDataSetProvider
    DataSet = sds_serieletra
    Left = 24
    Top = 200
  end
  object cdsSerieLetra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_serie'
    Left = 24
    Top = 232
    object cdsSerieLetraSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Required = True
      Size = 4
    end
    object cdsSerieLetraTURNO: TStringField
      FieldName = 'TURNO'
      Size = 7
    end
    object cdsSerieLetraTIPOENSINO: TStringField
      FieldName = 'TIPOENSINO'
      Size = 15
    end
    object cdsSerieLetraSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsSerieLetraDESC_CLASSE: TStringField
      FieldName = 'DESC_CLASSE'
      Size = 30
    end
  end
end
