object fNFeInutilizar: TfNFeInutilizar
  Left = 0
  Top = 0
  Caption = 'NFeInutilizar'
  ClientHeight = 408
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 32
    Top = 102
    Width = 119
    Height = 16
    Caption = 'Centro de Custo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 32
    Top = 24
    Width = 313
    Height = 13
    Caption = 
      'V'#225'lido para Inutiliza'#231#245'es feitas a partir desta vers'#227'o do sistem' +
      'a : '
  end
  object Label8: TLabel
    Left = 32
    Top = 48
    Width = 378
    Height = 13
    Caption = 
      'A Numera'#231#227'o Inutilizada aparecer'#225' na lista de NFe emitidas com S' +
      'tatus = I (i) .'
  end
  object Label9: TLabel
    Left = 32
    Top = 64
    Width = 425
    Height = 13
    Caption = 
      'Caso n'#227'o apare'#231'am na listagem  o cliente do sistema est'#225' sem end' +
      'ere'#231'o, contate a ATS.'
  end
  object Label1: TLabel
    Left = 32
    Top = 141
    Width = 23
    Height = 13
    Caption = 'Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 29
    Top = 179
    Width = 42
    Height = 13
    Caption = 'Modelo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 29
    Top = 219
    Width = 30
    Height = 13
    Caption = 'S'#233'rie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 30
    Top = 258
    Width = 82
    Height = 13
    Caption = 'N'#250'mero Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 30
    Top = 298
    Width = 75
    Height = 13
    Caption = 'N'#250'mero Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 232
    Top = 105
    Width = 69
    Height = 13
    Caption = 'Justificativa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object MemoResp: TMemo
    Left = 157
    Top = 83
    Width = 24
    Height = 22
    Align = alCustom
    TabOrder = 0
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 26
    Top = 120
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object edtAno: TEdit
    Left = 26
    Top = 155
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edtModelo: TEdit
    Left = 26
    Top = 193
    Width = 193
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = '55'
  end
  object edtSerie: TEdit
    Left = 26
    Top = 233
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edtNumIni: TEdit
    Left = 26
    Top = 272
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object edtNumFim: TEdit
    Left = 26
    Top = 310
    Width = 193
    Height = 21
    TabOrder = 6
  end
  object btnInutilizar: TButton
    Left = 228
    Top = 299
    Width = 90
    Height = 33
    Caption = 'Inutilizar'
    TabOrder = 7
    OnClick = btnInutilizarClick
  end
  object btnSair: TButton
    Left = 329
    Top = 299
    Width = 90
    Height = 33
    Caption = 'Sair'
    TabOrder = 8
    OnClick = btnSairClick
  end
  object edtJustificativa: TEdit
    Left = 226
    Top = 120
    Width = 193
    Height = 172
    AutoSize = False
    TabOrder = 9
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 343
    Top = 73
  end
  object cds_ccusto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    ProviderName = 'd_2'
    Left = 415
    Top = 72
    object cds_ccustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ccustoCONTA: TWideStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_ccustoNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
  end
  object sEmpresa: TZQuery
    Connection = Form1.con
    SQL.Strings = (
      'select * from EMPRESA where ccusto = :pcusto')
    Params = <
      item
        DataType = ftInteger
        Name = 'pcusto'
        ParamType = ptUnknown
      end>
    Left = 200
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pcusto'
        ParamType = ptUnknown
      end>
    object sEmpresaEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object sEmpresaRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object sEmpresaCNPJ_CPF: TWideStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object sEmpresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sEmpresaLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object sEmpresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sEmpresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sEmpresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object sEmpresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sEmpresaDDD: TWideStringField
      FieldName = 'DDD'
      Size = 2
    end
    object sEmpresaFONE: TWideStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sEmpresaFONE_1: TWideStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object sEmpresaFONE_2: TWideStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object sEmpresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 12
    end
    object sEmpresaE_MAIL: TWideStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sEmpresaWEB: TWideStringField
      FieldName = 'WEB'
      Size = 50
    end
    object sEmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
    end
    object sEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sEmpresaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sEmpresaIE_RG: TWideStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object sEmpresaSLOGAN: TWideStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object sEmpresaOUTRAS_INFO: TWideStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object sEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sEmpresaDIVERSOS1: TWideStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object sEmpresaDIVERSOS2: TWideStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sEmpresaDIVERSOS3: TWideStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object sEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object sEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object sEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sEmpresaSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 60
    end
    object sEmpresaSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object sEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sEmpresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sEmpresaCD_IBGE: TWideStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object sEmpresaTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object sEmpresaIM: TWideStringField
      FieldName = 'IM'
      Size = 15
    end
    object sEmpresaCONTADOR: TWideStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object sEmpresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
    end
    object sEmpresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 14
    end
    object sEmpresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
      Size = 11
    end
    object sEmpresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object sEmpresaCONTADOR_END: TWideStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object sEmpresaCONTADOR_NUMEND: TWideStringField
      FieldName = 'CONTADOR_NUMEND'
      Size = 7
    end
    object sEmpresaCONTADOR_COMPL: TWideStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object sEmpresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object sEmpresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 14
    end
    object sEmpresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 14
    end
    object sEmpresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object sEmpresaCONTADOR_COD_MUN: TWideStringField
      FieldName = 'CONTADOR_COD_MUN'
      Size = 10
    end
    object sEmpresaCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object sEmpresaINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object sEmpresaCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object sEmpresaINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object sEmpresaINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object sEmpresaINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object sEmpresaCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object sEmpresaINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object sEmpresaINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object sEmpresaINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object sEmpresaINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object sEmpresaBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object sEmpresaCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object sEmpresaINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object sEmpresaCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object sEmpresaNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object sEmpresaINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object sEmpresaINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object sEmpresaCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object sEmpresaINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object sEmpresaINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object sEmpresaINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object sEmpresaINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
    object sEmpresaINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
    object sEmpresaCNPJPREFEITURA: TWideStringField
      FieldName = 'CNPJPREFEITURA'
      Size = 14
    end
    object sEmpresaNOMEPREFEITURA: TWideStringField
      FieldName = 'NOMEPREFEITURA'
      Size = 50
    end
    object sEmpresaCHAVELIC: TWideStringField
      FieldName = 'CHAVELIC'
      Size = 50
    end
    object sEmpresaCHAVECONT: TWideStringField
      FieldName = 'CHAVECONT'
      Size = 50
    end
    object sEmpresaMODELOCUPOM: TWideStringField
      FieldName = 'MODELOCUPOM'
      Size = 2
    end
    object sEmpresaECFMOD: TWideStringField
      FieldName = 'ECFMOD'
    end
    object sEmpresaECFFAB: TWideStringField
      FieldName = 'ECFFAB'
    end
    object sEmpresaECFCX: TWideStringField
      FieldName = 'ECFCX'
      Size = 3
    end
  end
  object s_2: TZQuery
    Connection = Form1.con
    SQL.Strings = (
      
        'select CODIGO, CONTA, NOME from PLANO where plnCtaRoot(CONTA) = ' +
        ':PCONTADESPESA AND CONSOLIDA = '#39'S'#39)
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    Left = 296
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    object s_2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_2CONTA: TWideStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_2NOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
  end
  object dspBusca: TDataSetProvider
    DataSet = sdsBusca
    Options = [poAllowCommandText]
    Left = 210
    Top = 346
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca'
    Left = 266
    Top = 346
  end
  object sdsBusca: TZQuery
    Connection = Form1.con
    Params = <>
    Left = 160
    Top = 344
  end
end
