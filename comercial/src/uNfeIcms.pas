unit uNfeIcms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, JvExComCtrls,
  JvProgressBar, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, FMTBcd,
  DBClient, Provider, DB, SqlExpr, uUtils, ACBrEFDBlocos, ACBrSpedFiscal,
  MaskUtils, Buttons, DBCtrls, ACBrBase, rpcompobase, rpvclreport;

type
  TfNfeIcms = class(TForm)
    btnTXT: TButton;
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
    ProgressBar1: TJvProgressBar;
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
    sdsEmpS: TSQLDataSet;
    dspEmpS: TDataSetProvider;
    cdsEmpS: TClientDataSet;
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
    sdsEmpE: TSQLDataSet;
    dspEmpE: TDataSetProvider;
    cdsEmpE: TClientDataSet;
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
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    sdsProdutoCODPRODUTO: TIntegerField;
    sdsProdutoCODPRO: TStringField;
    sdsProdutoNCM: TStringField;
    sdsProdutoPRODUTO: TStringField;
    cdsProdutoCODPRODUTO: TIntegerField;
    cdsProdutoCODPRO: TStringField;
    cdsProdutoNCM: TStringField;
    cdsProdutoPRODUTO: TStringField;
    sdsCompraDet: TSQLDataSet;
    DateField1: TDateField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField2: TIntegerField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField1: TStringField;
    FloatField8: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField4: TStringField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    StringField5: TStringField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField6: TStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    SmallintField1: TSmallintField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    SmallintField2: TSmallintField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    IntegerField4: TIntegerField;
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
    cdsCompraDetDATACOMPRA: TDateField;
    cdsCompraDetNOTAFISCAL: TIntegerField;
    cdsCompraDetVALOR_ICMS: TFloatField;
    cdsCompraDetVALOR_FRETE: TFloatField;
    cdsCompraDetVALOR_SEGURO: TFloatField;
    cdsCompraDetVALOR_IPI: TFloatField;
    cdsCompraDetCODPRODUTO: TIntegerField;
    cdsCompraDetQUANTIDADE: TFloatField;
    cdsCompraDetPRECO: TFloatField;
    cdsCompraDetICMS: TFloatField;
    cdsCompraDetUN: TStringField;
    cdsCompraDetQTDE_ALT: TFloatField;
    cdsCompraDetDESCPRODUTO: TStringField;
    cdsCompraDetCST: TStringField;
    cdsCompraDetVALOR_ICMS_1: TFloatField;
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
    cdsCompraDetVALOR_SEGURO_1: TFloatField;
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
    cdsCompraDetCODFORNECEDOR: TIntegerField;
    cdsCompraDetRAZAOSOCIAL: TStringField;
    cdsCompraDetCNPJ: TStringField;
    cdsCompraDetINSCESTADUAL: TStringField;
    cdsCompraDetTIPOFIRMA: TSmallintField;
    cdsCompraDetLOGRADOURO: TStringField;
    cdsCompraDetBAIRRO: TStringField;
    cdsCompraDetCIDADE: TStringField;
    cdsCompraDetCD_IBGE: TStringField;
    cdsCompraDetCEP: TStringField;
    cdsCompraDetCOMPLEMENTO: TStringField;
    cdsCompraDetDDD: TSmallintField;
    cdsCompraDetTELEFONE: TStringField;
    cdsCompraDetNUMERO: TStringField;
    cdsCompraDetPAIS: TStringField;
    cdsCompraDetSERIE: TStringField;
    cdsCompraDetVALOR: TFloatField;
    cdsCompraDetICMS_ST: TFloatField;
    cdsCompraDetICMS_BASE_ST: TFloatField;
    cdsCompraDetCODDETALHE: TIntegerField;
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
    sdsProdutoUN: TStringField;
    cdsProdutoUN: TStringField;
    sdsTotal: TSQLDataSet;
    sdsTotalIPI: TFloatField;
    sdsTotalPIS: TFloatField;
    sdsTotalCOFINS: TFloatField;
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
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
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
    sdsTotalBASE_ICMS: TFloatField;
    sqlTotalEntrada: TSQLQuery;
    sqlTotalSaida: TSQLQuery;
    sqlTotalSaidaVLR_ICMS: TFloatField;
    sqlTotalSaidaVLR_OPERACAO: TFloatField;
    sqlTotalSaidaICMS_ST: TFloatField;
    sqlTotalSaidaVLR_BASE_ICMS_ST: TFloatField;
    sqlTotalSaidaVLR_BASE_ICMS: TFloatField;
    sqlTotalSaidaVLR_IPI: TFloatField;
    sqlTotalEntradaVLR_ICMS: TFloatField;
    sqlTotalEntradaVLR_OPERACAO: TFloatField;
    sqlTotalEntradaICMS_ST: TFloatField;
    sqlTotalEntradaVLR_BASE_ICMS_ST: TFloatField;
    sqlTotalEntradaVLR_BASE_ICMS: TFloatField;
    sqlTotalEntradaVLR_IPI: TFloatField;
    sqlEnergia: TSQLQuery;
    sqlEnergiaDATACOMPRA: TDateField;
    sqlEnergiaNOTAFISCAL: TIntegerField;
    sqlEnergiaVALOR_ICMS: TFloatField;
    sqlEnergiaVALOR_FRETE: TFloatField;
    sqlEnergiaVALOR_SEGURO: TFloatField;
    sqlEnergiaVALOR_IPI: TFloatField;
    sqlEnergiaCODFORNECEDOR: TIntegerField;
    sqlEnergiaRAZAOSOCIAL: TStringField;
    sqlEnergiaCNPJ: TStringField;
    sqlEnergiaINSCESTADUAL: TStringField;
    sqlEnergiaTIPOFIRMA: TSmallintField;
    sqlEnergiaLOGRADOURO: TStringField;
    sqlEnergiaBAIRRO: TStringField;
    sqlEnergiaCIDADE: TStringField;
    sqlEnergiaCD_IBGE: TStringField;
    sqlEnergiaCEP: TStringField;
    sqlEnergiaCOMPLEMENTO: TStringField;
    sqlEnergiaDDD: TSmallintField;
    sqlEnergiaTELEFONE: TStringField;
    sqlEnergiaNUMERO: TStringField;
    sqlEnergiaPAIS: TStringField;
    sqlEnergiaSERIE: TStringField;
    sqlEnergiaVALOR: TFloatField;
    sqlEnergiaICMS_ST: TFloatField;
    sqlEnergiaICMS_BASE_ST: TFloatField;
    sqlEnergiaCODMOVIMENTO: TIntegerField;
    sqlEnergiaCHAVENF: TStringField;
    sdsEnergiaDet: TSQLDataSet;
    dspEnergiaDet: TDataSetProvider;
    cdsEnergiaDet: TClientDataSet;
    cdsEnergiaDetDATACOMPRA: TDateField;
    cdsEnergiaDetNOTAFISCAL: TIntegerField;
    cdsEnergiaDetVALOR_ICMS: TFloatField;
    cdsEnergiaDetVALOR_FRETE: TFloatField;
    cdsEnergiaDetVALOR_SEGURO: TFloatField;
    cdsEnergiaDetVALOR_IPI: TFloatField;
    cdsEnergiaDetCODPRODUTO: TIntegerField;
    cdsEnergiaDetQUANTIDADE: TFloatField;
    cdsEnergiaDetPRECO: TFloatField;
    cdsEnergiaDetICMS: TFloatField;
    cdsEnergiaDetUN: TStringField;
    cdsEnergiaDetQTDE_ALT: TFloatField;
    cdsEnergiaDetDESCPRODUTO: TStringField;
    cdsEnergiaDetCST: TStringField;
    cdsEnergiaDetVALOR_ICMS_1: TFloatField;
    cdsEnergiaDetVLR_BASE: TFloatField;
    cdsEnergiaDetICMS_SUBST: TFloatField;
    cdsEnergiaDetICMS_SUBSTD: TFloatField;
    cdsEnergiaDetVLR_BASEICMS: TFloatField;
    cdsEnergiaDetPIPI: TFloatField;
    cdsEnergiaDetVIPI: TFloatField;
    cdsEnergiaDetCFOP: TStringField;
    cdsEnergiaDetFRETE: TFloatField;
    cdsEnergiaDetBCFRETE: TFloatField;
    cdsEnergiaDetSTFRETE: TStringField;
    cdsEnergiaDetBCSTFRETE: TFloatField;
    cdsEnergiaDetICMSFRETE: TFloatField;
    cdsEnergiaDetCSOSN: TStringField;
    cdsEnergiaDetVALOR_SEGURO_1: TFloatField;
    cdsEnergiaDetVALOR_OUTROS: TFloatField;
    cdsEnergiaDetVALOR_PIS: TFloatField;
    cdsEnergiaDetVALOR_COFINS: TFloatField;
    cdsEnergiaDetII: TFloatField;
    cdsEnergiaDetBCII: TFloatField;
    cdsEnergiaDetCSTIPI: TStringField;
    cdsEnergiaDetCSTPIS: TStringField;
    cdsEnergiaDetCSTCOFINS: TStringField;
    cdsEnergiaDetPPIS: TFloatField;
    cdsEnergiaDetPCOFINS: TFloatField;
    cdsEnergiaDetCODFORNECEDOR: TIntegerField;
    cdsEnergiaDetRAZAOSOCIAL: TStringField;
    cdsEnergiaDetCNPJ: TStringField;
    cdsEnergiaDetINSCESTADUAL: TStringField;
    cdsEnergiaDetTIPOFIRMA: TSmallintField;
    cdsEnergiaDetSERIE: TStringField;
    cdsEnergiaDetVALOR: TFloatField;
    cdsEnergiaDetICMS_ST: TFloatField;
    cdsEnergiaDetICMS_BASE_ST: TFloatField;
    cdsEnergiaDetCODDETALHE: TIntegerField;
    sdsNFVendaMODELO: TStringField;
    cdsNFVendaMODELO: TStringField;
    sdsCompraMODELO: TStringField;
    cdsCompraMODELO: TStringField;
    sdsCompraIPI: TFloatField;
    sdsCompraPIS: TFloatField;
    sdsCompraCOFINS: TFloatField;
    sdsCompraBASE_ICMS: TFloatField;
    cdsCompraIPI: TFloatField;
    cdsCompraPIS: TFloatField;
    cdsCompraCOFINS: TFloatField;
    cdsCompraBASE_ICMS: TFloatField;
    sqlInventario: TSQLQuery;
    GroupBox1: TGroupBox;
    edDataInventario: TJvDatePickerEdit;
    chkInventario: TCheckBox;
    edContaContabil: TEdit;
    Label12: TLabel;
    sdsCompraDetCODPRO: TStringField;
    cdsCompraDetCODPRO: TStringField;
    sdsProdutoCLASS_FISCAL: TStringField;
    cdsProdutoCLASS_FISCAL: TStringField;
    sdsCompraOPERACAO: TStringField;
    cdsCompraOPERACAO: TStringField;
    sdsNFVendaBASE_IPI: TFloatField;
    sdsNFVendaBASE_PIS: TFloatField;
    sdsNFVendaBASE_COFINS: TFloatField;
    sdsNFVendaVLRTOT_TRIB: TFloatField;
    sdsNFVendaNFE_FINNFE: TStringField;
    sdsNFVendaNFE_MODELO: TStringField;
    sdsNFVendaNFE_VERSAO: TStringField;
    sdsNFVendaNFE_DESTOPERACAO: TStringField;
    sdsNFVendaNFE_FORMATODANFE: TStringField;
    sdsNFVendaNFE_TIPOEMISSAO: TStringField;
    sdsNFVendaNFE_INDFINAL: TStringField;
    sdsNFVendaNFE_INDPRES: TStringField;
    sdsNFVendaNFE_TIPO: TStringField;
    sdsNFVendaBLOQUEADO: TStringField;
    cdsNFVendaBASE_IPI: TFloatField;
    cdsNFVendaBASE_PIS: TFloatField;
    cdsNFVendaBASE_COFINS: TFloatField;
    cdsNFVendaVLRTOT_TRIB: TFloatField;
    cdsNFVendaNFE_FINNFE: TStringField;
    cdsNFVendaNFE_MODELO: TStringField;
    cdsNFVendaNFE_VERSAO: TStringField;
    cdsNFVendaNFE_DESTOPERACAO: TStringField;
    cdsNFVendaNFE_FORMATODANFE: TStringField;
    cdsNFVendaNFE_TIPOEMISSAO: TStringField;
    cdsNFVendaNFE_INDFINAL: TStringField;
    cdsNFVendaNFE_INDPRES: TStringField;
    cdsNFVendaNFE_TIPO: TStringField;
    cdsNFVendaBLOQUEADO: TStringField;
    sqlTotalEntradaVLR_BASE_IPI: TFloatField;
    sqlTotalSaidaVLR_BASE_IPI: TFloatField;
    sqlTotalEntradaIpi: TSQLQuery;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    sqlTotalSaidaIpi: TSQLQuery;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    sqlTotalEntradaIpiCSTIPI: TStringField;
    sqlTotalEntradaIpiCFOP: TStringField;
    sqlTotalSaidaIpiCFOP: TStringField;
    sqlTotalSaidaIpiCSTIPI: TStringField;
    dsp_tot_ipi: TDataSetProvider;
    dsp_tot_ipi_s: TDataSetProvider;
    cdsTotIpi: TClientDataSet;
    cdsTotIpiSaida: TClientDataSet;
    cdsTotIpiVLR_ICMS: TFloatField;
    cdsTotIpiVLR_OPERACAO: TFloatField;
    cdsTotIpiICMS_ST: TFloatField;
    cdsTotIpiVLR_BASE_ICMS_ST: TFloatField;
    cdsTotIpiVLR_BASE_ICMS: TFloatField;
    cdsTotIpiVLR_IPI: TFloatField;
    cdsTotIpiVLR_BASE_IPI: TFloatField;
    cdsTotIpiCSTIPI: TStringField;
    cdsTotIpiCFOP: TStringField;
    cdsTotIpiSaidaVLR_ICMS: TFloatField;
    cdsTotIpiSaidaVLR_OPERACAO: TFloatField;
    cdsTotIpiSaidaICMS_ST: TFloatField;
    cdsTotIpiSaidaVLR_BASE_ICMS_ST: TFloatField;
    cdsTotIpiSaidaVLR_BASE_ICMS: TFloatField;
    cdsTotIpiSaidaVLR_IPI: TFloatField;
    cdsTotIpiSaidaVLR_BASE_IPI: TFloatField;
    cdsTotIpiSaidaCFOP: TStringField;
    cdsTotIpiSaidaCSTIPI: TStringField;
    cbIPI: TComboBox;
    Label13: TLabel;
    sdsSat: TSQLDataSet;
    dspSat: TDataSetProvider;
    cdsSat: TClientDataSet;
    cdsSatDATAVENDA: TDateField;
    cdsSatVALOR: TFloatField;
    cdsSatVALOR_ICMS: TFloatField;
    cdsSatN_CNPJ: TStringField;
    cdsSatSAT: TStringField;
    cdsSatN_CFE: TStringField;
    cdsSatICMS: TFloatField;
    cdsSatPIS: TFloatField;
    cdsSatCOFINS: TFloatField;
    sdsSatAnal: TSQLDataSet;
    dspSatAnal: TDataSetProvider;
    cdsSatAnal: TClientDataSet;
    cdsSatAnalCFOP: TStringField;
    cdsSatAnalCST: TStringField;
    cdsSatAnalVLR_ICMS: TFloatField;
    cdsSatAnalTOTAL: TFloatField;
    cdsSatAnalICMS: TFloatField;
    cdsSatCODMOVIMENTO: TIntegerField;
    sdsDifal: TSQLDataSet;
    dspDifal: TDataSetProvider;
    cdsDifal: TClientDataSet;
    cdsDifalVBCUFDEST: TFloatField;
    cdsDifalPFCPUFDEST: TFloatField;
    cdsDifalPICMSUFDEST: TFloatField;
    cdsDifalPICMSINTER: TFloatField;
    cdsDifalPICMSINTERPART: TFloatField;
    cdsDifalVFCPUFDEST: TFloatField;
    cdsDifalVICMSUFDEST: TFloatField;
    cdsDifalVICMSUFREMET: TFloatField;
    sqlTotalSaidaVBCUFDEST: TFloatField;
    sqlTotalSaidaPFCPUFDEST: TFloatField;
    sqlTotalSaidaPICMSUFDEST: TFloatField;
    sqlTotalSaidaPICMSINTER: TFloatField;
    sqlTotalSaidaPICMSINTERPART: TFloatField;
    sqlTotalSaidaVFCPUFDEST: TFloatField;
    sqlTotalSaidaVICMSUFDEST: TFloatField;
    sqlTotalSaidaVICMSUFREMET: TFloatField;
    cdsItensCST_IPI_CENQ: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    btnDifal: TButton;
    sdsDifalCad: TSQLDataSet;
    dspDifalCad: TDataSetProvider;
    cdsDifalCad: TClientDataSet;
    dsDifalCad: TDataSource;
    btnSair: TBitBtn;
    cdsDifalCadDT_INI: TDateField;
    cdsDifalCadIND_MOV_DIFAL: TStringField;
    cdsDifalCadVL_SLD_CRED_ANT_DIFAL: TFloatField;
    cdsDifalCadVL_TOT_DEBITOS_DIFAL: TFloatField;
    cdsDifalCadVL_OUT_DEB_DIFAL: TFloatField;
    cdsDifalCadVL_TOT_DEB_FCP: TFloatField;
    cdsDifalCadVL_TOT_CREDITOS_DIFAL: TFloatField;
    cdsDifalCadVL_TOT_CRED_FCP: TFloatField;
    cdsDifalCadVL_OUT_CRED_DIFAL: TFloatField;
    cdsDifalCadVL_SLD_DEV_ANT_DIFAL: TFloatField;
    cdsDifalCadVL_DEDUCOES_DIFAL: TFloatField;
    cdsDifalCadVL_SLD_CRED_TRANSPORTAR: TFloatField;
    cdsDifalCadDEB_ESP_DIFAL: TFloatField;
    cdsDifalCadDT_FIM: TDateField;
    cdsItensVBCUFDEST: TFloatField;
    cdsItensPFCPUFDEST: TFloatField;
    cdsItensPICMSUFDEST: TFloatField;
    cdsItensPICMSINTER: TFloatField;
    cdsItensPICMSINTERPART: TFloatField;
    cdsItensVFCPUFDEST: TFloatField;
    cdsItensVICMSUFDEST: TFloatField;
    cdsItensVICMSUFREMET: TFloatField;
    sdsItensDifal: TSQLDataSet;
    dspItensDifal: TDataSetProvider;
    cdsItensDifal: TClientDataSet;
    cdsItensDifalVBCUFDEST: TFloatField;
    cdsItensDifalPFCPUFDEST: TFloatField;
    cdsItensDifalPICMSUFDEST: TFloatField;
    cdsItensDifalPICMSINTER: TFloatField;
    cdsItensDifalPICMSINTERPART: TFloatField;
    cdsItensDifalVFCPUFDEST: TFloatField;
    cdsItensDifalVICMSUFDEST: TFloatField;
    cdsItensDifalVICMSUFREMET: TFloatField;
    sdsProdutoUNIDADEMEDIDA: TStringField;
    cdsProdutoUNIDADEMEDIDA: TStringField;
    sdsProdutoUN_CONV: TFloatField;
    cdsProdutoUN_CONV: TFloatField;
    cdsDifalUF: TStringField;
    sdsCompraDATA_ENTREGA: TDateField;
    cdsCompraDATA_ENTREGA: TDateField;
    sdsCompraDESCONTO: TFloatField;
    cdsCompraDESCONTO: TFloatField;
    sdsCompraMUN_ORIGEM: TStringField;
    sdsCompraMUN_DESTINO: TStringField;
    cdsCompraMUN_ORIGEM: TStringField;
    cdsCompraMUN_DESTINO: TStringField;
    SpeedButton1: TBitBtn;
    vcReportEstoque: TVCLReport;
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
    procedure FormShow(Sender: TObject);
    procedure btnDifalClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    codFornEnergia: Integer;
    tipoLigacao: String;
    util : Tutils;
    tipo: String;
    tipoEmpresa : String;
    temCompra, temVenda: String;
    function validaCodMunicipio(cod: String; quem: String):String;
    function tipoDocumentoFiscal(finalidade: String):TACBrCodSit;
    //function cstIcms(cstI: String): String;
    procedure LoadToMemo;
    procedure blocoO;
    procedure bloco1;
    procedure blocoA;
    procedure blocoB;
    procedure blocoC;
    procedure blocoD;
    procedure blocoF;
    procedure blocoH;
    procedure blocoK;
    procedure blocoM;
    procedure abrirTabelasCompra;
    procedure abrirTabelasVenda;
    procedure abrirTabelasVendaSAT;
    procedure bloco_E;
    procedure bloco_E_ipi;
    { Private declarations }
  public
    codMovMin, codMovMax: Integer;
    codMovMinV, codMovMaxV: Integer;
    { Public declarations }
  end;

