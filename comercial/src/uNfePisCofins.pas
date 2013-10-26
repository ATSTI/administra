unit uNfePisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrSpedPisCofins, StdCtrls, ExtCtrls, ComCtrls, JvExComCtrls,
  JvProgressBar, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, ACBrEPCBlocos, ACBrTXTClass, ACBrUtil, FMTBcd,
  DBClient, Provider, DB, SqlExpr, uUtils, Buttons;

type
  TfNfePisCofins = class(TForm)
    btnTXT: TButton;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtFile: TEdit;
    cbConcomitante: TCheckBox;
    edNotas: TEdit;
    Label2: TLabel;
    memoError: TMemo;
    Label3: TLabel;
    memoTXT: TMemo;
    Label7: TLabel;
    edBufLinhas: TEdit;
    Label8: TLabel;
    edBufNotas: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbMes: TComboBox;
    data_ini: TJvDatePickerEdit;
    data_fim: TJvDatePickerEdit;
    btnError: TButton;
    cbTipo: TComboBox;
    Label11: TLabel;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaEMPRESA: TStringField;
    cdsEmpresaRAZAO: TStringField;
    cdsEmpresaCNPJ_CPF: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaLOGRADOURO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaDDD: TStringField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaFONE_1: TStringField;
    cdsEmpresaFONE_2: TStringField;
    cdsEmpresaFAX: TStringField;
    cdsEmpresaE_MAIL: TStringField;
    cdsEmpresaWEB: TStringField;
    cdsEmpresaLOGOTIPO: TGraphicField;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaTIPO: TStringField;
    cdsEmpresaIE_RG: TStringField;
    cdsEmpresaSLOGAN: TStringField;
    cdsEmpresaOUTRAS_INFO: TStringField;
    cdsEmpresaCODIGO_CONTA: TIntegerField;
    cdsEmpresaDIVERSOS1: TStringField;
    cdsEmpresaDIVERSOS2: TStringField;
    cdsEmpresaDIVERSOS3: TStringField;
    cdsEmpresaANOLETIVO: TIntegerField;
    cdsEmpresaMEDIA_ESCOLA: TFloatField;
    cdsEmpresaPORTA: TIntegerField;
    cdsEmpresaSMTP: TStringField;
    cdsEmpresaSENHA: TStringField;
    cdsEmpresaCCUSTO: TIntegerField;
    cdsEmpresaNUMERO: TStringField;
    cdsEmpresaCD_IBGE: TStringField;
    cdsEmpresaCRT: TIntegerField;
    cdsEmpresaTREGIME: TIntegerField;
    cdsEmpresaIM: TStringField;
    cdsEmpresaCONTADOR: TStringField;
    cdsEmpresaCONTADOR_CRC: TStringField;
    cdsEmpresaCONTADOR_CNPJ: TStringField;
    cdsEmpresaCONTADOR_CPF: TStringField;
    cdsEmpresaCONTADOR_CEP: TStringField;
    cdsEmpresaCONTADOR_END: TStringField;
    cdsEmpresaCONTADOR_NUMEND: TStringField;
    cdsEmpresaCONTADOR_COMPL: TStringField;
    cdsEmpresaCONTADOR_BAIRRO: TStringField;
    cdsEmpresaCONTADOR_FONE: TStringField;
    cdsEmpresaCONTADOR_FAX: TStringField;
    cdsEmpresaCONTADOR_EMAIL: TStringField;
    cdsEmpresaCONTADOR_COD_MUN: TStringField;
    cdsEmpresaINDICADORNATUREZAPJ: TSmallintField;
    cdsEmpresaINDICADORATIVIDADE: TSmallintField;
    cdsEmpresaCODINDINCTRIBUTARIA: TSmallintField;
    cdsEmpresaINDAPROCRED: TSmallintField;
    cdsEmpresaCODINDTIPOCON: TSmallintField;
    cdsEmpresaCODINDCRITESCRIT: TSmallintField;
    cdsEmpresaINDCODINCIDENCIA: TSmallintField;
    cdsEmpresaINDCTA: TSmallintField;
    cdsEmpresaINDESCRITURACAO: TSmallintField;
    cdsEmpresaBASECALCULOCREDITO: TSmallintField;
    cdsEmpresaINDAJ: TSmallintField;
    cdsEmpresaCODAJ: TSmallintField;
    cdsEmpresaINDNATREC: TSmallintField;
    cdsEmpresaNATCREDDESC: TSmallintField;
    cdsEmpresaCODCRED: TSmallintField;
    cdsEmpresaINDTIPCOOP: TSmallintField;
    cdsEmpresaINDCREDORI: TSmallintField;
    cdsEmpresaINDREC: TSmallintField;
    cdsEmpresaINDDESCCRED: TSmallintField;
    cdsEmpresaCODCONT: TSmallintField;
    cdsEmpresaINDNATRETFONTE: TSmallintField;
    cdsEmpresaINDORIGEMDIVERSAS: TSmallintField;
    cdsEmpresaINDNATDEDUCAO: TSmallintField;
    cdsEmpresaINDTPOPERACAORECEITA: TSmallintField;
    sdsNFVenda: TSQLDataSet;
    dspNFVenda: TDataSetProvider;
    cdsNFVenda: TClientDataSet;
    sdsItens: TSQLDataSet;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    sdsUnimed: TSQLQuery;
    cdsItensCODMOVIMENTO: TIntegerField;
    cdsItensDATAMOVIMENTO: TDateField;
    cdsItensCODCLIENTE: TIntegerField;
    cdsItensCODNATUREZA: TSmallintField;
    cdsItensSTATUS: TSmallintField;
    cdsItensCODUSUARIO: TSmallintField;
    cdsItensCODVENDEDOR: TSmallintField;
    cdsItensCODALMOXARIFADO: TIntegerField;
    cdsItensCODFORNECEDOR: TIntegerField;
    cdsItensCODPRODUTO: TIntegerField;
    cdsItensQUANTIDADE: TFloatField;
    cdsItensPRECO: TFloatField;
    cdsItensICMS: TFloatField;
    cdsItensUN: TStringField;
    cdsItensQTDE_ALT: TFloatField;
    cdsItensNOTAFISCAL: TStringField;
    cdsItensDESCPRODUTO: TStringField;
    cdsItensCST: TStringField;
    cdsItensVALOR_ICMS: TFloatField;
    cdsItensVLR_BASE: TFloatField;
    cdsItensPORCENTAGENDESC: TFloatField;
    cdsItensICMS_SUBST: TFloatField;
    cdsItensICMS_SUBSTD: TFloatField;
    cdsItensVLR_BASEICMS: TFloatField;
    cdsItensPIPI: TFloatField;
    cdsItensVIPI: TFloatField;
    cdsItensCFOP: TStringField;
    cdsItensFRETE: TFloatField;
    cdsItensBCFRETE: TFloatField;
    cdsItensSTFRETE: TStringField;
    cdsItensBCSTFRETE: TFloatField;
    cdsItensICMSFRETE: TFloatField;
    cdsItensCSOSN: TStringField;
    cdsItensVALOR_DESCONTO: TFloatField;
    cdsItensVALOR_SEGURO: TFloatField;
    cdsItensVALOR_OUTROS: TFloatField;
    cdsItensOBS: TStringField;
    cdsItensCODSOLICITACAO: TIntegerField;
    cdsItensVALOR_PIS: TFloatField;
    cdsItensVALOR_COFINS: TFloatField;
    cdsItensII: TFloatField;
    cdsItensBCII: TFloatField;
    cdsItensCODPRO: TStringField;
    cdsItensNCM: TStringField;
    sdsMov: TSQLDataSet;
    dspMov: TDataSetProvider;
    cdsMov: TClientDataSet;
    sdsCompra: TSQLDataSet;
    dspCompra: TDataSetProvider;
    cdsCompra: TClientDataSet;
    sdsCompraDet: TSQLDataSet;
    dspCompraDet: TDataSetProvider;
    cdsCompraDet: TClientDataSet;
    sdsCompraDATACOMPRA: TDateField;
    sdsCompraNOTAFISCAL: TIntegerField;
    sdsCompraVALOR_ICMS: TFloatField;
    sdsCompraVALOR_FRETE: TFloatField;
    sdsCompraVALOR_SEGURO: TFloatField;
    sdsCompraVALOR_IPI: TFloatField;
    sdsCompraCODFORNECEDOR: TIntegerField;
    sdsCompraRAZAOSOCIAL: TStringField;
    sdsCompraCNPJ: TStringField;
    sdsCompraINSCESTADUAL: TStringField;
    sdsCompraTIPOFIRMA: TSmallintField;
    sdsCompraLOGRADOURO: TStringField;
    sdsCompraBAIRRO: TStringField;
    sdsCompraCIDADE: TStringField;
    sdsCompraCD_IBGE: TStringField;
    sdsCompraCEP: TStringField;
    sdsCompraCOMPLEMENTO: TStringField;
    sdsCompraDDD: TSmallintField;
    sdsCompraTELEFONE: TStringField;
    sdsCompraNUMERO: TStringField;
    sdsCompraPAIS: TStringField;
    sdsCompraSERIE: TStringField;
    sdsCompraVALOR: TFloatField;
    sdsCompraICMS_ST: TFloatField;
    sdsCompraICMS_BASE_ST: TFloatField;
    sdsCompraCODMOVIMENTO: TIntegerField;
    cdsCompraDATACOMPRA: TDateField;
    cdsCompraNOTAFISCAL: TIntegerField;
    cdsCompraVALOR_ICMS: TFloatField;
    cdsCompraVALOR_FRETE: TFloatField;
    cdsCompraVALOR_SEGURO: TFloatField;
    cdsCompraVALOR_IPI: TFloatField;
    cdsCompraCODFORNECEDOR: TIntegerField;
    cdsCompraRAZAOSOCIAL: TStringField;
    cdsCompraCNPJ: TStringField;
    cdsCompraINSCESTADUAL: TStringField;
    cdsCompraTIPOFIRMA: TSmallintField;
    cdsCompraLOGRADOURO: TStringField;
    cdsCompraBAIRRO: TStringField;
    cdsCompraCIDADE: TStringField;
    cdsCompraCD_IBGE: TStringField;
    cdsCompraCEP: TStringField;
    cdsCompraCOMPLEMENTO: TStringField;
    cdsCompraDDD: TSmallintField;
    cdsCompraTELEFONE: TStringField;
    cdsCompraNUMERO: TStringField;
    cdsCompraPAIS: TStringField;
    cdsCompraSERIE: TStringField;
    cdsCompraVALOR: TFloatField;
    cdsCompraICMS_ST: TFloatField;
    cdsCompraICMS_BASE_ST: TFloatField;
    cdsCompraCODMOVIMENTO: TIntegerField;
    cdsItensCSTIPI: TStringField;
    cdsItensCSTPIS: TStringField;
    cdsItensCSTCOFINS: TStringField;
    sdsCompraCHAVENF: TStringField;
    cdsCompraCHAVENF: TStringField;
    sdsNFVendaNOTASERIE: TStringField;
    sdsNFVendaNUMNF: TIntegerField;
    sdsNFVendaNATUREZA: TSmallintField;
    sdsNFVendaQUANTIDADE: TFloatField;
    sdsNFVendaMARCA: TStringField;
    sdsNFVendaPESOBRUTO: TBCDField;
    sdsNFVendaPESOLIQUIDO: TBCDField;
    sdsNFVendaESPECIE: TStringField;
    sdsNFVendaDTAEMISSAO: TDateField;
    sdsNFVendaDTASAIDA: TDateField;
    sdsNFVendaUF: TStringField;
    sdsNFVendaCODVENDA: TIntegerField;
    sdsNFVendaCODTRANSP: TIntegerField;
    sdsNFVendaNUMERO: TStringField;
    sdsNFVendaNOTAFISCAL: TIntegerField;
    sdsNFVendaHORASAIDA: TTimeField;
    sdsNFVendaDATA_SISTEMA: TSQLTimeStampField;
    sdsNFVendaBASE_ICMS: TFloatField;
    sdsNFVendaVALOR_ICMS: TFloatField;
    sdsNFVendaBASE_ICMS_SUBST: TFloatField;
    sdsNFVendaVALOR_ICMS_SUBST: TFloatField;
    sdsNFVendaVALOR_PRODUTO: TFloatField;
    sdsNFVendaVALOR_FRETE: TFloatField;
    sdsNFVendaVALOR_SEGURO: TFloatField;
    sdsNFVendaOUTRAS_DESP: TFloatField;
    sdsNFVendaVALOR_IPI: TFloatField;
    sdsNFVendaVALOR_TOTAL_NOTA: TFloatField;
    sdsNFVendaCORPONF1: TStringField;
    sdsNFVendaCORPONF2: TStringField;
    sdsNFVendaCORPONF3: TStringField;
    sdsNFVendaCORPONF4: TStringField;
    sdsNFVendaCORPONF5: TStringField;
    sdsNFVendaCORPONF6: TStringField;
    sdsNFVendaCFOP: TStringField;
    sdsNFVendaCODCLIENTE: TIntegerField;
    sdsNFVendaFATURA: TStringField;
    sdsNFVendaICMS: TFloatField;
    sdsNFVendaREDUZICMS: TFloatField;
    sdsNFVendaNOMETRANSP: TStringField;
    sdsNFVendaPLACATRANSP: TStringField;
    sdsNFVendaCNPJ_CPF: TStringField;
    sdsNFVendaEND_TRANSP: TStringField;
    sdsNFVendaCIDADE_TRANSP: TStringField;
    sdsNFVendaUF_VEICULO_TRANSP: TStringField;
    sdsNFVendaUF_TRANSP: TStringField;
    sdsNFVendaFRETE: TStringField;
    sdsNFVendaINSCRICAOESTADUAL: TStringField;
    sdsNFVendaSTATUS: TStringField;
    sdsNFVendaVLRTOTALEXP: TFloatField;
    sdsNFVendaIMPRESSA: TStringField;
    sdsNFVendaSERIE: TStringField;
    sdsNFVendaSELECIONOU: TStringField;
    sdsNFVendaID_GUIA: TIntegerField;
    sdsNFVendaPROTOCOLOENV: TStringField;
    sdsNFVendaNUMRECIBO: TStringField;
    sdsNFVendaPROTOCOLOCANC: TStringField;
    sdsNFVendaPESOREMESSA: TBCDField;
    sdsNFVendaNOTAMAE: TIntegerField;
    sdsNFVendaVALOR_PIS: TFloatField;
    sdsNFVendaVALOR_COFINS: TFloatField;
    sdsNFVendaVALOR_DESCONTO: TFloatField;
    sdsNFVendaCCUSTO: TIntegerField;
    sdsNFVendaIDCOMPLEMENTAR: TStringField;
    sdsNFVendaXMLNFE: TGraphicField;
    sdsNFVendaBCII: TFloatField;
    sdsNFVendaNOMEXML: TStringField;
    sdsNFVendaII: TFloatField;
    sdsNFVendaINDPAG: TIntegerField;
    sdsNFVendaCODCLIENTE_1: TIntegerField;
    sdsNFVendaNOMECLIENTE: TStringField;
    sdsNFVendaRAZAOSOCIAL: TStringField;
    sdsNFVendaCONTATO: TStringField;
    sdsNFVendaTIPOFIRMA: TSmallintField;
    sdsNFVendaCPF: TStringField;
    sdsNFVendaCNPJ: TStringField;
    sdsNFVendaINSCESTADUAL: TStringField;
    sdsNFVendaRG: TStringField;
    sdsNFVendaSEGMENTO: TSmallintField;
    sdsNFVendaREGIAO: TSmallintField;
    sdsNFVendaLIMITECREDITO: TFloatField;
    sdsNFVendaDATACADASTRO: TDateField;
    sdsNFVendaCODUSUARIO: TIntegerField;
    sdsNFVendaSTATUS_1: TSmallintField;
    sdsNFVendaHOMEPAGE: TStringField;
    sdsNFVendaPRAZORECEBIMENTO: TSmallintField;
    sdsNFVendaPRAZOENTREGA: TSmallintField;
    sdsNFVendaCODBANCO: TSmallintField;
    sdsNFVendaBASE_ICMS_1: TSmallintField;
    sdsNFVendaDATANASC: TDateField;
    sdsNFVendaCONTA_CLIENTE: TStringField;
    sdsNFVendaOBS: TStringField;
    sdsNFVendaTEM_IE: TStringField;
    sdsNFVendaDATARESC: TDateField;
    sdsNFVendaNOMEMAE: TStringField;
    sdsNFVendaSEXO: TStringField;
    sdsNFVendaFORMA_CORRESPOND: TStringField;
    sdsNFVendaGRUPO_CLIENTE: TStringField;
    sdsNFVendaCODINCLUCANC: TIntegerField;
    sdsNFVendaEXIST_COBERT: TStringField;
    sdsNFVendaEXISTCOPART: TStringField;
    sdsNFVendaDATAREINC: TDateField;
    sdsNFVendaGERAAVISO: TStringField;
    sdsNFVendaGERAENV: TStringField;
    sdsNFVendaGERABOL: TStringField;
    sdsNFVendaEMVIAGEM: TStringField;
    sdsNFVendaDTAALTERA: TDateField;
    sdsNFVendaSERIELETRA: TStringField;
    sdsNFVendaSERIE_1: TStringField;
    sdsNFVendaRA: TStringField;
    sdsNFVendaCURSO: TStringField;
    sdsNFVendaIP: TStringField;
    sdsNFVendaN_CONTRATO: TStringField;
    sdsNFVendaMAC: TStringField;
    sdsNFVendaMARCA_1: TStringField;
    sdsNFVendaBANDA_UPLOAD: TStringField;
    sdsNFVendaBANDA_DOWLOAD: TStringField;
    sdsNFVendaTORRE_CONECCAO: TStringField;
    sdsNFVendaCOD_FAIXA: TIntegerField;
    sdsNFVendaDESCONTO: TFloatField;
    sdsNFVendaMENSALIDADE: TFloatField;
    sdsNFVendaANUIDADE: TFloatField;
    sdsNFVendaPARCELA: TIntegerField;
    sdsNFVendaPARCELAGERADAS: TIntegerField;
    sdsNFVendaNUMERO_1: TIntegerField;
    sdsNFVendaDATANASCIMENTO: TSQLTimeStampField;
    sdsNFVendaANOLETIVO: TStringField;
    sdsNFVendaSITUACAOESCOLAR: TStringField;
    sdsNFVendaRGMAE: TStringField;
    sdsNFVendaCPFMAE: TStringField;
    sdsNFVendaPAI: TStringField;
    sdsNFVendaRGPAI: TStringField;
    sdsNFVendaCPFPAI: TStringField;
    sdsNFVendaLANCADOCLASSE: TIntegerField;
    sdsNFVendaTRANSPORTE: TStringField;
    sdsNFVendaCIDADENASC: TStringField;
    sdsNFVendaUFNASC: TStringField;
    sdsNFVendaNACIONALIDADE: TStringField;
    sdsNFVendaCERTIDAONASCNUM: TStringField;
    sdsNFVendaLIVRONASC: TStringField;
    sdsNFVendaFLLIVRONASC: TStringField;
    sdsNFVendaLOCALTRABPAI: TStringField;
    sdsNFVendaLOCALTRABMAE: TStringField;
    sdsNFVendaTELTRABPAI: TStringField;
    sdsNFVendaTELTRABMAE: TStringField;
    sdsNFVendaINFONECESSARIAS: TStringField;
    sdsNFVendaCARTEIRAVACINACAO: TStringField;
    sdsNFVendaRAPRODESP: TStringField;
    sdsNFVendaLOCALTRABALUNO: TStringField;
    sdsNFVendaTELTRABALUNO: TStringField;
    sdsNFVendaRAPROD: TStringField;
    sdsNFVendaCERT_NAS_COMARCA: TStringField;
    sdsNFVendaCERT_NAS_UF: TStringField;
    sdsNFVendaCERT_NAS_MUNICIPIO: TStringField;
    sdsNFVendaCERT_NAS_DISTRITO: TStringField;
    sdsNFVendaCERT_NAS_SUBDISTRITO: TStringField;
    sdsNFVendaDIVERSO1: TStringField;
    sdsNFVendaDIVERSO2: TStringField;
    sdsNFVendaDATAEMISSAORG: TDateField;
    sdsNFVendaESTADORG: TStringField;
    sdsNFVendaCOMUNICAALUNO: TStringField;
    sdsNFVendaFONEMAE: TStringField;
    sdsNFVendaCELULARMAE: TStringField;
    sdsNFVendaCOMUNICAMAE: TStringField;
    sdsNFVendaFONEPAI: TStringField;
    sdsNFVendaCELULARPAI: TStringField;
    sdsNFVendaCOMUNICAPAI: TStringField;
    sdsNFVendaVALOR_MATRICULA: TFloatField;
    sdsNFVendaDATATRANSF: TDateField;
    sdsNFVendaCOR_RACA: TStringField;
    sdsNFVendaPERIODO: TStringField;
    sdsNFVendaFOTO: TStringField;
    sdsNFVendaDATA_MATRICULA: TSQLTimeStampField;
    sdsNFVendaCODRESPONSAVEL: TIntegerField;
    sdsNFVendaID_COB: TIntegerField;
    sdsNFVendaCOD_TRANPORTADORA: TIntegerField;
    sdsNFVendaBLOQUEIO: TStringField;
    sdsNFVendaCFOP_1: TStringField;
    sdsNFVendaCOD_CLI: TStringField;
    sdsNFVendaCORTESIA: TStringField;
    sdsNFVendaVALOR_CONSUMO: TFloatField;
    sdsNFVendaVALOR_CORTESIA: TFloatField;
    sdsNFVendaE_FORNECEDOR: TStringField;
    sdsNFVendaCODFORNECEDOR: TIntegerField;
    sdsNFVendaCODFISCAL: TStringField;
    sdsNFVendaCARGOFUNCAO: TIntegerField;
    sdsNFVendaSUFRAMA: TStringField;
    sdsNFVendaCODENDERECO: TIntegerField;
    sdsNFVendaCODCLIENTE_2: TIntegerField;
    sdsNFVendaLOGRADOURO: TStringField;
    sdsNFVendaBAIRRO: TStringField;
    sdsNFVendaCOMPLEMENTO: TStringField;
    sdsNFVendaCIDADE: TStringField;
    sdsNFVendaUF_1: TStringField;
    sdsNFVendaCEP: TStringField;
    sdsNFVendaTELEFONE: TStringField;
    sdsNFVendaTELEFONE1: TStringField;
    sdsNFVendaTELEFONE2: TStringField;
    sdsNFVendaFAX: TStringField;
    sdsNFVendaE_MAIL: TStringField;
    sdsNFVendaRAMAL: TStringField;
    sdsNFVendaTIPOEND: TSmallintField;
    sdsNFVendaDADOSADICIONAIS: TStringField;
    sdsNFVendaDDD: TStringField;
    sdsNFVendaDDD1: TStringField;
    sdsNFVendaDDD2: TStringField;
    sdsNFVendaDDD3: TStringField;
    sdsNFVendaNUMERO_2: TStringField;
    sdsNFVendaCD_IBGE: TStringField;
    sdsNFVendaPAIS: TStringField;
    sdsNFVendaCODMOVIMENTO: TIntegerField;
    cdsNFVendaNOTASERIE: TStringField;
    cdsNFVendaNUMNF: TIntegerField;
    cdsNFVendaNATUREZA: TSmallintField;
    cdsNFVendaQUANTIDADE: TFloatField;
    cdsNFVendaMARCA: TStringField;
    cdsNFVendaPESOBRUTO: TBCDField;
    cdsNFVendaPESOLIQUIDO: TBCDField;
    cdsNFVendaESPECIE: TStringField;
    cdsNFVendaDTAEMISSAO: TDateField;
    cdsNFVendaDTASAIDA: TDateField;
    cdsNFVendaUF: TStringField;
    cdsNFVendaCODVENDA: TIntegerField;
    cdsNFVendaCODTRANSP: TIntegerField;
    cdsNFVendaNUMERO: TStringField;
    cdsNFVendaNOTAFISCAL: TIntegerField;
    cdsNFVendaHORASAIDA: TTimeField;
    cdsNFVendaDATA_SISTEMA: TSQLTimeStampField;
    cdsNFVendaBASE_ICMS: TFloatField;
    cdsNFVendaVALOR_ICMS: TFloatField;
    cdsNFVendaBASE_ICMS_SUBST: TFloatField;
    cdsNFVendaVALOR_ICMS_SUBST: TFloatField;
    cdsNFVendaVALOR_PRODUTO: TFloatField;
    cdsNFVendaVALOR_FRETE: TFloatField;
    cdsNFVendaVALOR_SEGURO: TFloatField;
    cdsNFVendaOUTRAS_DESP: TFloatField;
    cdsNFVendaVALOR_IPI: TFloatField;
    cdsNFVendaVALOR_TOTAL_NOTA: TFloatField;
    cdsNFVendaCORPONF1: TStringField;
    cdsNFVendaCORPONF2: TStringField;
    cdsNFVendaCORPONF3: TStringField;
    cdsNFVendaCORPONF4: TStringField;
    cdsNFVendaCORPONF5: TStringField;
    cdsNFVendaCORPONF6: TStringField;
    cdsNFVendaCFOP: TStringField;
    cdsNFVendaCODCLIENTE: TIntegerField;
    cdsNFVendaFATURA: TStringField;
    cdsNFVendaICMS: TFloatField;
    cdsNFVendaREDUZICMS: TFloatField;
    cdsNFVendaNOMETRANSP: TStringField;
    cdsNFVendaPLACATRANSP: TStringField;
    cdsNFVendaCNPJ_CPF: TStringField;
    cdsNFVendaEND_TRANSP: TStringField;
    cdsNFVendaCIDADE_TRANSP: TStringField;
    cdsNFVendaUF_VEICULO_TRANSP: TStringField;
    cdsNFVendaUF_TRANSP: TStringField;
    cdsNFVendaFRETE: TStringField;
    cdsNFVendaINSCRICAOESTADUAL: TStringField;
    cdsNFVendaSTATUS: TStringField;
    cdsNFVendaVLRTOTALEXP: TFloatField;
    cdsNFVendaIMPRESSA: TStringField;
    cdsNFVendaSERIE: TStringField;
    cdsNFVendaSELECIONOU: TStringField;
    cdsNFVendaID_GUIA: TIntegerField;
    cdsNFVendaPROTOCOLOENV: TStringField;
    cdsNFVendaNUMRECIBO: TStringField;
    cdsNFVendaPROTOCOLOCANC: TStringField;
    cdsNFVendaPESOREMESSA: TBCDField;
    cdsNFVendaNOTAMAE: TIntegerField;
    cdsNFVendaVALOR_PIS: TFloatField;
    cdsNFVendaVALOR_COFINS: TFloatField;
    cdsNFVendaVALOR_DESCONTO: TFloatField;
    cdsNFVendaCCUSTO: TIntegerField;
    cdsNFVendaIDCOMPLEMENTAR: TStringField;
    cdsNFVendaXMLNFE: TGraphicField;
    cdsNFVendaBCII: TFloatField;
    cdsNFVendaNOMEXML: TStringField;
    cdsNFVendaII: TFloatField;
    cdsNFVendaINDPAG: TIntegerField;
    cdsNFVendaCODCLIENTE_1: TIntegerField;
    cdsNFVendaNOMECLIENTE: TStringField;
    cdsNFVendaRAZAOSOCIAL: TStringField;
    cdsNFVendaCONTATO: TStringField;
    cdsNFVendaTIPOFIRMA: TSmallintField;
    cdsNFVendaCPF: TStringField;
    cdsNFVendaCNPJ: TStringField;
    cdsNFVendaINSCESTADUAL: TStringField;
    cdsNFVendaRG: TStringField;
    cdsNFVendaSEGMENTO: TSmallintField;
    cdsNFVendaREGIAO: TSmallintField;
    cdsNFVendaLIMITECREDITO: TFloatField;
    cdsNFVendaDATACADASTRO: TDateField;
    cdsNFVendaCODUSUARIO: TIntegerField;
    cdsNFVendaSTATUS_1: TSmallintField;
    cdsNFVendaHOMEPAGE: TStringField;
    cdsNFVendaPRAZORECEBIMENTO: TSmallintField;
    cdsNFVendaPRAZOENTREGA: TSmallintField;
    cdsNFVendaCODBANCO: TSmallintField;
    cdsNFVendaBASE_ICMS_1: TSmallintField;
    cdsNFVendaDATANASC: TDateField;
    cdsNFVendaCONTA_CLIENTE: TStringField;
    cdsNFVendaOBS: TStringField;
    cdsNFVendaTEM_IE: TStringField;
    cdsNFVendaDATARESC: TDateField;
    cdsNFVendaNOMEMAE: TStringField;
    cdsNFVendaSEXO: TStringField;
    cdsNFVendaFORMA_CORRESPOND: TStringField;
    cdsNFVendaGRUPO_CLIENTE: TStringField;
    cdsNFVendaCODINCLUCANC: TIntegerField;
    cdsNFVendaEXIST_COBERT: TStringField;
    cdsNFVendaEXISTCOPART: TStringField;
    cdsNFVendaDATAREINC: TDateField;
    cdsNFVendaGERAAVISO: TStringField;
    cdsNFVendaGERAENV: TStringField;
    cdsNFVendaGERABOL: TStringField;
    cdsNFVendaEMVIAGEM: TStringField;
    cdsNFVendaDTAALTERA: TDateField;
    cdsNFVendaSERIELETRA: TStringField;
    cdsNFVendaSERIE_1: TStringField;
    cdsNFVendaRA: TStringField;
    cdsNFVendaCURSO: TStringField;
    cdsNFVendaIP: TStringField;
    cdsNFVendaN_CONTRATO: TStringField;
    cdsNFVendaMAC: TStringField;
    cdsNFVendaMARCA_1: TStringField;
    cdsNFVendaBANDA_UPLOAD: TStringField;
    cdsNFVendaBANDA_DOWLOAD: TStringField;
    cdsNFVendaTORRE_CONECCAO: TStringField;
    cdsNFVendaCOD_FAIXA: TIntegerField;
    cdsNFVendaDESCONTO: TFloatField;
    cdsNFVendaMENSALIDADE: TFloatField;
    cdsNFVendaANUIDADE: TFloatField;
    cdsNFVendaPARCELA: TIntegerField;
    cdsNFVendaPARCELAGERADAS: TIntegerField;
    cdsNFVendaNUMERO_1: TIntegerField;
    cdsNFVendaDATANASCIMENTO: TSQLTimeStampField;
    cdsNFVendaANOLETIVO: TStringField;
    cdsNFVendaSITUACAOESCOLAR: TStringField;
    cdsNFVendaRGMAE: TStringField;
    cdsNFVendaCPFMAE: TStringField;
    cdsNFVendaPAI: TStringField;
    cdsNFVendaRGPAI: TStringField;
    cdsNFVendaCPFPAI: TStringField;
    cdsNFVendaLANCADOCLASSE: TIntegerField;
    cdsNFVendaTRANSPORTE: TStringField;
    cdsNFVendaCIDADENASC: TStringField;
    cdsNFVendaUFNASC: TStringField;
    cdsNFVendaNACIONALIDADE: TStringField;
    cdsNFVendaCERTIDAONASCNUM: TStringField;
    cdsNFVendaLIVRONASC: TStringField;
    cdsNFVendaFLLIVRONASC: TStringField;
    cdsNFVendaLOCALTRABPAI: TStringField;
    cdsNFVendaLOCALTRABMAE: TStringField;
    cdsNFVendaTELTRABPAI: TStringField;
    cdsNFVendaTELTRABMAE: TStringField;
    cdsNFVendaINFONECESSARIAS: TStringField;
    cdsNFVendaCARTEIRAVACINACAO: TStringField;
    cdsNFVendaRAPRODESP: TStringField;
    cdsNFVendaLOCALTRABALUNO: TStringField;
    cdsNFVendaTELTRABALUNO: TStringField;
    cdsNFVendaRAPROD: TStringField;
    cdsNFVendaCERT_NAS_COMARCA: TStringField;
    cdsNFVendaCERT_NAS_UF: TStringField;
    cdsNFVendaCERT_NAS_MUNICIPIO: TStringField;
    cdsNFVendaCERT_NAS_DISTRITO: TStringField;
    cdsNFVendaCERT_NAS_SUBDISTRITO: TStringField;
    cdsNFVendaDIVERSO1: TStringField;
    cdsNFVendaDIVERSO2: TStringField;
    cdsNFVendaDATAEMISSAORG: TDateField;
    cdsNFVendaESTADORG: TStringField;
    cdsNFVendaCOMUNICAALUNO: TStringField;
    cdsNFVendaFONEMAE: TStringField;
    cdsNFVendaCELULARMAE: TStringField;
    cdsNFVendaCOMUNICAMAE: TStringField;
    cdsNFVendaFONEPAI: TStringField;
    cdsNFVendaCELULARPAI: TStringField;
    cdsNFVendaCOMUNICAPAI: TStringField;
    cdsNFVendaVALOR_MATRICULA: TFloatField;
    cdsNFVendaDATATRANSF: TDateField;
    cdsNFVendaCOR_RACA: TStringField;
    cdsNFVendaPERIODO: TStringField;
    cdsNFVendaFOTO: TStringField;
    cdsNFVendaDATA_MATRICULA: TSQLTimeStampField;
    cdsNFVendaCODRESPONSAVEL: TIntegerField;
    cdsNFVendaID_COB: TIntegerField;
    cdsNFVendaCOD_TRANPORTADORA: TIntegerField;
    cdsNFVendaBLOQUEIO: TStringField;
    cdsNFVendaCFOP_1: TStringField;
    cdsNFVendaCOD_CLI: TStringField;
    cdsNFVendaCORTESIA: TStringField;
    cdsNFVendaVALOR_CONSUMO: TFloatField;
    cdsNFVendaVALOR_CORTESIA: TFloatField;
    cdsNFVendaE_FORNECEDOR: TStringField;
    cdsNFVendaCODFORNECEDOR: TIntegerField;
    cdsNFVendaCODFISCAL: TStringField;
    cdsNFVendaCARGOFUNCAO: TIntegerField;
    cdsNFVendaSUFRAMA: TStringField;
    cdsNFVendaCODENDERECO: TIntegerField;
    cdsNFVendaCODCLIENTE_2: TIntegerField;
    cdsNFVendaLOGRADOURO: TStringField;
    cdsNFVendaBAIRRO: TStringField;
    cdsNFVendaCOMPLEMENTO: TStringField;
    cdsNFVendaCIDADE: TStringField;
    cdsNFVendaUF_1: TStringField;
    cdsNFVendaCEP: TStringField;
    cdsNFVendaTELEFONE: TStringField;
    cdsNFVendaTELEFONE1: TStringField;
    cdsNFVendaTELEFONE2: TStringField;
    cdsNFVendaFAX: TStringField;
    cdsNFVendaE_MAIL: TStringField;
    cdsNFVendaRAMAL: TStringField;
    cdsNFVendaTIPOEND: TSmallintField;
    cdsNFVendaDADOSADICIONAIS: TStringField;
    cdsNFVendaDDD: TStringField;
    cdsNFVendaDDD1: TStringField;
    cdsNFVendaDDD2: TStringField;
    cdsNFVendaDDD3: TStringField;
    cdsNFVendaNUMERO_2: TStringField;
    cdsNFVendaCD_IBGE: TStringField;
    cdsNFVendaPAIS: TStringField;
    cdsNFVendaCODMOVIMENTO: TIntegerField;
    sdsTotal: TSQLDataSet;
    sdsTotalIPI: TFloatField;
    sdsTotalPIS: TFloatField;
    sdsTotalCOFINS: TFloatField;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    sdsC190: TSQLDataSet;
    dspC190: TDataSetProvider;
    cdsC190: TClientDataSet;
    cdsC190VLR_ICMS: TFloatField;
    cdsC190VLR_OPERACAO: TFloatField;
    cdsC190ICMS: TFloatField;
    cdsC190CST: TStringField;
    cdsC190ICMS_ST: TFloatField;
    cdsC190VLR_BASE_ICMS_ST: TFloatField;
    cdsC190VLR_BASE_ICMS: TFloatField;
    cdsC190VLR_IPI: TFloatField;
    cdsC190CFOP: TStringField;
    sdsEmpS: TSQLDataSet;
    sdsEmpSRAZAOSOCIAL: TStringField;
    sdsEmpSCNPJ: TStringField;
    sdsEmpSINSCESTADUAL: TStringField;
    sdsEmpSTIPOFIRMA: TSmallintField;
    sdsEmpSCODENDERECO: TIntegerField;
    sdsEmpSCODCLIENTE: TIntegerField;
    sdsEmpSLOGRADOURO: TStringField;
    sdsEmpSBAIRRO: TStringField;
    sdsEmpSCOMPLEMENTO: TStringField;
    sdsEmpSCIDADE: TStringField;
    sdsEmpSUF: TStringField;
    sdsEmpSCEP: TStringField;
    sdsEmpSTELEFONE: TStringField;
    sdsEmpSTELEFONE1: TStringField;
    sdsEmpSTELEFONE2: TStringField;
    sdsEmpSFAX: TStringField;
    sdsEmpSE_MAIL: TStringField;
    sdsEmpSRAMAL: TStringField;
    sdsEmpSTIPOEND: TSmallintField;
    sdsEmpSDADOSADICIONAIS: TStringField;
    sdsEmpSDDD: TStringField;
    sdsEmpSDDD1: TStringField;
    sdsEmpSDDD2: TStringField;
    sdsEmpSDDD3: TStringField;
    sdsEmpSNUMERO: TStringField;
    sdsEmpSCD_IBGE: TStringField;
    sdsEmpSPAIS: TStringField;
    dspEmpS: TDataSetProvider;
    cdsEmpS: TClientDataSet;
    cdsEmpSRAZAOSOCIAL: TStringField;
    cdsEmpSCNPJ: TStringField;
    cdsEmpSINSCESTADUAL: TStringField;
    cdsEmpSTIPOFIRMA: TSmallintField;
    cdsEmpSCODENDERECO: TIntegerField;
    cdsEmpSCODCLIENTE: TIntegerField;
    cdsEmpSLOGRADOURO: TStringField;
    cdsEmpSBAIRRO: TStringField;
    cdsEmpSCOMPLEMENTO: TStringField;
    cdsEmpSCIDADE: TStringField;
    cdsEmpSUF: TStringField;
    cdsEmpSCEP: TStringField;
    cdsEmpSTELEFONE: TStringField;
    cdsEmpSTELEFONE1: TStringField;
    cdsEmpSTELEFONE2: TStringField;
    cdsEmpSFAX: TStringField;
    cdsEmpSE_MAIL: TStringField;
    cdsEmpSRAMAL: TStringField;
    cdsEmpSTIPOEND: TSmallintField;
    cdsEmpSDADOSADICIONAIS: TStringField;
    cdsEmpSDDD: TStringField;
    cdsEmpSDDD1: TStringField;
    cdsEmpSDDD2: TStringField;
    cdsEmpSDDD3: TStringField;
    cdsEmpSNUMERO: TStringField;
    cdsEmpSCD_IBGE: TStringField;
    cdsEmpSPAIS: TStringField;
    cdsEmpE: TClientDataSet;
    cdsEmpECODFORNECEDOR: TIntegerField;
    cdsEmpERAZAOSOCIAL: TStringField;
    cdsEmpECNPJ: TStringField;
    cdsEmpEINSCESTADUAL: TStringField;
    cdsEmpETIPOFIRMA: TSmallintField;
    cdsEmpELOGRADOURO: TStringField;
    cdsEmpEBAIRRO: TStringField;
    cdsEmpECIDADE: TStringField;
    cdsEmpECD_IBGE: TStringField;
    cdsEmpECEP: TStringField;
    cdsEmpECOMPLEMENTO: TStringField;
    cdsEmpEDDD: TSmallintField;
    cdsEmpETELEFONE: TStringField;
    cdsEmpENUMERO: TStringField;
    cdsEmpEPAIS: TStringField;
    dspEmpE: TDataSetProvider;
    sdsEmpE: TSQLDataSet;
    sdsEmpECODFORNECEDOR: TIntegerField;
    sdsEmpERAZAOSOCIAL: TStringField;
    sdsEmpECNPJ: TStringField;
    sdsEmpEINSCESTADUAL: TStringField;
    sdsEmpETIPOFIRMA: TSmallintField;
    sdsEmpELOGRADOURO: TStringField;
    sdsEmpEBAIRRO: TStringField;
    sdsEmpECIDADE: TStringField;
    sdsEmpECD_IBGE: TStringField;
    sdsEmpECEP: TStringField;
    sdsEmpECOMPLEMENTO: TStringField;
    sdsEmpEDDD: TSmallintField;
    sdsEmpETELEFONE: TStringField;
    sdsEmpENUMERO: TStringField;
    sdsEmpEPAIS: TStringField;
    sdsProduto: TSQLDataSet;
    sdsProdutoCODPRODUTO: TIntegerField;
    sdsProdutoCODPRO: TStringField;
    sdsProdutoNCM: TStringField;
    sdsProdutoPRODUTO: TStringField;
    sdsProdutoUN: TStringField;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoCODPRODUTO: TIntegerField;
    cdsProdutoCODPRO: TStringField;
    cdsProdutoNCM: TStringField;
    cdsProdutoPRODUTO: TStringField;
    cdsProdutoUN: TStringField;
    sdsVC190: TSQLDataSet;
    dspVC190: TDataSetProvider;
    cdsVC190: TClientDataSet;
    cdsVC190VLR_ICMS: TFloatField;
    cdsVC190VLR_OPERACAO: TFloatField;
    cdsVC190ICMS: TFloatField;
    cdsVC190CST: TStringField;
    cdsVC190ICMS_ST: TFloatField;
    cdsVC190VLR_BASE_ICMS_ST: TFloatField;
    cdsVC190VLR_BASE_ICMS: TFloatField;
    cdsVC190VLR_IPI: TFloatField;
    cdsVC190CFOP: TStringField;
    sqlProduto: TSQLQuery;
    ProgressBar1: TJvProgressBar;
    sdsCompraDetCODPRODUTO: TIntegerField;
    sdsCompraDetQUANTIDADE: TFloatField;
    sdsCompraDetPRECO: TFloatField;
    sdsCompraDetICMS: TFloatField;
    sdsCompraDetUN: TStringField;
    sdsCompraDetQTDE_ALT: TFloatField;
    sdsCompraDetDESCPRODUTO: TStringField;
    sdsCompraDetCST: TStringField;
    sdsCompraDetVALOR_ICMS: TFloatField;
    sdsCompraDetVLR_BASE: TFloatField;
    sdsCompraDetICMS_SUBST: TFloatField;
    sdsCompraDetICMS_SUBSTD: TFloatField;
    sdsCompraDetVLR_BASEICMS: TFloatField;
    sdsCompraDetPIPI: TFloatField;
    sdsCompraDetVIPI: TFloatField;
    sdsCompraDetCFOP: TStringField;
    sdsCompraDetFRETE: TFloatField;
    sdsCompraDetBCFRETE: TFloatField;
    sdsCompraDetSTFRETE: TStringField;
    sdsCompraDetBCSTFRETE: TFloatField;
    sdsCompraDetICMSFRETE: TFloatField;
    sdsCompraDetCSOSN: TStringField;
    sdsCompraDetVALOR_SEGURO: TFloatField;
    sdsCompraDetVALOR_OUTROS: TFloatField;
    sdsCompraDetVALOR_PIS: TFloatField;
    sdsCompraDetVALOR_COFINS: TFloatField;
    sdsCompraDetII: TFloatField;
    sdsCompraDetBCII: TFloatField;
    sdsCompraDetCSTIPI: TStringField;
    sdsCompraDetCSTPIS: TStringField;
    sdsCompraDetCSTCOFINS: TStringField;
    sdsCompraDetPPIS: TFloatField;
    sdsCompraDetPCOFINS: TFloatField;
    cdsCompraDetCODPRODUTO: TIntegerField;
    cdsCompraDetQUANTIDADE: TFloatField;
    cdsCompraDetPRECO: TFloatField;
    cdsCompraDetICMS: TFloatField;
    cdsCompraDetUN: TStringField;
    cdsCompraDetQTDE_ALT: TFloatField;
    cdsCompraDetDESCPRODUTO: TStringField;
    cdsCompraDetCST: TStringField;
    cdsCompraDetVALOR_ICMS: TFloatField;
    cdsCompraDetVLR_BASE: TFloatField;
    cdsCompraDetICMS_SUBST: TFloatField;
    cdsCompraDetICMS_SUBSTD: TFloatField;
    cdsCompraDetVLR_BASEICMS: TFloatField;
    cdsCompraDetPIPI: TFloatField;
    cdsCompraDetVIPI: TFloatField;
    cdsCompraDetCFOP: TStringField;
    cdsCompraDetFRETE: TFloatField;
    cdsCompraDetBCFRETE: TFloatField;
    cdsCompraDetSTFRETE: TStringField;
    cdsCompraDetBCSTFRETE: TFloatField;
    cdsCompraDetICMSFRETE: TFloatField;
    cdsCompraDetCSOSN: TStringField;
    cdsCompraDetVALOR_SEGURO: TFloatField;
    cdsCompraDetVALOR_OUTROS: TFloatField;
    cdsCompraDetVALOR_PIS: TFloatField;
    cdsCompraDetVALOR_COFINS: TFloatField;
    cdsCompraDetII: TFloatField;
    cdsCompraDetBCII: TFloatField;
    cdsCompraDetCSTIPI: TStringField;
    cdsCompraDetCSTPIS: TStringField;
    cdsCompraDetCSTCOFINS: TStringField;
    cdsCompraDetPPIS: TFloatField;
    cdsCompraDetPCOFINS: TFloatField;
    cdsItensPPIS: TFloatField;
    cdsItensPCOFINS: TFloatField;
    sqlM400: TSQLDataSet;
    dspM400: TDataSetProvider;
    cdsM: TClientDataSet;
    procedure cbMesChange(Sender: TObject);
    procedure edtFileChange(Sender: TObject);
    procedure edtFileExit(Sender: TObject);
    procedure cbConcomitanteClick(Sender: TObject);
    procedure btnTXTClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    util : Tutils;
    tipo: String;
    function validaCodMunicipio(cod: String; quem: String):String;
    function cstPis(cstP: String; nota: String): TACBrSituacaoTribPIS;
    function cstCofins(cstC: String; nota: String): TACBrSituacaoTribCOFINS;
    function cstIcms(cstI: String; nota: String):TACBrSituacaoTribICMS;
    procedure LoadToMemo;
    procedure blocoO;
    procedure bloco1;
    procedure blocoA;
    procedure blocoC;
    procedure blocoD;
    procedure blocoF;
    procedure blocoM;
    procedure abrirTabelasCompra;
    procedure abrirTabelasVenda;
    procedure abrirCdsM400;
    procedure abrirCdsM410;
    procedure abrirCdsM800;
    procedure abrirCdsM810;
    { Private declarations }
  public
    codMovMin, codMovMax: Integer;
    { Public declarations }
  end;

