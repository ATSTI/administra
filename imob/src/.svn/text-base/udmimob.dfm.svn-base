object dmimob: Tdmimob
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 399
  Width = 553
  object sFornecedor: TSQLDataSet
    Params = <>
    Left = 40
    Top = 48
  end
  object dFornecedor: TDataSetProvider
    Left = 112
    Top = 48
  end
  object cFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 48
  end
  object sClientes: TSQLDataSet
    CommandText = 
      'select  CODCLIENTE'#13#10'         , NOMECLIENTE'#13#10'         , RAZAOSOCI' +
      'AL'#13#10'         , CONTATO'#13#10'         , TIPOFIRMA'#13#10'         , CNPJ'#13#10' ' +
      '        , INSCESTADUAL'#13#10'         , SEGMENTO'#13#10'         , DATACADA' +
      'STRO'#13#10'         , STATUS'#13#10'         , PRAZORECEBIMENTO as DIAPGTO'#13 +
      #10'         , CODBANCO'#13#10'         , DATANASC'#13#10'         , CONTA_CLIE' +
      'NTE'#13#10'         , OBS'#13#10'         , TEM_IE'#13#10'         , NOMEMAE'#13#10'    ' +
      '     , SEXO'#13#10'         , GRUPO_CLIENTE as TIPOCLI'#13#10'         , RGM' +
      'AE'#13#10'         , CPFMAE'#13#10'         , PAI'#13#10'         , RGPAI'#13#10'       ' +
      '  , CPFPAI'#13#10'         , CIDADENASC'#13#10'         , UFNASC'#13#10'         ,' +
      ' NACIONALIDADE'#13#10'         , LOCALTRABPAI'#13#10'         , LOCALTRABMAE' +
      #13#10'         , TELTRABPAI'#13#10'         , TELTRABMAE'#13#10'         , LOCAL' +
      'TRABALUNO as TRABALHOCLIENTE'#13#10'         , TELTRABALUNO as TELTRAB' +
      'ALHOCLIENTE'#13#10'         , DIVERSO1'#13#10'         , DIVERSO2'#13#10'         ' +
      ', DATAEMISSAORG'#13#10'         , ESTADORG'#13#10'         , FONEMAE'#13#10'      ' +
      '   , CELULARMAE'#13#10'         , FONEPAI'#13#10'         , CELULARPAI'#13#10'    ' +
      '     , FOTO       '#13#10'from CLIENTES '#13#10'where ((CODCLIENTE = :id) or' +
      ' (:id = 9999999)) '#13#10'and GRUPO_CLIENTE = :tp'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tp'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 96
    object sClientesCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sClientesNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sClientesRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClientesTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sClientesINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sClientesSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sClientesDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sClientesSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sClientesDIAPGTO: TSmallintField
      FieldName = 'DIAPGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sClientesCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sClientesDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sClientesCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sClientesTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClientesNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sClientesSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClientesTIPOCLI: TStringField
      FieldName = 'TIPOCLI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClientesRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sClientesPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClientesRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sClientesCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClientesUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sClientesNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClientesLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClientesTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesTRABALHOCLIENTE: TStringField
      FieldName = 'TRABALHOCLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClientesTELTRABALHOCLIENTE: TStringField
      FieldName = 'TELTRABALHOCLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClientesDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClientesDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object sClientesESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sClientesFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClientesFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
  end
  object dClientes: TDataSetProvider
    DataSet = sClientes
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 96
  end
  object cClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tp'
        ParamType = ptInput
      end>
    ProviderName = 'dClientes'
    Left = 184
    Top = 96
    object cClientesCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cClientesNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cClientesRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cClientesTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cClientesINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cClientesSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cClientesDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cClientesSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cClientesDIAPGTO: TSmallintField
      FieldName = 'DIAPGTO'
    end
    object cClientesCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cClientesDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cClientesCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cClientesOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cClientesTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cClientesNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cClientesSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cClientesTIPOCLI: TStringField
      FieldName = 'TIPOCLI'
      Size = 30
    end
    object cClientesRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object cClientesCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object cClientesPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cClientesRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object cClientesCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object cClientesCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object cClientesUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cClientesNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object cClientesLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object cClientesLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object cClientesTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object cClientesTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object cClientesTRABALHOCLIENTE: TStringField
      FieldName = 'TRABALHOCLIENTE'
      Size = 30
    end
    object cClientesTELTRABALHOCLIENTE: TStringField
      FieldName = 'TELTRABALHOCLIENTE'
      Size = 15
    end
    object cClientesDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object cClientesDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object cClientesDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cClientesESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cClientesFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object cClientesCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object cClientesFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object cClientesCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object cClientesFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
  end
  object SQLDataSet2: TSQLDataSet
    Params = <>
    Left = 40
    Top = 144
  end
  object DataSetProvider2: TDataSetProvider
    Left = 112
    Top = 144
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 144
  end
  object SQLDataSet3: TSQLDataSet
    Params = <>
    Left = 40
    Top = 192
  end
  object DataSetProvider3: TDataSetProvider
    Left = 112
    Top = 192
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 192
  end
  object SQLDataSet4: TSQLDataSet
    Params = <>
    Left = 40
    Top = 240
  end
  object DataSetProvider4: TDataSetProvider
    Left = 112
    Top = 240
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 240
  end
  object SQLDataSet5: TSQLDataSet
    Params = <>
    Left = 40
    Top = 288
  end
  object DataSetProvider5: TDataSetProvider
    Left = 112
    Top = 288
  end
  object ClientDataSet5: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 288
  end
end