var
  fNfeIcms: TfNfeIcms;

implementation

uses UDm, ACBrEPCBloco_0, ACBrEPCBloco_0_Class, Math, ACBrEFDBloco_E_Class,
  ACBrEFDBloco_E, ACBrEFDBloco_1, ACBrEFDBloco_C, ACBrEFDBloco_H_Class,
  ACBrEFDBloco_H, ACBrSped, ACBrEFDBloco_C_Class, ACBrEFDBloco_0,
  ACBrEFDBloco_B_Class, StrUtils, ACBrEFDBloco_K_Class, ACBrEFDBloco_K,
  ACBrEFDBloco_D_Class, ACBrEFDBloco_D;

{$R *.dfm}

{ TForm1 }

procedure TfNfeIcms.bloco1;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco 1.

  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      //TAcbrIndicadorMovimento;
       IND_MOV := imComDados;
    end;
    with Registro1010New  do
    begin
      IND_EXP   := 'N';
      IND_CCRF  := 'N';
      IND_COMB  := 'N';
      IND_USINA := 'N';
      IND_VA    := 'N';
      IND_EE    := 'N';
      IND_CART  := 'N';
      IND_FORM  := 'N';
      IND_AER   := 'N';
      IND_GIAF1 := 'N';
      if (dm.cds_empresaGIAF1.AsString = 'S') then
        IND_GIAF1 := 'S';
      IND_GIAF3 := 'N';
      if (dm.cds_empresaGIAF3.AsString = 'S') then
        IND_GIAF3 := 'S';
      IND_GIAF4 := 'N';
      if (dm.cds_empresaGIAF4.AsString = 'S') then
        IND_GIAF4 := 'S';
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_1;
    LoadToMemo;
  end;
end;

procedure TfNfeIcms.blocoA;
begin

end;