var
  fNfePisCofins: TfNfePisCofins;

implementation

uses UDm, ACBrEPCBloco_0, ACBrEPCBloco_0_Class, Math;

{$R *.dfm}

{ TForm1 }

procedure TfNfePisCofins.bloco1;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 1.

  with ACBrSPEDPisCofins1.Bloco_1 do
  begin
    with Registro1001New do
    begin
       IND_MOV := imSemDados;
    end;
  end;


  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_1;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoA;
var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco A.

   NNotas := StrToInt64Def(edNotas.Text,1);
   BNotas := StrToInt64Def(edBufNotas.Text,1);

   ProgressBar1.Visible := cbConcomitante.Checked ;
   ProgressBar1.Max     := NNotas;
   ProgressBar1.Position:= 0 ;

   with ACBrSPEDPisCofins1.Bloco_A do
   begin
      with RegistroA001New do
      begin
         IND_MOV := imSemDados;
      end;
   end;
         //
   {      for INotas := 1 to NNotas do
         begin
           with RegistroA010New do
           begin
              CNPJ := '11111111111180';
              with RegistroA100New do
              begin
                 IND_OPER      := itoContratado;
                 IND_EMIT      := iedfProprio;
                 COD_PART      := '001';
                 COD_SIT       := sdfRegular;
                 SER           := '';
                 SUB           := '';
                 NUM_DOC       := FormatFloat('NF000000',INotas);
                 CHV_NFSE      := '';
                 DT_DOC        := DT_INI + INotas;
                 DT_EXE_SERV   := DT_INI + INotas;
                 VL_DOC        := 0;
                 IND_PGTO      := tpSemPagamento;
                 VL_DESC       := 0;
                 VL_BC_PIS     := 0;
                 VL_PIS        := 0;
                 VL_BC_COFINS  := 0;
                 VL_COFINS     := 0;
                 VL_PIS_RET    := 0;
                 VL_COFINS_RET := 0;
                 VL_ISS        := 0;

                 //A170
                 for IItens := 1 to 10 do
                 begin
                   with RegistroA170New do   //Inicio Adicionar os Itens:
                   begin
                      NUM_ITEM         := IItens;
                      COD_ITEM         := IntToStr(NUM_ITEM);
                      DESCR_COMPL      := FormatFloat('NF000000',INotas)+' -> ITEM '+COD_ITEM;
                      VL_ITEM          := 0;
                      VL_DESC          := 0;
                      NAT_BC_CRED      := bccAqBensRevenda;
                      IND_ORIG_CRED    := opcMercadoInterno;
                      CST_PIS          := stpisOutrasOperacoesSaida;
                      VL_BC_PIS        := 0;
                      ALIQ_PIS         := 0;
                      VL_PIS           := 0;
                      CST_COFINS       := stcofinsOutrasOperacoesSaida;
                      VL_BC_COFINS     := 0;
                      ALIQ_COFINS      := 0;
                      VL_COFINS        := 0;
                      COD_CTA          := '000';
                      COD_CCUS         := '123';
                    end; //Fim dos Itens;
                 end;
              end;
              if cbConcomitante.Checked then
              begin
                 if (INotas mod BNotas) = 0 then   // Gravar a cada N notas
                 begin
                    // Grava registros na memoria para o TXT, e limpa memoria
                    ACBrSPEDPisCofins1.WriteBloco_A( False );  // False, NAO fecha o Bloco
                    ProgressBar1.Position := INotas;
                    Application.ProcessMessages;
                 end;
              end;
           end;
         end;
      end;
   end;
   }
   if cbConcomitante.Checked then
   begin
      ACBrSPEDPisCofins1.WriteBloco_A(True);  // True, fecha o Bloco
      LoadToMemo;
   end;

   ProgressBar1.Visible := False ;
