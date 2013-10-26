unit UDMNF;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DBLocal, DBLocalS,
  rpcompobase, rpvclreport, DB, DBClient, Dialogs, Forms;

type
  TDMNF = class(TDataModule)
    sCliente: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    pCliente: TDataSetProvider;
    cCliente: TClientDataSet;
    cClienteCODCLIENTE: TIntegerField;
    cClienteNOMECLIENTE: TStringField;
    DtSrc: TDataSource;
    dCliente: TDataSource;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_MovimentoCNPJ: TStringField;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    sds_MovimentoCNPJ: TStringField;
    dsp_Movimento: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDESCPRODUTO: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetCODIGO: TStringField;
    sds_Mov_DetLOTES: TStringField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetCST: TStringField;
    sds_Mov_DetVLR_BASE: TFloatField;
    sds_Mov_DetCLASSIFIC_FISCAL: TStringField;
    sds_Mov_DetVLR_BASEICMS: TFloatField;
    sds_Mov_DetVALOR_ICMS: TFloatField;
    sds_Mov_DetCFOP: TStringField;
    sds_Mov_DetCSOSN: TStringField;
    sds_Mov_DetVALOR_DESCONTO: TFloatField;
    sds_Mov_DetFRETE: TFloatField;
    sds_Mov_DetICMS_SUBST: TFloatField;
    sds_Mov_DetICMS_SUBSTD: TFloatField;
    sds_Mov_DetVALOR_SEGURO: TFloatField;
    sds_Mov_DetVALOR_OUTROS: TFloatField;
    sds_Mov_DetPIPI: TFloatField;
    sds_Mov_DetVIPI: TFloatField;
    sds_Mov_DetNCM: TStringField;
    sds_Mov_DetSTATUS: TStringField;
    sds_Mov_DetII: TFloatField;
    sds_Mov_DetBCII: TFloatField;
    sds_Mov_DetOBS: TStringField;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detDESCPRODUTO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detCODIGO: TStringField;
    cds_Mov_detLOTES: TStringField;
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detCST: TStringField;
    cds_Mov_detVLR_BASE: TFloatField;
    cds_Mov_detCLASSIFIC_FISCAL: TStringField;
    cds_Mov_detVLR_BASEICMS: TFloatField;
    cds_Mov_detVALOR_ICMS: TFloatField;
    cds_Mov_detCFOP: TStringField;
    cds_Mov_detCSOSN: TStringField;
    cds_Mov_detVALOR_DESCONTO: TFloatField;
    cds_Mov_detFRETE: TFloatField;
    cds_Mov_detICMS_SUBST: TFloatField;
    cds_Mov_detICMS_SUBSTD: TFloatField;
    cds_Mov_detVALOR_SEGURO: TFloatField;
    cds_Mov_detVALOR_OUTROS: TFloatField;
    cds_Mov_detPIPI: TFloatField;
    cds_Mov_detVIPI: TFloatField;
    cds_Mov_detNCM: TStringField;
    cds_Mov_detSTATUS: TStringField;
    cds_Mov_detII: TFloatField;
    cds_Mov_detBCII: TFloatField;
    cds_Mov_detOBS: TStringField;
    cds_Mov_detTotalPedido: TAggregateField;
    DtSrc1: TDataSource;
    DtSrcVenda: TDataSource;
    cds_venda: TClientDataSet;
    cds_vendaCODMOVIMENTO: TIntegerField;
    cds_vendaCODCLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaBANCO_1: TStringField;
    cds_vendaCODVENDA: TIntegerField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaFORMARECEBIMENTO: TStringField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaCONTROLE: TStringField;
    cds_vendaOBS: TStringField;
    cds_vendadiferenca: TFloatField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_DESP: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
    dsp_venda: TDataSetProvider;
    sds_venda: TSQLDataSet;
    sds_vendaCODMOVIMENTO: TIntegerField;
    sds_vendaCODCLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaBANCO_1: TStringField;
    sds_vendaCODVENDA: TIntegerField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaFORMARECEBIMENTO: TStringField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaCONTROLE: TStringField;
    sds_vendaOBS: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_DESP: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    sUsuario: TSQLDataSet;
    sUsuarioCODUSUARIO: TSmallintField;
    sUsuarioNOMEUSUARIO: TStringField;
    pUsuario: TDataSetProvider;
    cUsuario: TClientDataSet;
    cUsuarioCODUSUARIO: TSmallintField;
    cUsuarioNOMEUSUARIO: TStringField;
    dUsuario: TDataSource;
    DataSource1: TDataSource;
    cds_cm: TClientDataSet;
    cds_cmCOD_COMISSAO: TIntegerField;
    cds_cmCODIGO: TStringField;
    cds_cmDESCRICAO: TStringField;
    cds_cmINDICE: TStringField;
    cds_cmLB: TStringField;
    cds_cmCM: TStringField;
    dsp_cm: TDataSetProvider;
    sds_cm: TSQLDataSet;
    sds_cmCOD_COMISSAO: TIntegerField;
    sds_cmCODIGO: TStringField;
    sds_cmDESCRICAO: TStringField;
    sds_cmINDICE: TStringField;
    sds_cmLB: TStringField;
    sds_cmCM: TStringField;
    sds_Veiculocli: TSQLDataSet;
    sds_VeiculocliCOD_VEICULO: TIntegerField;
    sds_VeiculocliCOD_CLIENTE: TIntegerField;
    sds_VeiculocliPLACA: TStringField;
    sds_VeiculocliMARCA_MODELO: TStringField;
    sds_VeiculocliTIPO: TStringField;
    sds_VeiculocliCOMBUSTIVEL: TStringField;
    sds_VeiculocliANO_FAB: TStringField;
    sds_VeiculocliANO_MOD: TStringField;
    sds_VeiculocliCOR: TStringField;
    dsp_Veiculocli: TDataSetProvider;
    cds_Veiculocli: TClientDataSet;
    cds_VeiculocliCOD_VEICULO: TIntegerField;
    cds_VeiculocliCOD_CLIENTE: TIntegerField;
    cds_VeiculocliPLACA: TStringField;
    cds_VeiculocliMARCA_MODELO: TStringField;
    cds_VeiculocliTIPO: TStringField;
    cds_VeiculocliCOMBUSTIVEL: TStringField;
    cds_VeiculocliANO_FAB: TStringField;
    cds_VeiculocliANO_MOD: TStringField;
    cds_VeiculocliCOR: TStringField;
    DataSource2: TDataSource;
    DtSrc_NF: TDataSource;
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
    cds_nfICMS: TFloatField;
    cds_nfREDUZICMS: TFloatField;
    cds_nfRAZAOSOCIAL: TStringField;
    cds_nfCNPJCLI: TStringField;
    cds_nfINSCCLI: TStringField;
    cds_nfLOGRADOURO: TStringField;
    cds_nfBAIRROCLI: TStringField;
    cds_nfCOMPLEMENTO: TStringField;
    cds_nfCIDADECLI: TStringField;
    cds_nfUFCLI: TStringField;
    cds_nfCEPCLI: TStringField;
    cds_nfTELEFONE: TStringField;
    cds_nfSTATUS: TStringField;
    cds_nfIMPRESSA: TStringField;
    cds_nfNOTAMAE: TIntegerField;
    cds_nfPESOREMESSA: TBCDField;
    cds_nfSERIE: TStringField;
    cds_nfVALOR_DESCONTO: TFloatField;
    cds_nfIDCOMPLEMENTAR: TStringField;
    cds_nfVLRTOTALEXP: TFloatField;
    cds_nfID_GUIA: TIntegerField;
    cds_nfSELECIONOU: TStringField;
    cds_nfPROTOCOLOENV: TStringField;
    cds_nfNUMRECIBO: TStringField;
    cds_nfPROTOCOLOCANC: TStringField;
    cds_nfVALOR_PIS: TFloatField;
    cds_nfVALOR_COFINS: TFloatField;
    cds_nfCCUSTO: TIntegerField;
    cds_nfXMLNFE: TGraphicField;
    dsp_nf: TDataSetProvider;
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
    sds_nfICMS: TFloatField;
    sds_nfREDUZICMS: TFloatField;
    sds_nfNOMETRANSP: TStringField;
    sds_nfPLACATRANSP: TStringField;
    sds_nfCNPJ_CPF: TStringField;
    sds_nfEND_TRANSP: TStringField;
    sds_nfCIDADE_TRANSP: TStringField;
    sds_nfUF_VEICULO_TRANSP: TStringField;
    sds_nfUF_TRANSP: TStringField;
    sds_nfFRETE: TStringField;
    sds_nfINSCRICAOESTADUAL: TStringField;
    sds_nfRAZAOSOCIAL: TStringField;
    sds_nfCNPJCLI: TStringField;
    sds_nfINSCCLI: TStringField;
    sds_nfLOGRADOURO: TStringField;
    sds_nfBAIRROCLI: TStringField;
    sds_nfCOMPLEMENTO: TStringField;
    sds_nfCIDADECLI: TStringField;
    sds_nfUFCLI: TStringField;
    sds_nfCEPCLI: TStringField;
    sds_nfTELEFONE: TStringField;
    sds_nfSTATUS: TStringField;
    sds_nfIMPRESSA: TStringField;
    sds_nfNOTAMAE: TIntegerField;
    sds_nfPESOREMESSA: TBCDField;
    sds_nfSERIE: TStringField;
    sds_nfVALOR_DESCONTO: TFloatField;
    sds_nfIDCOMPLEMENTAR: TStringField;
    sds_nfVLRTOTALEXP: TFloatField;
    sds_nfID_GUIA: TIntegerField;
    sds_nfSELECIONOU: TStringField;
    sds_nfPROTOCOLOENV: TStringField;
    sds_nfNUMRECIBO: TStringField;
    sds_nfPROTOCOLOCANC: TStringField;
    sds_nfVALOR_PIS: TFloatField;
    sds_nfVALOR_COFINS: TFloatField;
    sds_nfCCUSTO: TIntegerField;
    sds_nfXMLNFE: TGraphicField;
    DtSrc_NF1: TDataSource;
    cds_nf1: TClientDataSet;
    cds_nf1NUMNF: TIntegerField;
    cds_nf1NOTASERIE: TStringField;
    cds_nf1NATUREZA: TSmallintField;
    cds_nf1QUANTIDADE: TFloatField;
    cds_nf1MARCA: TStringField;
    cds_nf1PESOBRUTO: TBCDField;
    cds_nf1PESOLIQUIDO: TBCDField;
    cds_nf1ESPECIE: TStringField;
    cds_nf1DTAEMISSAO: TDateField;
    cds_nf1DTASAIDA: TDateField;
    cds_nf1UF: TStringField;
    cds_nf1CODVENDA: TIntegerField;
    cds_nf1CODTRANSP: TIntegerField;
    cds_nf1NUMERO: TStringField;
    cds_nf1NOTAFISCAL: TIntegerField;
    cds_nf1HORASAIDA: TTimeField;
    cds_nf1DATA_SISTEMA: TSQLTimeStampField;
    cds_nf1BASE_ICMS: TFloatField;
    cds_nf1VALOR_ICMS: TFloatField;
    cds_nf1BASE_ICMS_SUBST: TFloatField;
    cds_nf1VALOR_ICMS_SUBST: TFloatField;
    cds_nf1VALOR_PRODUTO: TFloatField;
    cds_nf1VALOR_FRETE: TFloatField;
    cds_nf1VALOR_SEGURO: TFloatField;
    cds_nf1OUTRAS_DESP: TFloatField;
    cds_nf1VALOR_IPI: TFloatField;
    cds_nf1VALOR_TOTAL_NOTA: TFloatField;
    cds_nf1CORPONF1: TStringField;
    cds_nf1CORPONF2: TStringField;
    cds_nf1CORPONF3: TStringField;
    cds_nf1CORPONF4: TStringField;
    cds_nf1CORPONF5: TStringField;
    cds_nf1CORPONF6: TStringField;
    cds_nf1CFOP: TStringField;
    cds_nf1CODCLIENTE: TIntegerField;
    cds_nf1FATURA: TStringField;
    cds_nf1ICMS: TFloatField;
    cds_nf1REDUZICMS: TFloatField;
    cds_nf1NOMETRANSP: TStringField;
    cds_nf1PLACATRANSP: TStringField;
    cds_nf1CNPJ_CPF: TStringField;
    cds_nf1END_TRANSP: TStringField;
    cds_nf1CIDADE_TRANSP: TStringField;
    cds_nf1UF_VEICULO_TRANSP: TStringField;
    cds_nf1UF_TRANSP: TStringField;
    cds_nf1FRETE: TStringField;
    cds_nf1INSCRICAOESTADUAL: TStringField;
    cds_nf1STATUS: TStringField;
    cds_nf1VLRTOTALEXP: TFloatField;
    cds_nf1IMPRESSA: TStringField;
    cds_nf1SERIE: TStringField;
    cds_nf1ID_GUIA: TIntegerField;
    cds_nf1SELECIONOU: TStringField;
    cds_nf1DESCNATUREZA: TStringField;
    cds_nf1NOMECLIENTE: TStringField;
    cds_nf1RAZAOSOCIAL: TStringField;
    cds_nf1CNPJCLI: TStringField;
    cds_nf1INSCCLI: TStringField;
    cds_nf1LOGRADOURO: TStringField;
    cds_nf1BAIRROCLI: TStringField;
    cds_nf1COMPLEMENTO: TStringField;
    cds_nf1CIDADECLI: TStringField;
    cds_nf1UFCLI: TStringField;
    cds_nf1CEPCLI: TStringField;
    cds_nf1TELEFONE: TStringField;
    cds_nf1VALOR_DESCONTO: TFloatField;
    cds_nf1II: TFloatField;
    cds_nf1BCII: TFloatField;
    dsp_nf1: TDataSetProvider;
    sds_nf1: TSQLDataSet;
    sds_nf1NUMNF: TIntegerField;
    sds_nf1NOTASERIE: TStringField;
    sds_nf1NATUREZA: TSmallintField;
    sds_nf1QUANTIDADE: TFloatField;
    sds_nf1MARCA: TStringField;
    sds_nf1PESOBRUTO: TBCDField;
    sds_nf1PESOLIQUIDO: TBCDField;
    sds_nf1ESPECIE: TStringField;
    sds_nf1DTAEMISSAO: TDateField;
    sds_nf1DTASAIDA: TDateField;
    sds_nf1UF: TStringField;
    sds_nf1CODVENDA: TIntegerField;
    sds_nf1CODTRANSP: TIntegerField;
    sds_nf1NUMERO: TStringField;
    sds_nf1NOTAFISCAL: TIntegerField;
    sds_nf1HORASAIDA: TTimeField;
    sds_nf1DATA_SISTEMA: TSQLTimeStampField;
    sds_nf1BASE_ICMS: TFloatField;
    sds_nf1VALOR_ICMS: TFloatField;
    sds_nf1BASE_ICMS_SUBST: TFloatField;
    sds_nf1VALOR_ICMS_SUBST: TFloatField;
    sds_nf1VALOR_PRODUTO: TFloatField;
    sds_nf1VALOR_FRETE: TFloatField;
    sds_nf1VALOR_SEGURO: TFloatField;
    sds_nf1OUTRAS_DESP: TFloatField;
    sds_nf1VALOR_IPI: TFloatField;
    sds_nf1VALOR_TOTAL_NOTA: TFloatField;
    sds_nf1CORPONF1: TStringField;
    sds_nf1CORPONF2: TStringField;
    sds_nf1CORPONF3: TStringField;
    sds_nf1CORPONF4: TStringField;
    sds_nf1CORPONF5: TStringField;
    sds_nf1CORPONF6: TStringField;
    sds_nf1CFOP: TStringField;
    sds_nf1CODCLIENTE: TIntegerField;
    sds_nf1FATURA: TStringField;
    sds_nf1ICMS: TFloatField;
    sds_nf1REDUZICMS: TFloatField;
    sds_nf1NOMETRANSP: TStringField;
    sds_nf1PLACATRANSP: TStringField;
    sds_nf1CNPJ_CPF: TStringField;
    sds_nf1END_TRANSP: TStringField;
    sds_nf1CIDADE_TRANSP: TStringField;
    sds_nf1UF_VEICULO_TRANSP: TStringField;
    sds_nf1UF_TRANSP: TStringField;
    sds_nf1FRETE: TStringField;
    sds_nf1INSCRICAOESTADUAL: TStringField;
    sds_nf1STATUS: TStringField;
    sds_nf1VLRTOTALEXP: TFloatField;
    sds_nf1IMPRESSA: TStringField;
    sds_nf1SERIE: TStringField;
    sds_nf1ID_GUIA: TIntegerField;
    sds_nf1SELECIONOU: TStringField;
    sds_nf1DESCNATUREZA: TStringField;
    sds_nf1NOMECLIENTE: TStringField;
    sds_nf1RAZAOSOCIAL: TStringField;
    sds_nf1CNPJCLI: TStringField;
    sds_nf1INSCCLI: TStringField;
    sds_nf1LOGRADOURO: TStringField;
    sds_nf1BAIRROCLI: TStringField;
    sds_nf1COMPLEMENTO: TStringField;
    sds_nf1CIDADECLI: TStringField;
    sds_nf1UFCLI: TStringField;
    sds_nf1CEPCLI: TStringField;
    sds_nf1TELEFONE: TStringField;
    sds_nf1VALOR_DESCONTO: TFloatField;
    sds_nf1II: TFloatField;
    sds_nf1BCII: TFloatField;
    sds_compra: TSQLDataSet;
    dsp_compra: TDataSetProvider;
    cds_compra: TClientDataSet;
    DtSrc_Compra: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    scds_produto_proc: TClientDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCOD_BARRA: TStringField;
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
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    cMatPrima: TClientDataSet;
    cMatPrimaCODMAT: TIntegerField;
    cMatPrimaCODPRODUTO: TIntegerField;
    cMatPrimaCODPRODMP: TIntegerField;
    cMatPrimaQTDEUSADA: TFloatField;
    cMatPrimaTIPOUSO: TStringField;
    cMatPrimaUSAPRECO: TStringField;
    cMatPrimaESTOQUEATUAL: TFloatField;
    cMatPrimaCODPRO: TStringField;
    cMatPrimaUNIDADEMEDIDA: TStringField;
    cMatPrimaPRODUTO: TStringField;
    cMatPrimaPRECOMEDIO: TBCDField;
    dMatPrima: TDataSetProvider;
    sMatPrima: TSQLDataSet;
    sMatPrimaCODMAT: TIntegerField;
    sMatPrimaCODPRODUTO: TIntegerField;
    sMatPrimaCODPRODMP: TIntegerField;
    sMatPrimaQTDEUSADA: TFloatField;
    sMatPrimaTIPOUSO: TStringField;
    sMatPrimaUSAPRECO: TStringField;
    sMatPrimaESTOQUEATUAL: TFloatField;
    sMatPrimaCODPRO: TStringField;
    sMatPrimaUNIDADEMEDIDA: TStringField;
    sMatPrimaPRODUTO: TStringField;
    sMatPrimaPRECOMEDIO: TBCDField;
    ds_Cr: TDataSource;
    scdsCr_proc: TClientDataSet;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCAIXA: TSmallintField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procTIT: TStringField;
    scdsCr_procSITUACAO: TStringField;
    scdsCr_procDATACONSOLIDA: TDateField;
    scdsCr_procPARCELAS: TIntegerField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1VIA: TStringField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1VALORREC: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1DP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    SQLDataSet1DATACONSOLIDA: TDateField;
    SQLDataSet1PARCELAS: TIntegerField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    DtSrc_cli: TDataSource;
    cds_cli: TClientDataSet;
    cds_cliCODCLIENTE: TIntegerField;
    cds_cliNOMECLIENTE: TStringField;
    cds_cliRAZAOSOCIAL: TStringField;
    cds_cliCONTATO: TStringField;
    cds_cliTIPOFIRMA: TSmallintField;
    cds_cliCPF: TStringField;
    cds_cliCNPJ: TStringField;
    cds_cliINSCESTADUAL: TStringField;
    cds_cliRG: TStringField;
    cds_cliSEGMENTO: TSmallintField;
    cds_cliREGIAO: TSmallintField;
    cds_cliLIMITECREDITO: TFloatField;
    cds_cliDATACADASTRO: TDateField;
    cds_cliCODUSUARIO: TIntegerField;
    cds_cliSTATUS: TSmallintField;
    cds_cliHOMEPAGE: TStringField;
    cds_cliPRAZORECEBIMENTO: TSmallintField;
    cds_cliPRAZOENTREGA: TSmallintField;
    cds_cliCODBANCO: TSmallintField;
    cds_cliBASE_ICMS: TSmallintField;
    cds_cliDATANASC: TDateField;
    cds_cliCONTA_CLIENTE: TStringField;
    cds_cliOBS: TStringField;
    cds_cliBANCO: TStringField;
    cds_cliNOMEUSUARIO: TStringField;
    cds_cliTEM_IE: TStringField;
    cds_cliDATARESC: TDateField;
    cds_cliNOMEMAE: TStringField;
    cds_cliSEXO: TStringField;
    cds_cliFORMA_CORRESPOND: TStringField;
    cds_cliGRUPO_CLIENTE: TStringField;
    cds_cliCODINCLUCANC: TIntegerField;
    cds_cliEXIST_COBERT: TStringField;
    cds_cliEXISTCOPART: TStringField;
    cds_cliDATAREINC: TDateField;
    cds_cliGERAAVISO: TStringField;
    cds_cliGERAENV: TStringField;
    cds_cliGERABOL: TStringField;
    cds_cliEMVIAGEM: TStringField;
    cds_cliDTAALTERA: TDateField;
    cds_cliSERIELETRA: TStringField;
    cds_cliSERIE: TStringField;
    cds_cliRA: TStringField;
    cds_cliCURSO: TStringField;
    cds_cliIP: TStringField;
    cds_cliN_CONTRATO: TStringField;
    cds_cliMAC: TStringField;
    cds_cliMARCA: TStringField;
    cds_cliBANDA_UPLOAD: TStringField;
    cds_cliBANDA_DOWLOAD: TStringField;
    cds_cliTORRE_CONECCAO: TStringField;
    cds_cliCOD_FAIXA: TIntegerField;
    cds_cliDESCONTO: TFloatField;
    cds_cliMENSALIDADE: TFloatField;
    cds_cliPAI: TStringField;
    cds_cliLOCALTRABALUNO: TStringField;
    cds_cliDIVERSO1: TStringField;
    cds_cliDIVERSO2: TStringField;
    cds_cliTELTRABALUNO: TStringField;
    dsp_cli: TDataSetProvider;
    sds_cli: TSQLDataSet;
    sds_cliCODCLIENTE: TIntegerField;
    sds_cliNOMECLIENTE: TStringField;
    sds_cliRAZAOSOCIAL: TStringField;
    sds_cliCONTATO: TStringField;
    sds_cliTIPOFIRMA: TSmallintField;
    sds_cliCPF: TStringField;
    sds_cliCNPJ: TStringField;
    sds_cliINSCESTADUAL: TStringField;
    sds_cliRG: TStringField;
    sds_cliSEGMENTO: TSmallintField;
    sds_cliREGIAO: TSmallintField;
    sds_cliLIMITECREDITO: TFloatField;
    sds_cliDATACADASTRO: TDateField;
    sds_cliCODUSUARIO: TIntegerField;
    sds_cliSTATUS: TSmallintField;
    sds_cliHOMEPAGE: TStringField;
    sds_cliPRAZORECEBIMENTO: TSmallintField;
    sds_cliPRAZOENTREGA: TSmallintField;
    sds_cliCODBANCO: TSmallintField;
    sds_cliBASE_ICMS: TSmallintField;
    sds_cliDATANASC: TDateField;
    sds_cliCONTA_CLIENTE: TStringField;
    sds_cliOBS: TStringField;
    sds_cliBANCO: TStringField;
    sds_cliNOMEUSUARIO: TStringField;
    sds_cliTEM_IE: TStringField;
    sds_cliDATARESC: TDateField;
    sds_cliNOMEMAE: TStringField;
    sds_cliSEXO: TStringField;
    sds_cliFORMA_CORRESPOND: TStringField;
    sds_cliGRUPO_CLIENTE: TStringField;
    sds_cliCODINCLUCANC: TIntegerField;
    sds_cliEXIST_COBERT: TStringField;
    sds_cliEXISTCOPART: TStringField;
    sds_cliDATAREINC: TDateField;
    sds_cliGERAAVISO: TStringField;
    sds_cliGERAENV: TStringField;
    sds_cliGERABOL: TStringField;
    sds_cliEMVIAGEM: TStringField;
    sds_cliDTAALTERA: TDateField;
    sds_cliSERIELETRA: TStringField;
    sds_cliSERIE: TStringField;
    sds_cliRA: TStringField;
    sds_cliCURSO: TStringField;
    sds_cliIP: TStringField;
    sds_cliN_CONTRATO: TStringField;
    sds_cliMAC: TStringField;
    sds_cliMARCA: TStringField;
    sds_cliBANDA_UPLOAD: TStringField;
    sds_cliBANDA_DOWLOAD: TStringField;
    sds_cliTORRE_CONECCAO: TStringField;
    sds_cliCOD_FAIXA: TIntegerField;
    sds_cliDESCONTO: TFloatField;
    sds_cliMENSALIDADE: TFloatField;
    sds_cliPAI: TStringField;
    sds_cliLOCALTRABALUNO: TStringField;
    sds_cliDIVERSO1: TStringField;
    sds_cliDIVERSO2: TStringField;
    sds_cliTELTRABALUNO: TStringField;
    DtSrcE: TDataSource;
    cdsEnderecoCli: TClientDataSet;
    cdsEnderecoCliCODENDERECO: TIntegerField;
    cdsEnderecoCliCODCLIENTE: TIntegerField;
    cdsEnderecoCliLOGRADOURO: TStringField;
    cdsEnderecoCliBAIRRO: TStringField;
    cdsEnderecoCliCOMPLEMENTO: TStringField;
    cdsEnderecoCliCIDADE: TStringField;
    cdsEnderecoCliUF: TStringField;
    cdsEnderecoCliCEP: TStringField;
    cdsEnderecoCliTELEFONE: TStringField;
    cdsEnderecoCliTELEFONE1: TStringField;
    cdsEnderecoCliTELEFONE2: TStringField;
    cdsEnderecoCliFAX: TStringField;
    cdsEnderecoCliE_MAIL: TStringField;
    cdsEnderecoCliRAMAL: TStringField;
    cdsEnderecoCliTIPOEND: TSmallintField;
    cdsEnderecoCliDADOSADICIONAIS: TStringField;
    cdsEnderecoCliDDD: TStringField;
    cdsEnderecoCliDDD2: TStringField;
    cdsEnderecoCliDDD3: TStringField;
    cdsEnderecoCliDDD1: TStringField;
    dspEnderecoCli: TDataSetProvider;
    sdsEnderecoCli: TSQLDataSet;
    sdsEnderecoCliCODENDERECO: TIntegerField;
    sdsEnderecoCliCODCLIENTE: TIntegerField;
    sdsEnderecoCliLOGRADOURO: TStringField;
    sdsEnderecoCliBAIRRO: TStringField;
    sdsEnderecoCliCOMPLEMENTO: TStringField;
    sdsEnderecoCliCIDADE: TStringField;
    sdsEnderecoCliUF: TStringField;
    sdsEnderecoCliCEP: TStringField;
    sdsEnderecoCliTELEFONE: TStringField;
    sdsEnderecoCliTELEFONE1: TStringField;
    sdsEnderecoCliTELEFONE2: TStringField;
    sdsEnderecoCliFAX: TStringField;
    sdsEnderecoCliE_MAIL: TStringField;
    sdsEnderecoCliRAMAL: TStringField;
    sdsEnderecoCliTIPOEND: TSmallintField;
    sdsEnderecoCliDADOSADICIONAIS: TStringField;
    sdsEnderecoCliDDD: TStringField;
    sdsEnderecoCliDDD2: TStringField;
    sdsEnderecoCliDDD3: TStringField;
    sdsEnderecoCliDDD1: TStringField;
    DtSrcReg: TDataSource;
    cdsRegiao: TClientDataSet;
    cdsRegiaoCODDADOS: TIntegerField;
    cdsRegiaoDESCRICAO: TStringField;
    cdsRegiaoUSO: TStringField;
    cdsRegiaoCODIGOS: TStringField;
    cdsRegiaoOUTROS: TStringField;
    dRegiao: TDataSetProvider;
    sRegiao: TSQLDataSet;
    SQLDataSet1CODDADOS: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1USO: TStringField;
    SQLDataSet1CODIGOS: TStringField;
    SQLDataSet1OUTROS: TStringField;
    cds_fornecedor: TClientDataSet;
    cds_fornecedorCODFORNECEDOR: TIntegerField;
    cds_fornecedorNOMEFORNECEDOR: TStringField;
    cds_fornecedorRAZAOSOCIAL: TStringField;
    cds_fornecedorCONTATO: TStringField;
    cds_fornecedorTIPOFIRMA: TSmallintField;
    cds_fornecedorCPF: TStringField;
    cds_fornecedorCNPJ: TStringField;
    cds_fornecedorINSCESTADUAL: TStringField;
    cds_fornecedorRG: TStringField;
    cds_fornecedorSEGMENTO: TSmallintField;
    cds_fornecedorREGIAO: TSmallintField;
    cds_fornecedorLIMITECREDITO: TFloatField;
    cds_fornecedorDATACADASTRO: TDateField;
    cds_fornecedorCODUSUARIO: TIntegerField;
    cds_fornecedorSTATUS: TSmallintField;
    cds_fornecedorHOMEPAGE: TStringField;
    cds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    cds_fornecedorPRAZOENTREGA: TSmallintField;
    cds_fornecedorCONTA_FORNECEDOR: TStringField;
    dsp_fornecedor: TDataSetProvider;
    sds_fornecedor: TSQLDataSet;
    sds_fornecedorCODFORNECEDOR: TIntegerField;
    sds_fornecedorNOMEFORNECEDOR: TStringField;
    sds_fornecedorRAZAOSOCIAL: TStringField;
    sds_fornecedorCONTATO: TStringField;
    sds_fornecedorTIPOFIRMA: TSmallintField;
    sds_fornecedorCPF: TStringField;
    sds_fornecedorCNPJ: TStringField;
    sds_fornecedorINSCESTADUAL: TStringField;
    sds_fornecedorRG: TStringField;
    sds_fornecedorSEGMENTO: TSmallintField;
    sds_fornecedorREGIAO: TSmallintField;
    sds_fornecedorLIMITECREDITO: TFloatField;
    sds_fornecedorDATACADASTRO: TDateField;
    sds_fornecedorCODUSUARIO: TIntegerField;
    sds_fornecedorSTATUS: TSmallintField;
    sds_fornecedorHOMEPAGE: TStringField;
    sds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    sds_fornecedorPRAZOENTREGA: TSmallintField;
    sds_fornecedorCONTA_FORNECEDOR: TStringField;
    DtsrcEndFor: TDataSource;
    cds_endfor: TClientDataSet;
    cds_endforCODENDERECO: TIntegerField;
    cds_endforCODFORNECEDOR: TIntegerField;
    cds_endforLOGRADOURO: TStringField;
    cds_endforBAIRRO: TStringField;
    cds_endforCOMPLEMENTO: TStringField;
    cds_endforCIDADE: TStringField;
    cds_endforUF: TStringField;
    cds_endforCEP: TStringField;
    cds_endforDDD: TSmallintField;
    cds_endforTELEFONE: TStringField;
    cds_endforTELEFONE1: TStringField;
    cds_endforTELEFONE2: TStringField;
    cds_endforFAX: TStringField;
    cds_endforE_MAIL: TStringField;
    cds_endforRAMAL: TStringField;
    cds_endforTIPOEND: TSmallintField;
    cds_endforDADOSADICIONAIS: TStringField;
    dsp_endfor: TDataSetProvider;
    sds_endfor: TSQLDataSet;
    sds_endforCODENDERECO: TIntegerField;
    sds_endforCODFORNECEDOR: TIntegerField;
    sds_endforLOGRADOURO: TStringField;
    sds_endforBAIRRO: TStringField;
    sds_endforCOMPLEMENTO: TStringField;
    sds_endforCIDADE: TStringField;
    sds_endforUF: TStringField;
    sds_endforCEP: TStringField;
    sds_endforDDD: TSmallintField;
    sds_endforTELEFONE: TStringField;
    sds_endforTELEFONE1: TStringField;
    sds_endforTELEFONE2: TStringField;
    sds_endforFAX: TStringField;
    sds_endforE_MAIL: TStringField;
    sds_endforRAMAL: TStringField;
    sds_endforTIPOEND: TSmallintField;
    sds_endforDADOSADICIONAIS: TStringField;
    DtsrcFor: TDataSource;
    listaCliente: TSQLDataSet;
    listaClienteCODCLIENTE: TIntegerField;
    listaClienteNOMECLIENTE: TStringField;
    listaClienteRAZAOSOCIAL: TStringField;
    listaClienteCNPJ: TStringField;
    listaClienteINSCESTADUAL: TStringField;
    listaClienteLOGRADOURO: TStringField;
    listaClienteBAIRRO: TStringField;
    listaClienteCOMPLEMENTO: TStringField;
    listaClienteCIDADE: TStringField;
    listaClienteUF: TStringField;
    listaClienteCEP: TStringField;
    listaClienteTELEFONE: TStringField;
    listaClientePRAZORECEBIMENTO: TSmallintField;
    listaClienteCOD_TRANPORTADORA: TIntegerField;
    listaClienteTIPOFIRMA: TSmallintField;
    listaFornecedor: TSQLDataSet;
    listaFornecedorCODFORNECEDOR: TIntegerField;
    listaFornecedorRAZAOSOCIAL: TStringField;
    listaFornecedorCNPJ: TStringField;
    listaFornecedorINSCESTADUAL: TStringField;
    listaFornecedorPRAZOPAGAMENTO: TSmallintField;
    listaFornecedorLOGRADOURO: TStringField;
    listaFornecedorBAIRRO: TStringField;
    listaFornecedorCOMPLEMENTO: TStringField;
    listaFornecedorCIDADE: TStringField;
    listaFornecedorUF: TStringField;
    listaFornecedorCEP: TStringField;
    listaFornecedorTELEFONE: TStringField;
    listaCFOP: TSQLDataSet;
    listaCFOPCFCOD: TStringField;
    listaCFOPCFNOME: TStringField;
    cdsNotaFiscal: TClientDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    IntegerField4: TIntegerField;
    TimeField1: TTimeField;
    SQLTimeStampField1: TSQLTimeStampField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField5: TIntegerField;
    StringField23: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    StringField24: TStringField;
    ds: TDataSource;
    dtSrcCompra: TDataSource;
    sdsCompra: TSQLDataSet;
    sdsCompraCODCOMPRA: TIntegerField;
    sdsCompraCODMOVIMENTO: TIntegerField;
    sdsCompraCODFORNECEDOR: TIntegerField;
    sdsCompraDATACOMPRA: TDateField;
    sdsCompraDATAVENCIMENTO: TDateField;
    sdsCompraNUMEROBORDERO: TIntegerField;
    sdsCompraBANCO: TSmallintField;
    sdsCompraCODCOMPRADOR: TSmallintField;
    sdsCompraSTATUS: TSmallintField;
    sdsCompraCODUSUARIO: TSmallintField;
    sdsCompraDATASISTEMA: TDateField;
    sdsCompraVALOR: TFloatField;
    sdsCompraNOTAFISCAL: TIntegerField;
    sdsCompraSERIE: TStringField;
    sdsCompraDESCONTO: TFloatField;
    sdsCompraCODCCUSTO: TSmallintField;
    sdsCompraN_PARCELA: TSmallintField;
    sdsCompraOPERACAO: TStringField;
    sdsCompraFORMAPAGAMENTO: TStringField;
    sdsCompraN_DOCUMENTO: TStringField;
    sdsCompraCAIXA: TSmallintField;
    sdsCompraMULTA_JUROS: TFloatField;
    sdsCompraAPAGAR: TFloatField;
    sdsCompraVALOR_PAGAR: TFloatField;
    sdsCompraENTRADA: TFloatField;
    sdsCompraN_BOLETO: TStringField;
    sdsCompraSTATUS1: TStringField;
    sdsCompraVALOR_ICMS: TFloatField;
    sdsCompraVALOR_FRETE: TFloatField;
    sdsCompraVALOR_SEGURO: TFloatField;
    sdsCompraOUTRAS_DESP: TFloatField;
    sdsCompraVALOR_IPI: TFloatField;
    sdsCompraCFOP: TStringField;
    sdsCompraNOMEFORNECEDOR: TStringField;
    sdsCompraNOMEUSUARIO: TStringField;
    dspCompra: TDataSetProvider;
    cdsCompra: TClientDataSet;
    cdsCompraCODCOMPRA: TIntegerField;
    cdsCompraCODMOVIMENTO: TIntegerField;
    cdsCompraCODFORNECEDOR: TIntegerField;
    cdsCompraDATACOMPRA: TDateField;
    cdsCompraDATAVENCIMENTO: TDateField;
    cdsCompraNUMEROBORDERO: TIntegerField;
    cdsCompraBANCO: TSmallintField;
    cdsCompraCODCOMPRADOR: TSmallintField;
    cdsCompraSTATUS: TSmallintField;
    cdsCompraCODUSUARIO: TSmallintField;
    cdsCompraDATASISTEMA: TDateField;
    cdsCompraVALOR: TFloatField;
    cdsCompraNOTAFISCAL: TIntegerField;
    cdsCompraSERIE: TStringField;
    cdsCompraDESCONTO: TFloatField;
    cdsCompraCODCCUSTO: TSmallintField;
    cdsCompraN_PARCELA: TSmallintField;
    cdsCompraOPERACAO: TStringField;
    cdsCompraFORMAPAGAMENTO: TStringField;
    cdsCompraN_DOCUMENTO: TStringField;
    cdsCompraCAIXA: TSmallintField;
    cdsCompraMULTA_JUROS: TFloatField;
    cdsCompraAPAGAR: TFloatField;
    cdsCompraVALOR_PAGAR: TFloatField;
    cdsCompraENTRADA: TFloatField;
    cdsCompraN_BOLETO: TStringField;
    cdsCompraSTATUS1: TStringField;
    cdsCompraVALOR_ICMS: TFloatField;
    cdsCompraVALOR_FRETE: TFloatField;
    cdsCompraVALOR_SEGURO: TFloatField;
    cdsCompraOUTRAS_DESP: TFloatField;
    cdsCompraVALOR_IPI: TFloatField;
    cdsCompraCFOP: TStringField;
    cdsCompraNOMEFORNECEDOR: TStringField;
    cdsCompraNOMEUSUARIO: TStringField;
    sds_cp: TSQLDataSet;
    SQLDataSet1CODPAGAMENTO: TIntegerField;
    StringField25: TStringField;
    DateField3: TDateField;
    SQLDataSet1CODFORNECEDOR: TIntegerField;
    DateField4: TDateField;
    SQLDataSet1DATAPAGAMENTO: TDateField;
    SmallintField2: TSmallintField;
    SQLDataSet1CONTADEBITO: TIntegerField;
    SQLDataSet1CONTACREDITO: TIntegerField;
    StringField26: TStringField;
    StringField27: TStringField;
    SQLDataSet1FORMAPAGAMENTO: TStringField;
    SQLDataSet1DATABAIXA: TDateField;
    SQLDataSet1HISTORICO: TStringField;
    SQLDataSet1CODCOMPRA: TIntegerField;
    SQLDataSet1CODALMOXARIFADO: TSmallintField;
    SQLDataSet1CODCOMPRADOR: TSmallintField;
    SQLDataSet1CODUSUARIO: TSmallintField;
    StringField28: TStringField;
    SQLDataSet1DATASISTEMA: TSQLTimeStampField;
    FloatField12: TFloatField;
    SQLDataSet1JUROS: TFloatField;
    SQLDataSet1DESCONTO: TFloatField;
    SQLDataSet1PERDA: TFloatField;
    SQLDataSet1TROCA: TFloatField;
    SQLDataSet1FUNRURAL: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    SQLDataSet1OUTRO_CREDITO: TFloatField;
    SQLDataSet1OUTRO_DEBITO: TFloatField;
    SQLDataSet1NOMEFORNECEDOR: TStringField;
    SQLDataSet1VALORPAG: TFloatField;
    sds_cpSTATUSPAG: TStringField;
    dsp_cp: TDataSetProvider;
    cds_cp: TClientDataSet;
    scdsCr_procCODPAGAMENTO: TIntegerField;
    StringField29: TStringField;
    DateField5: TDateField;
    scdsCr_procCODFORNECEDOR: TIntegerField;
    DateField6: TDateField;
    scdsCr_procDATAPAGAMENTO: TDateField;
    SmallintField3: TSmallintField;
    scdsCr_procCONTADEBITO: TIntegerField;
    scdsCr_procCONTACREDITO: TIntegerField;
    StringField30: TStringField;
    StringField31: TStringField;
    scdsCr_procFORMAPAGAMENTO: TStringField;
    scdsCr_procDATABAIXA: TDateField;
    scdsCr_procHISTORICO: TStringField;
    scdsCr_procCODCOMPRA: TIntegerField;
    scdsCr_procCODALMOXARIFADO: TSmallintField;
    scdsCr_procCODCOMPRADOR: TSmallintField;
    scdsCr_procCODUSUARIO: TSmallintField;
    StringField32: TStringField;
    scdsCr_procDATASISTEMA: TSQLTimeStampField;
    FloatField16: TFloatField;
    scdsCr_procJUROS: TFloatField;
    scdsCr_procDESCONTO: TFloatField;
    scdsCr_procPERDA: TFloatField;
    scdsCr_procTROCA: TFloatField;
    scdsCr_procFUNRURAL: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    scdsCr_procOUTRO_CREDITO: TFloatField;
    scdsCr_procOUTRO_DEBITO: TFloatField;
    scdsCr_procNOMEFORNECEDOR: TStringField;
    scdsCr_procVALORPAG: TFloatField;
    cds_cpSTATUSPAG: TStringField;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    AggregateField3: TAggregateField;
    ds_cp: TDataSource;
    listaProduto: TSQLDataSet;
    listaProdutoCODPRODUTO: TIntegerField;
    listaProdutoCODPRO: TStringField;
    listaProdutoPRODUTO: TStringField;
    listaProdutoUNIDADEMEDIDA: TStringField;
    listaProdutoQTDE_PCT: TFloatField;
    listaProdutoICMS: TFloatField;
    listaProdutoVALORUNITARIOATUAL: TFloatField;
    listaProdutoVALOR_PRAZO: TFloatField;
    listaProdutoCOD_COMISSAO: TIntegerField;
    listaProdutoRATEIO: TStringField;
    listaProdutoTIPO: TStringField;
    listaProdutoESTOQUEATUAL: TFloatField;
    listaProdutoLOCALIZACAO: TStringField;
    listaProdutoLOTES: TStringField;
    listaProdutoPRECOMEDIO: TBCDField;
    listaProdutoPESO_QTDE: TFloatField;
    listaProdutoCODALMOXARIFADO: TIntegerField;
    listaProdutoCONTA_DESPESA: TStringField;
    listaProdutoALMOXARIFADO: TStringField;
    sdslistaTransp: TSQLDataSet;
    sdslistaTranspCODTRANSP: TIntegerField;
    sdslistaTranspNOMETRANSP: TStringField;
    sdslistaTranspPLACATRANSP: TStringField;
    sdslistaTranspCNPJ_CPF: TStringField;
    sdslistaTranspEND_TRANSP: TStringField;
    sdslistaTranspCIDADE_TRANSP: TStringField;
    sdslistaTranspUF_VEICULO_TRANSP: TStringField;
    sdslistaTranspUF_TRANSP: TStringField;
    sdslistaTranspFRETE: TStringField;
    sdslistaTranspINSCRICAOESTADUAL: TStringField;
    sdslistaTranspCORPONF1: TStringField;
    sdslistaTranspCORPONF2: TStringField;
    sdslistaTranspCORPONF3: TStringField;
    sdslistaTranspCORPONF4: TStringField;
    sdslistaTranspCORPONF5: TStringField;
    sdslistaTranspCORPONF6: TStringField;
    sdslistaTranspFONE: TStringField;
    sdslistaTranspFANTASIA: TStringField;
    sdsLoteRepetido: TSQLDataSet;
    scds1: TSQLDataSet;
    dspListaTransp: TDataSetProvider;
    listaTransp: TClientDataSet;
    listaTranspCODTRANSP: TIntegerField;
    listaTranspNOMETRANSP: TStringField;
    listaTranspPLACATRANSP: TStringField;
    listaTranspCNPJ_CPF: TStringField;
    listaTranspEND_TRANSP: TStringField;
    listaTranspCIDADE_TRANSP: TStringField;
    listaTranspUF_VEICULO_TRANSP: TStringField;
    listaTranspUF_TRANSP: TStringField;
    listaTranspFRETE: TStringField;
    listaTranspINSCRICAOESTADUAL: TStringField;
    listaTranspCORPONF1: TStringField;
    listaTranspCORPONF2: TStringField;
    listaTranspCORPONF3: TStringField;
    listaTranspCORPONF4: TStringField;
    listaTranspCORPONF5: TStringField;
    listaTranspCORPONF6: TStringField;
    listaTranspFONE: TStringField;
    listaTranspFANTASIA: TStringField;
    repdm: TVCLReport;
    sdsVeiculoCli: TSQLDataSet;
    cdslotes: TClientDataSet;
    cdslotesCODLOTE: TIntegerField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesDATAFABRICACAO: TDateField;
    cdslotesDATAVENCIMENTO: TDateField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRODUTO: TStringField;
    cdslotesCODPRO: TStringField;
    cdslotesPRECO: TFloatField;
    dsplotes: TDataSetProvider;
    sdslote: TSQLDataSet;
    sdsloteCODLOTE: TIntegerField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteDATAFABRICACAO: TDateField;
    sdsloteDATAVENCIMENTO: TDateField;
    sdsloteESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    sdsloteCODPRO: TStringField;
    sdslotePRECO: TFloatField;
    SQLDataSet2: TSQLDataSet;
    sqlNumeroSerie: TSQLDataSet;
    scds_usuario_proc: TSQLClientDataSet;
    scds_usuario_procCODUSUARIO: TSmallintField;
    scds_usuario_procNOMEUSUARIO: TStringField;
    scds_usuario_procSTATUS: TSmallintField;
    scds_usuario_procPERFIL: TStringField;
    sds_calculo: TSQLDataSet;
    sds_estado: TSQLDataSet;
    scds: TSQLClientDataSet;
    procCFOP: TSQLClientDataSet;
    procCFOPCFCOD: TStringField;
    procCFOPCFNOME: TStringField;
    proc_end: TSQLDataSet;
    proc_endCOUNT: TIntegerField;
    sqs_tit: TSQLDataSet;
    scds_cli_proc: TSQLClientDataSet;
    scds_cli_procCODCLIENTE: TIntegerField;
    scds_cli_procCODUSUARIO: TIntegerField;
    scds_cli_procNOMECLIENTE: TStringField;
    scds_cli_procRAZAOSOCIAL: TStringField;
    scds_cli_procCODBANCO: TSmallintField;
    scds_cli_procPRAZORECEBIMENTO: TSmallintField;
    scds_cli_procOBS: TStringField;
    scds_cli_procSEGMENTO: TSmallintField;
    scds_cli_procSTATUS: TSmallintField;
    scds_cli_procNOMEUSUARIO: TStringField;
    scds_cli_procUF: TStringField;
    scds_cli_procCNPJ: TStringField;
    scds_cli_procLOGRADOURO: TStringField;
    scds_cli_procBLOQUEIO: TStringField;
    scds_cli_procDESCONTO: TFloatField;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    sds_compraCODCOMPRA: TIntegerField;
    sds_compraCODMOVIMENTO: TIntegerField;
    sds_compraCODFORNECEDOR: TIntegerField;
    sds_compraDATACOMPRA: TDateField;
    sds_compraDATAVENCIMENTO: TDateField;
    sds_compraNUMEROBORDERO: TIntegerField;
    sds_compraBANCO: TSmallintField;
    sds_compraCODCOMPRADOR: TSmallintField;
    sds_compraSTATUS: TSmallintField;
    sds_compraCODUSUARIO: TSmallintField;
    sds_compraDATASISTEMA: TDateField;
    sds_compraVALOR: TFloatField;
    sds_compraNOTAFISCAL: TIntegerField;
    sds_compraSERIE: TStringField;
    sds_compraDESCONTO: TFloatField;
    sds_compraCODCCUSTO: TSmallintField;
    sds_compraN_PARCELA: TSmallintField;
    sds_compraOPERACAO: TStringField;
    sds_compraFORMAPAGAMENTO: TStringField;
    sds_compraN_DOCUMENTO: TStringField;
    sds_compraCAIXA: TSmallintField;
    sds_compraMULTA_JUROS: TFloatField;
    sds_compraAPAGAR: TFloatField;
    sds_compraVALOR_PAGAR: TFloatField;
    sds_compraENTRADA: TFloatField;
    sds_compraN_BOLETO: TStringField;
    sds_compraSTATUS1: TStringField;
    sds_compraVALOR_ICMS: TFloatField;
    sds_compraVALOR_FRETE: TFloatField;
    sds_compraVALOR_SEGURO: TFloatField;
    sds_compraOUTRAS_DESP: TFloatField;
    sds_compraVALOR_IPI: TFloatField;
    sds_compraCFOP: TStringField;
    sds_compraPRAZO: TStringField;
    sds_compraCODORIGEM: TIntegerField;
    sds_compraNOMEFORNECEDOR: TStringField;
    sds_compraNOMEUSUARIO: TStringField;
    cds_compraCODCOMPRA: TIntegerField;
    cds_compraCODMOVIMENTO: TIntegerField;
    cds_compraCODFORNECEDOR: TIntegerField;
    cds_compraDATACOMPRA: TDateField;
    cds_compraDATAVENCIMENTO: TDateField;
    cds_compraNUMEROBORDERO: TIntegerField;
    cds_compraBANCO: TSmallintField;
    cds_compraCODCOMPRADOR: TSmallintField;
    cds_compraSTATUS: TSmallintField;
    cds_compraCODUSUARIO: TSmallintField;
    cds_compraDATASISTEMA: TDateField;
    cds_compraVALOR: TFloatField;
    cds_compraNOTAFISCAL: TIntegerField;
    cds_compraSERIE: TStringField;
    cds_compraDESCONTO: TFloatField;
    cds_compraCODCCUSTO: TSmallintField;
    cds_compraN_PARCELA: TSmallintField;
    cds_compraOPERACAO: TStringField;
    cds_compraFORMAPAGAMENTO: TStringField;
    cds_compraN_DOCUMENTO: TStringField;
    cds_compraCAIXA: TSmallintField;
    cds_compraMULTA_JUROS: TFloatField;
    cds_compraAPAGAR: TFloatField;
    cds_compraVALOR_PAGAR: TFloatField;
    cds_compraENTRADA: TFloatField;
    cds_compraN_BOLETO: TStringField;
    cds_compraSTATUS1: TStringField;
    cds_compraVALOR_ICMS: TFloatField;
    cds_compraVALOR_FRETE: TFloatField;
    cds_compraVALOR_SEGURO: TFloatField;
    cds_compraOUTRAS_DESP: TFloatField;
    cds_compraVALOR_IPI: TFloatField;
    cds_compraCFOP: TStringField;
    cds_compraPRAZO: TStringField;
    cds_compraCODORIGEM: TIntegerField;
    cds_compraNOMEFORNECEDOR: TStringField;
    cds_compraNOMEUSUARIO: TStringField;
    sds_Mov_DetNITEMPED: TIntegerField;
    sds_Mov_DetPEDIDO: TStringField;
    cds_Mov_detNITEMPED: TIntegerField;
    cds_Mov_detPEDIDO: TStringField;
    sds_nfINDPAG: TIntegerField;
    cds_nfINDPAG: TIntegerField;
    sds_Mov_DetCSTIPI: TStringField;
    sds_Mov_DetCSTPIS: TStringField;
    sds_Mov_DetVALOR_PIS: TFloatField;
    sds_Mov_DetCSTCOFINS: TStringField;
    sds_Mov_DetVALOR_COFINS: TFloatField;
    cds_Mov_detCSTIPI: TStringField;
    cds_Mov_detCSTPIS: TStringField;
    cds_Mov_detVALOR_PIS: TFloatField;
    cds_Mov_detCSTCOFINS: TStringField;
    cds_Mov_detVALOR_COFINS: TFloatField;
    sds_nfBASE_IPI: TFloatField;
    sds_nfBASE_PIS: TFloatField;
    sds_nfBASE_COFINS: TFloatField;
    sds_nfVLRTOT_TRIB: TFloatField;
    cds_nfBASE_IPI: TFloatField;
    cds_nfBASE_PIS: TFloatField;
    cds_nfBASE_COFINS: TFloatField;
    cds_nfVLRTOT_TRIB: TFloatField;
    sds_Mov_DetVLRBC_IPI: TFloatField;
    sds_Mov_DetVLRBC_PIS: TFloatField;
    sds_Mov_DetVLRBC_COFINS: TFloatField;
    sds_Mov_DetVLRTOT_TRIB: TFloatField;
    cds_Mov_detVLRBC_IPI: TFloatField;
    cds_Mov_detVLRBC_PIS: TFloatField;
    cds_Mov_detVLRBC_COFINS: TFloatField;
    cds_Mov_detVLRTOT_TRIB: TFloatField;
    sds_Mov_DetPCOFINS: TFloatField;
    sds_Mov_DetPPIS: TFloatField;
    cds_Mov_detPCOFINS: TFloatField;
    cds_Mov_detPPIS: TFloatField;
    scds_serienfe: TSQLQuery;
    scds_serienfeNOTASERIE: TIntegerField;
    scds_serienfeNOTAFISCAL: TIntegerField;
    scds_serienfeSERIE: TStringField;
    sds_nf1VALOR_PIS: TFloatField;
    sds_nf1VALOR_COFINS: TFloatField;
    sds_nf1BASE_IPI: TFloatField;
    sds_nf1BASE_PIS: TFloatField;
    sds_nf1BASE_COFINS: TFloatField;
    cds_nf1VALOR_PIS: TFloatField;
    cds_nf1VALOR_COFINS: TFloatField;
    cds_nf1BASE_IPI: TFloatField;
    cds_nf1BASE_PIS: TFloatField;
    cds_nf1BASE_COFINS: TFloatField;
    sds_Mov_DetPAGOU: TStringField;
    cds_Mov_detPAGOU: TStringField;
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_MovimentoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure cds_nfNewRecord(DataSet: TDataSet);
    procedure DtSrc_NFStateChange(Sender: TObject);
    procedure cds_cliNewRecord(DataSet: TDataSet);
    procedure DtSrcVendaStateChange(Sender: TObject);
    procedure dtSrcCompraStateChange(Sender: TObject);
    procedure cds_Mov_detAfterPost(DataSet: TDataSet);
    procedure cds_vendaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_Mov_detPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cds_nf1NewRecord(DataSet: TDataSet);
    procedure DtSrc_NF1StateChange(Sender: TObject);
  private

  public
    estoque, qtde: Double;
    function FormExiste(aberto: Tform): Boolean;
    function baixouEstoque(codMovtod: Integer): Boolean;
    function cancelouEstoque(codMovtoC: Integer): Boolean;
    procedure baixaEstoque(codMovto: Integer; DtaMovto: TDateTime; tipo: String);
    procedure cancelaEstoque(codMovto: Integer; DtaMovto: TDateTime; tipo: String);
  end;