procedure TfNfeIcms.blocoO;
var
  int0150: integer;
  int0175: integer;
  int0300: integer;
  int0190: integer;
  int0500: Integer;
  int0600: Integer;
  un_nova: String;
  prod_novo: String;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco 0.

  cbConcomitante.Enabled := False ;

  //ACBrSPEDPisCofins1.IniciaGeracao;
    //Definindo
  with ACBrSPEDFiscal1 do
  begin
    DT_INI := data_ini.date;
    DT_FIN := data_fim.date;
  end;

  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      COD_VER          := vlVersao116;
      if (data_ini.Date < StrToDate('01/01/2023')) then
      begin
        COD_VER          := vlVersao115;
      end;
      if (data_ini.Date < StrToDate('01/01/2022')) then
      begin
        COD_VER          := vlVersao114;
      end;
      if (data_ini.Date < StrToDate('01/01/2021')) then
      begin
        COD_VER          := vlVersao113;
      end;
      if (data_ini.Date < StrToDate('01/01/2020')) then
      begin
        COD_VER          := vlVersao112;
      end;
      if (data_ini.Date < StrToDate('01/01/2019')) then
      begin
        COD_VER          := vlVersao111;
      end;
      if (data_ini.Date < StrToDate('01/01/2018')) then
      begin
        COD_VER          := vlVersao110;
      end;
      if (data_ini.Date < StrToDate('01/01/2017')) then
      begin
        COD_VER          := vlVersao109;
      end;
      if (data_ini.Date < StrToDate('01/01/2016')) then
      begin
        COD_VER          := vlVersao108;
      end;
      if (data_ini.Date < StrToDate('01/01/2015')) then
      begin
        COD_VER          := vlVersao107;
      end;
      if (data_ini.Date < StrToDate('01/01/2014')) then
      begin
        COD_VER        := vlVersao106;
      end;
      if (data_ini.Date < StrToDate('01/01/2013')) then
      begin
        COD_VER        := vlVersao105;
      end;
      if (cbTipo.ItemIndex = 0) then
        COD_FIN          := raOriginal;
      if (cbTipo.ItemIndex = 1) then
        COD_FIN          := raSubstituto;

      NOME             := dm.cds_EmpresaRAZAO.AsString;
      CNPJ             := util.RemoveChar(dm.cds_EmpresaCNPJ_CPF.AsString);
      IE               := util.RemoveChar(dm.cds_EmpresaIE_RG.AsString);
      UF               := dm.cds_EmpresaUF.AsString;
      COD_MUN          := StrToInt(validaCodMunicipio(dm.cds_EmpresaCD_IBGE.AsString,
                            dm.cds_EmpresaRAZAO.AsString));
      SUFRAMA          := '';
      IND_PERFIL       := pfPerfilA;
      if (dm.cds_EmpresaINDICADORATIVIDADE.AsInteger = 0) then
        IND_ATIV := TAcbrAtividade(0)
      else
        IND_ATIV := TAcbrAtividade(1);

      with Registro0001New do
      begin
        IND_MOV := imComDados;

        // FILHO - Dados Complementar da Empresa.
        with Registro0005New do
        begin
          FANTASIA := dm.cds_EmpresaEMPRESA.AsString;
          CEP      := util.RemoveChar(dm.cds_EmpresaCEP.AsString);
          ENDERECO := dm.cds_EmpresaENDERECO.AsString;
          NUM      := dm.cds_EmpresaNUMERO.AsString;
          COMPL    := dm.cds_EmpresaLOGRADOURO.AsString;
          BAIRRO   := dm.cds_EmpresaBAIRRO.AsString;
          FONE     := util.RemoveChar(dm.cds_EmpresaDDD.AsString) + util.RemoveChar(dm.cds_EmpresaFONE.AsString);
          FAX      := util.RemoveChar(dm.cds_EmpresaDDD.AsString) + util.RemoveChar(dm.cds_EmpresaFAX.AsString);
          EMAIL    := dm.cds_EmpresaE_MAIL.AsString;
        end;


         // FILHO - Dados Contador
         with Registro0100New do
         begin
           if (dm.cds_EmpresaCONTADOR.AsString <> '') then
           begin
            NOME       := dm.cds_EmpresaCONTADOR.AsString;
            CPF        := util.RemoveChar(dm.cds_EmpresaCONTADOR_CPF.AsString);
            CRC        := util.RemoveChar(dm.cds_EmpresaCONTADOR_CRC.AsString);
            CNPJ       := util.RemoveChar(dm.cds_EmpresaCONTADOR_CNPJ.AsString);
            CEP        := util.RemoveChar(dm.cds_EmpresaCONTADOR_CEP.AsString);
            ENDERECO   := dm.cds_EmpresaCONTADOR_END.AsString;
            NUM        := util.RemoveChar(dm.cds_EmpresaCONTADOR_NUMEND.AsString);
            COMPL      := dm.cds_EmpresaCONTADOR_COMPL.AsString;
            BAIRRO     := dm.cds_EmpresaCONTADOR_BAIRRO.AsString;
            FONE       := util.RemoveChar(dm.cds_EmpresaCONTADOR_FONE.AsString);
            FAX        := util.RemoveChar(dm.cds_EmpresaCONTADOR_FAX.AsString);
            EMAIL      := dm.cds_EmpresaCONTADOR_EMAIL.AsString;
            COD_MUN    := StrToInt(validaCodMunicipio(dm.cds_EmpresaCONTADOR_COD_MUN.AsString, 'Contador: ' + dm.cds_EmpresaCONTADOR.AsString));
           end;
         end;

         int0150 := 1;

         if (cdsEmpS.Active) then
            cdsEmpS.Close;
         cdsEmpS.Params[0].AsDateTime := data_ini.Date;
         cdsEmpS.Params[1].AsDateTime := data_fim.Date;
         cdsEmpS.Params[2].AsInteger := codMovMinV;
         cdsEmpS.Params[3].AsInteger := codMovMaxV;
         cdsEmpS.Open;

         if (cdsEmpE.Active) then
           cdsEmpE.Close;
         cdsEmpE.Params[0].AsDateTime := data_ini.Date;
         cdsEmpE.Params[1].AsDateTime := data_fim.Date;
         cdsEmpE.Params[2].AsInteger := codMovMin;
         cdsEmpE.Params[3].AsInteger := codMovMax;
         cdsEmpE.Open;

         if (not cdsEmpE.IsEmpty) then
         begin
           while not cdsEmpE.Eof do
           begin
             //0150 - Tabela de Cadastro do Participante
             with Registro0150New do
             begin
               COD_PART := FormatFloat('100000', cdsEmpECODFORNECEDOR.AsInteger);
               NOME     := trim(cdsEmpERAZAOSOCIAL.AsString);
               COD_PAIS := '0';
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
               ENDERECO := Trim(cdsEmpELOGRADOURO.AsString);
               NUM      := cdsEmpENUMERO.AsString;
               COMPL    := cdsEmpECOMPLEMENTO.AsString;
               BAIRRO   := cdsEmpEBAIRRO.AsString;
             end;
             cdsEmpE.Next;
           end;
         end; // Fim 150 - Fornecedor

         // NO SPED ICMS NAO PRECISO DECLARAR O CLIENTE
         if (not cdsEmpS.IsEmpty) then  // Clientes
         begin
           while not cdsEmpS.Eof do
           begin
             //0150 - Tabela de Cadastro do Participante
             with Registro0150New do
             begin
               COD_PART := FormatFloat('200000', cdsEmpSCODCLIENTE.AsInteger);
               NOME     := trim(cdsEmpSRAZAOSOCIAL.AsString + IntToStr(int0150));
               COD_PAIS := '0';
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
               ENDERECO := Trim(cdsEmpSLOGRADOURO.AsString);
               NUM      := cdsEmpSNUMERO.AsString;
               COMPL    := cdsEmpSCOMPLEMENTO.AsString;
               BAIRRO   := cdsEmpSBAIRRO.AsString;
             end;
             cdsEmpS.Next;
           end;
         end; //Fim 150 - Cliente


         if (sdsUnimed.Active) then
           sdsUnimed.Close;

         // UNIDADE COMPRA
         sdsUnimed.SQL.Clear;
         {
         sdsUnimed.SQL.Add('SELECT DISTINCT UN.CODUN, UN.DESCRICAO  ' +
          '  FROM UNIDADEMEDIDA UN, COMPRA C, MOVIMENTO mov, MOVIMENTODETALHE DET ' +
          ' WHERE UN.CODUN = DET.UN ' +
          '   AND mov.codmovimento = det.codmovimento ' +
          '   AND C.codmovimento = MOV.codmovimento ' +
          '   AND (MOV.CODNATUREZA = 4) ' +
          '   AND C.DATACOMPRA  BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
          '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)));
         }
         sdsUnimed.SQL.Add('SELECT  UN.CODUN, UN.DESCRICAO '+
            ' FROM VIEW_ESTOQUE_SPED(' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
            ') VS, UNIDADEMEDIDA UN ' +
            ' WHERE vs.UNIDADEMEDIDA = UN.CODUN   '+
            '  AND vs.ESTOQUE > 0    ' +
            ' UNION  ' +
            ' SELECT UN.CODUN, UN.DESCRICAO  FROM COMPRA C, MOVIMENTODETALHE MDC, ' +
            ' UNIDADEMEDIDA UN ' +
            ' WHERE MDC.CODMOVIMENTO = c.CODMOVIMENTO  ' +
            '  AND MDC.UN = UN.CODUN ' +
            '  AND ((C.MODELO = ' + QuotedStr('55') + ') OR (C.MODELO = ' + QuotedStr('1') + '))' +
            '   AND C.DATACOMPRA  BETWEEN ' +
               QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
            '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)));
         if (chkInventario.Checked) then
         begin
           sdsUnimed.SQL.Add(' UNION ' +
                 ' SELECT p.UNIDADEMEDIDA, UN.DESCRICAO  FROM produtos p,  ESTOQUEMES EV  ' +
                 ' , UNIDADEMEDIDA UN ' +
                 ' where  EV.CODPRODUTO  = p.CODPRODUTO  ' +
                 ' AND  p.UNIDADEMEDIDA =  UN.CODUN ' +
                 ' AND ((p.usa is null) or (p.usa = ' + QuotedStr('S') + ')) ' +
                 ' AND ((p.TIPO is null) or (p.TIPO <> ' + QuotedStr('SERV') + ')) '  +
                 ' AND EV.MESANO = ' + QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date)) +
                 ' AND EV.CENTROCUSTO = 51  AND EV.SALDOESTOQUE > 0');
         end;

         sdsUnimed.Open;

         while (not sdsUnimed.Eof) do
         begin
           // 0190 - Identifica��o das Unidades de Medida
           with Registro0190New do
           begin
             UNID  := Trim(sdsUnimed.Fields[0].AsString);
             //if (Trim(sdsUnimed.Fields[0].AsString) = 'P�') then
             //    UNID := 'PC';
             DESCR := Trim(sdsUnimed.Fields[1].AsString);
           end;
           sdsUnimed.Next;
         end;


         { NO SPED ICMS NAO PRECISO DECLARAR ITENS DE VENDA
         // UNIDADE VENDA
         if (sdsUnimed.Active) then
           sdsUnimed.Close;

         sdsUnimed.SQL.Clear;
         sdsUnimed.SQL.Add('SELECT DISTINCT UN.CODUN, UN.DESCRICAO ' +
           '  FROM UNIDADEMEDIDA UN, VENDA V, MOVIMENTO mov, MOVIMENTODETALHE DET, SERIES ss ' +
           ' WHERE UN.CODUN = DET.UN ' +
           '   AND mov.codmovimento = det.codmovimento ' +
           '   AND V.codmovimento = MOV.codmovimento ' +
           '   AND V.SERIE = ss.SERIE ' +
           '   AND ss.MODELO <> ' + QuotedStr('55') +
           '   AND (MOV.CODNATUREZA IN (12, 15)) ' +
           '   AND V.DATAVENDA      BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
           '   AND NOT EXISTS (SELECT C.CODCOMPRA FROM COMPRA C, MOVIMENTO M, MOVIMENTODETALHE MD ' +
           ' WHERE C.CODMOVIMENTO = M.CODMOVIMENTO ' +
           '   AND MD.CODMOVIMENTO = c.CODMOVIMENTO ' +
           '   AND md.UN = DET.UN ' +
           '   AND m.CODNATUREZA = 4 ' +
           '   AND c.DATACOMPRA  BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date))+ ')');

         sdsUnimed.Open;

         while (not sdsUnimed.Eof) do
         begin
           // 0190 - Identifica��o das Unidades de Medida
           with Registro0190New do
           begin
             UNID  := Trim(sdsUnimed.Fields[0].AsString);
             DESCR := Trim(sdsUnimed.Fields[1].AsString);
           end;
           sdsUnimed.Next;
         end;
         }
         {
         // UNIDADE INVENTARIO  / Bloco K
         if (sdsUnimed.Active) then
           sdsUnimed.Close;

         sdsUnimed.SQL.Clear;
         sdsUnimed.SQL.Add('SELECT DISTINCT UN.CODUN, UN.DESCRICAO ' +
           '  FROM ESTOQUEMES EM, PRODUTOS P, UNIDADEMEDIDA UN ' +
           ' WHERE EM.CODPRODUTO = p.CODPRODUTO ' +
           '   AND P.UNIDADEMEDIDA = UN.CODUN ' +
           '   AND em.MESANO <= ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
           '   AND EM.SALDOESTOQUE > 0 ' +
           '   AND NOT EXISTS (SELECT MDC.UN FROM COMPRA C, MOVIMENTODETALHE MDC ' +
           ' WHERE MDC.CODMOVIMENTO = c.CODMOVIMENTO ' +
           '   AND MDC.UN           = UN.CODUN ' +
           '   AND C.DATACOMPRA  BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
           ' ) ');
           }
           // se nao preciso declarar itens venda .. 19/02/19
           {
           '   AND NOT EXISTS (SELECT MDV.UN FROM VENDA V, SERIES ss, MOVIMENTO M, MOVIMENTODETALHE MDV ' +
           ' WHERE V.SERIE = ss.SERIE ' +
           '   AND V.CODMOVIMENTO = M.CODMOVIMENTO ' +
           '   AND MDV.CODMOVIMENTO = V.CODMOVIMENTO ' +
           '   AND ss.MODELO <> ' + QuotedStr('55') +
           '   AND M.CODNATUREZA IN (12, 15) ' +
           '   AND MDV.UN           = UN.CODUN ' +
           '   AND V.DATAVENDA      BETWEEN ' +  QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) + ')');}
        {
         sdsUnimed.Open;

         while (not sdsUnimed.Eof) do
         begin
           // 0190 - Identifica��o das Unidades de Medida
           with Registro0190New do
           begin
             UNID  := Trim(sdsUnimed.Fields[0].AsString);
             if (Trim(sdsUnimed.Fields[0].AsString) = 'P�') then
                 UNID := 'PC';
             DESCR := Trim(sdsUnimed.Fields[1].AsString);
           end;
           sdsUnimed.Next;
         end;


         }
         // ITENS  #################
         if (cdsProduto.Active) then
           cdsProduto.Close;


           if (cdsProduto.Active) then
             cdsProduto.Close;
           {
           cdsProduto.CommandText := 'SELECT DISTINCT DET.CODPRODUTO, PRO.CODPRO, ' +
           ' PRO.NCM, PRO.PRODUTO, pro.UNIDADEMEDIDA as UN  , UDF_LEFT(PRO.CLASSIFIC_FISCAL, 2) CLASS_FISCAL ' +
           ' , pro.UNIDADEMEDIDA , det.UN_CONV  ' +
           ' FROM MOVIMENTO MOV, MOVIMENTODETALHE DET, PRODUTOS PRO ' +
           ' WHERE MOV.CODMOVIMENTO = DET.CODMOVIMENTO ' +
           ' AND PRO.CODPRODUTO     = DET.CODPRODUTO ' +
           ' AND (MOV.CODNATUREZA IN (4, 12, 15 )) ' +
           ' AND ((EXISTS (SELECT C.CODMOVIMENTO FROM COMPRA C ' +
           ' WHERE C.CODMOVIMENTO = MOV.CODMOVIMENTO  ' +
           '   AND (COALESCE(C.MODELO, ' + QuotedStr('') + ') <> ' + QuotedStr('') + ')' +
           '   AND C.DATACOMPRA BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
           ' )) ' +
           ')';}

           // coloquei estoqueminimo no UN_CONV somente pra trazer algo 19/02/2019
           // nao preciso de itens de vendas  so compras e estoque

           // tirei isto do Where abaixo, a DNZ
           // tem este tipo de item em compras, que nao
           // quer controlar estoque PRO.TIPO <> ' + QuotedStr('SERV')

           cdsProduto.CommandText := 'SELECT PRO.CODPRODUTO, PRO.CODPRO, ' +
             ' PRO.NCM, PRO.PRODUTO, pro.UNIDADEMEDIDA as UN  , ' +
             ' UDF_LEFT(PRO.CLASSIFIC_FISCAL, 2) CLASS_FISCAL ' +
             ' , pro.UNIDADEMEDIDA , pro.ESTOQUEMINIMO as UN_CONV  ' +
             ' FROM PRODUTOS PRO ' +
             ' WHERE PRO.CODPRODUTO IN ('+
             ' select md.codproduto from movimento m ' +
             ' inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO ' +
             ' inner join COMPRA c on c.CODMOVIMENTO = m.CODMOVIMENTO ' +
             ' where m.CODNATUREZA in (4,12,15,20) and ' +
             ' (c.DATACOMPRA between ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
             '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) + ')' +
             '  AND ((C.MODELO = ' + QuotedStr('55') + ') OR (C.MODELO = ' + QuotedStr('1') + '))' +
             ' UNION ' +
             ' select CODPRODUTO from VIEW_ESTOQUE_SPED(' + QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date)) +
             ') where  estoque > 0 ';
           if (chkInventario.Checked) then
           begin
               cdsProduto.CommandText := cdsProduto.CommandText + ' UNION ' +
                 ' SELECT p.CODPRODUTO FROM produtos p,  ESTOQUEMES EV  ' +
                 ' where  EV.CODPRODUTO  = p.CODPRODUTO  ' +
                 ' AND ((p.usa is null) or (p.usa = ' + QuotedStr('S') + ')) ' +
                 ' AND ((p.TIPO is null) or (p.TIPO <> ' + QuotedStr('SERV') + ')) '  +
                 ' AND EV.MESANO >= ' + QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date)) +
                 ' AND EV.CENTROCUSTO = 51 AND EV.SALDOESTOQUE > 0';
           end;
           cdsProduto.CommandText := cdsProduto.CommandText + ' )';

           cdsProduto.Open;

           prod_novo := '';
           While (not cdsProduto.Eof) do
           begin
             // nao preciso o union acima resolve 19/02/19
             //if (prod_novo <> IntToStr(cdsProdutoCODPRODUTO.AsInteger)) then
             //begin
             //   prod_novo := IntToStr(cdsProdutoCODPRODUTO.AsInteger);
             // 0200 - Tabela de Identifica��o do Item (Produtos e Servi�os)
             with Registro0200New do
             begin
               if (dm.mascaraProduto <> '') then
                  COD_ITEM := FormatMaskText(dm.mascaraProduto+';0;_', cdsProdutoCODPRO.AsString)
               else
                  COD_ITEM     := FormatFloat('000000',cdsProdutoCODPRODUTO.AsInteger); // Nao usa mascara fica como era

               DESCR_ITEM   := Trim(cdsProdutOPRODUTO.AsString);
               COD_BARRA    := '';
               UNID_INV     := Trim(cdsProdutoUN.AsString);

               //if (Trim(cdsProdutoUN.AsString) = 'P�') then
               //   UNID_INV     := 'PC';

                {tiMercadoriaRevenda,    // 00 � Mercadoria para Revenda
                 tiMateriaPrima,         // 01 � Mat�ria-Prima;
                 tiEmbalagem,            // 02 � Embalagem;
                 tiProdutoProcesso,      // 03 � Produto em Processo;
                 tiProdutoAcabado,       // 04 � Produto Acabado;
                 tiSubproduto,           // 05 � Subproduto;
                 tiProdutoIntermediario, // 06 � Produto Intermedi�rio;
                 tiMaterialConsumo,      // 07 � Material de Uso e Consumo;
                 tiAtivoImobilizado,     // 08 � Ativo Imobilizado;
                 tiServicos,             // 09 � Servi�os;
                 tiOutrosInsumos,        // 10 � Outros Insumos;
                 tiOutras                // 99 � Outras}
               TIPO_ITEM := tiOutras;
               if (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '00') then
                  TIPO_ITEM    := tiMercadoriaRevenda;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '01')) then
                  TIPO_ITEM    := tiMateriaPrima;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '02')) then
                  TIPO_ITEM    := tiEmbalagem;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '03')) then
                  TIPO_ITEM    := tiProdutoProcesso;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '04')) then
                  TIPO_ITEM    := tiProdutoAcabado;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '05')) then
                  TIPO_ITEM    := tiSubproduto;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '06')) then
                  TIPO_ITEM    := tiProdutoIntermediario;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '07')) then
                  TIPO_ITEM    := tiMaterialConsumo;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '08')) then
                  TIPO_ITEM    := tiAtivoImobilizado;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '09')) then
                  TIPO_ITEM    := tiServicos;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '10')) then
                  TIPO_ITEM    := tiOutrosInsumos;

               if ((TIPO_ITEM = tiOutras) and (cdsProduto.FieldByName('CLASS_FISCAL').AsString = '99')) then
                  TIPO_ITEM    := tiOutras;

               COD_NCM      := Trim(cdsProdutoNCM.AsString);
               COD_GEN      := '';
               ALIQ_ICMS    := 18;
               //end; // teste pra ver se mudou o produto
             end;
             cdsProduto.Next;
           end;

           // o union acima pega todos produtos  19/02/19 nao preciso abaixo
           {
           if (cdsProduto.Active) then
             cdsProduto.Close;

           cdsProduto.CommandText := 'SELECT DISTINCT DET.CODPRODUTO, PRO.CODPRO, ' +
           ' PRO.NCM, PRO.PRODUTO, DET.UN  , UDF_LEFT(PRO.CLASSIFIC_FISCAL, 2) CLASS_FISCAL ' +
           ' , pro.UNIDADEMEDIDA , det.UN_CONV  ' +
           ' FROM MOVIMENTO MOV, MOVIMENTODETALHE DET, PRODUTOS PRO ' +
           ' WHERE MOV.CODMOVIMENTO = DET.CODMOVIMENTO ' +
           ' AND PRO.CODPRODUTO     = DET.CODPRODUTO ' +
           ' AND (MOV.CODNATUREZA IN (4, 12, 15 )) ' +
           ' AND ((EXISTS (SELECT C.CODMOVIMENTO FROM COMPRA C ' +
           ' WHERE C.CODMOVIMENTO = MOV.CODMOVIMENTO  ' +
           '   AND (COALESCE(C.MODELO, ' + QuotedStr('') + ') <> ' + QuotedStr('') + ')' +
           '   AND C.DATACOMPRA BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
           ' )) ' +
           ') ORDER BY DET.UN';
           cdsProduto.Open;
           un_nova := '';
           While (not cdsProduto.Eof) do
           begin
             if (un_nova <> Trim(cdsProdutoUN.AsString)) then
             begin
               // 0220 - Unidade Medida Diferente no Reg 200
               if (Trim(cdsProdutoUN.AsString) <> Trim(cdsProdutoUNIDADEMEDIDA.AsString)) then
               begin
                 with Registro0220New do
                 begin
                   UNID_CONV := Trim(cdsProdutoUN.AsString);
                   FAT_CONV := cdsProdutoUN_CONV.AsFloat;
                 end;
               end;
             end;
             un_nova := Trim(cdsProdutoUN.AsString);
             cdsProduto.Next;
           end;


           if (cdsProduto.Active) then
             cdsProduto.Close;

           // INVENTARIO
           cdsProduto.CommandText := 'SELECT DISTINCT P.CODPRODUTO, P.CODPRO, ' +
             ' P.NCM, P.PRODUTO, P.UNIDADEMEDIDA UN , UDF_LEFT(P.CLASSIFIC_FISCAL, 2) CLASS_FISCAL ' +
             ' , p.UNIDADEMEDIDA , EM.QTDEDEVCOMPRA as UN_CONV  ' +
             '  FROM ESTOQUEMES EM, PRODUTOS P       ' +
             ' WHERE EM.CODPRODUTO = P.CODPRODUTO    ' +
             '   AND ( not exists (SELECT DISTINCT DETC.CODPRODUTO ' +
             '  FROM COMPRA C, MOVIMENTO MOVC, MOVIMENTODETALHE DETC ' +
             ' WHERE C.CODMOVIMENTO = movC.CODMOVIMENTO   ' +
             '   AND MOVC.CODMOVIMENTO = DETC.CODMOVIMENTO ' +
             '   AND movC.CODNATUREZA = 4 ' +
             '   AND em.CODPRODUTO = detC.CODPRODUTO ' +
             '   AND c.DATACOMPRA between ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
             '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
             ' )) ' +
             '   AND ( not exists (SELECT DISTINCT DETV.CODPRODUTO ' +
             '  FROM VENDA V, SERIES ss, MOVIMENTO MOVV, MOVIMENTODETALHE DETV ' +
             ' WHERE V.SERIE = ss.SERIE ' +
             '   AND V.CODMOVIMENTO = movV.CODMOVIMENTO ' +
             '   AND MOVV.CODMOVIMENTO = DETV.CODMOVIMENTO ' +
             '   AND movV.CODNATUREZA in (12,15) ' +
             '   AND ss.MODELO <> ' + QuotedStr('55') +
             '   AND em.CODPRODUTO = detV.CODPRODUTO ' +
             '   AND v.DATAVENDA between ' +  QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
             '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
             ' )) ' +
             ' and em.SALDOESTOQUE > 0 ' +
             ' and em.MESANO = ' +  QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date));
           cdsProduto.Open;
           While (not cdsProduto.Eof) do
           begin
             // 0200 - Tabela de Identifica��o do Item (Produtos e Servi�os)
             with Registro0200New do
             begin
               if (dm.mascaraProduto <> '') then
                  COD_ITEM := FormatMaskText(dm.mascaraProduto+';0;_', cdsProdutoCODPRO.AsString)
               else
                  COD_ITEM     := FormatFloat('000000',cdsProdutoCODPRODUTO.AsInteger); // Nao usa mascara fica como era

               //COD_ITEM     := FormatFloat('000000',cdsProdutoCODPRODUTO.AsInteger);
               DESCR_ITEM   := Trim(cdsProdutOPRODUTO.AsString);
               COD_BARRA    := '';
               UNID_INV     := Trim(cdsProdutoUN.AsString);
               TIPO_ITEM    := tiMercadoriaRevenda;
               COD_NCM      := Trim(cdsProdutoNCM.AsString);
               COD_GEN      := '';
               ALIQ_ICMS    := 0;
             end;
             cdsProduto.Next;
           end;
           }


         if (temVenda = 'S') then
         begin
           with Registro0400New do
           begin
             COD_NAT   := '03';
             DESCR_NAT := 'Venda de Mercadorias';
           end;
         end;

         if (temCompra = 'S') then
         begin
           with Registro0400New do
           begin
             COD_NAT   := '04';
             DESCR_NAT := 'Compra de Mercadorias';
           end;
         end;

         // FILHO - REGISTRO 0500: PLANO DE CONTAS CONT�BEIS  *****  PARA IMOBILIZADO *****
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
  end; // Fim do Bloco 0

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_0;
    LoadToMemo;
  end;