end;

procedure TfNfePisCofins.blocoO;
const
  strUNID: array[0..4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

var
  int0140: integer;
  int0150: integer;
  int0190: integer;
  int0200: integer;
  sql1, teveCompraVenda: String;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 0.

  cbConcomitante.Enabled := False ;

  ACBrSPEDPisCofins1.DT_INI := data_ini.Date;
  ACBrSPEDPisCofins1.DT_FIN := data_fim.Date;
  ACBrSPEDPisCofins1.IniciaGeracao;

  if cbConcomitante.Checked then
  begin
    with ACBrSPEDPisCofins1 do
    begin
      //DT_INI := StrToDate('01/04/2011');
      //DT_FIN := StrToDate('30/04/2011');
      LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

     //IniciaGeracao;
    end;

    LoadToMemo;
  end;

  with ACBrSPEDPisCofins1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      COD_VER          := vlVersao201;
      TIPO_ESCRIT      := tpEscrOriginal;
      IND_SIT_ESP      := indSitAbertura;
      NUM_REC_ANTERIOR := '';
      NOME             := cdsEmpresaRAZAO.AsString;
      CNPJ             := util.RemoveChar(cdsEmpresaCNPJ_CPF.AsString);
      UF               := cdsEmpresaUF.AsString;
      COD_MUN          := StrToInt(validaCodMunicipio(cdsEmpresaCD_IBGE.AsString, cdsEmpresaRAZAO.AsString));
      SUFRAMA          := '';
      IND_NAT_PJ       := TACBrIndicadorNaturezaPJ(cdsEmpresaINDICADORNATUREZAPJ.AsInteger); // indNatPJSocEmpresariaGeral;
      IND_ATIV         := TACBrIndicadorAtividade(cdsEmpresaINDICADORATIVIDADE.asInteger); // indAtivIndustrial;
      {COD_IND_INC_TRIB := TACBrCodIndIncTributaria(cdsEmpresaCODINDINCTRIBUTARIA.AsInteger);
      IND_APRO_CRED    := TACBrIndAproCred(cdsEmpresaINDAPROCRED.AsInteger);
      COD_IND_TIPO_CON := TACBrCodIndTipoCon(cdsEmpresaCODINDTIPOCON.AsInteger);
      COD_IND_CRIT_ESC := TACBrCodIndCritEscrit(cdsEmpresaCODINDCRITESCRIT.AsInteger);
      IND_COD_INC      := TACBrIndCodIncidencia(cdsEmpresaINDCODINCIDENCIA.AsInteger);
      IND_CTA          := TACBrIndCTA(cdsEmpresaINDCTA.AsInteger);
      IND_ESCRIT       := TACBrIndEscrituracao(cdsEmpresaINDESCRITURACAO.AsInteger);
      BASE_CALC_CRED   := TACBrBaseCalculoCredito(cdsEmpresaBASECALCULOCREDITO.AsInteger);
      IND_AJ           := TACBrIndAJ(cdsEmpresaINDAJ.AsInteger);}

      with Registro0001New do
      begin
        IND_MOV := imComDados;

        // FILHO - Dados do contador.
        with Registro0100New do
        begin
          if (cdsEmpresaCONTADOR.AsString <> '') then
          begin
            NOME       := cdsEmpresaCONTADOR.AsString;
            CPF        := util.RemoveChar(cdsEmpresaCONTADOR_CPF.AsString);
            CRC        := util.RemoveChar(cdsEmpresaCONTADOR_CRC.AsString);
            CNPJ       := util.RemoveChar(cdsEmpresaCONTADOR_CNPJ.AsString);
            CEP        := util.RemoveChar(cdsEmpresaCONTADOR_CEP.AsString);
            ENDERECO   := cdsEmpresaCONTADOR_END.AsString;
            NUM        := util.RemoveChar(cdsEmpresaCONTADOR_NUMEND.AsString);
            COMPL      := cdsEmpresaCONTADOR_COMPL.AsString;
            BAIRRO     := cdsEmpresaCONTADOR_BAIRRO.AsString;
            FONE       := cdsEmpresaCONTADOR_FONE.AsString;
            FAX        := cdsEmpresaCONTADOR_FAX.AsString;
            EMAIL      := cdsEmpresaCONTADOR_EMAIL.AsString;
            COD_MUN    := StrToInt(validaCodMunicipio(cdsEmpresaCONTADOR_COD_MUN.AsString, 'Contador: ' + cdsEmpresaCONTADOR.AsString));
          end;
        end;

        // FILHO - Regime de Apuração
        with Registro0110New do
        begin
          COD_INC_TRIB  := TACBrCodIndIncTributaria(cdsEmpresaCODINDINCTRIBUTARIA.AsInteger);
          IND_APRO_CRED := TACBrIndAproCred(cdsEmpresaINDAPROCRED.AsInteger);
          COD_TIPO_CONT := TACBrCodIndTipoCon(cdsEmpresaCODINDTIPOCON.AsInteger);
          IND_REG_CUM   := TACBrCodIndCritEscrit(cdsEmpresaCODINDCRITESCRIT.AsInteger); // //IND_REG_CUM := 1;apenas para Lucro Presumido e (COD_INC_TRIB = 2)
        end;

        //0140 - Tabela de Cadastro de Estabelecimento
        // FILHO
        int0140 := 1;  // 1 Estabelecimento
        with Registro0140New do
        begin
          COD_EST := IntToStr(cdsEmpresaCODIGO.asInteger);
          NOME    := cdsEmpresaRAZAO.AsString;
          CNPJ    := util.RemoveChar(cdsEmpresaCNPJ_CPF.AsString);
          UF      := cdsEmpresaUF.AsString;
          IE      := util.RemoveChar(cdsEmpresaIE_RG.AsString);
          COD_MUN := StrToInt(validaCodMunicipio(cdsEmpresaCD_IBGE.AsString, cdsEmpresaRAZAO.AsString));
          IM      := cdsEmpresaIM.AsString;
          SUFRAMA := '';

          int0150 := 1;
          if (cdsEmpS.Active) then
            cdsEmpS.Close;
          cdsEmpS.Params[0].AsDateTime := data_ini.Date;
          cdsEmpS.Params[1].AsDateTime := data_fim.Date;
          //cdsEmpS.Params[2].AsInteger := codMovMin;
          //cdsEmpS.Params[3].AsInteger := codMovMax;
          cdsEmpS.Open;

          if (cdsEmpE.Active) then
            cdsEmpE.Close;
          cdsEmpE.Params[0].AsDateTime := data_ini.Date;
          cdsEmpE.Params[1].AsDateTime := data_fim.Date;
          //cdsEmpE.Params[2].AsInteger := codMovMin;
          //cdsEmpE.Params[3].AsInteger := codMovMax;
          cdsEmpE.Open;

          if (not cdsEmpE.IsEmpty) then
          begin
            while not cdsEmpE.Eof do
            begin
              // 10 Clientes por estabelecimento
              //0150 - Tabela de Cadastro do Participante
              with Registro0150New do
              begin
                //int0150 := cdsEmpECODFORNECEDOR.AsInteger;
                COD_PART := FormatFloat('100000', cdsEmpECODFORNECEDOR.asInteger);
                NOME     := cdsEmpERAZAOSOCIAL.AsString;
                if (cdsEmpEPAIS.AsString = 'Brasil') then
                  COD_PAIS := '1058';
                if (cdsEmpETIPOFIRMA.AsInteger = 1) then
                begin
                  CNPJ     := util.RemoveChar(cdsEmpECNPJ.AsString);
                  CPF      := '';
                end
                else begin
                  CPF      := util.RemoveChar(cdsEmpECNPJ.AsString);
                  CNPJ     := '';
                end;

                IE       := util.RemoveChar(cdsEmpEINSCESTADUAL.AsString);
                COD_MUN  := StrToInt(validaCodMunicipio(cdsEmpECD_IBGE.AsString, cdsEmpERAZAOSOCIAL.AsString));
                SUFRAMA  := '';
                ENDERECO := cdsEmpELOGRADOURO.AsString;
                NUM      := cdsEmpENUMERO.AsString;
                COMPL    := cdsEmpECOMPLEMENTO.AsString;
                BAIRRO   := cdsEmpEBAIRRO.AsString;
                //
              end;
              cdsEmpE.Next;
            end;
          end;

          if (not cdsEmpS.IsEmpty) then
          begin
            while not cdsEmpS.Eof do
            begin
              // 10 Clientes por estabelecimento
              //0150 - Tabela de Cadastro do Participante
              with Registro0150New do
              begin
                COD_PART := FormatFloat('200000', cdsEmpSCODCLIENTE.asInteger);;
                NOME     := cdsEmpSRAZAOSOCIAL.AsString;
                if (cdsEmpSPAIS.AsString = 'Brasil') then
                  COD_PAIS := '1058';
                if (cdsEmpSTIPOFIRMA.AsInteger = 1) then
                begin
                  CNPJ     := util.RemoveChar(cdsEmpSCNPJ.AsString);
                  CPF      := '';
                end
                else begin
                  CPF      := util.RemoveChar(cdsEmpSCNPJ.AsString);
                  CNPJ     := '';
                end;

                IE       := util.RemoveChar(cdsEmpSINSCESTADUAL.AsString);
                COD_MUN  := StrToInt(validaCodMunicipio(cdsEmpSCD_IBGE.AsString, cdsEmpSRAZAOSOCIAL.AsString));
                SUFRAMA  := '';
                ENDERECO := cdsEmpSLOGRADOURO.AsString;
                NUM      := cdsEmpSNUMERO.AsString;
                COMPL    := cdsEmpSCOMPLEMENTO.AsString;
                BAIRRO   := cdsEmpSBAIRRO.AsString;
                //
              end;
              cdsEmpS.Next;
            end;
          end;

          if (sdsUnimed.Active) then
            sdsUnimed.Close;
          sdsUnimed.Params[0].AsDate := data_ini.Date-60;
          sdsUnimed.Params[1].AsDate := data_fim.Date+60;
          sdsUnimed.Open;

          while (not sdsUnimed.Eof) do
          begin
            teveCompraVenda := 'NAO';
            if (sqlProduto.Active) then
              sqlProduto.Close;
            sqlProduto.SQL.Clear;
            sql1 := 'SELECT DISTINCT DET.CODPRODUTO ';
            sql1 := sql1 + '  FROM COMPRA C, MOVIMENTO MOV, MOVIMENTODETALHE DET ';
            sql1 := sql1 + ' WHERE C.CODMOVIMENTO   = MOV.CODMOVIMENTO ';
            sql1 := sql1 + '   AND MOV.CODMOVIMENTO = DET.CODMOVIMENTO';
            sql1 := sql1 + '   AND MOV.CODNATUREZA  = 4';
            sql1 := sql1 + '   AND DET.UN   = ' + QuotedStr(sdsUnimed.Fields[0].AsString);
            sql1 := sql1 + '   AND C.DATACOMPRA BETWEEN ';
            sql1 := sql1 + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date));
            sql1 := sql1 + '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
            sqlProduto.SQL.Add(sql1);
            sqlProduto.Open;
            if (sqlProduto.IsEmpty) then
            begin
              // So procuro em vendas se não tiver compras
              if (sqlProduto.Active) then
                sqlProduto.Close;
              sqlProduto.SQL.Clear;
              sql1 := 'SELECT V.CODVENDA FROM NOTAFISCAL NF, VENDA V, MOVIMENTO M, MOVIMENTODETALHE DET ';
              sql1 := sql1 + ' WHERE NF.CODVENDA = V.CODVENDA ';
              sql1 := sql1 + '   AND V.CODMOVIMENTO = M.CODMOVIMENTO';
              sql1 := sql1 + '   AND V.CODMOVIMENTO = DET.CODMOVIMENTO';
              sql1 := sql1 + '   AND DET.UN   = ' + QuotedStr(sdsUnimed.Fields[0].AsString);
              sql1 := sql1 + '   AND M.CODNATUREZA  IN (12, 15, 16, 20, 21)';
              sql1 := sql1 + '   AND NF.DTAEMISSAO BETWEEN ';
              sql1 := sql1 + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date));
              sql1 := sql1 + '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
              sqlProduto.SQL.Add(sql1);
              sqlProduto.Open;
              if (not sqlProduto.IsEmpty) then
                teveCompraVenda := 'SIM';
            end
            else begin
              teveCompraVenda := 'SIM';
            end;

            if (teveCompraVenda = 'SIM') then
            begin
              // 0190 - Identificação das Unidades de Medida
              with Registro0190New do
              begin
                UNID  := sdsUnimed.Fields[0].AsString;
                DESCR := sdsUnimed.Fields[1].AsString;
              end;
            end;
            sdsUnimed.Next;
          end;

          // LISTA COM TODOS OS ITENS E NATUREZA JÁ USADA ###################
          if (not cdsProduto.Active) then
            cdsProduto.Close;

          sql1 := 'SELECT DISTINCT DET.CODPRODUTO, PRO.CODPRO, PRO.NCM, ';
          sql1 := sql1 + ' PRO.PRODUTO, DET.UN  ';
          sql1 := sql1 + '  FROM MOVIMENTO MOV, MOVIMENTODETALHE DET, PRODUTOS PRO ';
          sql1 := sql1 + ' WHERE MOV.CODMOVIMENTO = DET.CODMOVIMENTO';
          sql1 := sql1 + '   AND PRO.CODPRODUTO   = DET.CODPRODUTO';
          sql1 := sql1 + '   AND MOV.DATAMOVIMENTO BETWEEN ';
          sql1 := sql1 + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date-60));
          sql1 := sql1 + '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date+60));

          cdsProduto.CommandText := sql1;

          cdsProduto.Open;
          While (not cdsProduto.Eof) do
          begin
            teveCompraVenda := 'NAO';
            if (sqlProduto.Active) then
              sqlProduto.Close;
            sqlProduto.SQL.Clear;
            sql1 := 'SELECT DISTINCT DET.CODPRODUTO ';
            sql1 := sql1 + '  FROM COMPRA C, MOVIMENTO MOV, MOVIMENTODETALHE DET ';
            sql1 := sql1 + ' WHERE C.CODMOVIMENTO   = MOV.CODMOVIMENTO ';
            sql1 := sql1 + '   AND MOV.CODMOVIMENTO = DET.CODMOVIMENTO';
            sql1 := sql1 + '   AND MOV.CODNATUREZA  = 4';
            sql1 := sql1 + '   AND DET.CODPRODUTO   = ' + IntToStr(cdsProdutoCODPRODUTO.AsInteger);
            sql1 := sql1 + '   AND C.DATACOMPRA BETWEEN ';
            sql1 := sql1 + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date));
            sql1 := sql1 + '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
            sqlProduto.SQL.Add(sql1);
            sqlProduto.Open;
            if (sqlProduto.IsEmpty) then
            begin
              // So procuro em vendas se não tiver compras
              if (sqlProduto.Active) then
                sqlProduto.Close;
              sqlProduto.SQL.Clear;
              sql1 := 'SELECT V.CODVENDA FROM NOTAFISCAL NF, VENDA V, MOVIMENTO M, MOVIMENTODETALHE DET ';
              sql1 := sql1 + ' WHERE NF.CODVENDA = V.CODVENDA ';
              sql1 := sql1 + '   AND V.CODMOVIMENTO = M.CODMOVIMENTO';
              sql1 := sql1 + '   AND V.CODMOVIMENTO = DET.CODMOVIMENTO';
              sql1 := sql1 + '   AND DET.CODPRODUTO   = ' + IntToStr(cdsProdutoCODPRODUTO.AsInteger);
              sql1 := sql1 + '   AND M.CODNATUREZA  IN (12, 15, 16, 20, 21)';
              sql1 := sql1 + '   AND NF.DTAEMISSAO BETWEEN ';
              sql1 := sql1 + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date));
              sql1 := sql1 + '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
              sqlProduto.SQL.Add(sql1);
              sqlProduto.Open;
              if (not sqlProduto.IsEmpty) then
                teveCompraVenda := 'SIM';
            end
            else begin
              teveCompraVenda := 'SIM';
            end;

            if (teveCompraVenda = 'SIM') then
            begin
              //10 produtos/serviços
              int0200 := 0;
              // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
              with Registro0200New do
              begin
                COD_ITEM     := FormatFloat('000000',cdsProdutoCODPRODUTO.AsInteger);
                DESCR_ITEM   := cdsProdutoPRODUTO.AsString;
                COD_BARRA    := '';
                COD_ANT_ITEM := '';
                UNID_INV     := cdsProdutoUN.AsString;
                TIPO_ITEM    := tiMercadoriaRevenda;
                COD_NCM      := cdsProdutoNCM.AsString;
                EX_IPI       := '';
                COD_GEN      := '';
                COD_LST      := '';
                ALIQ_ICMS    := 0;
              end;
            end;
            cdsProduto.Next;
          end;


          with Registro0400New do
          begin
            COD_NAT   := '03';
            DESCR_NAT := 'Venda de Mercadorias';
          end;

          with Registro0400New do
          begin
            COD_NAT   := '04';
            DESCR_NAT := 'Compra de Mercadorias';
          end;

          // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
          { with Registro0500New do
          begin
           DT_ALT := StrToDate('01/04/2011');
           COD_NAT_CC := ncgAtivo;
           IND_CTA := indCTASintetica;
           NIVEL := '0';
           COD_CTA := '0';
           NOME_CTA := 'NOME CTA';
           COD_CTA_REF := '0';
           CNPJ_EST := '123456789';
          end; }
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_0;
    LoadToMemo;
  end;

