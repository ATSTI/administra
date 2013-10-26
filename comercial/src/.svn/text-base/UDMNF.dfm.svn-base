object DMNF: TDMNF
  OldCreateOrder = False
  Left = 76
  Top = 28
  Height = 669
  Width = 891
  object sCliente: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE from CLIENTES '#13#10'order by NOMECLIE' +
      'NTE '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 14
    Top = 3
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object pCliente: TDataSetProvider
    DataSet = sCliente
    UpdateMode = upWhereKeyOnly
    Left = 14
    Top = 47
  end
  object cCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCliente'
    Left = 13
    Top = 91
    object cClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object DtSrc: TDataSource
    DataSet = cds_Movimento
    Left = 133
    Top = 137
  end
  object dCliente: TDataSource
    DataSet = cCliente
    Left = 13
    Top = 137
  end
  object cds_Movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Movimento'
    OnNewRecord = cds_MovimentoNewRecord
    OnReconcileError = cds_MovimentoReconcileError
    Left = 132
    Top = 92
    object cds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object cds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object cds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object cds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
  object sds_Movimento: TSQLDataSet
    CommandText = 
      'select mov.*, cli.NOMECLIENTE, cli.OBS, cli.CNPJ , vei.PLACA, ve' +
      'i.MARCA_MODELO, '#13#10'usu.NOMEUSUARIO, forn.NOMEFORNECEDOR, nat.DESC' +
      'NATUREZA, '#13#10'alm.ALMOXARIFADO, nat.TIPOTITULO, nat.BAIXAMOVIMENTO' +
      '  '#13#10'from MOVIMENTO mov '#13#10'left outer join CLIENTES cli on cli.COD' +
      'CLIENTE=mov.CODCLIENTE '#13#10'left outer join VEICULO vei on vei.COD_' +
      'CLIENTE=mov.CODCLIENTE '#13#10'left outer join USUARIO usu on usu.CODU' +
      'SUARIO=mov.CODUSUARIO '#13#10'left outer join FORNECEDOR forn on forn.' +
      'CODFORNECEDOR =mov.CODFORNECEDOR '#13#10'inner join NATUREZAOPERACAO n' +
      'at on  nat.CODNATUREZA=mov.CODNATUREZA '#13#10'left outer join ALMOXAR' +
      'IFADO alm on alm.CODALMOXARIFADO=mov.CODALMOXARIFADO '#13#10' where CO' +
      'DMOVIMENTO=:pCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 133
    Top = 4
    object sds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object sds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object sds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object sds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object sds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object sds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
  object dsp_Movimento: TDataSetProvider
    DataSet = sds_Movimento
    UpdateMode = upWhereKeyOnly
    Left = 133
    Top = 49
  end
  object sds_Mov_Det: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE, movd.CODMOVIMENTO, movd.CODPRODUTO, movd' +
      '.ICMS, movd.PRECO, movd.QUANTIDADE, movd.QTDE_ALT, movd.UN, movd' +
      '.BAIXA, movd.PIPI, movd.VIPI'#13#10', movd.CONTROLE, movd.COD_COMISSAO' +
      ', movd.LOTE, movd.DTAFAB, movd.DTAVCTO, movd.PRECOCUSTO, movd.VA' +
      'LTOTAL'#13#10', cast(movd.DESCPRODUTO as varchar(300)) as DESCPRODUTO'#13 +
      #10', movd.CFOP, movd.CSOSN, movd.NITEMPED, movd.PEDIDO'#13#10', movd.CST' +
      ', prod.COD_BARRA , prod.CODPRO, prod.ESTOQUEATUAL, prod.CODALMOX' +
      'ARIFADO, prod.VALORUNITARIOATUAL'#13#10', prod.QTDE_PCT, ccus.ALMOXARI' +
      'FADO, prod.CONTA_DESPESA  , prod.LOCALIZACAO  , prod.CLASSIFIC_F' +
      'ISCAL , cm.CODIGO, prod.LOTES, UDF_ROUNDDEC(movd.VALOR_ICMS, 2) ' +
      'as VALOR_ICMS'#13#10', movd.VLR_BASE, movd.VLR_BASEICMS, movd.VALOR_DE' +
      'SCONTO, movd.FRETE, movd.ICMS_SUBST, movd.ICMS_SUBSTD, movd.VALO' +
      'R_SEGURO, movd.VALOR_OUTROS, prod.NCM, movd.STATUS, movd.II, mov' +
      'd.BCII, movd.OBS, movd.CSTIPI, movd.CSTPIS, movd.VALOR_PIS, movd' +
      '.CSTCOFINS, movd.VALOR_COFINS, movd.VLRBC_IPI,'#13#10'movd.VLRBC_PIS, ' +
      'movd.VLRBC_COFINS, movd.VLRTOT_TRIB'#13#10', movd.PCOFINS, movd.PPIS, ' +
      'movd.PAGOU '#13#10'from MOVIMENTODETALHE movd '#13#10'inner join PRODUTOS pr' +
      'od on prod.CODPRODUTO=movd.CODPRODUTO '#13#10'left outer join ALMOXARI' +
      'FADO ccus on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO '#13#10'left ' +
      'outer join COMISSAO cm on cm.COD_COMISSAO = movd.COD_COMISSAO '#13#10 +
      'where movd.CODDETALHE=:CODDETALHE or movd.CODMOVIMENTO=:pCODMOV ' +
      'order by movd.coddetalhe'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 214
    Top = 4
    object sds_Mov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_Mov_DetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_Mov_DetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_Mov_DetVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object sds_Mov_DetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object sds_Mov_DetLOCALIZACAO: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
    end
    object sds_Mov_DetESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = []
    end
    object sds_Mov_DetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
    end
    object sds_Mov_DetLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_Mov_DetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_Mov_DetDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_Mov_DetLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_Mov_DetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = []
      Size = 30
    end
    object sds_Mov_DetVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object sds_Mov_DetVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sds_Mov_DetCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object sds_Mov_DetCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sds_Mov_DetVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
    end
    object sds_Mov_DetFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object sds_Mov_DetICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object sds_Mov_DetICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object sds_Mov_DetVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ReadOnly = True
    end
    object sds_Mov_DetVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ReadOnly = True
    end
    object sds_Mov_DetPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object sds_Mov_DetVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object sds_Mov_DetNCM: TStringField
      FieldName = 'NCM'
      ReadOnly = True
      Size = 8
    end
    object sds_Mov_DetSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetII: TFloatField
      FieldName = 'II'
    end
    object sds_Mov_DetBCII: TFloatField
      FieldName = 'BCII'
    end
    object sds_Mov_DetOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object sds_Mov_DetNITEMPED: TIntegerField
      FieldName = 'NITEMPED'
      ReadOnly = True
    end
    object sds_Mov_DetPEDIDO: TStringField
      FieldName = 'PEDIDO'
      ReadOnly = True
    end
    object sds_Mov_DetCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sds_Mov_DetCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sds_Mov_DetVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object sds_Mov_DetCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sds_Mov_DetVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object sds_Mov_DetVLRBC_IPI: TFloatField
      FieldName = 'VLRBC_IPI'
    end
    object sds_Mov_DetVLRBC_PIS: TFloatField
      FieldName = 'VLRBC_PIS'
    end
    object sds_Mov_DetVLRBC_COFINS: TFloatField
      FieldName = 'VLRBC_COFINS'
    end
    object sds_Mov_DetVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
    end
    object sds_Mov_DetPCOFINS: TFloatField
      FieldName = 'PCOFINS'
    end
    object sds_Mov_DetPPIS: TFloatField
      FieldName = 'PPIS'
    end
    object sds_Mov_DetPAGOU: TStringField
      FieldName = 'PAGOU'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object dsp_Mov_det: TDataSetProvider
    DataSet = sds_Mov_Det
    UpdateMode = upWhereKeyOnly
    Left = 211
    Top = 50
  end
  object cds_Mov_det: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Mov_det'
    AfterPost = cds_Mov_detAfterPost
    OnCalcFields = cds_Mov_detCalcFields
    OnNewRecord = cds_Mov_detNewRecord
    OnPostError = cds_Mov_detPostError
    OnReconcileError = cds_Mov_detReconcileError
    Left = 210
    Top = 93
    object cds_Mov_detCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Mov_detCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#.00'
      currency = True
    end
    object cds_Mov_detQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_Mov_detValorTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'ValorTotal'
      ProviderFlags = []
      DisplayFormat = ',#.00'
    end
    object cds_Mov_detQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_Mov_detVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object cds_Mov_detVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_Mov_detLOCALIZACAO: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
    end
    object cds_Mov_detDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 305
    end
    object cds_Mov_detESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_Mov_detLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_Mov_detVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',#.00'
    end
    object cds_Mov_detCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = []
      Size = 30
    end
    object cds_Mov_detVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cds_Mov_detCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cds_Mov_detVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object cds_Mov_detVIPI: TFloatField
      FieldName = 'VIPI'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detNCM: TStringField
      FieldName = 'NCM'
      ReadOnly = True
      Size = 8
    end
    object cds_Mov_detSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detII: TFloatField
      FieldName = 'II'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detBCII: TFloatField
      FieldName = 'BCII'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object cds_Mov_detNITEMPED: TIntegerField
      FieldName = 'NITEMPED'
    end
    object cds_Mov_detPEDIDO: TStringField
      FieldName = 'PEDIDO'
    end
    object cds_Mov_detCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cds_Mov_detCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cds_Mov_detVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cds_Mov_detVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detVLRBC_IPI: TFloatField
      FieldName = 'VLRBC_IPI'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detVLRBC_PIS: TFloatField
      FieldName = 'VLRBC_PIS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detVLRBC_COFINS: TFloatField
      FieldName = 'VLRBC_COFINS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detPCOFINS: TFloatField
      FieldName = 'PCOFINS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detPPIS: TFloatField
      FieldName = 'PPIS'
      DisplayFormat = ',##0.00'
    end
    object cds_Mov_detPAGOU: TStringField
      FieldName = 'PAGOU'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detTotalPedido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotalPedido'
      ProviderFlags = []
      Active = True
      currency = True
      DisplayFormat = ',#0.00'
      Expression = 'Sum(VALORTOTAL)'
    end
  end
  object DtSrc1: TDataSource
    DataSet = cds_Mov_det
    OnStateChange = DtSrc1StateChange
    Left = 209
    Top = 137
  end
  object DtSrcVenda: TDataSource
    DataSet = cds_venda
    OnStateChange = DtSrcVendaStateChange
    Left = 279
    Top = 137
  end
  object cds_venda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_venda'
    OnReconcileError = cds_vendaReconcileError
    Left = 278
    Top = 94
    object cds_vendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaBANCO_1: TStringField
      FieldName = 'BANCO_1'
      ProviderFlags = []
      Size = 18
    end
    object cds_vendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_vendaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_vendaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_vendadiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'diferenca'
      DisplayFormat = ',##0.00'
      Calculated = True
    end
    object cds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_venda: TDataSetProvider
    DataSet = sds_venda
    UpdateMode = upWhereKeyOnly
    Left = 279
    Top = 52
  end
  object sds_venda: TSQLDataSet
    CommandText = 
      'select ven.*, cli.NOMECLIENTE, usu.NOMEUSUARIO, banc.BANCO from ' +
      'VENDA ven inner join CLIENTES cli on cli.CODCLIENTE=ven.CODCLIEN' +
      'TE inner join USUARIO usu on usu.CODUSUARIO=ven.CODVENDEDOR left' +
      ' outer join BANCO banc on banc.CODBANCO=ven.BANCO where CODVENDA' +
      ' = :CODVENDA or CODMOVIMENTO = :PCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 279
    Top = 4
    object sds_vendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaBANCO_1: TStringField
      FieldName = 'BANCO_1'
      ProviderFlags = []
      Size = 18
    end
    object sds_vendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_vendaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_vendaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sUsuario: TSQLDataSet
    CommandText = 'select CODUSUARIO'#13#10'        , NOMEUSUARIO '#13#10'from USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 70
    Top = 4
    object sUsuarioCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sUsuarioNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
  end
  object pUsuario: TDataSetProvider
    DataSet = sUsuario
    UpdateMode = upWhereKeyOnly
    Left = 70
    Top = 48
  end
  object cUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pUsuario'
    Left = 68
    Top = 92
    object cUsuarioCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cUsuarioNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
  end
  object dUsuario: TDataSource
    DataSet = cUsuario
    Left = 67
    Top = 137
  end
  object DataSource1: TDataSource
    DataSet = cds_cm
    Left = 345
    Top = 137
  end
  object cds_cm: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cm'
    Left = 343
    Top = 94
    object cds_cmCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_cmCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_cmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cmINDICE: TStringField
      FieldName = 'INDICE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cmLB: TStringField
      FieldName = 'LB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cmCM: TStringField
      FieldName = 'CM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsp_cm: TDataSetProvider
    DataSet = sds_cm
    UpdateMode = upWhereKeyOnly
    Left = 342
    Top = 50
  end
  object sds_cm: TSQLDataSet
    CommandText = 
      'select * from COMISSAO '#13#10'where ((COD_COMISSAO = :pcod) or (:pcod' +
      ' = 9999999)) '#13#10'or CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 342
    Top = 3
    object sds_cmCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cmCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_cmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cmINDICE: TStringField
      FieldName = 'INDICE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cmLB: TStringField
      FieldName = 'LB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cmCM: TStringField
      FieldName = 'CM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object sds_Veiculocli: TSQLDataSet
    CommandText = 
      'select * from VEICULO '#13#10'where PLACA = :pplaca or COD_VEICULO =  ' +
      ':PVEIC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pplaca'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PVEIC'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 412
    Top = 5
    object sds_VeiculocliCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_VeiculocliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_VeiculocliPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_VeiculocliMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_VeiculocliTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_VeiculocliCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_VeiculocliANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_VeiculocliANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_VeiculocliCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_Veiculocli: TDataSetProvider
    DataSet = sds_Veiculocli
    UpdateMode = upWhereKeyOnly
    Left = 412
    Top = 51
  end
  object cds_Veiculocli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pplaca'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PVEIC'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Veiculocli'
    Left = 414
    Top = 95
    object cds_VeiculocliCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_VeiculocliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VeiculocliPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      EditMask = 'LLL\-0000;1;_'
      Size = 10
    end
    object cds_VeiculocliMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_VeiculocliTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VeiculocliCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VeiculocliANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_VeiculocliANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_VeiculocliCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DataSource2: TDataSource
    DataSet = cds_Veiculocli
    Left = 416
    Top = 138
  end
  object DtSrc_NF: TDataSource
    DataSet = cds_nf
    OnStateChange = DtSrc_NFStateChange
    Left = 477
    Top = 138
  end
  object cds_nf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvenda'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_nf'
    OnNewRecord = cds_nfNewRecord
    Left = 477
    Top = 94
    object cds_nfNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object cds_nfNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_nfNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_nfQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_nfESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/99;1;_'
    end
    object cds_nfDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/99;1;_'
    end
    object cds_nfUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nfCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_nfPLACATRANSP: TStringField
      DisplayWidth = 16
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cds_nfCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_nfCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_nfUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nfUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nfFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nfINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object cds_nfNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nfCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nfCORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nfCORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nfCORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nfCORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nfCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_nfCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cds_nfPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_nfPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_nfFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cds_nfICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 60
    end
    object cds_nfCNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      ProviderFlags = []
      Size = 18
    end
    object cds_nfINSCCLI: TStringField
      FieldName = 'INSCCLI'
      ProviderFlags = []
      Size = 24
    end
    object cds_nfLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object cds_nfBAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      ProviderFlags = []
      Size = 30
    end
    object cds_nfCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object cds_nfCIDADECLI: TStringField
      FieldName = 'CIDADECLI'
      ProviderFlags = []
      Size = 40
    end
    object cds_nfUFCLI: TStringField
      FieldName = 'UFCLI'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cds_nfCEPCLI: TStringField
      FieldName = 'CEPCLI'
      ProviderFlags = []
      Size = 10
    end
    object cds_nfTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object cds_nfSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nfIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object cds_nfNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object cds_nfPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object cds_nfSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cds_nfVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = ',##0.00'
    end
    object cds_nfIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object cds_nfVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
      DisplayFormat = ',##0.00'
    end
    object cds_nfID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object cds_nfSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cds_nfPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object cds_nfNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object cds_nfPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object cds_nfVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      DisplayFormat = ',##0.00'
    end
    object cds_nfCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cds_nfXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object cds_nfINDPAG: TIntegerField
      FieldName = 'INDPAG'
    end
    object cds_nfBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      DisplayFormat = ',##0.00'
    end
    object cds_nfBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
      DisplayFormat = ',##0.00'
    end
    object cds_nfBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
      DisplayFormat = ',##0.00'
    end
    object cds_nfVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
      DisplayFormat = ',##0.00'
    end
  end
  object dsp_nf: TDataSetProvider
    DataSet = sds_nf
    UpdateMode = upWhereKeyOnly
    Left = 473
    Top = 50
  end
  object sds_nf: TSQLDataSet
    CommandText = 
      'select nf.*'#13#10'        , nat.CFNOME as DESCNATUREZA '#13#10'        , cl' +
      'i.NOMECLIENTE '#13#10'        , cli.RAZAOSOCIAL'#13#10'        , cli.CNPJ as' +
      ' cnpjcli'#13#10'        , cli.INSCESTADUAL as insccli'#13#10'        , ende.' +
      'LOGRADOURO, ende.BAIRRO as bairrocli, ende.COMPLEMENTO, ende.CID' +
      'ADE as cidadecli, ende.UF as ufcli, ende.CEP as cepcli, TELEFONE' +
      ' '#13#10'from NOTAFISCAL nf '#13#10'left outer join CFOP nat ON nat.CFCOD = ' +
      'nf.CFOP '#13#10'left outer join CLIENTES cli on '#13#10'cli.CODCLIENTE=nf.CO' +
      'DCLIENTE '#13#10'left outer join ENDERECOCLIENTE ende on '#13#10'ende.CODCLI' +
      'ENTE=cli.CODCLIENTE '#13#10' where ((nf.NUMNF = :pNF)  or (CODVENDA = ' +
      ':pvenda))'#13#10'     and (nf.NATUREZA IN (12,15,16)) and (ende.TIPOEN' +
      'D = 0)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvenda'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 473
    Top = 3
    object sds_nfNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sds_nfNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_nfNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_nfQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_nfESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nfCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object sds_nfNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nfCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nfCORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nfCORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nfCORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_nfCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sds_nfPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nfPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nfFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_nfICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_nfPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sds_nfCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_nfCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_nfUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nfUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nfFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nfINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 60
    end
    object sds_nfCNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      ProviderFlags = []
      Size = 18
    end
    object sds_nfINSCCLI: TStringField
      FieldName = 'INSCCLI'
      ProviderFlags = []
      Size = 24
    end
    object sds_nfLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object sds_nfBAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      ProviderFlags = []
      Size = 30
    end
    object sds_nfCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object sds_nfCIDADECLI: TStringField
      FieldName = 'CIDADECLI'
      ProviderFlags = []
      Size = 40
    end
    object sds_nfUFCLI: TStringField
      FieldName = 'UFCLI'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sds_nfCEPCLI: TStringField
      FieldName = 'CEPCLI'
      ProviderFlags = []
      Size = 10
    end
    object sds_nfTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object sds_nfSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nfIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object sds_nfNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object sds_nfPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object sds_nfSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sds_nfVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object sds_nfIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object sds_nfVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object sds_nfID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object sds_nfSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object sds_nfPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object sds_nfNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object sds_nfPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object sds_nfVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object sds_nfVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object sds_nfCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sds_nfXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object sds_nfINDPAG: TIntegerField
      FieldName = 'INDPAG'
    end
    object sds_nfBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object sds_nfBASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object sds_nfBASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
    object sds_nfVLRTOT_TRIB: TFloatField
      FieldName = 'VLRTOT_TRIB'
    end
  end
  object DtSrc_NF1: TDataSource
    DataSet = cds_nf1
    OnStateChange = DtSrc_NF1StateChange
    Left = 529
    Top = 138
  end
  object cds_nf1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcodCompra'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_nf1'
    OnNewRecord = cds_nf1NewRecord
    Left = 529
    Top = 94
    object cds_nf1NUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_nf1NOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cds_nf1NATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object cds_nf1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cds_nf1MARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cds_nf1PESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cds_nf1PESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cds_nf1ESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object cds_nf1DTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cds_nf1DTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object cds_nf1UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cds_nf1CODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cds_nf1CODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cds_nf1NUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cds_nf1NOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cds_nf1HORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object cds_nf1DATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cds_nf1BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1BASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1OUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nf1CORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nf1CORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nf1CORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nf1CORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nf1CORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nf1CORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_nf1CFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_nf1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nf1FATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      EditMask = ',##0.00'
      Size = 300
    end
    object cds_nf1ICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nf1REDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
      ProviderFlags = []
    end
    object cds_nf1NOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_nf1PLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cds_nf1CNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nf1END_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_nf1CIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_nf1UF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nf1UF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nf1FRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nf1INSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nf1STATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nf1VLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nf1IMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nf1SERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nf1ID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nf1SELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nf1DESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 250
    end
    object cds_nf1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cds_nf1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 60
    end
    object cds_nf1CNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      ProviderFlags = []
      Size = 18
    end
    object cds_nf1INSCCLI: TStringField
      FieldName = 'INSCCLI'
      ProviderFlags = []
      Size = 24
    end
    object cds_nf1LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object cds_nf1BAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      ProviderFlags = []
      Size = 30
    end
    object cds_nf1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object cds_nf1CIDADECLI: TStringField
      FieldName = 'CIDADECLI'
      ProviderFlags = []
      Size = 40
    end
    object cds_nf1UFCLI: TStringField
      FieldName = 'UFCLI'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cds_nf1CEPCLI: TStringField
      FieldName = 'CEPCLI'
      ProviderFlags = []
      Size = 10
    end
    object cds_nf1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object cds_nf1VALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1II: TFloatField
      FieldName = 'II'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1BCII: TFloatField
      FieldName = 'BCII'
      DisplayFormat = ',##0.00'
    end
    object cds_nf1VALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cds_nf1VALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cds_nf1BASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object cds_nf1BASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object cds_nf1BASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
  end
  object dsp_nf1: TDataSetProvider
    DataSet = sds_nf1
    UpdateMode = upWhereKeyOnly
    Left = 529
    Top = 50
  end
  object sds_nf1: TSQLDataSet
    CommandText = 
      'select nf.*'#13#10'        , nat.CFNOME as DESCNATUREZA '#13#10'        , cl' +
      'i.NOMEFORNECEDOR as NOMECLIENTE '#13#10'        , cli.RAZAOSOCIAL'#13#10'   ' +
      '     , cli.CNPJ as cnpjcli'#13#10'        , cli.INSCESTADUAL as insccl' +
      'i'#13#10'        , ende.LOGRADOURO, ende.BAIRRO as bairrocli, ende.COM' +
      'PLEMENTO, ende.CIDADE as cidadecli, ende.UF as ufcli, ende.CEP a' +
      's cepcli, TELEFONE '#13#10'from NOTAFISCAL nf '#13#10'left outer join CFOP n' +
      'at ON nat.CFCOD = nf.CFOP '#13#10'left outer join FORNECEDOR cli on '#13#10 +
      'cli.CODFORNECEDOR=nf.CODCLIENTE '#13#10'left outer join ENDERECOFORNEC' +
      'EDOR ende on '#13#10'ende.CODFORNECEDOR=cli.CODFORNECEDOR '#13#10' where nf.' +
      'NUMNF = :pNF or nf.codvenda = :pcodCompra and (nf.NATUREZA = 20 ' +
      'or nf.NATUREZA = 21)'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcodCompra'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 529
    Top = 3
    object sds_nf1NUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_nf1NOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sds_nf1NATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_nf1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1MARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_nf1PESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nf1PESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nf1ESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1DTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1DTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1UF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nf1CODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1CODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1NUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1NOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1HORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1DATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1BASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1VALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1VALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1VALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1VALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1OUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1VALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sds_nf1CORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nf1CORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nf1CORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nf1CORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nf1CORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nf1CORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_nf1CFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_nf1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1FATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_nf1ICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1REDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
      ProviderFlags = []
    end
    object sds_nf1NOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_nf1PLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sds_nf1CNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1END_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_nf1CIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_nf1UF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nf1UF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nf1FRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nf1INSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1STATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nf1VLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1IMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nf1SERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1ID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nf1SELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nf1DESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 250
    end
    object sds_nf1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sds_nf1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 60
    end
    object sds_nf1CNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      ProviderFlags = []
      Size = 18
    end
    object sds_nf1INSCCLI: TStringField
      FieldName = 'INSCCLI'
      ProviderFlags = []
      Size = 24
    end
    object sds_nf1LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object sds_nf1BAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      ProviderFlags = []
      Size = 30
    end
    object sds_nf1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object sds_nf1CIDADECLI: TStringField
      FieldName = 'CIDADECLI'
      ProviderFlags = []
      Size = 40
    end
    object sds_nf1UFCLI: TStringField
      FieldName = 'UFCLI'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sds_nf1CEPCLI: TStringField
      FieldName = 'CEPCLI'
      ProviderFlags = []
      Size = 10
    end
    object sds_nf1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object sds_nf1VALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object sds_nf1II: TFloatField
      FieldName = 'II'
    end
    object sds_nf1BCII: TFloatField
      FieldName = 'BCII'
    end
    object sds_nf1VALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object sds_nf1VALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object sds_nf1BASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object sds_nf1BASE_PIS: TFloatField
      FieldName = 'BASE_PIS'
    end
    object sds_nf1BASE_COFINS: TFloatField
      FieldName = 'BASE_COFINS'
    end
  end
  object sds_compra: TSQLDataSet
    CommandText = 
      'select cp.*, cli.NOMEfornecedor, usu.NOMEUSUARIO from compra cp'#13 +
      #10'inner join fornecedor cli on cli.CODfornecedor=cp.CODfornecedor' +
      ' '#13#10'inner join USUARIO usu on usu.CODUSUARIO=cp.CODcompraDOR '#13#10'wh' +
      'ere CODcompra = :CODcompra or CODMOVIMENTO = :PCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODcompra'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 591
    Top = 4
    object sds_compraCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object sds_compraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sds_compraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sds_compraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object sds_compraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Required = True
    end
    object sds_compraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object sds_compraBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object sds_compraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
    end
    object sds_compraSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object sds_compraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object sds_compraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
    end
    object sds_compraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sds_compraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sds_compraSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sds_compraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sds_compraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object sds_compraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
    end
    object sds_compraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 1
    end
    object sds_compraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object sds_compraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object sds_compraCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object sds_compraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
    end
    object sds_compraAPAGAR: TFloatField
      FieldName = 'APAGAR'
    end
    object sds_compraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
    end
    object sds_compraENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object sds_compraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      Size = 30
    end
    object sds_compraSTATUS1: TStringField
      FieldName = 'STATUS1'
      FixedChar = True
      Size = 1
    end
    object sds_compraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sds_compraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sds_compraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sds_compraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object sds_compraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sds_compraCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object sds_compraPRAZO: TStringField
      FieldName = 'PRAZO'
      Size = 40
    end
    object sds_compraCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object sds_compraNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object sds_compraNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
  end
  object dsp_compra: TDataSetProvider
    DataSet = sds_compra
    UpdateMode = upWhereKeyOnly
    Left = 591
    Top = 52
  end
  object cds_compra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODcompra'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_compra'
    Left = 590
    Top = 94
    object cds_compraCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object cds_compraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cds_compraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cds_compraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
    end
    object cds_compraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Required = True
    end
    object cds_compraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cds_compraBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object cds_compraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
    end
    object cds_compraSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cds_compraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cds_compraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
    end
    object cds_compraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cds_compraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cds_compraSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cds_compraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cds_compraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object cds_compraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
    end
    object cds_compraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 1
    end
    object cds_compraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cds_compraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cds_compraCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cds_compraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
    end
    object cds_compraAPAGAR: TFloatField
      FieldName = 'APAGAR'
    end
    object cds_compraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
    end
    object cds_compraENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object cds_compraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      Size = 30
    end
    object cds_compraSTATUS1: TStringField
      FieldName = 'STATUS1'
      FixedChar = True
      Size = 1
    end
    object cds_compraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cds_compraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cds_compraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cds_compraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cds_compraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cds_compraCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cds_compraPRAZO: TStringField
      FieldName = 'PRAZO'
      Size = 40
    end
    object cds_compraCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object cds_compraNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object cds_compraNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Size = 30
    end
  end
  object DtSrc_Compra: TDataSource
    DataSet = cds_compra
    Left = 593
    Top = 138
  end
  object sds: TSQLDataSet
    CommandText = 
      'select  prod.CODPRODUTO'#13#10'         , prod.COD_BARRA '#13#10'         , ' +
      'prod.PRODUTO'#13#10'         , prod.UNIDADEMEDIDA'#13#10'         , prod.QTD' +
      'E_PCT'#13#10'         , prod.ICMS'#13#10'         , prod.CODALMOXARIFADO'#13#10'  ' +
      '       , prod.CONTA_DESPESA'#13#10'         , ccus.ALMOXARIFADO'#13#10'     ' +
      '    , prod.VALORUNITARIOATUAL'#13#10'         , prod.VALOR_PRAZO'#13#10'    ' +
      '     , prod.COD_COMISSAO'#13#10'         , prod.RATEIO'#13#10'         , pro' +
      'd.TIPO  '#13#10'         , prod.LOCALIZACAO '#13#10'         , prod.ESTOQUEA' +
      'TUAL   '#13#10'from PRODUTOS prod '#13#10'left outer join ALMOXARIFADO ccus ' +
      #13#10'on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO '#13#10'where CODPROD' +
      'UTO = :CODP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODP'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 91
    Top = 193
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 91
    Top = 237
  end
  object scds_produto_proc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODP'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 91
    Top = 280
    object scds_produto_procCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object scds_produto_procPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produto_procUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object scds_produto_procQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object scds_produto_procICMS: TFloatField
      FieldName = 'ICMS'
    end
    object scds_produto_procCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object scds_produto_procCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object scds_produto_procALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
    object scds_produto_procVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object scds_produto_procVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object scds_produto_procCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object scds_produto_procRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object scds_produto_procTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object scds_produto_procLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 5
    end
    object scds_produto_procESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
  end
  object s_2: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME from PLANO where plnCtaRoot(CONTA) = ' +
      ':PCONTADESPESA AND CONSOLIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 167
    Top = 192
    object s_2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_2CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 168
    Top = 240
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
    Left = 170
    Top = 281
    object cds_ccustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ccustoCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_ccustoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object cMatPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dMatPrima'
    Left = 15
    Top = 280
    object cMatPrimaCODMAT: TIntegerField
      FieldName = 'CODMAT'
      Required = True
    end
    object cMatPrimaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cMatPrimaCODPRODMP: TIntegerField
      FieldName = 'CODPRODMP'
    end
    object cMatPrimaQTDEUSADA: TFloatField
      FieldName = 'QTDEUSADA'
    end
    object cMatPrimaTIPOUSO: TStringField
      FieldName = 'TIPOUSO'
      Size = 30
    end
    object cMatPrimaUSAPRECO: TStringField
      FieldName = 'USAPRECO'
    end
    object cMatPrimaESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object cMatPrimaCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cMatPrimaUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cMatPrimaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cMatPrimaPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
  end
  object dMatPrima: TDataSetProvider
    DataSet = sMatPrima
    Left = 15
    Top = 237
  end
  object sMatPrima: TSQLDataSet
    CommandText = 
      'select mp.CODMAT, mp.CODPRODUTO, mp.CODPRODMP, mp.QTDEUSADA, mp.' +
      'TIPOUSO, mp.USAPRECO, prod.ESTOQUEATUAL ,prod.CODPRO, prod.UNIDA' +
      'DEMEDIDA, prod.PRODUTO, prod.PRECOMEDIO  '#13#10'from MATERIA_PRIMA mp' +
      ', PRODUTOS prod '#13#10'where prod.codProduto = mp.codprodmp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 15
    Top = 193
    object sMatPrimaCODMAT: TIntegerField
      FieldName = 'CODMAT'
      Required = True
    end
    object sMatPrimaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sMatPrimaCODPRODMP: TIntegerField
      FieldName = 'CODPRODMP'
    end
    object sMatPrimaQTDEUSADA: TFloatField
      FieldName = 'QTDEUSADA'
    end
    object sMatPrimaTIPOUSO: TStringField
      FieldName = 'TIPOUSO'
      Size = 30
    end
    object sMatPrimaUSAPRECO: TStringField
      FieldName = 'USAPRECO'
    end
    object sMatPrimaESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object sMatPrimaCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sMatPrimaUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object sMatPrimaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object sMatPrimaPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
  end
  object ds_Cr: TDataSource
    DataSet = scdsCr_proc
    Left = 248
    Top = 318
  end
  object scdsCr_proc: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 248
    Top = 272
    object scdsCr_procTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object scdsCr_procEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procSTATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 16
    end
    object scdsCr_procVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object scdsCr_procN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object scdsCr_procVALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = []
      DisplayFormat = ',#0.00'
    end
    object scdsCr_procCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scdsCr_procDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object scdsCr_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scdsCr_procTIT: TStringField
      FieldName = 'TIT'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object scdsCr_procSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object scdsCr_procDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procTRecebido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TRecebido'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'SUM(VALORRECEBIDO)'
    end
    object scdsCr_procTotal_resto: TAggregateField
      Alignment = taRightJustify
      FieldName = 'Total_resto'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_PRIM_VIA-VALORRECEBIDO)'
    end
    object scdsCr_procTotalTitulo: TAggregateField
      FieldName = 'TotalTitulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_PRIM_VIA)'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 232
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select rec.CODCLIENTE, rec.CODRECEBIMENTO, rec.TITULO, rec.VIA, ' +
      'rec.DATAVENCIMENTO, rec.VALORTITULO, rec.DP, '#13#10'CASE rec.STATUS W' +
      'HEN '#39'5-'#39' then '#39'Pendente'#39' when '#39'7-'#39' then '#39'Recebido'#39' when '#39'8-'#39' the' +
      'n '#39'Credito Duvidoso'#39' end  as STATUS, rec.VALORRECEBIDO, rec.VALO' +
      'R_RESTO, rec.VALOR_PRIM_VIA, rec.N_DOCUMENTO, rec.CAIXA, cli.NOM' +
      'ECLIENTE, (CASE WHEN (REC.VALORRECEBIDO > 0) THEN (REC.VALORTITU' +
      'LO - rec.VALOR_RESTO)'#13#10'  WHEN (REC.VALORRECEBIDO = 0) THEN rec.V' +
      'ALOR_RESTO END)'#13#10' as VALORREC, rec.EMISSAO, (udf_digits(rec.TITU' +
      'LO) || '#39'/'#39' || rec.VIA) as TIT, rec.STATUS as SITUACAO, rec.DATAC' +
      'ONSOLIDA, rec.PARCELAS, DATARECEBIMENTO  '#13#10' from RECEBIMENTO rec' +
      ' '#13#10' inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE '#13#10' ' +
      'where CODVENDA = :pcod order by rec.CODRECEBIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 248
    Top = 192
    object SQLDataSet1TITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object SQLDataSet1DATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1CAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1STATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 16
    end
    object SQLDataSet1VIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1N_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = []
    end
    object SQLDataSet1CODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 50
    end
    object SQLDataSet1DP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1EMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1VALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object SQLDataSet1TIT: TStringField
      FieldName = 'TIT'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object SQLDataSet1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1DATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1PARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1DATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
  end
  object DtSrc_cli: TDataSource
    DataSet = cds_cli
    Left = 320
    Top = 319
  end
  object cds_cli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cli'
    OnNewRecord = cds_cliNewRecord
    Left = 320
    Top = 272
    object cds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000000'
    end
    object cds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object cds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cds_cliPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dsp_cli: TDataSetProvider
    DataSet = sds_cli
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 232
  end
  object sds_cli: TSQLDataSet
    CommandText = 
      'select cli.*'#13#10'        , banc.BANCO'#13#10'        , usu.NOMEUSUARIO '#13#10 +
      'from CLIENTES cli '#13#10'left outer join BANCO banc on banc.CODBANCO=' +
      'cli.CODBANCO '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = c' +
      'li.CODUSUARIO '#13#10'where CODCLIENTE=:pCODCLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 320
    Top = 192
    object sds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object sds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object sds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DtSrcE: TDataSource
    DataSet = cdsEnderecoCli
    Left = 392
    Top = 319
  end
  object cdsEnderecoCli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    ProviderName = 'dspEnderecoCli'
    Left = 389
    Top = 272
    object cdsEnderecoCliCODENDERECO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEnderecoCliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoCliLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEnderecoCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCliCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEnderecoCliUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEnderecoCliCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsEnderecoCliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCliRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEnderecoCliTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoCliDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsEnderecoCliDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoCliDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsEnderecoCliDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsEnderecoCliDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
  end
  object dspEnderecoCli: TDataSetProvider
    DataSet = sdsEnderecoCli
    UpdateMode = upWhereKeyOnly
    Left = 389
    Top = 232
  end
  object sdsEnderecoCli: TSQLDataSet
    CommandText = 
      'select * from ENDERECOCLIENTE where CODENDERECO = :PEND or CODCL' +
      'IENTE = :pCli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 389
    Top = 192
    object sdsEnderecoCliCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsEnderecoCliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoCliLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsEnderecoCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCliCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsEnderecoCliUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsEnderecoCliCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsEnderecoCliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCliRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsEnderecoCliTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoCliDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsEnderecoCliDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoCliDDD2: TStringField
      FieldName = 'DDD2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoCliDDD3: TStringField
      FieldName = 'DDD3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoCliDDD1: TStringField
      FieldName = 'DDD1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DtSrcReg: TDataSource
    DataSet = cdsRegiao
    Left = 458
    Top = 321
  end
  object cdsRegiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dRegiao'
    Left = 456
    Top = 277
    object cdsRegiaoCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegiaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsRegiaoUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRegiaoCODIGOS: TStringField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRegiaoOUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dRegiao: TDataSetProvider
    DataSet = sRegiao
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 235
  end
  object sRegiao: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS '#13#10'where USO = '#39'regiao'#39' '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 455
    Top = 193
    object SQLDataSet1CODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQLDataSet1USO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1CODIGOS: TStringField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SQLDataSet1OUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object cds_fornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_fornecedor'
    Left = 101
    Top = 430
    object cds_fornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000000'
    end
    object cds_fornecedorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cds_fornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cds_fornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cds_fornecedorTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cds_fornecedorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cds_fornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cds_fornecedorINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cds_fornecedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cds_fornecedorSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cds_fornecedorREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cds_fornecedorLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cds_fornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cds_fornecedorCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_fornecedorSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_fornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cds_fornecedorPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
    object cds_fornecedorPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cds_fornecedorCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      Size = 15
    end
  end
  object dsp_fornecedor: TDataSetProvider
    DataSet = sds_fornecedor
    UpdateMode = upWhereKeyOnly
    Left = 101
    Top = 385
  end
  object sds_fornecedor: TSQLDataSet
    CommandText = 'select * from  FORNECEDOR where CODFORNECEDOR = :pFORN'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 101
    Top = 342
    object sds_fornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_fornecedorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object sds_fornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sds_fornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sds_fornecedorTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sds_fornecedorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sds_fornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sds_fornecedorINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sds_fornecedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sds_fornecedorSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sds_fornecedorREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sds_fornecedorLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sds_fornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sds_fornecedorCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sds_fornecedorSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sds_fornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sds_fornecedorPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
    object sds_fornecedorPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sds_fornecedorCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DtsrcEndFor: TDataSource
    DataSet = cds_endfor
    Left = 21
    Top = 470
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
    Left = 22
    Top = 430
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
  object dsp_endfor: TDataSetProvider
    DataSet = sds_endfor
    UpdateMode = upWhereKeyOnly
    Left = 22
    Top = 385
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
    Left = 22
    Top = 342
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
  object DtsrcFor: TDataSource
    DataSet = cds_fornecedor
    Left = 100
    Top = 473
  end
  object listaCliente: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.CNP' +
      'J, cli.INSCESTADUAL, cli.PRAZORECEBIMENTO, cli.COD_TRANPORTADORA' +
      ' '#13#10', ende.LOGRADOURO, ende.BAIRRO, ende.COMPLEMENTO, ende.CIDADE' +
      ', ende.UF, ende.CEP, ende.TELEFONE, cli.TIPOFIRMA'#13#10'from CLIENTES' +
      ' cli '#13#10'left outer join ENDERECOCLIENTE ende on ende.CODCLIENTE =' +
      ' cli.CODCLIENTE '#13#10'where ende.TIPOEND = 0'#13#10' order by cli.RAZAOSOC' +
      'IAL '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 584
    Top = 392
    object listaClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object listaClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object listaClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object listaClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Visible = False
      Size = 18
    end
    object listaClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = []
      Visible = False
      Size = 24
    end
    object listaClienteLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object listaClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object listaClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object listaClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object listaClienteUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 2
    end
    object listaClienteCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object listaClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Visible = False
      Size = 9
    end
    object listaClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object listaClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object listaClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
  end
  object listaFornecedor: TSQLDataSet
    CommandText = 
      'select f.CODFORNECEDOR, '#13#10'           f.RAZAOSOCIAL,  '#13#10'         ' +
      '  f.CNPJ, '#13#10'           f.INSCESTADUAL, '#13#10'           f.PRAZOPAGAM' +
      'ENTO, '#13#10'           ende.LOGRADOURO, '#13#10'           ende.BAIRRO, '#13#10 +
      '           ende.COMPLEMENTO, '#13#10'           ende.CIDADE, '#13#10'       ' +
      '    ende.UF, '#13#10'           ende.CEP, '#13#10'           ende.TELEFONE '#13 +
      #10'from FORNECEDOR f '#13#10'left outer join ENDERECOFORNECEDOR ende on ' +
      'ende.CODFORNECEDOR = f.CODFORNECEDOR  '#13#10'where ende.TIPOEND = 0'#13#10 +
      ' order by f.RAZAOSOCIAL '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 576
    Top = 456
    object listaFornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object listaFornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object listaFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object listaFornecedorINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object listaFornecedorPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
    object listaFornecedorLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object listaFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object listaFornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object listaFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object listaFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object listaFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object listaFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
  end
  object listaCFOP: TSQLDataSet
    CommandText = 
      'select DISTINCT c.CFCOD, c.CFNOME from CFOP c'#13#10'inner JOIN ESTADO' +
      '_ICMS ei on ei.CFOP = c.CFCOD'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 384
    object listaCFOPCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 30
    end
    object listaCFOPCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end>
    Left = 255
    Top = 375
    object StringField1: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object StringField2: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object DateField1: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object DateField2: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField4: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object StringField5: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = []
      Size = 50
    end
    object StringField6: TStringField
      DisplayWidth = 16
      FieldName = 'PLACATRANSP'
      ProviderFlags = []
      Size = 16
    end
    object StringField7: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
    end
    object StringField8: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = []
      Size = 80
    end
    object StringField9: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = []
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object StringField12: TStringField
      FieldName = 'FRETE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = []
    end
    object StringField14: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField15: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object IntegerField4: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object TimeField1: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField2: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField4: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField5: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField7: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField9: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField11: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object StringField16: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField17: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField18: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField19: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField20: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField21: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField22: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object StringField23: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object BCDField1: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object BCDField2: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object StringField24: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
  end
  object ds: TDataSource
    DataSet = cdsNotaFiscal
    Left = 256
    Top = 432
  end
  object dtSrcCompra: TDataSource
    DataSet = cdsCompra
    OnStateChange = dtSrcCompraStateChange
    Left = 586
    Top = 334
  end
  object sdsCompra: TSQLDataSet
    CommandText = 
      'select comp.*, '#13#10'          forn.NOMEFORNECEDOR, '#13#10'          usu.' +
      'NOMEUSUARIO  '#13#10'from COMPRA comp '#13#10'left outer join FORNECEDOR for' +
      'n on forn.CODFORNECEDOR = comp.CODFORNECEDOR '#13#10'left outer join U' +
      'SUARIO usu on usu.CODUSUARIO = comp.CODCOMPRADOR '#13#10'where (comp.C' +
      'ODCOMPRA = :CODCOMPRA) or (comp.CODMOVIMENTO = :PCODMOV)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 586
    Top = 193
    object sdsCompraCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCompraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCompraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCompraSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsCompraNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sdsCompraNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspCompra: TDataSetProvider
    DataSet = sdsCompra
    UpdateMode = upWhereKeyOnly
    Left = 586
    Top = 241
  end
  object cdsCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCOMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompra'
    Left = 585
    Top = 287
    object cdsCompraCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsCompraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsCompraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCompraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCompraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompraENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsCompraSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsCompraNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsCompraNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
  end
  object sds_cp: TSQLDataSet
    CommandText = 
      'select pag.*, '#13#10'  CASE pag.STATUS WHEN '#39'5-'#39' then '#39'Pendente'#39' when' +
      ' '#39'7-'#39' then '#39'Pago'#39' when '#39'8-'#39' then '#39'Credito Duvidoso'#39' end  as STAT' +
      'USpag, '#13#10'forn.NOMEFORNECEDOR, ( VALOR_RESTO - VALORRECEBIDO) as ' +
      'VALORPAG  from PAGAMENTO pag '#13#10'inner join FORNECEDOR forn on for' +
      'n.CODFORNECEDOR=pag.CODFORNECEDOR '#13#10'where CODCOMPRA=:pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 176
    Top = 341
    object SQLDataSet1CODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField25: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object DateField3: TDateField
      FieldName = 'EMISSAO'
    end
    object SQLDataSet1CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object DateField4: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object SQLDataSet1DATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object SmallintField2: TSmallintField
      FieldName = 'CAIXA'
    end
    object SQLDataSet1CONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object SQLDataSet1CONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object StringField26: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField27: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1FORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1DATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object SQLDataSet1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object SQLDataSet1CODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object SQLDataSet1CODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object SQLDataSet1CODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
    end
    object SQLDataSet1CODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object StringField28: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object SQLDataSet1DATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object FloatField12: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object SQLDataSet1JUROS: TFloatField
      FieldName = 'JUROS'
    end
    object SQLDataSet1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object SQLDataSet1PERDA: TFloatField
      FieldName = 'PERDA'
    end
    object SQLDataSet1TROCA: TFloatField
      FieldName = 'TROCA'
    end
    object SQLDataSet1FUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object FloatField13: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object FloatField14: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object FloatField15: TFloatField
      FieldName = 'VALORTITULO'
    end
    object SQLDataSet1OUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object SQLDataSet1OUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object SQLDataSet1NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object SQLDataSet1VALORPAG: TFloatField
      FieldName = 'VALORPAG'
      ProviderFlags = []
    end
    object sds_cpSTATUSPAG: TStringField
      FieldName = 'STATUSPAG'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
  end
  object dsp_cp: TDataSetProvider
    DataSet = sds_cp
    UpdateMode = upWhereKeyOnly
    Left = 175
    Top = 390
  end
  object cds_cp: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cp'
    Left = 176
    Top = 437
    object scdsCr_procCODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField29: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object DateField5: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object DateField6: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField3: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField30: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField31: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object scdsCr_procFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object scdsCr_procDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object scdsCr_procCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField32: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField16: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procDESCONTO: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procPERDA: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procTROCA: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procFUNRURAL: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField17: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField18: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField19: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object scdsCr_procVALORPAG: TFloatField
      FieldName = 'VALORPAG'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_cpSTATUSPAG: TStringField
      FieldName = 'STATUSPAG'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object AggregateField1: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TRecebido'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'SUM(VALORRECEBIDO)'
    end
    object AggregateField2: TAggregateField
      Alignment = taRightJustify
      FieldName = 'Total_resto'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'sum(VALOR_PRIM_VIA-VALORRECEBIDO)'
    end
    object AggregateField3: TAggregateField
      FieldName = 'TotalTitulo'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'sum(VALOR_PRIM_VIA)'
    end
  end
  object ds_cp: TDataSource
    DataSet = cds_cp
    Left = 176
    Top = 484
  end
  object listaProduto: TSQLDataSet
    CommandText = 
      'select prod.CODPRODUTO'#13#10', prod.CODPRO'#13#10', prod.PRODUTO'#13#10', prod.UN' +
      'IDADEMEDIDA'#13#10', prod.QTDE_PCT'#13#10', prod.ICMS'#13#10', prod.CODALMOXARIFAD' +
      'O'#13#10', prod.CONTA_DESPESA'#13#10', ccus.ALMOXARIFADO'#13#10', prod.VALORUNITAR' +
      'IOATUAL'#13#10', prod.VALOR_PRAZO'#13#10', prod.COD_COMISSAO'#13#10', prod.RATEIO'#13 +
      #10', prod.TIPO  '#13#10', prod.ESTOQUEATUAL '#13#10', prod.LOCALIZACAO'#13#10', prod' +
      '.LOTES  , prod.PRECOMEDIO, prod.PESO_QTDE'#13#10'from PRODUTOS prod '#13#10 +
      'left outer join ALMOXARIFADO ccus '#13#10'on ccus.CODALMOXARIFADO = pr' +
      'od.CODALMOXARIFADO  order by prod.PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 648
    Top = 441
    object listaProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object listaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object listaProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object listaProdutoUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object listaProdutoQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object listaProdutoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object listaProdutoVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object listaProdutoVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object listaProdutoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object listaProdutoRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object listaProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object listaProdutoESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object listaProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object listaProdutoLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object listaProdutoPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object listaProdutoPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object listaProdutoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object listaProdutoCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object listaProdutoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
  end
  object sdslistaTransp: TSQLDataSet
    CommandText = 'select * from TRANSPORTADORA order by nometransp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 353
    Top = 456
    object sdslistaTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object sdslistaTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdslistaTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdslistaTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdslistaTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdslistaTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdslistaTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdslistaTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdslistaTranspFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdslistaTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdslistaTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object sdslistaTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object sdslistaTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object sdslistaTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object sdslistaTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object sdslistaTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object sdslistaTranspFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdslistaTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
  end
  object sdsLoteRepetido: TSQLDataSet
    CommandText = 
      'select prod.codpro, count(movd.lote) from movimentodetalhe movd,' +
      ' produtos prod '#13#10' where prod.codproduto = movd.codproduto and mo' +
      'vd.codmovimento = :pcod'#13#10'group by prod.codpro Having Count(movd.' +
      'LOTE) > 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 486
    Top = 390
  end
  object scds1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 416
    Top = 392
  end
  object dspListaTransp: TDataSetProvider
    DataSet = sdslistaTransp
    Left = 424
    Top = 456
  end
  object listaTransp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaTransp'
    Left = 496
    Top = 456
    object listaTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object listaTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object listaTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object listaTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object listaTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object listaTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object listaTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object listaTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object listaTranspFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object listaTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object listaTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object listaTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object listaTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object listaTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object listaTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object listaTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object listaTranspFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object listaTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
  end
  object repdm: TVCLReport
    Filename = 'C:\home\sisAdmin\relatorio\nf_serv.rep'
    AsyncExecution = False
    Title = 'Untitled'
    Left = 749
    Top = 255
  end
  object sdsVeiculoCli: TSQLDataSet
    CommandText = 
      'select first 1 mov.codcliente, cli.nomecliente, cli.obs, cli.PRA' +
      'ZORECEBIMENTO from movimento mov, clientes cli '#13#10'where cli.codcl' +
      'iente = mov.codcliente and mov.cod_veiculo = :pcodvei order by c' +
      'odmovimento desc'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pcodvei'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 664
    Top = 286
  end
  object cdslotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PPROD'
        ParamType = ptInput
      end>
    ProviderName = 'dsplotes'
    Left = 512
    Top = 281
    object cdslotesCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdslotesLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object cdslotesCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslotesDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object cdslotesPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object cdslotesCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cdslotesPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object dsplotes: TDataSetProvider
    DataSet = sdslote
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 237
  end
  object sdslote: TSQLDataSet
    CommandText = 
      'SELECT lote.*, '#13#10'               prod.PRODUTO, '#13#10'               p' +
      'rod.CODPRO '#13#10'FROM LOTES lote, PRODUTOS prod '#13#10'WHERE prod.CODPROD' +
      'UTO = lote.CODPRODUTO '#13#10'AND (((lote.LOTE = :PLOTE) OR (:PLOTE = ' +
      #39'TODOSLOTESCADASTRADOS'#39')) and (lote.CODPRODUTO = :PPROD) AND (lo' +
      'te.ESTOQUE > 0.00099999999999999999)) order by lote.DATAFABRICAC' +
      'AO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PPROD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 512
    Top = 193
    object sdsloteCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsloteLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object sdsloteCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsloteDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdslotePRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object sdsloteCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sdslotePRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 518
    Top = 336
  end
  object sqlNumeroSerie: TSQLDataSet
    CommandText = 
      'SELECT max(cast(NOTASERIE as integer)) as NOTASERIE FROM NOTAFIS' +
      'CAL WHERE NOTASERIE = :NUM AND SERIE = :Serie'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 664
    Top = 240
  end
  object scds_usuario_proc: TSQLClientDataSet
    CommandText = 'select * from USUARIO'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Left = 669
    Top = 185
    object scds_usuario_procCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scds_usuario_procNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object scds_usuario_procSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object scds_usuario_procPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
  end
  object sds_calculo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 753
    Top = 187
  end
  object sds_estado: TSQLDataSet
    CommandText = 'select distinct UF from ESTADO_ICMS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 752
    Top = 143
  end
  object scds: TSQLClientDataSet
    CommandText = 'SELECT CFCOD, CFNOME FROM CFOP where CFCOD like :PCOD'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PCOD'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 669
    Top = 137
  end
  object procCFOP: TSQLClientDataSet
    CommandText = 'SELECT CFCOD, CFNOME FROM CFOP where CFCOD like :PCOD'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PCOD'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 669
    Top = 97
    object procCFOPCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 4
    end
    object procCFOPCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
  end
  object proc_end: TSQLDataSet
    CommandText = 
      'select count(CODENDERECO) from ENDERECOCLIENTE where CODCLIENTE ' +
      '= :pCli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 749
    Top = 90
    object proc_endCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
  object sqs_tit: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 752
    Top = 40
  end
  object scds_cli_proc: TSQLClientDataSet
    CommandText = 
      'select cli.CODCLIENTE, '#13#10'          cli.CODUSUARIO,'#13#10'          cl' +
      'i.NOMECLIENTE, '#13#10'          cli.RAZAOSOCIAL, '#13#10'          cli.CODB' +
      'ANCO, '#13#10'          cli.PRAZORECEBIMENTO, '#13#10'          cli.OBS,  '#13#10 +
      '          cli.SEGMENTO, '#13#10'          cli.STATUS, '#13#10'          usu.' +
      'NOMEUSUARIO, ende.UF , cli.CNPJ, ende.LOGRADOURO, cli.BLOQUEIO ,' +
      ' cli.desconto'#13#10'from CLIENTES cli '#13#10'left outer join USUARIO usu '#13 +
      #10'on usu.CODUSUARIO=cli.CODUSUARIO '#13#10'left outer join ENDERECOCLIE' +
      'NTE ende on ende.CODCLIENTE = cli.CODCLIENTE '#13#10'where  ((ende.TIP' +
      'OEND = 0) and (cli.STATUS = 1) and ((cli.NOMECLIENTE like :pCLIE' +
      'NTE) '#13#10'or (cli.RAZAOSOCIAL like :pRAZAO) '#13#10'or (cli.CODCLIENTE = ' +
      ':pCODCLIENTE))) '#13#10'order by cli.NOMECLIENTE '
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pRAZAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 669
    Top = 50
    object scds_cli_procCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scds_cli_procCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
      Visible = False
    end
    object scds_cli_procNOMECLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object scds_cli_procRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Visible = False
      Size = 50
    end
    object scds_cli_procCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      Visible = False
    end
    object scds_cli_procPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      Visible = False
    end
    object scds_cli_procOBS: TStringField
      FieldName = 'OBS'
      Visible = False
      Size = 200
    end
    object scds_cli_procSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
      Visible = False
    end
    object scds_cli_procSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
      Visible = False
    end
    object scds_cli_procNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Visible = False
      Size = 30
    end
    object scds_cli_procUF: TStringField
      FieldName = 'UF'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object scds_cli_procCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object scds_cli_procLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object scds_cli_procBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object scds_cli_procDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
  end
  object scds_serie_proc: TSQLClientDataSet
    CommandText = 
      'select CODSERIE, SERIE, ULTIMO_NUMERO, NOTAFISCAL from SERIES wh' +
      'ere SERIE like :pSERIE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pSERIE'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 669
    Top = 2
    object scds_serie_procCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object scds_serie_procSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object scds_serie_procULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object scds_serie_procNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
  end
  object scds_serienfe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ULTIMO_NUMERO NOTASERIE, ULTIMO_NUMERO NOTAFISCAL, SERIE ' +
        'from SERIES'
      'where SERIE = :SERIE')
    SQLConnection = DM.sqlsisAdimin
    Left = 768
    Top = 368
    object scds_serienfeNOTASERIE: TIntegerField
      FieldName = 'NOTASERIE'
      ReadOnly = True
      Required = True
    end
    object scds_serienfeNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ReadOnly = True
    end
    object scds_serienfeSERIE: TStringField
      FieldName = 'SERIE'
      ReadOnly = True
    end
  end
end