end;

procedure TfNfeIcms.LoadToMemo;
begin
   memoTXT.Lines.Clear;
   if FileExists( ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo ) then
      memoTXT.Lines.LoadFromFile(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo);
end;

procedure TfNfeIcms.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  data_ini.Text := periodo.PeriodoIni;
  data_fim.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfNfeIcms.blocoC;
var
INotas: Integer;
IItens: Integer;
NNotas: Integer;
BNotas: Integer;
parametroVer: Integer;
codParticip, progresso: Integer;
serie_NF_sai: String;
ch_sat: string;
tam_ch_sat: integer;
tem_ajuste: string;
td1: Double;
td2: Double;
td3: Double;
const serie_valida = ['1','2','3','4','5','6','7','8','9'];
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco C.
  NNotas := StrToInt64Def(edNotas.Text,1);
  BNotas := StrToInt64Def(edBufNotas.Text,1);

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

  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      // INICIO BLOCO COMPRAS  ######################
      if (not cdsCompra.IsEmpty) then
      begin
        IND_MOV := imComDados;
        While not cdsCompra.Eof do
        begin
          progressBar1.Step := progresso;
          progresso := progresso + 1;
          //Inserir Notas...
          //for INotas := 1 to NNotas do
          //begin
          //C100 - Documento - Nota Fiscal (c�digo 01), Nota Fiscal Avulsa (c�digo 1B), Nota
          // Fiscal de Produtor (c�digo 04) e NF-e (c�digo 55)
          if ((cdsCompraMODELO.AsString = '55') or (cdsCompraMODELO.AsString = '1')) then
          begin
          with RegistroC100New do
          begin
            IND_OPER      := tpEntradaAquisicao; // tpEntradaAquisicao, // 0 - Entrada
            IND_EMIT      := edTerceiros;   // 0 - Emiss�o pr�pria // 1 - Terceiro

            IND_FRT := tfNenhum;
            if (cdsCompraOPERACAO.AsString = '0') then
            begin
              IND_FRT := tfPorContaEmitente;      // 0 - Por conta do emitente
            end
            else if (cdsCompraOPERACAO.AsString = '1') then
            begin
              IND_FRT := tfPorContaDestinatario;  // 1 - Por conta do destinat�rio
            end
            else  if (cdsCompraOPERACAO.AsString = '2') then
            begin
              IND_FRT := tfPorContaTerceiros;     // 2 - Por conta de terceiros
            end
            else  if (cdsCompraOPERACAO.AsString = '3') then
            begin
              IND_FRT := tfProprioPorContaRemetente;
            end
            else  if (cdsCompraOPERACAO.AsString = '4') then
            begin
              IND_FRT := tfProprioPorContaDestinatario;
            end
            else if (cdsCompraOPERACAO.AsString = '9') then
            begin
              IND_FRT := tfSemCobrancaFrete;      // 9 - Sem cobran�a de frete
            end;

            COD_PART      := FormatFloat('100000', cdsCompraCODFORNECEDOR.asInteger);
            if (Length(cdsCompraMODELO.AsString) = 1) then
              COD_MOD       := trim('0' + cdsCompraMODELO.AsString)
            else
              COD_MOD       := '55'; //cdsCompraMODELO.AsString; //'55'; //COD_MOD	C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 (C�digo 02 � Nota Fiscal de Venda a Consumidor)	C	002*
            if (cdsCompraSERIE.AsString = '1A') then
              COD_MOD       := '01';
            COD_SIT       := sdRegular;
            if (Length(cdsCompraSERIE.AsString) = 1) then
              SER           := trim('00' + Trim(cdsCompraSERIE.AsString)) //04	SER	S�rie do documento fiscal	C	003	-
            else if (Length(cdsCompraSERIE.AsString) = 2) then
              SER           := trim('0' + Trim(cdsCompraSERIE.AsString)) //04	SER	S�rie do documento fiscal	C	003	-
            else
              SER           := Trim(cdsCompraSERIE.AsString); //04	SER	S�rie do documento fiscal	C	003	-
            NUM_DOC       := IntToStr(cdsCompraNOTAFISCAL.AsInteger);
            CHV_NFE       := Trim(copy(cdsCompraCHAVENF.AsString,0,44));
            DT_DOC        := cdsCompraDATACOMPRA.AsDateTime;
            if (cdsCompraDATA_ENTREGA.AsDateTime = 0) then
            begin
              DT_E_S := cdsCompraDATACOMPRA.AsDateTime;
            end
            else begin
              DT_E_S := cdsCompraDATA_ENTREGA.AsDateTime;
            end;
            VL_DOC        := cdsCompraVALOR.AsFloat-cdsCompraDESCONTO.AsFloat;
            VL_DESC       := cdsCompraDESCONTO.AsFloat;
            IND_PGTO      := tpPrazo;
            VL_ABAT_NT    := 0;
            VL_MERC       := cdsCompraVALOR.AsFloat;
            //IND_FRT       := tfSemCobrancaFrete;
            VL_FRT        := cdsCompraVALOR_FRETE.AsFloat;
            VL_SEG        := cdsCompraVALOR_SEGURO.AsFloat;
            VL_OUT_DA     := 0;
            VL_BC_ICMS    := cdsCompraBASE_ICMS.AsFloat;
            VL_ICMS       := cdsCompraVALOR_ICMS.AsFloat;
            VL_BC_ICMS_ST := cdsCompraICMS_BASE_ST.AsFloat;
            VL_ICMS_ST    := cdsCompraICMS_ST.AsFloat;
            VL_IPI        := cdsCompraIPI.AsFloat;
            if (dm.cds_empresaCRT.AsInteger = 1) then
              VL_IPI := 0;
            VL_PIS        := cdsCompraPIS.AsFloat;
            VL_COFINS     := cdsCompraCOFINS.AsFloat;
            VL_PIS_ST     := 0;
            VL_COFINS_ST  := 0;

            if (cdsCompraDet.Active) then
              cdsCompraDet.Close;
            cdsCompraDet.Params[0].AsInteger := cdsCompraCODMOVIMENTO.AsInteger;
            cdsCompraDet.Open;
            // INICIO BLOCO PRODUTOS COMPRAS  ######################
            IItens := 1;
            While not cdsCompraDet.Eof do
            begin
              //c170 - Complemento de Documento � Itens do Documento (c�digos 01, 1B, 04 e 55)
              with RegistroC170New do   //Inicio Adicionar os Itens:
              begin
                NUM_ITEM         := FormatFloat('000', IItens);
                //COD_ITEM         := FormatFloat('000000', cdsCompraDetCODPRODUTO.AsInteger);
                if (dm.mascaraProduto <> '') then
                  COD_ITEM := FormatMaskText(dm.mascaraProduto+';0;_', cdsCompraDetCODPRO.AsString)
                else
                  COD_ITEM     := FormatFloat('000000', cdsCompraDetCODPRODUTO.AsInteger); // Nao usa mascara fica como era

                DESCR_COMPL      := cdsCompraDetDESCPRODUTO.AsString;
                QTD              := cdsCompraDetQUANTIDADE.AsFloat;

                UNID  := Trim(cdsCompraDetUN.AsString);
                if (Trim(cdsCompraDetUN.AsString) = 'P�') then
                   UNID := 'PC';
                //UNID             := Trim(cdsCompraDetUN.AsString);

                VL_ITEM          := SimpleRoundTo((cdsCompraDetPRECO.AsFloat*cdsCompraDetQUANTIDADE.AsFloat),(-2));
                if ((cdsCompraDetPRECO.AsFloat-cdsCompraDetVLR_BASE.AsFloat) > 0) then
                  VL_DESC          := SimpleRoundTo(((cdsCompraDetPRECO.AsFloat-cdsCompraDetVLR_BASE.AsFloat)*cdsCompraDetQUANTIDADE.AsFloat),(-2));
                IND_MOV          := mfSim;
                CST_ICMS         := cdsCompraDetCST.AsString;
                CFOP             := cdsCompraDetCFOP.AsString;
                COD_NAT          := '04';
                VL_BC_ICMS       := cdsCompraDetVLR_BASEICMS.AsFloat;
                ALIQ_ICMS        := cdsCompraDetICMS.AsFloat;
                VL_ICMS          := cdsCompraDetVALOR_ICMS_1.AsFloat;
                VL_BC_ICMS_ST    := cdsCompraDetICMS_SUBSTD.AsFloat;
                VL_ICMS_ST       := 0;
                ALIQ_ST          := 0;
                if (cdsCompraDetICMS_SUBSTD.AsFloat > 0) then
                begin
                  ALIQ_ST        := SimpleRoundTo((cdsCompraDetICMS_SUBST.AsFloat/cdsCompraDetICMS_SUBSTD.AsFloat),(-2));
                  VL_ICMS_ST     := cdsCompraDetICMS_SUBST.AsFloat;
                end;
                IND_APUR         := iaMensal;
                CST_IPI          := cdsCompraDetCSTIPI.AsString;
                COD_ENQ          := '';
                VL_BC_IPI        := cdsCompraDetVLR_BASEICMS.AsFloat;
                ALIQ_IPI         := 0;
                if (cdsCompraDetVLR_BASEICMS.AsFloat > 0) then
                  ALIQ_IPI       := SimpleRoundTo(((cdsCompraDetVIPI.AsFloat/cdsCompraDetVLR_BASEICMS.AsFloat)*100),(-2));
                VL_IPI           := cdsCompraDetVIPI.AsFloat;
                if (dm.cds_empresaCRT.AsInteger = 1) then
                begin
                  VL_IPI := 0;
                  ALIQ_IPI := 0;
                  VL_BC_IPI := 0;
                end;
                CST_PIS          := cdsCompraDetCSTPIS.AsString; //  stpisOutrasOperacoesSaida;  // #########
                VL_PIS           := cdsCompraDetVALOR_PIS.AsFloat;
                VL_BC_PIS        := cdsCompraDetVLR_BASEICMS.AsFloat;
                ALIQ_PIS_PERC    := 0;
                if ( VL_BC_PIS > 0) then
                  ALIQ_PIS_PERC    := SimpleRoundTo(((VL_PIS/VL_BC_PIS)*100),(-2));
                QUANT_BC_PIS     := 0;
                ALIQ_PIS_R       := 0;

                CST_COFINS       := cdsCompraDetCSTCOFINS.AsString;
                VL_BC_COFINS     := cdsCompraDetVLR_BASEICMS.AsFloat;
                ALIQ_COFINS_PERC := 0;
                VL_COFINS        := cdsCompraDetVALOR_COFINS.AsFloat;
                if (VL_BC_COFINS > 0) then
                  ALIQ_COFINS_PERC := SimpleRoundTo(((VL_COFINS/VL_BC_COFINS)*100),(-2));
                QUANT_BC_COFINS  := 0;
                ALIQ_COFINS_R    := 0;
                VL_COFINS        := 0;
                COD_CTA          := '';
                VL_ABAT_NT       := 0;
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
            // REGISTRO C190: REGISTRO ANAL�TICO DO DOCUMENTO (C�DIGO 01, 1B, 04 E 55).
            if (cdsC190.Active) then
              cdsC190.Close;
            cdsC190.Params[0].AsInteger := cdsCompraCODMOVIMENTO.AsInteger;
            //cdsC190.Params[1].AsInteger := codMovMax;
            //cdsC190.Params[2].AsDate    := data_ini.Date;
            //cdsC190.Params[3].AsDate    := data_fim.Date;
            cdsC190.Open;
            while not cdsC190.eof do
            begin
              with RegistroC190New do
              begin
                CST_ICMS      := cdsC190CST.AsString;
                CFOP          := cdsC190CFOP.AsString;
                ALIQ_ICMS     := cdsC190ICMS.AsFloat;
                VL_OPR        := cdsC190VLR_OPERACAO.AsFloat;
                VL_BC_ICMS    := cdsC190VLR_BASE_ICMS.AsFloat;
                VL_ICMS       := cdsC190VLR_ICMS.AsFloat;
                VL_BC_ICMS_ST := cdsC190VLR_BASE_ICMS_ST.AsFloat;
                VL_ICMS_ST    := cdsC190ICMS_ST.AsFloat;
                VL_RED_BC     := 0;
                VL_IPI        := cdsC190VLR_IPI.AsFloat;
                if (dm.cds_empresaCRT.AsInteger = 1) then
                begin
                  VL_IPI := 0;
                end;
                COD_OBS       := '';
              end;
              if ((cdsCompraMODELO.AsString = '55')) then
              begin
              with RegistroC191New do
              begin
                VL_FCP_OP := 0;
                if (AnsiIndexText(Copy(cdsC190CST.AsString,2,2),['00','10','20','51','70']) > -1) then
                begin
                  VL_FCP_OP := 0;// TODO colocar aqui total FCP PRoprio
                end;
                VL_FCP_ST := 0;
                if ((AnsiIndexText(Copy(cdsC190CST.AsString,2,2),['10','30','70','90']) > -1) OR
                  (AnsiIndexText(cdsC190CST.AsString,['201','202','203','900']) > -1)) then
                begin
                  VL_FCP_ST := 0; // TODO colocar total
                end;
                VL_FCP_RET := 0;
                if ((Copy(cdsC190CST.AsString,2,2) = '60') OR
                  (cdsC190CST.AsString = '500')) then
                begin
                  VL_FCP_RET := 0; // TODO colocar TOTAL
                end;
              end;
              end;
              cdsC190.next;
            end;

            codParticip := cdsCompraCODFORNECEDOR.AsInteger;
          end;
          end;
          cdsCompra.Next;
        end;   // FIM DO WHILE DE COMPRAS
      end;
      // FIM BLOCO COMPRAS ######################


      abrirTabelasVenda;
      // BLOCO VENDAS ###########################

      if (not cdsNFVenda.IsEmpty) then
      begin
        IND_MOV := imComDados;
        td1 := 0;
        td2 := 0;
        td3 := 0;
        While not cdsNFVenda.Eof do
        begin
          progressBar1.Step := progresso;
          progresso := progresso + 1;

          with RegistroC100New do
          begin
            if (cdsNFVendaNFE_TIPO.AsString = 'tnEntrada') then
            begin
              IND_OPER      := tpEntradaAquisicao; // 0-Entrada
            end
            else begin
              IND_OPER      := tpSaidaPrestacao; // 1-Saida
            end;
            IND_EMIT      := edEmissaoPropria;   // 0 - Emiss�o pr�pria // 1 - Terceiro
            COD_PART      := FormatFloat('200000',cdsNFVendaCODCLIENTE.asInteger);
            if (Length(cdsNFVendaMODELO.AsString) = 1) then
              COD_MOD       := trim('0' + cdsNFVendaMODELO.AsString)
            else
              COD_MOD       := cdsNFVendaMODELO.AsString; //COD_MOD	C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 (C�digo 02 � Nota Fiscal de Venda a Consumidor)	C	002*

            COD_SIT       := tipoDocumentoFiscal(cdsNFVendaNFE_FINNFE.AsString);
            serie_NF_sai  := IntToStr(dm.nfe_serie_receita); // 19/02/19 trim(cdsNFVendaSERIE.AsString);

            if (Length(serie_NF_sai) = 1) then
              SER         := trim('00' + serie_NF_sai) //04	SER	S�rie do documento fiscal	C	003	-
            else if (Length(serie_NF_sai) = 2) then
              SER           := trim('0' + serie_NF_sai) //04	SER	S�rie do documento fiscal	C	003	-
            else
              SER           := serie_NF_sai; //04	SER	S�rie do documento fiscal	C	003	-
            NUM_DOC       := IntToStr(cdsNFVendaNOTAFISCAL.AsInteger);
            if cdsNFVendaNOTAFISCAL.AsInteger = 9518 then
               td1 := 0;
            CHV_NFE       := Trim(copy(cdsNFVendaNOMEXML.AsString,0,44));
            DT_DOC        := cdsNFVendaDTAEMISSAO.AsDateTime;
            DT_E_S        := cdsNFVendaDTASAIDA.AsDateTime;
            VL_DOC        := cdsNFVendaVALOR_TOTAL_NOTA.AsFloat;
            IND_PGTO      := tpPrazo;
            VL_DESC       := cdsNFVendaDESCONTO.AsFloat;
            VL_ABAT_NT    := 0;
            VL_MERC       := cdsNFVendaVALOR_PRODUTO.AsFloat;

            if (cdsNFVendaFRETE.AsString = '0') then
            begin
              IND_FRT := tfPorContaEmitente;     // 0 - Por conta de terceiros
            end
            else if (cdsNFVendaFRETE.AsString = '1') then
            begin
              IND_FRT := tfPorContaDestinatario;      // 1 - Por conta do emitente
            end
            else if (cdsNFVendaFRETE.AsString = '2') then
            begin
              IND_FRT := tfPorContaTerceiros;  // 2 - Por conta do destinat�rio
            end
            else if (cdsNFVendaFRETE.AsString = '3') then
            begin
              IND_FRT := tfProprioPorContaRemetente;
            end
            else if (cdsNFVendaFRETE.AsString = '4') then
            begin
              IND_FRT := tfProprioPorContaDestinatario;
            end
            else if (cdsNFVendaFRETE.AsString = '9') then
            begin
              IND_FRT := tfSemCobrancaFrete;      // 9 - Sem cobran�a de frete
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
            if (dm.cds_empresaCRT.AsInteger = 1) then
            begin
              VL_IPI := 0;
            end;
            VL_PIS        := cdsNFVendaVALOR_PIS.AsFloat;
            VL_COFINS     := cdsNFVendaVALOR_COFINS.AsFloat;
            VL_PIS_ST     := 0;
            VL_COFINS_ST  := 0;
            tem_ajuste := 'N';
            // DIFAL
            if (cdsItensDifal.Active) then
              cdsItensDifal.Close;
            cdsItensDifal.Params[0].AsInteger := cdsNFVendaCODMOVIMENTO.AsInteger;
            cdsItensDifal.Open;
            while not cdsItensDifal.Eof do
            begin
              if ((cdsItensDifalVICMSUFDEST.AsFloat > 0) and (cdsNFVendaNFE_FINNFE.AsString <> 'fnDenegado')) then
              begin
                with RegistroC101New do   //Inicio Adicionar os Itens:
                begin
                  td1 := td1 + cdsItensDifalVFCPUFDEST.AsFloat;
                  td2 := td2 + cdsItensDifalVICMSUFDEST.AsFloat;
                  td3 := td3 + cdsItensDifalVICMSUFREMET.AsFloat;
                  VL_FCP_UF_DEST  := cdsItensDifalVFCPUFDEST.AsFloat;
                  VL_ICMS_UF_DEST := cdsItensDifalVICMSUFDEST.AsFloat;
                  VL_ICMS_UF_REM  := cdsItensDifalVICMSUFREMET.AsFloat;
                end;
              end;
              cdsItensDifal.Next;
            end;

            if (cdsItens.Active) then
              cdsItens.Close;
            cdsItens.Params[0].AsInteger := cdsNFVendaCODMOVIMENTO.AsInteger;
            cdsItens.Open;
            // INICIO BLOCO DET VENDAS  ######################
            IItens := 1;
            { ***************************************************************************
            Para cada registro C100, obrigatoriamente deve ser apresentado, pelo menos,
            um registro C170 e um registro C190, observadas as exce��es abaixo relaciona-
            das:
            Exce��o 2: Notas Fiscais Eletr�nicas - NF-e de emiss�o pr�pria: regra geral,
            devem ser apresentados somente os registros C100 e C190, e, se existirem
            ajustes de documento fiscais determinados por legisla��o estadual (tabela 5.3
            do Ato COTEPE ICMS 09/08)
            *****************************************************************************}
            if ((tem_ajuste = 'S') and (cdsNFVendaNFE_FINNFE.AsString <> 'fnDenegado')) then
            begin
              // Para NF de SAIDA nao precisa registro C170
              While not cdsItens.Eof do
              begin
                //c170 - Complemento de Documento � Itens do Documento (c�digos 01, 1B, 04 e 55)
                with RegistroC170New do   //Inicio Adicionar os Itens:
                begin
                  NUM_ITEM         := FormatFloat('000', IItens);
                  COD_ITEM         := FormatFloat('000000', cdsItensCODPRODUTO.AsInteger);
                  DESCR_COMPL      := cdsItensDESCPRODUTO.AsString;
                  QTD              := cdsItensQUANTIDADE.AsFloat;
                  UNID             := cdsItensUN.AsString;
                  VL_ITEM          := cdsItensPRECO.AsFloat;
                  VL_DESC          := cdsItensVALOR_DESCONTO.AsFloat;
                  IND_MOV          := mfSim;
                  //CST_ICMS
                  CST_ICMS         := cdsItensCST.asString;// sticmsTributadaIntegralmente;
                  CFOP             := cdsItensCFOP.AsString;
                  COD_NAT          := '03';  // Venda
                  VL_BC_ICMS       := cdsItensVLR_BASEICMS.AsFloat;
                  ALIQ_ICMS        := cdsItensICMS.AsFloat;
                  VL_ICMS          := cdsItensVALOR_ICMS.AsFloat;
                  VL_BC_ICMS_ST    := cdsItensICMS_SUBST.AsFloat;
                  ALIQ_ST          := cdsItensICMS_SUBSTD.AsFloat;
                  VL_ICMS_ST       := 0;
                  if (ALIQ_ST > 0) then
                    VL_ICMS_ST     := SimpleRoundTo(((VL_BC_ICMS_ST/ALIQ_ST)*100),(-2));
                  IND_APUR         := iaMensal;
                  CST_IPI          := cdsItensCSTIPI.AsString;
                  COD_ENQ          := cdsItensCST_IPI_CENQ.AsString;
                  VL_BC_IPI        := cdsItensVLR_BASEICMS.AsFloat;
                  ALIQ_IPI         := cdsItensVIPI.AsFloat;
                  if (VL_BC_IPI > 0) then
                    ALIQ_IPI       := SimpleRoundTo(((cdsItensVIPI.AsFloat/VL_BC_IPI)*100),(-2));
                  VL_IPI           := cdsItensVIPI.AsFloat;
                  if (dm.cds_empresaCRT.AsInteger = 1) then
                  begin
                    VL_IPI := 0;
                    ALIQ_IPI := 0;
                    VL_BC_IPI := 0;
                  end;
                  CST_PIS          := cdsItensCSTPIS.AsString; //  stpisOutrasOperacoesSaida;  // #########
                  VL_BC_PIS        := cdsItensVLR_BASEICMS.AsFloat;
                  VL_PIS           := cdsItensVALOR_PIS.AsFloat;
                  ALIQ_PIS_PERC    := 0;
                  if (VL_BC_PIS > 0) then
                    ALIQ_PIS_PERC  := SimpleRoundTo(((VL_PIS/VL_BC_PIS)*100),(-2));
                  QUANT_BC_PIS     := cdsItensQUANTIDADE.AsFloat;
                  ALIQ_PIS_R       := 0;

                  CST_COFINS       := cdsItensCSTCOFINS.AsString;
                  VL_BC_COFINS     := cdsItensVLR_BASEICMS.AsFloat;
                  VL_COFINS        := cdsItensVALOR_COFINS.AsFloat;
                  ALIQ_COFINS_PERC := 0;
                  IF (VL_BC_COFINS > 0) then
                    ALIQ_COFINS_PERC := SimpleRoundTo(((VL_COFINS/VL_BC_COFINS)*100),(-2));
                  QUANT_BC_COFINS  := cdsItensQUANTIDADE.AsFloat;
                  ALIQ_COFINS_R    := 0;
                  COD_CTA          := '';
                end; //Fim dos Itens;
                IItens := IItens + 1;
                cdsItens.Next;
              end;
            end;
            if (cdsNFVendaNFE_FINNFE.AsString <> 'fnDenegado') then
            begin
              // REGISTRO C190: REGISTRO ANAL�TICO DO DOCUMENTO (C�DIGO 01, 1B, 04 E 55).
              if (cdsVC190.Active) then
                cdsVC190.Close;
              cdsVC190.Params[0].AsInteger := cdsNFVendaCODMOVIMENTO.AsInteger;
              //cdsVC190.Params[1].AsInteger := codMovMaxV;
              //cdsVC190.Params[2].AsDate    := data_ini.Date;
              //cdsVC190.Params[3].AsDate    := data_fim.Date;
              cdsVC190.Open;
              while not cdsVC190.eof do
              begin
                with RegistroC190New do
                begin
                  CST_ICMS      := cdsVC190CST.AsString;
                  CFOP          := cdsVC190CFOP.AsString;
                  ALIQ_ICMS     := cdsVC190ICMS.AsFloat;
                  VL_OPR        := cdsVC190VLR_OPERACAO.AsFloat;
                  VL_BC_ICMS    := cdsVC190VLR_BASE_ICMS.AsFloat;
                  VL_ICMS       := cdsVC190VLR_ICMS.AsFloat;
                  VL_BC_ICMS_ST := cdsVC190VLR_BASE_ICMS_ST.AsFloat;
                  VL_ICMS_ST    := cdsVC190ICMS_ST.AsFloat;
                  VL_RED_BC     := 0;
                  VL_IPI        := cdsVC190VLR_IPI.AsFloat;
                  if (dm.cds_empresaCRT.AsInteger = 1) then
                  begin
                    VL_IPI := 0;
                  end;
                  COD_OBS       := '';
                end;
                cdsVC190.next;
              end;
            end;  
          end;
          codParticip := cdsNFVendaCODCLIENTE.AsInteger;
          cdsNFVenda.Next;
        end; // FIM DO WHILE DE VENDAS
        // FIM BLOCO VENDAS #######################
      end;

      // DIFAL REG E110
      {
      if (not cdsDifalCad.Active) then
        btnDifal.Click;
      if (not cdsDifalCad.State in ['dsInsert', 'dsEdit']) then
        cdsDifalCad.Edit;
      cdsDifalCadVL_TOT_CRED_FCP.AsFloat := td1;
      cdsDifalCadVL_OUT_DEB_DIFAL
      }

      abrirTabelasVendaSAT;
      // BLOCO VENDAS  SAT   ###########################

      if (not cdsSat.IsEmpty) then
      begin
        //IND_MOV := imComDados;
        While not cdsSat.Eof do
        begin
          progressBar1.Step := progresso;
          progresso := progresso + 1;
          //if (cdsSatN_CNPJ.AsString = '00000000000000') then
          tam_ch_sat := length(cdsSatSAT.AsString);
          ch_sat := copy(cdsSatSAT.AsString, tam_ch_sat-47, 44);
          with RegistroC800New do
          begin
            //IND_OPER      := tpSaidaPrestacao; // 1-Saida
            //IND_EMIT      := edEmissaoPropria;   // 0 - Emiss�o pr�pria // 1 - Terceiro
            //COD_PART      := FormatFloat('200000',cdsSatCODCLIENTE.asInteger);
            COD_MOD       := '59';
            COD_SIT       := sdRegular;
            NUM_CFE       := cdsSatN_CFE.AsString;
            DT_DOC        := cdsSatDATAVENDA.AsDateTime;
            VL_CFE        := cdsSatVALOR.AsFloat;
            VL_PIS        := cdsSatPIS.AsFloat;
            VL_COFINS     := cdsSatCOFINS.AsFloat;
            CNPJ_CPF      := cdsSatN_CNPJ.AsString;
            NR_SAT        := dm.SatNumSerie;
            CHV_CFE       := ch_sat;
            VL_DESC       := cdsNFVendaDESCONTO.AsFloat;
            VL_MERC       := cdsSatVALOR.AsFloat;
            VL_OUT_DA     := 0;
            VL_ICMS       := cdsSatVALOR_ICMS.AsFloat;
            VL_PIS_ST     := 0;
            VL_COFINS_ST  := 0;
          end;
          // REGISTRO C850: REGISTRO ANAL�TICO DO CF-E_SAT
          if (cdsSatAnal.Active) then
            cdsSatAnal.Close;
          cdsSatAnal.Params[2].AsInteger := cdsSatCODMOVIMENTO.AsInteger;
          cdsSatAnal.Params[3].AsInteger := cdsSatCODMOVIMENTO.AsInteger;
          cdsSatAnal.Params[0].AsDate    := data_ini.Date;
          cdsSatAnal.Params[1].AsDate    := data_fim.Date;
          cdsSatAnal.Open;
          while not cdsSatAnal.eof do
          begin
            with RegistroC850New do
            begin
              CST_ICMS      := cdsSatAnalCST.AsString;
              CFOP          := cdsSatAnalCFOP.AsString;
              ALIQ_ICMS     := cdsSatAnalICMS.AsFloat;
              VL_OPR        := cdsSatAnalTOTAL.AsFloat;
              VL_BC_ICMS    := cdsSatAnalTOTAL.AsFloat;
              VL_ICMS       := cdsSatAnalVLR_ICMS.AsFloat;
              COD_OBS       := '';
            end;
            cdsSatAnal.next;
          end;
          cdsSat.Next;
        end;
        // REGISTRO C890: REGISTRO ANAL�TICO DO CF-E_SAT
        {
        if (cdsSatAnal.Active) then
          cdsSatAnal.Close;
        cdsSatAnal.Params[2].AsInteger := codMovMinV;
        cdsSatAnal.Params[3].AsInteger := codMovMaxV;
        cdsSatAnal.Params[0].AsDate    := data_ini.Date;
        cdsSatAnal.Params[1].AsDate    := data_fim.Date;
        cdsSatAnal.Open;
        while not cdsSatAnal.eof do
        begin
          with RegistroC890New do
          begin
            CST_ICMS      := cdsSatAnalCST.AsString;
            CFOP          := cdsSatAnalCFOP.AsString;
            ALIQ_ICMS     := cdsSatAnalICMS.AsFloat;
            VL_OPR        := cdsSatAnalTOTAL.AsFloat;
            VL_BC_ICMS    := cdsSatAnalTOTAL.AsFloat;
            VL_ICMS       := cdsSatAnalVLR_ICMS.AsFloat;
            COD_OBS       := '';
          end;
          cdsSatAnal.next;
        end;
        }
        // FIM BLOCO VENDAS SAT #######################

        {
        with RegistroC860New do
        begin
          COD_MOD := '59';
          NR_SAT  := dm.SatNumSerie;
          DT_DOC  :=
          DOC_INI :=
          DOC_FIM :=
        end;}
      end;


    end;


    if (sqlEnergia.Active) then
      sqlEnergia.Close;
    sqlEnergia.Params[0].AsInteger := codFornEnergia;
    sqlEnergia.Params[1].AsInteger := codMovMin;
    sqlEnergia.Params[2].AsInteger := codMovMax;
    sqlEnergia.Params[3].AsDate    := data_ini.Date;
    sqlEnergia.Params[4].AsDate    := data_fim.Date;
    sqlEnergia.Open;
    While not sqlEnergia.Eof do
    begin
      with RegistroC500New do
      begin
        IND_OPER := tpEntradaAquisicao; // Entrada
        IND_EMIT := edTerceiros; // Terceiros
        COD_PART := FormatFloat('100000', codFornEnergia);
        COD_MOD  := '06';
        COD_SIT  := sdRegular;
        SER      := sqlEnergiaSERIE.AsString;
        COD_CONS := '01';
        NUM_DOC  := '0';
        if (sqlEnergiaNOTAFISCAL.AsInteger > 0) then
          NUM_DOC  := IntToStr(sqlEnergiaNOTAFISCAL.AsInteger);
        DT_DOC   := sqlEnergiaDATACOMPRA.AsDateTime;
        DT_E_S   := sqlEnergiaDATACOMPRA.AsDateTime;
        VL_DOC   := sqlEnergiaVALOR.AsFloat;
        VL_DESC  := 0;
        VL_FORN  := sqlEnergiaVALOR.AsFloat;
        VL_SERV_NT := 0;
        VL_BC_ICMS := sqlEnergiaVALOR.AsFloat;
        VL_TERC    := 0;
        VL_DA      := 0;
        VL_ICMS    := sqlEnergiaVALOR_ICMS.AsFloat;
        VL_ICMS_ST := 0;
        VL_PIS     := 0;
        VL_COFINS  := 0;
        TP_LIGACAO := tlNenhum;
        if (tipoLigacao = 'Monofasico') then
          TP_LIGACAO := tlMonofasico;
        if (tipoLigacao = 'Bifasico') then
          TP_LIGACAO := tlBifasico;
        if(tipoLigacao = 'Trifasico') then
          TP_LIGACAO := tlTrifasico;            // 3 - Trif�sico
        CHV_DOCe := '';
        FIN_DOCe := fedcNormal;
        CHV_DOCe_REF := '';
        IND_DEST := iedaContribuinteICMS;
        COD_MUN_DEST := validaCodMunicipio(dm.cds_EmpresaCD_IBGE.AsString,
                            dm.cds_EmpresaRAZAO.AsString);
        COD_CTA := '';

        COD_MOD_DOC_REF :=  '';            /// C�digo do modelo do documento fiscal referenciado, conforme a Tabela 4.1.1
        HASH_DOC_REF    := '';             /// C�digo de autentica��o digital do registro (Conv�nio 115/2003).
        SER_DOC_REF     := '';             /// S�rie do documento fiscal referenciado.
        NUM_DOC_REF     := '';             /// N�mero do documento fiscal referenciado.
        MES_DOC_REF     := '';             /// M�s e ano da emiss�o do documento fiscal referenciado.
        OUTRAS_DED      := 0;              /// Energia injetada
        ENER_INJET      := 0;
      end;
      sqlEnergia.Next;
    end;

    if (cdsEnergiaDet.Active) then
      cdsEnergiaDet.Close;
    cdsEnergiaDet.Params[4].AsInteger := codFornEnergia;
    cdsEnergiaDet.Params[0].AsInteger := codMovMin;
    cdsEnergiaDet.Params[1].AsInteger := codMovMax;
    cdsEnergiaDet.Params[2].AsDate    := data_ini.Date;
    cdsEnergiaDet.Params[3].AsDate    := data_fim.Date;
    cdsEnergiaDet.Open;
    While not cdsEnergiaDet.Eof do
    begin
      with RegistroC590New do
      begin
        CST_ICMS := cdsEnergiaDetCST.AsString;
        CFOP     := cdsEnergiaDetCFOP.AsString;
        ALIQ_ICMS := cdsEnergiaDetICMS.AsFloat;
        VL_OPR    := cdsEnergiaDetVLR_BASEICMS.AsFloat;
        VL_BC_ICMS_ST := cdsEnergiaDetICMS_BASE_ST.AsFloat;
        VL_ICMS_ST := cdsEnergiaDetICMS_ST.AsFloat;
        VL_RED_BC  := 0;
      end;
      cdsEnergiaDet.Next;
    end;

  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_C(True);  // True, fecha o Bloco
    LoadToMemo;
  end;
  ProgressBar1.Visible := False ;
