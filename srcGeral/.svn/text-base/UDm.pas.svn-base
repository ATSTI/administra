unit UDm;

interface

uses
  Windows, SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  DBLocal, DBLocalS, StrUtils, Dialogs, Variants;

type
  TDM = class(TDataModule)
    sqlsisAdimin: TSQLConnection;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    dsp_parametro: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    c_6_genid: TClientDataSet;
    c_6_genidCODIGO: TIntegerField;
    d_6: TDataSetProvider;
    s_6: TSQLDataSet;
    s_6CODIGO: TIntegerField;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    cds_Marca: TClientDataSet;
    cds_MarcaDESCMARCAS: TStringField;
    dsp_Marca: TDataSetProvider;
    sds_Marca: TSQLDataSet;
    sds_MarcaDESCMARCAS: TStringField;
    cds_familia: TClientDataSet;
    cds_familiaDESCFAMILIA: TStringField;
    cds_familiaCOD_FAMILIA: TIntegerField;
    dsp_familia: TDataSetProvider;
    sds_familia: TSQLDataSet;
    sds_familiaDESCFAMILIA: TStringField;
    sds_familiaCOD_FAMILIA: TIntegerField;
    cds_categoria: TClientDataSet;
    cds_categoriaDESCCATEGORIA: TStringField;
    cds_categoriaCOD_CATEGORIA: TIntegerField;
    cds_categoriaCOD_FAMILIA: TIntegerField;
    cds_categoriaCASE: TStringField;
    dsp_categoria: TDataSetProvider;
    sds_categoria: TSQLDataSet;
    sds_categoriaDESCCATEGORIA: TStringField;
    sds_categoriaCOD_CATEGORIA: TIntegerField;
    sds_categoriaCOD_FAMILIA: TIntegerField;
    sds_categoriaCASE: TStringField;
    sds_cfop: TSQLDataSet;
    sds_cfopCFCOD: TStringField;
    sds_cfopCFNOME: TStringField;
    sds_cfopTIPOMOVIMENTO: TStringField;
    dsp_cfop: TDataSetProvider;
    cds_cfop: TClientDataSet;
    cds_cfopCFCOD: TStringField;
    cds_cfopCFNOME: TStringField;
    cds_cfopTIPOMOVIMENTO: TStringField;
    scds_banco_proc: TSQLDataSet;
    scds_banco_procBANCO: TStringField;
    scds_banco_procCODBANCO: TSmallintField;
    scds_banco_procNOMEBANCO: TStringField;
    scds_cliente_proc: TSQLDataSet;
    scds_cliente_procCODCLIENTE: TIntegerField;
    scds_cliente_procNOMECLIENTE: TStringField;
    scds_cliente_procRAZAOSOCIAL: TStringField;
    scds_cliente_procCODBANCO: TSmallintField;
    scds_cliente_procPRAZORECEBIMENTO: TSmallintField;
    scds_cliente_procOBS: TStringField;
    scds_cliente_procSEGMENTO: TSmallintField;
    scds_cliente_procSTATUS: TSmallintField;
    scds_cliente_procNOMEUSUARIO: TStringField;
    scds_cliente_procUF: TStringField;
    scds_produto_proc: TSQLDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCODPRO: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    scds_produto_procLOCALIZACAO: TStringField;
    proc_empresa: TSQLDataSet;
    proc_empresaEMPRESA: TStringField;
    proc_empresaRAZAO: TStringField;
    proc_empresaCNPJ_CPF: TStringField;
    proc_empresaENDERECO: TStringField;
    proc_empresaLOGRADOURO: TStringField;
    proc_empresaBAIRRO: TStringField;
    proc_empresaCIDADE: TStringField;
    proc_empresaUF: TStringField;
    proc_empresaCEP: TStringField;
    proc_empresaDDD: TStringField;
    proc_empresaFONE: TStringField;
    proc_empresaFONE_1: TStringField;
    proc_empresaFONE_2: TStringField;
    proc_empresaFAX: TStringField;
    proc_empresaE_MAIL: TStringField;
    proc_empresaWEB: TStringField;
    proc_empresaLOGOTIPO: TGraphicField;
    proc_empresaCODIGO: TIntegerField;
    proc_empresaTIPO: TStringField;
    proc_empresaIE_RG: TStringField;
    scds_movimento_proc: TSQLDataSet;
    scds_movimento_procCODMOVIMENTO: TIntegerField;
    scds_movimento_procCODCLIENTE: TIntegerField;
    scds_movimento_procDATAMOVIMENTO: TDateField;
    scds_movimento_procNOMECLIENTE: TStringField;
    scds_usuario_proc: TSQLClientDataSet;
    scds_usuario_procCODUSUARIO: TSmallintField;
    scds_usuario_procNOMEUSUARIO: TStringField;
    scds_usuario_procSTATUS: TSmallintField;
    scds_usuario_procPERFIL: TStringField;
    Proc_end_cli: TSQLClientDataSet;
    Proc_end_cliCIDADE: TStringField;
    scds_NaturezaProcura: TSQLClientDataSet;
    scds_NaturezaProcuraCODNATUREZA: TSmallintField;
    scds_NaturezaProcuraDESCNATUREZA: TStringField;
    scds_NaturezaProcuraGERATITULO: TSmallintField;
    scds_NaturezaProcuraTIPOTITULO: TSmallintField;
    scds_NaturezaProcuraTIPOMOVIMENTO: TSmallintField;
    scds_NaturezaProcuraBAIXAMOVIMENTO: TSmallintField;
    scds_venda_proc: TSQLDataSet;
    scds_venda_procCODCLIENTE: TIntegerField;
    scds_venda_procDATAVENDA: TDateField;
    scds_venda_procNOTAFISCAL: TIntegerField;
    scds_venda_procSTATUS: TSmallintField;
    scds_venda_procVALOR: TFloatField;
    scds_venda_procCODVENDA: TIntegerField;
    scds_venda_procNOMECLIENTE: TStringField;
    s_7: TSQLDataSet;
    d_7: TDataSetProvider;
    cds_7_contas: TClientDataSet;
    scds_forn_proc: TSQLClientDataSet;
    scds_forn_procCODFORNECEDOR: TIntegerField;
    scds_forn_procNOMEFORNECEDOR: TStringField;
    scds_forn_procRAZAOSOCIAL: TStringField;
    scds_forn_procPRAZOPAGAMENTO: TSmallintField;
    cds_produto: TClientDataSet;
    cds_produtoCODPRODUTO: TIntegerField;
    cds_produtoFAMILIA: TStringField;
    cds_produtoCATEGORIA: TStringField;
    cds_produtoMARCA: TStringField;
    cds_produtoUNIDADEMEDIDA: TStringField;
    cds_produtoDATAULTIMACOMPRA: TDateField;
    cds_produtoESTOQUEMAXIMO: TFloatField;
    cds_produtoESTOQUEATUAL: TFloatField;
    cds_produtoESTOQUEREPOSICAO: TFloatField;
    cds_produtoESTOQUEMINIMO: TFloatField;
    cds_produtoVALORUNITARIOATUAL: TFloatField;
    cds_produtoVALORUNITARIOANTERIOR: TFloatField;
    cds_produtoICMS: TFloatField;
    cds_produtoCODALMOXARIFADO: TIntegerField;
    cds_produtoIPI: TFloatField;
    cds_produtoCLASSIFIC_FISCAL: TStringField;
    cds_produtoCST: TStringField;
    cds_produtoBASE_ICMS: TFloatField;
    cds_produtoCOD_COMISSAO: TIntegerField;
    cds_produtoPRECOMEDIO: TBCDField;
    cds_produtoMARGEM_LUCRO: TFloatField;
    cds_produtoCOD_BARRA: TStringField;
    cds_produtoVALOR_PRAZO: TFloatField;
    cds_produtoTIPO: TStringField;
    cds_produtoRATEIO: TStringField;
    cds_produtoCONTA_DESPESA: TStringField;
    cds_produtoCODPRO: TStringField;
    cds_produtoQTDE_PCT: TFloatField;
    cds_produtoPRODUTO: TStringField;
    cds_produtoPESO_QTDE: TFloatField;
    cds_produtoCONTA_RECEITA: TStringField;
    cds_produtoCONTA_ESTOQUE: TStringField;
    cds_produtoDATACADASTRO: TSQLTimeStampField;
    cds_produtoMARGEM: TFloatField;
    cds_produtoPRO_COD: TStringField;
    cds_produtoDATAGRAV: TDateField;
    cds_produtoCODFORN: TStringField;
    cds_produtoFOTOPRODUTO: TStringField;
    cds_produtoUSA: TStringField;
    cds_produtoLOTES: TStringField;
    dsp_produto: TDataSetProvider;
    sds_produto: TSQLDataSet;
    sds_produtoCODPRODUTO: TIntegerField;
    sds_produtoFAMILIA: TStringField;
    sds_produtoCATEGORIA: TStringField;
    sds_produtoMARCA: TStringField;
    sds_produtoUNIDADEMEDIDA: TStringField;
    sds_produtoDATAULTIMACOMPRA: TDateField;
    sds_produtoESTOQUEMAXIMO: TFloatField;
    sds_produtoESTOQUEATUAL: TFloatField;
    sds_produtoESTOQUEREPOSICAO: TFloatField;
    sds_produtoESTOQUEMINIMO: TFloatField;
    sds_produtoVALORUNITARIOATUAL: TFloatField;
    sds_produtoVALORUNITARIOANTERIOR: TFloatField;
    sds_produtoICMS: TFloatField;
    sds_produtoCODALMOXARIFADO: TIntegerField;
    sds_produtoIPI: TFloatField;
    sds_produtoCLASSIFIC_FISCAL: TStringField;
    sds_produtoCST: TStringField;
    sds_produtoBASE_ICMS: TFloatField;
    sds_produtoPRODUTO: TStringField;
    sds_produtoCOD_COMISSAO: TIntegerField;
    sds_produtoPRECOMEDIO: TBCDField;
    sds_produtoMARGEM_LUCRO: TFloatField;
    sds_produtoCOD_BARRA: TStringField;
    sds_produtoVALOR_PRAZO: TFloatField;
    sds_produtoTIPO: TStringField;
    sds_produtoRATEIO: TStringField;
    sds_produtoCONTA_DESPESA: TStringField;
    sds_produtoCODPRO: TStringField;
    sds_produtoQTDE_PCT: TFloatField;
    sds_produtoPESO_QTDE: TFloatField;
    sds_produtoCONTA_RECEITA: TStringField;
    sds_produtoCONTA_ESTOQUE: TStringField;
    sds_produtoDATACADASTRO: TSQLTimeStampField;
    sds_produtoMARGEM: TFloatField;
    sds_produtoPRO_COD: TStringField;
    sds_produtoDATAGRAV: TDateField;
    sds_produtoCODFORN: TStringField;
    sds_produtoFOTOPRODUTO: TStringField;
    sds_produtoUSA: TStringField;
    sds_produtoLOTES: TStringField;
    sds_cm: TSQLDataSet;
    sds_cmCOD_COMISSAO: TIntegerField;
    sds_cmCODIGO: TStringField;
    sds_cmDESCRICAO: TStringField;
    sds_cmINDICE: TStringField;
    sds_cmLB: TStringField;
    sds_cmCM: TStringField;
    dsp_cm: TDataSetProvider;
    cds_cm: TClientDataSet;
    cds_cmCOD_COMISSAO: TIntegerField;
    cds_cmCODIGO: TStringField;
    cds_cmDESCRICAO: TStringField;
    cds_cmINDICE: TStringField;
    cds_cmLB: TStringField;
    cds_cmCM: TStringField;
    scds_compra_proc: TSQLClientDataSet;
    scds_compra_procCODFORNECEDOR: TIntegerField;
    scds_compra_procDATACOMPRA: TDateField;
    scds_compra_procNOTAFISCAL: TIntegerField;
    scds_compra_procSTATUS: TSmallintField;
    scds_compra_procVALOR: TFloatField;
    scds_compra_procCODCOMPRA: TIntegerField;
    scds_compra_procNOMEFORNECEDOR: TStringField;
    scds_Mov_Det_proc: TSQLClientDataSet;
    scds_Mov_Det_procCODPRODUTO: TIntegerField;
    scds_Mov_Det_procPRODUTO: TStringField;
    scds_Mov_Det_procPRECO: TFloatField;
    scds_Mov_Det_procQUANTIDADE: TFloatField;
    scds_Mov_Det_procCODMOVIMENTO: TIntegerField;
    scds_Mov_Det_procCODDETALHE: TIntegerField;
    scds_Mov_Det_procQTDE_ALT: TFloatField;
    scds_Mov_Det_procVALTOTAL: TFloatField;
    scds_Mov_Det_procVALORTOT: TFloatField;
    scds_Mov_Det_procTotalPedido: TAggregateField;
    s_1: TSQLDataSet;
    s_1CODIGO: TIntegerField;
    s_1CONTA: TStringField;
    s_1CONTAPAI: TStringField;
    s_1NOME: TStringField;
    s_1CONSOLIDA: TStringField;
    s_1DESCRICAO: TStringField;
    s_1RATEIO: TStringField;
    s_1CODREDUZIDO: TStringField;
    d_1: TDataSetProvider;
    c_1_planoc: TClientDataSet;
    c_1_planocCODIGO: TIntegerField;
    c_1_planocCONTA: TStringField;
    c_1_planocCONTAPAI: TStringField;
    c_1_planocNOME: TStringField;
    c_1_planocCONSOLIDA: TStringField;
    c_1_planocDESCRICAO: TStringField;
    c_1_planocRATEIO: TStringField;
    c_1_planocCODREDUZIDO: TStringField;
    SQLDataSet1: TSQLDataSet;
    s_2COD_PLANO_RATEIO: TIntegerField;
    s_2CCUSTO: TStringField;
    s_2PERCENTUAL: TFloatField;
    StringField1: TStringField;
    DataSetProvider1: TDataSetProvider;
    c_2_planoc_rat: TClientDataSet;
    c_2_planoc_ratCOD_PLANO_RATEIO: TIntegerField;
    c_2_planoc_ratCCUSTO: TStringField;
    c_2_planoc_ratPERCENTUAL: TFloatField;
    c_2_planoc_ratCONTA: TStringField;
    sds_serie: TSQLDataSet;
    sds_serieCODSERIE: TStringField;
    sds_serieSERIE: TStringField;
    sds_serieULTIMO_NUMERO: TIntegerField;
    dsp_serie: TDataSetProvider;
    cds_serie: TClientDataSet;
    cds_serieCODSERIE: TStringField;
    cds_serieSERIE: TStringField;
    cds_serieULTIMO_NUMERO: TIntegerField;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    parametro: TClientDataSet;
    parametroDESCRICAO: TStringField;
    parametroPARAMETRO: TStringField;
    parametroCONFIGURADO: TStringField;
    parametroDADOS: TStringField;
    parametroD1: TStringField;
    parametroD2: TStringField;
    parametroD3: TStringField;
    parametroD4: TStringField;
    parametroD5: TStringField;
    parametroD6: TStringField;
    parametroD7: TStringField;
    parametroD8: TStringField;
    parametroD9: TStringField;
    parametroINSTRUCOES: TStringField;
    sdsDESCRICAO: TStringField;
    sdsPARAMETRO: TStringField;
    sdsCONFIGURADO: TStringField;
    sdsDADOS: TStringField;
    sdsD1: TStringField;
    sdsD2: TStringField;
    sdsD3: TStringField;
    sdsD4: TStringField;
    sdsD5: TStringField;
    sdsD6: TStringField;
    sdsD7: TStringField;
    sdsD8: TStringField;
    sdsD9: TStringField;
    sdsINSTRUCOES: TStringField;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    sds_cr: TSQLDataSet;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crTITULO: TStringField;
    sds_crEMISSAO: TDateField;
    sds_crCODCLIENTE: TIntegerField;
    sds_crDATAVENCIMENTO: TDateField;
    sds_crVALORRECEBIDO: TFloatField;
    sds_crDATARECEBIMENTO: TDateField;
    sds_crCAIXA: TSmallintField;
    sds_crCONTADEBITO: TIntegerField;
    sds_crCONTACREDITO: TIntegerField;
    sds_crSTATUS: TStringField;
    sds_crVIA: TStringField;
    sds_crFORMARECEBIMENTO: TStringField;
    sds_crDATABAIXA: TDateField;
    sds_crHISTORICO: TStringField;
    sds_crCODVENDA: TIntegerField;
    sds_crCODVENDEDOR: TSmallintField;
    sds_crCODUSUARIO: TSmallintField;
    sds_crDATASISTEMA: TSQLTimeStampField;
    sds_crN_DOCUMENTO: TStringField;
    sds_crALMOXARIFADO: TStringField;
    sds_crNOMEUSUARIO: TStringField;
    sds_crVENDEDOR: TStringField;
    sds_crNOMECLIENTE: TStringField;
    sds_crJUROS: TFloatField;
    sds_crDESCONTO: TFloatField;
    sds_crPERDA: TFloatField;
    sds_crTROCA: TFloatField;
    sds_crFUNRURAL: TFloatField;
    sds_crVALOR_PRIM_VIA: TFloatField;
    sds_crVALOR_RESTO: TFloatField;
    sds_crVALORTITULO: TFloatField;
    sds_crCODALMOXARIFADO: TIntegerField;
    sds_crOUTRO_CREDITO: TFloatField;
    sds_crOUTRO_DEBITO: TFloatField;
    sds_crPARCELAS: TSmallintField;
    sds_crDUP_REC_NF: TStringField;
    sds_crNF: TIntegerField;
    sds_crDP: TIntegerField;
    sds_crBL: TIntegerField;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crTITULO: TStringField;
    cds_crEMISSAO: TDateField;
    cds_crCODCLIENTE: TIntegerField;
    cds_crDATAVENCIMENTO: TDateField;
    cds_crSTATUS: TStringField;
    cds_crVIA: TStringField;
    cds_crCODVENDA: TIntegerField;
    cds_crCODALMOXARIFADO: TIntegerField;
    cds_crCODVENDEDOR: TSmallintField;
    cds_crFORMARECEBIMENTO: TStringField;
    cds_crVALOR_PRIM_VIA: TFloatField;
    cds_crVALOR_RESTO: TFloatField;
    cds_crVALORTITULO: TFloatField;
    cds_crCONTACREDITO: TIntegerField;
    cds_crVALORRECEBIDO: TFloatField;
    cds_crDATARECEBIMENTO: TDateField;
    cds_crCONTADEBITO: TIntegerField;
    cds_crCAIXA: TSmallintField;
    cds_crDATABAIXA: TDateField;
    cds_crHISTORICO: TStringField;
    cds_crCODUSUARIO: TSmallintField;
    cds_crN_DOCUMENTO: TStringField;
    cds_crDATASISTEMA: TSQLTimeStampField;
    cds_crALMOXARIFADO: TStringField;
    cds_crNOMECLIENTE: TStringField;
    cds_crNOMEUSUARIO: TStringField;
    cds_crVENDEDOR: TStringField;
    cds_crJUROS: TFloatField;
    cds_crDESCONTO: TFloatField;
    cds_crPERDA: TFloatField;
    cds_crTROCA: TFloatField;
    cds_crFUNRURAL: TFloatField;
    cds_crOUTRO_CREDITO: TFloatField;
    cds_crOUTRO_DEBITO: TFloatField;
    cds_crPARCELAS: TSmallintField;
    cds_crDUP_REC_NF: TStringField;
    cds_crNF: TIntegerField;
    cds_crDP: TIntegerField;
    cds_crBL: TIntegerField;
    dsp_rec: TDataSetProvider;
    sds_rec: TSQLDataSet;
    sds_recTITULO: TStringField;
    sds_recEMISSAO: TDateField;
    sds_recCODCLIENTE: TIntegerField;
    sds_recDATAVENCIMENTO: TDateField;
    sds_recSTATUS: TStringField;
    sds_recVIA: TStringField;
    sds_recCODVENDA: TIntegerField;
    sds_recCODALMOXARIFADO: TSmallintField;
    sds_recCODVENDEDOR: TSmallintField;
    sds_recFORMARECEBIMENTO: TStringField;
    sds_recVALOR_PRIM_VIA: TFloatField;
    sds_recVALOR_RESTO: TFloatField;
    sds_recVALORTITULO: TFloatField;
    sds_recVALORRECEBIDO: TFloatField;
    sds_recDATARECEBIMENTO: TDateField;
    sds_recCAIXA: TSmallintField;
    sds_recCONTADEBITO: TIntegerField;
    sds_recCONTACREDITO: TIntegerField;
    sds_recDATABAIXA: TDateField;
    sds_recHISTORICO: TStringField;
    sds_recCODUSUARIO: TSmallintField;
    sds_recN_DOCUMENTO: TStringField;
    sds_recDATASISTEMA: TSQLTimeStampField;
    sds_recJUROS: TFloatField;
    sds_recDESCONTO: TFloatField;
    sds_recPERDA: TFloatField;
    sds_recTROCA: TFloatField;
    sds_recFUNRURAL: TFloatField;
    sds_recCODRECEBIMENTO: TIntegerField;
    cds_rec: TClientDataSet;
    cds_recTITULO: TStringField;
    cds_recEMISSAO: TDateField;
    cds_recCODCLIENTE: TIntegerField;
    cds_recDATAVENCIMENTO: TDateField;
    cds_recSTATUS: TStringField;
    cds_recVIA: TStringField;
    cds_recCODVENDA: TIntegerField;
    cds_recCODALMOXARIFADO: TSmallintField;
    cds_recCODVENDEDOR: TSmallintField;
    cds_recFORMARECEBIMENTO: TStringField;
    cds_recVALOR_PRIM_VIA: TFloatField;
    cds_recVALOR_RESTO: TFloatField;
    cds_recVALORTITULO: TFloatField;
    cds_recDATASISTEMA: TSQLTimeStampField;
    cds_recCODUSUARIO: TSmallintField;
    cds_recCODRECEBIMENTO: TIntegerField;
    sdsBanco: TSQLDataSet;
    sdsBancoCODBANCO: TSmallintField;
    sdsBancoBANCO: TStringField;
    sdsBancoNOMEBANCO: TStringField;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoCODBANCO: TSmallintField;
    cdsBancoBANCO: TStringField;
    cdsBancoNOMEBANCO: TStringField;
    s_4: TSQLDataSet;
    d_4: TDataSetProvider;
    cds_4_pagar: TClientDataSet;
    cds_4_pagarCODPAGAMENTO: TIntegerField;
    cds_4_pagarTITULO: TStringField;
    cds_4_pagarEMISSAO: TDateField;
    cds_4_pagarCODFORNECEDOR: TIntegerField;
    cds_4_pagarDATAVENCIMENTO: TDateField;
    cds_4_pagarDATAPAGAMENTO: TDateField;
    cds_4_pagarCAIXA: TSmallintField;
    cds_4_pagarCONTADEBITO: TIntegerField;
    cds_4_pagarCONTACREDITO: TIntegerField;
    cds_4_pagarSTATUS: TStringField;
    cds_4_pagarFORMAPAGAMENTO: TStringField;
    cds_4_pagarDATABAIXA: TDateField;
    cds_4_pagarHISTORICO: TStringField;
    cds_4_pagarCODCOMPRA: TIntegerField;
    cds_4_pagarCODALMOXARIFADO: TSmallintField;
    cds_4_pagarCODCOMPRADOR: TSmallintField;
    cds_4_pagarCODUSUARIO: TSmallintField;
    cds_4_pagarN_DOCUMENTO: TStringField;
    cds_4_pagarDATASISTEMA: TSQLTimeStampField;
    cds_4_pagarVALORRECEBIDO: TFloatField;
    cds_4_pagarJUROS: TFloatField;
    cds_4_pagarDESCONTO: TFloatField;
    cds_4_pagarPERDA: TFloatField;
    cds_4_pagarTROCA: TFloatField;
    cds_4_pagarFUNRURAL: TFloatField;
    cds_4_pagarVALOR_PRIM_VIA: TFloatField;
    cds_4_pagarVALOR_RESTO: TFloatField;
    cds_4_pagarVALORTITULO: TFloatField;
    cds_4_pagarOUTRO_CREDITO: TFloatField;
    cds_4_pagarOUTRO_DEBITO: TFloatField;
    cds_4_pagarPARCELAS: TIntegerField;
    cds_4_pagarVIA: TStringField;
    cds_4_pagarNOMEFORNECEDOR: TStringField;
    cds_4_pagarALMOXARIFADO: TStringField;
    cds_4_pagarNOMEUSUARIO: TStringField;
    cds_4_pagarCOMPRADOR: TStringField;
    s_4CODPAGAMENTO: TIntegerField;
    s_4TITULO: TStringField;
    s_4EMISSAO: TDateField;
    s_4CODFORNECEDOR: TIntegerField;
    s_4DATAVENCIMENTO: TDateField;
    s_4DATAPAGAMENTO: TDateField;
    s_4CAIXA: TSmallintField;
    s_4CONTADEBITO: TIntegerField;
    s_4CONTACREDITO: TIntegerField;
    s_4STATUS: TStringField;
    s_4FORMAPAGAMENTO: TStringField;
    s_4DATABAIXA: TDateField;
    s_4HISTORICO: TStringField;
    s_4CODCOMPRA: TIntegerField;
    s_4CODALMOXARIFADO: TSmallintField;
    s_4CODCOMPRADOR: TSmallintField;
    s_4CODUSUARIO: TSmallintField;
    s_4N_DOCUMENTO: TStringField;
    s_4DATASISTEMA: TSQLTimeStampField;
    s_4VALORRECEBIDO: TFloatField;
    s_4JUROS: TFloatField;
    s_4DESCONTO: TFloatField;
    s_4PERDA: TFloatField;
    s_4TROCA: TFloatField;
    s_4FUNRURAL: TFloatField;
    s_4VALOR_PRIM_VIA: TFloatField;
    s_4VALOR_RESTO: TFloatField;
    s_4VALORTITULO: TFloatField;
    s_4OUTRO_CREDITO: TFloatField;
    s_4OUTRO_DEBITO: TFloatField;
    s_4PARCELAS: TIntegerField;
    s_4VIA: TStringField;
    s_4NOMEFORNECEDOR: TStringField;
    s_4ALMOXARIFADO: TStringField;
    s_4NOMEUSUARIO: TStringField;
    s_4COMPRADOR: TStringField;
    s_1_conta: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    d_1_conta: TDataSetProvider;
    cds_1_contas: TClientDataSet;
    cds_1_contasCODIGO: TIntegerField;
    cds_1_contasCONTA: TStringField;
    cds_1_contasNOME: TStringField;
    cds_1_contasRATEIO: TStringField;
    sds_rateio: TSQLDataSet;
    sds_rateioDATA: TDateField;
    sds_rateioCODUSUARIO: TSmallintField;
    sds_rateioCODCCUSTO: TIntegerField;
    sds_rateioCODSERVICO: TSmallintField;
    sds_rateioSTATUS: TSmallintField;
    sds_rateioCONTA: TStringField;
    sds_rateioVALOR: TFloatField;
    sds_rateioPERCENTUAL: TFloatField;
    sds_rateioCONTADEBITO: TStringField;
    sds_rateioQTDE: TFloatField;
    sds_rateioCODMOVIMENTO: TIntegerField;
    sds_rateioTIPO: TStringField;
    sds_rateioCODRATEIO: TIntegerField;
    dsp_rateio: TDataSetProvider;
    cds_rateio: TClientDataSet;
    cds_rateioDATA: TDateField;
    cds_rateioCODUSUARIO: TSmallintField;
    cds_rateioCODCCUSTO: TIntegerField;
    cds_rateioCODSERVICO: TSmallintField;
    cds_rateioSTATUS: TSmallintField;
    cds_rateioCONTA: TStringField;
    cds_rateioVALOR: TFloatField;
    cds_rateioPERCENTUAL: TFloatField;
    cds_rateioCONTADEBITO: TStringField;
    cds_rateioQTDE: TFloatField;
    cds_rateioCODMOVIMENTO: TIntegerField;
    cds_rateioTIPO: TStringField;
    cds_rateioCODRATEIO: TIntegerField;
    cds_rateioTotalRateio: TAggregateField;
    cds_rateioTOTALPERCENTUAL: TAggregateField;
    cds_rateioTotalQtde: TAggregateField;
    scdsCCusto_proc: TSQLClientDataSet;
    scdsCCusto_procCODALMOXARIFADO: TIntegerField;
    scdsCCusto_procALMOXARIFADO: TStringField;
    scds_transp_proc: TSQLClientDataSet;
    scds_transp_procCODTRANSP: TIntegerField;
    scds_transp_procNOMETRANSP: TStringField;
    scds_transp_procPLACATRANSP: TStringField;
    scds_transp_procCNPJ_CPF: TStringField;
    scds_transp_procEND_TRANSP: TStringField;
    scds_transp_procCIDADE_TRANSP: TStringField;
    scds_transp_procUF_VEICULO_TRANSP: TStringField;
    scds_transp_procUF_TRANSP: TStringField;
    scds_transp_procFRETE: TStringField;
    scds_transp_procINSCRICAOESTADUAL: TStringField;
    scds_transp_procCODCLIENTE: TIntegerField;
    scds_transp_procCORPONF6: TStringField;
    scds_transp_procCORPONF5: TStringField;
    scds_transp_procCORPONF1: TStringField;
    scds_transp_procCORPONF2: TStringField;
    scds_transp_procCORPONF3: TStringField;
    scds_transp_procCORPONF4: TStringField;
    sdsTransp: TSQLDataSet;
    sdsTranspCODTRANSP: TIntegerField;
    sdsTranspNOMETRANSP: TStringField;
    sdsTranspPLACATRANSP: TStringField;
    sdsTranspCNPJ_CPF: TStringField;
    sdsTranspEND_TRANSP: TStringField;
    sdsTranspCIDADE_TRANSP: TStringField;
    sdsTranspUF_VEICULO_TRANSP: TStringField;
    sdsTranspUF_TRANSP: TStringField;
    sdsTranspFRETE: TStringField;
    sdsTranspINSCRICAOESTADUAL: TStringField;
    sdsTranspCORPONF6: TStringField;
    sdsTranspCORPONF5: TStringField;
    sdsTranspCORPONF1: TStringField;
    sdsTranspCORPONF2: TStringField;
    sdsTranspCORPONF3: TStringField;
    sdsTranspCORPONF4: TStringField;
    dspTransp: TDataSetProvider;
    cdsTransp: TClientDataSet;
    cdsTranspCODTRANSP: TIntegerField;
    cdsTranspNOMETRANSP: TStringField;
    cdsTranspPLACATRANSP: TStringField;
    cdsTranspCNPJ_CPF: TStringField;
    cdsTranspEND_TRANSP: TStringField;
    cdsTranspCIDADE_TRANSP: TStringField;
    cdsTranspUF_VEICULO_TRANSP: TStringField;
    cdsTranspUF_TRANSP: TStringField;
    cdsTranspFRETE: TStringField;
    cdsTranspINSCRICAOESTADUAL: TStringField;
    cdsTranspCORPONF6: TStringField;
    cdsTranspCORPONF5: TStringField;
    cdsTranspCORPONF1: TStringField;
    cdsTranspCORPONF2: TStringField;
    cdsTranspCORPONF3: TStringField;
    cdsTranspCORPONF4: TStringField;
    s3_contabil: TSQLDataSet;
    s3_contabilCODCONT: TIntegerField;
    s3_contabilCODORIGEM: TIntegerField;
    s3_contabilTIPOORIGEM: TStringField;
    s3_contabilDATA: TDateField;
    s3_contabilCODUSUARIO: TSmallintField;
    s3_contabilCODCCUSTO: TIntegerField;
    s3_contabilCODSERVICO: TSmallintField;
    s3_contabilSTATUS: TSmallintField;
    s3_contabilCONTA: TStringField;
    s3_contabilVALORCREDITO: TFloatField;
    s3_contabilVALORDEBITO: TFloatField;
    s3_contabilVALORORCADO: TFloatField;
    s3_contabilQTDECREDITO: TFloatField;
    s3_contabilQTDEDEBITO: TFloatField;
    s3_contabilQTDEORCADO: TFloatField;
    s3_contabilNOME: TStringField;
    s3_contabilCODREDUZIDO: TStringField;
    d3_contabil: TDataSetProvider;
    c3_contabil: TClientDataSet;
    c3_contabilCODCONT: TIntegerField;
    c3_contabilCODORIGEM: TIntegerField;
    c3_contabilTIPOORIGEM: TStringField;
    c3_contabilDATA: TDateField;
    c3_contabilCODUSUARIO: TSmallintField;
    c3_contabilCODCCUSTO: TIntegerField;
    c3_contabilCODSERVICO: TSmallintField;
    c3_contabilSTATUS: TSmallintField;
    c3_contabilCONTA: TStringField;
    c3_contabilVALORCREDITO: TFloatField;
    c3_contabilVALORDEBITO: TFloatField;
    c3_contabilVALORORCADO: TFloatField;
    c3_contabilQTDECREDITO: TFloatField;
    c3_contabilQTDEDEBITO: TFloatField;
    c3_contabilQTDEORCADO: TFloatField;
    c3_contabilNOME: TStringField;
    c3_contabilCODREDUZIDO: TStringField;
    sds_nf: TSQLDataSet;
    sds_nfNOTASERIE: TStringField;
    sds_nfNUMNF: TIntegerField;
    sds_nfNATUREZA: TSmallintField;
    sds_nfQUANTIDADE: TFloatField;
    sds_nfMARCA: TStringField;
    sds_nfESPECIE: TStringField;
    sds_nfDTAEMISSAO: TDateField;
    sds_nfDTASAIDA: TDateField;
    sds_nfUF: TStringField;
    sds_nfCODVENDA: TIntegerField;
    sds_nfCODTRANSP: TIntegerField;
    sds_nfNOMETRANSP: TStringField;
    sds_nfPLACATRANSP: TStringField;
    sds_nfCNPJ_CPF: TStringField;
    sds_nfEND_TRANSP: TStringField;
    sds_nfCIDADE_TRANSP: TStringField;
    sds_nfUF_VEICULO_TRANSP: TStringField;
    sds_nfUF_TRANSP: TStringField;
    sds_nfFRETE: TStringField;
    sds_nfINSCRICAOESTADUAL: TStringField;
    sds_nfNUMERO: TStringField;
    sds_nfDESCNATUREZA: TStringField;
    sds_nfNOTAFISCAL: TIntegerField;
    sds_nfHORASAIDA: TTimeField;
    sds_nfDATA_SISTEMA: TSQLTimeStampField;
    sds_nfBASE_ICMS: TFloatField;
    sds_nfVALOR_ICMS: TFloatField;
    sds_nfBASE_ICMS_SUBST: TFloatField;
    sds_nfVALOR_ICMS_SUBST: TFloatField;
    sds_nfVALOR_PRODUTO: TFloatField;
    sds_nfVALOR_FRETE: TFloatField;
    sds_nfVALOR_SEGURO: TFloatField;
    sds_nfOUTRAS_DESP: TFloatField;
    sds_nfVALOR_IPI: TFloatField;
    sds_nfVALOR_TOTAL_NOTA: TFloatField;
    sds_nfCORPONF1: TStringField;
    sds_nfCORPONF2: TStringField;
    sds_nfCORPONF3: TStringField;
    sds_nfCORPONF4: TStringField;
    sds_nfCORPONF5: TStringField;
    sds_nfCORPONF6: TStringField;
    sds_nfCFOP: TStringField;
    sds_nfCODCLIENTE: TIntegerField;
    sds_nfNOMECLIENTE: TStringField;
    sds_nfPESOBRUTO: TBCDField;
    sds_nfPESOLIQUIDO: TBCDField;
    sds_nfFATURA: TStringField;
    dsp_nf: TDataSetProvider;
    cds_nf: TClientDataSet;
    cds_nfNOTASERIE: TStringField;
    cds_nfNUMNF: TIntegerField;
    cds_nfNATUREZA: TSmallintField;
    cds_nfQUANTIDADE: TFloatField;
    cds_nfMARCA: TStringField;
    cds_nfESPECIE: TStringField;
    cds_nfDTAEMISSAO: TDateField;
    cds_nfDTASAIDA: TDateField;
    cds_nfUF: TStringField;
    cds_nfCODVENDA: TIntegerField;
    cds_nfCODTRANSP: TIntegerField;
    cds_nfNOMETRANSP: TStringField;
    cds_nfPLACATRANSP: TStringField;
    cds_nfCNPJ_CPF: TStringField;
    cds_nfEND_TRANSP: TStringField;
    cds_nfCIDADE_TRANSP: TStringField;
    cds_nfUF_VEICULO_TRANSP: TStringField;
    cds_nfUF_TRANSP: TStringField;
    cds_nfFRETE: TStringField;
    cds_nfINSCRICAOESTADUAL: TStringField;
    cds_nfNUMERO: TStringField;
    cds_nfDESCNATUREZA: TStringField;
    cds_nfNOTAFISCAL: TIntegerField;
    cds_nfHORASAIDA: TTimeField;
    cds_nfDATA_SISTEMA: TSQLTimeStampField;
    cds_nfBASE_ICMS: TFloatField;
    cds_nfVALOR_ICMS: TFloatField;
    cds_nfBASE_ICMS_SUBST: TFloatField;
    cds_nfVALOR_ICMS_SUBST: TFloatField;
    cds_nfVALOR_PRODUTO: TFloatField;
    cds_nfVALOR_FRETE: TFloatField;
    cds_nfVALOR_SEGURO: TFloatField;
    cds_nfOUTRAS_DESP: TFloatField;
    cds_nfVALOR_IPI: TFloatField;
    cds_nfVALOR_TOTAL_NOTA: TFloatField;
    cds_nfCORPONF1: TStringField;
    cds_nfCORPONF2: TStringField;
    cds_nfCORPONF3: TStringField;
    cds_nfCORPONF4: TStringField;
    cds_nfCORPONF5: TStringField;
    cds_nfCORPONF6: TStringField;
    cds_nfCFOP: TStringField;
    cds_nfCODCLIENTE: TIntegerField;
    cds_nfNOMECLIENTE: TStringField;
    cds_nfPESOBRUTO: TBCDField;
    cds_nfPESOLIQUIDO: TBCDField;
    cds_nfFATURA: TStringField;
    scds_nf_proc: TSQLClientDataSet;
    scds_nf_procCODVENDA: TIntegerField;
    scds_nf_procDTAEMISSAO: TDateField;
    scds_nf_procDTASAIDA: TDateField;
    scds_nf_procNOTASERIE: TStringField;
    scds_nf_procNUMNF: TIntegerField;
    sds_param: TSQLDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField8: TStringField;
    sds_paramDADOS: TStringField;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    StringField9: TStringField;
    StringField10: TStringField;
    cds_paramDADOS: TStringField;
    sds_Empresa: TSQLDataSet;
    sdsEMPRESA: TStringField;
    sdsRAZAO: TStringField;
    sdsCNPJ_CPF: TStringField;
    sdsENDERECO: TStringField;
    sdsLOGRADOURO: TStringField;
    sdsBAIRRO: TStringField;
    sdsCIDADE: TStringField;
    sdsUF: TStringField;
    sdsCEP: TStringField;
    sdsDDD: TStringField;
    sdsFONE: TStringField;
    sdsFONE_1: TStringField;
    sdsFONE_2: TStringField;
    sdsFAX: TStringField;
    sdsE_MAIL: TStringField;
    sdsWEB: TStringField;
    sdsLOGOTIPO: TGraphicField;
    sdsCODIGO: TIntegerField;
    sdsTIPO: TStringField;
    sdsIE_RG: TStringField;
    dsp_empresa: TDataSetProvider;
    cds_empresa: TClientDataSet;
    cds_empresaEMPRESA: TStringField;
    cds_empresaRAZAO: TStringField;
    cds_empresaCNPJ_CPF: TStringField;
    cds_empresaENDERECO: TStringField;
    cds_empresaLOGRADOURO: TStringField;
    cds_empresaBAIRRO: TStringField;
    cds_empresaCIDADE: TStringField;
    cds_empresaUF: TStringField;
    cds_empresaCEP: TStringField;
    cds_empresaDDD: TStringField;
    cds_empresaFONE: TStringField;
    cds_empresaFONE_1: TStringField;
    cds_empresaFONE_2: TStringField;
    cds_empresaFAX: TStringField;
    cds_empresaE_MAIL: TStringField;
    cds_empresaWEB: TStringField;
    cds_empresaLOGOTIPO: TGraphicField;
    cds_empresaCODIGO: TIntegerField;
    cds_empresaTIPO: TStringField;
    cds_empresaIE_RG: TStringField;
    sds_usuario: TSQLDataSet;
    sdsCODUSUARIO: TSmallintField;
    sdsNOMEUSUARIO: TStringField;
    sdsSTATUS: TSmallintField;
    sdsPERFIL: TStringField;
    dsp_usuario: TDataSetProvider;
    cds_usuario_cadastro: TClientDataSet;
    cds_usuario_cadastroCODUSUARIO: TSmallintField;
    cds_usuario_cadastroNOMEUSUARIO: TStringField;
    cds_usuario_cadastroSTATUS: TSmallintField;
    cds_usuario_cadastroPERFIL: TStringField;
    cds_Usuario: TClientDataSet;
    cds_UsuarioLOGIN: TStringField;
    cds_UsuarioSENHA: TStringField;
    cds_UsuarioPERFIL: TStringField;
    cds_UsuarioCODUSUARIO: TIntegerField;
    DataSetProvider2: TDataSetProvider;
    SQLDataSet2: TSQLDataSet;
    SQLDataSet1LOGIN: TStringField;
    SQLDataSet1SENHA: TStringField;
    SQLDataSet1PERFIL: TStringField;
    SQLDataSet1CODUSUARIO: TIntegerField;
    sds_produtoLOCALIZACAO: TStringField;
    cds_produtoLOCALIZACAO: TStringField;
    scds_produto_procLOTES: TStringField;
    sds_EmpresaSLOGAN: TStringField;
    sds_EmpresaOUTRAS_INFO: TStringField;
    cds_empresaSLOGAN: TStringField;
    cds_empresaOUTRAS_INFO: TStringField;
    sdsCCusto: TSQLDataSet;
    sdsCCustoCODALMOXARIFADO: TIntegerField;
    sdsCCustoALMOXARIFADO: TStringField;
    dspCCusto: TDataSetProvider;
    cdsCCusto: TClientDataSet;
    cdsCCustoCODALMOXARIFADO: TIntegerField;
    cdsCCustoALMOXARIFADO: TStringField;
    sds_itens: TSQLDataSet;
    sds_itensID_NF: TIntegerField;
    sds_itensNUMNF: TIntegerField;
    sds_itensCODPRODUTO: TIntegerField;
    sds_itensCODPRO: TStringField;
    sds_itensDESCRICAO: TStringField;
    sds_itensQUANTIDADE: TFloatField;
    sds_itensUN: TStringField;
    sds_itensICMS: TFloatField;
    sds_itensPRECO: TFloatField;
    sds_itensTOTAL: TFloatField;
    dsp_itens: TDataSetProvider;
    cds_itens: TClientDataSet;
    cds_itensID_NF: TIntegerField;
    cds_itensNUMNF: TIntegerField;
    cds_itensCODPRODUTO: TIntegerField;
    cds_itensCODPRO: TStringField;
    cds_itensDESCRICAO: TStringField;
    cds_itensQUANTIDADE: TFloatField;
    cds_itensUN: TStringField;
    cds_itensICMS: TFloatField;
    cds_itensPRECO: TFloatField;
    cds_itensTOTAL: TFloatField;
    cds_4_pagarVIAS: TIntegerField;
    scds_cliente_procCODUSUARIO: TIntegerField;
    sds_paramD1: TStringField;
    sds_paramD2: TStringField;
    sds_paramD3: TStringField;
    sds_paramD4: TStringField;
    sds_paramD5: TStringField;
    sds_paramD6: TStringField;
    sds_paramD7: TStringField;
    sds_paramD8: TStringField;
    sds_paramD9: TStringField;
    sds_paramINSTRUCOES: TStringField;
    cds_paramD1: TStringField;
    cds_paramD2: TStringField;
    cds_paramD3: TStringField;
    cds_paramD4: TStringField;
    cds_paramD5: TStringField;
    cds_paramD6: TStringField;
    cds_paramD7: TStringField;
    cds_paramD8: TStringField;
    cds_paramD9: TStringField;
    cds_paramINSTRUCOES: TStringField;
    sdsPermissao: TSQLDataSet;
    sdsPermissaoCHAVE: TStringField;
    sdsPermissaoTABELA: TStringField;
    sdsPermissaoLOGIN: TStringField;
    sdsPermissaoINCLUIR: TStringField;
    sdsPermissaoEXCLUIR: TStringField;
    sdsPermissaoALTERAR: TStringField;
    sdsPermissaoCONSULTAR: TStringField;
    dstPermissao: TDataSetProvider;
    cdsPermissao: TClientDataSet;
    cdsPermissaoCHAVE: TStringField;
    cdsPermissaoTABELA: TStringField;
    cdsPermissaoLOGIN: TStringField;
    cdsPermissaoINCLUIR: TStringField;
    cdsPermissaoEXCLUIR: TStringField;
    cdsPermissaoALTERAR: TStringField;
    cdsPermissaoCONSULTAR: TStringField;
    cds_7_contasCODIGO: TIntegerField;
    cds_7_contasCONTA: TStringField;
    cds_7_contasNOME: TStringField;
    cds_7_contasRATEIO: TStringField;
    s_7CODIGO: TIntegerField;
    s_7CONTA: TStringField;
    s_7NOME: TStringField;
    s_7RATEIO: TStringField;
    cds_paramCONFIGURADO: TStringField;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    dsp_Login: TDataSetProvider;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    cds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    cds_LoginID_LOG: TIntegerField;
    sdsBancoCARTEIRA: TStringField;
    sdsBancoCODIGO_CEDENTE: TStringField;
    sdsBancoCODIGO_EMPRESA: TStringField;
    sdsBancoCODIGO_AGENCIA: TStringField;
    sdsBancoDIGITO_AGENCIA: TStringField;
    sdsBancoNUMERO_CONTA: TStringField;
    sdsBancoDIGITO_CONTA: TStringField;
    sdsBancoCODIGO_PLANO: TIntegerField;
    cdsBancoCARTEIRA: TStringField;
    cdsBancoCODIGO_CEDENTE: TStringField;
    cdsBancoCODIGO_EMPRESA: TStringField;
    cdsBancoCODIGO_AGENCIA: TStringField;
    cdsBancoDIGITO_AGENCIA: TStringField;
    cdsBancoNUMERO_CONTA: TStringField;
    cdsBancoDIGITO_CONTA: TStringField;
    sdsBancoINSTRUCAO1: TStringField;
    sdsBancoINSTRUCAO2: TStringField;
    sdsBancoINSTRUCAO3: TStringField;
    sdsBancoINSTRUCAO4: TStringField;
    cdsBancoCODIGO_PLANO: TIntegerField;
    cdsBancoINSTRUCAO1: TStringField;
    cdsBancoINSTRUCAO2: TStringField;
    cdsBancoINSTRUCAO3: TStringField;
    cdsBancoINSTRUCAO4: TStringField;
    sdsTipoVisita: TSQLDataSet;
    dspTipoVisita: TDataSetProvider;
    cdsTipoVisita: TClientDataSet;
    sdsVisita: TSQLDataSet;
    dspVisita: TDataSetProvider;
    cdsVisita: TClientDataSet;
    cdsTipoVisitaCODTIPOVISITA: TIntegerField;
    cdsTipoVisitaVISITA: TStringField;
    sdsTipoVisitaCODTIPOVISITA: TIntegerField;
    sdsTipoVisitaVISITA: TStringField;
    cdsVisitaCODVISITA: TIntegerField;
    cdsVisitaCODCLIENTE: TIntegerField;
    cdsVisitaVISITA: TStringField;
    sdsVisitaCODVISITA: TIntegerField;
    sdsVisitaCODCLIENTE: TIntegerField;
    sdsVisitaVISITA: TStringField;
    sdsVisitaDATAULTIMA: TDateField;
    sdsVisitaDATAPROXIMA: TDateField;
    cdsVisitaDATAULTIMA: TDateField;
    cdsVisitaDATAPROXIMA: TDateField;
    sdsVisitaDIAS: TIntegerField;
    cdsVisitaDIAS: TIntegerField;
    sds_romaneio: TSQLDataSet;
    sds_romaneioCODROMANEIO_F: TIntegerField;
    sds_romaneioCODROMANEIO: TIntegerField;
    sds_romaneioCODCLIENTE: TIntegerField;
    sds_romaneioPEDIDO: TStringField;
    sds_romaneioKM: TStringField;
    sds_romaneioHORA: TSQLTimeStampField;
    sds_romaneioOBS: TStringField;
    sds_romaneioVALOR: TFloatField;
    sds_romaneioTIPO: TStringField;
    sds_romaneioCODRECEBIMENTO: TIntegerField;
    sds_romaneioNOMECLIENTE: TStringField;
    sds_romaneioTELEFONE: TStringField;
    sds_romaneioTELEFONE1: TStringField;
    sds_romaneioTELEFONE2: TStringField;
    dsp_romaneio: TDataSetProvider;
    cds_romaneio: TClientDataSet;
    cds_romaneioCODROMANEIO_F: TIntegerField;
    cds_romaneioCODROMANEIO: TIntegerField;
    cds_romaneioCODCLIENTE: TIntegerField;
    cds_romaneioPEDIDO: TStringField;
    cds_romaneioKM: TStringField;
    cds_romaneioHORA: TSQLTimeStampField;
    cds_romaneioOBS: TStringField;
    cds_romaneioVALOR: TFloatField;
    cds_romaneioTIPO: TStringField;
    cds_romaneioCODRECEBIMENTO: TIntegerField;
    cds_romaneioNOMECLIENTE: TStringField;
    cds_romaneioTELEFONE: TStringField;
    cds_romaneioTELEFONE1: TStringField;
    cds_romaneioTELEFONE2: TStringField;
    SQLDataSet3: TSQLDataSet;
    SQLDataSet1CODROMANEIO: TIntegerField;
    SQLDataSet1DATA: TDateField;
    SQLDataSet1TIPO: TStringField;
    DataSetProvider3: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CODROMANEIO: TIntegerField;
    ClientDataSet1DATA: TDateField;
    ClientDataSet1TIPO: TStringField;
    proc_pedido: TSQLClientDataSet;
    proc_pedidoDATAVENCIMENTO: TDateField;
    proc_pedidoVALORTITULO: TFloatField;
    proc_pedidoNOMECLIENTE: TStringField;
    proc_pedidoTELEFONE: TStringField;
    proc_pedidoTELEFONE1: TStringField;
    proc_pedidoTELEFONE2: TStringField;
    proc_pedidoCODRECEBIMENTO: TIntegerField;
    proc_pedidoCODVENDA: TIntegerField;
    proc_pedidoCODCLIENTE: TIntegerField;
    sds_EmpresaCODIGO_CONTA: TIntegerField;
    cds_empresaCODIGO_CONTA: TIntegerField;
    sds_repcli: TSQLDataSet;
    sds_repcliCOD_CLIENTE: TIntegerField;
    sds_repcliCOD_REPRCLI: TIntegerField;
    sds_repcliFONE: TStringField;
    sds_repcliFONE1: TStringField;
    sds_repcliFONE2: TStringField;
    sds_repcliENDERECO: TStringField;
    sds_repcliNUMERO: TStringField;
    sds_repcliCOMPLEMENTO: TStringField;
    sds_repcliBAIRRO: TStringField;
    sds_repcliCIDADE: TStringField;
    sds_repcliUF: TStringField;
    sds_repcliCEP: TStringField;
    sds_repcliEMAIL: TStringField;
    sds_repcliNOME_REPRCLI: TStringField;
    sds_repcliFUNCAO: TStringField;
    dsp_repcli: TDataSetProvider;
    cds_repcli: TClientDataSet;
    cds_repcliCOD_CLIENTE: TIntegerField;
    cds_repcliCOD_REPRCLI: TIntegerField;
    cds_repcliFONE: TStringField;
    cds_repcliFONE1: TStringField;
    cds_repcliFONE2: TStringField;
    cds_repcliENDERECO: TStringField;
    cds_repcliNUMERO: TStringField;
    cds_repcliCOMPLEMENTO: TStringField;
    cds_repcliBAIRRO: TStringField;
    cds_repcliCIDADE: TStringField;
    cds_repcliUF: TStringField;
    cds_repcliCEP: TStringField;
    cds_repcliEMAIL: TStringField;
    cds_repcliNOME_REPRCLI: TStringField;
    cds_repcliFUNCAO: TStringField;
    sdsFaixa: TSQLDataSet;
    dspFaixa: TDataSetProvider;
    cdsFaixa: TClientDataSet;
    cdsFaixaCODFAIXA: TIntegerField;
    cdsFaixaDESCRICAO: TStringField;
    cdsFaixaIDADE_MIN: TSmallintField;
    cdsFaixaIDADE_MAX: TSmallintField;
    cdsFaixaVALOR_PLANO: TFloatField;
    cdsFaixaDESCONTO: TFloatField;
    cdsFaixaUSO: TStringField;
    sdsFaixaCODFAIXA: TIntegerField;
    sdsFaixaDESCRICAO: TStringField;
    sdsFaixaIDADE_MIN: TSmallintField;
    sdsFaixaIDADE_MAX: TSmallintField;
    sdsFaixaVALOR_PLANO: TFloatField;
    sdsFaixaDESCONTO: TFloatField;
    sdsFaixaUSO: TStringField;
    sds_video: TSQLDataSet;
    sds_parametroLOGIN: TStringField;
    sds_parametroSENHA: TStringField;
    sds_parametroPERFIL: TStringField;
    sds_parametroCODUSUARIO: TIntegerField;
    dsp_video: TDataSetProvider;
    cds_video: TClientDataSet;
    cds_parametroLOGIN: TStringField;
    cds_parametroSENHA: TStringField;
    cds_parametroPERFIL: TStringField;
    cds_parametroCODUSUARIO: TIntegerField;
    sds_videoMICRO: TStringField;
    sds_videoP1: TStringField;
    sds_videoP2: TStringField;
    cds_videoMICRO: TStringField;
    cds_videoP1: TStringField;
    cds_videoP2: TStringField;
    SQLDataSet2MICRO: TStringField;
    SQLDataSet2P1: TStringField;
    SQLDataSet2P2: TStringField;
    cds_UsuarioMICRO: TStringField;
    cds_UsuarioP1: TStringField;
    cds_UsuarioP2: TStringField;
    usuario: TSQLDataSet;
    usuarioLOGIN: TStringField;
    usuarioSENHA: TStringField;
    usuarioPERFIL: TStringField;
    usuarioCODUSUARIO: TIntegerField;
    usuarioMICRO: TStringField;
    usuarioP1: TStringField;
    usuarioP2: TStringField;
    sds_LoginUSUARIO: TStringField;
    cds_LoginUSUARIO: TStringField;
    SQl: TSQLConnection;
    dsp_aluno: TDataSetProvider;
    cds_aluno: TClientDataSet;
    cds_alunoCODCLIENTE: TIntegerField;
    cds_alunoNOMECLIENTE: TStringField;
    cds_alunoRAZAOSOCIAL: TStringField;
    cds_alunoCONTATO: TStringField;
    cds_alunoTIPOFIRMA: TSmallintField;
    cds_alunoCPF: TStringField;
    cds_alunoCNPJ: TStringField;
    cds_alunoINSCESTADUAL: TStringField;
    cds_alunoRG: TStringField;
    cds_alunoSEGMENTO: TSmallintField;
    cds_alunoREGIAO: TSmallintField;
    cds_alunoLIMITECREDITO: TFloatField;
    cds_alunoDATACADASTRO: TDateField;
    cds_alunoCODUSUARIO: TIntegerField;
    cds_alunoSTATUS: TSmallintField;
    cds_alunoHOMEPAGE: TStringField;
    cds_alunoPRAZORECEBIMENTO: TSmallintField;
    cds_alunoPRAZOENTREGA: TSmallintField;
    cds_alunoCODBANCO: TSmallintField;
    cds_alunoBASE_ICMS: TSmallintField;
    cds_alunoDATANASC: TDateField;
    cds_alunoCONTA_CLIENTE: TStringField;
    cds_alunoOBS: TStringField;
    cds_alunoTEM_IE: TStringField;
    cds_alunoDATARESC: TDateField;
    cds_alunoNOMEMAE: TStringField;
    cds_alunoSEXO: TStringField;
    cds_alunoFORMA_CORRESPOND: TStringField;
    cds_alunoGRUPO_CLIENTE: TStringField;
    cds_alunoCODINCLUCANC: TIntegerField;
    cds_alunoEXIST_COBERT: TStringField;
    cds_alunoEXISTCOPART: TStringField;
    cds_alunoDATAREINC: TDateField;
    cds_alunoGERAAVISO: TStringField;
    cds_alunoGERAENV: TStringField;
    cds_alunoGERABOL: TStringField;
    cds_alunoEMVIAGEM: TStringField;
    cds_alunoDTAALTERA: TDateField;
    cds_alunoSERIELETRA: TStringField;
    cds_alunoSERIE: TStringField;
    cds_alunoRA: TStringField;
    cds_alunoCURSO: TStringField;
    cds_alunoIP: TStringField;
    cds_alunoN_CONTRATO: TStringField;
    cds_alunoMAC: TStringField;
    cds_alunoMARCA: TStringField;
    cds_alunoBANDA_UPLOAD: TStringField;
    cds_alunoBANDA_DOWLOAD: TStringField;
    cds_alunoTORRE_CONECCAO: TStringField;
    cds_alunoCOD_FAIXA: TIntegerField;
    cds_alunoDESCONTO: TFloatField;
    cds_alunoMENSALIDADE: TFloatField;
    cds_alunoANUIDADE: TFloatField;
    cds_alunoPARCELA: TIntegerField;
    cds_alunoPARCELAGERADAS: TIntegerField;
    cds_alunoNUMERO: TIntegerField;
    cds_alunoDATANASCIMENTO: TSQLTimeStampField;
    cds_alunoANOLETIVO: TStringField;
    cds_alunoSITUACAOESCOLAR: TStringField;
    cds_alunoRGMAE: TStringField;
    cds_alunoCPFMAE: TStringField;
    cds_alunoPAI: TStringField;
    cds_alunoRGPAI: TStringField;
    cds_alunoCPFPAI: TStringField;
    cds_alunoLANCADOCLASSE: TIntegerField;
    cds_alunoTRANSPORTE: TStringField;
    cds_alunoCIDADENASC: TStringField;
    cds_alunoUFNASC: TStringField;
    cds_alunoNACIONALIDADE: TStringField;
    cds_alunoCERTIDAONASCNUM: TStringField;
    cds_alunoLIVRONASC: TStringField;
    cds_alunoFLLIVRONASC: TStringField;
    cds_alunoLOCALTRABPAI: TStringField;
    cds_alunoLOCALTRABMAE: TStringField;
    cds_alunoTELTRABPAI: TStringField;
    cds_alunoTELTRABMAE: TStringField;
    cds_alunoINFONECESSARIAS: TStringField;
    cds_alunoCARTEIRAVACINACAO: TStringField;
    cds_alunoRAPRODESP: TStringField;
    cds_alunoLOCALTRABALUNO: TStringField;
    cds_alunoTELTRABALUNO: TStringField;
    cds_alunoRAPROD: TStringField;
    cds_alunoCERT_NAS_COMARCA: TStringField;
    cds_alunoCERT_NAS_UF: TStringField;
    cds_alunoCERT_NAS_MUNICIPIO: TStringField;
    cds_alunoCERT_NAS_DISTRITO: TStringField;
    cds_alunoCERT_NAS_SUBDISTRITO: TStringField;
    cds_alunoDIVERSO1: TStringField;
    cds_alunoDIVERSO2: TStringField;
    cds_alunoDATAEMISSAORG: TDateField;
    cds_alunoESTADORG: TStringField;
    cds_alunoCOMUNICAALUNO: TStringField;
    cds_alunoFONEMAE: TStringField;
    cds_alunoCELULARMAE: TStringField;
    cds_alunoCOMUNICAMAE: TStringField;
    cds_alunoFONEPAI: TStringField;
    cds_alunoCELULARPAI: TStringField;
    cds_alunoCOMUNICAPAI: TStringField;
    cds_alunoVALOR_MATRICULA: TFloatField;
    cds_alunoDATATRANSF: TDateField;
    cds_alunoCOR_RACA: TStringField;
    cds_alunoPERIODO: TStringField;
    cds_alunoFOTO: TStringField;
    cds_alunoDATA_MATRICULA: TSQLTimeStampField;
    sds_aluno: TSQLDataSet;
    sds_alunoCODCLIENTE: TIntegerField;
    sds_alunoNOMECLIENTE: TStringField;
    sds_alunoRAZAOSOCIAL: TStringField;
    sds_alunoCONTATO: TStringField;
    sds_alunoTIPOFIRMA: TSmallintField;
    sds_alunoCPF: TStringField;
    sds_alunoCNPJ: TStringField;
    sds_alunoINSCESTADUAL: TStringField;
    sds_alunoRG: TStringField;
    sds_alunoSEGMENTO: TSmallintField;
    sds_alunoREGIAO: TSmallintField;
    sds_alunoLIMITECREDITO: TFloatField;
    sds_alunoDATACADASTRO: TDateField;
    sds_alunoCODUSUARIO: TIntegerField;
    sds_alunoSTATUS: TSmallintField;
    sds_alunoHOMEPAGE: TStringField;
    sds_alunoPRAZORECEBIMENTO: TSmallintField;
    sds_alunoPRAZOENTREGA: TSmallintField;
    sds_alunoCODBANCO: TSmallintField;
    sds_alunoBASE_ICMS: TSmallintField;
    sds_alunoDATANASC: TDateField;
    sds_alunoCONTA_CLIENTE: TStringField;
    sds_alunoOBS: TStringField;
    sds_alunoTEM_IE: TStringField;
    sds_alunoDATARESC: TDateField;
    sds_alunoNOMEMAE: TStringField;
    sds_alunoSEXO: TStringField;
    sds_alunoFORMA_CORRESPOND: TStringField;
    sds_alunoGRUPO_CLIENTE: TStringField;
    sds_alunoCODINCLUCANC: TIntegerField;
    sds_alunoEXIST_COBERT: TStringField;
    sds_alunoEXISTCOPART: TStringField;
    sds_alunoDATAREINC: TDateField;
    sds_alunoGERAAVISO: TStringField;
    sds_alunoGERAENV: TStringField;
    sds_alunoGERABOL: TStringField;
    sds_alunoEMVIAGEM: TStringField;
    sds_alunoDTAALTERA: TDateField;
    sds_alunoSERIELETRA: TStringField;
    sds_alunoSERIE: TStringField;
    sds_alunoRA: TStringField;
    sds_alunoCURSO: TStringField;
    sds_alunoIP: TStringField;
    sds_alunoN_CONTRATO: TStringField;
    sds_alunoMAC: TStringField;
    sds_alunoMARCA: TStringField;
    sds_alunoBANDA_UPLOAD: TStringField;
    sds_alunoBANDA_DOWLOAD: TStringField;
    sds_alunoTORRE_CONECCAO: TStringField;
    sds_alunoCOD_FAIXA: TIntegerField;
    sds_alunoDESCONTO: TFloatField;
    sds_alunoMENSALIDADE: TFloatField;
    sds_alunoANUIDADE: TFloatField;
    sds_alunoPARCELA: TIntegerField;
    sds_alunoPARCELAGERADAS: TIntegerField;
    sds_alunoNUMERO: TIntegerField;
    sds_alunoDATANASCIMENTO: TSQLTimeStampField;
    sds_alunoANOLETIVO: TStringField;
    sds_alunoSITUACAOESCOLAR: TStringField;
    sds_alunoRGMAE: TStringField;
    sds_alunoCPFMAE: TStringField;
    sds_alunoPAI: TStringField;
    sds_alunoRGPAI: TStringField;
    sds_alunoCPFPAI: TStringField;
    sds_alunoLANCADOCLASSE: TIntegerField;
    sds_alunoTRANSPORTE: TStringField;
    sds_alunoCIDADENASC: TStringField;
    sds_alunoUFNASC: TStringField;
    sds_alunoNACIONALIDADE: TStringField;
    sds_alunoCERTIDAONASCNUM: TStringField;
    sds_alunoLIVRONASC: TStringField;
    sds_alunoFLLIVRONASC: TStringField;
    sds_alunoLOCALTRABPAI: TStringField;
    sds_alunoLOCALTRABMAE: TStringField;
    sds_alunoTELTRABPAI: TStringField;
    sds_alunoTELTRABMAE: TStringField;
    sds_alunoINFONECESSARIAS: TStringField;
    sds_alunoCARTEIRAVACINACAO: TStringField;
    sds_alunoRAPRODESP: TStringField;
    sds_alunoLOCALTRABALUNO: TStringField;
    sds_alunoTELTRABALUNO: TStringField;
    sds_alunoRAPROD: TStringField;
    sds_alunoCERT_NAS_COMARCA: TStringField;
    sds_alunoCERT_NAS_UF: TStringField;
    sds_alunoCERT_NAS_MUNICIPIO: TStringField;
    sds_alunoCERT_NAS_DISTRITO: TStringField;
    sds_alunoCERT_NAS_SUBDISTRITO: TStringField;
    sds_alunoDIVERSO1: TStringField;
    sds_alunoDIVERSO2: TStringField;
    sds_alunoDATAEMISSAORG: TDateField;
    sds_alunoESTADORG: TStringField;
    sds_alunoCOMUNICAALUNO: TStringField;
    sds_alunoFONEMAE: TStringField;
    sds_alunoCELULARMAE: TStringField;
    sds_alunoCOMUNICAMAE: TStringField;
    sds_alunoFONEPAI: TStringField;
    sds_alunoCELULARPAI: TStringField;
    sds_alunoCOMUNICAPAI: TStringField;
    sds_alunoVALOR_MATRICULA: TFloatField;
    sds_alunoDATATRANSF: TDateField;
    sds_alunoCOR_RACA: TStringField;
    sds_alunoPERIODO: TStringField;
    sds_alunoFOTO: TStringField;
    sds_alunoDATA_MATRICULA: TSQLTimeStampField;
    sdsResponsavel: TSQLDataSet;
    dspResponsavel: TDataSetProvider;
    cdsResponsavel: TClientDataSet;
    cdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    cdsResponsavelRESPONSAVEL: TStringField;
    cdsResponsavelENDERECO: TStringField;
    cdsResponsavelBAIRRO: TStringField;
    cdsResponsavelCEP: TStringField;
    cdsResponsavelCIDADE: TStringField;
    cdsResponsavelUF: TStringField;
    cdsResponsavelTIPO_RESPONSAVEL: TStringField;
    cdsResponsavelCPF: TStringField;
    cdsResponsavelRG: TStringField;
    cdsResponsavelTELEFONE: TStringField;
    cdsResponsavelTELEFONE1: TStringField;
    cdsResponsavelEMAIL: TStringField;
    cdsResponsavelLOCALTRABALHO: TStringField;
    cdsResponsavelCAIXAPOSTAL: TStringField;
    cdsResponsavelTELEFONE_COMERCIAL: TStringField;
    sdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    sdsResponsavelRESPONSAVEL: TStringField;
    sdsResponsavelENDERECO: TStringField;
    sdsResponsavelBAIRRO: TStringField;
    sdsResponsavelCEP: TStringField;
    sdsResponsavelCIDADE: TStringField;
    sdsResponsavelUF: TStringField;
    sdsResponsavelTIPO_RESPONSAVEL: TStringField;
    sdsResponsavelCPF: TStringField;
    sdsResponsavelRG: TStringField;
    sdsResponsavelTELEFONE: TStringField;
    sdsResponsavelTELEFONE1: TStringField;
    sdsResponsavelEMAIL: TStringField;
    sdsResponsavelLOCALTRABALHO: TStringField;
    sdsResponsavelCAIXAPOSTAL: TStringField;
    sdsResponsavelTELEFONE_COMERCIAL: TStringField;
    sds_alunoCODRESPONSAVEL: TIntegerField;
    cds_alunoCODRESPONSAVEL: TIntegerField;
    sdsSerie: TSQLDataSet;
    dspSerie: TDataSetProvider;
    TableSeries: TClientDataSet;
    TableSeriesSERIELETRA: TStringField;
    TableSeriesTURNO: TStringField;
    TableSeriesTIPOENSINO: TStringField;
    TableSeriesSERIE: TStringField;
    TableSeriesDESC_CLASSE: TStringField;
    sdsPeriodo: TSQLDataSet;
    dspPeriodo: TDataSetProvider;
    cdsPeriodo: TClientDataSet;
    cdsPeriodoIDPERIODO: TIntegerField;
    cdsPeriodoPERIODO: TStringField;
    cdsPeriodoNOTAFINAL: TStringField;
    sdsPeriodoIDPERIODO: TIntegerField;
    sdsPeriodoPERIODO: TStringField;
    sdsPeriodoNOTAFINAL: TStringField;
    sdsTipoSerie: TSQLDataSet;
    sdsTipoSerieTIPOSERIE: TStringField;
    sdsTipoSerieTIPOENSINO: TStringField;
    sdsTipoSerieCURSO: TStringField;
    sdsTipoSerieMENSALIDADE: TFloatField;
    sdsTipoSerieANUIDADE: TFloatField;
    sdsTipoSerieSERIE: TStringField;
    dspTipoSerie: TDataSetProvider;
    TableTipoSerie: TClientDataSet;
    TableTipoSerieTIPOSERIE: TStringField;
    TableTipoSerieTIPOENSINO: TStringField;
    TableTipoSerieCURSO: TStringField;
    TableTipoSerieMENSALIDADE: TFloatField;
    TableTipoSerieANUIDADE: TFloatField;
    TableTipoSerieSERIE: TStringField;
    sdsMaterias: TSQLDataSet;
    dspMaterias: TDataSetProvider;
    TableMaterias: TClientDataSet;
    TableMateriasMATERIAS: TStringField;
    TableMateriasIDMATERIAS: TIntegerField;
    TableMateriasTIPOENSINO: TStringField;
    sdsClasse: TSQLDataSet;
    dspClasse: TDataSetProvider;
    cdsClasse: TClientDataSet;
    sdsProc: TSQLDataSet;
    dspProc: TDataSetProvider;
    cdsProc: TClientDataSet;
    sdsBusca: TSQLDataSet;
    dspBusca: TDataSetProvider;
    cdsBusca: TClientDataSet;
    cdsClasseSERIELETRA: TStringField;
    cdsClasseRA: TStringField;
    cdsClasseIDCLASSEALUNO: TIntegerField;
    cdsClasseSERIE: TStringField;
    cdsClasseNUMERO: TSmallintField;
    cdsClasseNOME: TStringField;
    sdsClasseSERIELETRA: TStringField;
    sdsClasseRA: TStringField;
    sdsClasseIDCLASSEALUNO: TIntegerField;
    sdsClasseSERIE: TStringField;
    sdsClasseNUMERO: TSmallintField;
    sdsClasseNOME: TStringField;
    sds_ag: TSQLDataSet;
    sds_agCOD_AGENDAMENTO: TIntegerField;
    sds_agCODCLIENTE: TIntegerField;
    sds_agASSUNTO: TStringField;
    sds_agHORA: TTimeField;
    sds_agDATA: TDateField;
    sds_agFONE: TStringField;
    sds_agNOMECLIENTE: TStringField;
    sds_agSTATUS: TStringField;
    sds_agCODVENDA: TIntegerField;
    sds_agCODUSUARIO: TIntegerField;
    dsp_ag: TDataSetProvider;
    cds_ag: TClientDataSet;
    cds_agCOD_AGENDAMENTO: TIntegerField;
    cds_agCODCLIENTE: TIntegerField;
    cds_agASSUNTO: TStringField;
    cds_agHORA: TTimeField;
    cds_agDATA: TDateField;
    cds_agFONE: TStringField;
    cds_agNOMECLIENTE: TStringField;
    cds_agSTATUS: TStringField;
    cds_agCODVENDA: TIntegerField;
    cds_agCODUSUARIO: TIntegerField;
    ag_dia: TSQLDataSet;
    sds_crRA: TStringField;
    cds_crRA: TStringField;
    s_7CODREDUZIDO: TStringField;
    cds_7_contasCODREDUZIDO: TStringField;
    sbuscacli: TSQLDataSet;
    IntegerField2: TIntegerField;
    StringField7: TStringField;
    StringField11: TStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    StringField12: TStringField;
    DateField1: TDateField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    IntegerField3: TIntegerField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    dbuscacli: TDataSetProvider;
    cbuscacli: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField31: TStringField;
    StringField32: TStringField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    StringField33: TStringField;
    DateField2: TDateField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    SmallintField7: TSmallintField;
    SmallintField8: TSmallintField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    IntegerField5: TIntegerField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    dtsrcbuscacli: TDataSource;
    s_1_contaCODREDUZIDO: TStringField;
    cds_1_contasCODREDUZIDO: TStringField;
    proc_transp: TSQLClientDataSet;
    proc_transpCODTRANSP: TIntegerField;
    proc_transpNOMETRANSP: TStringField;
    proc_transpPLACATRANSP: TStringField;
    proc_transpCNPJ_CPF: TStringField;
    proc_transpEND_TRANSP: TStringField;
    proc_transpCIDADE_TRANSP: TStringField;
    proc_transpUF_VEICULO_TRANSP: TStringField;
    proc_transpUF_TRANSP: TStringField;
    proc_transpFRETE: TStringField;
    proc_transpINSCRICAOESTADUAL: TStringField;
    proc_transpCORPONF1: TStringField;
    proc_transpCORPONF2: TStringField;
    proc_transpCORPONF3: TStringField;
    proc_transpCORPONF4: TStringField;
    proc_transpCORPONF5: TStringField;
    proc_transpCORPONF6: TStringField;
    sdsFaixaPARCELA: TIntegerField;
    sdsFaixaVALORPARCELA: TFloatField;
    cdsFaixaPARCELA: TIntegerField;
    cdsFaixaVALORPARCELA: TFloatField;
    sds_familiaMARCA: TStringField;
    cds_familiaMARCA: TStringField;
    sdsLog: TSQLDataSet;
    sdsLogID_LOG: TIntegerField;
    sdsLogTABELA: TStringField;
    sdsLogDATA: TDateField;
    sdsLogUSUARIO: TStringField;
    sdsLogMICRO: TStringField;
    sdsLogHORA: TTimeField;
    sdsLogCAMPO1: TStringField;
    sdsLogCAMPO2: TStringField;
    sdsLogCAMPO3: TStringField;
    sdsLogCAMPO4: TStringField;
    sdsLogDATA_SET: TMemoField;
    cdsLog: TClientDataSet;
    cdsLogID_LOG: TIntegerField;
    cdsLogTABELA: TStringField;
    cdsLogDATA: TDateField;
    cdsLogUSUARIO: TStringField;
    cdsLogMICRO: TStringField;
    cdsLogHORA: TTimeField;
    cdsLogCAMPO1: TStringField;
    cdsLogCAMPO2: TStringField;
    cdsLogCAMPO3: TStringField;
    cdsLogCAMPO4: TStringField;
    cdsLogDATA_SET: TMemoField;
    dspLog: TDataSetProvider;
    scds_produto_procPRECOMEDIO: TBCDField;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    dsNatureza: TDataSource;
    sdsNatureza: TSQLDataSet;
    cdsNaturezaCODNATUREZA: TSmallintField;
    cdsNaturezaDESCNATUREZA: TStringField;
    cdsNaturezaGERATITULO: TSmallintField;
    cdsNaturezaTIPOTITULO: TSmallintField;
    cdsNaturezaTIPOMOVIMENTO: TSmallintField;
    cdsNaturezaBAIXAMOVIMENTO: TSmallintField;
    sdsFaixaCODIGOS: TIntegerField;
    cdsFaixaCODIGOS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_produtoNewRecord(DataSet: TDataSet);
    procedure scds_Mov_Det_procCalcFields(DataSet: TDataSet);
    procedure cds_crSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cds_recReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_crFORMARECEBIMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_4_pagar1NewRecord(DataSet: TDataSet);
    procedure cds_4_pagar1FORMAPAGAMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_4_pagarNewRecord(DataSet: TDataSet);
    procedure cds_4_pagarSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cds_4_pagarFORMAPAGAMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_romaneioNewRecord(DataSet: TDataSet);
    procedure cds_UsuarioNewRecord(DataSet: TDataSet);
    procedure cdsFaixaBeforePost(DataSet: TDataSet);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure CDSBeforePost(DataSet: TDataSet);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    { Private declarations }
    procedure verifiSeExisteCampo(nTabela, nCampo, nCampoTipo: string);
    procedure verificaSeExisteTabela(nTabela, nCampo, nCampoTipo: string);
  public
    { Public declarations }
    moduloUsado, var_teste, GrupoMarca : string;
    Function Arredondar(value: double;casas : integer): double;
    Function NomeComputador: string;
  end;

