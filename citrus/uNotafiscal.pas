unit uNotafiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, DBLocal, DBLocalS, Mask, DBCtrls,
  rpcompobase, rpvclreport, VDOBasePrinter, VDODmPrinter, fClassCitrus;

type
  Tfnotafiscal = class(TfPai)
    btnImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    scds_nf_proc: TSQLClientDataSet;
    scds_nf_procCODVENDA: TIntegerField;
    scds_nf_procDTAEMISSAO: TDateField;
    scds_nf_procDTASAIDA: TDateField;
    scds_nf_procNOTASERIE: TStringField;
    scds_nf_procNUMNF: TIntegerField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit6: TDBEdit;
    dtSrcServ: TDataSource;
    sds_nf_serv: TSQLDataSet;
    sds_nf_servNUMNF_SERV: TIntegerField;
    sds_nf_servNUMNF: TIntegerField;
    sds_nf_servSERVICO1: TStringField;
    sds_nf_servSERVICO2: TStringField;
    sds_nf_servSERVICO3: TStringField;
    sds_nf_servVLRSERV1: TFloatField;
    sds_nf_servVLRSERV2: TFloatField;
    sds_nf_servVLRSERV3: TFloatField;
    sds_nf_servBASE_ISS_IR: TFloatField;
    sds_nf_servISS_NOTA: TFloatField;
    sds_nf_servISS_PERCENT: TFloatField;
    sds_nf_servIR_FONT: TFloatField;
    sds_nf_servIR_PERCENT: TFloatField;
    sds_nf_servTOTAL_SERV: TFloatField;
    dsp_nf_serv: TDataSetProvider;
    cds_nf_serv: TClientDataSet;
    cds_nf_servNUMNF: TIntegerField;
    cds_nf_servSERVICO1: TStringField;
    cds_nf_servSERVICO2: TStringField;
    cds_nf_servSERVICO3: TStringField;
    cds_nf_servVLRSERV1: TFloatField;
    cds_nf_servVLRSERV2: TFloatField;
    cds_nf_servVLRSERV3: TFloatField;
    cds_nf_servBASE_ISS_IR: TFloatField;
    cds_nf_servISS_NOTA: TFloatField;
    cds_nf_servISS_PERCENT: TFloatField;
    cds_nf_servIR_FONT: TFloatField;
    cds_nf_servIR_PERCENT: TFloatField;
    cds_nf_servTOTAL_SERV: TFloatField;
    cds_nf_servNUMNF_SERV: TIntegerField;
    scds: TSQLClientDataSet;
    ds_cfop: TDataSource;
    sds_calculo: TSQLDataSet;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetVALOR_TOTAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetTOTAL_PEDIDO: TFloatField;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detVALOR_TOTAL: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detTOTAL_PEDIDO: TFloatField;
    sds_n: TSQLDataSet;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    Label11: TLabel;
    DBEdit14: TDBEdit;
    Label12: TLabel;
    DBEdit15: TDBEdit;
    Label13: TLabel;
    DBEdit16: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label16: TLabel;
    DBEdit19: TDBEdit;
    Label17: TLabel;
    DBEdit20: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label20: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label21: TLabel;
    DBEdit24: TDBEdit;
    Label22: TLabel;
    DBEdit25: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit26: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit37: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    Label29: TLabel;
    DBEdit31: TDBEdit;
    Label30: TLabel;
    DBEdit32: TDBEdit;
    Label31: TLabel;
    DBEdit36: TDBEdit;
    Label35: TLabel;
    DBEdit35: TDBEdit;
    Label34: TLabel;
    Label33: TLabel;
    DBEdit34: TDBEdit;
    DBEdit33: TDBEdit;
    Label32: TLabel;
    GroupBox2: TGroupBox;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    scds_cliente_proc: TSQLClientDataSet;
    scds_cliente_procCODCLIENTE: TIntegerField;
    scds_cliente_procNOMECLIENTE: TStringField;
    scds_cliente_procRAZAOSOCIAL: TStringField;
    scds_cliente_procCODBANCO: TSmallintField;
    scds_cliente_procPRAZORECEBIMENTO: TSmallintField;
    scds_cliente_procOBS: TStringField;
    scds_cliente_procSEGMENTO: TSmallintField;
    scds_cliente_procNOMEUSUARIO: TStringField;
    scds_cliente_procSTATUS: TSmallintField;
    scds_cliente_procUF: TStringField;
    repNF: TVCLReport;
    repNFS: TVCLReport;
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
    GroupBox4: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit29: TDBEdit;
    procCFOP: TSQLClientDataSet;
    procCFOPCFCOD: TStringField;
    procCFOPCFNOME: TStringField;
    cds_Mov_dettotalpedido: TAggregateField;
    sds_nNOVO_NUMERO: TIntegerField;
    sds_numero: TSQLDataSet;
    sds_numeroNOVO_NUMERO: TStringField;
    cds_nfr: TClientDataSet;
    dsp_nfr: TDataSetProvider;
    sql_nfr: TSQLDataSet;
    sql_nfrCODPRODUTO: TIntegerField;
    sql_nfrQTDE: TFloatField;
    sql_nfrPCO: TFloatField;
    sql_nfrUN: TStringField;
    sql_nfrVALORTOTAL: TFloatField;
    sql_nfrPRODUTO: TStringField;
    sql_nfrLOGRADOURO: TStringField;
    sql_nfrCIDADE: TStringField;
    sql_nfrBAIRRO: TStringField;
    sql_nfrUF: TStringField;
    sql_nfrCEP: TStringField;
    sql_nfrDDD: TStringField;
    sql_nfrTELEFONE: TStringField;
    sql_nfrRAZAOSOCIAL: TStringField;
    sql_nfrCNPJ: TStringField;
    sql_nfrTIPOFIRMA: TSmallintField;
    sql_nfrINSCESTADUAL: TStringField;
    sql_nfrCFOP: TStringField;
    sql_nfrNATUREZA: TStringField;
    sql_nfrQUANTIDADE: TFloatField;
    sql_nfrMARCA: TStringField;
    sql_nfrPESOBRUTO: TBCDField;
    sql_nfrPESOLIQUIDO: TBCDField;
    sql_nfrESPECIE: TStringField;
    sql_nfrDTAEMISSAO: TDateField;
    sql_nfrDTASAIDA: TDateField;
    sql_nfrHORASAIDA: TTimeField;
    sql_nfrCORPONF1: TStringField;
    sql_nfrCORPONF2: TStringField;
    sql_nfrCORPONF3: TStringField;
    sql_nfrCORPONF4: TStringField;
    sql_nfrCORPONF5: TStringField;
    sql_nfrCORPONF6: TStringField;
    sql_nfrUF_1: TStringField;
    sql_nfrNUMERO: TStringField;
    sql_nfrBASE_ICMS: TFloatField;
    sql_nfrVALOR_ICMS: TFloatField;
    sql_nfrBASE_ICMS_SUBST: TFloatField;
    sql_nfrVALOR_ICMS_SUBST: TFloatField;
    sql_nfrVALOR_PRODUTO: TFloatField;
    sql_nfrVALOR_FRETE: TFloatField;
    sql_nfrVALOR_SEGURO: TFloatField;
    sql_nfrOUTRAS_DESP: TFloatField;
    sql_nfrVALOR_IPI: TFloatField;
    sql_nfrVALOR_TOTAL_NOTA: TFloatField;
    sql_nfrFATURA: TStringField;
    sql_nfrNOMETRANSP: TStringField;
    sql_nfrPLACATRANSP: TStringField;
    sql_nfrCNPJ_CPF: TStringField;
    sql_nfrEND_TRANSP: TStringField;
    sql_nfrCIDADE_TRANSP: TStringField;
    sql_nfrUF_VEICULO_TRANSP: TStringField;
    sql_nfrUF_TRANSP: TStringField;
    sql_nfrFRETE: TStringField;
    sql_nfrINSCRICAOESTADUAL: TStringField;
    sql_nfrSERVICO1: TStringField;
    sql_nfrSERVICO2: TStringField;
    sql_nfrVLRSERV1: TFloatField;
    sql_nfrSERVICO3: TStringField;
    sql_nfrVLRSERV2: TFloatField;
    sql_nfrVLRSERV3: TFloatField;
    sql_nfrBASE_ISS_IR: TFloatField;
    sql_nfrISS_NOTA: TFloatField;
    sql_nfrIR_FONT: TFloatField;
    sql_nfrISS_PERCENT: TFloatField;
    sql_nfrIR_PERCENT: TFloatField;
    sql_nfrTOTAL_SERV: TFloatField;
    cds_nfrCODPRODUTO: TIntegerField;
    cds_nfrQTDE: TFloatField;
    cds_nfrPCO: TFloatField;
    cds_nfrUN: TStringField;
    cds_nfrVALORTOTAL: TFloatField;
    cds_nfrPRODUTO: TStringField;
    cds_nfrLOGRADOURO: TStringField;
    cds_nfrCIDADE: TStringField;
    cds_nfrBAIRRO: TStringField;
    cds_nfrUF: TStringField;
    cds_nfrCEP: TStringField;
    cds_nfrDDD: TStringField;
    cds_nfrTELEFONE: TStringField;
    cds_nfrRAZAOSOCIAL: TStringField;
    cds_nfrCNPJ: TStringField;
    cds_nfrTIPOFIRMA: TSmallintField;
    cds_nfrINSCESTADUAL: TStringField;
    cds_nfrCFOP: TStringField;
    cds_nfrNATUREZA: TStringField;
    cds_nfrQUANTIDADE: TFloatField;
    cds_nfrMARCA: TStringField;
    cds_nfrPESOBRUTO: TBCDField;
    cds_nfrPESOLIQUIDO: TBCDField;
    cds_nfrESPECIE: TStringField;
    cds_nfrDTAEMISSAO: TDateField;
    cds_nfrDTASAIDA: TDateField;
    cds_nfrHORASAIDA: TTimeField;
    cds_nfrCORPONF1: TStringField;
    cds_nfrCORPONF2: TStringField;
    cds_nfrCORPONF3: TStringField;
    cds_nfrCORPONF4: TStringField;
    cds_nfrCORPONF5: TStringField;
    cds_nfrCORPONF6: TStringField;
    cds_nfrUF_1: TStringField;
    cds_nfrNUMERO: TStringField;
    cds_nfrBASE_ICMS: TFloatField;
    cds_nfrVALOR_ICMS: TFloatField;
    cds_nfrBASE_ICMS_SUBST: TFloatField;
    cds_nfrVALOR_ICMS_SUBST: TFloatField;
    cds_nfrVALOR_PRODUTO: TFloatField;
    cds_nfrVALOR_FRETE: TFloatField;
    cds_nfrVALOR_SEGURO: TFloatField;
    cds_nfrOUTRAS_DESP: TFloatField;
    cds_nfrVALOR_IPI: TFloatField;
    cds_nfrVALOR_TOTAL_NOTA: TFloatField;
    cds_nfrFATURA: TStringField;
    cds_nfrNOMETRANSP: TStringField;
    cds_nfrPLACATRANSP: TStringField;
    cds_nfrCNPJ_CPF: TStringField;
    cds_nfrEND_TRANSP: TStringField;
    cds_nfrCIDADE_TRANSP: TStringField;
    cds_nfrUF_VEICULO_TRANSP: TStringField;
    cds_nfrUF_TRANSP: TStringField;
    cds_nfrFRETE: TStringField;
    cds_nfrINSCRICAOESTADUAL: TStringField;
    cds_nfrSERVICO1: TStringField;
    cds_nfrSERVICO2: TStringField;
    cds_nfrVLRSERV1: TFloatField;
    cds_nfrSERVICO3: TStringField;
    cds_nfrVLRSERV2: TFloatField;
    cds_nfrVLRSERV3: TFloatField;
    cds_nfrBASE_ISS_IR: TFloatField;
    cds_nfrISS_NOTA: TFloatField;
    cds_nfrIR_FONT: TFloatField;
    cds_nfrISS_PERCENT: TFloatField;
    cds_nfrIR_PERCENT: TFloatField;
    cds_nfrTOTAL_SERV: TFloatField;
    VDODmPrinter1: TVDODmPrinter;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label26: TLabel;
    Label36: TLabel;
    BitBtn4: TBitBtn;
    sds_nfICMS: TFloatField;
    sds_nfREDUZICMS: TFloatField;
    cds_nfICMS: TFloatField;
    cds_nfREDUZICMS: TFloatField;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit50: TDBEdit;
    sds_proc: TSQLDataSet;
    sds_procCODPRODUTO: TIntegerField;
    sds_procTIPO: TStringField;
    sds_Mov_DetLOTE: TStringField;
    cds_Mov_detLOTE: TStringField;
    RadioButton1: TRadioButton;
    BitBtn5: TBitBtn;
    sdsTransp: TSQLDataSet;
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
    cdsTranspCORPONF1: TStringField;
    cdsTranspCORPONF2: TStringField;
    cdsTranspCORPONF3: TStringField;
    cdsTranspCORPONF4: TStringField;
    cdsTranspCORPONF5: TStringField;
    cdsTranspCORPONF6: TStringField;
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
    sdsTranspCORPONF1: TStringField;
    sdsTranspCORPONF2: TStringField;
    sdsTranspCORPONF3: TStringField;
    sdsTranspCORPONF4: TStringField;
    sdsTranspCORPONF5: TStringField;
    sdsTranspCORPONF6: TStringField;
    sds_nfNOMETRANSP: TStringField;
    sds_nfPLACATRANSP: TStringField;
    sds_nfCNPJ_CPF: TStringField;
    sds_nfEND_TRANSP: TStringField;
    sds_nfCIDADE_TRANSP: TStringField;
    sds_nfUF_VEICULO_TRANSP: TStringField;
    sds_nfUF_TRANSP: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure cds_nfNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure DtSrcStateChange(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit29Change(Sender: TObject);
  private
  function Verifica_Em_Branco: Boolean;
  procedure calcula_icms(Estado: String);
//  procedure lanca_recebimento();
    { Private declarations }
  public
    { Public declarations }
    compra : TCompras;
    mudou_produto : string;
    codigo_NF, codmovdet, codcli : integer;
  end;

var
  fnotafiscal: Tfnotafiscal;
  fatura_NF, tipo_form : String;
  total : Double;
implementation

uses UDm, uProcurar, uITENS_NF, uCompra;

{$R *.dfm}

procedure Tfnotafiscal.btnIncluirClick(Sender: TObject);
var
  codigo :integer;
begin
  inherited;
  cds_nfFATURA.AsString := fatura_NF;

  // Traz o numero da nota caso este esteja vazio
  IF (cds_nfNOTASERIE.AsString = '') then
  begin
      if (sds_n.Active) then
        sds_n.Close;
      sds_n.Open;
      if (sds_numero.Active) then
        sds_numero.Close;
      sds_numero.Params[0].AsInteger := sds_nNOVO_NUMERO.AsInteger;
      sds_numero.Open;
    Try
      if sds_numeroNOVO_NUMERO.AsString <> '' then
        codigo := StrToInt(sds_numeroNOVO_NUMERO.AsString) + 1
      else
        codigo := 1;
      cds_nfNOTASERIE.AsString := IntToStr(codigo);
    except
      cds_nfNOTASERIE.AsString := sds_numero.Fields[1].AsString;
    end;
    sds_numero.Close;
  end;

  if (tipo_form = 'PROCURA') then
    BitBtn2.Click;

  if not cds_nf_serv.Active then
    cds_nf_serv.Open;
  cds_nf_serv.Append;
  DBEdit1.SetFocus;

  if dm.scds_transp_proc.Active then
    dm.scds_transp_proc.Close;
  dm.scds_transp_proc.Params[0].Clear;
  dm.scds_transp_proc.Params[1].Clear;
  dm.scds_transp_proc.Params[2].AsInteger:= codcli;
  dm.scds_transp_proc.Open;
  cds_nfCODTRANSP.AsInteger := dm.scds_transp_procCODTRANSP.AsInteger;
  cds_nfNOMETRANSP.AsString := dm.scds_transp_procNOMETRANSP.AsString;
  cds_nfFRETE.AsString := dm.scds_transp_procFRETE.AsString;
  cds_nfPLACATRANSP.AsString := dm.scds_transp_procPLACATRANSP.AsString;
  cds_nfUF_VEICULO_TRANSP.AsString := dm.scds_transp_procUF_VEICULO_TRANSP.AsString;
  cds_nfCNPJ_CPF.AsString := dm.scds_transp_procCNPJ_CPF.AsString;
  cds_nfEND_TRANSP.AsString := dm.scds_transp_procEND_TRANSP.AsString;
  cds_nfCIDADE_TRANSP.AsString := dm.scds_transp_procCIDADE_TRANSP.AsString;
  cds_nfUF_TRANSP.AsString := dm.scds_transp_procUF_TRANSP.AsString;
  cds_nfINSCRICAOESTADUAL.AsString := dm.scds_transp_procINSCRICAOESTADUAL.AsString;
  cds_nfCORPONF1.AsString := dm.scds_transp_procCORPONF1.AsString;
  cds_nfCORPONF2.AsString:=dm.scds_transp_procCORPONF2.AsString;
  cds_nfCORPONF3.AsString:=dm.scds_transp_procCORPONF3.AsString;
  cds_nfCORPONF4.AsString:=dm.scds_transp_procCORPONF4.AsString;
  cds_nfCORPONF5.AsString:=dm.scds_transp_procCORPONF5.AsString;
  //     cds_nfCORPONF6.AsString:=scds_transp_procCORPONF6.AsString;
  dm.scds_transp_proc.Close;
  //========================================================================
{  cds_nfCODVENDA.AsInteger := fCompra.grava.CodVenda;
  cds_nfNOTAFISCAL.AsInteger := StrToInt(fCompra.grava.CodMovimento);
  cds_nfNOTASERIE.AsString := 'V';
  cds_nfNATUREZA.AsInteger := 3;
  cds_nfDESCNATUREZA.AsString := 'Venda';
  cds_nfDTAEMISSAO.AsDateTime := fCompra.grava.DataVenda;
  cds_nfDTASAIDA.AsDateTime := fCompra.grava.DataVenda;
  cds_nfHORASAIDA.AsDateTime := time;
  cds_nfVALOR_PRODUTO.AsFloat := fCompra.grava.VlrVenda;
  cds_nfESPECIE.AsString := 'VOLUME';
  cds_nfCODCLIENTE.AsInteger := StrToInt(fCompra.grava.CodCliente);}
end;

procedure Tfnotafiscal.btnGravarClick(Sender: TObject);
var
  numnf : integer;
  datastr, sqlstr: string;
  valornf: double;
begin
  decimalseparator := '.';
  valornf := cds_nfVALOR_PRODUTO.AsFloat;
  decimalseparator := ',';
  if (dbEdit1.text = '') then
  begin
    MessageDlg('Informe o Número da Nota Fiscal!',mtWarning, [mbOK], 0);
    dbedit1.SetFocus;
    exit;
  end;
  if (dbEdit5.text = '') then
  begin
    MessageDlg('Informe o CFOP!',mtWarning, [mbOK], 0);
    dbedit5.SetFocus;
    exit;
  end;

  //Na venda não está salvando o UF do Cliente
  if (cds_nfUF.AsString = '') then
  begin
    if scds_cliente_proc.Active then
      scds_cliente_proc.Close;
    scds_cliente_proc.Params[0].Clear;
    scds_cliente_proc.Params[1].Clear;
    scds_cliente_proc.Params[2].Clear;
    scds_cliente_proc.Params[2].AsInteger := cds_nfCODCLIENTE.AsInteger;
    scds_cliente_proc.Open;
    cds_nfUF.AsString:=scds_cliente_procUF.AsString;
    if (cds_nfUF.AsString = '') then
    begin
      MessageDlg('Não foi informado o UF no Cadastro do Cliente !',mtWarning, [mbOK], 0);
      exit;
    end;
  end;

  total := 0;
  cds_nfNATUREZA.AsInteger := 3;//StrToInt(cds_nfCFOP.AsString);

  // salvo a Nota Fiscal
  if (DtSrc.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_nfNUMNF.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
  //********************************************************************************
{  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].AsInteger := cds_nfNUMNF.AsInteger;
  cds_Mov_det.Open;}
  if cds_Mov_det.Active then
  begin
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      // aqui corrijo o codigo do movimento na tabela mov_detalhe
      if (cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
      begin
        cds_Mov_det.Edit;
        cds_Mov_detCODMOVIMENTO.AsInteger := cds_nfNUMNF.AsInteger;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ITENS_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        cds_Mov_det.Post;
        mudou_produto := 'SIM';
        cds_Mov_det.Next;
      end
      else
        cds_Mov_det.Next;
    end;
  end;
  if (mudou_produto = 'SIM') then
    cds_Mov_det.ApplyUpdates(0);
  //********************************************************************************

  // Como o NUMNF foi gravado somente agora, entao atualiza
  // ele na tab MOVIMENTONF
  numnf := cds_nfNUMNF.AsInteger;
  if (cds_Mov_detCODMOVIMENTO.AsInteger <> cds_nfNUMNF.AsInteger) then
  begin
    if (cds_Mov_det.Active) then
    begin
      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        cds_Mov_det.Edit;
        total := total + cds_Mov_detVALTOTAL.AsFloat;
        cds_Mov_detTOTAL_PEDIDO.AsFloat := total;
        cds_Mov_detCODMOVIMENTO.AsInteger := cds_nfNUMNF.AsInteger;
        cds_Mov_det.Post;
        cds_Mov_det.Next;
      end;
      cds_Mov_det.ApplyUpdates(0);
      if (cds_nf.State in [dsBrowse, dsInactive]) then
        cds_nf.Edit;
      cds_nfVALOR_PRODUTO.AsFloat := total;
      if (dbedit8.Text <> '') then
        total := total + StrToFloat(dbedit8.Text);
      if (dbedit10.Text <> '') then
        total := total + StrToFloat(dbedit10.Text);
      if (cds_nfBASE_ICMS_SUBST.AsFloat > 0) then
        total := total + cds_nfBASE_ICMS_SUBST.AsFloat;
      if (cds_nfVALOR_ICMS_SUBST.AsFloat > 0) then
        total := total + cds_nfBASE_ICMS.AsFloat;
      if (cds_nfVALOR_FRETE.AsFloat > 0) then
        total := total + cds_nfVALOR_FRETE.AsFloat;
      if (cds_nfVALOR_SEGURO.AsFloat > 0) then
        total := total + cds_nfVALOR_SEGURO.AsFloat;
      if (cds_nfOUTRAS_DESP.AsFloat > 0) then
        total := total + cds_nfOUTRAS_DESP.AsFloat;
      if (cds_nfVALOR_IPI.AsFloat > 0) then
        total := total + cds_nfVALOR_IPI.AsFloat;
      cds_nf.ApplyUpdates(0);
    end;
  end;
 if (DBEdit7.Text <> '') then
  if (dtSrcServ.State in [dsInsert, dsEdit]) then
  begin
    cds_nf_servNUMNF.AsInteger := cds_nfNUMNF.AsInteger;
    if Verifica_Em_Branco then
    begin
      dtSrcServ.DataSet.Post;
      (dtSrcServ.DataSet as TClientDataset).ApplyUpdates(0);
    end;
  end
  else abort;
  // Calcula ICMS - IPI
  calcula_icms('OUTROS');

  // Verifica se teve VENDA
  IF (cds_nfCODVENDA.IsNull) then
  BEGIN
    // Vejo se o CFOP esta marcado pra baixar estoque.
    if scds.Active then
      scds.Close;
    scds.CommandText := 'SELECT TIPOMOVIMENTO FROM CFOP ' +
       ' where CFCOD = ''' + dbEdit5.Text + '''';
    scds.Open;
    IF (scds.Fields[0].asString = 'S') then
    begin
    try
      // Executa a SP para baixar o extoque
      sqlstr := 'EXECUTE PROCEDURE LANCA_ESTOQUE(';
      // Data
      {$IFDEF LINUX}
      datastr:='  -  -  ';
      {$ENDIF}
      {$IFDEF MSWINDOWS}
      datastr:='  /  /  ';
      {$ENDIF}
      //------------------------------------------------------------------------------
      //Verifica se a data de emissão foi preenchido
      //------------------------------------------------------------------------------
      try
        if (dbEdit2.Text<>datastr) then
          StrToDate(dbedit2.Text);
        if (dbedit2.Text<>datastr) then
        begin
          sqlstr := sqlstr + '''' + formatdatetime('mm/dd/yy', StrToDate(dbedit2.Text)) + '''';
        end;
        except
        on EConvertError do
        begin
          ShowMessage ('Data Inválida! dd/mm/aa');
          dbedit2.SetFocus;
        end;
      end;
      // 0 = Entrada ou 1 = Saida
      sqlstr := sqlstr + ',1';
      // Usuario
      sqlstr := sqlstr + ',1';
      // NOME ORCAMENTO
      sqlstr := sqlstr + ',''BAIXA ESTOQUE NOTA FISCAL''';
      // DATA ORCAMENTO
      sqlstr := sqlstr + ',''' + formatdatetime('mm/dd/yy', StrToDate(dbedit2.Text)) + '''' ;
      // Cliente
      sqlstr := sqlstr + ',' + IntToStr(cds_nfCODCLIENTE.AsInteger);
      // Cod Movimento
      sqlstr := sqlstr + ',' + IntToStr(cds_nfNUMNF.AsInteger);
      // Natureza :  0=Entrada 1=Saida
      sqlstr := sqlstr + ',1)';
      dm.sqlsisAdimin.ExecuteDirect(sqlstr);
    except
       MessageDlg('Erro ao gravar!', mtWarning, [mbOK], 0);
    end;
    end;
    scds.Close;
  END;

  // Abre a tabela Novamente.
  cds_nf.Close;
  cds_nf.Params[0].AsInteger := numnf;
  cds_nf.Open;

  if (RadioButton1.Checked = True) then
  begin
    cds_nf.Edit;
    cds_nfVALOR_PRODUTO.AsFloat := valornf;
    cds_nfVALOR_TOTAL_NOTA.AsFloat := valornf;
    cds_nf.ApplyUpdates(0);
  end;

end;

procedure Tfnotafiscal.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (cds_nf_serv.Active) then
  begin
    if (not cds_nf_serv.IsEmpty) then
    begin
      cds_nf_serv.Delete;
      cds_nf_serv.ApplyUpdates(0);
    end;  
  end;  
end;

procedure Tfnotafiscal.btnCancelarClick(Sender: TObject);
begin
  inherited;
  cds_nf_serv.Cancel;
end;

procedure Tfnotafiscal.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Try
    Application.CreateForm(TfITENS_NF, fITENS_NF);
    if (tipo_form <> 'PROCURA') then
    if (cds_nf.State in [dsInsert, dsEdit]) then
      if (cds_nfCFOP.AsString <> '') then
        btnGravar.Click;
    fITENS_NF.ShowModal;
    if (cds_nf.State in [dsBrowse, dsInactive]) then
      cds_nf.Edit;
  Finally
    fITENS_NF.Free;
  end;
end;

procedure Tfnotafiscal.btnImprimirClick(Sender: TObject);
var I: Byte;
 nf: TStringList;
    j ,str_nf1 : integer ;
    str_nf ,str_nf2,str_nf3, report : string;
begin
 // inherited;

  repNF.FileName := str_relatorio + 'nf.rep';
  repNF.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repNF.Report.Params[0].Value := cds_nfNUMNF.AsInteger;
  repNF.Execute;

{   if (cds_nfr.Active) then
    cds_nfr.Close;
    cds_nfr.Params[0].AsInteger := cds_nfNUMNF.AsInteger;
    cds_nfr.Open;
    if cds_nfr.IsEmpty then
    begin
     MessageDlg('Não a Dados para Impressão', mtInformation, [mbOK], 0);
     exit;
    end;
    cds_nfr.First;

  with VDODmPrinter1 do
  begin
      nf := TStringList.Create;
 try
    nf.LoadFromFile('nota_fiscal.ini');
      { Inicia o Documento }
 //   BeginDoc;

//      Print(00,'',True);
//      Print(50,'X',True);// X (SAIDA)

//      Print(32, cds_nfNOTASERIE.AsString);
//      Print(00,'',True);

// Print(30, DateToStr(cds_reciboVENCIMENTO.asDatetime));
// Print(74, IntToStr(cds_reciboN_LOTE.AsInteger) + IntToStr(cds_reciboINSCRICAO.AsInteger), true);
// Print(00,'',True);

// Print(03, cds_reciboN_GRUPO.asString);
// Print(45, cds_reciboN_GRUPO.asString, true);

 {   for j := 0 to nf.Count -1 do
    begin
    str_nf := nf[j];
    str_nf1 := StrToInt(copy(str_nf,0,2));
    str_nf2 := copy(str_nf,4,26);
    str_nf3 := copy(str_nf,27,4);
    Print(str_nf1,str_nf2,true);
    end;

   }
   { Finalizo o Documento, ejetando a página }
 //   EndDoc;
{ finally
   nf.Free;
 end;
  end;
  }

end;

procedure Tfnotafiscal.BitBtn1Click(Sender: TObject);
begin
  inherited;
  repNFS.FileName := str_relatorio + 'nf_serv.rep';
  repNFS.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repNFS.Report.Params[0].Value := cds_nfNUMNF.AsInteger;
  repNFS.Execute;
end;

procedure Tfnotafiscal.calcula_icms(Estado: String);
var str_sql: string;
begin
  Try
    if (sds_calculo.Active) then
      sds_calculo.Close;
    str_sql := 'EXECUTE PROCEDURE CALCULA_ICMS(';
    // NUMNF
    str_sql := str_sql + IntToStr(cds_nfNUMNF.asInteger);
    // UF
    str_sql := str_sql + ',''' + cds_nfUF.AsString + '''';
    // CFOP
    str_sql := str_sql + ',''' + cds_nfCFOP.AsString + '''';
    // Valor Frete
    DecimalSeparator := '.';
    str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_FRETE.AsFloat);
    // Valor Seguro
    str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_SEGURO.AsFloat);
    // Valor_Outros
    str_sql := str_sql + ',' + FloatToStr(cds_nfOUTRAS_DESP.AsFloat);
    // Total
    str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_PRODUTO.AsFloat);
    // Informado INDICES MANUALMENTE
    IF (DBEdit44.Text <> '') then
    begin
      str_sql := str_sql + ',''' + 'S' + '''';
      str_sql := str_sql + ',' + FloatToStr(cds_nfICMS.AsFloat);
      IF (DBEdit45.Text <> '') THEN
      str_sql := str_sql + ',' + FloatToStr(cds_nfREDUZICMS.AsFloat)
      else
      str_sql := str_sql + ', 0';
    end
    else
    begin
      str_sql := str_sql + ',''' + 'N' + '''';
      str_sql := str_sql + ', 0';
      str_sql := str_sql + ', 0';
    end;
    str_sql := str_sql + ')';
    DecimalSeparator := ',';
    sds_calculo.CommandText := str_sql;
    sds_calculo.ExecSQL();
  except
    DecimalSeparator := ',';
    MessageDlg('Erro no cálculo!', mtError, [mbOK], 0);
  end;
end;

{procedure Tfnotafiscal.lanca_recebimento();
var str_sql: string;
begin
  if (sds_calculo.Active) then
    sds_calculo.Close;
  str_sql := 'EXECUTE PROCEDURE LANCA_NF_CONTASREC(';
  // NUM_VENDA
  str_sql := str_sql + IntToStr(cds_nfCODVENDA.asInteger);
  // Valor Frete
  DecimalSeparator := '.';
  str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_FRETE.AsFloat);
  // Valor Seguro
  str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_SEGURO.AsFloat);
  // Valor_Outros
  str_sql := str_sql + ',' + FloatToStr(cds_nfOUTRAS_DESP.AsFloat);
  // Valor_IPI
  str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_IPI.AsFloat);
  str_sql := str_sql + ')';
  DecimalSeparator := ',';
  sds_calculo.CommandText := str_sql;
  sds_calculo.ExecSQL();
end; }

function Tfnotafiscal.Verifica_Em_Branco: Boolean;
var cont : integer;
begin
  Result:=True; //assume que estão todos preenchidos
  for cont:= 0 to dtSrcServ.DataSet.FieldCount - 1 do
    if dtSrcServ.DataSet.Fields[cont].Required then
      if (dtSrcServ.DataSet.Fields[cont].IsNull)or
         (dtSrcServ.DataSet.Fields[cont].AsString='') then
      begin
        MessageDlg('Preencha o campo "'+dtSrcServ.DataSet.Fields[cont].DisplayLabel+'"',
                   mtWarning,[mbOk],0);
        Result:=False;
        Break;
      end;
end;

procedure Tfnotafiscal.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  if scds.Active then
    scds.Close;
  fProcurar:= TfProcurar.Create(self,procCFOP);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.EvDBFind1.DataField := 'CFCOD';
  fProcurar.BtnProcurar.Click;
  if fProcurar.ShowModal=mrOk then
  begin
    if dtSrc.State=dsBrowse then
      cds_nf.Edit;
    cds_nfCFOP.AsString :=procCFOPCFCOD.AsString;
    cds_nfDESCNATUREZA.AsString :=procCFOPCFNOME.AsString;
  end;
  finally
    scds.Close;
    fProcurar.Free;
    DBEdit7.SetFocus;
  end;
end;

procedure Tfnotafiscal.BitBtn3Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_transp_proc);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMETRANSP';
  if fProcurar.ShowModal=mrOk then
  begin
    if dtSrc.State=dsBrowse then
      cds_nf.Edit;
    cds_nfCODTRANSP.AsInteger := dm.scds_transp_procCODTRANSP.AsInteger;
    cds_nfNOMETRANSP.AsString := dm.scds_transp_procNOMETRANSP.AsString;
    cds_nfUF_TRANSP.AsString := dm.scds_transp_procUF_TRANSP.AsString;
    cds_nfFRETE.AsString := dm.scds_transp_procFRETE.AsString;
    cds_nfUF_VEICULO_TRANSP.AsString := dm.scds_transp_procUF_VEICULO_TRANSP.AsString;
    cds_nfCNPJ_CPF.AsString := dm.scds_transp_procCNPJ_CPF.AsString;
    cds_nfEND_TRANSP.AsString := dm.scds_transp_procEND_TRANSP.AsString;
    cds_nfCIDADE_TRANSP.AsString := dm.scds_transp_procCIDADE_TRANSP.AsString;
    cds_nfUF_TRANSP.AsString := dm.scds_transp_procUF_TRANSP.AsString;
    cds_nfINSCRICAOESTADUAL.AsString := dm.scds_transp_procINSCRICAOESTADUAL.AsString;
    cds_nfPLACATRANSP.AsString := dm.scds_transp_procPLACATRANSP.AsString;
    cds_nfCORPONF1.AsString  := dm.scds_transp_procCORPONF1.AsString;
    cds_nfCORPONF2.AsString  := dm.scds_transp_procCORPONF2.AsString;
    cds_nfCORPONF3.AsString  := dm.scds_transp_procCORPONF3.AsString;
    cds_nfCORPONF4.AsString  := dm.scds_transp_procCORPONF4.AsString;
  end;
  finally
    dm.scds_transp_proc.Close;
    fProcurar.Free;
    DBEdit29.SetFocus;
  end;

end;

procedure Tfnotafiscal.DBEdit5Exit(Sender: TObject);
var texto : string;
begin
  inherited;
  if scds.Active then
    scds.Close;
  texto := scds.CommandText;
  scds.CommandText := 'SELECT CFCOD AS CFOP , CFNOME as NATUREZA FROM CFOP ' +
     ' where CFCOD = ''' + dbEdit5.Text + '''';
  scds.Open;
  cds_nfDESCNATUREZA.AsString  := scds.Fields[1].asString;
  scds.Close;
  scds.CommandText := texto;
end;

procedure Tfnotafiscal.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  cds_nf_servTOTAL_SERV.AsFloat := cds_nf_servVLRSERV1.AsFloat +
    cds_nf_servVLRSERV2.AsFloat + cds_nf_servVLRSERV3.AsFloat;
  cds_nfVALOR_TOTAL_NOTA.AsFloat :=   cds_nf_servTOTAL_SERV.AsFloat +
    cds_nfVALOR_PRODUTO.AsFloat;
end;

procedure Tfnotafiscal.DBEdit8Change(Sender: TObject);
begin
  inherited;
  if (dm.cds_nf.State in [dsBrowse]) then
  begin
    dm.cds_nf.Edit;
    cds_nf_serv.Edit;
  end;
end;

procedure Tfnotafiscal.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  cds_nf_servTOTAL_SERV.AsFloat := cds_nf_servVLRSERV1.AsFloat +
    cds_nf_servVLRSERV2.AsFloat + cds_nf_servVLRSERV3.AsFloat;
  cds_nfVALOR_TOTAL_NOTA.AsFloat :=   cds_nf_servTOTAL_SERV.AsFloat +
    cds_nfVALOR_PRODUTO.AsFloat;
end;

procedure Tfnotafiscal.DBEdit22Exit(Sender: TObject);
begin
  inherited;
  if cds_nf.State in [dsInsert, dsEdit] then
    if cds_nfVALOR_FRETE.AsFloat > 0 then
      cds_nfVALOR_TOTAL_NOTA.AsFloat :=
       cds_nfVALOR_TOTAL_NOTA.AsFloat +
         cds_nfVALOR_FRETE.AsFloat;
end;

procedure Tfnotafiscal.DBEdit23Exit(Sender: TObject);
begin
  inherited;
  if cds_nf.State in [dsInsert, dsEdit] then
    if cds_nfVALOR_SEGURO.AsFloat > 0 then
      cds_nfVALOR_TOTAL_NOTA.AsFloat :=
       cds_nfVALOR_TOTAL_NOTA.AsFloat +
         cds_nfVALOR_SEGURO.AsFloat;
end;

procedure Tfnotafiscal.DBEdit24Exit(Sender: TObject);
begin
  inherited;
  if cds_nf.State in [dsInsert, dsEdit] then
    if cds_nfOUTRAS_DESP.AsFloat > 0 then
      cds_nfVALOR_TOTAL_NOTA.AsFloat :=
       cds_nfVALOR_TOTAL_NOTA.AsFloat +
         cds_nfOUTRAS_DESP.AsFloat;
end;

procedure Tfnotafiscal.DBEdit25Exit(Sender: TObject);
begin
  inherited;
  if cds_nf.State in [dsInsert, dsEdit] then
    if cds_nfVALOR_IPI.AsFloat > 0 then
      cds_nfVALOR_TOTAL_NOTA.AsFloat :=
       cds_nfVALOR_TOTAL_NOTA.AsFloat +
         cds_nfVALOR_IPI.AsFloat;
end;

procedure Tfnotafiscal.cds_nfNewRecord(DataSet: TDataSet);
begin
  inherited;
//========================================================================
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
  cds_nfVALOR_TOTAL_NOTA.AsFloat := 0;

      cds_nfDTAEMISSAO.AsDateTime := now;
      cds_nfDTASAIDA.AsDateTime := now;
      cds_nfHORASAIDA.AsDateTime := time;
      cds_nfESPECIE.AsString := 'VOLUME';

    if tipo_form = 'PROCURA' then
    begin
        cds_nfDTAEMISSAO.AsDateTime := now;
        cds_nfDTASAIDA.AsDateTime := now;
        cds_nfHORASAIDA.AsDateTime := time;
        cds_nfESPECIE.AsString := 'VOLUME';
    end;

     //Imprime no rodapé da nota o que está na tabela Parâmetro.
     if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
     dm.cds_parametro.Params[0].AsString := 'CLASS_FISCAL_IMP';
     dm.cds_parametro.Open;
     cds_nfCORPONF6.AsString := dm.cds_parametroDADOS.AsString;
     dm.cds_parametro.Close;

end;

procedure Tfnotafiscal.FormShow(Sender: TObject);
var
  codigo :integer;
begin
  inherited;

  //fatura_NF := '';
  //Se a tabela movimento não esta aberta então não existe pedido aberto
  //não vai ser aberto por outro lugar
  //a tabela esta aberta, então verifica se é edicao ou inserção
  //procurando na tabela venda pelo código do movimento.
  codmovdet := 1999999;
  if scds_nf_proc.Active then
    scds_nf_proc.Close;
  scds_nf_proc.Params[0].AsInteger := codigo_NF;
  scds_nf_proc.Open;

   if not scds_nf_proc.IsEmpty then
   begin
      if cds_nf.Active then
        cds_nf.Close;
      cds_nf.Params[0].AsInteger:=scds_nf_procNUMNF.AsInteger;
      cds_nf.Open;
      cds_nf.Edit;

      if cds_nf_serv.Active then
        cds_nf_serv.Close;
      cds_nf_serv.Params[0].AsInteger := cds_nfNUMNF.AsInteger;
      cds_nf_serv.Open;
      if cds_nf_serv.IsEmpty then
        cds_nf_serv.Append
      else
        cds_nf_serv.Edit;
   end
   else
   begin
     btnIncluir.Visible:=True;
     if ( not cds_nf.Active) then
         cds_nf.open;

     if (not cds_nf_serv.Active) then
     cds_nf_serv.Open;

   end;
   scds_nf_proc.Close;


  if cds_nf.IsEmpty then
  begin
    btnIncluir.Click;
  end;
end;

procedure Tfnotafiscal.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_nfNUMNF.AsInteger;
end;

procedure Tfnotafiscal.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure Tfnotafiscal.cds_Mov_detCalcFields(DataSet: TDataSet);
begin
  inherited;
  cds_Mov_detVALTOTAL.Value:=
    cds_Mov_detPRECO.Value*cds_Mov_detQUANTIDADE.Value;
end;

procedure Tfnotafiscal.BitBtn4Click(Sender: TObject);
var nunf: integer;
begin
  if (DtSrc.State in [dsEdit, dsInsert]) Then
  begin
    btnGravar.Click;
    exit;
  end;
  nunf := cds_nfNUMNF.AsInteger;
  // Calcula ICMS - IPI
  calcula_icms('OUTROS');
  // Abre a tabela Novamente.
  cds_nf.Close;
  cds_nf.Params[0].AsInteger := nunf;
  cds_nf.Open;
end;

procedure Tfnotafiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
       if (sds_proc.Active) then
          sds_proc.Close;
end;

procedure Tfnotafiscal.BitBtn5Click(Sender: TObject);
begin
  inherited;
  repNF.FileName := str_relatorio + 'impr_reciboprovenda.rep';
  repNF.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repNF.Report.Params[0].Value := cds_nfNUMNF.AsInteger;
  repNF.Execute;
end;

procedure Tfnotafiscal.DBEdit29Change(Sender: TObject);
begin
  inherited;
  if cdsTransp.Active then
    cdsTransp.Close;
  cdsTransp.Params[0].AsInteger := cds_nfCODTRANSP.AsInteger;
  cdsTransp.Open;
  if (not cdsTransp.IsEmpty) then
  begin
    if cdsTranspFRETE.AsString <> DBEdit29.Text then
    begin
      cdsTransp.Edit;
      cdsTranspFRETE.AsString := DBEdit29.Text;
      cdsTransp.ApplyUpdates(0);
    end;
  end;
  cdsTransp.close;
end;

end.