end;

procedure TfNfeIcms.blocoD;
var
  tem_dados: String;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco D
  //Primeiro as NFs de Entrada
  if (cdsCompra.Active) then
    cdsCompra.Close;
  cdsCompra.Params[0].AsInteger := codMovMin;
  cdsCompra.Params[1].AsInteger := codMovMax;
  cdsCompra.Params[2].AsDate    := data_ini.Date;
  cdsCompra.Params[3].AsDate    := data_fim.Date;
  cdsCompra.Open;
  tem_dados := 'N';
  While not cdsCompra.Eof do
  begin
    if (cdsCompraMODELO.AsString = '57') then
    begin
      tem_dados := 'S';
    end;
    cdsCompra.Next;
  end;
  cdsCompra.First;
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      if (tem_dados = 'N') then
      begin
        IND_MOV := imSemDados;
      end
      else begin
        IND_MOV := imComDados;
        // INICIO BLOCO COMPRAS  ######################
        if (not cdsCompra.IsEmpty) then
        begin
          While not cdsCompra.Eof do
          begin
            if (cdsCompraMODELO.AsString = '57') then
            begin
              with RegistroD100.New do
              begin
                IND_OPER      := tpEntradaAquisicao; // tpEntradaAquisicao, // 0 - Entrada
                IND_EMIT      := edTerceiros;   // 0 - Emiss�o pr�pria // 1 - Terceiro

                COD_PART      := FormatFloat('100000', cdsCompraCODFORNECEDOR.asInteger);
                COD_MOD       := '57';
                COD_SIT       := sdRegular;
                if (Length(cdsCompraSERIE.AsString) = 1) then
                  SER           := trim('00' + Trim(cdsCompraSERIE.AsString)) //04	SER	S�rie do documento fiscal	C	003	-
                else if (Length(cdsCompraSERIE.AsString) = 2) then
                  SER           := trim('0' + Trim(cdsCompraSERIE.AsString)) //04	SER	S�rie do documento fiscal	C	003	-
                else
                  SER           := Trim(cdsCompraSERIE.AsString); //04	SER	S�rie do documento fiscal	C	003	-
                NUM_DOC       := IntToStr(cdsCompraNOTAFISCAL.AsInteger);
                CHV_CTE       := Trim(copy(cdsCompraCHAVENF.AsString,0,44));
                DT_DOC        := cdsCompraDATACOMPRA.AsDateTime;
                if (cdsCompraDATA_ENTREGA.AsDateTime = 0) then
                begin
                  DT_A_P := cdsCompraDATACOMPRA.AsDateTime;
                end
                else begin
                  DT_A_P := cdsCompraDATA_ENTREGA.AsDateTime;
                end;
                TP_CT_e  := '0';   // 0 - CT-e Normal; 1 - CT-e de Complemento de Valores; 2 - CT-e de Anula��o; 3 - CT-e ...
                VL_DOC        := cdsCompraVALOR.AsFloat-cdsCompraDESCONTO.AsFloat;
                VL_DESC       := cdsCompraDESCONTO.AsFloat;
                if (cdsNFVendaFRETE.AsString = '0') then
                begin
                  IND_FRT := tfPorContaEmitente;     // 0 - Por conta de terceiros
                end
                else if (cdsNFVendaFRETE.AsString = '1') then
                begin
                  IND_FRT := tfPorContaDestinatario;      // 1 - Por conta do emitente
                end
                else if (cdsNFVendaFRETE.AsString = '2') then
                begin
                  IND_FRT := tfPorContaTerceiros;  // 2 - Por conta do destinat�rio
                end
                else if (cdsNFVendaFRETE.AsString = '3') then
                begin
                  IND_FRT := tfProprioPorContaRemetente;
                end
                else if (cdsNFVendaFRETE.AsString = '4') then
                begin
                  IND_FRT := tfProprioPorContaDestinatario;
                end
                else if (cdsNFVendaFRETE.AsString = '9') then
                begin
                  IND_FRT := tfSemCobrancaFrete;      // 9 - Sem cobran�a de frete
                end
                else
                begin
                  IND_FRT := tfNenhum;                 // Preencher vazio
                end;

                VL_SERV    :=  cdsCompraVALOR.AsFloat-cdsCompraDESCONTO.AsFloat;
                VL_BC_ICMS := cdsCompraBASE_ICMS.AsFloat;
                VL_ICMS       := cdsCompraVALOR_ICMS.AsFloat;
                VL_NT         := 0;
                if ((cdsCompraMUN_ORIGEM.AsString = '') OR (cdsCompraMUN_DESTINO.AsString = '')) then
                begin
                  ShowMessage('CTe sem municipio informado : ' + IntToStr(cdsCompraNOTAFISCAL.AsInteger));
                end;
                COD_MUN_ORIG := util.RemoveChar(cdsCompraMUN_ORIGEM.AsString);
                COD_MUN_DEST := util.RemoveChar(cdsCompraMUN_DESTINO.AsString);
              end;
              // d190
              if (cdsC190.Active) then
                cdsC190.Close;
              cdsC190.Params[0].AsInteger := cdsCompraCODMOVIMENTO.AsInteger;
                //cdsC190.Params[1].AsInteger := codMovMax;
                //cdsC190.Params[2].AsDate    := data_ini.Date;
                //cdsC190.Params[3].AsDate    := data_fim.Date;
              cdsC190.Open;
              while not cdsC190.eof do
              begin
                with RegistroD190New do
                begin
                  CST_ICMS      := cdsC190CST.AsString;
                  CFOP          := cdsC190CFOP.AsString;
                  ALIQ_ICMS     := cdsC190ICMS.AsFloat;
                  VL_OPR        := cdsC190VLR_OPERACAO.AsFloat;
                  VL_BC_ICMS    := cdsC190VLR_BASE_ICMS.AsFloat;
                  VL_ICMS       := cdsC190VLR_ICMS.AsFloat;
                  VL_RED_BC     := 0;
                  COD_OBS       := '';
                end;
                cdsC190.Next;
              end;
              // fim d 190
            end;
            cdsCompra.Next;
          end; // FIM DO WHILE DE COMPRAS
        end;
      end; // com dados
      // FIM BLOCO COMPRAS ######################
    end;
  end;