var
  DM: TDM;
  dbxconec: TStringList;
  usuario, varform, nome_user, str_relatorio, perfil, varusuario : String;
  str_valor, conta_pl, tipo_empresa, RA : String;
  videoW, videoH, codprod, MICRO, procprod : string;
  altura, largura, cod_cli, codmovdet, usulog: Integer;
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;


implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
//var index: integer;
begin
  MICRO := NomeComputador;
 // LOGADO := '';
 SQl.Connected := False;
 SQl.LoadParamsFromIniFile('dbxconnections.ini');
 sqlsisAdimin.Connected := False;
 sqlsisAdimin.LoadParamsFromIniFile('dbxconnections.ini');
 sqlsisAdimin.LibraryName := 'dbexpUIBfire15.dll';
 sqlsisAdimin.VendorLib := 'FBCLIENT.DLL';
 dbxconec := TStringList.Create;
 try
   dbxconec.LoadFromFile('dbxconnections.ini');
   str_relatorio := dbxconec[14];
   str_relatorio := copy(str_relatorio,16,length(str_relatorio));
 finally
   dbxconec.Free;
 end;
 if cds_parametro.Active then
   cds_parametro.Close;
 cds_parametro.Params[0].AsString := 'EMPRESA';
 cds_parametro.Open;
 moduloUsado := dm.cds_parametroD1.AsString;
 if cds_parametro.Active then
   cds_parametro.Close;
 cds_parametro.Params[0].AsString := 'GRUPOMARCA';
 cds_parametro.Open;
 GrupoMarca := dm.cds_parametroDADOS.AsString;

 { Adiciona CAMPO a uma tabela se não existir}
  // verifiSeExisteCampo('CLIENTES', 'RAZAOSOCIAL', 'VARCHAR(60)');
 { Adiciona Tabela se não existir}
  // verificaSeExisteTabela('CLIENTESXX', 'TESTE1', 'INTEGER');