end;

procedure TfNfePisCofins.LoadToMemo;
begin
   memoTXT.Lines.Clear;
   if FileExists( ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo ) then
      memoTXT.Lines.LoadFromFile(ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo);
end;

procedure TfNfePisCofins.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  data_ini.Text := periodo.PeriodoIni;
  data_fim.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfNfePisCofins.blocoC;
var
INotas: Integer;
IItens: Integer;
NNotas: Integer;
BNotas: Integer;
parametroVer: Integer;
codParticip, progresso: Integer;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco C.
  NNotas := StrToInt64Def(edNotas.Text,1);
  BNotas := StrToInt64Def(edBufNotas.Text,1);

  ProgressBar1.Visible := cbConcomitante.Checked ;
  ProgressBar1.Max     := 2*(codMovMax-codMovMin);
  ProgressBar1.Position:= 0 ;
  progresso := 1;
  codParticip := 0;
  //Primeiro as NFs de Entrada
  if (cdsCompra.Active) then
    cdsCompra.Close;
  cdsCompra.Params[0].AsInteger := codMovMin;
  cdsCompra.Params[1].AsInteger := codMovMax;
  cdsCompra.Params[2].AsDate    := data_ini.Date;
  cdsCompra.Params[3].AsDate    := data_fim.Date;
  cdsCompra.Open;

  if (sdsTotal.Active) then
    sdsTotal.Close;
  sdsTotal.Params[0].AsInteger := codMovMin;
  sdsTotal.Params[1].AsInteger := codMovMax;
  sdsTotal.Params[2].AsDate    := data_ini.Date;
  sdsTotal.Params[3].AsDate    := data_fim.Date;
  sdsTotal.Open;

  with ACBrSPEDPisCofins1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      IND_MOV := imComDados;
      //parametroVer := cdsCompraCODDETALHE.AsInteger;
      //C010 - Identificação do Estabelecimento
      with RegistroC010New do
      begin
        CNPJ := util.RemoveChar(cdsEmpresaCNPJ_CPF.AsString);
        IND_ESCRI := IndEscriIndividualizado;

        // INICIO BLOCO COMPRAS  ######################
        if (not cdsCompra.IsEmpty) then
        begin
          While not cdsCompra.Eof do
          begin
            progressBar1.Step := progresso;
            progresso := progresso + 1;
            //Inserir Notas...
            //for INotas := 1 to NNotas do
            //begin
            //C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
            // Fiscal de Produtor (código 04) e NF-e (código 55)
            with RegistroC100New do
            begin
              IND_OPER      := tpEntradaAquisicao; // tpEntradaAquisicao, // 0 - Entrada
              IND_EMIT      := edTerceiros;   // 0 - Emissão própria // 1 - Terceiro
              COD_PART      := FormatFloat('100000', cdsCompraCODFORNECEDOR.asInteger);
              COD_MOD       := '55'; //COD_MOD	Código do modelo do documento fiscal, conforme a Tabela 4.1.1 (Código 02 – Nota Fiscal de Venda a Consumidor)	C	002*
              if (cdsCompraSERIE.AsString = '1A') then
                COD_MOD       := '01';
              COD_SIT       := sdRegular;
              SER           := ''; //04	SER	Série do documento fiscal	C	003	-
              //NUM_DOC       := FormatFloat('NF000000', cdsCompraNOTAFISCAL.AsInteger);  //INotas

              NUM_DOC       := IntToStr(cdsCompraNOTAFISCAL.AsInteger);
              CHV_NFE       := cdsCompraCHAVENF.AsString;
              DT_DOC        := cdsCompraDATACOMPRA.AsDateTime;
              DT_E_S        := cdsCompraDATACOMPRA.AsDateTime;
              VL_DOC        := cdsCompraVALOR.AsFloat;
              IND_PGTO      := tpPrazo;
              VL_DESC       := 0;
              VL_ABAT_NT    := 0;
              VL_MERC       := cdsCompraVALOR.AsFloat;
              IND_FRT       := tfSemCobrancaFrete;
              VL_FRT        := cdsCompraVALOR_FRETE.AsFloat;
              VL_SEG        := cdsCompraVALOR_SEGURO.AsFloat;
              VL_OUT_DA     := 0;
              VL_BC_ICMS    := cdsCompraVALOR.AsFloat;
              VL_ICMS       := cdsCompraVALOR_ICMS.AsFloat;
              VL_BC_ICMS_ST := cdsCompraICMS_BASE_ST.AsFloat;
              VL_ICMS_ST    := cdsCompraICMS_ST.AsFloat;
              VL_IPI        := sdsTotalIPI.AsFloat;
              VL_PIS        := sdsTotalPIS.AsFloat;
              VL_COFINS     := sdsTotalCOFINS.AsFloat;
              VL_PIS_ST     := 0;
              VL_COFINS_ST  := 0;

              if (cdsCompraDet.Active) then
                cdsCompraDet.Close;
              cdsCompraDet.Params[0].AsInteger := cdsCompraCODMOVIMENTO.AsInteger;
              cdsCompraDet.Open;
              // INICIO BLOCO COMPRAS  ######################
              IItens := 1;
              While not cdsCompraDet.Eof do
              begin
                //10 itens para cada nota...
                //for IItens := 1 to 10 do
                //begin
                //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                with RegistroC170New do   //Inicio Adicionar os Itens:
                begin
                  NUM_ITEM         := FormatFloat('000', IItens);
                  COD_ITEM         := FormatFloat('000000', cdsCompraDetCODPRODUTO.AsInteger);
                  DESCR_COMPL      := cdsCompraDetDESCPRODUTO.AsString;
                  QTD              := cdsCompraDetQUANTIDADE.AsFloat;
                  UNID             := cdsCompraDetUN.AsString;
                  VL_ITEM          := cdsCompraDetVLR_BASE.AsFloat * cdsCompraDetQUANTIDADE.AsFloat;
                  VL_DESC          := 0;
                  IND_MOV          := mfSim;
                  CST_ICMS         := cstIcms(cdsCompraDetCST.AsString, InttoStr(cdsCompraNOTAFISCAL.AsInteger) + '-COMPRA');
                  CFOP             := cdsCompraDetCFOP.AsString;
                  COD_NAT          := '04';
                  VL_BC_ICMS       := cdsCompraDetVLR_BASEICMS.AsFloat;
                  ALIQ_ICMS        := cdsCompraDetICMS.AsFloat;
                  VL_ICMS          := cdsCompraDetVALOR_ICMS.AsFloat;
                  VL_BC_ICMS_ST    := cdsCompraDetICMS_SUBST.AsFloat;
                  ALIQ_ST          := cdsCompraDetICMS_SUBSTD.AsFloat;
                  VL_ICMS_ST       := 0;

                  if (cdsCompraDetICMS_SUBSTD.AsFloat > 0) then
                    VL_ICMS_ST     := SimpleRoundTo((cdsCompraDetICMS_SUBST.AsFloat/cdsCompraDetICMS_SUBSTD.AsFloat),(-2));
                  IND_APUR         := iaMensal;

                  if (cdsCompraDetCSTIPI.AsString = '') then
                  begin
                    MessageDlg('CST - IPI não preenchido. Nota - ' +
                    IntToStr(cdsCompraNOTAFISCAL.AsInteger)+ '-COMPRA' , mtWarning, [mbOK], 0);
                    exit;
                  end;

                  Case StrToInt(trim(cdsCompraDetCSTIPI.AsString)) of
                     0 : CST_IPI := stipiEntradaRecuperacaoCredito;// '00' // Entrada com recuperação de crédito
                     1 : CST_IPI := stipiEntradaTributradaZero;    // '01' // Entrada tributada com alíquota zero
                     2 : CST_IPI := stipiEntradaIsenta;            // '02' // Entrada isenta
                     3 : CST_IPI := stipiEntradaNaoTributada;      // '03' // Entrada não-tributada
                     4 : CST_IPI := stipiEntradaImune;             // '04' // Entrada imune
                     5 : CST_IPI := stipiEntradaComSuspensao;      // '05' // Entrada com suspensão
                    49 : CST_IPI := stipiOutrasEntradas;           // '49' // Outras entradas
                    50 : CST_IPI := stipiSaidaTributada;           // '50' // Saída tributada
                    51 : CST_IPI := stipiSaidaTributadaZero;       // '51' // Saída tributada com alíquota zero
                    52 : CST_IPI := stipiSaidaIsenta;              // '52' // Saída isenta
                    53 : CST_IPI := stipiSaidaNaoTributada;        // '53' // Saída não-tributada
                    54 : CST_IPI := stipiSaidaImune;               // '54' // Saída imune
                    55 : CST_IPI := stipiSaidaComSuspensao;        // '55' // Saída com suspensão
                    99 : CST_IPI := stipiOutrasSaidas;             // '99' // Outras saídas
                  end;

                  COD_ENQ          := '';
                  VL_BC_IPI        := cdsCompraDetVLR_BASEICMS.AsFloat;
                  ALIQ_IPI         := cdsCompraDetPIPI.AsFloat;
                  VL_IPI           := cdsCompraDetVIPI.AsFloat;
                  CST_PIS          := cstPis(cdsCompraDetCSTPIS.AsString, InttoStr(cdsCompraNOTAFISCAL.AsInteger)+ '-COMPRA'); //  stpisOutrasOperacoesSaida;  // #########
                  VL_PIS           := cdsCompraDetVALOR_PIS.AsFloat;
                  VL_BC_PIS        := cdsCompraDetVLR_BASE.AsFloat * cdsCompraDetQUANTIDADE.AsFloat;
                  ALIQ_PIS_PERC    := cdsCompraDetPPIS.AsFloat;
                  QUANT_BC_PIS     := 0;
                  ALIQ_PIS_R       := 0;

                  CST_COFINS       := cstCofins(cdsCompraDetCSTCOFINS.AsString, InttoStr(cdsCompraNOTAFISCAL.AsInteger)+ '-COMPRA');
                  VL_BC_COFINS     := cdsCompraDetVLR_BASE.AsFloat * cdsCompraDetQUANTIDADE.AsFloat;
                  ALIQ_COFINS_PERC := cdsCompraDetPCOFINS.AsFloat;
                  VL_COFINS        := cdsCompraDetVALOR_COFINS.AsFloat;
                  QUANT_BC_COFINS  := 0;
                  ALIQ_COFINS_R    := 0;
                  VL_COFINS        := 0;
                  COD_CTA          := '';
                end; //Fim dos Itens;
                IItens := IItens + 1;
                 // end;
                cdsCompraDet.Next;
              end;
              {if cbConcomitante.Checked then
              begin
                if (INotas mod BNotas) = 0 then   // Gravar a cada BNotas notas
                begin
                  // Grava registros na memoria para o TXT, e limpa memoria
                  ACBrSPEDPisCofins1.WriteBloco_C( False );  // False, NAO fecha o Bloco
                  ProgressBar1.Position := INotas;
                  Application.ProcessMessages;
                end;
              end;}
            end;
            //10 itens c190    // CARLOS - CONSOLIDADO NÃO PRECISO, POIS, ESTOU INFORMANDO
                                 // INDIVIDUALIZADO
            //CARLOS                       aqui
          {   for IItens := 1 to 10 do
              begin
                // c190 - Consolidação de Notas Fiscais Eletrônicas (Código 55) – Operações de
                // Aquisição com Direito a Crédito, e Operações de Devolução de Compras e
                // Vendas.
                with RegistroC190New do
                begin
                   COD_MOD := '';
                   DT_REF_INI := Date;
                   DT_REF_FIN := Date;
                   COD_ITEM := '';
                   COD_NCM := '';
                   EX_IPI := '';
                   VL_TOT_ITEM := 0;
                end;//Fim dos Itens;
              end;


            codParticip := cdsCompraCODFORNECEDOR.AsInteger;}
            cdsCompra.Next;
          end; // FIM DO WHILE DE COMPRAS
          // FIM BLOCO COMPRAS ######################
        end;

        abrirTabelasVenda;
        // BLOCO VENDAS ###########################
        if (not cdsNFVenda.IsEmpty) then
        begin
          While not cdsNFVenda.Eof do
          begin
            progressBar1.Step := progresso;
            progresso := progresso + 1;
            //Inserir Notas...
            //for INotas := 1 to NNotas do
            //begin
            //C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
            // Fiscal de Produtor (código 04) e NF-e (código 55)
            with RegistroC100New do
            begin
              IND_OPER      := tpSaidaPrestacao; // 1-Saida
              IND_EMIT      := edEmissaoPropria;   // 0 - Emissão própria // 1 - Terceiro
              COD_PART      := FormatFloat('200000',cdsNFVendaCODCLIENTE.asInteger);
              COD_MOD       := '55'; //COD_MOD	Código do modelo do documento fiscal, conforme a Tabela 4.1.1 (Código 02 – Nota Fiscal de Venda a Consumidor)	C	002*
              COD_SIT       := sdRegular;
              if (cdsNFVendaSTATUS.AsString = 'C') then
              begin
                COD_SIT       := sdCancelado;
                SER           := '1'; //cdsNFVendaSERIE.AsString; //04	SER	Série do documento fiscal	C	003	-
                NUM_DOC       := IntToStr(cdsNFVendaNOTAFISCAL.AsInteger);
                CHV_NFE       := copy(cdsNFVendaNOMEXML.AsString, 0, 44);
              end;
              if (cdsNFVendaSTATUS.AsString = 'D') then
              begin
                COD_SIT       := sdDoctoDenegado;
                SER           := '1'; //cdsNFVendaSERIE.AsString; //04	SER	Série do documento fiscal	C	003	-
                NUM_DOC       := IntToStr(cdsNFVendaNOTAFISCAL.AsInteger);
                CHV_NFE       := copy(cdsNFVendaNOMEXML.AsString, 0, 44);
              end;
              if ((cdsNFVendaSTATUS.AsString <> 'C') and (cdsNFVendaSTATUS.AsString <> 'D')) then
              begin
                SER           := '1'; //cdsNFVendaSERIE.AsString; //04	SER	Série do documento fiscal	C	003	-
                NUM_DOC       := IntToStr(cdsNFVendaNOTAFISCAL.AsInteger);
                CHV_NFE       := copy(cdsNFVendaNOMEXML.AsString, 0, 44);
                DT_DOC        := cdsNFVendaDTAEMISSAO.AsDateTime;
                DT_E_S        := cdsNFVendaDTASAIDA.AsDateTime;
                VL_DOC        := cdsNFVendaVALOR_TOTAL_NOTA.AsFloat;
                IND_PGTO      := tpPrazo;
                VL_DESC       := cdsNFVendaDESCONTO.AsFloat;
                VL_ABAT_NT    := 0;
                VL_MERC       := cdsNFVendaVALOR_PRODUTO.AsFloat;
                if (cdsNFVendaFRETE.AsString = '0') then
                begin
                  IND_FRT := tfPorContaTerceiros;     // 0 - Por conta de terceiros
                end
                else if (cdsNFVendaFRETE.AsString = '1') then
                begin
                  IND_FRT := tfPorContaEmitente;      // 1 - Por conta do emitente
                end
                else if (cdsNFVendaFRETE.AsString = '2') then
                begin
                  IND_FRT := tfPorContaDestinatario;  // 2 - Por conta do destinatário
                end
                else if (cdsNFVendaFRETE.AsString = '3') then
                begin
                  IND_FRT := tfSemCobrancaFrete;      // 9 - Sem cobrança de frete
                end
                else
                begin
                  IND_FRT := tfNenhum;                 // Preencher vazio
                end;
                VL_FRT        := cdsNFVendaVALOR_FRETE.AsFloat;
                VL_SEG        := cdsNFVendaVALOR_SEGURO.AsFloat;
                VL_OUT_DA     := 0;
                VL_BC_ICMS    := cdsNFVendaBASE_ICMS.AsFloat;
                VL_ICMS       := cdsNFVendaVALOR_ICMS.AsFloat;
                VL_BC_ICMS_ST := cdsNFVendaBASE_ICMS_SUBST.AsFloat;
                VL_ICMS_ST    := cdsNFVendaVALOR_ICMS_SUBST.AsFloat;
                VL_IPI        := cdsNFVendaVALOR_IPI.AsFloat;
                VL_PIS        := cdsNFVendaVALOR_PIS.AsFloat;
                VL_COFINS     := cdsNFVendaVALOR_COFINS.AsFloat;
                VL_PIS_ST     := 0;
                VL_COFINS_ST  := 0;
                if (cdsItens.Active) then
                  cdsItens.Close;
                cdsItens.Params[0].AsInteger := cdsNFVendaCODMOVIMENTO.AsInteger;
                cdsItens.Open;
                // INICIO BLOCO DET VENDAS  ######################
                IItens := 1;
                While not cdsItens.Eof do
                begin
                  //10 itens para cada nota...
                  //for IItens := 1 to 10 do
                  //begin
                  //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                  with RegistroC170New do   //Inicio Adicionar os Itens:
                  begin
                    NUM_ITEM         := FormatFloat('000', IItens);
                    COD_ITEM         := FormatFloat('000000', cdsItensCODPRODUTO.AsInteger);
                    DESCR_COMPL      := cdsItensDESCPRODUTO.AsString;
                    QTD              := cdsItensQUANTIDADE.AsFloat;
                    UNID             := cdsItensUN.AsString;
                    VL_ITEM          := cdsItensVLR_BASE.AsFloat * cdsItensQUANTIDADE.AsFloat;
                    VL_DESC          := cdsItensVALOR_DESCONTO.AsFloat;
                    IND_MOV          := mfSim;
                    //CST_ICMS
                    CST_ICMS         := cstIcms(cdsItensCST.asString, cdsNFVendaNOTASERIE.AsString + '-VENDA');// sticmsTributadaIntegralmente;
                    CFOP             := cdsItensCFOP.AsString;
                    COD_NAT          := '03';  // Venda
                    VL_BC_ICMS       := cdsItensVLR_BASEICMS.AsFloat;
                    ALIQ_ICMS        := cdsItensICMS.AsFloat;
                    VL_ICMS          := cdsItensVALOR_ICMS.AsFloat;
                    VL_BC_ICMS_ST    := cdsItensICMS_SUBST.AsFloat;
                    ALIQ_ST          := cdsItensICMS_SUBSTD.AsFloat;
                    //CARLOS  AQUI
                    VL_ICMS_ST       := 0;
                    if (ALIQ_ST > 0) then
                      VL_ICMS_ST     := SimpleRoundTo(((VL_BC_ICMS_ST/ALIQ_ST)*100),(-2));
                    IND_APUR         := iaMensal;

                    if (cdsItensCSTIPI.AsString = '') then
                    begin
                      MessageDlg('Número da Nota não preenchido. Mov. número - ' +
                      cdsNFVendaNOTASERIE.AsString + '-VENDA' , mtWarning, [mbOK], 0);
                      exit;
                    end;

                    Case StrToInt(trim(cdsItensCSTIPI.AsString)) of
                      0 : CST_IPI := stipiEntradaRecuperacaoCredito;// '00' // Entrada com recuperação de crédito
                      1 : CST_IPI := stipiEntradaTributradaZero;    // '01' // Entrada tributada com alíquota zero
                      2 : CST_IPI := stipiEntradaIsenta;            // '02' // Entrada isenta
                      3 : CST_IPI := stipiEntradaNaoTributada;      // '03' // Entrada não-tributada
                      4 : CST_IPI := stipiEntradaImune;             // '04' // Entrada imune
                      5 : CST_IPI := stipiEntradaComSuspensao;      // '05' // Entrada com suspensão
                     49 : CST_IPI := stipiOutrasEntradas;           // '49' // Outras entradas
                     50 : CST_IPI := stipiSaidaTributada;           // '50' // Saída tributada
                     51 : CST_IPI := stipiSaidaTributadaZero;       // '51' // Saída tributada com alíquota zero
                     52 : CST_IPI := stipiSaidaIsenta;              // '52' // Saída isenta
                     53 : CST_IPI := stipiSaidaNaoTributada;        // '53' // Saída não-tributada
                     54 : CST_IPI := stipiSaidaImune;               // '54' // Saída imune
                     55 : CST_IPI := stipiSaidaComSuspensao;        // '55' // Saída com suspensão
                     99 : CST_IPI := stipiOutrasSaidas;             // '99' // Outras saídas
                    end;
                    COD_ENQ          := '';
                    VL_BC_IPI        := cdsItensVLR_BASEICMS.AsFloat;
                    ALIQ_IPI         := cdsItensPIPI.AsFloat;
                    VL_IPI           := cdsItensVIPI.AsFloat;
                    CST_PIS          := cstPis(cdsItensCSTPIS.AsString, cdsNFVendaNOTASERIE.AsString + '-VENDA'); //  stpisOutrasOperacoesSaida;  // #########
                    VL_BC_PIS        := cdsItensVLR_BASE.AsFloat* cdsItensQUANTIDADE.AsFloat;
                    VL_PIS           := cdsItensVALOR_PIS.AsFloat;
                    ALIQ_PIS_PERC    := cdsItensPPIS.AsFloat;
                    ALIQ_PIS_R       := 0;
                    CST_COFINS       := cstCofins(cdsItensCSTCOFINS.AsString, cdsNFVendaNOTASERIE.AsString + '-VENDA');
                    VL_BC_COFINS     := cdsItensVLR_BASE.AsFloat* cdsItensQUANTIDADE.AsFloat;
                    VL_COFINS        := cdsItensVALOR_COFINS.AsFloat;
                    ALIQ_COFINS_PERC := cdsItensPCOFINS.AsFloat;;
                    ALIQ_COFINS_R    := 0;
                    COD_CTA          := '';
                  end; //Fim dos Itens;
                  IItens := IItens + 1;
                  cdsItens.Next;
                end;
              end; // Notas Válidas
            end;
            codParticip := cdsNFVendaCODCLIENTE.AsInteger;
            cdsNFVenda.Next;
          end; // FIM DO WHILE DE VENDAS
          // FIM BLOCO VENDAS #######################
        end;

      end;
    end;

    if cbConcomitante.Checked then
    begin
      ACBrSPEDPisCofins1.WriteBloco_C(True);  // True, fecha o Bloco
      LoadToMemo;
    end;
  end;
  ProgressBar1.Visible := False ;
