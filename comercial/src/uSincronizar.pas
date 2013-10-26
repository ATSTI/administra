unit uSincronizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, StdCtrls, Buttons,
  TFlatGaugeUnit, DBXpress;

type
  TfSincronizar = class(TForm)
    FlatGauge1: TFlatGauge;
    btnExpProd: TBitBtn;
    btnExpCli: TBitBtn;
    sProdutos: TSQLDataSet;
    seProdutos: TSQLDataSet;
    sCliente: TSQLDataSet;
    pProdutos: TDataSetProvider;
    peProdutos: TDataSetProvider;
    pCliente: TDataSetProvider;
    cProdutos: TClientDataSet;
    ceProdutos: TClientDataSet;
    cCliente: TClientDataSet;
    seCliente: TSQLDataSet;
    peCliente: TDataSetProvider;
    ceCliente: TClientDataSet;
    sProdutosCODPRODUTO: TIntegerField;
    sProdutosFAMILIA: TStringField;
    sProdutosCATEGORIA: TStringField;
    sProdutosMARCA: TStringField;
    sProdutosUNIDADEMEDIDA: TStringField;
    sProdutosDATAULTIMACOMPRA: TDateField;
    sProdutosESTOQUEMAXIMO: TFloatField;
    sProdutosESTOQUEATUAL: TFloatField;
    sProdutosESTOQUEREPOSICAO: TFloatField;
    sProdutosESTOQUEMINIMO: TFloatField;
    sProdutosVALORUNITARIOATUAL: TFloatField;
    sProdutosVALORUNITARIOANTERIOR: TFloatField;
    sProdutosICMS: TFloatField;
    sProdutosCODALMOXARIFADO: TIntegerField;
    sProdutosIPI: TFloatField;
    sProdutosCLASSIFIC_FISCAL: TStringField;
    sProdutosCST: TStringField;
    sProdutosBASE_ICMS: TFloatField;
    sProdutosPRODUTO: TStringField;
    sProdutosPRECOMEDIO: TBCDField;
    sProdutosCOD_COMISSAO: TIntegerField;
    sProdutosMARGEM_LUCRO: TFloatField;
    sProdutosCOD_BARRA: TStringField;
    sProdutosVALOR_PRAZO: TFloatField;
    sProdutosTIPO: TStringField;
    sProdutosCONTA_DESPESA: TStringField;
    sProdutosCONTA_RECEITA: TStringField;
    sProdutosCONTA_ESTOQUE: TStringField;
    sProdutosRATEIO: TStringField;
    sProdutosCODPRO: TStringField;
    sProdutosQTDE_PCT: TFloatField;
    sProdutosPESO_QTDE: TFloatField;
    sProdutosDATACADASTRO: TSQLTimeStampField;
    sProdutosMARGEM: TFloatField;
    sProdutosPRO_COD: TStringField;
    sProdutosDATAGRAV: TDateField;
    sProdutosCODFORN: TStringField;
    sProdutosFOTOPRODUTO: TStringField;
    sProdutosLOTES: TStringField;
    sProdutosUSA: TStringField;
    sProdutosLOCALIZACAO: TStringField;
    sProdutosTIPOPRECOVENDA: TStringField;
    sProdutosVALORMINIMO: TFloatField;
    sProdutosVALORCOMISSAO: TFloatField;
    sProdutosGERADESCONTO: TStringField;
    sProdutosIMPRIMIR: TStringField;
    sProdutosORIGEM: TIntegerField;
    sProdutosNCM: TStringField;
    sProdutosIMPRESSORA_1: TStringField;
    sProdutosIMPRESSORA_2: TStringField;
    sProdutosIMPRESSORA_3: TStringField;
    sProdutosQTD: TIntegerField;
    sProdutosTAM_LOTE: TIntegerField;
    sProdutosOBS: TStringField;
    seProdutosCODPRODUTO: TIntegerField;
    seProdutosFAMILIA: TStringField;
    seProdutosCATEGORIA: TStringField;
    seProdutosMARCA: TStringField;
    seProdutosUNIDADEMEDIDA: TStringField;
    seProdutosDATAULTIMACOMPRA: TDateField;
    seProdutosESTOQUEMAXIMO: TFloatField;
    seProdutosESTOQUEATUAL: TFloatField;
    seProdutosESTOQUEREPOSICAO: TFloatField;
    seProdutosESTOQUEMINIMO: TFloatField;
    seProdutosVALORUNITARIOATUAL: TFloatField;
    seProdutosVALORUNITARIOANTERIOR: TFloatField;
    seProdutosICMS: TFloatField;
    seProdutosCODALMOXARIFADO: TIntegerField;
    seProdutosIPI: TFloatField;
    seProdutosCLASSIFIC_FISCAL: TStringField;
    seProdutosCST: TStringField;
    seProdutosBASE_ICMS: TFloatField;
    seProdutosPRODUTO: TStringField;
    seProdutosPRECOMEDIO: TBCDField;
    seProdutosCOD_COMISSAO: TIntegerField;
    seProdutosMARGEM_LUCRO: TFloatField;
    seProdutosCOD_BARRA: TStringField;
    seProdutosVALOR_PRAZO: TFloatField;
    seProdutosTIPO: TStringField;
    seProdutosCONTA_DESPESA: TStringField;
    seProdutosCONTA_RECEITA: TStringField;
    seProdutosCONTA_ESTOQUE: TStringField;
    seProdutosRATEIO: TStringField;
    seProdutosCODPRO: TStringField;
    seProdutosQTDE_PCT: TFloatField;
    seProdutosPESO_QTDE: TFloatField;
    seProdutosDATACADASTRO: TSQLTimeStampField;
    seProdutosMARGEM: TFloatField;
    seProdutosPRO_COD: TStringField;
    seProdutosDATAGRAV: TDateField;
    seProdutosCODFORN: TStringField;
    seProdutosFOTOPRODUTO: TStringField;
    seProdutosLOTES: TStringField;
    seProdutosUSA: TStringField;
    seProdutosLOCALIZACAO: TStringField;
    seProdutosTIPOPRECOVENDA: TStringField;
    seProdutosVALORMINIMO: TFloatField;
    seProdutosVALORCOMISSAO: TFloatField;
    seProdutosGERADESCONTO: TStringField;
    seProdutosIMPRIMIR: TStringField;
    seProdutosORIGEM: TIntegerField;
    seProdutosNCM: TStringField;
    seProdutosIMPRESSORA_1: TStringField;
    seProdutosIMPRESSORA_2: TStringField;
    seProdutosIMPRESSORA_3: TStringField;
    seProdutosQTD: TIntegerField;
    seProdutosTAM_LOTE: TIntegerField;
    seProdutosOBS: TStringField;
    ceProdutosCODPRODUTO: TIntegerField;
    ceProdutosFAMILIA: TStringField;
    ceProdutosCATEGORIA: TStringField;
    ceProdutosMARCA: TStringField;
    ceProdutosUNIDADEMEDIDA: TStringField;
    ceProdutosDATAULTIMACOMPRA: TDateField;
    ceProdutosESTOQUEMAXIMO: TFloatField;
    ceProdutosESTOQUEATUAL: TFloatField;
    ceProdutosESTOQUEREPOSICAO: TFloatField;
    ceProdutosESTOQUEMINIMO: TFloatField;
    ceProdutosVALORUNITARIOATUAL: TFloatField;
    ceProdutosVALORUNITARIOANTERIOR: TFloatField;
    ceProdutosICMS: TFloatField;
    ceProdutosCODALMOXARIFADO: TIntegerField;
    ceProdutosIPI: TFloatField;
    ceProdutosCLASSIFIC_FISCAL: TStringField;
    ceProdutosCST: TStringField;
    ceProdutosBASE_ICMS: TFloatField;
    ceProdutosPRODUTO: TStringField;
    ceProdutosPRECOMEDIO: TBCDField;
    ceProdutosCOD_COMISSAO: TIntegerField;
    ceProdutosMARGEM_LUCRO: TFloatField;
    ceProdutosCOD_BARRA: TStringField;
    ceProdutosVALOR_PRAZO: TFloatField;
    ceProdutosTIPO: TStringField;
    ceProdutosCONTA_DESPESA: TStringField;
    ceProdutosCONTA_RECEITA: TStringField;
    ceProdutosCONTA_ESTOQUE: TStringField;
    ceProdutosRATEIO: TStringField;
    ceProdutosCODPRO: TStringField;
    ceProdutosQTDE_PCT: TFloatField;
    ceProdutosPESO_QTDE: TFloatField;
    ceProdutosDATACADASTRO: TSQLTimeStampField;
    ceProdutosMARGEM: TFloatField;
    ceProdutosPRO_COD: TStringField;
    ceProdutosDATAGRAV: TDateField;
    ceProdutosCODFORN: TStringField;
    ceProdutosFOTOPRODUTO: TStringField;
    ceProdutosLOTES: TStringField;
    ceProdutosUSA: TStringField;
    ceProdutosLOCALIZACAO: TStringField;
    ceProdutosTIPOPRECOVENDA: TStringField;
    ceProdutosVALORMINIMO: TFloatField;
    ceProdutosVALORCOMISSAO: TFloatField;
    ceProdutosGERADESCONTO: TStringField;
    ceProdutosIMPRIMIR: TStringField;
    ceProdutosORIGEM: TIntegerField;
    ceProdutosNCM: TStringField;
    ceProdutosIMPRESSORA_1: TStringField;
    ceProdutosIMPRESSORA_2: TStringField;
    ceProdutosIMPRESSORA_3: TStringField;
    ceProdutosQTD: TIntegerField;
    ceProdutosTAM_LOTE: TIntegerField;
    ceProdutosOBS: TStringField;
    cProdutosCODPRODUTO: TIntegerField;
    cProdutosFAMILIA: TStringField;
    cProdutosCATEGORIA: TStringField;
    cProdutosMARCA: TStringField;
    cProdutosUNIDADEMEDIDA: TStringField;
    cProdutosDATAULTIMACOMPRA: TDateField;
    cProdutosESTOQUEMAXIMO: TFloatField;
    cProdutosESTOQUEATUAL: TFloatField;
    cProdutosESTOQUEREPOSICAO: TFloatField;
    cProdutosESTOQUEMINIMO: TFloatField;
    cProdutosVALORUNITARIOATUAL: TFloatField;
    cProdutosVALORUNITARIOANTERIOR: TFloatField;
    cProdutosICMS: TFloatField;
    cProdutosCODALMOXARIFADO: TIntegerField;
    cProdutosIPI: TFloatField;
    cProdutosCLASSIFIC_FISCAL: TStringField;
    cProdutosCST: TStringField;
    cProdutosBASE_ICMS: TFloatField;
    cProdutosPRODUTO: TStringField;
    cProdutosPRECOMEDIO: TBCDField;
    cProdutosCOD_COMISSAO: TIntegerField;
    cProdutosMARGEM_LUCRO: TFloatField;
    cProdutosCOD_BARRA: TStringField;
    cProdutosVALOR_PRAZO: TFloatField;
    cProdutosTIPO: TStringField;
    cProdutosCONTA_DESPESA: TStringField;
    cProdutosCONTA_RECEITA: TStringField;
    cProdutosCONTA_ESTOQUE: TStringField;
    cProdutosRATEIO: TStringField;
    cProdutosCODPRO: TStringField;
    cProdutosQTDE_PCT: TFloatField;
    cProdutosPESO_QTDE: TFloatField;
    cProdutosDATACADASTRO: TSQLTimeStampField;
    cProdutosMARGEM: TFloatField;
    cProdutosPRO_COD: TStringField;
    cProdutosDATAGRAV: TDateField;
    cProdutosCODFORN: TStringField;
    cProdutosFOTOPRODUTO: TStringField;
    cProdutosLOTES: TStringField;
    cProdutosUSA: TStringField;
    cProdutosLOCALIZACAO: TStringField;
    cProdutosTIPOPRECOVENDA: TStringField;
    cProdutosVALORMINIMO: TFloatField;
    cProdutosVALORCOMISSAO: TFloatField;
    cProdutosGERADESCONTO: TStringField;
    cProdutosIMPRIMIR: TStringField;
    cProdutosORIGEM: TIntegerField;
    cProdutosNCM: TStringField;
    cProdutosIMPRESSORA_1: TStringField;
    cProdutosIMPRESSORA_2: TStringField;
    cProdutosIMPRESSORA_3: TStringField;
    cProdutosQTD: TIntegerField;
    cProdutosTAM_LOTE: TIntegerField;
    cProdutosOBS: TStringField;
    seClienteCODCLIENTE: TIntegerField;
    seClienteNOMECLIENTE: TStringField;
    seClienteRAZAOSOCIAL: TStringField;
    seClienteCONTATO: TStringField;
    seClienteTIPOFIRMA: TSmallintField;
    seClienteCPF: TStringField;
    seClienteCNPJ: TStringField;
    seClienteINSCESTADUAL: TStringField;
    seClienteRG: TStringField;
    seClienteSEGMENTO: TSmallintField;
    seClienteREGIAO: TSmallintField;
    seClienteLIMITECREDITO: TFloatField;
    seClienteDATACADASTRO: TDateField;
    seClienteCODUSUARIO: TIntegerField;
    seClienteSTATUS: TSmallintField;
    seClienteHOMEPAGE: TStringField;
    seClientePRAZORECEBIMENTO: TSmallintField;
    seClientePRAZOENTREGA: TSmallintField;
    seClienteCODBANCO: TSmallintField;
    seClienteBASE_ICMS: TSmallintField;
    seClienteDATANASC: TDateField;
    seClienteCONTA_CLIENTE: TStringField;
    seClienteOBS: TStringField;
    seClienteTEM_IE: TStringField;
    seClienteDATARESC: TDateField;
    seClienteNOMEMAE: TStringField;
    seClienteSEXO: TStringField;
    seClienteFORMA_CORRESPOND: TStringField;
    seClienteGRUPO_CLIENTE: TStringField;
    seClienteCODINCLUCANC: TIntegerField;
    seClienteEXIST_COBERT: TStringField;
    seClienteEXISTCOPART: TStringField;
    seClienteDATAREINC: TDateField;
    seClienteGERAAVISO: TStringField;
    seClienteGERAENV: TStringField;
    seClienteGERABOL: TStringField;
    seClienteEMVIAGEM: TStringField;
    seClienteDTAALTERA: TDateField;
    seClienteSERIELETRA: TStringField;
    seClienteSERIE: TStringField;
    seClienteRA: TStringField;
    seClienteCURSO: TStringField;
    seClienteIP: TStringField;
    seClienteN_CONTRATO: TStringField;
    seClienteMAC: TStringField;
    seClienteMARCA: TStringField;
    seClienteBANDA_UPLOAD: TStringField;
    seClienteBANDA_DOWLOAD: TStringField;
    seClienteTORRE_CONECCAO: TStringField;
    seClienteCOD_FAIXA: TIntegerField;
    seClienteDESCONTO: TFloatField;
    seClienteMENSALIDADE: TFloatField;
    seClienteANUIDADE: TFloatField;
    seClientePARCELA: TIntegerField;
    seClientePARCELAGERADAS: TIntegerField;
    seClienteNUMERO: TIntegerField;
    seClienteDATANASCIMENTO: TSQLTimeStampField;
    seClienteANOLETIVO: TStringField;
    seClienteSITUACAOESCOLAR: TStringField;
    seClienteRGMAE: TStringField;
    seClienteCPFMAE: TStringField;
    seClientePAI: TStringField;
    seClienteRGPAI: TStringField;
    seClienteCPFPAI: TStringField;
    seClienteLANCADOCLASSE: TIntegerField;
    seClienteTRANSPORTE: TStringField;
    seClienteCIDADENASC: TStringField;
    seClienteUFNASC: TStringField;
    seClienteNACIONALIDADE: TStringField;
    seClienteCERTIDAONASCNUM: TStringField;
    seClienteLIVRONASC: TStringField;
    seClienteFLLIVRONASC: TStringField;
    seClienteLOCALTRABPAI: TStringField;
    seClienteLOCALTRABMAE: TStringField;
    seClienteTELTRABPAI: TStringField;
    seClienteTELTRABMAE: TStringField;
    seClienteINFONECESSARIAS: TStringField;
    seClienteCARTEIRAVACINACAO: TStringField;
    seClienteRAPRODESP: TStringField;
    seClienteLOCALTRABALUNO: TStringField;
    seClienteTELTRABALUNO: TStringField;
    seClienteRAPROD: TStringField;
    seClienteCERT_NAS_COMARCA: TStringField;
    seClienteCERT_NAS_UF: TStringField;
    seClienteCERT_NAS_MUNICIPIO: TStringField;
    seClienteCERT_NAS_DISTRITO: TStringField;
    seClienteCERT_NAS_SUBDISTRITO: TStringField;
    seClienteDIVERSO1: TStringField;
    seClienteDIVERSO2: TStringField;
    seClienteDATAEMISSAORG: TDateField;
    seClienteESTADORG: TStringField;
    seClienteCOMUNICAALUNO: TStringField;
    seClienteFONEMAE: TStringField;
    seClienteCELULARMAE: TStringField;
    seClienteCOMUNICAMAE: TStringField;
    seClienteFONEPAI: TStringField;
    seClienteCELULARPAI: TStringField;
    seClienteCOMUNICAPAI: TStringField;
    seClienteVALOR_MATRICULA: TFloatField;
    seClienteDATATRANSF: TDateField;
    seClienteCOR_RACA: TStringField;
    seClientePERIODO: TStringField;
    seClienteFOTO: TStringField;
    seClienteDATA_MATRICULA: TSQLTimeStampField;
    seClienteCODRESPONSAVEL: TIntegerField;
    seClienteID_COB: TIntegerField;
    seClienteCOD_TRANPORTADORA: TIntegerField;
    seClienteBLOQUEIO: TStringField;
    seClienteCODCLI: TStringField;
    seClienteCFOP: TStringField;
    seClienteCOD_CLI: TStringField;
    seClienteCORTESIA: TStringField;
    seClienteVALOR_CONSUMO: TFloatField;
    seClienteVALOR_CORTESIA: TFloatField;
    seClienteE_FORNECEDOR: TStringField;
    seClienteCODFORNECEDOR: TIntegerField;
    seClienteCARGOFUNCAO: TIntegerField;
    seClienteSUFRAMA: TStringField;
    seClienteCODFISCAL: TStringField;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sClienteRAZAOSOCIAL: TStringField;
    sClienteCONTATO: TStringField;
    sClienteTIPOFIRMA: TSmallintField;
    sClienteCPF: TStringField;
    sClienteCNPJ: TStringField;
    sClienteINSCESTADUAL: TStringField;
    sClienteRG: TStringField;
    sClienteSEGMENTO: TSmallintField;
    sClienteREGIAO: TSmallintField;
    sClienteLIMITECREDITO: TFloatField;
    sClienteDATACADASTRO: TDateField;
    sClienteCODUSUARIO: TIntegerField;
    sClienteSTATUS: TSmallintField;
    sClienteHOMEPAGE: TStringField;
    sClientePRAZORECEBIMENTO: TSmallintField;
    sClientePRAZOENTREGA: TSmallintField;
    sClienteCODBANCO: TSmallintField;
    sClienteBASE_ICMS: TSmallintField;
    sClienteDATANASC: TDateField;
    sClienteCONTA_CLIENTE: TStringField;
    sClienteOBS: TStringField;
    sClienteTEM_IE: TStringField;
    sClienteDATARESC: TDateField;
    sClienteNOMEMAE: TStringField;
    sClienteSEXO: TStringField;
    sClienteFORMA_CORRESPOND: TStringField;
    sClienteGRUPO_CLIENTE: TStringField;
    sClienteCODINCLUCANC: TIntegerField;
    sClienteEXIST_COBERT: TStringField;
    sClienteEXISTCOPART: TStringField;
    sClienteDATAREINC: TDateField;
    sClienteGERAAVISO: TStringField;
    sClienteGERAENV: TStringField;
    sClienteGERABOL: TStringField;
    sClienteEMVIAGEM: TStringField;
    sClienteDTAALTERA: TDateField;
    sClienteSERIELETRA: TStringField;
    sClienteSERIE: TStringField;
    sClienteRA: TStringField;
    sClienteCURSO: TStringField;
    sClienteIP: TStringField;
    sClienteN_CONTRATO: TStringField;
    sClienteMAC: TStringField;
    sClienteMARCA: TStringField;
    sClienteBANDA_UPLOAD: TStringField;
    sClienteBANDA_DOWLOAD: TStringField;
    sClienteTORRE_CONECCAO: TStringField;
    sClienteCOD_FAIXA: TIntegerField;
    sClienteDESCONTO: TFloatField;
    sClienteMENSALIDADE: TFloatField;
    sClienteANUIDADE: TFloatField;
    sClientePARCELA: TIntegerField;
    sClientePARCELAGERADAS: TIntegerField;
    sClienteNUMERO: TIntegerField;
    sClienteDATANASCIMENTO: TSQLTimeStampField;
    sClienteANOLETIVO: TStringField;
    sClienteSITUACAOESCOLAR: TStringField;
    sClienteRGMAE: TStringField;
    sClienteCPFMAE: TStringField;
    sClientePAI: TStringField;
    sClienteRGPAI: TStringField;
    sClienteCPFPAI: TStringField;
    sClienteLANCADOCLASSE: TIntegerField;
    sClienteTRANSPORTE: TStringField;
    sClienteCIDADENASC: TStringField;
    sClienteUFNASC: TStringField;
    sClienteNACIONALIDADE: TStringField;
    sClienteCERTIDAONASCNUM: TStringField;
    sClienteLIVRONASC: TStringField;
    sClienteFLLIVRONASC: TStringField;
    sClienteLOCALTRABPAI: TStringField;
    sClienteLOCALTRABMAE: TStringField;
    sClienteTELTRABPAI: TStringField;
    sClienteTELTRABMAE: TStringField;
    sClienteINFONECESSARIAS: TStringField;
    sClienteCARTEIRAVACINACAO: TStringField;
    sClienteRAPRODESP: TStringField;
    sClienteLOCALTRABALUNO: TStringField;
    sClienteTELTRABALUNO: TStringField;
    sClienteRAPROD: TStringField;
    sClienteCERT_NAS_COMARCA: TStringField;
    sClienteCERT_NAS_UF: TStringField;
    sClienteCERT_NAS_MUNICIPIO: TStringField;
    sClienteCERT_NAS_DISTRITO: TStringField;
    sClienteCERT_NAS_SUBDISTRITO: TStringField;
    sClienteDIVERSO1: TStringField;
    sClienteDIVERSO2: TStringField;
    sClienteDATAEMISSAORG: TDateField;
    sClienteESTADORG: TStringField;
    sClienteCOMUNICAALUNO: TStringField;
    sClienteFONEMAE: TStringField;
    sClienteCELULARMAE: TStringField;
    sClienteCOMUNICAMAE: TStringField;
    sClienteFONEPAI: TStringField;
    sClienteCELULARPAI: TStringField;
    sClienteCOMUNICAPAI: TStringField;
    sClienteVALOR_MATRICULA: TFloatField;
    sClienteDATATRANSF: TDateField;
    sClienteCOR_RACA: TStringField;
    sClientePERIODO: TStringField;
    sClienteFOTO: TStringField;
    sClienteDATA_MATRICULA: TSQLTimeStampField;
    sClienteCODRESPONSAVEL: TIntegerField;
    sClienteID_COB: TIntegerField;
    sClienteCOD_TRANPORTADORA: TIntegerField;
    sClienteBLOQUEIO: TStringField;
    sClienteCODCLI: TStringField;
    sClienteCFOP: TStringField;
    sClienteCOD_CLI: TStringField;
    sClienteCORTESIA: TStringField;
    sClienteVALOR_CONSUMO: TFloatField;
    sClienteVALOR_CORTESIA: TFloatField;
    sClienteE_FORNECEDOR: TStringField;
    sClienteCODFORNECEDOR: TIntegerField;
    sClienteCARGOFUNCAO: TIntegerField;
    sClienteSUFRAMA: TStringField;
    sClienteCODFISCAL: TStringField;
    ceClienteCODCLIENTE: TIntegerField;
    ceClienteNOMECLIENTE: TStringField;
    ceClienteRAZAOSOCIAL: TStringField;
    ceClienteCONTATO: TStringField;
    ceClienteTIPOFIRMA: TSmallintField;
    ceClienteCPF: TStringField;
    ceClienteCNPJ: TStringField;
    ceClienteINSCESTADUAL: TStringField;
    ceClienteRG: TStringField;
    ceClienteSEGMENTO: TSmallintField;
    ceClienteREGIAO: TSmallintField;
    ceClienteLIMITECREDITO: TFloatField;
    ceClienteDATACADASTRO: TDateField;
    ceClienteCODUSUARIO: TIntegerField;
    ceClienteSTATUS: TSmallintField;
    ceClienteHOMEPAGE: TStringField;
    ceClientePRAZORECEBIMENTO: TSmallintField;
    ceClientePRAZOENTREGA: TSmallintField;
    ceClienteCODBANCO: TSmallintField;
    ceClienteBASE_ICMS: TSmallintField;
    ceClienteDATANASC: TDateField;
    ceClienteCONTA_CLIENTE: TStringField;
    ceClienteOBS: TStringField;
    ceClienteTEM_IE: TStringField;
    ceClienteDATARESC: TDateField;
    ceClienteNOMEMAE: TStringField;
    ceClienteSEXO: TStringField;
    ceClienteFORMA_CORRESPOND: TStringField;
    ceClienteGRUPO_CLIENTE: TStringField;
    ceClienteCODINCLUCANC: TIntegerField;
    ceClienteEXIST_COBERT: TStringField;
    ceClienteEXISTCOPART: TStringField;
    ceClienteDATAREINC: TDateField;
    ceClienteGERAAVISO: TStringField;
    ceClienteGERAENV: TStringField;
    ceClienteGERABOL: TStringField;
    ceClienteEMVIAGEM: TStringField;
    ceClienteDTAALTERA: TDateField;
    ceClienteSERIELETRA: TStringField;
    ceClienteSERIE: TStringField;
    ceClienteRA: TStringField;
    ceClienteCURSO: TStringField;
    ceClienteIP: TStringField;
    ceClienteN_CONTRATO: TStringField;
    ceClienteMAC: TStringField;
    ceClienteMARCA: TStringField;
    ceClienteBANDA_UPLOAD: TStringField;
    ceClienteBANDA_DOWLOAD: TStringField;
    ceClienteTORRE_CONECCAO: TStringField;
    ceClienteCOD_FAIXA: TIntegerField;
    ceClienteDESCONTO: TFloatField;
    ceClienteMENSALIDADE: TFloatField;
    ceClienteANUIDADE: TFloatField;
    ceClientePARCELA: TIntegerField;
    ceClientePARCELAGERADAS: TIntegerField;
    ceClienteNUMERO: TIntegerField;
    ceClienteDATANASCIMENTO: TSQLTimeStampField;
    ceClienteANOLETIVO: TStringField;
    ceClienteSITUACAOESCOLAR: TStringField;
    ceClienteRGMAE: TStringField;
    ceClienteCPFMAE: TStringField;
    ceClientePAI: TStringField;
    ceClienteRGPAI: TStringField;
    ceClienteCPFPAI: TStringField;
    ceClienteLANCADOCLASSE: TIntegerField;
    ceClienteTRANSPORTE: TStringField;
    ceClienteCIDADENASC: TStringField;
    ceClienteUFNASC: TStringField;
    ceClienteNACIONALIDADE: TStringField;
    ceClienteCERTIDAONASCNUM: TStringField;
    ceClienteLIVRONASC: TStringField;
    ceClienteFLLIVRONASC: TStringField;
    ceClienteLOCALTRABPAI: TStringField;
    ceClienteLOCALTRABMAE: TStringField;
    ceClienteTELTRABPAI: TStringField;
    ceClienteTELTRABMAE: TStringField;
    ceClienteINFONECESSARIAS: TStringField;
    ceClienteCARTEIRAVACINACAO: TStringField;
    ceClienteRAPRODESP: TStringField;
    ceClienteLOCALTRABALUNO: TStringField;
    ceClienteTELTRABALUNO: TStringField;
    ceClienteRAPROD: TStringField;
    ceClienteCERT_NAS_COMARCA: TStringField;
    ceClienteCERT_NAS_UF: TStringField;
    ceClienteCERT_NAS_MUNICIPIO: TStringField;
    ceClienteCERT_NAS_DISTRITO: TStringField;
    ceClienteCERT_NAS_SUBDISTRITO: TStringField;
    ceClienteDIVERSO1: TStringField;
    ceClienteDIVERSO2: TStringField;
    ceClienteDATAEMISSAORG: TDateField;
    ceClienteESTADORG: TStringField;
    ceClienteCOMUNICAALUNO: TStringField;
    ceClienteFONEMAE: TStringField;
    ceClienteCELULARMAE: TStringField;
    ceClienteCOMUNICAMAE: TStringField;
    ceClienteFONEPAI: TStringField;
    ceClienteCELULARPAI: TStringField;
    ceClienteCOMUNICAPAI: TStringField;
    ceClienteVALOR_MATRICULA: TFloatField;
    ceClienteDATATRANSF: TDateField;
    ceClienteCOR_RACA: TStringField;
    ceClientePERIODO: TStringField;
    ceClienteFOTO: TStringField;
    ceClienteDATA_MATRICULA: TSQLTimeStampField;
    ceClienteCODRESPONSAVEL: TIntegerField;
    ceClienteID_COB: TIntegerField;
    ceClienteCOD_TRANPORTADORA: TIntegerField;
    ceClienteBLOQUEIO: TStringField;
    ceClienteCODCLI: TStringField;
    ceClienteCFOP: TStringField;
    ceClienteCOD_CLI: TStringField;
    ceClienteCORTESIA: TStringField;
    ceClienteVALOR_CONSUMO: TFloatField;
    ceClienteVALOR_CORTESIA: TFloatField;
    ceClienteE_FORNECEDOR: TStringField;
    ceClienteCODFORNECEDOR: TIntegerField;
    ceClienteCARGOFUNCAO: TIntegerField;
    ceClienteSUFRAMA: TStringField;
    ceClienteCODFISCAL: TStringField;
    cClienteCODCLIENTE: TIntegerField;
    cClienteNOMECLIENTE: TStringField;
    cClienteRAZAOSOCIAL: TStringField;
    cClienteCONTATO: TStringField;
    cClienteTIPOFIRMA: TSmallintField;
    cClienteCPF: TStringField;
    cClienteCNPJ: TStringField;
    cClienteINSCESTADUAL: TStringField;
    cClienteRG: TStringField;
    cClienteSEGMENTO: TSmallintField;
    cClienteREGIAO: TSmallintField;
    cClienteLIMITECREDITO: TFloatField;
    cClienteDATACADASTRO: TDateField;
    cClienteCODUSUARIO: TIntegerField;
    cClienteSTATUS: TSmallintField;
    cClienteHOMEPAGE: TStringField;
    cClientePRAZORECEBIMENTO: TSmallintField;
    cClientePRAZOENTREGA: TSmallintField;
    cClienteCODBANCO: TSmallintField;
    cClienteBASE_ICMS: TSmallintField;
    cClienteDATANASC: TDateField;
    cClienteCONTA_CLIENTE: TStringField;
    cClienteOBS: TStringField;
    cClienteTEM_IE: TStringField;
    cClienteDATARESC: TDateField;
    cClienteNOMEMAE: TStringField;
    cClienteSEXO: TStringField;
    cClienteFORMA_CORRESPOND: TStringField;
    cClienteGRUPO_CLIENTE: TStringField;
    cClienteCODINCLUCANC: TIntegerField;
    cClienteEXIST_COBERT: TStringField;
    cClienteEXISTCOPART: TStringField;
    cClienteDATAREINC: TDateField;
    cClienteGERAAVISO: TStringField;
    cClienteGERAENV: TStringField;
    cClienteGERABOL: TStringField;
    cClienteEMVIAGEM: TStringField;
    cClienteDTAALTERA: TDateField;
    cClienteSERIELETRA: TStringField;
    cClienteSERIE: TStringField;
    cClienteRA: TStringField;
    cClienteCURSO: TStringField;
    cClienteIP: TStringField;
    cClienteN_CONTRATO: TStringField;
    cClienteMAC: TStringField;
    cClienteMARCA: TStringField;
    cClienteBANDA_UPLOAD: TStringField;
    cClienteBANDA_DOWLOAD: TStringField;
    cClienteTORRE_CONECCAO: TStringField;
    cClienteCOD_FAIXA: TIntegerField;
    cClienteDESCONTO: TFloatField;
    cClienteMENSALIDADE: TFloatField;
    cClienteANUIDADE: TFloatField;
    cClientePARCELA: TIntegerField;
    cClientePARCELAGERADAS: TIntegerField;
    cClienteNUMERO: TIntegerField;
    cClienteDATANASCIMENTO: TSQLTimeStampField;
    cClienteANOLETIVO: TStringField;
    cClienteSITUACAOESCOLAR: TStringField;
    cClienteRGMAE: TStringField;
    cClienteCPFMAE: TStringField;
    cClientePAI: TStringField;
    cClienteRGPAI: TStringField;
    cClienteCPFPAI: TStringField;
    cClienteLANCADOCLASSE: TIntegerField;
    cClienteTRANSPORTE: TStringField;
    cClienteCIDADENASC: TStringField;
    cClienteUFNASC: TStringField;
    cClienteNACIONALIDADE: TStringField;
    cClienteCERTIDAONASCNUM: TStringField;
    cClienteLIVRONASC: TStringField;
    cClienteFLLIVRONASC: TStringField;
    cClienteLOCALTRABPAI: TStringField;
    cClienteLOCALTRABMAE: TStringField;
    cClienteTELTRABPAI: TStringField;
    cClienteTELTRABMAE: TStringField;
    cClienteINFONECESSARIAS: TStringField;
    cClienteCARTEIRAVACINACAO: TStringField;
    cClienteRAPRODESP: TStringField;
    cClienteLOCALTRABALUNO: TStringField;
    cClienteTELTRABALUNO: TStringField;
    cClienteRAPROD: TStringField;
    cClienteCERT_NAS_COMARCA: TStringField;
    cClienteCERT_NAS_UF: TStringField;
    cClienteCERT_NAS_MUNICIPIO: TStringField;
    cClienteCERT_NAS_DISTRITO: TStringField;
    cClienteCERT_NAS_SUBDISTRITO: TStringField;
    cClienteDIVERSO1: TStringField;
    cClienteDIVERSO2: TStringField;
    cClienteDATAEMISSAORG: TDateField;
    cClienteESTADORG: TStringField;
    cClienteCOMUNICAALUNO: TStringField;
    cClienteFONEMAE: TStringField;
    cClienteCELULARMAE: TStringField;
    cClienteCOMUNICAMAE: TStringField;
    cClienteFONEPAI: TStringField;
    cClienteCELULARPAI: TStringField;
    cClienteCOMUNICAPAI: TStringField;
    cClienteVALOR_MATRICULA: TFloatField;
    cClienteDATATRANSF: TDateField;
    cClienteCOR_RACA: TStringField;
    cClientePERIODO: TStringField;
    cClienteFOTO: TStringField;
    cClienteDATA_MATRICULA: TSQLTimeStampField;
    cClienteCODRESPONSAVEL: TIntegerField;
    cClienteID_COB: TIntegerField;
    cClienteCOD_TRANPORTADORA: TIntegerField;
    cClienteBLOQUEIO: TStringField;
    cClienteCODCLI: TStringField;
    cClienteCFOP: TStringField;
    cClienteCOD_CLI: TStringField;
    cClienteCORTESIA: TStringField;
    cClienteVALOR_CONSUMO: TFloatField;
    cClienteVALOR_CORTESIA: TFloatField;
    cClienteE_FORNECEDOR: TStringField;
    cClienteCODFORNECEDOR: TIntegerField;
    cClienteCARGOFUNCAO: TIntegerField;
    cClienteSUFRAMA: TStringField;
    cClienteCODFISCAL: TStringField;
    btnExpCfisc: TBitBtn;
    sFiscal: TSQLDataSet;
    pFiscal: TDataSetProvider;
    cFiscal: TClientDataSet;
    sFiscalCOD_PROD: TIntegerField;
    sFiscalCFOP: TStringField;
    sFiscalUF: TStringField;
    sFiscalICMS_SUBST: TFloatField;
    sFiscalICMS_SUBST_IC: TFloatField;
    sFiscalICMS_SUBST_IND: TFloatField;
    sFiscalICMS: TFloatField;
    sFiscalICMS_BASE: TFloatField;
    sFiscalCST: TStringField;
    sFiscalIPI: TFloatField;
    sFiscalCSOSN: TStringField;
    sFiscalCSTIPI: TStringField;
    sFiscalCSTPIS: TStringField;
    sFiscalCSTCOFINS: TStringField;
    sFiscalPIS: TFloatField;
    sFiscalCOFINS: TFloatField;
    cFiscalCOD_PROD: TIntegerField;
    cFiscalCFOP: TStringField;
    cFiscalUF: TStringField;
    cFiscalICMS_SUBST: TFloatField;
    cFiscalICMS_SUBST_IC: TFloatField;
    cFiscalICMS_SUBST_IND: TFloatField;
    cFiscalICMS: TFloatField;
    cFiscalICMS_BASE: TFloatField;
    cFiscalCST: TStringField;
    cFiscalIPI: TFloatField;
    cFiscalCSOSN: TStringField;
    cFiscalCSTIPI: TStringField;
    cFiscalCSTPIS: TStringField;
    cFiscalCSTCOFINS: TStringField;
    cFiscalPIS: TFloatField;
    cFiscalCOFINS: TFloatField;
    seFiscal: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField3: TStringField;
    FloatField6: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    peFiscal: TDataSetProvider;
    ceFiscal: TClientDataSet;
    ceFiscalCOD_PROD: TIntegerField;
    ceFiscalCFOP: TStringField;
    ceFiscalUF: TStringField;
    ceFiscalICMS_SUBST: TFloatField;
    ceFiscalICMS_SUBST_IC: TFloatField;
    ceFiscalICMS_SUBST_IND: TFloatField;
    ceFiscalICMS: TFloatField;
    ceFiscalICMS_BASE: TFloatField;
    ceFiscalCST: TStringField;
    ceFiscalIPI: TFloatField;
    ceFiscalCSOSN: TStringField;
    ceFiscalCSTIPI: TStringField;
    ceFiscalCSTPIS: TStringField;
    ceFiscalCSTCOFINS: TStringField;
    ceFiscalPIS: TFloatField;
    ceFiscalCOFINS: TFloatField;
    seFamilia: TSQLDataSet;
    sFamilia: TSQLDataSet;
    pFamilia: TDataSetProvider;
    peFamilia: TDataSetProvider;
    ceFamilia: TClientDataSet;
    cFamilia: TClientDataSet;
    cFamiliaDESCFAMILIA: TStringField;
    cFamiliaCOD_FAMILIA: TIntegerField;
    cFamiliaMARCA: TStringField;
    seFamiliaDESCFAMILIA: TStringField;
    seFamiliaCOD_FAMILIA: TIntegerField;
    seFamiliaMARCA: TStringField;
    ceFamiliaDESCFAMILIA: TStringField;
    ceFamiliaCOD_FAMILIA: TIntegerField;
    ceFamiliaMARCA: TStringField;
    seCategoria: TSQLDataSet;
    sCategoria: TSQLDataSet;
    pCategoria: TDataSetProvider;
    peCategoria: TDataSetProvider;
    ceCategoria: TClientDataSet;
    cCategoria: TClientDataSet;
    sCategoriaDESCCATEGORIA: TStringField;
    sCategoriaCOD_CATEGORIA: TIntegerField;
    sCategoriaCOD_FAMILIA: TIntegerField;
    cCategoriaDESCCATEGORIA: TStringField;
    cCategoriaCOD_CATEGORIA: TIntegerField;
    cCategoriaCOD_FAMILIA: TIntegerField;
    seCategoriaDESCCATEGORIA: TStringField;
    seCategoriaCOD_CATEGORIA: TIntegerField;
    seCategoriaCOD_FAMILIA: TIntegerField;
    ceCategoriaDESCCATEGORIA: TStringField;
    ceCategoriaCOD_CATEGORIA: TIntegerField;
    ceCategoriaCOD_FAMILIA: TIntegerField;
    seMarca: TSQLDataSet;
    sMarca: TSQLDataSet;
    pMarca: TDataSetProvider;
    peMarca: TDataSetProvider;
    ceMarca: TClientDataSet;
    cMarca: TClientDataSet;
    sMarcaDESCMARCAS: TStringField;
    cMarcaDESCMARCAS: TStringField;
    seMarcaDESCMARCAS: TStringField;
    ceMarcaDESCMARCAS: TStringField;
    procedure btnExpProdClick(Sender: TObject);
    procedure btnExpCliClick(Sender: TObject);
    procedure btnExpCfiscClick(Sender: TObject);
  private
    procedure ExportaMarcas();
    procedure ExportaFamilia();
    procedure ExportaCategoria();
    procedure ExportaProdutos();
  public
    { Public declarations }
  end;

