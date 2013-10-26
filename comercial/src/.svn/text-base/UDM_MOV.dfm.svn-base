object DM_MOV: TDM_MOV
  OldCreateOrder = False
  Left = 90
  Top = 44
  Height = 530
  Width = 713
  object s_buscaMov: TSQLDataSet
    CommandText = 
      'select m.CODMOVIMENTO, c.NOMECLIENTE  '#13#10'from MOVIMENTO m '#13#10'inner' +
      ' join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE '#13#10'where ((m.CODC' +
      'LIENTE = :id_cli) or (:id_cli = 9999999))'#13#10'   and ((m.CODNATUREZ' +
      'A = :id_nat) or (:id_nat = 9999999))  '#13#10'   and ((m.STATUS = :st)' +
      ' or (:st = 999999))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'st'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 8
  end
  object s_movimento: TSQLDataSet
    CommandText = 
      'select mov.* '#13#10'          ,cli.NOMECLIENTE'#13#10'          ,usu.NOMEUS' +
      'UARIO  '#13#10'   from MOVIMENTO mov '#13#10'  inner join CLIENTES cli on cl' +
      'i.CODCLIENTE = mov.CODCLIENTE '#13#10'  inner join USUARIO usu on usu.' +
      'CODUSUARIO= mov.CODUSUARIO '#13#10'where mov.CODMOVIMENTO = :id_mov'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_mov'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 64
    object s_movimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object s_movimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_movimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object s_movimentoTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movimentoNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_movimentoNFE: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_movimentoPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object s_movimentoVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_movimentoUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoTPFRETE: TStringField
      FieldName = 'TPFRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movimentoCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoQTD: TIntegerField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object s_movimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object s_movimentoCODCOTACAO: TIntegerField
      FieldName = 'CODCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoUSUARIOLOGADO: TStringField
      FieldName = 'USUARIOLOGADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_movimentoTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movimentoENTREGA: TStringField
      FieldName = 'ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object p_movimento: TDataSetProvider
    DataSet = s_movimento
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 64
  end
  object c_movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_mov'
        ParamType = ptInput
      end>
    ProviderName = 'p_movimento'
    Left = 177
    Top = 64
    object c_movimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object c_movimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_movimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_movimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_movimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_movimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_movimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_movimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object c_movimentoTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_movimentoNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_movimentoNFE: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object c_movimentoPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object c_movimentoVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_movimentoUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoTPFRETE: TStringField
      FieldName = 'TPFRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_movimentoCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoQTD: TIntegerField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object c_movimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object c_movimentoCODCOTACAO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movimentoUSUARIOLOGADO: TStringField
      FieldName = 'USUARIOLOGADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_movimentoTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_movimentoENTREGA: TStringField
      FieldName = 'ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object p_movdet: TDataSetProvider
    DataSet = s_movdet
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 112
  end
  object c_movdet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id_mov'
        ParamType = ptInput
      end>
    ProviderName = 'p_movdet'
    OnCalcFields = c_movdetCalcFields
    Left = 176
    Top = 112
    object c_movdetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object c_movdetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_movdetCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.000'
      EditFormat = ',#0.000'
    end
    object c_movdetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object c_movdetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object c_movdetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_movdetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object c_movdetDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetVLRESTOQUE: TFloatField
      FieldName = 'VLRESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object c_movdetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object c_movdetPRECOULTIMACOMPRA: TFloatField
      FieldName = 'PRECOULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object c_movdetVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetPERIODOINI: TSQLTimeStampField
      FieldName = 'PERIODOINI'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetPERIODOFIM: TSQLTimeStampField
      FieldName = 'PERIODOFIM'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCODAUTORIZACAO: TIntegerField
      FieldName = 'CODAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_movdetPAGOUCOMISSAO: TStringField
      FieldName = 'PAGOUCOMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_movdetCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetPAGO: TStringField
      FieldName = 'PAGO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object c_movdetRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetPIPI: TFloatField
      FieldName = 'PIPI'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetVIPI: TFloatField
      FieldName = 'VIPI'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object c_movdetFRETE: TFloatField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object c_movdetVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object c_movdetCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_movdetvalortotal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'valortotal'
      DisplayFormat = ',#0.00'
      currency = True
    end
    object c_movdetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object c_movdetCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = []
    end
    object c_movdetIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object c_movdetPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
    object c_movdettotalpedido: TAggregateField
      FieldName = 'totalpedido'
      Active = True
      currency = True
      DisplayFormat = ',#0.00'
      Expression = 'SUM(valortotal)'
    end
  end
  object d_movimento: TDataSource
    DataSet = c_movimento
    Left = 245
    Top = 64
  end
  object d_movdet: TDataSource
    DataSet = c_movdet
    Left = 246
    Top = 112
  end
  object s_movdet: TSQLDataSet
    CommandText = 
      'select md.*,'#13#10'           pr.CODPRO,'#13#10'           pr.COD_BARRA,'#13#10' ' +
      '          pr.PRODUTO  '#13#10' from MOVIMENTODETALHE md '#13#10' left outer ' +
      'join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO '#13#10'where md.COD' +
      'MOVIMENTO = :id_mov'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_mov'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 112
    object s_movdetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object s_movdetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movdetCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.000'
      EditFormat = ',#0.000'
    end
    object s_movdetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object s_movdetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movdetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object s_movdetDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVLRESTOQUE: TFloatField
      FieldName = 'VLRESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_movdetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object s_movdetPRECOULTIMACOMPRA: TFloatField
      FieldName = 'PRECOULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object s_movdetVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetPERIODOINI: TSQLTimeStampField
      FieldName = 'PERIODOINI'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetPERIODOFIM: TSQLTimeStampField
      FieldName = 'PERIODOFIM'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCODAUTORIZACAO: TIntegerField
      FieldName = 'CODAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movdetPAGOUCOMISSAO: TStringField
      FieldName = 'PAGOUCOMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movdetCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetPAGO: TStringField
      FieldName = 'PAGO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object s_movdetRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetPIPI: TFloatField
      FieldName = 'PIPI'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVIPI: TFloatField
      FieldName = 'VIPI'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object s_movdetFRETE: TFloatField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object s_movdetVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object s_movdetCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object s_movdetCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = []
    end
    object s_movdetIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object s_movdetPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
  end
  object s_buscaProd: TSQLDataSet
    CommandText = 'select * from PRODUTOS '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 8
    object s_buscaProdCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object s_buscaProdFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_buscaProdCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_buscaProdMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_buscaProdUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object s_buscaProdDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_buscaProdCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_buscaProdBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object s_buscaProdPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object s_buscaProdCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_buscaProdCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_buscaProdCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_buscaProdCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_buscaProdRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_buscaProdCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_buscaProdQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_buscaProdDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object s_buscaProdFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object s_buscaProdLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_buscaProdUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object s_buscaProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s_buscaProdTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_buscaProdVALORMINOMO: TFloatField
      FieldName = 'VALORMINOMO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_buscaProdIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_buscaProdORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object s_buscaProdNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object s_buscaProdIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_buscaProdIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_buscaProdIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_buscaProdLEAD_TIME: TSmallintField
      FieldName = 'LEAD_TIME'
      ProviderFlags = [pfInUpdate]
    end
  end
  object s_Comanda: TSQLDataSet
    CommandText = 
      'select m.*'#13#10'          ,c.NOMECLIENTE  '#13#10'from MOVIMENTO m '#13#10'inner' +
      ' join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE '#13#10'where ((m.CODC' +
      'LIENTE = :id_cli) or (:id_cli = 9999999))'#13#10'   and ((m.CODNATUREZ' +
      'A = :id_nat) or (:id_nat = 9999999))  '#13#10'   and ((m.STATUS = :st)' +
      ' or (:st = 999999))'#13#10'   and ((m.CODMOVIMENTO = :idmov) or (:idmo' +
      'v = 9999999))  '#13#10'   and (m.TIPO_PEDIDO = '#39'C'#39')  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 160
    object IntegerField1: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DateField1: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SmallintField3: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SmallintField4: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField5: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField1: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object FloatField1: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField6: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField2: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField3: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField3: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object IntegerField7: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField8: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField9: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField10: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object StringField4: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object IntegerField11: TIntegerField
      FieldName = 'PRAZO_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object DateField2: TDateField
      FieldName = 'VAL_PROP'
      ProviderFlags = [pfInUpdate]
    end
    object StringField6: TStringField
      FieldName = 'FORMA_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object FloatField4: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object DateField3: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField7: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'USER_APROVA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField12: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object StringField9: TStringField
      FieldName = 'TPFRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object IntegerField13: TIntegerField
      FieldName = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField14: TIntegerField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object s_ComandaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object p_comanda: TDataSetProvider
    DataSet = s_Comanda
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 160
  end
  object c_comanda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end>
    ProviderName = 'p_comanda'
    Left = 177
    Top = 160
    object c_comandaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object c_comandaDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_comandaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_comandaCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_comandaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_comandaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_comandaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_comandaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object c_comandaTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_comandaNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_comandaNFE: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object c_comandaPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object c_comandaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_comandaUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaTPFRETE: TStringField
      FieldName = 'TPFRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_comandaCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaQTD: TIntegerField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object c_comandaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object d_comanda: TDataSource
    DataSet = c_comanda
    Left = 245
    Top = 160
  end
  object s_BuscaComanda: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, COD_CLI from CLIENTES '#13#10'where CO' +
      'D_CLI = :id '#13#10'   or NOMECLIENTE = :nome'#13#10'   and SEGMENTO = 2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 8
    object s_BuscaComandaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = []
    end
    object s_BuscaComandaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object s_BuscaComandaCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
  end
  object s_venda: TSQLDataSet
    CommandText = 
      'select ven.*'#13#10'         , cli.NOMECLIENTE'#13#10'         , usu.NOMEUSU' +
      'ARIO'#13#10' from VENDA ven'#13#10' inner join CLIENTES cli on cli.CODCLIENT' +
      'E = ven.CODCLIENTE '#13#10' inner join USUARIO usu on usu.CODUSUARIO= ' +
      'ven.CODVENDEDOR '#13#10' where ven.CODMOVIMENTO = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 280
    object s_vendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object s_vendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_vendaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_vendaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_vendaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object s_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaPRAZO: TStringField
      FieldName = 'PRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object s_vendaPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object s_vendaNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object s_vendaTROCO: TFloatField
      FieldName = 'TROCO'
      ProviderFlags = [pfInUpdate]
    end
    object s_vendaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object p_venda: TDataSetProvider
    DataSet = s_venda
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 280
  end
  object c_venda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'p_venda'
    Left = 176
    Top = 280
    object c_vendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object c_vendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_vendaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_vendaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object c_vendaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object c_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaPRAZO: TStringField
      FieldName = 'PRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object c_vendaPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object c_vendaNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object c_vendaTROCO: TFloatField
      FieldName = 'TROCO'
      ProviderFlags = [pfInUpdate]
    end
    object c_vendaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object d_venda: TDataSource
    DataSet = c_venda
    Left = 248
    Top = 280
  end
  object s_forma: TSQLDataSet
    CommandText = 
      'select e.COD_VENDA, e.ID_ENTRADA, e.CAIXA, e.N_DOC,           e.' +
      'FORMA_PGTO, e.VALOR_PAGO,'#13#10'          CASE e.FORMA_PGTO '#13#10'       ' +
      '                          WHEN '#39'0'#39' then '#39'DINHEIRO'#39' '#13#10'           ' +
      '                      WHEN '#39'1'#39' then '#39'CHEQUE'#39' '#13#10'                 ' +
      '                WHEN '#39'2'#39' then '#39'CHEQUE PRE'#39' '#13#10'                   ' +
      '              WHEN '#39'5'#39' then '#39'CART'#195'O DE CREDITO'#39' '#13#10'              ' +
      '                   WHEN '#39'6'#39' then '#39'CART'#195'O DE DEBITO'#39' '#13#10'          ' +
      '                       WHEN '#39'G'#39' then '#39'VALE'#39'                     ' +
      '             '#13#10'                                 WHEN '#39'H'#39' then '#39'O' +
      'UTROS'#39#13#10'                                end  as FORMA,'#13#10'        ' +
      '  p.nome '#13#10'  from FORMA_ENTRADA e'#13#10' left outer join plano p on p' +
      '.codigo = e.caixa '#13#10'where e.COD_VENDA = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 321
    object s_formaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_formaID_ENTRADA: TIntegerField
      FieldName = 'ID_ENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object s_formaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object s_formaN_DOC: TStringField
      FieldName = 'N_DOC'
      Size = 60
    end
    object s_formaFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_formaVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object s_formaFORMA: TStringField
      FieldName = 'FORMA'
      ReadOnly = True
      FixedChar = True
      Size = 17
    end
    object s_formaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 200
    end
  end
  object p_forma: TDataSetProvider
    DataSet = s_forma
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 321
  end
  object c_forma: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'p_forma'
    Left = 320
    Top = 320
    object c_formaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_formaID_ENTRADA: TIntegerField
      FieldName = 'ID_ENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object c_formaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object c_formaN_DOC: TStringField
      FieldName = 'N_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object c_formaFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_formaVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object c_formaFORMA: TStringField
      FieldName = 'FORMA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 17
    end
    object c_formaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 200
    end
    object c_formatotal: TAggregateField
      FieldName = 'total'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'SUM(VALOR_PAGO)'
    end
  end
  object s_delivery: TSQLDataSet
    CommandText = 
      'select m.*'#13#10'          ,c.NOMECLIENTE  '#13#10'from MOVIMENTO m '#13#10'inner' +
      ' join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE '#13#10'where ((m.CODC' +
      'LIENTE = :id_cli) or (:id_cli = 9999999))'#13#10'   and ((m.CODNATUREZ' +
      'A = :id_nat) or (:id_nat = 9999999))  '#13#10'   and ((m.STATUS = :st)' +
      ' or (:st = 999999))'#13#10'   and ((m.CODMOVIMENTO = :idmov) or (:idmo' +
      'v = 9999999))  '#13#10'   and (m.TIPO_PEDIDO = '#39'D'#39')  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 208
    object s_deliveryCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object s_deliveryDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_deliveryCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_deliveryCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_deliverySTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_deliveryCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_deliveryCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_deliveryOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object s_deliveryTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_deliveryNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_deliveryNFE: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_deliveryPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object s_deliveryVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_deliveryUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryTPFRETE: TStringField
      FieldName = 'TPFRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_deliveryCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryQTD: TIntegerField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryCODCOTACAO: TIntegerField
      FieldName = 'CODCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_deliveryUSUARIOLOGADO: TStringField
      FieldName = 'USUARIOLOGADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_deliveryTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_deliveryNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object s_deliveryENTREGA: TStringField
      FieldName = 'ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object p_delivery: TDataSetProvider
    DataSet = s_delivery
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 208
  end
  object c_Delivery: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'id_nat'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'st'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idmov'
        ParamType = ptInput
      end>
    ProviderName = 'p_delivery'
    Left = 177
    Top = 208
    object c_DeliveryCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object c_DeliveryDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_DeliveryCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_DeliveryCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_DeliverySTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_DeliveryCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object c_DeliveryCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_DeliveryOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object c_DeliveryTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_DeliveryNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_DeliveryNFE: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object c_DeliveryPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object c_DeliveryVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_DeliveryUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryTPFRETE: TStringField
      FieldName = 'TPFRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_DeliveryCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryQTD: TIntegerField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryCODCOTACAO: TIntegerField
      FieldName = 'CODCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object c_DeliveryUSUARIOLOGADO: TStringField
      FieldName = 'USUARIOLOGADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_DeliveryTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object c_DeliveryNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object c_DeliveryENTREGA: TStringField
      FieldName = 'ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object d_delivery: TDataSource
    DataSet = c_Delivery
    Left = 245
    Top = 208
  end
  object IMP_MOVDET: TSQLDataSet
    CommandText = 
      'select md.*,'#13#10'           pr.CODPRO,'#13#10'           pr.COD_BARRA,'#13#10' ' +
      '          pr.PRODUTO  '#13#10' from MOVIMENTODETALHE md '#13#10' left outer ' +
      'join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO '#13#10'where md.COD' +
      'MOVIMENTO = :id_mov '#13#10'   and pr.IMPRESSORA_2 = '#39'SIM'#39#13#10'   and md.' +
      'IMPRESSO is null'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_mov'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 344
    object IMP_MOVDETCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object IMP_MOVDETCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object IMP_MOVDETCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object IMP_MOVDETCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object IMP_MOVDETCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object IMP_MOVDETQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object IMP_MOVDETPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object IMP_MOVDETICMS: TFloatField
      FieldName = 'ICMS'
    end
    object IMP_MOVDETUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object IMP_MOVDETQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object IMP_MOVDETBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object IMP_MOVDETVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object IMP_MOVDETCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object IMP_MOVDETLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object IMP_MOVDETDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object IMP_MOVDETDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object IMP_MOVDETPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object IMP_MOVDETVLRESTOQUE: TFloatField
      FieldName = 'VLRESTOQUE'
    end
    object IMP_MOVDETQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
    end
    object IMP_MOVDETNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object IMP_MOVDETDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object IMP_MOVDETPRECOULTIMACOMPRA: TFloatField
      FieldName = 'PRECOULTIMACOMPRA'
    end
    object IMP_MOVDETCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object IMP_MOVDETVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object IMP_MOVDETVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object IMP_MOVDETPERIODOINI: TSQLTimeStampField
      FieldName = 'PERIODOINI'
    end
    object IMP_MOVDETPERIODOFIM: TSQLTimeStampField
      FieldName = 'PERIODOFIM'
    end
    object IMP_MOVDETCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object IMP_MOVDETCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
    end
    object IMP_MOVDETCODAUTORIZACAO: TIntegerField
      FieldName = 'CODAUTORIZACAO'
    end
    object IMP_MOVDETSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object IMP_MOVDETPAGOUCOMISSAO: TStringField
      FieldName = 'PAGOUCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object IMP_MOVDETCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
    end
    object IMP_MOVDETVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
    end
    object IMP_MOVDETPAGO: TStringField
      FieldName = 'PAGO'
      FixedChar = True
      Size = 3
    end
    object IMP_MOVDETRATEIO: TFloatField
      FieldName = 'RATEIO'
    end
    object IMP_MOVDETPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
    end
    object IMP_MOVDETICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object IMP_MOVDETICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object IMP_MOVDETVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object IMP_MOVDETPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object IMP_MOVDETVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object IMP_MOVDETCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object IMP_MOVDETFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object IMP_MOVDETBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object IMP_MOVDETBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object IMP_MOVDETICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object IMP_MOVDETCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object IMP_MOVDETVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object IMP_MOVDETSTFRETE: TFloatField
      FieldName = 'STFRETE'
    end
    object IMP_MOVDETRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object IMP_MOVDETVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object IMP_MOVDETVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object IMP_MOVDETOBS: TStringField
      FieldName = 'OBS'
      Size = 300
    end
    object IMP_MOVDETCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
    end
    object IMP_MOVDETCODSOLICITACAO: TIntegerField
      FieldName = 'CODSOLICITACAO'
    end
    object IMP_MOVDETVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object IMP_MOVDETVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object IMP_MOVDETBCII: TFloatField
      FieldName = 'BCII'
    end
    object IMP_MOVDETII: TFloatField
      FieldName = 'II'
    end
    object IMP_MOVDETCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object IMP_MOVDETCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object IMP_MOVDETIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 3
    end
    object IMP_MOVDETPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
  end
  object S_CAIXA: TSQLDataSet
    CommandText = 'SELECT a.CODIGO, a.CONTA '#13#10'FROM PLANO a '#13#10'WHERE A.NOME = :NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 336
    Top = 240
    object S_CAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object S_CAIXACONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
  end
  object s_parametro: TSQLDataSet
    CommandText = 'select * from PARAMETRO '#13#10'where PARAMETRO = :pr'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pr'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 332
    Top = 168
    object s_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object s_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 40
    end
    object s_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object s_parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object s_parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object s_parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object s_parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object s_parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object s_parametroD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object s_parametroD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object s_parametroD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object s_parametroD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object s_parametroD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object s_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
    object s_parametroVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object sPlano1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlano1'
    Left = 124
    Top = 408
    object sPlano1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sPlano1CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object sPlano1CONTAPAI: TStringField
      FieldName = 'CONTAPAI'
      Size = 10
    end
    object sPlano1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object sPlano1CONSOLIDA: TStringField
      FieldName = 'CONSOLIDA'
      FixedChar = True
      Size = 1
    end
    object sPlano1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sPlano1RATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object sPlano1CODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 15
    end
    object sPlano1REDUZRECEITA: TStringField
      FieldName = 'REDUZRECEITA'
      FixedChar = True
      Size = 1
    end
  end
  object dspPlano1: TDataSetProvider
    DataSet = sdsPlano1
    Left = 78
    Top = 408
  end
  object sdsPlano1: TSQLDataSet
    CommandText = 'select * from PLANO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 408
    object sdsPlano1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPlano1CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object sdsPlano1CONTAPAI: TStringField
      FieldName = 'CONTAPAI'
      Size = 10
    end
    object sdsPlano1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object sdsPlano1CONSOLIDA: TStringField
      FieldName = 'CONSOLIDA'
      FixedChar = True
      Size = 1
    end
    object sdsPlano1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsPlano1RATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object sdsPlano1CODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 15
    end
    object sdsPlano1REDUZRECEITA: TStringField
      FieldName = 'REDUZRECEITA'
      FixedChar = True
      Size = 1
    end
  end
end
