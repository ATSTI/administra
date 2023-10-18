object dmNFe: TdmNFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 483
  Width = 699
  object dsp_parametro: TDataSetProvider
    DataSet = sds_parametro
    UpdateMode = upWhereKeyOnly
    Left = 141
    Top = 63
  end
  object cds_parametro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_parametro'
    Left = 221
    Top = 63
    object cds_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
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
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_parametroDADOS: TStringField
      FieldName = 'DADOS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_parametroD1: TStringField
      FieldName = 'D1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD2: TStringField
      FieldName = 'D2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD3: TStringField
      FieldName = 'D3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD4: TStringField
      FieldName = 'D4'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD5: TStringField
      FieldName = 'D5'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD6: TStringField
      FieldName = 'D6'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD7: TStringField
      FieldName = 'D7'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD8: TStringField
      FieldName = 'D8'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroD9: TStringField
      FieldName = 'D9'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object sds_parametro: TZQuery
    SQL.Strings = (
      
        'select param.* from PARAMETRO param where (param.PARAMETRO = :pP' +
        'ARAM) OR (:pPARAM = '#39'TODOS PARAMETROS DISPONIVEIS'#39')')
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    Left = 56
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
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
    object sds_parametroVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object dspTransp: TDataSetProvider
    DataSet = sdsTransp
    UpdateMode = upWhereKeyOnly
    Left = 103
    Top = 237
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pTRANSP'
        ParamType = ptInput
      end>
    ProviderName = 'dspTransp'
    Left = 183
    Top = 237
    object cdsTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      EditMask = 'LLL\-0000;1;_'
      Size = 16
    end
    object cdsTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsTranspFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object cdsTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object cdsTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object cdsTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object cdsTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object cdsTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object cdsTranspFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsTranspFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object cdsTranspFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsTranspCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object cdsTranspCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 15
    end
    object cdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object cdsTranspEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object sdsTransp: TZQuery
    SQL.Strings = (
      'select * from TRANSPORTADORA where CODTRANSP=:pTRANSP')
    Params = <
      item
        DataType = ftInteger
        Name = 'pTRANSP'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pTRANSP'
        ParamType = ptUnknown
      end>
    object sdsTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object sdsTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdsTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdsTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdsTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      Size = 2
    end
    object sdsTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object sdsTranspFRETE: TStringField
      FieldName = 'FRETE'
      Size = 1
    end
    object sdsTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object sdsTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object sdsTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object sdsTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object sdsTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object sdsTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object sdsTranspFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsTranspFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object sdsTranspFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsTranspCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object sdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sdsTranspCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object sdsTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object sdsTranspEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object listaTransp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaTransp'
    Left = 280
    Top = 355
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
  object dspListaTransp: TDataSetProvider
    Left = 208
    Top = 355
  end
end