end;

procedure TfNfePisCofins.blocoD;
begin
  // SERICOS

  with ACBrSPEDPisCofins1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      IND_MOV := imSemDados;
    end;
  end;

  {    //Estabelecimento
      with RegistroD010New do
      begin
        CNPJ := '11111111111180';

  //          for INotas := 1 to NNotas do
  //          begin
  //            with RegistroD100New do
  //            begin
  //              IND_OPER := 0;
  //              IND_EMIT := 0;
  //              COD_PART := '';
  //              COD_MOD :=  '';
  //            end;
  //          end;

        //D200 - Resumo da Escrituração Diária – Prestação de Serviços de Transportes
        // (Códigos 07, 08, 8B, 09, 10, 11, 26, 27 e 57).
        with RegistroD200New do
        begin
        //|D200|08|00|||11574|11854|6352|000011574|000011854|6352|25072011|6807,57|0,00|
          COD_MOD := '08';
          COD_SIT := sdfRegular;
          SER := '';
          SUB := '';
          NUM_DOC_INI := 11574;
          NUM_DOC_FIN := 11854;
          CFOP := 6352;
          DT_REF := DT_INI;// StrToDate('15/04/2011');
          VL_DOC := 6807.57;
          VL_DESC := 0;
        end;
      end;
    end;
  end;
  }
  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_D;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoF;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco F.
  with ACBrSPEDPisCofins1.Bloco_F do
  begin
    with RegistroF001New do
    begin
      IND_MOV := imSemDados;
    end;
  end;

  {
      //F010 - Identificação do Estabelecimento
      with RegistroF010New do
      begin
         CNPJ := '11111111111180';

         //F100 - Demais Documentos e Operações Geradoras de Contribuição e Créditos
         with RegistroF100New do
         begin
            IND_OPER      := indRepCustosDespesasEncargos;
            COD_PART      := '001';
            COD_ITEM      := '000'; //Codigo do Item no registro 0200
            DT_OPER       := Date();
            VL_OPER       := 0;
            CST_PIS       := stpisOutrasOperacoesSaida;
            VL_BC_PIS     := 0;
            ALIQ_PIS      := 1.2375;
            VL_PIS        := 0;
            CST_COFINS    := stcofinsOutrasOperacoesSaida;
            VL_BC_COFINS  := 0;
            ALIQ_COFINS   := 0;
            VL_COFINS     := 0;
            NAT_BC_CRED   := bccAqBensRevenda;
            IND_ORIG_CRED := opcMercadoInterno;
            COD_CTA       := '';
            COD_CCUS      := '123';
            DESC_DOC_OPER := '';
         end;
      end;
    end;
  end;
  }
  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_F;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoM;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco M.
  with ACBrSPEDPisCofins1.Bloco_M do
  begin
    with RegistroM001New do
    begin
      abrirCdsM400;
      if (cdsM.IsEmpty) then
        IND_MOV := imSemDados
      else
      begin
        IND_MOV := imComDados;
        with RegistroM400New do
        begin
          while not cdsM.Eof do
          begin
            if (cdsM.FieldByName('CSTPIS').asString = '06') then
              CST_PIS  := stpisAliquotaZero; // '06' // Operação Tributável a Alíquota Zero
            VL_TOT_REC := cdsM.FieldByName('VLR_BASE_PIS').AsFloat;
            cdsM.Next;
          end;
          abrirCdsM410;
          while not cdsM.Eof do
          begin
            with RegistroM410New do
            begin
              NAT_REC    := cdsM.FieldByName('COD_FAMILIA').asString;
              VL_REC := cdsM.FieldByName('VLR_BASE_PIS').AsFloat;
              cdsM.Next;
            end;
          end; // M410
        end; // M400
        abrirCdsM800;
        with RegistroM800New do
        begin
          while not cdsM.Eof do
          begin
            if (cdsM.FieldByName('CSTCOFINS').asString = '06') then
              CST_COFINS  := stcofinsAliquotaZero; // '06' // Operação Tributável a Alíquota Zero
            VL_TOT_REC := cdsM.FieldByName('VLR_BASE_COFINS').AsFloat;
            cdsM.Next;
          end;
          abrirCdsM810;
          while not cdsM.Eof do
          begin
            with RegistroM810New do
            begin
              NAT_REC    := cdsM.FieldByName('COD_FAMILIA').asString;
              VL_REC := cdsM.FieldByName('VLR_BASE_COFINS').AsFloat;
              cdsM.Next;
            end;
          end; // M810
        end; // M800

      end; // COM DADOS
    end;
  end;
  {    //M100 - Crédito de PIS/PASEP Relativo ao Período
       with RegistroM100New do
       begin
          COD_CRED       := '';
          IND_CRED_ORI   := TACBrIndCredOri(0);
          VL_BC_PIS      := 0;
          ALIQ_PIS       := 0;
          QUANT_BC_PIS   := 0;
          ALIQ_PIS_QUANT := 0;
          VL_CRED        := 0;
          VL_AJUS_ACRES  := 0;
          VL_AJUS_REDUC  := 0;
          VL_CRED_DIF    := 0;
          VL_CRED_DISP   := 0;
          IND_DESC_CRED  := TACBrIndDescCred(0);
          VL_CRED_DESC   := 0;
          SLD_CRED       := 0;
       end;

       with RegistroM200New do
       begin
         VL_TOT_CONT_NC_PER := 0;
         VL_TOT_CRED_DESC := 0;
         VL_TOT_CRED_DESC_ANT := 0;
         VL_TOT_CONT_NC_DEV := 0;
         VL_RET_NC := 0;
         VL_OUT_DED_NC := 0;
         VL_CONT_NC_REC := 0;
         VL_TOT_CONT_CUM_PER := 0;
         VL_RET_CUM := 0;
         VL_OUT_DED_CUM := 0;
         VL_CONT_CUM_REC := 0;
         VL_TOT_CONT_REC := 0;

         with RegistroM210New do
         begin
           COD_CONT := ccNaoAcumAliqBasica;
           VL_REC_BRT := 0;
           VL_BC_CONT := 0;
           ALIQ_PIS := 0;
           QUANT_BC_PIS := 0;
           ALIQ_PIS_QUANT := 0;
           VL_CONT_APUR := 0;
           VL_AJUS_ACRES := 0;
           VL_AJUS_REDUC := 0;
           VL_CONT_DIFER := 0;
           VL_CONT_DIFER_ANT := 0;
           VL_CONT_PER := 0;
         end;

       end;

       with RegistroM600 do
       begin
         VL_TOT_CONT_NC_PER := 1;
         VL_TOT_CRED_DESC := 2;
         VL_TOT_CRED_DESC_ANT := 3;
         VL_TOT_CONT_NC_DEV := 4;
         VL_RET_NC := 5;
         VL_OUT_DED_NC := 6;
         VL_CONT_NC_REC := 7;
         VL_TOT_CONT_CUM_PER := 8;
         VL_RET_CUM := 9;
         VL_OUT_DED_CUM := 10;
         VL_CONT_CUM_REC := 11;
         VL_TOT_CONT_REC := 12;

         with RegistroM610New do
         begin
           COD_CONT := ccNaoAcumAliqBasica;
           VL_REC_BRT := 2;
           VL_BC_CONT := 3;
           ALIQ_COFINS := 4;
           QUANT_BC_COFINS := 5;
           ALIQ_COFINS_QUANT := 6;
           VL_CONT_APUR := 7;
           VL_AJUS_ACRES := 8;
           VL_AJUS_REDUC := 9;
           VL_CONT_DIFER := 10;
           VL_CONT_DIFER_ANT := 11;
           VL_CONT_PER := 12;
         end;

       end;

    end;
  end;
          }
  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_M;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.edtFileChange(Sender: TObject);