end;

procedure TDM.cds_produtoNewRecord(DataSet: TDataSet);
begin
  cds_produtoVALORUNITARIOATUAL.AsFloat := 0;
  cds_produtoVALORUNITARIOANTERIOR.AsFloat := 0;
  cds_produtoESTOQUEMAXIMO.AsFloat := 0;
  cds_produtoESTOQUEATUAL.AsFloat := 0;
  cds_produtoESTOQUEREPOSICAO.AsFloat := 0;
  cds_produtoESTOQUEMINIMO.AsFloat := 0;
  cds_produtoICMS.AsFloat := 0;
  cds_produtoIPI.AsFloat := 0;
  cds_produtoBASE_ICMS.AsFloat := 100;
  cds_produtoQTDE_PCT.AsFloat := 1;
  cds_produtoRATEIO.AsString := 'NÃO';
  cds_produtoLotes.AsString := 'N';
end;

procedure TDM.scds_Mov_Det_procCalcFields(DataSet: TDataSet);
begin
  scds_Mov_Det_procVALORTOT.AsFloat:=
  scds_Mov_Det_procPRECO.AsFloat*scds_Mov_Det_procQUANTIDADE.AsFloat;
end;

procedure TDM.cds_crSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.AsString = '5-' then
    begin
     Text:='PENDENTE';
     exit;
    end;
  if Sender.AsString = '6-' then
    begin
     Text:='PENDENTE CONTABILIZADO';
     exit;
    end;
  if Sender.AsString = '7-' then
    begin
     Text:='RECEBIDO';
     exit;
    end;
  if Sender.AsString = '1-' then
    begin
     Text:='CHEQUE-PRÉ';
     exit;
    end;
  if Sender.AsString = '4-' then
    begin
     Text:='CARTÓRIO';
     exit;
    end;
  if Sender.AsString = '2-' then
    begin
     Text:='BOLETO';
     exit;
    end;
  if Sender.AsString = '3-' then
    begin
     Text:='CANCELADO';
     exit;
    end;
  if Sender.AsString = '8-' then
    begin
     Text:='SUSPENSO';
     exit;
    end;

  if Sender.AsString = '9-' then
    begin
     Text:='DUPLICATA';
     exit;
    end;
  if Sender.AsString = '13' then
    begin
     Text:='CARTÃO CRÉDITO';
     exit;
    end;

