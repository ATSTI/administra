object Form1: TForm1
  Left = 303
  Top = 181
  Width = 424
  Height = 237
  BorderIcons = [biSystemMenu]
  Caption = 'Boletos Bradesco Com Registro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 102
    Top = 102
    Width = 51
    Height = 20
    Caption = 'Conta :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 36
    Top = 47
    Width = 353
    Height = 41
    Caption = 'Aguarde... Preparando Visualiza'#231#227'o.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 12
      Width = 334
      Height = 16
      Cursor = crHourGlass
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 36
    Top = 135
    Width = 353
    Height = 49
    Caption = 'Visualizar  Boletos'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object comboConta: TComboBox
    Left = 168
    Top = 99
    Width = 127
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
  end
  object sqlboleto: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=c:\home\bd\sge_saopedro.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 88
    Top = 8
  end
  object dspBoleto: TDataSetProvider
    DataSet = sdsBoleto
    Left = 200
    Top = 8
  end
  object RLBTitulo1: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edRecibo
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN11
    Versao = '1.1.4'
    Left = 360
    Top = 8
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport(Open Source) v3.24(BETA13) \251 Copyright '#169' 1999-20' +
      '07 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 320
    Top = 8
  end
  object sqlconta: TSQLDataSet
    CommandText = 
      'select numero_conta , digito_conta from banco where banco = '#39'Bra' +
      'desco'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 304
    Top = 96
    object sqlcontaNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sqlcontaDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
  end
  object sdsBoleto: TSQLDataSet
    CommandText = 'select * from boleto ('#39'Bradesco'#39' , :CONTA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQLConnection = sqlboleto
    Left = 144
    Top = 8
    object sdsBoletoDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object sdsBoletoDATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object sdsBoletoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsBoletoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object sdsBoletoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsBoletoIE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object sdsBoletoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object sdsBoletoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sdsBoletoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsBoletoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object sdsBoletoDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsBoletoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object sdsBoletoDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object sdsBoletoDATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object sdsBoletoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object sdsBoletoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsBoletoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsBoletoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsBoletoTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sdsBoletoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object sdsBoletoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsBoletoINST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object sdsBoletoINST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object sdsBoletoNUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object sdsBoletoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object sdsBoletoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object sdsBoletoDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsBoletoBL: TIntegerField
      FieldName = 'BL'
    end
    object sdsBoletoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object cdsboleto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspBoleto'
    Left = 256
    Top = 8
    object cdsboletoDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object cdsboletoDATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object cdsboletoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsboletoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object cdsboletoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsboletoIE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object cdsboletoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsboletoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsboletoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsboletoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsboletoDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsboletoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsboletoDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object cdsboletoDATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object cdsboletoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object cdsboletoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsboletoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsboletoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsboletoTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsboletoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object cdsboletoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsboletoINST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object cdsboletoINST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object cdsboletoNUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object cdsboletoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object cdsboletoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object cdsboletoDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsboletoBL: TIntegerField
      FieldName = 'BL'
    end
    object cdsboletoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object RLPreviewSetup1: TRLPreviewSetup
    DialogPrint = False
    AfterPrint = RLPreviewSetup1AfterPrint
    Left = 16
    Top = 104
  end
end