begin
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text ;
end;

procedure TfNfePisCofins.edtFileExit(Sender: TObject);
begin
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text ;
end;

procedure TfNfePisCofins.cbConcomitanteClick(Sender: TObject);
begin
  btnTXT.Enabled   := not cbConcomitante.Checked ;
  btnError.Enabled := btnTXT.Enabled ;

  edBufNotas.Enabled := cbConcomitante.Checked ;

end;

procedure TfNfePisCofins.btnTXTClick(Sender: TObject);
var  Save_Cursor:TCursor;
begin
  Save_Cursor   := Screen.Cursor;
  { Show hourglass cursor }

  ProgressBar1.Max      := 100;//codMovMax-codMovMin;
  ProgressBar1.Position := 2;

  if (edtFile.Text = '') then
  begin
    SaveDialog1.Execute;
    edtFile.Text := SaveDialog1.FileName;
  end;
  try
  Screen.Cursor := crHourGlass;
  abrirTabelasCompra;
  ProgressBar1.Position := 10;
  ACBrSPEDPisCofins1.LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

  ACBrSPEDPisCofins1.DT_INI := data_ini.Date;
  ACBrSPEDPisCofins1.DT_FIN := data_fim.Date;

  // Limpa a lista de erros.
  memoError.Lines.Clear;
  // Informa o pasta onde será salvo o arquivo TXT.
  ACBrSPEDPisCofins1.Path := 'c:\home\';
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text;


  blocoO;
  ProgressBar1.Position := 20;
  bloco1;
  ProgressBar1.Position := 30;
  blocoA; // DOCUMENTOS FISCAIS - SERVIÇOS (NÃO SUJEITOS AO ICMS)
  ProgressBar1.Position := 40;
  blocoC;
  ProgressBar1.Position := 50;
  blocoD;  // DOCUMENTOS FISCAIS - SERVIÇOS (ICMS)
  ProgressBar1.Position := 60;
  blocoF;  // Demais Documentos e Operações
  ProgressBar1.Position := 70;

  blocoM;  // APURAÇÃO DA CONTRIBUIÇÃO E CRÉDITO DO PIS/PASEP E DA COFINS
  ProgressBar1.Position := 80;


  // Método que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT ;
  ProgressBar1.Position := 90;
  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os botões
  cbConcomitante.Enabled := True ;
  ProgressBar1.Position := 100;
  MessageDlg('Arquivo criado com sucesso.', mtInformation, [mbOK], 0);
  finally
    Screen.Cursor := Save_Cursor;
  end;
