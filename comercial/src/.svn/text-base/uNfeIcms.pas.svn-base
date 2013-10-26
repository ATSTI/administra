unit uNfeIcms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, JvExComCtrls,
  JvProgressBar, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, FMTBcd,
  DBClient, Provider, DB, SqlExpr, uUtils, ACBrEFDBlocos, ACBrSpedFiscal,
  Buttons;

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
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
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
  private
    codFornEnergia: Integer;
    tipoLigacao: String;
    util : Tutils;
    tipo: String;
    temCompra, temVenda: String;
    function validaCodMunicipio(cod: String; quem: String):String;
    //function cstIcms(cstI: String): String;
    procedure LoadToMemo;
    procedure blocoO;
    procedure bloco1;
    procedure blocoA;
    procedure blocoC;
    procedure blocoD;
    procedure blocoF;
    procedure blocoH;
    procedure blocoM;
    procedure abrirTabelasCompra;
    procedure abrirTabelasVenda;
    procedure bloco_E;
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
  ACBrEFDBloco_H, ACBrSped;

{$R *.dfm}

{ TForm1 }

procedure TfNfeIcms.bloco1;
begin
  // Alimenta o componente com informações para gerar todos os registros do
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

begin
  // Alimenta o componente com informações para gerar todos os registros do
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
      if (data_ini.Date < StrToDate('01/01/2013')) then
      begin
        COD_VER          := vlVersao105;
      end
      else begin
        COD_VER          := vlVersao106;
      end;
      if (cbTipo.ItemIndex = 0) then
        COD_FIN          := raOriginal;
      if (cbTipo.ItemIndex = 1) then
        COD_FIN          := raSubstituto;

      NOME             := cdsEmpresaRAZAO.AsString;
      CNPJ             := util.RemoveChar(cdsEmpresaCNPJ_CPF.AsString);
      IE               := util.RemoveChar(cdsEmpresaIE_RG.AsString);
      UF               := cdsEmpresaUF.AsString;
      COD_MUN          := StrToInt(validaCodMunicipio(cdsEmpresaCD_IBGE.AsString, cdsEmpresaRAZAO.AsString));
      SUFRAMA          := '';
      IND_PERFIL       := pfPerfilA;
      IND_ATIV         := TAcbrAtividade(1);

      with Registro0001New do
      begin
        IND_MOV := imComDados;

        // FILHO - Dados Complementar da Empresa.
        with Registro0005New do
        begin
          FANTASIA := cdsEmpresaEMPRESA.AsString;
          CEP      := util.RemoveChar(cdsEmpresaCEP.AsString);
          ENDERECO := cdsEmpresaENDERECO.AsString;
          NUM      := cdsEmpresaNUMERO.AsString;
          COMPL    := cdsEmpresaLOGRADOURO.AsString;
          BAIRRO   := cdsEmpresaBAIRRO.AsString;
          FONE     := util.RemoveChar(cdsEmpresaDDD.AsString) + util.RemoveChar(cdsEmpresaFONE.AsString);
          FAX      := util.RemoveChar(cdsEmpresaDDD.AsString) + util.RemoveChar(cdsEmpresaFAX.AsString);
          EMAIL    := cdsEmpresaE_MAIL.AsString;
        end;


         // FILHO - Dados Contador
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
            FONE       := util.RemoveChar(cdsEmpresaCONTADOR_FONE.AsString);
            FAX        := util.RemoveChar(cdsEmpresaCONTADOR_FAX.AsString);
            EMAIL      := cdsEmpresaCONTADOR_EMAIL.AsString;
            COD_MUN    := StrToInt(validaCodMunicipio(cdsEmpresaCONTADOR_COD_MUN.AsString, 'Contador: ' + cdsEmpresaCONTADOR.AsString));
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
         sdsUnimed.SQL.Add('SELECT DISTINCT UN.CODUN, UN.DESCRICAO  ' +
          '  FROM UNIDADEMEDIDA UN, COMPRA C, MOVIMENTO mov, MOVIMENTODETALHE DET ' +
          ' WHERE UN.CODUN = DET.UN ' +
          '   AND mov.codmovimento = det.codmovimento ' +
          '   AND C.codmovimento = MOV.codmovimento ' +
          '   AND (MOV.CODNATUREZA = 4) ' +
          '   AND C.DATACOMPRA  BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
          '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)));

         sdsUnimed.Open;

         while (not sdsUnimed.Eof) do
         begin
           // 0190 - Identificação das Unidades de Medida
           with Registro0190New do
           begin
             UNID  := Trim(sdsUnimed.Fields[0].AsString);
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
           // 0190 - Identificação das Unidades de Medida
           with Registro0190New do
           begin
             UNID  := Trim(sdsUnimed.Fields[0].AsString);
             DESCR := Trim(sdsUnimed.Fields[1].AsString);
           end;
           sdsUnimed.Next;
         end;
         }

         // UNIDADE INVENTARIO
         if (sdsUnimed.Active) then
           sdsUnimed.Close;

         sdsUnimed.SQL.Clear;
         sdsUnimed.SQL.Add('SELECT DISTINCT UN.CODUN, UN.DESCRICAO ' +
           '  FROM ESTOQUEMES EM, PRODUTOS P, UNIDADEMEDIDA UN ' +
           ' WHERE EM.CODPRODUTO = p.CODPRODUTO ' +
           '   AND P.UNIDADEMEDIDA = UN.CODUN ' +
           '   AND em.MESANO = ' + QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date)) +
           '   AND EM.SALDOESTOQUE > 0 ' +
           '   AND NOT EXISTS (SELECT MDC.UN FROM COMPRA C, MOVIMENTODETALHE MDC ' +
           ' WHERE MDC.CODMOVIMENTO = c.CODMOVIMENTO ' +
           '   AND MDC.UN           = UN.CODUN ' +
           '   AND C.DATACOMPRA  BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
           ' ) ' +
           '   AND NOT EXISTS (SELECT MDV.UN FROM VENDA V, SERIES ss, MOVIMENTO M, MOVIMENTODETALHE MDV ' +
           ' WHERE V.SERIE = ss.SERIE ' +
           '   AND V.CODMOVIMENTO = M.CODMOVIMENTO ' +
           '   AND MDV.CODMOVIMENTO = V.CODMOVIMENTO ' +
           '   AND ss.MODELO <> ' + QuotedStr('55') +
           '   AND M.CODNATUREZA IN (12, 15) ' +
           '   AND MDV.UN           = UN.CODUN ' +
           '   AND V.DATAVENDA      BETWEEN ' +  QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) + ')');

         sdsUnimed.Open;

         while (not sdsUnimed.Eof) do
         begin
           // 0190 - Identificação das Unidades de Medida
           with Registro0190New do
           begin
             UNID  := Trim(sdsUnimed.Fields[0].AsString);
             DESCR := Trim(sdsUnimed.Fields[1].AsString);
           end;
           sdsUnimed.Next;
         end;



         // ITENS  #################
         if (cdsProduto.Active) then
           cdsProduto.Close;

         //if (codMovMin < codMovMinV) then
         //cdsProduto.Params[0].AsInteger := codMovMin;
         //else
         // cdsProduto.Params[0].AsInteger := codMovMinV;
         //if (codMovMax > codMovMaxV) then
     {    cdsProduto.Params[1].AsInteger := codMovMax;
         cdsProduto.Params[2].AsDate    := data_ini.Date;
         cdsProduto.Params[3].AsDate    := data_fim.Date;
         //else
         //  cdsProduto.Params[1].AsInteger := codMovMaxV;
         cdsProduto.Open;
         While (not cdsProduto.Eof) do
         begin
           // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
           with Registro0200New do
           begin
             COD_ITEM     := FormatFloat('000000',cdsProdutoCODPRODUTO.AsInteger);
             DESCR_ITEM   := Trim(cdsProdutoPRODUTO.AsString);
             COD_BARRA    := '';
             UNID_INV     := Trim(cdsProdutoUN.AsString);
             TIPO_ITEM    := tiMercadoriaRevenda;
             COD_NCM      := Trim(cdsProdutoNCM.AsString);
             COD_GEN      := '';
             ALIQ_ICMS    := 0;
           end;
           cdsProduto.Next;
         end;     }
           if (cdsProduto.Active) then
             cdsProduto.Close;

           cdsProduto.CommandText := 'SELECT DISTINCT DET.CODPRODUTO, PRO.CODPRO, ' +
           ' PRO.NCM, PRO.PRODUTO, DET.UN ' +
           ' FROM MOVIMENTO MOV, MOVIMENTODETALHE DET, PRODUTOS PRO ' +
           ' WHERE MOV.CODMOVIMENTO = DET.CODMOVIMENTO ' +
           ' AND PRO.CODPRODUTO     = DET.CODPRODUTO ' +
           ' AND (MOV.CODNATUREZA IN (4, 12, 15 )) ' +
           ' AND ((EXISTS (SELECT C.CODMOVIMENTO FROM COMPRA C ' +
           ' WHERE C.CODMOVIMENTO = MOV.CODMOVIMENTO  ' +
           '   AND C.DATACOMPRA BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +
           ' )) ' +
           ')';
           cdsProduto.Open;
           {  SPED ICMS NAO PRECISO
                     '  OR (EXISTS (SELECT V.CODMOVIMENTO FROM VENDA V, SERIES ss ' +
           ' WHERE ss.SERIE = V.SERIE ' +
           '   AND V.CODMOVIMENTO = MOV.CODMOVIMENTO ' +
           '   AND ss.MODELO <> ' + QuotedStr('55') +
           '   AND V.DATAVENDA BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_ini.Date)) +
           '   AND ' + QuotedStr(formatdatetime('mm/dd/yyyy', data_fim.Date)) +}
           While (not cdsProduto.Eof) do
           begin
             // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
             with Registro0200New do
             begin
               COD_ITEM     := FormatFloat('000000',cdsProdutoCODPRODUTO.AsInteger);
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

           if (cdsProduto.Active) then
             cdsProduto.Close;

           // INVENTARIO
           cdsProduto.CommandText := 'SELECT DISTINCT P.CODPRODUTO, P.CODPRO, ' +
             ' P.NCM, P.PRODUTO, P.UNIDADEMEDIDA UN ' +
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
             // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
             with Registro0200New do
             begin
               COD_ITEM     := FormatFloat('000000',cdsProdutoCODPRODUTO.AsInteger);
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

         // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS  *****  PARA IMOBILIZADO *****
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
begin
  // Alimenta o componente com informações para gerar todos os registros do
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
      IND_MOV := imComDados;
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
            if (Length(cdsCompraMODELO.AsString) = 1) then
              COD_MOD       := trim('0' + cdsCompraMODELO.AsString)
            else
              COD_MOD       := cdsCompraMODELO.AsString; //'55'; //COD_MOD	Código do modelo do documento fiscal, conforme a Tabela 4.1.1 (Código 02 – Nota Fiscal de Venda a Consumidor)	C	002*
            if (cdsCompraSERIE.AsString = '1A') then
              COD_MOD       := '01';
            COD_SIT       := sdRegular;
            if (Length(cdsCompraSERIE.AsString) = 1) then
              SER           := trim('00' + Trim(cdsCompraSERIE.AsString)) //04	SER	Série do documento fiscal	C	003	-
            else if (Length(cdsCompraSERIE.AsString) = 2) then
              SER           := trim('0' + Trim(cdsCompraSERIE.AsString)) //04	SER	Série do documento fiscal	C	003	-
            else
              SER           := Trim(cdsCompraSERIE.AsString); //04	SER	Série do documento fiscal	C	003	-
            NUM_DOC       := IntToStr(cdsCompraNOTAFISCAL.AsInteger);
            CHV_NFE       := Trim(copy(cdsCompraCHAVENF.AsString,0,44));
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
            VL_BC_ICMS    := cdsCompraBASE_ICMS.AsFloat;
            VL_ICMS       := cdsCompraVALOR_ICMS.AsFloat;
            VL_BC_ICMS_ST := cdsCompraICMS_BASE_ST.AsFloat;
            VL_ICMS_ST    := cdsCompraICMS_ST.AsFloat;
            VL_IPI        := cdsCompraIPI.AsFloat;
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
              //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
              with RegistroC170New do   //Inicio Adicionar os Itens:
              begin
                NUM_ITEM         := FormatFloat('000', IItens);
                COD_ITEM         := FormatFloat('000000', cdsCompraDetCODPRODUTO.AsInteger);
                DESCR_COMPL      := cdsCompraDetDESCPRODUTO.AsString;
                QTD              := cdsCompraDetQUANTIDADE.AsFloat;
                UNID             := Trim(cdsCompraDetUN.AsString);
                VL_ITEM          := cdsCompraDetPRECO.AsFloat;
                VL_DESC          := 0;
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
            // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
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
                COD_OBS       := '';
              end;
              cdsC190.next;

            end;


          codParticip := cdsCompraCODFORNECEDOR.AsInteger;
          cdsCompra.Next;
        end; // FIM DO WHILE DE COMPRAS
        end;

        // FIM BLOCO COMPRAS ######################


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
              if (Length(cdsNFVendaMODELO.AsString) = 1) then
                COD_MOD       := trim('0' + cdsNFVendaMODELO.AsString)
              else
                COD_MOD       := cdsNFVendaMODELO.AsString; //COD_MOD	Código do modelo do documento fiscal, conforme a Tabela 4.1.1 (Código 02 – Nota Fiscal de Venda a Consumidor)	C	002*
              COD_SIT       := sdRegular;
              if (Length(cdsNFVendaSERIE.AsString) = 1) then
                SER           := trim('00' + trim(cdsNFVendaSERIE.AsString)) //04	SER	Série do documento fiscal	C	003	-
              else if (Length(cdsNFVendaSERIE.AsString) = 2) then
                SER           := trim('0' + trim(cdsNFVendaSERIE.AsString)) //04	SER	Série do documento fiscal	C	003	-
              else
                SER           := trim(cdsNFVendaSERIE.AsString); //04	SER	Série do documento fiscal	C	003	-
              NUM_DOC       := IntToStr(cdsNFVendaNOTAFISCAL.AsInteger);
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
              if (COD_MOD <> '55') then
              begin
                { Para NF de SAIDA nao precisa registro C170
                While not cdsItens.Eof do
                begin
                  //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
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
                    COD_ENQ          := '';
                    VL_BC_IPI        := cdsItensVLR_BASEICMS.AsFloat;
                    ALIQ_IPI         := cdsItensVIPI.AsFloat;
                    if (VL_BC_IPI > 0) then
                      ALIQ_IPI       := SimpleRoundTo(((cdsItensVIPI.AsFloat/VL_BC_IPI)*100),(-2));
                    VL_IPI           := cdsItensVIPI.AsFloat;
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
                 }
              end;
            end;

            // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
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
                COD_OBS       := '';
              end;
              cdsVC190.next;
            end;
            codParticip := cdsNFVendaCODCLIENTE.AsInteger;
            cdsNFVenda.Next;
          end; // FIM DO WHILE DE VENDAS
          // FIM BLOCO VENDAS #######################
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
            TP_LIGACAO := tlTrifasico;            // 3 - Trifásico
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
  end;
  ProgressBar1.Visible := False ;