end;

procedure TfNfeIcms.blocoF;
begin
end;

procedure TfNfeIcms.blocoM;
begin
end;

procedure TfNfeIcms.edtFileChange(Sender: TObject);
begin
  ACBrSPEDFiscal1.Arquivo := edtFile.Text ;
end;

procedure TfNfeIcms.edtFileExit(Sender: TObject);
begin
  ACBrSPEDFiscal1.Arquivo := edtFile.Text ;
end;

procedure TfNfeIcms.cbConcomitanteClick(Sender: TObject);
begin
  btnTXT.Enabled   := not cbConcomitante.Checked ;
  btnError.Enabled := btnTXT.Enabled ;

  edBufNotas.Enabled := cbConcomitante.Checked ;

end;

procedure TfNfeIcms.btnTXTClick(Sender: TObject);
begin
  if (not cdsDifalCad.Active) then
    btnDifal.Click;
  if (edtFile.Text = '') then
  begin
    SaveDialog1.Execute;
    edtFile.Text := SaveDialog1.FileName;
  end;
  abrirTabelasCompra;
  abrirTabelasVenda;

  ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

  ACBrSPEDFiscal1.DT_INI := data_ini.Date;
  ACBrSPEDFiscal1.DT_FIN := data_fim.Date;

  // Limpa a lista de erros.
  memoError.Lines.Clear;
  // Informa o pasta onde ser� salvo o arquivo TXT.
  ACBrSPEDFiscal1.Path := 'c:\home\';
  ACBrSPEDFiscal1.Arquivo := edtFile.Text;


  blocoO; // FEITO 12/01/2013 - Carlos
  bloco1;
  //blocoA; // DOCUMENTOS FISCAIS - SERVI�OS (N�O SUJEITOS AO ICMS)
  blocoC;  // Linha do exemplo 430
  blocoD;  // DOCUMENTOS FISCAIS - SERVI�OS (ICMS)

  //bloco E - Apura��o do ICMS e do IPI
  bloco_E;
  bloco_e_ipi;

  //bloco G - Controle do Cr�dito de ICMS do Ativo Permanente � CIAP

  //bloco H - Invent�rio F�sico
  if (chkInventario.Checked) then
    blocoH;

  blocoK;

  // M�todo que gera o arquivo TXT.
  ACBrSPEDFiscal1.SaveFileTXT ;

  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os bot�es
  cbConcomitante.Enabled := True ;
  MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfNfeIcms.btnErrorClick(Sender: TObject);
begin
  with ACBrSPEDFiscal1 do
  begin
    //DT_INI := StrToDate('01/04/2011');
    //DT_FIN := StrToDate('30/04/2011');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;

  // M�todo que gera o arquivo TXT.
  ACBrSPEDfiscal1.SaveFileTXT ;
end;

procedure TfNfeIcms.FormCreate(Sender: TObject);
begin
  ACBrSPEDFiscal1 := TACBrSPEDFiscal.Create(Nil);
  tipo := 'tpEscrOriginal';
  util := Tutils.Create;
end;

procedure TfNfeIcms.cbTipoChange(Sender: TObject);
begin
  if (cbTipo.ItemIndex = 0) then
    tipo := 'tpEscrOriginal';
  if (cbTipo.ItemIndex = 1) then
    tipo := 'tpEscrRetificadora';

end;

procedure TfNfeIcms.abrirTabelasCompra;
begin
  if (cdsMov.Active) then
    cdsMov.Close;
  cdsMov.CommandText := 'SELECT MIN(C.CODMOVIMENTO), MAX(C.CODMOVIMENTO) ' +
    ' FROM COMPRA C, MOVIMENTO MOV ' +
    ' WHERE C.CODMOVIMENTO = MOV.CODMOVIMENTO ' +
    '   AND MOV.CODNATUREZA = 4  ' +
    '   AND C.MODELO <> ' + QuotedStr('') +
    '   AND C.DATACOMPRA BETWEEN ' +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
    ' AND '  +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
  cdsMov.Open;
  codMovMin := cdsMov.Fields[0].asInteger;
  codMovMax := cdsMov.Fields[1].asInteger;

  cdsMov.Close;
  cdsMov.CommandText := 'SELECT CODMOVIMENTO, CODNATUREZA ' +
    '  FROM MOVIMENTO ' +
    ' WHERE CODNATUREZA = 4 ' +
    '   AND CODMOVIMENTO BETWEEN ' + IntToStr(codMovMin) +
    '   AND ' + IntToStr(codMovMax);
  cdsMov.Open;

  temCompra := 'N';
  if (not cdsMov.IsEmpty) then
    temCompra := 'S';

  if (cdsItens.Active) then
    cdsItens.Close;
end;

procedure TfNfeIcms.FormDestroy(Sender: TObject);
begin
  ACBrSPEDFiscal1.Free;
  util.Free;
end;

function TfNfeIcms.validaCodMunicipio(cod: String; quem: String):String;
begin
  cod := util.RemoveChar(cod);
  result := cod;
  if (cod = '') then
    MessageDlg('C�digo do IBGE n�o preenchido para ' + quem + '.', mtWarning, [mbOK], 0);
end;