end;

procedure TfNfePisCofins.btnErrorClick(Sender: TObject);
begin
  with ACBrSPEDPisCofins1 do
  begin
    DT_INI := StrToDate('01/04/2011');
    DT_FIN := StrToDate('30/04/2011');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;

  // Método que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT ;
end;

procedure TfNfePisCofins.FormCreate(Sender: TObject);
begin
  tipo := 'tpEscrOriginal';
  util := Tutils.Create;
end;

procedure TfNfePisCofins.cbTipoChange(Sender: TObject);
begin
  if (cbTipo.ItemIndex = 0) then
    tipo := 'tpEscrOriginal';
  if (cbTipo.ItemIndex = 1) then
    tipo := 'tpEscrRetificadora';

end;


procedure TfNfePisCofins.FormDestroy(Sender: TObject);
begin
  util.Free;
end;

function TfNfePisCofins.validaCodMunicipio(cod: String; quem: String):String;
begin
  cod := util.RemoveChar(cod);
  result := cod;
  if (cod = '') then
    MessageDlg('Código do IBGE não preenchido para ' + quem + '.', mtWarning, [mbOK], 0);
end;

function TfNfePisCofins.cstPis(cstP: String; nota: String): TACBrSituacaoTribPIS;
begin
  if (trim(cstP) = '') then
  begin
    MessageDlg('CST - PIS não preenchido. Nota número - ' + nota, mtWarning, [mbOK], 0);
    exit;
  end;
  case StrToInt(trim(cstP)) of
    1 : result := stpisValorAliquotaNormal;                         // '01' // Operação Tributável com Alíquota Básica   // valor da operação alíquota normal (cumulativo/não cumulativo)).
    2 : result := stpisValorAliquotaDiferenciada;                   // '02' // Operação Tributável com Alíquota Diferenciada // valor da operação (alíquota diferenciada)).
    3 : result := stpisQtdeAliquotaUnidade;                            // '03' // Operação Tributável com Alíquota por Unidade de Medida de Produto // quantidade vendida x alíquota por unidade de produto).
    4 : result := stpisMonofaticaAliquotaZero;                         // '04' // Operação Tributável Monofásica - Revenda a Alíquota Zero
    5 : result := stpisValorAliquotaPorST;                             // '05' // Operação Tributável por Substituição Tributária
    6 : result := stpisAliquotaZero;                                   // '06' // Operação Tributável a Alíquota Zero
    7 : result := stpisIsentaContribuicao;                             // '07' // Operação Isenta da Contribuição
    8 : result := stpisSemIncidenciaContribuicao;                      // '08' // Operação sem Incidência da Contribuição
    9 : result := stpisSuspensaoContribuicao;                          // '09' // Operação com Suspensão da Contribuição
   49 : result := stpisOutrasOperacoesSaida;                           // '49' // Outras Operações de Saída
   50 : result := stpisOperCredExcRecTribMercInt;                      // '50' // Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
   51 : result := stpisOperCredExcRecNaoTribMercInt;                   // '51' // Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno
   52 : result := stpisOperCredExcRecExportacao;                      // '52' // Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
   53 : result := stpisOperCredRecTribNaoTribMercInt;                  // '53' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
   54 : result := stpisOperCredRecTribMercIntEExportacao;              // '54' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
   55 : result := stpisOperCredRecNaoTribMercIntEExportacao;           // '55' // Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
   56 : result := stpisOperCredRecTribENaoTribMercIntEExportacao;      // '56' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
   60 : result := stpisCredPresAquiExcRecTribMercInt;                  // '60' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
   61 : result := stpisCredPresAquiExcRecNaoTribMercInt;               // '61' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
   62 : result := stpisCredPresAquiExcExcRecExportacao;                // '62' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
   63 : result := stpisCredPresAquiRecTribNaoTribMercInt;              // '63' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
   64 : result := stpisCredPresAquiRecTribMercIntEExportacao;          // '64' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
   65 : result := stpisCredPresAquiRecNaoTribMercIntEExportacao;       // '65' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
   66 : result := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;  // '66' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
   67 : result := stpisOutrasOperacoes_CredPresumido;                  // '67' // Crédito Presumido - Outras Operações
   70 : result := stpisOperAquiSemDirCredito;                          // '70' // Operação de Aquisição sem Direito a Crédito
   71 : result := stpisOperAquiComIsensao;                             // '71' // Operação de Aquisição com Isenção
   72 : result := stpisOperAquiComSuspensao;                           // '72' // Operação de Aquisição com Suspensão
   73 : result := stpisOperAquiAliquotaZero;                           // '73' // Operação de Aquisição a Alíquota Zero
   74 : result := stpisOperAqui_SemIncidenciaContribuicao;             // '74' // Operação de Aquisição sem Incidência da Contribuição
   75 : result := stpisOperAquiPorST;                                  // '75' // Operação de Aquisição por Substituição Tributária
   98 : result := stpisOutrasOperacoesEntrada;                         // '98' // Outras Operações de Entrada
   99 : result := stpisOutrasOperacoes;                                // '99' // Outras Operações
 end;
