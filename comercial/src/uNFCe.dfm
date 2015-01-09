object fNFCe: TfNFCe
  Left = 192
  Top = 103
  Width = 1088
  Height = 563
  Caption = 'NFC-e'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 408
    Width = 30
    Height = 13
    Caption = 'NFC-e'
  end
  object Label2: TLabel
    Left = 80
    Top = 496
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Button1: TButton
    Left = 424
    Top = 448
    Width = 249
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object memoDados: TMemo
    Left = 104
    Top = 48
    Width = 817
    Height = 337
    Lines.Strings = (
      'memoDados')
    TabOrder = 1
  end
  object edNFCe: TEdit
    Left = 112
    Top = 408
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object chkAvista: TCheckBox
    Left = 264
    Top = 408
    Width = 97
    Height = 17
    Caption = 'A Vista'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object rgTipoEmissao: TRadioGroup
    Left = 704
    Top = 400
    Width = 105
    Height = 105
    Caption = 'Tipo Emiss'#227'o'
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'Contigencia'
      'OffLine')
    TabOrder = 4
  end
  object rgAmbiente: TRadioGroup
    Left = 824
    Top = 400
    Width = 233
    Height = 49
    Caption = 'Ambiente'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Produ'#231#227'o'
      'Homologa'#231#227'o')
    TabOrder = 5
  end
  object rgRegime: TRadioGroup
    Left = 824
    Top = 464
    Width = 209
    Height = 57
    Caption = 'Regime'
    ItemIndex = 0
    Items.Strings = (
      'Simples Nacional'
      'Simples Excesso Receita'
      'RegimeNormal')
    TabOrder = 6
  end
  object edtCliente: TEdit
    Left = 120
    Top = 496
    Width = 337
    Height = 21
    TabOrder = 7
    Text = 'Consumidor'
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Left = 528
    Top = 264
  end
  object SQLDataSet1: TSQLDataSet
    Params = <>
    Left = 160
    Top = 464
  end
  object DataSetProvider1: TDataSetProvider
    Left = 192
    Top = 464
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 464
  end
  object sEmpresa: TSQLDataSet
    CommandText = 
      'select e.* from EMPRESA e,  PLANO p'#13#10'where p.codigo = :pcusto an' +
      'd p.CODEMPRESA = e.CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcusto'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 263
    Top = 467
    object sEmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object sEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object sEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object sEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object sEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object sEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object sEmpresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object sEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object sEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object sEmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object sEmpresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object sEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object sEmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object sEmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object sEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sEmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object sEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sEmpresaDIVERSOS3: TStringField
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
    object sEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object sEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sEmpresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
  end
  object sdsNF: TSQLDataSet
    CommandText = 
      'select  nf.CFOP, nf.DTAEMISSAO, nf.DTASAIDA,  nf.CORPONF1, nf.XM' +
      'LNFE, nf.IDCOMPLEMENTAR, nf.CORPONF2, nf.CORPONF3, nf.CORPONF4 ,' +
      ' nf.CORPONF5, nf.CORPONF6, nf.CODCLIENTE, nf.NUMNF, nf.CODVENDA,' +
      ' nf.fatura, nf.natureza,'#13#10'UDF_ROUNDDEC(nf.BASE_ICMS, 2) as BASE_' +
      'ICMS, '#13#10'UDF_ROUNDDEC(nf.VALOR_ICMS, 2) as VALOR_ICMS,'#13#10'UDF_ROUND' +
      'DEC(nf.BASE_ICMS_SUBST, 2) as BASE_ICMS_SUBST, '#13#10'UDF_ROUNDDEC(nf' +
      '.VALOR_ICMS_SUBST, 2) as VALOR_ICMS_SUBST, '#13#10'UDF_ROUNDDEC(nf.VAL' +
      'OR_PRODUTO, 2) as VALOR_PRODUTO, '#13#10'UDF_ROUNDDEC(nf.VALOR_FRETE, ' +
      '2) as VALOR_FRETE, '#13#10'UDF_ROUNDDEC(nf.VALOR_SEGURO, 2) as VALOR_S' +
      'EGURO, '#13#10'UDF_ROUNDDEC(nf.OUTRAS_DESP, 2) as OUTRAS_DESP, '#13#10'UDF_R' +
      'OUNDDEC(nf.VALOR_IPI, 2) as VALOR_IPI,'#13#10'UDF_ROUNDDEC(nf.II, 2) a' +
      's II,'#13#10'UDF_ROUNDDEC(nf.BCII, 2) as BCII,'#13#10'UDF_ROUNDDEC(nf.VALOR_' +
      'TOTAL_NOTA, 2) as VALOR_TOTAL_NOTA,  nf.FRETE,   nf.CNPJ_CPF,  c' +
      'ast(nf.NOMETRANSP as varchar (60) )as NOMETRANSP,  nf.INSCRICAOE' +
      'STADUAL,     '#13#10'cast(nf.END_TRANSP as varchar (60) )as END_TRANSP' +
      ',    cast(nf.CIDADE_TRANSP as varchar (60) )as CIDADE_TRANSP,   ' +
      'nf.UF_TRANSP,'#13#10'nf.PLACATRANSP,   nf.UF_VEICULO_TRANSP,          ' +
      ' nf.QUANTIDADE,           nf.ESPECIE,           nf.MARCA,       ' +
      '    nf.NUMERO,           nf.PESOLIQUIDO,'#13#10'nf.PESOBRUTO,  cl.RAZA' +
      'OSOCIAL,           cl.CNPJ ,           nf.HORASAIDA,           n' +
      'f.NOTASERIE,           nf.SELECIONOU,           nf.REDUZICMS, nf' +
      '.PROTOCOLOENV,'#13#10'nf.NUMRECIBO, nf.PROTOCOLOCANC, v.ENTRADA, v.VAL' +
      'OR_PAGAR, '#13#10'UDF_ROUNDDEC(VALOR_PIS, 2) as VALOR_PIS, '#13#10'UDF_ROUND' +
      'DEC(VALOR_COFINS, 2) as VALOR_COFINS, nf.VALOR_DESCONTO, nf.NOME' +
      'TRANSP TRANSP2'#13#10', nf.CODTRANSP, nf.BASE_IPI, nf.BASE_PIS, nf.BAS' +
      'E_COFINS, nf.VLRTOT_TRIB, nf.STATUS , nf.NOMEXML '#13#10'from NOTAFISC' +
      'AL nf '#13#10'inner join CLIENTES cl on cl.CODCLIENTE = nf.CODCLIENTE'#13 +
      #10'inner join enderecocliente endecli on endecli.CODCLIENTE = cl.C' +
      'ODCLIENTE'#13#10'left outer join VENDA v on v.CODVENDA = nf.CODVENDA'#13#10 +
      'where (nf.DTAEMISSAO between :dta1 and :dta2)'#13#10'          and ((n' +
      'f.SERIE = :pvendacusto) or (:pvendacusto = '#39'todasasseriesdenotaf' +
      #39'))'#13#10'          and (endecli.TIPOEND = 0) and NF.NATUREZA = :natn' +
      'f  and ((nf.PROTOCOLOENV IS NULL) OR (:ENV = '#39'TODAS'#39'))'#13#10'order by' +
      ' nf.DTAEMISSAO DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvendacusto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvendacusto'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'natnf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 448
    Top = 376
    object sdsNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNFDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNFDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object sdsNFCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNFNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNFCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNFBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsNFBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object sdsNFVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object sdsNFVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sdsNFVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsNFOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object sdsNFVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsNFVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sdsNFFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNFCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNFNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 60
    end
    object sdsNFINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNFEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 60
    end
    object sdsNFCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 60
    end
    object sdsNFUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsNFUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object sdsNFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object sdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsNFPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNFPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNFRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object sdsNFCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsNFHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object sdsNFNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object sdsNFSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object sdsNFREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object sdsNFPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object sdsNFNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object sdsNFPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object sdsNFENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object sdsNFVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ReadOnly = True
    end
    object sdsNFFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object sdsNFNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object sdsNFCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object sdsNFCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object sdsNFCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 200
    end
    object sdsNFCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 200
    end
    object sdsNFVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ReadOnly = True
    end
    object sdsNFVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ReadOnly = True
    end
    object sdsNFCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 200
    end
    object sdsNFCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 200
    end
    object sdsNFVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
    end
    object sdsNFIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object sdsNFXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftMemo
    end
    object sdsNFII: TFloatField
      FieldName = 'II'
      ReadOnly = True
    end
    object sdsNFBCII: TFloatField
      FieldName = 'BCII'
      ReadOnly = True
    end
    object sdsNFTRANSP2: TStringField
      FieldName = 'TRANSP2'
      ReadOnly = True
      Size = 50
    end
    object sdsNFCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ReadOnly = True
    end
    object sdsNFBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ReadOnly = True
    end
    object sdsNFBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ReadOnly = True
    end
    object sdsNFBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ReadOnly = True
    end
    object sdsNFVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      ReadOnly = True
    end
    object sdsNFSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object sdsNFNOMEXML: TStringField
      FieldName = 'NOMEXML'
      ReadOnly = True
      Size = 60
    end
  end
  object sdsItensNF: TSQLDataSet
    CommandText = 
      'select md.CODPRODUTO, md.coddetalhe, '#13#10'          md.QUANTIDADE, ' +
      '         md.PRECO,'#13#10'          md.CFOP,          md.DESCPRODUTO, ' +
      'md.OBS,'#13#10'          case when udf_Pos('#39'-'#39', pr.CODPRO) > 0 then '#13#10 +
      '          udf_Copy(pr.CODPRO, 0, (udf_Pos('#39'-'#39', pr.CODPRO)-1))'#13#10' ' +
      '         ELSE'#13#10'          pr.CODPRO'#13#10'          END as codpro,'#13#10'  ' +
      '        pr.UNIDADEMEDIDA,'#13#10'          UDF_TRIM(md.CST) CST,'#13#10'    ' +
      '      md.ICMS, md.CSOSN,'#13#10'          UDF_ROUNDDEC(md.pIPI, 2) as ' +
      'pIPI,'#13#10'          UDF_ROUNDDEC(md.FRETE, 2) as FRETE,'#13#10'          ' +
      'UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO,'#13#10'         ' +
      ' UDF_ROUNDDEC(md.vIPI, 2) as vIPI,'#13#10'          UDF_ROUNDDEC(md.VL' +
      'R_BASEICMS, 2) as VLR_BASEICMS,'#13#10'          UDF_ROUNDDEC(md.VALOR' +
      '_ICMS, 2) as VALOR_ICMS, '#13#10'          UDF_ROUNDDEC(md.VLR_BASE, 2' +
      ') as VLR_BASE,'#13#10'          UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS' +
      '_SUBST,'#13#10'          UDF_ROUNDDEC(md.ICMS_SUBSTD, 2) as ICMS_SUBST' +
      'D, '#13#10'          UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, '#13#10'   ' +
      '       UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS, '#13#10'     ' +
      '     UDF_ROUNDDEC((md.VLR_BASE * md.QUANTIDADE), 2) as VALTOTAL,' +
      ' '#13#10'          UDF_ROUNDDEC(md.VALOR_SEGURO, 2) as VALOR_SEGURO,'#13#10 +
      '          UDF_ROUNDDEC(md.VALOR_OUTROS, 2) as VALOR_OUTROS,'#13#10'   ' +
      '       UDF_ROUNDDEC(md.II, 2) as II,'#13#10'          UDF_ROUNDDEC(md.' +
      'BCII, 2) as BCII,'#13#10'          md.CSTIPI, md.CSTPIS, md.CSTCOFINS,' +
      ' md.PPIS, md.PCOFINS,'#13#10'          md.NITEMPED, md.PEDIDO, MD.VLRB' +
      'C_IPI, MD.VLRBC_PIS,'#13#10'          md.VLRBC_COFINS, md.VLRTOT_TRIB,' +
      ' pr.COD_BARRA, pr.NCM'#13#10'          ,pr.ORIGEM '#13#10'from VENDA vd '#13#10'in' +
      'ner join MOVIMENTODETALHE md on'#13#10'md.CODMOVIMENTO = vd.CODMOVIMEN' +
      'TO '#13#10'inner join NOTAFISCAL nf on'#13#10'nf.CODVENDA = vd.CODVENDA'#13#10'inn' +
      'er join PRODUTOS pr on '#13#10'pr.CODPRODUTO = md.CODPRODUTO'#13#10'where vd' +
      '.CODVENDA = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 448
    Top = 411
    object sdsItensNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsItensNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsItensNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sdsItensNFCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object sdsItensNFCODPRO: TStringField
      FieldName = 'CODPRO'
      ReadOnly = True
      Size = 254
    end
    object sdsItensNFUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object sdsItensNFICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object sdsItensNFPIPI: TFloatField
      FieldName = 'PIPI'
      ReadOnly = True
    end
    object sdsItensNFVIPI: TFloatField
      FieldName = 'VIPI'
      ReadOnly = True
    end
    object sdsItensNFVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
      ReadOnly = True
    end
    object sdsItensNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ReadOnly = True
    end
    object sdsItensNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ReadOnly = True
    end
    object sdsItensNFICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ReadOnly = True
    end
    object sdsItensNFICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
      ReadOnly = True
    end
    object sdsItensNFVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ReadOnly = True
    end
    object sdsItensNFCSOSN: TStringField
      FieldName = 'CSOSN'
      ReadOnly = True
      Size = 3
    end
    object sdsItensNFFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object sdsItensNFVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
    end
    object sdsItensNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsItensNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ReadOnly = True
    end
    object sdsItensNFVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ReadOnly = True
    end
    object sdsItensNFCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object sdsItensNFCST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 3
    end
    object sdsItensNFVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ReadOnly = True
    end
    object sdsItensNFVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ReadOnly = True
    end
    object sdsItensNFII: TFloatField
      FieldName = 'II'
      ReadOnly = True
    end
    object sdsItensNFBCII: TFloatField
      FieldName = 'BCII'
      ReadOnly = True
    end
    object sdsItensNFOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object sdsItensNFCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
    object sdsItensNFCSTPIS: TStringField
      FieldName = 'CSTPIS'
      ReadOnly = True
      Size = 2
    end
    object sdsItensNFCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ReadOnly = True
      Size = 2
    end
    object sdsItensNFPPIS: TFloatField
      FieldName = 'PPIS'
      ReadOnly = True
    end
    object sdsItensNFPCOFINS: TFloatField
      FieldName = 'PCOFINS'
      ReadOnly = True
    end
    object sdsItensNFNITEMPED: TIntegerField
      FieldName = 'NITEMPED'
      ReadOnly = True
    end
    object sdsItensNFPEDIDO: TStringField
      FieldName = 'PEDIDO'
      ReadOnly = True
    end
    object sdsItensNFVLRBC_IPI: TFloatField
      FieldName = 'VLRBC_IPI'
      ReadOnly = True
    end
    object sdsItensNFVLRBC_PIS: TFloatField
      FieldName = 'VLRBC_PIS'
      ReadOnly = True
    end
    object sdsItensNFVLRBC_COFINS: TFloatField
      FieldName = 'VLRBC_COFINS'
      ReadOnly = True
    end
    object sdsItensNFVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      ReadOnly = True
    end
    object sdsItensNFCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ReadOnly = True
    end
    object sdsItensNFNCM: TStringField
      FieldName = 'NCM'
      ReadOnly = True
      Size = 8
    end
    object sdsItensNFORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ReadOnly = True
    end
  end
  object dspNF: TDataSetProvider
    DataSet = sdsNF
    Options = [poAllowCommandText]
    Left = 480
    Top = 379
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvendacusto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvendacusto'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'natnf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENV'
        ParamType = ptInput
      end>
    ProviderName = 'dspNF'
    Left = 512
    Top = 379
    object cdsNFFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsNFINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNFCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsNFUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsNFUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cdsNFPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cdsNFRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNFCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsNFCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsNFCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNFCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cdsNFNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 10
    end
    object cdsNFSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
      ReadOnly = True
    end
    object cdsNFPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object cdsNFNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object cdsNFPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object cdsNFENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object cdsNFVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ReadOnly = True
    end
    object cdsNFFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object cdsNFNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object cdsNFCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsNFCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsNFCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object cdsNFCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object cdsNFVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ReadOnly = True
    end
    object cdsNFVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ReadOnly = True
    end
    object cdsNFCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 200
    end
    object cdsNFCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 200
    end
    object cdsNFVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
    end
    object cdsNFIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object cdsNFXMLNFE: TMemoField
      FieldName = 'XMLNFE'
      BlobType = ftMemo
    end
    object cdsNFII: TFloatField
      FieldName = 'II'
      ReadOnly = True
    end
    object cdsNFBCII: TFloatField
      FieldName = 'BCII'
      ReadOnly = True
    end
    object cdsNFTRANSP2: TStringField
      FieldName = 'TRANSP2'
      ReadOnly = True
      Size = 50
    end
    object cdsNFCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ReadOnly = True
    end
    object cdsNFBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      ReadOnly = True
    end
    object cdsNFBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      ReadOnly = True
    end
    object cdsNFBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      ReadOnly = True
    end
    object cdsNFVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      ReadOnly = True
    end
    object cdsNFSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsNFNOMEXML: TStringField
      FieldName = 'NOMEXML'
      ReadOnly = True
      Size = 60
    end
  end
  object cdsItensNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensNF'
    Left = 512
    Top = 411
    object cdsItensNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsItensNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsItensNFCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsItensNFCODPRO: TStringField
      FieldName = 'CODPRO'
      ReadOnly = True
      Size = 254
    end
    object cdsItensNFUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsItensNFICMS: TFloatField
      FieldName = 'ICMS'
      ReadOnly = True
    end
    object cdsItensNFPIPI: TFloatField
      FieldName = 'PIPI'
      ReadOnly = True
    end
    object cdsItensNFVIPI: TFloatField
      FieldName = 'VIPI'
      ReadOnly = True
    end
    object cdsItensNFVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
      ReadOnly = True
    end
    object cdsItensNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ReadOnly = True
    end
    object cdsItensNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ReadOnly = True
      DisplayFormat = ',###0.000'
    end
    object cdsItensNFICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ReadOnly = True
    end
    object cdsItensNFICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
      ReadOnly = True
    end
    object cdsItensNFVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ReadOnly = True
    end
    object cdsItensNFCSOSN: TStringField
      FieldName = 'CSOSN'
      ReadOnly = True
      Size = 3
    end
    object cdsItensNFFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object cdsItensNFVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
    end
    object cdsItensNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsItensNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ReadOnly = True
    end
    object cdsItensNFVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ReadOnly = True
    end
    object cdsItensNFCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cdsItensNFCST: TStringField
      FieldName = 'CST'
      ReadOnly = True
      Size = 3
    end
    object cdsItensNFVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ReadOnly = True
    end
    object cdsItensNFVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ReadOnly = True
    end
    object cdsItensNFII: TFloatField
      FieldName = 'II'
      ReadOnly = True
    end
    object cdsItensNFBCII: TFloatField
      FieldName = 'BCII'
      ReadOnly = True
    end
    object cdsItensNFOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object cdsItensNFCSTIPI: TStringField
      FieldName = 'CSTIPI'
      ReadOnly = True
      Size = 2
    end
    object cdsItensNFCSTPIS: TStringField
      FieldName = 'CSTPIS'
      ReadOnly = True
      Size = 2
    end
    object cdsItensNFCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ReadOnly = True
      Size = 2
    end
    object cdsItensNFPPIS: TFloatField
      FieldName = 'PPIS'
      ReadOnly = True
    end
    object cdsItensNFPCOFINS: TFloatField
      FieldName = 'PCOFINS'
      ReadOnly = True
    end
    object cdsItensNFNITEMPED: TIntegerField
      FieldName = 'NITEMPED'
      ReadOnly = True
    end
    object cdsItensNFPEDIDO: TStringField
      FieldName = 'PEDIDO'
      ReadOnly = True
    end
    object cdsItensNFVLRBC_IPI: TFloatField
      FieldName = 'VLRBC_IPI'
      ReadOnly = True
    end
    object cdsItensNFVLRBC_PIS: TFloatField
      FieldName = 'VLRBC_PIS'
      ReadOnly = True
    end
    object cdsItensNFVLRBC_COFINS: TFloatField
      FieldName = 'VLRBC_COFINS'
      ReadOnly = True
    end
    object cdsItensNFVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      ReadOnly = True
    end
    object cdsItensNFCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ReadOnly = True
    end
    object cdsItensNFNCM: TStringField
      FieldName = 'NCM'
      ReadOnly = True
      Size = 8
    end
    object cdsItensNFORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ReadOnly = True
    end
  end
  object dspItensNF: TDataSetProvider
    DataSet = sdsItensNF
    Options = [poAllowCommandText]
    Left = 480
    Top = 411
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 208
    Top = 8
  end
end