var
  fSincronizar: TfSincronizar;

implementation

uses UDm;

{$R *.dfm}

procedure TfSincronizar.btnExpProdClick(Sender: TObject);
var TD: TTransactionDesc;
begin
  ExportaMarcas();
  ExportaFamilia();
  ExportaCategoria();
  ExportaProdutos();
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlExporta.StartTransaction(TD);
  try
    dm.sqlExporta.Commit(TD);
  except
    dm.sqlExporta.Rollback(TD);
  end;
end;

procedure TfSincronizar.btnExpCliClick(Sender: TObject);
var
  vari: integer;
begin
    // Copio dados tabela de CLIENTES
  Try
    if (cCliente.Active) then
      cCliente.Close;
    cCliente.Open;
    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := cCliente.RecordCount;
    cCliente.First;
    while not cCliente.Eof do
    begin
      ceCliente.Close;
      ceCliente.Params[0].AsInteger := cClienteCODCLIENTE.AsInteger;
      ceCliente.Open;
      if (ceCliente.IsEmpty) then
      begin
        ceCliente.append;
        for vari := 0 to cCliente.fieldcount -1 do
        begin
          if (cCliente.fields[vari].fieldkind = fkdata) then
            ceCliente.fields[vari].value := cCliente.fieldbyname(cCliente.fields[vari].fieldname).value;
        end;
        ceCliente.ApplyUpdates(0);
      end
      else
      begin
         if ((ceClienteNOMECLIENTE.AsString <> cClienteNOMECLIENTE.AsString)
           or (ceClienteRAZAOSOCIAL.AsString <> cClienteRAZAOSOCIAL.AsString)
            or (ceClienteTIPOFIRMA.AsString <> cClienteTIPOFIRMA.AsString)
             or (ceClienteCNPJ.AsString <> cClienteCNPJ.AsString)
              or (ceClienteINSCESTADUAL.AsString <> cClienteINSCESTADUAL.AsString)
               or (ceClienteSTATUS.AsInteger <> cClienteSTATUS.AsInteger)
                or (ceClienteCNPJ.AsString <> cClienteCNPJ.AsString)) then
         begin
           ceCliente.Edit;
           ceClienteNOMECLIENTE.AsString := cClienteNOMECLIENTE.AsString;
           ceClienteRAZAOSOCIAL.AsString := cClienteRAZAOSOCIAL.AsString;
           ceClienteTIPOFIRMA.AsString := cClienteTIPOFIRMA.AsString;
           ceClienteCNPJ.AsString := cClienteCNPJ.AsString;
           ceClienteINSCESTADUAL.AsString := cClienteINSCESTADUAL.AsString;
           ceClienteSTATUS.AsInteger := cClienteSTATUS.AsInteger;
           ceClienteCNPJ.AsString := cClienteCNPJ.AsString;
           ceCliente.ApplyUpdates(0);
         end;
      end;
      cCliente.Next;
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;
    MessageDlg('Clientes exportados com suscesso', mtWarning, [mbOK], 0);
    cCliente.Close;
    ceCliente.Close;
  Except
    MessageDlg('Erro ao exportar Clientes', mtWarning, [mbOK], 0);
  end;