end;

procedure TfNfeIcms.blocoD;
begin
  
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
  // Informa o pasta onde será salvo o arquivo TXT.
  ACBrSPEDFiscal1.Path := 'c:\home\';
  ACBrSPEDFiscal1.Arquivo := edtFile.Text;


  blocoO; // FEITO 12/01/2013 - Carlos
  bloco1;
  //blocoA; // DOCUMENTOS FISCAIS - SERVIÇOS (NÃO SUJEITOS AO ICMS)
  blocoC;  // Linha do exemplo 430
  //blocoD;  // DOCUMENTOS FISCAIS - SERVIÇOS (ICMS)

  //bloco E - Apuração do ICMS e do IPI
  bloco_E;

  //bloco G - Controle do Crédito de ICMS do Ativo Permanente – CIAP

  //bloco H - Inventário Físico
  if (chkInventario.Checked) then
    blocoH;

  // Método que gera o arquivo TXT.
  ACBrSPEDFiscal1.SaveFileTXT ;

  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os botões
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

  // Método que gera o arquivo TXT.
  ACBrSPEDfiscal1.SaveFileTXT ;
end;

procedure TfNfeIcms.FormCreate(Sender: TObject);
begin
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

  temCompra := 'N';
  if (not cdsMov.IsEmpty) then
    temCompra := 'S';

  if (cdsItens.Active) then
    cdsItens.Close;
