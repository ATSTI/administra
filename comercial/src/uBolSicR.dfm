object fBolSicR: TfBolSicR
  Left = 461
  Top = 183
  Width = 465
  Height = 342
  BorderIcons = [biSystemMenu]
  Caption = 'Boleto Sicredi Com Registro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
  object Label2: TLabel
    Left = 10
    Top = 8
    Width = 62
    Height = 13
    Caption = 'SEGUENCIA'
    Visible = False
  end
  object Panel1: TPanel
    Left = 36
    Top = 55
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
  object btnVisualizar: TBitBtn
    Left = 36
    Top = 135
    Width = 353
    Height = 49
    Caption = 'Visualizar  Boletos'
    TabOrder = 1
    OnClick = btnVisualizarClick
  end
  object comboConta: TComboBox
    Left = 159
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
  object btnGerar_Arq: TButton
    Left = 38
    Top = 190
    Width = 350
    Height = 50
    Caption = 'Gerar Arquivo Remessa'
    TabOrder = 3
    OnClick = btnGerar_ArqClick
  end
  object Edit1: TEdit
    Left = 2
    Top = 24
    Width = 81
    Height = 21
    MaxLength = 7
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object Edit2: TEdit
    Left = 330
    Top = 240
    Width = 81
    Height = 21
    MaxLength = 7
    ReadOnly = True
    TabOrder = 5
    Visible = False
  end
  object JvDateEdit1: TJvDateEdit
    Left = 64
    Top = 248
    Width = 113
    Height = 21
    Enabled = False
    TabOrder = 6
    Visible = False
  end
  object RLBTitulo1: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
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
      'select numero_conta , digito_conta from banco where banco = '#39'Sic' +
      'redi'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
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
  object RLBRemessa1: TRLBRemessa
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRemessa
    Left = 392
    Top = 8
  end
  object RLPreviewSetup1: TRLPreviewSetup
    Left = 16
    Top = 104
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 'select udf_StrZero(anoletivo  ,7 ) as anoletivo  from EMPRESA'
    DataSource = dsEmpresa
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 168
    object sqlEmpresaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ReadOnly = True
      FixedChar = True
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sqlEmpresa
    Left = 144
    Top = 168
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 240
    Top = 168
    object cdsEmpresaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ReadOnly = True
      FixedChar = True
    end
  end
  object dsEmpresa: TDataSource
    Left = 312
    Top = 176
  end
  object sqlBanco: TSQLDataSet
    CommandText = 
      'select CODBANCO, BANCO, NOMEBANCO, CARTEIRA, CODIGO_CEDENTE, COD' +
      'IGO_EMPRESA, CODIGO_AGENCIA, DIGITO_AGENCIA, NUMERO_CONTA, DIGIT' +
      'O_CONTA, CODIGO_PLANO, INSTRUCAO1, INSTRUCAO2, INSTRUCAO3, INSTR' +
      'UCAO4, CEDENTE, ESPECIEDOC, ACEITE, CONVENIO, LOCALPGTO, N_BANCO' +
      ', DIGITOBANCO, VARIACAO, NCONVENIO, CODIGOBOLETO, LAYOUT_BL, LAY' +
      'OUT_RM, RESP_EMISSAO, IMP_COMPROVANTE, PASTA_REMESSA, PASTA_RETO' +
      'RNO, NOME_ARQUIVO, CC_BANCO, MORAJUROS, PERCMULTA, PROTESTO, SEQ' +
      'UENCIA_DIA, SEQUENCIA_ARQUIVO, DIA_GEROU_ARQUIVO , GERANDO_ARQUI' +
      'VO from banco'#13#10'where numero_conta =:conta'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'conta'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 240
    object sqlBancoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sqlBancoSEQUENCIA_ARQUIVO: TIntegerField
      FieldName = 'SEQUENCIA_ARQUIVO'
    end
    object sqlBancoDIA_GEROU_ARQUIVO: TDateField
      FieldName = 'DIA_GEROU_ARQUIVO'
    end
    object sqlBancoSEQUENCIA_DIA: TIntegerField
      FieldName = 'SEQUENCIA_DIA'
    end
    object sqlBancoGERANDO_ARQUIVO: TIntegerField
      FieldName = 'GERANDO_ARQUIVO'
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = sqlBanco
    Left = 168
    Top = 240
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'conta'
        ParamType = ptInput
      end>
    ProviderName = 'dspBanco'
    Left = 264
    Top = 240
    object cdsBancoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object cdsBancoSEQUENCIA_ARQUIVO: TIntegerField
      FieldName = 'SEQUENCIA_ARQUIVO'
    end
    object cdsBancoDIA_GEROU_ARQUIVO: TDateField
      FieldName = 'DIA_GEROU_ARQUIVO'
    end
    object cdsBancoSEQUENCIA_DIA: TIntegerField
      FieldName = 'SEQUENCIA_DIA'
    end
    object cdsBancoGERANDO_ARQUIVO: TIntegerField
      FieldName = 'GERANDO_ARQUIVO'
    end
  end
  object sdsBoleto: TSQLDataSet
    CommandText = 'select * from boleto('#39'Sicredi'#39' , :CONTA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
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
    object sdsBoletoDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsBoletoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object sdsBoletoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object sdsBoletoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object sdsBoletoBL: TIntegerField
      FieldName = 'BL'
    end
    object sdsBoletoCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object sdsBoletoE_ENDERECO: TStringField
      FieldName = 'E_ENDERECO'
      Size = 80
    end
    object sdsBoletoE_LOGRADOURO: TStringField
      FieldName = 'E_LOGRADOURO'
      Size = 80
    end
    object sdsBoletoE_BAIRRO: TStringField
      FieldName = 'E_BAIRRO'
      Size = 40
    end
    object sdsBoletoE_CIDADE: TStringField
      FieldName = 'E_CIDADE'
      Size = 50
    end
    object sdsBoletoE_UF: TStringField
      FieldName = 'E_UF'
      FixedChar = True
      Size = 2
    end
    object sdsBoletoE_CEP: TStringField
      FieldName = 'E_CEP'
      FixedChar = True
      Size = 9
    end
    object sdsBoletoE_DDD: TStringField
      FieldName = 'E_DDD'
      FixedChar = True
      Size = 2
    end
    object sdsBoletoE_FONE: TStringField
      FieldName = 'E_FONE'
      Size = 12
    end
    object sdsBoletoE_NUMERO: TStringField
      FieldName = 'E_NUMERO'
      Size = 5
    end
    object sdsBoletoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      FixedChar = True
      Size = 1
    end
  end
  object dspBoleto: TDataSetProvider
    DataSet = sdsBoleto
    Left = 200
    Top = 8
  end
  object cdsBoleto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspBoleto'
    Left = 264
    Top = 8
    object cdsBoletoDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object cdsBoletoDATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object cdsBoletoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsBoletoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object cdsBoletoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsBoletoIE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object cdsBoletoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsBoletoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsBoletoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsBoletoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsBoletoDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsBoletoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsBoletoDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object cdsBoletoDATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object cdsBoletoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsBoletoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsBoletoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsBoletoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsBoletoTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsBoletoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object cdsBoletoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsBoletoINST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object cdsBoletoINST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object cdsBoletoNUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object cdsBoletoDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsBoletoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object cdsBoletoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object cdsBoletoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object cdsBoletoBL: TIntegerField
      FieldName = 'BL'
    end
    object cdsBoletoCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object cdsBoletoE_ENDERECO: TStringField
      FieldName = 'E_ENDERECO'
      Size = 80
    end
    object cdsBoletoE_LOGRADOURO: TStringField
      FieldName = 'E_LOGRADOURO'
      Size = 80
    end
    object cdsBoletoE_BAIRRO: TStringField
      FieldName = 'E_BAIRRO'
      Size = 40
    end
    object cdsBoletoE_CIDADE: TStringField
      FieldName = 'E_CIDADE'
      Size = 50
    end
    object cdsBoletoE_UF: TStringField
      FieldName = 'E_UF'
      FixedChar = True
      Size = 2
    end
    object cdsBoletoE_CEP: TStringField
      FieldName = 'E_CEP'
      FixedChar = True
      Size = 9
    end
    object cdsBoletoE_DDD: TStringField
      FieldName = 'E_DDD'
      FixedChar = True
      Size = 2
    end
    object cdsBoletoE_FONE: TStringField
      FieldName = 'E_FONE'
      Size = 12
    end
    object cdsBoletoE_NUMERO: TStringField
      FieldName = 'E_NUMERO'
      Size = 5
    end
    object cdsBoletoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      FixedChar = True
      Size = 1
    end
  end
end