end;

function TfNfePisCofins.cstCofins(cstC: String; nota: String): TACBrSituacaoTribCOFINS;
begin
  if (trim(cstC) = '') then
  begin
    MessageDlg('CST - COFINS não preenchido. Nota número - ' + nota, mtWarning, [mbOK], 0);
    exit;
  end;

  Case StrToInt(trim(cstC)) of
    1 : Result := stcofinsValorAliquotaNormal;                           // '01' // Operação Tributável com Alíquota Básica                           // valor da operação alíquota normal (cumulativo/não cumulativo)).
    2 : Result := stcofinsValorAliquotaDiferenciada;                     // '02' // Operação Tributável com Alíquota Diferenciada                     // valor da operação (alíquota diferenciada)).
    3 : Result := stcofinsQtdeAliquotaUnidade;                           // '03' // Operação Tributável com Alíquota por Unidade de Medida de Produto // quantidade vendida x alíquota por unidade de produto).
    4 : Result := stcofinsMonofaticaAliquotaZero;                        // '04' // Operação Tributável Monofásica - Revenda a Alíquota Zero
    5 : Result := stcofinsValorAliquotaPorST;                            // '05' // Operação Tributável por Substituição Tributária
    6 : Result := stcofinsAliquotaZero;                                  // '06' // Operação Tributável a Alíquota Zero
    7 : Result := stcofinsIsentaContribuicao;                            // '07' // Operação Isenta da Contribuição
    8 : Result := stcofinsSemIncidenciaContribuicao;                     // '08' // Operação sem Incidência da Contribuição
    9 : Result := stcofinsSuspensaoContribuicao;                         // '09' // Operação com Suspensão da Contribuição
    49 : Result := stcofinsOutrasOperacoesSaida;                          // '49' // Outras Operações de Saída
    50 : Result := stcofinsOperCredExcRecTribMercInt;                     // '50' // Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    51 : Result := stcofinsOperCredExcRecNaoTribMercInt;                  // '51' // Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
    52 : Result := stcofinsOperCredExcRecExportacao;                     // '52' // Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
    53 : Result := stcofinsOperCredRecTribNaoTribMercInt;                 // '53' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
    54 : Result := stcofinsOperCredRecTribMercIntEExportacao;             // '54' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
    55 : Result := stcofinsOperCredRecNaoTribMercIntEExportacao;          // '55' // Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação
    56 : Result := stcofinsOperCredRecTribENaoTribMercIntEExportacao;     // '56' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação
    60 : Result := stcofinsCredPresAquiExcRecTribMercInt;                 // '60' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    61 : Result := stcofinsCredPresAquiExcRecNaoTribMercInt;              // '61' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
    62 : Result := stcofinsCredPresAquiExcExcRecExportacao;               // '62' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
    63 : Result := stcofinsCredPresAquiRecTribNaoTribMercInt;             // '63' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
    64 : Result := stcofinsCredPresAquiRecTribMercIntEExportacao;         // '64' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
    65 : Result := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;      // '65' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
    66 : Result := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao; // '66' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação
    67 : Result := stcofinsOutrasOperacoes_CredPresumido;                 // '67' // Crédito Presumido - Outras Operações
    70 : Result := stcofinsOperAquiSemDirCredito;                         // '70' // Operação de Aquisição sem Direito a Crédito
    71 : Result := stcofinsOperAquiComIsensao;                            // '71' // Operação de Aquisição com Isenção
    72 : Result := stcofinsOperAquiComSuspensao;                          // '72' // Operação de Aquisição com Suspensão
    73 : Result := stcofinsOperAquiAliquotaZero;                          // '73' // Operação de Aquisição a Alíquota Zero
    74 : Result := stcofinsOperAqui_SemIncidenciaContribuicao;            // '74' // Operação de Aquisição sem Incidência da Contribuição
    75 : Result := stcofinsOperAquiPorST;                                 // '75' // Operação de Aquisição por Substituição Tributária
    98 : Result := stcofinsOutrasOperacoesEntrada;                        // '98' // Outras Operações de Entrada
    99 : Result := stcofinsOutrasOperacoes;                                // '99' // Outras Operações
  end;
end;

function TfNfePisCofins.cstIcms(cstI: String; nota: String): TACBrSituacaoTribICMS;
begin
  if (trim(cstI) = '') then
  begin
    MessageDlg('CST - ICMS não preenchido. Nota número - ' + nota, mtWarning, [mbOK], 0);
    exit;
  end;

  Case StrtoInt(trim(CstI)) of
      0 : Result := sticmsTributadaIntegralmente;    // '000' //	Tributada integralmente
     10 : Result := sticmsTributadaComCobracaPorST;  // '010' //	Tributada e com cobrança do ICMS por substituição tributária
     20 : Result := sticmsComReducao;                // '020' //	Com redução de base de cálculo
     30 : Result := sticmsIsentaComCobracaPorST;     // '030' //	Isenta ou não tributada e com cobrança do ICMS por substituição tributária
     40 : Result := sticmsIsenta;                    // '040' //	Isenta
     41 : Result := sticmsNaoTributada;              // '041' //	Não tributada
     50 : Result := sticmsSuspensao;                 // '050' //	Suspensão
     51 : Result := sticmsDiferimento;               // '051' //	Diferimento
     60 : Result := sticmsCobradoAnteriormentePorST; // '060' //	ICMS cobrado anteriormente por substituição tributária
     70 : Result := sticmsComReducaoPorST;           // '070' //	Com redução de base de cálculo e cobrança do ICMS por substituição tributária
     90 : Result := sticmsOutros;                    // '090' //	Outros
    300 : Result := sticmsSimplesNacionalImune;      // '300' // Simples Nacional - Imune
    400 : Result := sticmsSimplesNacionalNaoTributada;// '400' // Simples Nacional - Não tributada pelo Simples Nacional
    500 : Result := sticmsSimplesNacionalCobradoAnteriormentePorST;// '500' // Simples Nacional - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação
    900 : Result := sticmsSimplesNacionalOutros;     // '900' // Simples Nacional - Outros
  end;
end;

procedure TfNfePisCofins.abrirTabelasCompra;
begin
  if (cdsMov.Active) then
    cdsMov.Close;
  cdsMov.CommandText := 'SELECT MIN(C.CODMOVIMENTO), MAX(C.CODMOVIMENTO) ' +
    ' FROM COMPRA C, MOVIMENTO MOV ' +
    ' WHERE C.CODMOVIMENTO = MOV.CODMOVIMENTO ' +
    '   AND MOV.CODNATUREZA = 4  ' +
    '   AND C.DATACOMPRA BETWEEN ' +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
    ' AND '  +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
  cdsMov.Open;
  codMovMin := cdsMov.Fields[0].asInteger;
  codMovMax := cdsMov.Fields[1].asInteger;

  if (not cdsEmpresa.Active) then
    cdsEmpresa.Open;

  cdsMov.Close;
  cdsMov.CommandText := 'SELECT CODMOVIMENTO, CODNATUREZA ' +
    '  FROM MOVIMENTO ' +
    ' WHERE CODNATUREZA = 4 ' +
    '   AND CODMOVIMENTO BETWEEN ' + IntToStr(codMovMin) +
    '   AND ' + IntToStr(codMovMax);
  cdsMov.Open;

  if (cdsItens.Active) then
    cdsItens.Close;

end;

procedure TfNfePisCofins.abrirTabelasVenda;
begin
  {cdsMov.Close;
  cdsMov.CommandText := 'SELECT MIN(V.CODMOVIMENTO), MAX(V.CODMOVIMENTO) ' +
    ' FROM VENDA V, MOVIMENTO MOV ' +
    ' WHERE MOV.CODMOVIMENTO = V.CODMOVIMENTO ' +
    '   AND MOV.CODNATUREZA IN (12, 15) ' +
    '   AND V.DATAVENDA BETWEEN ' +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
    ' AND '   +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
  cdsMov.Open;
  if (codMovMin > cdsMov.Fields[0].asInteger) then
    codMovMin := cdsMov.Fields[0].asInteger;
  if (codMovMax < cdsMov.Fields[1].asInteger) then
    codMovMax := cdsMov.Fields[1].asInteger;
  cdsMov.Close;
  cdsMov.CommandText := 'SELECT CODMOVIMENTO, CODNATUREZA ' +
    '  FROM MOVIMENTO ' +
    ' WHERE CODNATUREZA IN (12, 15) ' +
    '   AND CODMOVIMENTO BETWEEN ' + IntToStr(codMovMin) +
    '   AND ' + IntToStr(codMovMax);
  cdsMov.Open; }

  if (cdsNFVenda.Active) then
    cdsNFVenda.Close;
  cdsNFVenda.Params[0].AsDate := data_ini.Date;
  cdsNFVenda.Params[1].AsDate := data_fim.Date;
  //cdsNFVenda.Params[2].AsInteger := codMovMin;
  //cdsNFVenda.Params[3].AsInteger := codMovMax;
  cdsNFVenda.Open;

  if (cdsItens.Active) then
    cdsItens.Close;

end;

procedure TfNfePisCofins.BitBtn1Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  edtFile.Text := SaveDialog1.FileName;
end;

procedure TfNfePisCofins.abrirCdsM400;
begin
  if (cdsM.Active) then
    cdsM.Close;
  cdsM.CommandText := 'select sum(md.VLR_BASE * md.QUANTIDADE) VLR_BASE_PIS , md.CSTPIS ' +
  '  from NOTAFISCAL NF, VENDA V, MOVIMENTO m , MOVIMENTODETALHE md' +
  ' where nf.CODVENDA = v.CODVENDA' +
  '   and v.CODMOVIMENTO = m.CODMOVIMENTO' +
  '   and m.CODMOVIMENTO = md.CODMOVIMENTO' +
  '   and nf.DTAEMISSAO between ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
  '   and ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
  '   and (md.CSTPIS in (' +
  QuotedStr('06') + ', ' +
  QuotedStr('05') + ', ' +
  QuotedStr('04') + ', ' +
  QuotedStr('07') + ', ' +
  QuotedStr('08') + ',  ' +
  QuotedStr('09') + ')) ' +
  '   and (md.PPIS = 0)' +
  '   and (m.CODNATUREZA in (12, 15))' +
  '   and (nf.PROTOCOLOCANC is null) ' +
  '   and ((nf.STATUS is null) or (nf.STATUS <> ' + QuotedStr('C') + '))' +
  ' group by md.CSTPIS ';
  cdsM.Open;
end;

procedure TfNfePisCofins.abrirCdsM410;
begin
  if (cdsM.Active) then
    cdsM.Close;
  cdsM.CommandText := 'select sum(md.VLR_BASE * md.QUANTIDADE) VLR_BASE_PIS , fp.COD_FAMILIA ' +
  '  from NOTAFISCAL NF, VENDA V, MOVIMENTO m , MOVIMENTODETALHE md, PRODUTOS p, FAMILIAPRODUTOS fp ' +
  ' where nf.CODVENDA = v.CODVENDA' +
  '   and v.CODMOVIMENTO = m.CODMOVIMENTO' +
  '   and m.CODMOVIMENTO = md.CODMOVIMENTO' +
  '   and md.CODPRODUTO  = p.CODPRODUTO' +
  '   and p.FAMILIA = fp.DESCFAMILIA' +
  '   and nf.DTAEMISSAO between ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
  '   and ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
  '   and (md.CSTPIS in (' +
  QuotedStr('06') + ', ' +
  QuotedStr('05') + ', ' +
  QuotedStr('04') + ', ' +
  QuotedStr('07') + ', ' +
  QuotedStr('08') + ',  ' +
  QuotedStr('09') + ')) ' +
  '   and (md.PPIS = 0)' +
  '   and (m.CODNATUREZA in (12, 15))' +
  '   and (nf.PROTOCOLOCANC is null) ' +
  '   and ((nf.STATUS is null) or (nf.STATUS <> ' + QuotedStr('C') + '))' +
  ' group by fp.COD_FAMILIA ';
  cdsM.Open;
end;

procedure TfNfePisCofins.abrirCdsM800;
begin
  if (cdsM.Active) then
    cdsM.Close;
  cdsM.CommandText := 'select sum(md.VLR_BASE * md.QUANTIDADE) VLR_BASE_COFINS, md.CSTCOFINS ' +
  '  from NOTAFISCAL NF, VENDA V, MOVIMENTO m , MOVIMENTODETALHE md' +
  ' where nf.CODVENDA = v.CODVENDA' +
  '   and v.CODMOVIMENTO = m.CODMOVIMENTO' +
  '   and m.CODMOVIMENTO = md.CODMOVIMENTO' +
  '   and nf.DTAEMISSAO between ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
  '   and ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
  '   and (md.CSTCOFINS in (' +
  QuotedStr('06') + ', ' +
  QuotedStr('05') + ', ' +
  QuotedStr('04') + ', ' +
  QuotedStr('07') + ', ' +
  QuotedStr('08') + ',  ' +
  QuotedStr('09') + ')) ' +
  '   and (md.PCOFINS = 0)' +
  '   and (m.CODNATUREZA in (12, 15))' +
  '   and (nf.PROTOCOLOCANC is null) ' +
  '   and ((nf.STATUS is null) or (nf.STATUS <> ' + QuotedStr('C') + '))' +
  ' group by md.CSTCOFINS ';
  cdsM.Open;

end;

procedure TfNfePisCofins.abrirCdsM810;
begin
  if (cdsM.Active) then
    cdsM.Close;
  cdsM.CommandText := 'select sum(md.VLR_BASE * md.QUANTIDADE) VLR_BASE_COFINS , fp.COD_FAMILIA' +
  '  from NOTAFISCAL NF, VENDA V, MOVIMENTO m , MOVIMENTODETALHE md, PRODUTOS p, FAMILIAPRODUTOS fp' +
  ' where nf.CODVENDA = v.CODVENDA' +
  '   and v.CODMOVIMENTO = m.CODMOVIMENTO' +
  '   and m.CODMOVIMENTO = md.CODMOVIMENTO' +
  '   and md.CODPRODUTO  = p.CODPRODUTO' +
  '   and p.FAMILIA = fp.DESCFAMILIA' +
  '   and nf.DTAEMISSAO between ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
  '   and ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
  '   and (md.CSTCOFINS in (' +
  QuotedStr('06') + ', ' +
  QuotedStr('05') + ', ' +
  QuotedStr('04') + ', ' +
  QuotedStr('07') + ', ' +
  QuotedStr('08') + ',  ' +
  QuotedStr('09') + ')) ' +
  '   and (md.PCOFINS = 0)' +
  '   and (m.CODNATUREZA in (12, 15))' +
  '   and (nf.PROTOCOLOCANC is null) ' +
  '   and ((nf.STATUS is null) or (nf.STATUS <> ' + QuotedStr('C') + '))' +
  ' group by  fp.COD_FAMILIA';
  cdsM.Open;
end;

end.