end;

procedure TfNfeIcms.FormDestroy(Sender: TObject);
begin
  util.Free;
end;

function TfNfeIcms.validaCodMunicipio(cod: String; quem: String):String;
begin
  cod := util.RemoveChar(cod);
  result := cod;
  if (cod = '') then
    MessageDlg('Código do IBGE não preenchido para ' + quem + '.', mtWarning, [mbOK], 0);
end;

{function TfNfeIcms.cstPis(cstP: String): TACBrSituacaoTribPIS;
begin
  case StrToInt(cstP) of
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

function TfNfeIcms.cstCofins(cstC: String): TACBrSituacaoTribCOFINS;
begin
  Case StrToInt(cstC) of
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
end;}
{
function TfNfeIcms.cstIcms(cstI: String): TACBrSituacaoTribICMS;
begin
  Case StrtoInt(CstI) of
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
begin
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
      MessageDlg('No Parametro FORNECEDORENERGIA informar no Registro D1 o tipo de ligação (Monofasico, Bifasico ou Trifasico).', mtWarning, [mbOK], 0);
      Exit;
    end;
    tipoLigacao    := dm.cds_parametroD1.AsString;
  except
    MessageDlg('O Parametro FORNECEDORENERGIA não está correto, tem que ser o Código do Fornecedor.', mtWarning, [mbOK], 0);
    Exit;
  end;
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
      s := 'select  DISTINCT p.CODPRODUTO, (select EV.PRECOCUSTO * EV.SALDOESTOQUE from ESTOQUEMES EV ';
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

      with RegistroH005New do
      begin
        DT_INV := edDataInventario.Date;
        //DT_INI := edDataInventario.Date;
        //DT_FIN := edDataInventario.Date;
        VL_INV := total; // Valor do Inventario
      end;
      s := 'select DISTINCT p.CODPRODUTO, (select EV.PRECOCUSTO from ESTOQUEMES EV ';
      s := s + ' WHERE EV.MESANO = ' + QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date));
      s := s + '   AND EV.CODPRODUTO  = p.CODPRODUTO ' ;
      s := s + '   AND EV.CENTROCUSTO = 51 ';
      s := s + ') PRECOCUSTO ';
      s := s + ' , (select EV.SALDOESTOQUE from ESTOQUEMES EV ';
      s := s + ' WHERE EV.MESANO = ' + QuotedStr(formatdatetime('mm/dd/yyyy', edDataInventario.Date));
      s := s + '   AND EV.CODPRODUTO  = p.CODPRODUTO ' ;
      s := s + '   AND EV.CENTROCUSTO = 51 ';
      s := s + ') ESTOQUE ';
      s := s + ', p.UNIDADEMEDIDA ';
      s := s + ' from produtos p ';
      s := s + ' where ((p.usa is null) or (p.usa = ' + QuotedStr('S') + ')) ';
      s := s + ' and ((p.TIPO is null) or (p.TIPO <> ' + QuotedStr('SERV') + ')) ';
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
          COD_ITEM := FormatFloat('000000', sqlInventario.FieldByName('CODPRODUTO').AsInteger);
          UNID     := sqlInventario.FieldByName('UNIDADEMEDIDA').AsString;
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

end.