var
  DMNF: TDMNF;

implementation

uses UDm, uNF, uClienteCadastro, uNotaf, uNFCompra, uNotaf1, uNotafc,
  uAtsAdmin, uEstoque;

{$R *.dfm}

procedure TDMNF.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger := usulog;
    cds_MovimentoCODVENDEDOR.Value := usulog;
end;

procedure TDMNF.cds_MovimentoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TDMNF.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  valor := 0;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if ((cds_Mov_detVLR_BASE.IsNull) or (cds_Mov_detVLR_BASE.AsFloat = 0)) then
      cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value
    else
      cds_Mov_detValorTotal.Value := cds_Mov_detVLR_BASE.Value * cds_Mov_detQUANTIDADE.Value
  end
  else begin
    if cds_Mov_detQTDE_ALT.Value > 0 then
    begin
      if ((cds_Mov_detVLR_BASE.IsNull) or (cds_Mov_detVLR_BASE.AsFloat = 0)) then
        cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value
      else
        cds_Mov_detValorTotal.Value := cds_Mov_detVLR_BASE.Value * cds_Mov_detQUANTIDADE.Value;
      valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
      if ((cds_Mov_detVLR_BASE.IsNull) or (cds_Mov_detVLR_BASE.AsFloat = 0)) then
        cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor
      else
        cds_Mov_detValorTotal.Value := cds_Mov_detVLR_BASE.Value * cds_Mov_detQUANTIDADE.Value;
    end
    else begin
      if ((cds_Mov_detVLR_BASE.IsNull) or (cds_Mov_detVLR_BASE.AsFloat = 0)) then
        cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value
      else
        cds_Mov_detValorTotal.Value := cds_Mov_detVLR_BASE.Value * cds_Mov_detQUANTIDADE.Value;
    end;
    if cds_Mov_detTotalPedido.Value > 0 then
    begin
      if (cds_venda.State in [dsInsert, dsEdit]) then
      begin
        cds_vendaVALOR.AsFloat := cds_Mov_detTotalPedido.Value;
        cds_vendaVALOR_PAGAR.AsFloat := cds_Mov_detTotalPedido.Value;
      end;
      if (cdsCompra.State in [dsInsert, dsEdit]) then
      begin
        cdsCompraVALOR.AsFloat := cds_Mov_detTotalPedido.Value;
        cdsCompraVALOR_PAGAR.AsFloat := cds_Mov_detTotalPedido.Value;
      end;
    end;
  end;