end;

procedure TfSincronizar.btnExpCfiscClick(Sender: TObject);
var
  vari: integer;
begin
  Try
    if (cFiscal.Active) then
      cFiscal.Close;
    cFiscal.Open;
    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := cFiscal.RecordCount;
    cFiscal.First;
    while not cFiscal.Eof do
    begin
      ceFiscal.Close;
      ceFiscal.Params[0].AsInteger := cFiscalCOD_PROD.AsInteger;
      ceFiscal.Params[1].AsString := cFiscalCFOP.AsString;
      ceFiscal.Params[2].AsString := cFiscalUF.AsString;
      ceFiscal.Open;
      if (ceFiscal.IsEmpty) then
      begin
        ceFiscal.append;
        for vari := 0 to cFiscal.fieldcount -1 do
        begin
          if (cFiscal.fields[vari].fieldkind = fkdata) then
            ceFiscal.fields[vari].value := cFiscal.fieldbyname(cFiscal.fields[vari].fieldname).value;
        end;
        ceFiscal.ApplyUpdates(0);
      end
      else
      begin
        {if (ceFiscalVALOR_PRAZO.Value <> cFiscal.Value) then
        begin
          ceFiscal.Edit;
          ceFiscal.Value := cFiscal.Value;
          ceFiscal.AsString := cFiscal.AsString;
          ceFiscal.Value := cFiscal.Value;
          ceFiscal.ApplyUpdates(0);
        end;}  
      end;
      cFiscal.Next;
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;
    MessageDlg('Dados Fiscais exportados com suscesso', mtWarning, [mbOK], 0);
    cFiscal.Close;
    ceFiscal.Close;
  Except
    MessageDlg('Erro ao exportar Dados Fiscais', mtWarning, [mbOK], 0);
  end;