end;

procedure TDM.cds_recReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
//  TraduzExceptionDt(E.Message, Dataset);
end;

procedure TDM.cds_crFORMARECEBIMENTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '1' then
    begin
     Text:='1-CHEQUE';
     exit;
    end;
  if Sender.AsString = '2' then
    begin
     Text:='2-DINHEIRO';
     exit;
    end;
  if Sender.AsString = '3' then
    begin
     Text:='3-DEPÓSITO';
     exit;
    end;

  if Sender.AsString = '4' then
    begin
     Text:='4-PRÉ-DATADO';
     exit;
    end;
  if Sender.AsString = '5' then
    begin
     Text:='5-CARTÃO';
     exit;
    end;
  if Sender.AsString = '6' then
    begin
     Text:='6-CANCELADO';
     exit;
    end;
  if Sender.AsString = '7' then
    begin
     Text:='7-SUSPENSO';
     exit;
    end;
  if Sender.AsString = '8' then
    begin
     Text:='8-CARTÓRIO';
     exit;
    end;

end;

procedure TDM.cds_4_pagar1NewRecord(DataSet: TDataSet);
begin
  cds_4_pagarDATASISTEMA.AsDateTime := now;
  cds_4_pagarVALORRECEBIDO.AsFloat := 0;
  cds_4_pagarJUROS.AsFloat := 0;
  cds_4_pagarDESCONTO.AsFloat := 0;
  cds_4_pagarPERDA.AsFloat := 0;
  cds_4_pagarTROCA.AsFloat := 0;
  cds_4_pagarFUNRURAL.AsFloat := 0;
  cds_4_pagarOUTRO_CREDITO.AsFloat := 0;
  cds_4_pagarOUTRO_DEBITO.AsFloat := 0;
