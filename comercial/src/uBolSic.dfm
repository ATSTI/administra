object fBolSic: TfBolSic
  Left = 289
  Top = 196
  Width = 449
  Height = 343
  BorderIcons = [biSystemMenu]
  Caption = 'Boleto Sicredi Sem Registro'
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
  object GroupBox1: TGroupBox
    Left = 6
    Top = 224
    Width = 425
    Height = 73
    Caption = 'Alterar Data Vencimento'
    TabOrder = 3
    object MaskEdit1: TMaskEdit
      Left = 131
      Top = 27
      Width = 91
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '  /  /  '
    end
    object BitBtn2: TBitBtn
      Left = 236
      Top = 23
      Width = 43
      Height = 33
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
        922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
        0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
        A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
        01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
        C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
        30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
        DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
        2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
        86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
        34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
        B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
        CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
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
    object cdsBoletoCONVENIO: TStringField
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
    object sdsBoletoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      FixedChar = True
      Size = 1
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport(Open Source) v3.24(BETA13) \251 Copyright '#169' 1999-20' +
      '07 Fortes Inform'#225'tica'
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
  object RLPreviewSetup1: TRLPreviewSetup
    Left = 48
    Top = 96
  end
end