end;

procedure TfSincronizar.ExportaProdutos;
var
  vari: integer;
begin
  // Copio dados tabela de PRODUTOS
  Try
    if (cProdutos.Active) then
      cProdutos.Close;
    cProdutos.Open;
    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := cProdutos.RecordCount;
    cProdutos.First;
    while not cProdutos.Eof do
    begin
      ceProdutos.Close;
      ceProdutos.Params[0].AsInteger := cProdutosCODPRODUTO.AsInteger;
      ceProdutos.Open;
      if (ceProdutos.IsEmpty) then
      begin
        ceProdutos.append;
        for vari := 0 to cProdutos.fieldcount -1 do
        begin
          if (cProdutos.fields[vari].fieldkind = fkdata) then
            ceProdutos.fields[vari].value := cProdutos.fieldbyname(cProdutos.fields[vari].fieldname).value;
        end;
        ceProdutos.ApplyUpdates(0);
      end
      else
      begin
        if (ceProdutosVALOR_PRAZO.Value <> cProdutosVALOR_PRAZO.Value) then
        begin
          ceProdutos.Edit;
          ceProdutosCODPRO.Value := cProdutosCODPRO.Value;
          ceProdutosPRODUTO.AsString := cProdutosPRODUTO.AsString;
          ceProdutosVALOR_PRAZO.Value := cProdutosVALOR_PRAZO.Value;
          ceProdutos.ApplyUpdates(0);
        end;  
      end;
      cProdutos.Next;
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;
    MessageDlg('Produtos exportados com suscesso', mtWarning, [mbOK], 0);
    cProdutos.Close;
    ceProdutos.Close;
  Except
    MessageDlg('Erro ao exportar Produtos', mtWarning, [mbOK], 0);
  end;