end;

procedure TDMNF.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  if (codmd >= 1999999) then
  begin
    codmd := codmd + 1;
  end
  else begin
    codmd := 1999999;
  end;
  cds_mov_detCODDETALHE.AsInteger := codmd;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TDMNF.cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro.' + #10#13 + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TDMNF.DtSrc1StateChange(Sender: TObject);
begin
 if (FormExiste(fNF) = True) then
 begin
    fnf.btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
    fnf.btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
    fnf.btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
    fnf.btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
    fnf.btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive];
    fnf.btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      fnf.btnIncluir.Visible := False;
      fnf.btnexcluir.Visible := False;
      fnf.btngravar.Visible := True;
      fnf.btnGravar.Enabled := True;
      fnf.btnCancelar.Visible := True;
      fnf.btnCancelar.Enabled := True;
    end;

    if DtSrc.State in [dsBrowse,dsInactive] then
    begin
      fnf.btnIncluir.Enabled := True;
      fnf.btnIncluir.Visible := True;
      fnf.btnexcluir.Visible := True;
      fnf.btnExcluir.Enabled := True;
      fnf.btngravar.Visible := False;
      fnf.btnCancelar.Visible := False;
    end;
    if (DtSrc1.DataSet.State in [dsInsert, dsEdit]) then
    begin
      fnf.btnProdutoProcura.Enabled := True;
      if (DtSrcVenda.DataSet.State in [dsBrowse]) then
          DtSrcVenda.DataSet.Edit;
    end
    else
     fnf.btnProdutoProcura.Enabled := False;
 end;

 if (FormExiste(fNotaf) = True) then
 begin
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      fNotaf.btnIncluir.Visible := False;
      fNotaf.btnexcluir.Visible := False;
      fNotaf.btngravar.Visible := True;
      fNotaf.btnGravar.Enabled := True;
      fNotaf.btnCancelar.Visible := True;
      fNotaf.btnCancelar.Enabled := True;
    end;

    if DtSrc.State in [dsBrowse,dsInactive] then
    begin
      fNotaf.btnIncluir.Enabled := True;
      fNotaf.btnIncluir.Visible := True;
      fNotaf.btnexcluir.Visible := True;
      fNotaf.btnExcluir.Enabled := True;
      fNotaf.btngravar.Visible := False;
      fNotaf.btnCancelar.Visible := False;
    end;
    if (DtSrc1.DataSet.State in [dsInsert, dsEdit]) then
    begin
      if (DtSrcVenda.DataSet.State in [dsBrowse]) then
          DtSrcVenda.DataSet.Edit;
      if (DtSrc_Nf.DataSet.State in [dsBrowse]) then
          DtSrc_Nf.DataSet.Edit;
    end;
 end;

 if (FormExiste(fNFCompra) = True) then
 begin
    fnfCompra.btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
    fnfCompra.btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
    fnfCompra.btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
    fnfCompra.btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
    fnfCompra.btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive];
    fnfCompra.btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      fnfCompra.btnIncluir.Visible := False;
      fnfCompra.btnexcluir.Visible := False;
      fnfCompra.btngravar.Visible := True;
      fnfCompra.btnGravar.Enabled := True;
      fnfCompra.btnCancelar.Visible := True;
      fnfCompra.btnCancelar.Enabled := True;
    end;

    if DtSrc.State in [dsBrowse,dsInactive] then
    begin
      fnfCompra.btnIncluir.Enabled := True;
      fnfCompra.btnIncluir.Visible := True;
      fnfCompra.btnexcluir.Visible := True;
      fnfCompra.btnExcluir.Enabled := True;
      fnfCompra.btngravar.Visible := False;
      fnfCompra.btnCancelar.Visible := False;
    end;
    if (DtSrc1.DataSet.State in [dsInsert, dsEdit]) then
    begin
      fnfCompra.btnProdutoProcura.Enabled := True;
      if (dtSrcCompra.DataSet.State in [dsBrowse]) then
          DtSrcCompra.DataSet.Edit;
    end
    else
     fnfCompra.btnProdutoProcura.Enabled := False;
 end;