end;

procedure TDM.cds_4_pagar1FORMAPAGAMENTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '1' then
    begin
     Text:='1-CHEQUE';
     exit;
    end;
  if Sender.AsString = '2' then
    begin
     Text:='2-DINHEIRO';
     exit;
    end;
  if Sender.AsString = '3' then
    begin
     Text:='3-DEPÓSITO';
     exit;
    end;

  if Sender.AsString = '4' then
    begin
     Text:='4-PRÉ-DATADO';
     exit;
    end;
  if Sender.AsString = '5' then
    begin
     Text:='5-CARTÃO';
     exit;
    end;
  if Sender.AsString = '6' then
    begin
     Text:='6-CANCELADO';
     exit;
    end;
  if Sender.AsString = '7' then
    begin
     Text:='7-SUSPENSO';
     exit;
    end;
  if Sender.AsString = '8' then
    begin
     Text:='8-CARTÓRIO';
     exit;
    end;
end;

procedure TDM.cds_4_pagarNewRecord(DataSet: TDataSet);
begin
  cds_4_pagarDATASISTEMA.AsDateTime := now;
  cds_4_pagarVALORRECEBIDO.AsFloat := 0;
  cds_4_pagarJUROS.AsFloat := 0;
  cds_4_pagarDESCONTO.AsFloat := 0;
  cds_4_pagarPERDA.AsFloat := 0;
  cds_4_pagarTROCA.AsFloat := 0;
  cds_4_pagarFUNRURAL.AsFloat := 0;
  cds_4_pagarOUTRO_CREDITO.AsFloat := 0;
  cds_4_pagarOUTRO_DEBITO.AsFloat := 0;