end;

procedure TfSincronizar.ExportaMarcas;
var
  vari: integer;
begin
  Try
    if (cMarca.Active) then
      cMarca.Close;
    cMarca.Open;
    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := cMarca.RecordCount;
    cMarca.First;
    while not cMarca.Eof do
    begin
      ceMarca.Close;
      ceMarca.Params[0].AsString := cMarcaDESCMARCAS.AsString;
      ceMarca.Open;
      if (ceMarca.IsEmpty) then
      begin
        ceMarca.append;
        for vari := 0 to cMarca.fieldcount -1 do
        begin
          if (cMarca.fields[vari].fieldkind = fkdata) then
            ceMarca.fields[vari].value := cMarca.fieldbyname(cMarca.fields[vari].fieldname).value;
        end;
        ceMarca.ApplyUpdates(0);
      end;
      cMarca.Next;
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;
    MessageDlg('Marcas exportadas com suscesso', mtWarning, [mbOK], 0);
    cMarca.Close;
    ceMarca.Close;
  Except
    MessageDlg('Erro ao exportar Marcas', mtWarning, [mbOK], 0);
  end;
end;

procedure TfSincronizar.ExportaFamilia;
var
  vari: integer;
begin
  Try
    if (cFamilia.Active) then
      cFamilia.Close;
    cFamilia.Open;
    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := cFamilia.RecordCount;
    cFamilia.First;
    while not cFamilia.Eof do
    begin
      ceFamilia.Close;
      ceFamilia.Params[0].AsInteger := cFamiliaCOD_FAMILIA.AsInteger;
      ceFamilia.Open;
      if (ceFamilia.IsEmpty) then
      begin
        ceFamilia.append;
        for vari := 0 to cFamilia.fieldcount -1 do
        begin
          if (cFamilia.fields[vari].fieldkind = fkdata) then
            ceFamilia.fields[vari].value := cFamilia.fieldbyname(cFamilia.fields[vari].fieldname).value;
        end;
        ceFamilia.ApplyUpdates(0);
      end
      else
      begin
        if ( (ceFamiliaDESCFAMILIA.Value <> cFamiliaDESCFAMILIA.Value) or (ceFamiliaMARCA.Value <> ceFamiliaMARCA.Value) )then
        begin
          ceFamilia.Edit;
          ceFamiliaDESCFAMILIA.AsString := cFamiliaDESCFAMILIA.Value;
          ceFamiliaMARCA.AsString := cFamiliaMARCA.AsString;
          ceFamilia.ApplyUpdates(0);
        end;  
      end;
      cFamilia.Next;
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;
    MessageDlg('Familias exportadas com suscesso', mtWarning, [mbOK], 0);
    cFamilia.Close;
    ceFamilia.Close;
  Except
    MessageDlg('Erro ao exportar Familias', mtWarning, [mbOK], 0);
  end;