end;

procedure TDMNF.cds_nfNewRecord(DataSet: TDataSet);
begin
   cds_nfNUMNF.AsInteger := 1999999;
   cds_nfVALOR_ICMS.AsFloat := 0;
   cds_nfVALOR_ICMS_SUBST.AsFloat := 0;
   cds_nfVALOR_PRODUTO.AsFloat := 0;
   cds_nfVALOR_FRETE.AsFloat := 0;
   cds_nfVALOR_SEGURO.AsFloat := 0;
   cds_nfVALOR_IPI.AsFloat := 0;
   cds_nfOUTRAS_DESP.AsFloat := 0;
   cds_nfBASE_ICMS.AsFloat := 0;
   cds_nfBASE_ICMS_SUBST.AsFloat := 0;
   cds_nfVALOR_DESCONTO.AsFloat := 0;
   cds_nfVALOR_TOTAL_NOTA.AsFloat := 0;
   cds_nfNATUREZA.AsInteger := cds_MovimentoCODNATUREZA.AsInteger;
   cds_nfDESCNATUREZA.AsString := cds_MovimentoDESCNATUREZA.AsString;
   cds_nfCODVENDA.AsInteger := cds_vendaCODVENDA.AsInteger;
   cds_nfNOTAFISCAL.AsInteger := cds_vendaNOTAFISCAL.AsInteger;
   cds_nfNOTASERIE.AsString := IntToStr(cds_vendaNOTAFISCAL.AsInteger);
   cds_nfDTAEMISSAO.AsDateTime := cds_vendaDATAVENDA.AsDateTime;
   cds_nfDTASAIDA.AsDateTime := cds_vendaDATAVENDA.AsDateTime;
   cds_nfVALOR_PRODUTO.AsFloat := cds_vendaVALOR.AsFloat;//fNF.vrr;
   cds_nfVALOR_TOTAL_NOTA.AsFloat := cds_vendaVALOR.AsFloat;
   cds_nfNOTASERIE.AsString := IntToStr(cds_vendaNOTAFISCAL.AsInteger);
   cds_nfCODCLIENTE.AsInteger := cds_vendaCODCLIENTE.AsInteger;
   cds_nfHORASAIDA.AsDateTime := time;
   cds_nfESPECIE.AsString := 'VOLUME';
   cds_nfFATURA.AsString := fatura_NF;
   //Imprime no rodapé da nota o que está na tabela Parâmetro.
   if dm.cds_parametro.Active then
     dm.cds_parametro.Close;
   dm.cds_parametro.Params[0].AsString := 'CLASS_FISCAL_IMP';
   dm.cds_parametro.Open;
   cds_nfCORPONF6.AsString := dm.cds_parametroDADOS.AsString;
   dm.cds_parametro.Close;
  if (dm.cds_parametro.active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CFOP';
  dm.cds_parametro.open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if scds_cli_proc.Active then
      scds_cli_proc.Close;
    scds_cli_proc.Params[0].Clear;
    scds_cli_proc.Params[1].Clear;
    scds_cli_proc.Params[2].Clear;
    scds_cli_proc.Params[2].AsInteger := cds_vendaCODCLIENTE.AsInteger;
    scds_cli_proc.Open;
    if (scds_cli_procUF.AsString = 'SP') then
      cds_nfCFOP.AsString := dm.cds_parametroDADOS.AsString
    else
      cds_nfCFOP.AsString := dm.cds_parametroD1.AsString;
    if scds1.Active then
      scds1.Close;
    scds1.CommandText := 'SELECT CFCOD AS CFOP , CFNOME as NATUREZA FROM CFOP ' +
      ' where CFCOD = ''' + dm.cds_parametroDADOS.AsString + '''';
    scds1.Open;
    cds_nfDESCNATUREZA.AsString  := scds1.Fields[1].asString;
    scds1.Close;
  end;

end;

procedure TDMNF.DtSrc_NFStateChange(Sender: TObject);
begin
  if (FormExiste(fNotaf) = True) then
  begin
    if (DMNF.DtSrc_NF.State in [dsEdit, dsInsert]) then
    begin
       fNotaf.btnIncluir.Visible := False;
       fNotaf.btnExcluir.Visible := False;
       fNotaf.btnGravar.Visible := True;
       fNotaf.btnGravar.Enabled := True;
       fNotaf.btnCancelar.Visible := True;
       fNotaf.btnCancelar.Enabled := True;
    end;
    if (DMNF.DtSrc_NF.State in [dsBrowse, dsInactive]) then
    begin
       fNotaf.btnIncluir.Visible := True;
       fNotaf.btnIncluir.Enabled := True;
       fNotaf.btnExcluir.Visible := True;
       fNotaf.btnExcluir.Enabled := True;
       fNotaf.btnGravar.Visible := False;
       fNotaf.btnGravar.Enabled := False;
       fNotaf.btnCancelar.Visible := False;
       fNotaf.btnCancelar.Enabled := False;
       fNotaf.btnSair.Visible := True;
       fNotaf.btnSair.Enabled := True;
    end;
  end;
  if (FormExiste(fNF) = True) then
  begin
    fnf.btnIncluirNF.Enabled := DtSrc_NF.State in [dsBrowse,dsInactive];
    fnf.btnGravarNF.Enabled := DtSrc_NF.State in [dsInsert,dsEdit];
    fnf.btnCancelarNF.Enabled := DtSrc_NF.State in [dsInsert,dsEdit];
    fnf.btnExcluirNF.Enabled := DtSrc_NF.State in [dsBrowse];
    fnf.btnImprimirNF.Enabled := DtSrc_NF.State in [dsBrowse];

    if DtSrc_NF.State in [dsInsert, dsEdit] then
    begin
      fnf.btnIncluirNF.Visible := False;
      fnf.btnExcluirNF.Visible := False;
      fnf.btnGravarNF.Visible := True;
      fnf.btnGravarNF.Enabled := True;
      fnf.btnCancelarNF.Visible := True;
      fnf.btnCancelarNF.Enabled := True;
    end;

    if DtSrc_NF.State in [dsBrowse,dsInactive] then
    begin
      fnf.btnIncluirNF.Enabled := True;
      fnf.btnIncluirNF.Visible := True;
      fnf.btnExcluirNF.Visible := True;
      fnf.btnExcluirNF.Enabled := True;
      fnf.btnGravarNF.Visible := False;
      fnf.btnCancelarNF.Visible := False;
    end;
 end;

 if (FormExiste(fNFCompra) = True) then
 begin
    fNFCompra.btnIncluirNF.Enabled := DtSrc_NF.State in [dsBrowse,dsInactive];
    fNFCompra.btnGravarNF.Enabled := DtSrc_NF.State in [dsInsert,dsEdit];
    fNFCompra.btnCancelarNF.Enabled := DtSrc_NF.State in [dsInsert,dsEdit];
    fNFCompra.btnExcluirNF.Enabled := DtSrc_NF.State in [dsBrowse];
    fNFCompra.btnImprimirNF.Enabled := DtSrc_NF.State in [dsBrowse];

    if DtSrc_NF.State in [dsInsert, dsEdit] then
    begin
      fNFCompra.btnIncluirNF.Visible := False;
      fNFCompra.btnExcluirNF.Visible := False;
      fNFCompra.btnGravarNF.Visible := True;
      fNFCompra.btnGravarNF.Enabled := True;
      fNFCompra.btnCancelarNF.Visible := True;
      fNFCompra.btnCancelarNF.Enabled := True;
    end;

    if DtSrc_NF.State in [dsBrowse,dsInactive] then
    begin
      fNFCompra.btnIncluirNF.Enabled := True;
      fNFCompra.btnIncluirNF.Visible := True;
      fNFCompra.btnExcluirNF.Visible := True;
      fNFCompra.btnExcluirNF.Enabled := True;
      fNFCompra.btnGravarNF.Visible := False;
      fNFCompra.btnCancelarNF.Visible := False;
    end;
 end;

end;

procedure TDMNF.cds_cliNewRecord(DataSet: TDataSet);
begin
    cds_cliDATACADASTRO.Value:=Date;
    cds_CliCODUSUARIO.AsInteger:=1;
    cds_CliCODBANCO.AsInteger:=1;
    if dm.scds_banco_proc.Active then
       dm.scds_banco_proc.Close;
    dm.scds_banco_proc.Params[0].AsInteger:=cds_CliCODBANCO.AsInteger;
    dm.scds_banco_proc.Open;
    cds_cliBANCO.asstring:=dm.scds_banco_procBANCO.asstring;
    if dm.scds_banco_proc.IsEmpty then
      cds_cliBANCO.asstring := 'x';
    dm.scds_banco_proc.Close;
end;

procedure TDMNF.DtSrcVendaStateChange(Sender: TObject);
begin
  if (DtSrcVenda.DataSet.State in [dsInsert, dsEdit]) then
  begin
    DtSrc1.DataSet.Edit;
    DtSrc.DataSet.Edit;
    if (FormExiste(fNF) = True) then
    begin
      fnf.btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
      fnf.btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
      fnf.btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
      fnf.btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
      fnf.btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive];
      fnf.btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

      if DtSrc.State in [dsInsert, dsEdit] then
      begin
        fnf.btnIncluir.Visible := False;
        fnf.btnexcluir.Visible := False;
        fnf.btngravar.Visible := True;
        fnf.btnGravar.Enabled := True;
        fnf.btnCancelar.Visible := True;
        fnf.btnCancelar.Enabled := True;
      end;

      if DtSrc.State in [dsBrowse,dsInactive] then
      begin
        fnf.btnIncluir.Enabled := True;
        fnf.btnIncluir.Visible := True;
        fnf.btnexcluir.Visible := True;
        fnf.btnExcluir.Enabled := True;
        fnf.btngravar.Visible := False;
        fnf.btnCancelar.Visible := False;
      end;
    end;

    if (FormExiste(fNotaf) = True) then
    begin
      fNotaf.btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
      fNotaf.btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
      fNotaf.btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
      fNotaf.btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
      fNotaf.btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive];
      fNotaf.btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

      if DtSrc.State in [dsInsert, dsEdit] then
      begin
        fNotaf.btnIncluir.Visible := False;
        fNotaf.btnexcluir.Visible := False;
        fNotaf.btngravar.Visible := True;
        fNotaf.btnGravar.Enabled := True;
        fNotaf.btnCancelar.Visible := True;
        fNotaf.btnCancelar.Enabled := True;
      end;

      if DtSrc.State in [dsBrowse,dsInactive] then
      begin
        fNotaf.btnIncluir.Enabled := True;
        fNotaf.btnIncluir.Visible := True;
        fNotaf.btnexcluir.Visible := True;
        fNotaf.btnExcluir.Enabled := True;
        fNotaf.btngravar.Visible := False;
        fNotaf.btnCancelar.Visible := False;
      end;
    end;

  end;
end;

procedure TDMNF.dtSrcCompraStateChange(Sender: TObject);
begin
  if (DtSrcCompra.DataSet.State in [dsEdit]) then
  begin
    DtSrc1.DataSet.Edit;
    DtSrc.DataSet.Edit;
    fnfCompra.btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
    fnfCompra.btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
    fnfCompra.btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
    fnfCompra.btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
    fnfCompra.btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive];
    fnfCompra.btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      fnfCompra.btnIncluir.Visible := False;
      fnfCompra.btnexcluir.Visible := False;
      fnfCompra.btngravar.Visible := True;
      fnfCompra.btnGravar.Enabled := True;
      fnfCompra.btnCancelar.Visible := True;
      fnfCompra.btnCancelar.Enabled := True;
    end;

    if DtSrc.State in [dsBrowse,dsInactive] then
    begin
      fnfCompra.btnIncluir.Enabled := True;
      fnfCompra.btnIncluir.Visible := True;
      fnfCompra.btnexcluir.Visible := True;
      fnfCompra.btnExcluir.Enabled := True;
      fnfCompra.btngravar.Visible := False;
      fnfCompra.btnCancelar.Visible := False;
    end;
  end;
end;

procedure TDMNF.cds_Mov_detAfterPost(DataSet: TDataSet);
begin
    if (FormExiste(fNotaf) = True) then
      if (cds_Mov_detTotalPedido.Value > 0)then
      begin
        cds_nfVALOR_PRODUTO.Value := cds_Mov_detTotalPedido.Value;
        if(not fnotaf.calcman.Checked) then
        if (cds_nfVALOR_TOTAL_NOTA.Value <> cds_nfVALOR_PRODUTO.Value) then
          cds_nfVALOR_TOTAL_NOTA.Value := cds_Mov_detTotalPedido.Value +  cds_vendaVALOR_ICMS.AsFloat + DMNF.cds_vendaVALOR_SEGURO.AsFloat +
           cds_vendaVALOR_SEGURO.AsFloat + cds_vendaVALOR_FRETE.AsFloat + cds_vendaOUTRAS_DESP.AsFloat - cds_vendaDESCONTO.AsFloat;
      end;
    if (FormExiste(fNotaFc) = True) then
      if (cds_Mov_detTotalPedido.Value > 0)then
      begin
        cds_nf1VALOR_PRODUTO.Value := cds_Mov_detTotalPedido.Value;
        if(not fnotafc.calcman.Checked) then
          if (cds_nf1VALOR_TOTAL_NOTA.Value <> cds_nf1VALOR_PRODUTO.Value) then
            cds_nf1VALOR_TOTAL_NOTA.Value := cds_Mov_detTotalPedido.Value + cds_nf1VALOR_ICMS.AsFloat + cds_nf1VALOR_IPI.AsFloat +
            cds_nf1VALOR_SEGURO.AsFloat + cds_nf1VALOR_FRETE.AsFloat + cds_nf1OUTRAS_DESP.AsFloat - cds_nf1VALOR_DESCONTO.AsFloat
            + cds_nf1II.AsFloat;
      end;
    
end;

function TDMNF.FormExiste(aberto: Tform): Boolean;
var
  I:Integer;
begin
    FormExiste := false;
    for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] = aberto then
    begin
      FormExiste := true;
      Break;
    end
end;

procedure TDMNF.cds_vendaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TDMNF.cds_Mov_detPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  MessageDlg('Não é possível gravar o registro.' + #10#13 + E.Message , mtWarning,
        [mbOk], 0);

end;

procedure TDMNF.cds_nf1NewRecord(DataSet: TDataSet);
begin
   cds_nf1NUMNF.AsInteger := 1999999;
   cds_nf1VALOR_ICMS.AsFloat := 0;
   cds_nf1VALOR_ICMS_SUBST.AsFloat := 0;
   cds_nf1VALOR_PRODUTO.AsFloat := 0;
   cds_nf1VALOR_FRETE.AsFloat := 0;
   cds_nf1VALOR_SEGURO.AsFloat := 0;
   cds_nf1VALOR_IPI.AsFloat := 0;
   cds_nf1OUTRAS_DESP.AsFloat := 0;
   cds_nf1BASE_ICMS.AsFloat := 0;
   cds_nf1BASE_ICMS_SUBST.AsFloat := 0;
   cds_nf1VALOR_TOTAL_NOTA.AsFloat := 0;
   cds_nf1VALOR_DESCONTO.AsFloat := 0;
   cds_nf1II.AsFloat := 0;
   cds_nf1BCII.AsFloat := 0;
   cds_nf1NATUREZA.AsInteger := cds_MovimentoCODNATUREZA.AsInteger;
   cds_nf1DESCNATUREZA.AsString := cds_MovimentoDESCNATUREZA.AsString;
   cds_nf1DTAEMISSAO.AsDateTime := Now;//cds_vendaDATAVENDA.AsDateTime;
   cds_nf1DTASAIDA.AsDateTime := Now;//cds_vendaDATAVENDA.AsDateTime;
   cds_nf1HORASAIDA.AsDateTime := time;
   cds_nf1ESPECIE.AsString := 'VOLUME';
end;

procedure TDMNF.DtSrc_NF1StateChange(Sender: TObject);
begin
  if (FormExiste(fNotaFc) = True) then
  begin
    if (DMNF.DtSrc_NF1.State in [dsEdit, dsInsert]) then
    begin
       fNotaFc.btnIncluir.Visible := False;
       fNotaFc.btnExcluir.Visible := False;
       fNotaFc.btnGravar.Visible := True;
       fNotaFc.btnGravar.Enabled := True;
       fNotaFc.btnCancelar.Visible := True;
       fNotaFc.btnCancelar.Enabled := True;
       if (DMNF.DtSrc_NF1.State in [dsEdit]) then
       begin
         cds_Movimento.Edit;
         cds_Mov_det.Edit;
         cds_compra.Edit;
       end;
    end;
    if (DMNF.DtSrc_NF1.State in [dsBrowse, dsInactive]) then
    begin
       fNotaFc.btnIncluir.Visible := True;
       fNotaFc.btnIncluir.Enabled := True;
       fNotaFc.btnExcluir.Visible := True;
       fNotaFc.btnExcluir.Enabled := True;
       fNotaFc.btnGravar.Visible := False;
       fNotaFc.btnGravar.Enabled := False;
       fNotaFc.btnCancelar.Visible := False;
       fNotaFc.btnCancelar.Enabled := False;
       fNotaFc.btnSair.Visible := True;
       fNotaFc.btnSair.Enabled := True;
    end;
  end;

end;

procedure TDMNF.baixaEstoque(codMovto: Integer; DtaMovto: TDateTime; tipo: String);
var FEstoque: TEstoque;
begin
  {Try
    FEstoque := TEstoque.Create;
    FEstoque.baixaEstoque(codMovto, DtaMovto, tipo);
  Finally
    FEstoque.Free;
  end;}
end;

function TDMNF.baixouEstoque(codMovtod: Integer): Boolean;
begin
  Result := False;
  if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
  cds_Mov_det.Params.ParamByName('pCodMov').AsInteger := codMovtod;
  cds_Mov_det.Open;
  While not cds_Mov_det.Eof do
  begin
    if (cds_Mov_detSTATUS.IsNull) then
    begin
      Result := False;
      Exit;
    end;
    cds_Mov_det.Next;
  end;
  Result := True;
end;

function TDMNF.cancelouEstoque(codMovtoC: Integer): Boolean;
begin
  Result := False;
  if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
  cds_Mov_det.Params.ParamByName('pCodMov').AsInteger := codMovtoC;
  cds_Mov_det.Open;
  While not cds_Mov_det.Eof do
  begin
    if (cds_Mov_detSTATUS.AsString = '9') then
    begin
      Result := False;
      Exit;
    end;
    cds_Mov_det.Next;
  end;
  Result := True;
end;

procedure TDMNF.cancelaEstoque(codMovto: Integer; DtaMovto: TDateTime;
  tipo: String);
  var FEstoque: TEstoque;
begin
{  Try
    FEstoque := TEstoque.Create;
    FEstoque.EstornaEstoque(tipo, codMovto, DtaMovto);
  Finally
    FEstoque.Free;
  end; }
end;

end.