end;

procedure TDM.cds_4_pagarSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.AsString = '5-' then
    begin
     Text:='PENDENTE';
     exit;
    end;
  if Sender.AsString = '6-' then
    begin
     Text:='PENDENTE CONTABILIZADO';
     exit;
    end;
  if Sender.AsString = '7-' then
    begin
     Text:='PAGO';
     exit;
    end;
  if Sender.AsString = '1-' then
    begin
     Text:='AGUARDANDO';
     exit;
    end;
  if Sender.AsString = '4-' then
    begin
     Text:='CARTÓRIO';
     exit;
    end;
  if Sender.AsString = '2-' then
    begin
     Text:='ANULADO';
     exit;
    end;
  if Sender.AsString = '3-' then
    begin
     Text:='CANCELADO';
     exit;
    end;
  if Sender.AsString = '8-' then
    begin
     Text:='SUSPENSO';
     exit;
    end;
end;

procedure TDM.cds_4_pagarFORMAPAGAMENTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '1' then
    begin
     Text:='1-CHEQUE';
     exit;
    end;
  if Sender.AsString = '2' then
    begin
     Text:='2-DINHEIRO';
     exit;
    end;
  if Sender.AsString = '3' then
    begin
     Text:='3-DEPÓSITO';
     exit;
    end;

  if Sender.AsString = '4' then
    begin
     Text:='4-PRÉ-DATADO';
     exit;
    end;
  if Sender.AsString = '5' then
    begin
     Text:='5-CARTÃO';
     exit;
    end;
  if Sender.AsString = '6' then
    begin
     Text:='6-CANCELADO';
     exit;
    end;
  if Sender.AsString = '7' then
    begin
     Text:='7-SUSPENSO';
     exit;
    end;
  if Sender.AsString = '8' then
    begin
     Text:='8-CARTÓRIO';
     exit;
    end;