{function TfNfeIcms.cstPis(cstP: String): TACBrSituacaoTribPIS;
begin
  case StrToInt(cstP) of
    1 : result := stpisValorAliquotaNormal;                         // '01' // Opera��o Tribut�vel com Al�quota B�sica   // valor da opera��o al�quota normal (cumulativo/n�o cumulativo)).
    2 : result := stpisValorAliquotaDiferenciada;                   // '02' // Opera��o Tribut�vel com Al�quota Diferenciada // valor da opera��o (al�quota diferenciada)).
    3 : result := stpisQtdeAliquotaUnidade;                            // '03' // Opera��o Tribut�vel com Al�quota por Unidade de Medida de Produto // quantidade vendida x al�quota por unidade de produto).
    4 : result := stpisMonofaticaAliquotaZero;                         // '04' // Opera��o Tribut�vel Monof�sica - Revenda a Al�quota Zero
    5 : result := stpisValorAliquotaPorST;                             // '05' // Opera��o Tribut�vel por Substitui��o Tribut�ria
    6 : result := stpisAliquotaZero;                                   // '06' // Opera��o Tribut�vel a Al�quota Zero
    7 : result := stpisIsentaContribuicao;                             // '07' // Opera��o Isenta da Contribui��o
    8 : result := stpisSemIncidenciaContribuicao;                      // '08' // Opera��o sem Incid�ncia da Contribui��o
    9 : result := stpisSuspensaoContribuicao;                          // '09' // Opera��o com Suspens�o da Contribui��o
   49 : result := stpisOutrasOperacoesSaida;                           // '49' // Outras Opera��es de Sa�da
   50 : result := stpisOperCredExcRecTribMercInt;                      // '50' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
   51 : result := stpisOperCredExcRecNaoTribMercInt;                   // '51' // Opera��o com Direito a Cr�dito � Vinculada Exclusivamente a Receita N�o Tributada no Mercado Interno
   52 : result := stpisOperCredExcRecExportacao;                      // '52' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita de Exporta��o
   53 : result := stpisOperCredRecTribNaoTribMercInt;                  // '53' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
   54 : result := stpisOperCredRecTribMercIntEExportacao;              // '54' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
   55 : result := stpisOperCredRecNaoTribMercIntEExportacao;           // '55' // Opera��o com Direito a Cr�dito - Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
   56 : result := stpisOperCredRecTribENaoTribMercIntEExportacao;      // '56' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno, e de Exporta��o
   60 : result := stpisCredPresAquiExcRecTribMercInt;                  // '60' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita Tributada no Mercado Interno
   61 : result := stpisCredPresAquiExcRecNaoTribMercInt;               // '61' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita N�o-Tributada no Mercado Interno
   62 : result := stpisCredPresAquiExcExcRecExportacao;                // '62' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita de Exporta��o
   63 : result := stpisCredPresAquiRecTribNaoTribMercInt;              // '63' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
   64 : result := stpisCredPresAquiRecTribMercIntEExportacao;          // '64' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
   65 : result := stpisCredPresAquiRecNaoTribMercIntEExportacao;       // '65' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
   66 : result := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;  // '66' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno, e de Exporta��o
   67 : result := stpisOutrasOperacoes_CredPresumido;                  // '67' // Cr�dito Presumido - Outras Opera��es
   70 : result := stpisOperAquiSemDirCredito;                          // '70' // Opera��o de Aquisi��o sem Direito a Cr�dito
   71 : result := stpisOperAquiComIsensao;                             // '71' // Opera��o de Aquisi��o com Isen��o
   72 : result := stpisOperAquiComSuspensao;                           // '72' // Opera��o de Aquisi��o com Suspens�o
   73 : result := stpisOperAquiAliquotaZero;                           // '73' // Opera��o de Aquisi��o a Al�quota Zero
   74 : result := stpisOperAqui_SemIncidenciaContribuicao;             // '74' // Opera��o de Aquisi��o sem Incid�ncia da Contribui��o
   75 : result := stpisOperAquiPorST;                                  // '75' // Opera��o de Aquisi��o por Substitui��o Tribut�ria
   98 : result := stpisOutrasOperacoesEntrada;                         // '98' // Outras Opera��es de Entrada
   99 : result := stpisOutrasOperacoes;                                // '99' // Outras Opera��es
 end;
end;

function TfNfeIcms.cstCofins(cstC: String): TACBrSituacaoTribCOFINS;
begin
  Case StrToInt(cstC) of
    1 : Result := stcofinsValorAliquotaNormal;                           // '01' // Opera��o Tribut�vel com Al�quota B�sica                           // valor da opera��o al�quota normal (cumulativo/n�o cumulativo)).
    2 : Result := stcofinsValorAliquotaDiferenciada;                     // '02' // Opera��o Tribut�vel com Al�quota Diferenciada                     // valor da opera��o (al�quota diferenciada)).
    3 : Result := stcofinsQtdeAliquotaUnidade;                           // '03' // Opera��o Tribut�vel com Al�quota por Unidade de Medida de Produto // quantidade vendida x al�quota por unidade de produto).
    4 : Result := stcofinsMonofaticaAliquotaZero;                        // '04' // Opera��o Tribut�vel Monof�sica - Revenda a Al�quota Zero
    5 : Result := stcofinsValorAliquotaPorST;                            // '05' // Opera��o Tribut�vel por Substitui��o Tribut�ria
    6 : Result := stcofinsAliquotaZero;                                  // '06' // Opera��o Tribut�vel a Al�quota Zero
    7 : Result := stcofinsIsentaContribuicao;                            // '07' // Opera��o Isenta da Contribui��o
    8 : Result := stcofinsSemIncidenciaContribuicao;                     // '08' // Opera��o sem Incid�ncia da Contribui��o
    9 : Result := stcofinsSuspensaoContribuicao;                         // '09' // Opera��o com Suspens�o da Contribui��o
    49 : Result := stcofinsOutrasOperacoesSaida;                          // '49' // Outras Opera��es de Sa�da
    50 : Result := stcofinsOperCredExcRecTribMercInt;                     // '50' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    51 : Result := stcofinsOperCredExcRecNaoTribMercInt;                  // '51' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita N�o-Tributada no Mercado Interno
    52 : Result := stcofinsOperCredExcRecExportacao;                     // '52' // Opera��o com Direito a Cr�dito - Vinculada Exclusivamente a Receita de Exporta��o
    53 : Result := stcofinsOperCredRecTribNaoTribMercInt;                 // '53' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
    54 : Result := stcofinsOperCredRecTribMercIntEExportacao;             // '54' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
    55 : Result := stcofinsOperCredRecNaoTribMercIntEExportacao;          // '55' // Opera��o com Direito a Cr�dito - Vinculada a Receitas N�o Tributadas no Mercado Interno e de Exporta��o
    56 : Result := stcofinsOperCredRecTribENaoTribMercIntEExportacao;     // '56' // Opera��o com Direito a Cr�dito - Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno e de Exporta��o
    60 : Result := stcofinsCredPresAquiExcRecTribMercInt;                 // '60' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    61 : Result := stcofinsCredPresAquiExcRecNaoTribMercInt;              // '61' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita N�o-Tributada no Mercado Interno
    62 : Result := stcofinsCredPresAquiExcExcRecExportacao;               // '62' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada Exclusivamente a Receita de Exporta��o
    63 : Result := stcofinsCredPresAquiRecTribNaoTribMercInt;             // '63' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno
    64 : Result := stcofinsCredPresAquiRecTribMercIntEExportacao;         // '64' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas no Mercado Interno e de Exporta��o
    65 : Result := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;      // '65' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas N�o-Tributadas no Mercado Interno e de Exporta��o
    66 : Result := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao; // '66' // Cr�dito Presumido - Opera��o de Aquisi��o Vinculada a Receitas Tributadas e N�o-Tributadas no Mercado Interno e de Exporta��o
    67 : Result := stcofinsOutrasOperacoes_CredPresumido;                 // '67' // Cr�dito Presumido - Outras Opera��es
    70 : Result := stcofinsOperAquiSemDirCredito;                         // '70' // Opera��o de Aquisi��o sem Direito a Cr�dito
    71 : Result := stcofinsOperAquiComIsensao;                            // '71' // Opera��o de Aquisi��o com Isen��o
    72 : Result := stcofinsOperAquiComSuspensao;                          // '72' // Opera��o de Aquisi��o com Suspens�o
    73 : Result := stcofinsOperAquiAliquotaZero;                          // '73' // Opera��o de Aquisi��o a Al�quota Zero
    74 : Result := stcofinsOperAqui_SemIncidenciaContribuicao;            // '74' // Opera��o de Aquisi��o sem Incid�ncia da Contribui��o
    75 : Result := stcofinsOperAquiPorST;                                 // '75' // Opera��o de Aquisi��o por Substitui��o Tribut�ria
    98 : Result := stcofinsOutrasOperacoesEntrada;                        // '98' // Outras Opera��es de Entrada
    99 : Result := stcofinsOutrasOperacoes;                                // '99' // Outras Opera��es
  end;
end;}
{
function TfNfeIcms.cstIcms(cstI: String): TACBrSituacaoTribICMS;
begin
  Case StrtoInt(CstI) of
      0 : Result := sticmsTributadaIntegralmente;    // '000' //	Tributada integralmente
     10 : Result := sticmsTributadaComCobracaPorST;  // '010' //	Tributada e com cobran�a do ICMS por substitui��o tribut�ria
     20 : Result := sticmsComReducao;                // '020' //	Com redu��o de base de c�lculo
     30 : Result := sticmsIsentaComCobracaPorST;     // '030' //	Isenta ou n�o tributada e com cobran�a do ICMS por substitui��o tribut�ria
     40 : Result := sticmsIsenta;                    // '040' //	Isenta
     41 : Result := sticmsNaoTributada;              // '041' //	N�o tributada
     50 : Result := sticmsSuspensao;                 // '050' //	Suspens�o
     51 : Result := sticmsDiferimento;               // '051' //	Diferimento
     60 : Result := sticmsCobradoAnteriormentePorST; // '060' //	ICMS cobrado anteriormente por substitui��o tribut�ria
     70 : Result := sticmsComReducaoPorST;           // '070' //	Com redu��o de base de c�lculo e cobran�a do ICMS por substitui��o tribut�ria
     90 : Result := sticmsOutros;                    // '090' //	Outros
    300 : Result := sticmsSimplesNacionalImune;      // '300' // Simples Nacional - Imune
    400 : Result := sticmsSimplesNacionalNaoTributada;// '400' // Simples Nacional - N�o tributada pelo Simples Nacional
    500 : Result := sticmsSimplesNacionalCobradoAnteriormentePorST;// '500' // Simples Nacional - ICMS cobrado anteriormente por substitui��o tribut�ria (substitu�do) ou por antecipa��o
    900 : Result := sticmsSimplesNacionalOutros;     // '900' // Simples Nacional - Outros
  end;
end;  }

procedure TfNfeIcms.abrirTabelasVenda;
begin
  cdsMov.Close;
  cdsMov.CommandText := 'SELECT MIN(V.CODMOVIMENTO), MAX(V.CODMOVIMENTO) ' +
    ' FROM VENDA V, MOVIMENTO MOV ' +
    ' WHERE MOV.CODMOVIMENTO = V.CODMOVIMENTO ' +
    '   AND MOV.CODNATUREZA IN (12, 15) ' +
    '   AND V.DATAVENDA BETWEEN ' +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
    ' AND '   +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
  cdsMov.Open;
  if (codMovMinV > cdsMov.Fields[0].asInteger) then
    codMovMinV := cdsMov.Fields[0].asInteger;
  if (codMovMaxV < cdsMov.Fields[1].asInteger) then
    codMovMaxV := cdsMov.Fields[1].asInteger;
  if (codMovMax > CodMovMaxV) then
    codMovMaxV := codMovMax;

  cdsMov.Close;
  cdsMov.CommandText := 'SELECT CODMOVIMENTO, CODNATUREZA ' +
    '  FROM MOVIMENTO ' +
    ' WHERE CODNATUREZA IN (12, 15) ' +
    '   AND CODMOVIMENTO BETWEEN ' + IntToStr(codMovMin) +
    '   AND ' + IntToStr(codMovMax);
  cdsMov.Open;

  cdsNFVenda.Params[0].AsDate := data_ini.Date;
  cdsNFVenda.Params[1].AsDate := data_fim.Date;

  cdsNFVenda.Params[2].AsInteger := codMovMinV;
  cdsNFVenda.Params[3].AsInteger := codMovMaxV;

  cdsNFVenda.Open;

  temVenda := 'N';

  cdsNFVenda.First;
  while not cdsNFVenda.Eof do
  begin
     // este registro e usado nos registros da venda
     // no sped icms nao informa itens da nf, entoa nao precisa
     // este registro
     if (cdsNFVendaMODELO.AsString <> '55') then
       temVenda := 'S';
    cdsNFVenda.Next;
  end;
  cdsNFVenda.First;

  if (cdsItens.Active) then
    cdsItens.Close;

end;

procedure TfNfeIcms.BitBtn1Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  edtFile.Text := SaveDialog1.FileName;
end;

procedure TfNfeIcms.bloco_E;
var tdifal1: Double;
    tdifal2: Double;
    tdifal3: Double;
begin
  tDifal1 := 0;
  tDifal2 := 0;
  tDifal3 := 0;
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := imComDados;
    end;
    with RegistroE100New do
    begin
      DT_INI := Data_Ini.Date;
      DT_FIN := Data_Fim.Date;
    end;

    if (sqlTotalEntrada.Active) then
      sqlTotalEntrada.Close;
    sqlTotalEntrada.Params[0].AsDate := data_ini.Date;
    sqlTotalEntrada.Params[1].AsDate := data_fim.Date;
    sqlTotalEntrada.Open;

    if (sqlTotalSaida.Active) then
      sqlTotalSaida.Close;
    sqlTotalSaida.Params[0].AsDate := data_ini.Date;
    sqlTotalSaida.Params[1].AsDate := data_fim.Date;
    sqlTotalSaida.Open;

    with RegistroE110New do
    begin
      if (sqlTotalSaidaVLR_ICMS.AsFloat-sqlTotalEntradaVLR_ICMS.AsFloat < 0) then
      begin
        VL_ICMS_RECOLHER := 0;
        VL_SLD_CREDOR_TRANSPORTAR := (sqlTotalSaidaVLR_ICMS.AsFloat-sqlTotalEntradaVLR_ICMS.AsFloat) *(-1);
      end
      else
      begin
        VL_ICMS_RECOLHER := sqlTotalSaidaVLR_ICMS.AsFloat-sqlTotalEntradaVLR_ICMS.AsFloat;
        VL_SLD_CREDOR_TRANSPORTAR := 0;
      end;
      VL_TOT_DEBITOS   := sqlTotalSaidaVLR_ICMS.AsFloat;
      VL_TOT_CREDITOS  := sqlTotalEntradaVLR_ICMS.AsFloat;
      VL_SLD_APURADO   := sqlTotalSaidaVLR_ICMS.AsFloat;
      VL_AJ_DEBITOS    := 0;
      VL_ESTORNOS_CRED := 0;
      VL_TOT_AJ_DEBITOS:= 0;
      VL_AJ_CREDITOS   := 0;
      VL_ESTORNOS_DEB  := 0;
      VL_SLD_CREDOR_ANT:= 0;
      VL_TOT_DED       := sqlTotalEntradaVLR_ICMS.AsFloat;
    end;

    //GUIA PR�TICO DA EFD - Vers�o 2.0.18

    if (cdsDifal.Active) then
      cdsDifal.Close;
    cdsDifal.Params[0].AsDate := data_ini.date;
    cdsDifal.Params[1].AsDate := data_fim.date;
    cdsDifal.Open;
    while not cdsDifal.Eof do
    begin
      if ((cdsDifalVFCPUFDEST.AsFloat > 0) or
         (cdsDifalVICMSUFDEST.AsFloat > 0) or
         (cdsDifalVICMSUFREMET.AsFloat > 0)) then
      begin
        tDifal1 := tDifal1 + cdsDifalVFCPUFDEST.AsFloat;
        tDifal2 := tDifal2 + cdsDifalVICMSUFDEST.AsFloat;
        tDifal3 := tDifal3 + cdsDifalVICMSUFREMET.AsFloat;
        with RegistroE300New do
        begin
           UF := cdsDifalUF.AsString;
           DT_INI := data_ini.date;
           DT_FIN := data_fim.date;
        end;
        with RegistroE310New do
        begin
          // Indicador de movimento:
          // 0 � Sem opera��es com ICMS Diferencial de
          //    Al�quota da UF de Origem/Destino
          // 1 � Com opera��es de ICMS Diferencial de
          //    Al�quota da UF de Origem/Destino
          if ((tDifal1 > 0) or
             (tDifal2 > 0) or
             (tDifal3 > 0)) then
          begin
            IND_MOV_DIFAL := mDifalComOperacaoICMS;
          end
          else begin
            IND_MOV_DIFAL := mDifalSemOperacaoICMS;
          end;
          VL_SLD_CRED_ANT_DIF := 0;
          VL_TOT_DEBITOS_DIFAL := tDifal2;
          VL_OUT_DEB_DIFAL := 0;
        end;
      end;
      cdsDifal.Next;
    end;
    //  registroe300
    //end;
    // E300
    // O registro � obrigat�rio se a soma, por UF, dos valores dos campos
    // VL_ICMS_UF_DEST dos registros C101 e
    // D101 for maior que zero; ou VL_ICMS_UF_REM for maior que zero;
    // ou VL_FCP_UF_DEST dos registros C101 e D101
    // for maior que zero ou ainda se houver um registro 0015 para a UF

   end;

end;