end;

procedure TfSincronizar.ExportaCategoria;
var
  vari: integer;
begin
  try
    if (cCategoria.Active) then
      cCategoria.Close;
    cCategoria.Open;
    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := cCategoria.RecordCount;
    cCategoria.First;
    while not cCategoria.Eof do
    begin
      ceCategoria.Close;
      ceCategoria.Params[0].AsInteger := cCategoriaCOD_CATEGORIA.AsInteger;
      ceCategoria.Open;
      if (ceCategoria.IsEmpty) then
      begin
        ceCategoria.append;
        for vari := 0 to cCategoria.fieldcount -1 do
        begin
          if (cCategoria.fields[vari].fieldkind = fkdata) then
            ceCategoria.fields[vari].value := cCategoria.fieldbyname(cFamilia.fields[vari].fieldname).value;
        end;
        ceCategoria.ApplyUpdates(0);
      end
      else
      begin
        if ( (ceCategoriaDESCCATEGORIA.Value <> cCategoriaDESCCATEGORIA.Value) or (ceCategoriaCOD_FAMILIA.Value <> cCategoriaCOD_FAMILIA.Value) )then
        begin
          ceCategoria.Edit;
          ceCategoriaDESCCATEGORIA.AsString := cCategoriaDESCCATEGORIA.AsString;
          ceCategoriaCOD_FAMILIA.AsInteger := cCategoriaCOD_FAMILIA.AsInteger;
          ceCategoria.ApplyUpdates(0);
        end;  
      end;
      cCategoria.Next;
      FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;
    MessageDlg('Categorias exportadas com suscesso', mtWarning, [mbOK], 0);
    cCategoria.Close;
    ceCategoria.Close;
  Except
    MessageDlg('Erro ao exportar Categorias', mtWarning, [mbOK], 0);
  end;
end;

end.