end;


function TDM.Arredondar(value: double; casas: integer): double;
Var
  fracao :real;//, Total:real;
  decimal:string;
begin
try
  fracao:=Frac(value); //Retorna a parte fracionária de um número
  if (fracao > 0.001) then
  begin
    decimal:=(RightStr(floattostr(fracao),length(floattostr(fracao))-2)); //decimal recebe a parte decimal
    //enquanto o tamanho da variavel decimal for maior que o número de casas faça
    while length(decimal) > casas do
    begin
      //Verifica se o último digito da variável decimal é maior que 5
      if strtoint(RightStr(decimal,1))>5 then
      begin
        //Descarta o último digito da variável Decimal
        decimal:=leftstr(decimal,length(decimal)-1);
        //Soma o valor número da variavel decimal + 1
        decimal:=floattostr(strtofloat(decimal) + 1);
      end
      else
        decimal:=leftstr(decimal,length(decimal)-1); //Descarta o último digito da variável Decimal
      end;
    result:=(int(value) + (strtofloat(decimal)/100)); //devolve o resultado para a função
  end
  else
    result := value;
  except
      Raise Exception.Create('Erro no arredondamento');
  end;

end;


procedure TDM.cds_romaneioNewRecord(DataSet: TDataSet);
begin
  cds_romaneioCODROMANEIO.AsInteger := ClientDataSet1CODROMANEIO.AsInteger;