procedure TfNfeIcms.FormShow(Sender: TObject);
begin
  if (DM.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'FORNECEDORENERGIA';
  dm.cds_parametro.Open;
  try
    codFornEnergia := StrToInt(dm.cds_parametroDADOS.AsString);
    if (dm.cds_parametroD1.AsString = '') then
    begin
      MessageDlg('No Parametro FORNECEDORENERGIA informar no Registro D1 o tipo de liga��o (Monofasico, Bifasico ou Trifasico).', mtWarning, [mbOK], 0);
      Exit;
    end;
    tipoLigacao    := dm.cds_parametroD1.AsString;
  except
    MessageDlg('O Parametro FORNECEDORENERGIA n�o est� correto, tem que ser o C�digo do Fornecedor.', mtWarning, [mbOK], 0);
    Exit;
  end;
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;  
end;

procedure TfNfeIcms.blocoH;
var s: String;
  total : Double;
begin
  // Bloco H
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH001New do
    begin
      if (chkInventario.Checked) then
      begin
        IND_MOV := imComDados; // Com Dados
      end
      else begin
        IND_MOV := imSemDados; // Sem dados
      end;
    end;
    if (chkInventario.Checked) then
    begin
      s := 'select CODPRODUTO, (PRECO_CUSTO * ESTOQUE) AS VALORESTOQUE';
      s := s + ' FROM VIEW_ESTOQUE_SPED(' +
        QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date));
      s := s + ')';
      if (sqlInventario.Active) then
        sqlInventario.Close;
      sqlInventario.SQL.Clear;
      sqlInventario.SQL.Add(s);
      sqlInventario.Open;

      total := 0;
      while not sqlInventario.Eof do
      begin
        if ((not sqlInventario.FieldByName('VALORESTOQUE').IsNull) and
          (sqlInventario.FieldByName('VALORESTOQUE').asFloat > 0)) then
          total := total + sqlInventario.FieldByName('VALORESTOQUE').AsFloat;
        sqlInventario.Next;
      end;

      with RegistroH005New do
      begin
        DT_INV := edDataInventario.Date;
        //DT_INI := edDataInventario.Date;
        //DT_FIN := edDataInventario.Date;
        VL_INV := total; // Valor do Inventario
      end;
      s := 'select CODPRODUTO, PRECO_CUSTO AS PRECOCUSTO ';
      s := s + ', ESTOQUE ';
      s := s + ', UNIDADEMEDIDA, CODPRO ';
      s := s + ' FROM VIEW_ESTOQUE_SPED(' +
        QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date));
      s := s + ')';
      if (sqlInventario.Active) then
        sqlInventario.Close;
      sqlInventario.SQL.Clear;
      sqlInventario.SQL.Add(s);
      sqlInventario.Open;
      While not sqlInventario.Eof do
      begin
        if (sqlInventario.FieldByName('ESTOQUE').AsFloat > 0) then
        with RegistroH010New do
        begin
          //COD_ITEM := FormatFloat('000000', sqlInventario.FieldByName('CODPRODUTO').AsInteger);
          if (dm.mascaraProduto <> '') then
            COD_ITEM := FormatMaskText(dm.mascaraProduto+';0;_', sqlInventario.FieldByName('CODPRO').AsString)
          else
            COD_ITEM     := FormatFloat('000000', sqlInventario.FieldByName('CODPRODUTO').AsInteger); // Nao usa mascara fica como era

          UNID  := Trim(sqlInventario.FieldByName('UNIDADEMEDIDA').AsString);
          if (Trim(sqlInventario.FieldByName('UNIDADEMEDIDA').AsString) = 'P�') then
            UNID := 'PC';

          //UNID     := sqlInventario.FieldByName('UNIDADEMEDIDA').AsString;

          if (sqlInventario.FieldByName('ESTOQUE').IsNull) then
            QTD := 0
          else
            QTD      := sqlInventario.FieldByName('ESTOQUE').AsFloat;
          if (sqlInventario.FieldByName('PRECOCUSTO').IsNull) then
            VL_UNIT := 0
          else
            VL_UNIT := sqlInventario.FieldByName('PRECOCUSTO').AsFloat;
          VL_ITEM  := QTD * VL_UNIT;
          IND_PROP := piInformante; //  0- Item de propriedade do informante e em seu poder;
          if (edContaContabil.Text = '') then
          begin
            MessageDlg('Informe a Conta Contabil do Estoque', mtWarning, [mbOK], 0);
            exit;
          end;
          COD_CTA  := edContaContabil.Text;
        end;
        sqlInventario.Next;
      end; // Fim H010
    end;
  end; // Fim Blco H
end;

function TfNfeIcms.tipoDocumentoFiscal(finalidade: String): TACBrCodSit;
var retorna: TACBrCodSit;
begin
  retorna := sdRegular;
  if (finalidade = 'fnNormal') then
     retorna := sdRegular;
  if (finalidade = 'fnComplementar') then
     retorna := sdFiscalCompl;
  if (finalidade = 'fnCancelado') then
     retorna := sdCancelado;
  if (finalidade = 'fnDenegado') then
     retorna := sdDoctoDenegado;
  if (finalidade = 'fnInutilizado') then
     retorna := sdDoctoNumInutilizada;
  result := retorna;
end;

procedure TfNfeIcms.bloco_E_ipi;
var ipi_entrada, ipi_saida: Double;
begin
  ipi_entrada := 0;
  ipi_saida := 0;
  if (dm.cds_empresaCRT.AsInteger = 1) then // empresa Simples com excedente receita nao apresenta este bloco
    exit;
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE500New do
    begin
      IND_APUR := iaNenhum;
      if (cbIPI.ItemIndex = 0) then
        IND_APUR := iaMensal; // iaMensal, iaDecendial, iaNenhum
      if (cbIPI.ItemIndex = 1) then
        IND_APUR := iaDecendial; // iaMensal, iaDecendial, iaNenhum

      DT_INI := Data_Ini.Date;
      DT_FIN := Data_Fim.Date;
    end;

    if (cdsTotIpi.Active) then
      cdsTotIpi.Close;
    cdsTotIpi.Params[0].AsDate := data_ini.Date;
    cdsTotIpi.Params[1].AsDate := data_fim.Date;
    cdsTotIpi.Open;

    if (cdsTotIpiSaida.Active) then
      cdsTotIpiSaida.Close;
    cdsTotIpiSaida.Params[0].AsDate := data_ini.Date;
    cdsTotIpiSaida.Params[1].AsDate := data_fim.Date;
    cdsTotIpiSaida.Open;

    while not cdsTotIpi.Eof do
    begin
      if (cdsTotIpiCSTIPI.AsString = '00') then
        ipi_entrada := ipi_entrada + cdsTotIpiVLR_IPI.AsFloat;

      if (Length(trim(cdsTotIpiCSTIPI.AsString)) < 2) then
      begin
        MessageDlg('CST do Ipi incorreto, no registro com CFOP : ' +
          cdsTotIpiCFOP.AsString + ', Valor BC : ' + FloatToStr(cdsTotIpiVLR_BASE_IPI.AsFloat), mtWarning, [mbOK], 0);
      end;
      with RegistroE510New do
      begin
        if (cdsTotIpiCFOP.AsString = '0000') then
           MessageDlg('aq', mtWarning, [mbOK], 0);
        CFOP        := cdsTotIpiCFOP.AsString;
        CST_IPI     := cdsTotIpiCSTIPI.AsString;
        VL_CONT_IPI := cdsTotIpiVLR_BASE_IPI.AsFloat;
        VL_BC_IPI   := cdsTotIpiVLR_BASE_IPI.AsFloat;
        VL_IPI      := cdsTotIpiVLR_IPI.AsFloat;
      end;
      cdsTotIpi.Next;
    end;

    while not cdsTotIpiSaida.Eof do
    begin
      if (cdsTotIpiSaidaCSTIPI.AsString = '0000') then
         MessageDlg('aq', mtWarning, [mbOK], 0);

      if (cdsTotIpiSaidaCSTIPI.AsString = '50') then
        ipi_saida := ipi_saida + cdsTotIpiSaidaVLR_IPI.AsFloat;

      if (Length(trim(cdsTotIpiSaidaCSTIPI.AsString)) < 2) then
      begin
        MessageDlg('CST do Ipi incorreto, no registro com CFOP : ' + cdsTotIpiSaidaCFOP.AsString, mtWarning, [mbOK], 0);
      end;

      with RegistroE510New do
      begin
        CFOP        := cdsTotIpiSaidaCFOP.AsString;
        CST_IPI     := cdsTotIpiSaidaCSTIPI.AsString;
        VL_CONT_IPI := cdsTotIpiSaidaVLR_BASE_IPI.AsFloat;
        VL_BC_IPI   := cdsTotIpiSaidaVLR_BASE_IPI.AsFloat;
        VL_IPI      := cdsTotIpiSaidaVLR_IPI.AsFloat;
      end;
      cdsTotIpiSaida.Next;
    end;
    with RegistroE520New do
    begin
      VL_SD_ANT_IPI := 0;
      VL_DEB_IPI := ipi_saida;
      VL_CRED_IPI := ipi_entrada;
      VL_OD_IPI := 0;
      VL_OC_IPI := 0;
      VL_SC_IPI := 0;
      if (ipi_entrada > ipi_saida) then
        VL_SC_IPI := ipi_entrada - ipi_saida;
      VL_SD_IPI := 0;
      if (ipi_entrada < ipi_saida) then
        VL_SD_IPI := ipi_saida - ipi_entrada;
    end;

  end;

end;

procedure TfNfeIcms.abrirTabelasVendaSAT;
begin
  cdsMov.Close;
  cdsMov.CommandText := 'SELECT MIN(V.CODMOVIMENTO), MAX(V.CODMOVIMENTO) ' +
    ' FROM VENDA V, MOVIMENTO MOV ' +
    ' WHERE MOV.CODMOVIMENTO = V.CODMOVIMENTO ' +
    '   AND MOV.CODNATUREZA = 3 ' +
    '   AND V.DATAVENDA BETWEEN ' +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
    ' AND '   +
    QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
    ' AND '   +
    ' STATUS1 = ' + QuotedStr('E');

  cdsMov.Open;
  if (codMovMinV > cdsMov.Fields[0].asInteger) then
    codMovMinV := cdsMov.Fields[0].asInteger;
  if (codMovMaxV < cdsMov.Fields[1].asInteger) then
    codMovMaxV := cdsMov.Fields[1].asInteger;
  if (codMovMax > CodMovMaxV) then
    codMovMaxV := codMovMax;

  cdsMov.Close;
  cdsMov.CommandText := 'SELECT M.CODMOVIMENTO, M.CODNATUREZA ' +
    '  FROM MOVIMENTO M, VENDA V ' +
    ' WHERE M.CODNATUREZA = 3 ' +
    '   AND M.CODMOVIMENTO = V.CODMOVIMENTO ' +
    '   AND V.STATUS1 = ' + QuotedStr('E') +
    '   AND M.CODMOVIMENTO BETWEEN ' + IntToStr(codMovMin) +
    '   AND ' + IntToStr(codMovMax);
  cdsMov.Open;

  cdsSat.Params[0].AsDate := data_ini.Date;
  cdsSat.Params[1].AsDate := data_fim.Date;

  cdsSat.Params[2].AsInteger := codMovMinV;
  cdsSat.Params[3].AsInteger := codMovMaxV;

  cdsSat.Open;

  if (cdsItens.Active) then
    cdsItens.Close;
end;

procedure TfNfeIcms.btnDifalClick(Sender: TObject);
begin
  if (cdsDifalCad.Active) then
    cdsDifalCad.Close;
  cdsDifalCad.Params[0].AsDate := data_ini.date;
  cdsDifalCad.Params[1].AsDate := data_fim.date;
  cdsDifalCad.Open;

end;

procedure TfNfeIcms.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfNfeIcms.blocoB;
begin
  // Bloco H
  with ACBrSPEDFiscal1.Bloco_B do
  begin
    with RegistroB001New do
    begin
      IND_MOV := imSemDados; // Sem dados
    end;
  end;  
end;

procedure TfNfeIcms.blocoK;
var s:string;
begin
  //Bloco K
  with ACBrSPEDFiscal1.Bloco_K do
  begin
    with RegistroK001New do
    begin
      IND_MOV := imComDados; // Com Dados
      //IND_MOV := imSemDados; // Sem dados
    end;
    {
    s := 'select  DISTINCT p.CODPRODUTO, (select SUM(EV.PRECOCUSTO * EV.SALDOESTOQUE) from ESTOQUEMES EV ';
    s := s + ' WHERE EV.MESANO = ' + QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date));
    s := s + '   AND EV.CODPRODUTO  = p.CODPRODUTO ' ;
    s := s + '   AND EV.CENTROCUSTO = 51 ';
    s := s + ') VALORESTOQUE ';
    s := s + ' from produtos p ';
    s := s + ' where ((p.usa is null) or (p.usa = ' + QuotedStr('S') + ')) ';
    s := s + ' and ((p.TIPO is null) or (p.TIPO <> ' + QuotedStr('SERV') + ')) ';
    if (sqlInventario.Active) then
      sqlInventario.Close;
    sqlInventario.SQL.Clear;
    sqlInventario.SQL.Add(s);
    sqlInventario.Open;

    total := 0;
    while not sqlInventario.Eof do
    begin
        if (not sqlInventario.FieldByName('VALORESTOQUE').IsNull) then
          total := total + sqlInventario.FieldByName('VALORESTOQUE').AsFloat;
        sqlInventario.Next;
    end;
    }
    with RegistroK100New do
    begin
      DT_INI := data_ini.Date;
      DT_FIN := data_fim.Date;
    end;
    {
    s := 'select DISTINCT p.CODPRODUTO, (select FIRST 1 EV.PRECOCUSTO from ESTOQUEMES EV ';
    s := s + ' WHERE EV.MESANO = ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
    s := s + '   AND EV.CODPRODUTO  = p.CODPRODUTO ' ;
    s := s + '   AND EV.CENTROCUSTO = 51 ';
    s := s + ') PRECOCUSTO ';
    s := s + ' , (select FIRST 1 EV.SALDOESTOQUE from ESTOQUEMES EV ';
    s := s + ' WHERE EV.MESANO = ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date));
    s := s + '   AND EV.CODPRODUTO  = p.CODPRODUTO ' ;
    s := s + '   AND EV.CENTROCUSTO = 51 ';
    s := s + ') ESTOQUE ';
    s := s + ', p.UNIDADEMEDIDA, p.CODPRO ';
    s := s + ' from produtos p ';
    s := s + ' where ((p.usa is null) or (p.usa = ' + QuotedStr('S') + ')) ';
    s := s + ' and ((p.TIPO is null) or (p.TIPO <> ' + QuotedStr('SERV') + ')) ';
    s := s + ' and (UDF_LEFT(p.CLASSIFIC_FISCAL,2) in (' + QuotedStr('00') + ', ';
    s := s + QuotedStr('01') + ', ';
    s := s + QuotedStr('02') + ', ';
    s := s + QuotedStr('03') + ', ';
    s := s + QuotedStr('04') + ', ';
    s := s + QuotedStr('05') + ', ';
    s := s + QuotedStr('06') + ', ';
    s := s + QuotedStr('10') + '))';}
    s := 'SELECT * FROM  VIEW_ESTOQUE_SPED (' +
      QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) + ')';

    if (sqlInventario.Active) then
      sqlInventario.Close;
    sqlInventario.SQL.Clear;
    sqlInventario.SQL.Add(s);
    sqlInventario.Open;
    While not sqlInventario.Eof do
    begin
      if (sqlInventario.FieldByName('ESTOQUE').AsFloat > 0) then
      begin
        with RegistroK200New do
        begin
          DT_EST := data_fim.Date;
          if (dm.mascaraProduto <> '') then
            COD_ITEM := FormatMaskText(dm.mascaraProduto+';0;_',
              sqlInventario.FieldByName('CODPRO').AsString)
          else
            COD_ITEM     := FormatFloat('000000',
              sqlInventario.FieldByName('CODPRODUTO').AsInteger); // Nao usa mascara fica como era
          //COD_ITEM := sqlInventario.FieldByName('CODPRO').AsString;
          if (sqlInventario.FieldByName('ESTOQUE').IsNull) then
            QTD := 0
          else
            QTD := sqlInventario.FieldByName('ESTOQUE').AsFloat;
          IND_EST := estPropInformantePoder; //  0- Item de propriedade do informante e em seu poder;
        end;
      end;
      sqlInventario.Next;
    end; // Fim K200
  end; // Fim Blco K

end;

procedure TfNfeIcms.SpeedButton1Click(Sender: TObject);
begin
  vcReportEstoque.FileName := str_relatorio + 'estoque_sped.rep';
  vcReportEstoque.Title := 'estoque_sped.rep';
  vcReportEstoque.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  vcReportEstoque.Report.Params.ParamByName('PDATA').Value := data_fim.Date;
  vcReportEstoque.Execute;
end;

end.
