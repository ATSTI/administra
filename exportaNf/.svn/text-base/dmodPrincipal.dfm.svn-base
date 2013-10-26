object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 349
  Top = 168
  Height = 451
  Width = 517
  object sqlConexao: TSQLConnection
    ConnectionName = 'sisadmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.7:sge_jc'
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
    Left = 40
    Top = 64
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    Left = 336
    Top = 128
    object cdsNFNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cdsNFNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNFNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object cdsNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsNFPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNFPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object cdsNFDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNFDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object cdsNFUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNFCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNFCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNFNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsNFBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNFBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNFVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNFVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNFVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsNFOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cdsNFVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsNFVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNFCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNFFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object cdsNFICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsNFREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object cdsNFNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsNFPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object cdsNFCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNFEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsNFCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsNFUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNFINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNFVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object cdsNFCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
  end
  object dspNF: TDataSetProvider
    DataSet = sdsNF
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 128
  end
  object sdsNF: TSQLDataSet
    CommandText = 
      'select    NOTASERIE, NUMNF , NATUREZA , QUANTIDADE , MARCA     '#13 +
      #10', PESOBRUTO , PESOLIQUIDO , ESPECIE , DTAEMISSAO  , DTASAIDA  ,' +
      ' UF  , NF.CODVENDA     '#13#10', CODTRANSP  , NUMERO  , NF.NOTAFISCAL ' +
      ' , BASE_ICMS      '#13#10', NF.VALOR_ICMS  , BASE_ICMS_SUBST  , NF.VAL' +
      'OR_ICMS_SUBST , VALOR_PRODUTO     , NF.VALOR_FRETE    '#13#10', NF.VAL' +
      'OR_SEGURO , NF.OUTRAS_DESP , NF.VALOR_IPI  , VALOR_TOTAL_NOTA  ,' +
      '  CFOP , NF.CODCLIENTE  , NF.FATURA , NF.ICMS            '#13#10', NF.' +
      'REDUZICMS  , NOMETRANSP , PLACATRANSP  , CNPJ_CPF ,  END_TRANSP ' +
      ' , CIDADE_TRANSP'#13#10', UF_VEICULO_TRANSP  , UF_TRANSP , FRETE  , IN' +
      'SCRICAOESTADUAL ,VLRTOTALEXP'#13#10', v.CODMOVIMENTO '#13#10' from NOTAFISCA' +
      'L  nf , VENDA V'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 160
    Top = 128
    object sdsNFNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object sdsNFNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNFNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object sdsNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object sdsNFPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNFPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object sdsNFDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNFDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object sdsNFUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsNFCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNFCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object sdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsNFNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
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
    object sdsNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNFCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNFFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object sdsNFICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsNFREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object sdsNFNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdsNFPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsNFCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNFEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdsNFCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdsNFUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNFINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNFVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object sdsNFCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
  end
  object cdsMovNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'MOVI'
        ParamType = ptInput
      end>
    ProviderName = 'dspMovNF'
    Left = 336
    Top = 224
    object cdsMovNFCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cdsMovNFCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsMovNFCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsMovNFCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cdsMovNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsMovNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsMovNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsMovNFICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsMovNFUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsMovNFQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsMovNFBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsMovNFVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object cdsMovNFCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cdsMovNFLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object cdsMovNFDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object cdsMovNFDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object cdsMovNFPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object cdsMovNFVLRESTOQUE: TFloatField
      FieldName = 'VLRESTOQUE'
    end
    object cdsMovNFQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
    end
    object cdsMovNFNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object cdsMovNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsMovNFPRECOULTIMACOMPRA: TFloatField
      FieldName = 'PRECOULTIMACOMPRA'
    end
    object cdsMovNFCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsMovNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsMovNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object cdsMovNFQTDE_NF: TFloatField
      FieldName = 'QTDE_NF'
    end
    object cdsMovNFCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsMovNFTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
      ReadOnly = True
    end
  end
  object dspMovNF: TDataSetProvider
    DataSet = sdsMovNF
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 224
  end
  object sdsMovNF: TSQLDataSet
    CommandText = 
      'select md.*, (md.vlr_base*qtde_nf) as TOTALITENS, prod.codpro'#13#10'f' +
      'rom MOVIMENTODETALHE md , produtos prod'#13#10' WHERE prod.codproduto ' +
      '= md.codproduto and CODMOVIMENTO = :MOVI'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MOVI'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 160
    Top = 224
    object sdsMovNFCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object sdsMovNFCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sdsMovNFCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object sdsMovNFCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object sdsMovNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsMovNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsMovNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sdsMovNFICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsMovNFUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object sdsMovNFQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object sdsMovNFBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object sdsMovNFVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object sdsMovNFCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object sdsMovNFLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object sdsMovNFDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object sdsMovNFDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object sdsMovNFPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sdsMovNFVLRESTOQUE: TFloatField
      FieldName = 'VLRESTOQUE'
    end
    object sdsMovNFQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
    end
    object sdsMovNFNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object sdsMovNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsMovNFPRECOULTIMACOMPRA: TFloatField
      FieldName = 'PRECOULTIMACOMPRA'
    end
    object sdsMovNFCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object sdsMovNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsMovNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object sdsMovNFQTDE_NF: TFloatField
      FieldName = 'QTDE_NF'
    end
    object sdsMovNFCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sdsMovNFTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
      ReadOnly = True
    end
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 344
    Top = 64
    object cdsEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object cdsEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cdsEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object cdsEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object cdsEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 264
    Top = 72
  end
  object sdsEmpresa: TSQLDataSet
    CommandText = 
      'select  '#13#10' RAZAO, CNPJ_CPF, ENDERECO, LOGRADOURO, BAIRRO, CIDADE' +
      #13#10', UF, CEP, DDD, FONE, FONE_1, IE_RG'#13#10#13#10'from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 160
    Top = 64
    object sdsEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object sdsEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object sdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sdsEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object sdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sdsEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sdsEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object sdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sdsEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object sdsEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
  end
end