end;


procedure TDM.cds_UsuarioNewRecord(DataSet: TDataSet);
begin
  cds_UsuarioP1.AsString := '800';
  cds_UsuarioP2.AsString := '600';
end;

function TDM.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TDM.cdsFaixaBeforePost(DataSet: TDataSet);
begin
 // cdsFaixaVALORPARCELA.Value := cdsFaixaVALOR_PLANO.Value / cdsFaixaPARCELA.Value;
end;

procedure TDM.verifiSeExisteCampo(nTabela, nCampo, nCampoTipo: string);
 var
  campos:TStringList;
  TD: TTransactionDesc;
begin
  campos := TStringList.Create;
  sqlSisAdimin.Connected := True;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  sqlsisAdimin.StartTransaction(TD);
  //Atribui  StringList CAMPO todos os nomes de campos da sua tabela
  sqlSisAdimin.GetFieldNames(nTabela, campos);
  try
    try
      //Verifica se o campo a criar no existe
      if (campos.IndexOf(nCampo) = -1) then
      begin
        sqlsisAdimin.ExecuteDirect('alter table ' + nTabela + ' add ' +
          nCampo + ' ' + nCampoTipo);
        //Lembrando que qualquer tipo de dado pode ser utilizado na linha acima
        sqlsisAdimin.Commit(TD);
      end;
    except
      sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para atualizar tabela ' + nTabela + ' campo : ' + nCampo, mtError, [mbOK], 0);
    end;
  finally
    campos.Free;
  end;

end;

procedure TDM.verificaSeExisteTabela(nTabela, nCampo, nCampoTipo: string);
 var
  campos:TStringList;
  TD: TTransactionDesc;
begin
  campos := TStringList.Create;
  sqlSisAdimin.Connected := True;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  sqlsisAdimin.StartTransaction(TD);
  //Atribui  StringList CAMPO todos os nomes de campos da sua tabela
  sqlSisAdimin.GetTableNames(campos, False);
  try
    try
      //Verifica se o campo a criar no existe
      if (campos.IndexOf(nTabela) = -1) then
      begin
        sqlsisAdimin.ExecuteDirect('create table ' + nTabela + '(' +
          nCampo + ' ' + nCampoTipo + ' not null primary key)');
        //Lembrando que qualquer tipo de dado pode ser utilizado na linha acima
        sqlsisAdimin.Commit(TD);
      end;
    except
      sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para criar tabela : ' + nTabela , mtError, [mbOK], 0);
    end;
  finally
    campos.Free;
  end;
end;


procedure TDM.CDSBeforePost(DataSet: TDataSet);
begin
  with DataSet as TClientDataSet do
  begin
    SetOptionalParam('USUARIO',varusuario,True);
    SetOptionalParam('MICRO',NomeComputador,True);
  end;
end;

procedure TDM.DSPGetProproperties(Sender: TObject; DataSet: TDataSet;
  out Properties: OleVariant);
begin
  { Declare Variants no uses }
 Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO',varUsuario,True]);
  Properties[1] := VarArrayOf(['MICRO',NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TDM.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
   str, str_For, strOriginal :string;
   i : Integer;
begin
  str := '';
  str_For := '';
  strOriginal := '';
  with DataSet do
  begin
    SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
      //aqui salvo na tabela
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA, data_set)';
      str := str +  ' VALUES(';
      str := str + '''' + GetOptionalParam('MICRO') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('TABELA') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('USUARIO') + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('mm/dd/yy',Date) + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('hh/nn/ss',Time) + '''';
      str := str + ', ';
      for i := 0 to dataset.FieldCount - 1 do
      begin
        //aqui se deletar o arquivo
        if (dataset.UpdateStatus = usDeleted) then
        begin
           if (str_For = '') then
            str_for := '----Deletado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
        // aqui se modificar o arquivo
        if (dataset.UpdateStatus = usUnModified) then
        begin
           if (str_For = '') then
            str_for := '----Modificado----' + #13+#10;
             strOriginal := strOriginal + dataset.FieldDefList[i].Name;
             if (dataset.Fields[i].AsString <> '') then
               strOriginal := strOriginal + ': ' + dataset.Fields[i].AsString
             else
               strOriginal := strOriginal + ': Vazio';
           DataSet.Next;
           if (not dataset.Fields[i].IsNull) then
           begin
             if (dataset.Fields[i].AsString = '') then
               str_For := str_For + strOriginal +  ' -> Vazio; '+#13+#10
             else
               str_For := str_For + strOriginal +  ' -> ' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
           strOriginal := '';
           DataSet.First;
        end;
        // aqui se inserir um novo
        if (dataset.UpdateStatus = usInserted) then
        begin
           if (str_For = '') then
            str_for := '----Adicionado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + dataset.Fields[i].AsString + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      sqlsisAdimin.ExecuteDirect(str);
  end;
end;

end.
