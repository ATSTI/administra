unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, xmldom, XMLIntf, DB,IniFiles,
  ACBrNFeDANFeRLClass, ACBrNFeDANFEClass, ACBrMail,
  ACBrValidador, JvAppStorage, JvAppXMLStorage,
  JvComponentBase, JvFormPlacement, msxmldom, XMLDoc, ACBrBase, ACBrDFe,
  ACBrNFe, ImgList,  Provider, DBClient, Grids, DBGrids,
   StdCtrls, Mask, JvExMask, JvToolEdit, Buttons,
  ExtCtrls, ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection ,ACBrUtil, JvExDBGrids, JvDBGrid, ZAbstractConnection,pcnConversao,
  pcnNFe,pcnConversaoNFe,System.ImageList,MaskUtils,StrUtils, ACBrDANFCeFortesFr,
  Midas, math;


type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    NFe: TTabSheet;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    sbtnGetCert: TSpeedButton;
    Label7: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label23: TLabel;
    lblSerieNfe: TLabel;
    cbTipoNota: TRadioGroup;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    MemoResp: TMemo;
    Edit1: TEdit;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    btnListar: TBitBtn;
    JvDateEdit2: TJvDateEdit;
    chkTodas: TCheckBox;
    ComboBox1: TComboBox;
    JvDateEdit1: TJvDateEdit;
    btnSairVenda: TBitBtn;
    btnSair: TBitBtn;
    edSerie: TEdit;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    lblMsgNfe: TLabel;
    btnGeraNFe: TBitBtn;
    BtnPreVis: TBitBtn;
    BtnEnvEmail: TBitBtn;
    GroupBox3: TGroupBox;
    btnImprime: TBitBtn;
    btnGeraPDF: TBitBtn;
    TabSheet9: TTabSheet;
    btnSVCAN: TBitBtn;
    btnSvcanGera: TBitBtn;
    TabSheet2: TTabSheet;
    GroupBox6: TGroupBox;
    btnContingencia: TBitBtn;
    btnPreVisCont: TBitBtn;
    btnValidaXML: TBitBtn;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    btnSPED: TBitBtn;
    btnPreVisSped: TBitBtn;
    chkScan: TCheckBox;
    TabSheet4: TTabSheet;
    GroupBox8: TGroupBox;
    btnDpec: TBitBtn;
    btnPreVisDPEC: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet5: TTabSheet;
    GroupBox9: TGroupBox;
    btnFSDA: TBitBtn;
    btnPreVisFSDA: TBitBtn;
    BitBtn3: TBitBtn;
    TabSheet6: TTabSheet;
    Label18: TLabel;
    btnStatus: TBitBtn;
    btnConsulta: TBitBtn;
    btnValidaNFe: TBitBtn;
    btnCancelaNFe: TBitBtn;
    btnInutilizar: TBitBtn;
    BitBtn4: TBitBtn;
    edNFCancelar: TEdit;
    BitBtn7: TBitBtn;
    TabSheet7: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edUfEmbarque: TEdit;
    edLocalEmbarque: TEdit;
    btnAbaPrincipal: TBitBtn;
    rgViaTransp: TRadioGroup;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    TabSheet8: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    btnAlteraStatus: TBitBtn;
    btnStatusNaoEnviada: TBitBtn;
    GroupBox11: TGroupBox;
    Label17: TLabel;
    edRecibo: TEdit;
    memoDados: TMemo;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    edDadosXml: TEdit;
    CCe: TTabSheet;
    Panel2: TPanel;
    GroupBox12: TGroupBox;
    Label11: TLabel;
    Memo1: TMemo;
    GroupBox13: TGroupBox;
    Label14: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    btnListarCCe: TBitBtn;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    GroupBox10: TGroupBox;
    Label8: TLabel;
    Edit3: TEdit;
    edtNumSerie2: TEdit;
    BitBtn8: TBitBtn;
    BtnCCe: TBitBtn;
    btnImprimirCCe: TBitBtn;
    cdsNF: TClientDataSet;
    dspNF: TDataSetProvider;
    dspItensNF: TDataSetProvider;
    cdsItensNF: TClientDataSet;
    OpenDialog1: TOpenDialog;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    cds_ccusto: TClientDataSet;
    d_2: TDataSetProvider;
    cds_Movimento: TClientDataSet;
    dsp_Movimento: TDataSetProvider;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ImageList2: TImageList;
    XMLDocument1: TXMLDocument;
    sNFC: TClientDataSet;
    dspNFC: TDataSetProvider;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    dspFatura: TDataSetProvider;
    cdsFatura: TClientDataSet;
    dspCCe: TDataSetProvider;
    cdsCCE: TClientDataSet;
    DtSrcCCe: TDataSource;
    ACBrValidador1: TACBrValidador;
    ACBrMail1: TACBrMail;
    dspEndEntrega: TDataSetProvider;
    cdsEndEntrega: TClientDataSet;
    sdsEndEntrega: TZQuery;
    sFornec: TZQuery;
    sEmpresa1: TZQuery;
    sdsNF: TZQuery;
    sdsItensNF: TZQuery;
    sds_Movimento: TZQuery;
    sds_param: TZQuery;
    memoRespWS: TMemo;
    sdsCfopNCM: TZQuery;
    sdsCfopProd: TZQuery;
    sdsProd_Comb: TZQuery;
    sProdutos: TZQuery;
    sMenorData: TZQuery;
    sMaiorData: TZQuery;
    sEmpresa: TZQuery;
    sCFOP: TZQuery;
    sCliente: TZQuery;
    sTabIBGE: TZQuery;
    sMenorDataMENORDATA: TDateField;
    sMaiorDataMAIORDATA: TDateField;
    sdsNFC: TZQuery;
    sEmail: TZQuery;
    sdsFatura: TZQuery;
    sAdicao: TZQuery;
    sDI: TZQuery;
    sEstado: TZQuery;
    s_2: TZQuery;
    sdsCCE: TZQuery;
    JvDBGrid1: TDBGrid;
    JvDBGrid2: TDBGrid;
    sds_parametro: TZQuery;
    cds_parametro: TClientDataSet;
    dsp_parametro: TDataSetProvider;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    sqlTotal_tributos: TZQuery;
    cdsTransp: TClientDataSet;
    dspTransp: TDataSetProvider;
    sdsTransp: TZQuery;
    dspListaTransp: TDataSetProvider;
    listaTransp: TClientDataSet;
    sdslistaTransp: TZQuery;
    sds_parametroDESCRICAO: TWideStringField;
    sds_parametroPARAMETRO: TWideStringField;
    sds_parametroCONFIGURADO: TWideStringField;
    sds_parametroDADOS: TWideStringField;
    sds_parametroD1: TWideStringField;
    sds_parametroD2: TWideStringField;
    sds_parametroD3: TWideStringField;
    sds_parametroD4: TWideStringField;
    sds_parametroD5: TWideStringField;
    sds_parametroD6: TWideStringField;
    sds_parametroD7: TWideStringField;
    sds_parametroD8: TWideStringField;
    sds_parametroD9: TWideStringField;
    sds_parametroINSTRUCOES: TWideStringField;
    sds_parametroVALOR: TFloatField;
    cds_parametroDESCRICAO: TWideStringField;
    cds_parametroPARAMETRO: TWideStringField;
    cds_parametroCONFIGURADO: TWideStringField;
    cds_parametroDADOS: TWideStringField;
    cds_parametroD1: TWideStringField;
    cds_parametroD2: TWideStringField;
    cds_parametroD3: TWideStringField;
    cds_parametroD4: TWideStringField;
    cds_parametroD5: TWideStringField;
    cds_parametroD6: TWideStringField;
    cds_parametroD7: TWideStringField;
    cds_parametroD8: TWideStringField;
    cds_parametroD9: TWideStringField;
    cds_parametroINSTRUCOES: TWideStringField;
    cds_parametroVALOR: TFloatField;
    sdsTranspCODTRANSP: TIntegerField;
    sdsTranspNOMETRANSP: TWideStringField;
    sdsTranspPLACATRANSP: TWideStringField;
    sdsTranspCNPJ_CPF: TWideStringField;
    sdsTranspEND_TRANSP: TWideStringField;
    sdsTranspCIDADE_TRANSP: TWideStringField;
    sdsTranspUF_VEICULO_TRANSP: TWideStringField;
    sdsTranspUF_TRANSP: TWideStringField;
    sdsTranspFRETE: TWideStringField;
    sdsTranspINSCRICAOESTADUAL: TWideStringField;
    sdsTranspCORPONF1: TWideStringField;
    sdsTranspCORPONF2: TWideStringField;
    sdsTranspCORPONF3: TWideStringField;
    sdsTranspCORPONF4: TWideStringField;
    sdsTranspCORPONF5: TWideStringField;
    sdsTranspCORPONF6: TWideStringField;
    sdsTranspFONE: TWideStringField;
    sdsTranspFONE2: TWideStringField;
    sdsTranspFAX: TWideStringField;
    sdsTranspCONTATO: TWideStringField;
    sdsTranspBAIRRO: TWideStringField;
    sdsTranspCEP: TWideStringField;
    sdsTranspFANTASIA: TWideStringField;
    sdsTranspEMAIL: TWideStringField;
    sdslistaTranspCODTRANSP: TIntegerField;
    sdslistaTranspNOMETRANSP: TWideStringField;
    sdslistaTranspPLACATRANSP: TWideStringField;
    sdslistaTranspCNPJ_CPF: TWideStringField;
    sdslistaTranspEND_TRANSP: TWideStringField;
    sdslistaTranspCIDADE_TRANSP: TWideStringField;
    sdslistaTranspUF_VEICULO_TRANSP: TWideStringField;
    sdslistaTranspUF_TRANSP: TWideStringField;
    sdslistaTranspFRETE: TWideStringField;
    sdslistaTranspINSCRICAOESTADUAL: TWideStringField;
    sdslistaTranspCORPONF1: TWideStringField;
    sdslistaTranspCORPONF2: TWideStringField;
    sdslistaTranspCORPONF3: TWideStringField;
    sdslistaTranspCORPONF4: TWideStringField;
    sdslistaTranspCORPONF5: TWideStringField;
    sdslistaTranspCORPONF6: TWideStringField;
    sdslistaTranspFONE: TWideStringField;
    sdslistaTranspFONE2: TWideStringField;
    sdslistaTranspFAX: TWideStringField;
    sdslistaTranspCONTATO: TWideStringField;
    sdslistaTranspBAIRRO: TWideStringField;
    sdslistaTranspCEP: TWideStringField;
    sdslistaTranspFANTASIA: TWideStringField;
    sdslistaTranspEMAIL: TWideStringField;
    sdsCfopNCMNCM: TWideStringField;
    sdsCfopNCMCFOP: TWideStringField;
    sdsCfopNCMUF: TWideStringField;
    sdsCfopNCMCODFISCAL: TWideStringField;
    sdsCfopNCMICMS_SUBST: TFloatField;
    sdsCfopNCMICMS_SUBST_IC: TFloatField;
    sdsCfopNCMICMS_SUBST_IND: TFloatField;
    sdsCfopNCMICMS: TFloatField;
    sdsCfopNCMICMS_BASE: TFloatField;
    sdsCfopNCMCST: TWideStringField;
    sdsCfopNCMIPI: TFloatField;
    sdsCfopNCMCSOSN: TWideStringField;
    sdsCfopNCMCSTIPI: TWideStringField;
    sdsCfopNCMCSTPIS: TWideStringField;
    sdsCfopNCMCSTCOFINS: TWideStringField;
    sdsCfopNCMPIS: TFloatField;
    sdsCfopNCMCOFINS: TFloatField;
    sdsCfopNCMORIGEM: TIntegerField;
    sdsCfopNCMDADOSADC1: TWideStringField;
    sdsCfopNCMDADOSADC2: TWideStringField;
    sdsCfopNCMDADOSADC3: TWideStringField;
    sdsCfopNCMDADOSADC4: TWideStringField;
    sdsCfopNCMDADOSADC5: TWideStringField;
    sdsCfopNCMDADOSADC6: TWideStringField;
    sdsCfopNCMALIQ_CUPOM: TWideStringField;
    sdsCfopNCMVBCUFDEST: TFloatField;
    sdsCfopNCMPFCPUFDEST: TFloatField;
    sdsCfopNCMPICMSUFDEST: TFloatField;
    sdsCfopNCMPICMSINTER: TFloatField;
    sdsCfopNCMPICMSINTERPART: TFloatField;
    sdsCfopNCMVFCPUFDEST: TFloatField;
    sdsCfopNCMVICMSUFDEST: TFloatField;
    sdsCfopNCMVICMSUFREMET: TFloatField;
    sdsCfopNCMCST_IPI_CENQ: TWideStringField;
    sdsCfopProdCOD_PROD: TIntegerField;
    sdsCfopProdCFOP: TWideStringField;
    sdsCfopProdUF: TWideStringField;
    sdsCfopProdICMS_SUBST: TFloatField;
    sdsCfopProdICMS_SUBST_IC: TFloatField;
    sdsCfopProdICMS_SUBST_IND: TFloatField;
    sdsCfopProdICMS: TFloatField;
    sdsCfopProdICMS_BASE: TFloatField;
    sdsCfopProdCST: TWideStringField;
    sdsCfopProdIPI: TFloatField;
    sdsCfopProdCSOSN: TWideStringField;
    sdsCfopProdCSTIPI: TWideStringField;
    sdsCfopProdCSTPIS: TWideStringField;
    sdsCfopProdCSTCOFINS: TWideStringField;
    sdsCfopProdPIS: TFloatField;
    sdsCfopProdCOFINS: TFloatField;
    sdsCfopProdALIQ_CUPOM: TWideStringField;
    sdsCfopProdVBCUFDEST: TFloatField;
    sdsCfopProdPFCPUFDEST: TFloatField;
    sdsCfopProdPICMSUFDEST: TFloatField;
    sdsCfopProdPICMSINTER: TFloatField;
    sdsCfopProdPICMSINTERPART: TFloatField;
    sdsCfopProdVFCPUFDEST: TFloatField;
    sdsCfopProdVICMSUFDEST: TFloatField;
    sdsCfopProdVICMSUFREMET: TFloatField;
    sdsCfopProdCST_IPI_CENQ: TWideStringField;
    sEmpresaEMPRESA: TWideStringField;
    sEmpresaRAZAO: TWideStringField;
    sEmpresaCNPJ_CPF: TWideStringField;
    sEmpresaENDERECO: TWideStringField;
    sEmpresaLOGRADOURO: TWideStringField;
    sEmpresaBAIRRO: TWideStringField;
    sEmpresaCIDADE: TWideStringField;
    sEmpresaUF: TWideStringField;
    sEmpresaCEP: TWideStringField;
    sEmpresaDDD: TWideStringField;
    sEmpresaFONE: TWideStringField;
    sEmpresaFONE_1: TWideStringField;
    sEmpresaFONE_2: TWideStringField;
    sEmpresaFAX: TWideStringField;
    sEmpresaE_MAIL: TWideStringField;
    sEmpresaWEB: TWideStringField;
    sEmpresaLOGOTIPO: TBlobField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TWideStringField;
    sEmpresaIE_RG: TWideStringField;
    sEmpresaSLOGAN: TWideStringField;
    sEmpresaOUTRAS_INFO: TWideStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TWideStringField;
    sEmpresaDIVERSOS2: TWideStringField;
    sEmpresaDIVERSOS3: TWideStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TWideStringField;
    sEmpresaSENHA: TWideStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaNUMERO: TWideStringField;
    sEmpresaCD_IBGE: TWideStringField;
    sEmpresaCRT: TIntegerField;
    sEmpresaTREGIME: TIntegerField;
    sEmpresaIM: TWideStringField;
    sEmpresaCONTADOR: TWideStringField;
    sEmpresaCONTADOR_CRC: TWideStringField;
    sEmpresaCONTADOR_CNPJ: TWideStringField;
    sEmpresaCONTADOR_CPF: TWideStringField;
    sEmpresaCONTADOR_CEP: TWideStringField;
    sEmpresaCONTADOR_END: TWideStringField;
    sEmpresaCONTADOR_NUMEND: TWideStringField;
    sEmpresaCONTADOR_COMPL: TWideStringField;
    sEmpresaCONTADOR_BAIRRO: TWideStringField;
    sEmpresaCONTADOR_FONE: TWideStringField;
    sEmpresaCONTADOR_FAX: TWideStringField;
    sEmpresaCONTADOR_EMAIL: TWideStringField;
    sEmpresaCONTADOR_COD_MUN: TWideStringField;
    sEmpresaCODINDTIPOCON: TSmallintField;
    sEmpresaINDAPROCRED: TSmallintField;
    sEmpresaCODINDINCTRIBUTARIA: TSmallintField;
    sEmpresaINDICADORATIVIDADE: TSmallintField;
    sEmpresaINDICADORNATUREZAPJ: TSmallintField;
    sEmpresaINDCODINCIDENCIA: TSmallintField;
    sEmpresaCODINDCRITESCRIT: TSmallintField;
    sEmpresaINDESCRITURACAO: TSmallintField;
    sEmpresaINDCTA: TSmallintField;
    sEmpresaINDTIPCOOP: TSmallintField;
    sEmpresaINDAJ: TSmallintField;
    sEmpresaBASECALCULOCREDITO: TSmallintField;
    sEmpresaCODAJ: TSmallintField;
    sEmpresaINDNATREC: TSmallintField;
    sEmpresaCODCRED: TSmallintField;
    sEmpresaNATCREDDESC: TSmallintField;
    sEmpresaINDCREDORI: TSmallintField;
    sEmpresaINDREC: TSmallintField;
    sEmpresaCODCONT: TSmallintField;
    sEmpresaINDDESCCRED: TSmallintField;
    sEmpresaINDORIGEMDIVERSAS: TSmallintField;
    sEmpresaINDNATRETFONTE: TSmallintField;
    sEmpresaINDTPOPERACAORECEITA: TSmallintField;
    sEmpresaINDNATDEDUCAO: TSmallintField;
    sEmpresaCNPJPREFEITURA: TWideStringField;
    sEmpresaNOMEPREFEITURA: TWideStringField;
    sEmpresaCHAVELIC: TWideStringField;
    sEmpresaCHAVECONT: TWideStringField;
    sEmpresaMODELOCUPOM: TWideStringField;
    sEmpresaECFMOD: TWideStringField;
    sEmpresaECFFAB: TWideStringField;
    sEmpresaECFCX: TWideStringField;
    sEmpresaCENTROCUSTO: TWideStringField;
    sCFOPCFCOD: TWideStringField;
    sCFOPCFNOME: TWideStringField;
    sCFOPUF: TWideStringField;
    sCFOPICMS: TFloatField;
    sCFOPREDUCAO: TFloatField;
    sCFOPIPI: TFloatField;
    sCFOPICMS_SUBSTRIB: TFloatField;
    sCFOPICMS_SUBSTRIB_IC: TFloatField;
    sCFOPICMS_SUBSTRIB_IND: TFloatField;
    sCFOPNAOENVFATURA: TWideStringField;
    sCFOPCSTPIS: TWideStringField;
    sCFOPCSTCOFINS: TWideStringField;
    sCFOPCSTIPI: TWideStringField;
    sCFOPCOFINS: TFloatField;
    sCFOPPIS: TFloatField;
    sCFOPCODFISCAL: TWideStringField;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TWideStringField;
    sClienteCONTATO: TWideStringField;
    sClienteINSCESTADUAL: TWideStringField;
    sClienteRAZAOSOCIAL: TWideStringField;
    sClienteCNPJ: TWideStringField;
    sClienteLOGRADOURO: TWideStringField;
    sClienteBAIRRO: TWideStringField;
    sClienteCOMPLEMENTO: TWideStringField;
    sClienteCIDADE: TWideStringField;
    sClienteUF: TWideStringField;
    sClienteCEP: TWideStringField;
    sClienteNUMERO: TWideStringField;
    sClienteTELEFONE: TWideStringField;
    sClienteDDD: TWideStringField;
    sClienteCD_IBGE: TWideStringField;
    sClienteE_MAIL: TWideStringField;
    sClientePAIS: TWideStringField;
    sClienteCODPAIS: TWideStringField;
    sClienteCODFISCAL: TWideStringField;
    sClienteSUFRAMA: TWideStringField;
    sClienteTIPOFIRMA: TSmallintField;
    sClienteTEM_IE: TWideStringField;
    sTabIBGENM_LOCALIDADE: TWideStringField;
    sTabIBGECD_IBGE: TWideStringField;
    sTabIBGENM_MUNICIPIO: TWideStringField;
    sTabIBGENM_TIPO_LOCALIDADE: TWideStringField;
    sTabIBGESQ_IBGE: TIntegerField;
    sTabIBGECD_UF: TWideStringField;
    sdsNFCNUMNF: TIntegerField;
    sdsNFCPROTOCOLOENV: TWideStringField;
    sdsNFCNUMRECIBO: TWideStringField;
    sdsNFCPROTOCOLOCANC: TWideStringField;
    sEmailCODCLIENTE: TIntegerField;
    sEmailNOMECLIENTE: TWideStringField;
    sEmailRAZAOSOCIAL: TWideStringField;
    sEmailE_MAIL: TWideStringField;
    sdsFaturaDATAFATURA: TDateField;
    sdsFaturaNUMEROFATURA: TWideStringField;
    sdsFaturaVALOR: TFloatField;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TWideStringField;
    s_2NOME: TWideStringField;
    sds_paramDESCRICAO: TWideStringField;
    sds_paramPARAMETRO: TWideStringField;
    sds_paramCONFIGURADO: TWideStringField;
    sds_paramDADOS: TWideStringField;
    sds_paramD1: TWideStringField;
    sds_paramD2: TWideStringField;
    sds_paramD3: TWideStringField;
    sds_paramD4: TWideStringField;
    sds_paramD5: TWideStringField;
    sds_paramD6: TWideStringField;
    sds_paramD7: TWideStringField;
    sds_paramD8: TWideStringField;
    sds_paramD9: TWideStringField;
    sds_paramINSTRUCOES: TWideStringField;
    sds_paramVALOR: TFloatField;
    sFornecCODCLIENTE: TIntegerField;
    sFornecNOMECLIENTE: TWideStringField;
    sFornecCONTATO: TWideStringField;
    sFornecINSCESTADUAL: TWideStringField;
    sFornecRAZAOSOCIAL: TWideStringField;
    sFornecCNPJ: TWideStringField;
    sFornecLOGRADOURO: TWideStringField;
    sFornecBAIRRO: TWideStringField;
    sFornecCOMPLEMENTO: TWideStringField;
    sFornecCIDADE: TWideStringField;
    sFornecUF: TWideStringField;
    sFornecCEP: TWideStringField;
    sFornecNUMERO: TWideStringField;
    sFornecTELEFONE: TWideStringField;
    sFornecDDD: TSmallintField;
    sFornecCD_IBGE: TWideStringField;
    sFornecE_MAIL: TWideStringField;
    sFornecPAIS: TWideStringField;
    sFornecCODPAIS: TWideStringField;
    sFornecCODFISCAL: TWideStringField;
    sFornecTIPOFIRMA: TSmallintField;
    sEmpresa1EMPRESA: TWideStringField;
    sEmpresa1RAZAO: TWideStringField;
    sEmpresa1CNPJ_CPF: TWideStringField;
    sEmpresa1ENDERECO: TWideStringField;
    sEmpresa1LOGRADOURO: TWideStringField;
    sEmpresa1BAIRRO: TWideStringField;
    sEmpresa1CIDADE: TWideStringField;
    sEmpresa1UF: TWideStringField;
    sEmpresa1CEP: TWideStringField;
    sEmpresa1DDD: TWideStringField;
    sEmpresa1FONE: TWideStringField;
    sEmpresa1FONE_1: TWideStringField;
    sEmpresa1FONE_2: TWideStringField;
    sEmpresa1FAX: TWideStringField;
    sEmpresa1E_MAIL: TWideStringField;
    sEmpresa1WEB: TWideStringField;
    sEmpresa1LOGOTIPO: TBlobField;
    sEmpresa1CODIGO: TIntegerField;
    sEmpresa1TIPO: TWideStringField;
    sEmpresa1IE_RG: TWideStringField;
    sEmpresa1SLOGAN: TWideStringField;
    sEmpresa1OUTRAS_INFO: TWideStringField;
    sEmpresa1CODIGO_CONTA: TIntegerField;
    sEmpresa1DIVERSOS1: TWideStringField;
    sEmpresa1DIVERSOS2: TWideStringField;
    sEmpresa1DIVERSOS3: TWideStringField;
    sEmpresa1ANOLETIVO: TIntegerField;
    sEmpresa1MEDIA_ESCOLA: TFloatField;
    sEmpresa1PORTA: TIntegerField;
    sEmpresa1SMTP: TWideStringField;
    sEmpresa1SENHA: TWideStringField;
    sEmpresa1CCUSTO: TIntegerField;
    sEmpresa1NUMERO: TWideStringField;
    sEmpresa1CD_IBGE: TWideStringField;
    sEmpresa1CRT: TIntegerField;
    sEmpresa1TREGIME: TIntegerField;
    sEmpresa1IM: TWideStringField;
    sEmpresa1CONTADOR: TWideStringField;
    sEmpresa1CONTADOR_CRC: TWideStringField;
    sEmpresa1CONTADOR_CNPJ: TWideStringField;
    sEmpresa1CONTADOR_CPF: TWideStringField;
    sEmpresa1CONTADOR_CEP: TWideStringField;
    sEmpresa1CONTADOR_END: TWideStringField;
    sEmpresa1CONTADOR_NUMEND: TWideStringField;
    sEmpresa1CONTADOR_COMPL: TWideStringField;
    sEmpresa1CONTADOR_BAIRRO: TWideStringField;
    sEmpresa1CONTADOR_FONE: TWideStringField;
    sEmpresa1CONTADOR_FAX: TWideStringField;
    sEmpresa1CONTADOR_EMAIL: TWideStringField;
    sEmpresa1CONTADOR_COD_MUN: TWideStringField;
    sEmpresa1CODINDTIPOCON: TSmallintField;
    sEmpresa1INDAPROCRED: TSmallintField;
    sEmpresa1CODINDINCTRIBUTARIA: TSmallintField;
    sEmpresa1INDICADORATIVIDADE: TSmallintField;
    sEmpresa1INDICADORNATUREZAPJ: TSmallintField;
    sEmpresa1INDCODINCIDENCIA: TSmallintField;
    sEmpresa1CODINDCRITESCRIT: TSmallintField;
    sEmpresa1INDESCRITURACAO: TSmallintField;
    sEmpresa1INDCTA: TSmallintField;
    sEmpresa1INDTIPCOOP: TSmallintField;
    sEmpresa1INDAJ: TSmallintField;
    sEmpresa1BASECALCULOCREDITO: TSmallintField;
    sEmpresa1CODAJ: TSmallintField;
    sEmpresa1INDNATREC: TSmallintField;
    sEmpresa1CODCRED: TSmallintField;
    sEmpresa1NATCREDDESC: TSmallintField;
    sEmpresa1INDCREDORI: TSmallintField;
    sEmpresa1INDREC: TSmallintField;
    sEmpresa1CODCONT: TSmallintField;
    sEmpresa1INDDESCCRED: TSmallintField;
    sEmpresa1INDORIGEMDIVERSAS: TSmallintField;
    sEmpresa1INDNATRETFONTE: TSmallintField;
    sEmpresa1INDTPOPERACAORECEITA: TSmallintField;
    sEmpresa1INDNATDEDUCAO: TSmallintField;
    sEmpresa1CNPJPREFEITURA: TWideStringField;
    sEmpresa1NOMEPREFEITURA: TWideStringField;
    sEmpresa1CHAVELIC: TWideStringField;
    sEmpresa1CHAVECONT: TWideStringField;
    sEmpresa1MODELOCUPOM: TWideStringField;
    sEmpresa1ECFMOD: TWideStringField;
    sEmpresa1ECFFAB: TWideStringField;
    sEmpresa1ECFCX: TWideStringField;
    sdsCCECHAVE: TWideStringField;
    sdsCCEORGAO: TIntegerField;
    sdsCCECNPJ: TWideStringField;
    sdsCCEDHENVIO: TDateTimeField;
    sdsCCESEQUENCIA: TIntegerField;
    sdsCCECORRECAO: TWideStringField;
    sdsCCEPROTOCOLO: TWideStringField;
    sdsCCESELECIONOU: TWideStringField;
    sdsCCECONDICAO: TWideStringField;
    sAdicaoADIC_CODDET: TIntegerField;
    sAdicaoADIC_CODDI: TIntegerField;
    sAdicaoADIC_NADICAO: TIntegerField;
    sAdicaoADIC_NSEQUEN: TIntegerField;
    sAdicaoADIC_CODFAB: TWideStringField;
    sAdicaoADIC_VDESC: TIntegerField;
    sDIDI_CODDI: TIntegerField;
    sDIDI_NUMDI: TWideStringField;
    sDIDI_DATA: TDateField;
    sDIDI_LOCALDESEMB: TWideStringField;
    sDIDI_UFDESEMB: TWideStringField;
    sDIDI_DATADESEMB: TDateField;
    sDIDI_CODEXPORTADOR: TWideStringField;
    sDINOTASERIE: TWideStringField;
    sDICODMOVIMENTO: TIntegerField;
    sEstadoCODIGO: TIntegerField;
    sEstadoSIGLA: TWideStringField;
    sEstadoNOME: TWideStringField;
    cdsEndEntregaCODENDERECO: TIntegerField;
    cdsEndEntregaCODCLIENTE: TIntegerField;
    cdsEndEntregaLOGRADOURO: TWideStringField;
    cdsEndEntregaBAIRRO: TWideStringField;
    cdsEndEntregaCOMPLEMENTO: TWideStringField;
    cdsEndEntregaCIDADE: TWideStringField;
    cdsEndEntregaUF: TWideStringField;
    cdsEndEntregaCEP: TWideStringField;
    cdsEndEntregaTELEFONE: TWideStringField;
    cdsEndEntregaTELEFONE1: TWideStringField;
    cdsEndEntregaTELEFONE2: TWideStringField;
    cdsEndEntregaFAX: TWideStringField;
    cdsEndEntregaE_MAIL: TWideStringField;
    cdsEndEntregaRAMAL: TWideStringField;
    cdsEndEntregaTIPOEND: TSmallintField;
    cdsEndEntregaDADOSADICIONAIS: TWideStringField;
    cdsEndEntregaDDD: TWideStringField;
    cdsEndEntregaDDD1: TWideStringField;
    cdsEndEntregaDDD2: TWideStringField;
    cdsEndEntregaDDD3: TWideStringField;
    cdsEndEntregaNUMERO: TWideStringField;
    cdsEndEntregaCD_IBGE: TWideStringField;
    cdsEndEntregaPAIS: TWideStringField;
    cdsTranspCODTRANSP: TIntegerField;
    cdsTranspNOMETRANSP: TWideStringField;
    cdsTranspPLACATRANSP: TWideStringField;
    cdsTranspCNPJ_CPF: TWideStringField;
    cdsTranspEND_TRANSP: TWideStringField;
    cdsTranspCIDADE_TRANSP: TWideStringField;
    cdsTranspUF_VEICULO_TRANSP: TWideStringField;
    cdsTranspUF_TRANSP: TWideStringField;
    cdsTranspFRETE: TWideStringField;
    cdsTranspINSCRICAOESTADUAL: TWideStringField;
    cdsTranspCORPONF1: TWideStringField;
    cdsTranspCORPONF2: TWideStringField;
    cdsTranspCORPONF3: TWideStringField;
    cdsTranspCORPONF4: TWideStringField;
    cdsTranspCORPONF5: TWideStringField;
    cdsTranspCORPONF6: TWideStringField;
    cdsTranspFONE: TWideStringField;
    cdsTranspFONE2: TWideStringField;
    cdsTranspFAX: TWideStringField;
    cdsTranspCONTATO: TWideStringField;
    cdsTranspBAIRRO: TWideStringField;
    cdsTranspCEP: TWideStringField;
    cdsTranspFANTASIA: TWideStringField;
    cdsTranspEMAIL: TWideStringField;
    listaTranspCODTRANSP: TIntegerField;
    listaTranspNOMETRANSP: TWideStringField;
    listaTranspPLACATRANSP: TWideStringField;
    listaTranspCNPJ_CPF: TWideStringField;
    listaTranspEND_TRANSP: TWideStringField;
    listaTranspCIDADE_TRANSP: TWideStringField;
    listaTranspUF_VEICULO_TRANSP: TWideStringField;
    listaTranspUF_TRANSP: TWideStringField;
    listaTranspFRETE: TWideStringField;
    listaTranspINSCRICAOESTADUAL: TWideStringField;
    listaTranspCORPONF1: TWideStringField;
    listaTranspCORPONF2: TWideStringField;
    listaTranspCORPONF3: TWideStringField;
    listaTranspCORPONF4: TWideStringField;
    listaTranspCORPONF5: TWideStringField;
    listaTranspCORPONF6: TWideStringField;
    listaTranspFONE: TWideStringField;
    listaTranspFONE2: TWideStringField;
    listaTranspFAX: TWideStringField;
    listaTranspCONTATO: TWideStringField;
    listaTranspBAIRRO: TWideStringField;
    listaTranspCEP: TWideStringField;
    listaTranspFANTASIA: TWideStringField;
    listaTranspEMAIL: TWideStringField;
    sNFCNUMNF: TIntegerField;
    sNFCPROTOCOLOENV: TWideStringField;
    sNFCNUMRECIBO: TWideStringField;
    sNFCPROTOCOLOCANC: TWideStringField;
    cdsFaturaDATAFATURA: TDateField;
    cdsFaturaNUMEROFATURA: TWideStringField;
    cdsFaturaVALOR: TFloatField;
    cdsNFCFOP: TWideStringField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFCORPONF1: TWideStringField;
    cdsNFXMLNFE: TBlobField;
    cdsNFIDCOMPLEMENTAR: TWideStringField;
    cdsNFCORPONF2: TWideStringField;
    cdsNFCORPONF3: TWideStringField;
    cdsNFCORPONF4: TWideStringField;
    cdsNFCORPONF5: TWideStringField;
    cdsNFCORPONF6: TWideStringField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFNUMNF: TIntegerField;
    cdsNFCODVENDA: TIntegerField;
    cdsNFFATURA: TWideStringField;
    cdsNFNATUREZA: TSmallintField;
    cdsNFBASE_ICMS: TFloatField;
    cdsNFVALOR_ICMS: TFloatField;
    cdsNFBASE_ICMS_SUBST: TFloatField;
    cdsNFVALOR_ICMS_SUBST: TFloatField;
    cdsNFVALOR_PRODUTO: TFloatField;
    cdsNFVALOR_FRETE: TFloatField;
    cdsNFVALOR_SEGURO: TFloatField;
    cdsNFOUTRAS_DESP: TFloatField;
    cdsNFVALOR_IPI: TFloatField;
    cdsNFII: TFloatField;
    cdsNFBCII: TFloatField;
    cdsNFVALOR_TOTAL_NOTA: TFloatField;
    cdsNFFRETE: TWideStringField;
    cdsNFCNPJ_CPF: TWideStringField;
    cdsNFNOMETRANSP: TWideStringField;
    cdsNFINSCRICAOESTADUAL: TWideStringField;
    cdsNFEND_TRANSP: TWideStringField;
    cdsNFCIDADE_TRANSP: TWideStringField;
    cdsNFUF_TRANSP: TWideStringField;
    cdsNFPLACATRANSP: TWideStringField;
    cdsNFUF_VEICULO_TRANSP: TWideStringField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFESPECIE: TWideStringField;
    cdsNFMARCA: TWideStringField;
    cdsNFNUMERO: TWideStringField;
    cdsNFPESOLIQUIDO: TCurrencyField;
    cdsNFPESOBRUTO: TCurrencyField;
    cdsNFRAZAOSOCIAL: TWideStringField;
    cdsNFCNPJ: TWideStringField;
    cdsNFHORASAIDA: TTimeField;
    cdsNFNOTASERIE: TWideStringField;
    cdsNFSELECIONOU: TWideStringField;
    cdsNFREDUZICMS: TFloatField;
    cdsNFPROTOCOLOENV: TWideStringField;
    cdsNFNUMRECIBO: TWideStringField;
    cdsNFPROTOCOLOCANC: TWideStringField;
    cdsNFENTRADA: TFloatField;
    cdsNFVALOR_PAGAR: TFloatField;
    cdsNFVALOR_PIS: TFloatField;
    cdsNFVALOR_COFINS: TFloatField;
    cdsNFVALOR_DESCONTO: TFloatField;
    cdsNFTRANSP2: TWideStringField;
    cdsNFCODTRANSP: TIntegerField;
    cdsNFBASE_IPI: TFloatField;
    cdsNFBASE_PIS: TFloatField;
    cdsNFBASE_COFINS: TFloatField;
    cdsNFVLRTOT_TRIB: TFloatField;
    cdsNFSTATUS: TWideStringField;
    cdsNFNOMEXML: TWideStringField;
    cdsNFNFE_FINNFE: TWideStringField;
    cdsNFNFE_MODELO: TWideStringField;
    cdsNFNFE_VERSAO: TWideStringField;
    cdsNFNFE_DESTOPERACAO: TWideStringField;
    cdsNFNFE_FORMATODANFE: TWideStringField;
    cdsNFNFE_TIPOEMISSAO: TWideStringField;
    cdsNFNFE_INDFINAL: TWideStringField;
    cdsNFNFE_INDPRES: TWideStringField;
    cdsNFIND_IEDEST: TWideStringField;
    cdsNFCCUSTO: TIntegerField;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoDATA_SISTEMA: TDateTimeField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoCONTROLE: TWideStringField;
    sds_MovimentoOBS: TWideStringField;
    sds_MovimentoTOTALMOVIMENTO: TFloatField;
    sds_MovimentoCODMOVRATEIO: TIntegerField;
    sds_MovimentoVALORRATEIO: TFloatField;
    sds_MovimentoRATEIO: TFloatField;
    sds_MovimentoCONFERIDO: TWideStringField;
    sds_MovimentoNFCOBRANCA: TIntegerField;
    sds_MovimentoORDEMATEND: TIntegerField;
    sds_MovimentoNFREVENDA: TIntegerField;
    sds_MovimentoCODORIGEM: TIntegerField;
    sds_MovimentoKM: TWideStringField;
    sds_MovimentoNFE: TWideStringField;
    sds_MovimentoPRAZO_ENT: TIntegerField;
    sds_MovimentoVAL_PROP: TDateField;
    sds_MovimentoFORMA_PAG: TWideStringField;
    sds_MovimentoVALOR_FRETE: TFloatField;
    sds_MovimentoDATA_ENTREGA: TDateField;
    sds_MovimentoPRAZO_PAGAMENTO: TWideStringField;
    sds_MovimentoUSER_APROVA: TWideStringField;
    sds_MovimentoCODTRANSP: TIntegerField;
    sds_MovimentoTPFRETE: TWideStringField;
    sds_MovimentoCODPEDIDO: TIntegerField;
    sds_MovimentoCODCOTACAO: TIntegerField;
    sds_MovimentoUSUARIOLOGADO: TWideStringField;
    sds_MovimentoTIPO_PEDIDO: TWideStringField;
    sds_MovimentoENTREGA: TWideStringField;
    sds_MovimentoQTD: TIntegerField;
    sds_MovimentoDESCONTO: TFloatField;
    sds_MovimentoHIST_MOV: TWideStringField;
    sds_MovimentoNOMECLIENTE: TWideStringField;
    sds_MovimentoOBS_1: TWideStringField;
    sds_MovimentoCNPJ: TWideStringField;
    sds_MovimentoPLACA: TWideStringField;
    sds_MovimentoMARCA_MODELO: TWideStringField;
    sds_MovimentoNOMEUSUARIO: TWideStringField;
    sds_MovimentoNOMEFORNECEDOR: TWideStringField;
    sds_MovimentoDESCNATUREZA: TWideStringField;
    sds_MovimentoALMOXARIFADO: TWideStringField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoDATA_SISTEMA: TDateTimeField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoCONTROLE: TWideStringField;
    cds_MovimentoOBS: TWideStringField;
    cds_MovimentoTOTALMOVIMENTO: TFloatField;
    cds_MovimentoCODMOVRATEIO: TIntegerField;
    cds_MovimentoVALORRATEIO: TFloatField;
    cds_MovimentoRATEIO: TFloatField;
    cds_MovimentoCONFERIDO: TWideStringField;
    cds_MovimentoNFCOBRANCA: TIntegerField;
    cds_MovimentoORDEMATEND: TIntegerField;
    cds_MovimentoNFREVENDA: TIntegerField;
    cds_MovimentoCODORIGEM: TIntegerField;
    cds_MovimentoKM: TWideStringField;
    cds_MovimentoNFE: TWideStringField;
    cds_MovimentoPRAZO_ENT: TIntegerField;
    cds_MovimentoVAL_PROP: TDateField;
    cds_MovimentoFORMA_PAG: TWideStringField;
    cds_MovimentoVALOR_FRETE: TFloatField;
    cds_MovimentoDATA_ENTREGA: TDateField;
    cds_MovimentoPRAZO_PAGAMENTO: TWideStringField;
    cds_MovimentoUSER_APROVA: TWideStringField;
    cds_MovimentoCODTRANSP: TIntegerField;
    cds_MovimentoTPFRETE: TWideStringField;
    cds_MovimentoCODPEDIDO: TIntegerField;
    cds_MovimentoCODCOTACAO: TIntegerField;
    cds_MovimentoUSUARIOLOGADO: TWideStringField;
    cds_MovimentoTIPO_PEDIDO: TWideStringField;
    cds_MovimentoENTREGA: TWideStringField;
    cds_MovimentoQTD: TIntegerField;
    cds_MovimentoDESCONTO: TFloatField;
    cds_MovimentoHIST_MOV: TWideStringField;
    cds_MovimentoNOMECLIENTE: TWideStringField;
    cds_MovimentoOBS_1: TWideStringField;
    cds_MovimentoCNPJ: TWideStringField;
    cds_MovimentoPLACA: TWideStringField;
    cds_MovimentoMARCA_MODELO: TWideStringField;
    cds_MovimentoNOMEUSUARIO: TWideStringField;
    cds_MovimentoNOMEFORNECEDOR: TWideStringField;
    cds_MovimentoDESCNATUREZA: TWideStringField;
    cds_MovimentoALMOXARIFADO: TWideStringField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_paramDESCRICAO: TWideStringField;
    cds_paramPARAMETRO: TWideStringField;
    cds_paramCONFIGURADO: TWideStringField;
    cds_paramDADOS: TWideStringField;
    cds_paramD1: TWideStringField;
    cds_paramD2: TWideStringField;
    cds_paramD3: TWideStringField;
    cds_paramD4: TWideStringField;
    cds_paramD5: TWideStringField;
    cds_paramD6: TWideStringField;
    cds_paramD7: TWideStringField;
    cds_paramD8: TWideStringField;
    cds_paramD9: TWideStringField;
    cds_paramINSTRUCOES: TWideStringField;
    cds_paramVALOR: TFloatField;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TWideStringField;
    cds_ccustoNOME: TWideStringField;
    cdsCCECHAVE: TWideStringField;
    cdsCCEORGAO: TIntegerField;
    cdsCCECNPJ: TWideStringField;
    cdsCCEDHENVIO: TDateTimeField;
    cdsCCESEQUENCIA: TIntegerField;
    cdsCCECORRECAO: TWideStringField;
    cdsCCEPROTOCOLO: TWideStringField;
    cdsCCESELECIONOU: TWideStringField;
    cdsCCECONDICAO: TWideStringField;
    con: TZConnection;
    sdsProd_CombCPRODANP: TWideStringField;
    sdsProd_CombPMIXGN: TFloatField;
    sdsProd_CombVALIQPROD: TFloatField;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFCODDETALHE: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFCFOP: TWideStringField;
    cdsItensNFDESCPRODUTO: TWideStringField;
    cdsItensNFOBS: TWideStringField;
    cdsItensNFCODPRO: TWideStringField;
    cdsItensNFUNIDADEMEDIDA: TWideStringField;
    cdsItensNFCST: TWideStringField;
    cdsItensNFICMS: TFloatField;
    cdsItensNFCSOSN: TWideStringField;
    cdsItensNFPIPI: TFloatField;
    cdsItensNFFRETE: TFloatField;
    cdsItensNFVALOR_DESCONTO: TFloatField;
    cdsItensNFVIPI: TFloatField;
    cdsItensNFVLR_BASEICMS: TFloatField;
    cdsItensNFVALOR_ICMS: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    cdsItensNFICMS_SUBST: TFloatField;
    cdsItensNFICMS_SUBSTD: TFloatField;
    cdsItensNFVALOR_PIS: TFloatField;
    cdsItensNFVALOR_COFINS: TFloatField;
    cdsItensNFVALTOTAL: TFloatField;
    cdsItensNFVALOR_SEGURO: TFloatField;
    cdsItensNFVALOR_OUTROS: TFloatField;
    cdsItensNFII: TFloatField;
    cdsItensNFBCII: TFloatField;
    cdsItensNFCSTIPI: TWideStringField;
    cdsItensNFCSTPIS: TWideStringField;
    cdsItensNFCSTCOFINS: TWideStringField;
    cdsItensNFPPIS: TFloatField;
    cdsItensNFPCOFINS: TFloatField;
    cdsItensNFNITEMPED: TIntegerField;
    cdsItensNFPEDIDO: TWideStringField;
    cdsItensNFVLRBC_IPI: TFloatField;
    cdsItensNFVLRBC_PIS: TFloatField;
    cdsItensNFVLRBC_COFINS: TFloatField;
    cdsItensNFVLRTOT_TRIB: TFloatField;
    cdsItensNFCOD_BARRA: TWideStringField;
    cdsItensNFVBCUFDEST: TFloatField;
    cdsItensNFPFCPUFDEST: TFloatField;
    cdsItensNFPICMSUFDEST: TFloatField;
    cdsItensNFPICMSINTER: TFloatField;
    cdsItensNFPICMSINTERPART: TFloatField;
    cdsItensNFVFCPUFDEST: TFloatField;
    cdsItensNFVICMSUFDEST: TFloatField;
    cdsItensNFVICMSUFREMET: TFloatField;
    cdsItensNFCST_IPI_CENQ: TWideStringField;
    cdsItensNFCEST: TWideStringField;
    cdsItensNFCODMOVIMENTO: TIntegerField;
    sProdutosCODPRODUTO: TIntegerField;
    sProdutosFAMILIA: TWideStringField;
    sProdutosCATEGORIA: TWideStringField;
    sProdutosMARCA: TWideStringField;
    sProdutosUNIDADEMEDIDA: TWideStringField;
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
    sProdutosCLASSIFIC_FISCAL: TWideStringField;
    sProdutosCST: TWideStringField;
    sProdutosBASE_ICMS: TFloatField;
    sProdutosPRODUTO: TWideStringField;
    sProdutosCOD_COMISSAO: TIntegerField;
    sProdutosMARGEM_LUCRO: TFloatField;
    sProdutosCOD_BARRA: TWideStringField;
    sProdutosVALOR_PRAZO: TFloatField;
    sProdutosTIPO: TWideStringField;
    sProdutosCONTA_DESPESA: TWideStringField;
    sProdutosCONTA_RECEITA: TWideStringField;
    sProdutosCONTA_ESTOQUE: TWideStringField;
    sProdutosRATEIO: TWideStringField;
    sProdutosCODPRO: TWideStringField;
    sProdutosQTDE_PCT: TFloatField;
    sProdutosPESO_QTDE: TFloatField;
    sProdutosDATACADASTRO: TDateTimeField;
    sProdutosMARGEM: TFloatField;
    sProdutosPRO_COD: TWideStringField;
    sProdutosDATAGRAV: TDateField;
    sProdutosCODFORN: TWideStringField;
    sProdutosFOTOPRODUTO: TWideStringField;
    sProdutosLOTES: TWideStringField;
    sProdutosUSA: TWideStringField;
    sProdutosLOCALIZACAO: TWideStringField;
    sProdutosTIPOPRECOVENDA: TWideStringField;
    sProdutosVALORMINIMO: TFloatField;
    sProdutosVALORCOMISSAO: TFloatField;
    sProdutosGERADESCONTO: TWideStringField;
    sProdutosIMPRIMIR: TWideStringField;
    sProdutosORIGEM: TIntegerField;
    sProdutosNCM: TWideStringField;
    sProdutosIMPRESSORA_1: TWideStringField;
    sProdutosIMPRESSORA_2: TWideStringField;
    sProdutosIMPRESSORA_3: TWideStringField;
    sProdutosQTD: TIntegerField;
    sProdutosTAM_LOTE: TIntegerField;
    sProdutosOBS: TWideStringField;
    sProdutosPESO_LIQ: TFloatField;
    sProdutosCEST: TWideStringField;
    sProdutosEMBALAGEM: TWideStringField;
    sProdutosCPRODANP: TWideStringField;
    sProdutosPMIXGN: TFloatField;
    sProdutosVALIQPROD: TFloatField;
    sProdutosGENERO: TIntegerField;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    sdsFaturaFORMAPAGAMENTO: TWideStringField;
    cdsFaturaFORMAPAGAMENTO: TWideStringField;
    cdsNFV_B_FCPUFDEST: TFloatField;
    cdsNFV_FCP: TFloatField;
    cdsNFV_FCPST: TFloatField;
    cdsNFV_FCPSTRET: TFloatField;
    cdsNFV_IPI_DEVOL: TFloatField;
    cdsItensNFPERCIPIDEVOL: TFloatField;
    cdsItensNFVALORIPIDEVOL: TFloatField;
    cdsItensNFICMS_PST: TFloatField;
    cdsItensNFV_B_FCP: TFloatField;
    cdsItensNFV_FCP: TFloatField;
    cdsItensNFP_FCP: TFloatField;
    cdsItensNFV_B_FCPST: TFloatField;
    cdsItensNFV_FCPST: TFloatField;
    cdsItensNFP_FCPST: TFloatField;
    cdsItensNFV_B_FCPSTRET: TFloatField;
    cdsItensNFV_FCPSTRET: TFloatField;
    cdsItensNFP_FCPSTRET: TFloatField;
    cdsItensNFVBCSTRET: TFloatField;
    cdsItensNFVICMSSTRET: TFloatField;
    cdsItensNFVBCSTDEST: TFloatField;
    cdsItensNFVICMSSTDEST: TFloatField;
    cdsItensNFVBFCPUFDEST: TFloatField;
    cdsCentroCusto: TClientDataSet;
    sqlCentroCusto: TZQuery;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCustoCODEMPRESA: TIntegerField;
    cdsCentroCustoNOMEEMPRESA: TWideStringField;
    cdsCentroCustoTIPONOTA: TIntegerField;
    cdsCentroCustoUCMACHINENAME: TWideStringField;
    cdsCentroCustoUCDATA: TWideStringField;
    cdsCentroCustoUCLOGIN: TWideStringField;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    BitBtn9: TBitBtn;
    Certificado: TTabSheet;
    GroupBox14: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    SpeedButton2: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerieABA: TEdit;
    Button1: TButton;
    SpeedButton3: TSpeedButton;
    lSSLLib: TLabel;
    cbSSLLib: TComboBox;
    lCryptLib: TLabel;
    cbCryptLib: TComboBox;
    lHttpLib: TLabel;
    cbHttpLib: TComboBox;
    lXmlSign: TLabel;
    cbXmlSignLib: TComboBox;
    edtPathSchemas: TEdit;
    Label42: TLabel;
    MemoResp2: TMemo;
    Button2: TButton;
    memoRespWS2: TMemo;
    btnstatusCert: TBitBtn;
    sEmpresaCERTIFICADO: TWideStringField;
    Button3: TButton;
    Button4: TButton;
    Label32: TLabel;
    edtNumSerie: TEdit;
    ACBrNFe1: TACBrNFe;
    Label33: TLabel;
    Label34: TLabel;
    cdsItensNFPGLP: TFloatField;
    cdsItensNFPGNN: TFloatField;
    cdsItensNFVPART: TFloatField;
    cdsItensNFPGNI: TFloatField;
    TestEmail: TButton;
    edtPorta: TEdit;
    Label35: TLabel;
    edtSMTP: TEdit;
    Label36: TLabel;
    edtUsername: TEdit;
    Label37: TLabel;
    edtSenhas: TEdit;
    Label38: TLabel;
    edtSeuEmail: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    edtEmailCliente: TEdit;
    edtTLS: TEdit;
    edtSSL: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    cdsItensNFLOTE: TWideStringField;
    cdsItensNFDTAFAB: TDateField;
    cdsItensNFDTAVCTO: TDateField;
    Edit6: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    procedure EnviaEmail;
    procedure btnListarClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnSairVendaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BtnPreVisClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure JvDBGrid2ColEnter(Sender: TObject);
    procedure JvDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnListarCCeClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnGeraPDFClick(Sender: TObject);
    procedure btnGeraNFeClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure BtnCCeClick(Sender: TObject);
    procedure btnImprimirCCeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnStatusNaoEnviadaClick(Sender: TObject);
    procedure btnSVCANClick(Sender: TObject);
    procedure btnSvcanGeraClick(Sender: TObject);
    procedure btnPreVisContClick(Sender: TObject);
    procedure btnContingenciaClick(Sender: TObject);
    procedure btnValidaXMLClick(Sender: TObject);
    procedure btnPreVisSpedClick(Sender: TObject);
    procedure btnSPEDClick(Sender: TObject);
    procedure btnPreVisDPECClick(Sender: TObject);
    procedure btnDpecClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnPreVisFSDAClick(Sender: TObject);
    procedure btnFSDAClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnValidaNFeClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnCancelaNFeClick(Sender: TObject);
    procedure btnAbaPrincipalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEnvEmailClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TestEmailClick(Sender: TObject);
    procedure CertificadoShow(Sender: TObject);
  private
    { Private declarations }
    infCplTrib: string;
    diretorio : string;
    tpNFe : integer;
    numnf : WideString;
    envemail : string;
   // TD: TTransactionDesc;  manoel
    tot1: double;
    tot2: double;
    tot3: double;
    ufDest: String;
    micro : string;
   // function validaNumNfe():Boolean;
    function validaNumNfeScan():Boolean;
   // function GetComputerNameFunc(): string;

    procedure nfe_carregalogo();
    procedure pegaTributos(codMov: Integer;codProd: Integer);
    procedure getCli_Fornec();
    procedure getEmpresa();
    procedure getItens(contador : integer);
    procedure getTransportadora();
    procedure getPagamento();
    procedure pegaItens(tpNf: integer);
    procedure imprimiCCe(protocolo: string; dthenvio : TDateTime; condicao : string);
    procedure GravarConfiguracao;
    procedure AtualizaSSLLibsCombo;
    procedure LerConfiguracao ;

  public
    { Public declarations }
  danfe_larg_codprod: integer;
  imprimeDetalhamentoEspecifico: Boolean;
  quebraLinhaDanfe: Boolean;
  nfe_serie_receita : Integer;
  danfeDec : integer;
  situacaoCaixa, vTipoFiscal, varlogado ,email_tls,email_ssl : string;
  mascaraProduto : String;
  Computer: PChar;
  diretorio_schema : String;
  numCertificado : String;
  function GetVersion :  string;
  end;

var
  Form1: TForm1;
  conta_local: string;
  tp_amb : integer;
implementation

{$R *.dfm}

uses udm, uNFeInutilizar, unit2,ACBrDFeSSL ,TypInfo;

function GetComputerNameFunc : string;
var ipbuffer : string;
      nsize : dword;
begin
   nsize := 255;
   SetLength(ipbuffer,nsize);
   if GetComputerName(pchar(ipbuffer),nsize) then
      result := ipbuffer;
end;


function TForm1.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);

end;



Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TForm1.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib );
    // manoel
 // cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]) ;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
  if OpenDialog1.Execute then
  begin
  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
    begin
       // 29/12/2015 - DPEC nao existe mais nesta versao do acbr.
      {
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
       DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
      ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.Retorno.Protocolo;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
      }
    end;
  ACBrNFe1.Enviar(0);
  end;
  ACBrNFe1.NotasFiscais.Items[0].GravarXML;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
  if OpenDialog1.Execute then
  begin
  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
    begin
       // 29/12/2015 - DPEC nao existe mais nesta versao do acbr.
      {
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
       DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
      ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.Retorno.Protocolo;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
      }
    end;
  ACBrNFe1.Enviar(0);
  end;
  ACBrNFe1.NotasFiscais.Items[0].GravarXML;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  if (GroupBox11.Visible = False) then
  begin
    GroupBox11.Visible := true;
  end
  else begin
    GroupBox11.Visible := False;
  end;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var nfDenegada, str: String;
begin
  nfDenegada := '';
  cdsNF.First;
  while not cdsNF.Eof do
  begin
    if (cdsNFSELECIONOU.AsString = 'S') then
    begin
      nfDenegada := cdsNFNOTASERIE.AsString;
    end;
    cdsNF.Next;
  end;

  if  MessageDlg('Confirma a alteração de Status da NF : ' + nfDenegada + ' , para DENEGADA ?', mtConfirmation, [mbYes, mbNo],0) = mrNo then
    exit;

  if  MessageDlg('Isto somente deverá ser feito caso ao Gerar a NFe a RECEITA retornou como DENEGADA, ocorreu isso ?', mtWarning, [mbYes, mbNo],0) = mrNo then
    exit;

  if (nfDenegada <> '') then
  begin
    con.AutoCommit := True;
    con.StartTransaction;
    try
      str := 'UPDATE NOTAFISCAL SET ';
      str := str + ' STATUS = ' + QuotedStr('D');
      str := str + ' ,NFE_FINNFE = ' + quotedstr('fnDenegado');
      str := str + ' WHERE NOTASERIE = ' + nfDenegada;
      con.ExecuteDirect(str);
      con.Commit;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        con.Rollback; //on failure, undo the changes}
      end;
    end;

  end;


end;

procedure TForm1.btnAbaPrincipalClick(Sender: TObject);
begin
  PageControl2.ActivePage := TabSheet1;
end;

procedure TForm1.btnCancelaNFeClick(Sender: TObject);
var
  vXMLDoc: TXMLDocument;
  vAux, Protocolo, caminho, str : String;
  NumeroLote : Integer;
  notaFCancela: String;
  //numnf : WideString;
begin
   if (not cds_ccusto.Active) then
     cds_ccusto.Open;

   if (PageControl1.ActivePageIndex = 0) then
   begin
     cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
     if(ComboBox1.Text = '') then
     begin
       MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
       exit;
     end;
   end;
   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;
   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

  ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;

  Protocolo := '';
  if (edNFCancelar.Text = '') then
  begin
    MessageDlg('Informe o número da nota a ser Cancelada.', mtWarning, [mbOK], 0);
    exit;
  end;

  cdsNF.First;
  while not cdsNF.Eof do
  begin
    if (cdsNFSELECIONOU.AsString = 'S') then
    begin
      notaFCancela := cdsNFNOTASERIE.AsString;
    end;
    cdsNF.Next;
  end;

  if (edNFCancelar.Text <> notaFCancela) then
  begin
    MessageDlg('Nota selecionada é diferente do número da Nota informada.', mtWarning, [mbOK], 0);
    exit;
  end;
  vXMLDoc := TXMLDocument.Create(self);
  Try
    OpenDialog1.Title := 'Selecione a NFE';
    OpenDialog1.DefaultExt:= '*-nfe.XML';
    OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := Edit1.Text;
    if OpenDialog1.Execute then
    begin
      ACBrNFe1.NotasFiscais.Clear;
      caminho := OpenDialog1.FileName;
      ACBrNFe1.NotasFiscais.LoadFromFile(caminho);

      //ABRE A NOTA
      vXMLDoc.LoadFromFile(caminho);

      //PEGA A RESPOSTA
      with vXMLDoc.DocumentElement  do
      begin
        numnf := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
        if (numnf = '') then
          numnf := ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
      end;

      if (edNFCancelar.Text <> numnf) then
      begin
        MessageDlg('Nota selecionada é diferente do número que consta no arquivo xml: ' + numnf, mtWarning, [mbOK], 0);
        exit;
      end;

      if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
        exit;
      if (Length(vAux) < 15) then
      begin
        MessageDlg('Justificativa deve ter no mínimo 15 caracteres.', mtWarning, [mbOK], 0);
        exit;
      end;
      NumeroLote := StrToInt(FormatDateTime('yymmddhhmm', NOW));
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.EventoNFe.idLote := NumeroLote;
      with ACBrNFe1.EventoNFe.Evento.Add do
      begin
        InfEvento.tpAmb := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb;
        infEvento.CNPJ := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
        InfEvento.cOrgao := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF;
        InfEvento.nSeqEvento := 1;
        InfEvento.chNFe := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
        InfEvento.dhEvento := Now;
        InfEvento.tpEvento := teCancelamento;
        infEvento.detEvento.xJust := vAux;
        InfEvento.detEvento.nProt := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      end;
      //ACBrNFe1.WebServices.EnvEvento.Executar;
      if ACBrNFe1.EnviarEvento(NumeroLote) then
      begin
        with ACBrNFe1.WebServices.EnvEvento do
        begin
          if EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
          begin
            raise Exception.CreateFmt(
              'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
              'Código:%d' + sLineBreak +
              'Motivo: %s', [
                EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
            ]);
          end;
        end;
      end;
      MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
      ShowMessage('Nº do Protocolo de Cancelamento ' + ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
      Protocolo := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      AcbrNfe1.Configuracoes.Geral.Salvar := True;
    end;


      con.AutoCommit := True;
      con.StartTransaction;
      try
        str := 'UPDATE NOTAFISCAL SET ';
        str := str + ' STATUS = ' + QuotedStr('C');
        if (protocolo <> '') then
          str := str + ' ,PROTOCOLOCANC = ' + quotedstr(Protocolo);
        str := str + ' ,NFE_FINNFE = ' + quotedstr('fnCancelado');
        str := str + ' WHERE NOTASERIE = ' + numnf;
        con.ExecuteDirect(str);
        con.Commit;
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          con.Rollback; //on failure, undo the changes}
        end;
      end;
    finally
      FormatSettings.DecimalSeparator := ',';
      VXMLDoc.Free;
    end;
  chkTodas.Checked := True;
  btnListar.Click;

end;

procedure TForm1.btnConsultaClick(Sender: TObject);
var vXMLDoc: TXMLDocument;
    motivo: WideString;
    NomArquivo, Registro: String;
    arquivo: TextFile;
begin
  NomArquivo := 'c:\home\stats.xml';
  vXMLDoc := TXMLDocument.Create(self);
 Try
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
  end;

  //SALVA RESPOSTA NO ARQUIVO
  AssignFile(Arquivo, NomArquivo);
  Rewrite(Arquivo);
  Registro := MemoResp.Text;
  writeln(Arquivo, Registro);
  CloseFile(arquivo);

  //ABRE A RESPOSTA NO ARQUIVO
  vXMLDoc.LoadFromFile('c:\home\stats.xml');

  //PEGA A RESPOSTA
  with vXMLDoc.DocumentElement  do
  begin
    motivo := ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['xMotivo'].text;
    if (motivo = '') then
      motivo := ChildNodes['infProt'].ChildNodes['xMotivo'].text;
    if (motivo = '') then
      motivo := ChildNodes['xMotivo'].text;
  end;
  MessageDlg( motivo, mtInformation, [mbOK], 0);
 finally
   VXMLDoc.Free;
 end;

end;

procedure TForm1.btnContingenciaClick(Sender: TObject);
begin
    tp_amb := 2;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TForm1.btnDpecClick(Sender: TObject);
begin
    tp_amb := 4;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TForm1.BtnEnvEmailClick(Sender: TObject);
var caminho : string;
begin
  {fNFeMail:=TfNFeMail.Create(Application);
  try
    fNFeMail.ShowModal;
  finally
    fNFeMail.Free;
  end;
  }
     {
    OpenDialog1.Title := 'Selecione a NFE';
    OpenDialog1.DefaultExt:= '*-nfe.XML';
    OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := Edit1.Text;
    if OpenDialog1.Execute then
    begin}
     // ACBrNFe1.NotasFiscais.Clear;
     // caminho := OpenDialog1.FileName;
     // ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
      EnviaEmail;
    //end;
end;

procedure TForm1.btnFSDAClick(Sender: TObject);
begin
    tp_amb := 5;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TForm1.btnGeraNFeClick(Sender: TObject);
var
  i, codnf: integer;
  Protocolo, Recibo, str, vAux, valida : String;
  tipoNota: Char;
begin

  codnf := 0;
  if (edtNumSerie.Text = '') then
  begin
    MessageDlg('Selecione o Certificado!',mtWarning,[mbOk],0);
    exit;
  end;

  if (tp_amb = 3) then
  begin
    if (validaNumNfeScan = false) then
    begin
      MessageDlg('Número da Nota Fiscal errado.', mtError, [mbOK], 0);
      exit;
    end;
  end;
  lblMsgNfe.Caption := 'Gerando o arquivo da Nota';
 // 29/12/2015
 //  ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';

   if (not cds_ccusto.Active) then
     cds_ccusto.Open;

   if (PageControl1.ActivePageIndex = 0) then
   begin
     cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
     if(ComboBox1.Text = '') then
     begin
       MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
       exit;
     end;
   end;
   if (PageControl1.ActivePageIndex = 1) then
   begin
     cds_ccusto.Locate('NOME', ComboBox2.Text,[loCaseInsensitive]);
     if(ComboBox2.Text = '') then
     begin
       MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
       exit;
     end;
   end;
   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;
   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   //verifica se o CC foi selecionado caso não da mensagem avisando
   if(sEmpresa.IsEmpty) then
     MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);

   ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;
   nfe_carregalogo;

   cdsNF.First;
   while not cdsNF.Eof do
   begin
      if (cdsNFSELECIONOU.AsString = 'S') then
      begin
        if (cdsNFSTATUS.AsString = 'E') then
        begin
          MessageDlg('Nota com Status ENVIADO, altere o Status na aba OUTROS para reenviar.',mtWarning,[mbOk],0);
          exit;
        end;
        if(not cdsNFPROTOCOLOENV.IsNull) then
        begin
          if (cdsNFPROTOCOLOENV.AsString <> '') then
          begin
            MessageDlg('Nota com Protocolo de Envio(já enviada, portanto), use o botão Imprimir Danfe.',mtWarning,[mbOk],0);
            exit;
          end
        end;

        tipoNota := trim(cdsNFCFOP.AsString)[1];
        if (tipoNota in ['1','2','3']) then
        begin
          tpNFe := 0;
        end;
        if (tipoNota in ['5','6','7']) then
        begin
          tpNFe := 1;
        end;

         { isto estava fora do IF}
         if (cbTipoNota.ItemIndex = 1) then
         begin
           if (sFornec.Active) then
             sFornec.close;
           if (sCliente.Active) then
             sCliente.Close;
           sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
           sCliente.Open;
           if ((sClienteUF.AsString = 'EX') and (cdsNFCFOP.AsString <> '3202'))  then
           begin
             if (edUfEmbarque.Text = '') then
             begin
               MessageDlg('Preencha o UF e Local de Embarque.', mtWarning, [mbOK], 0);
               PageControl2.ActivePage := TabSheet7;
               edUfEmbarque.SetFocus;
               exit;
             end;
           end;
         end
         else
         begin
           if (sCliente.Active) then
             sCliente.Close;

           if (sFornec.Active) then
             sFornec.Close;
           sFornec.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
           sFornec.Open;
         end;

         if (sCFOP.Active) then
           sCFOP.Close;
         sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
         if (cbTipoNota.ItemIndex = 1) then
         begin
          sCFOP.Params[1].AsString := sClienteUF.AsString;
          sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
          ufDest := sClienteUF.AsString;
         end
         else
         begin
          sCFOP.Params[1].AsString := sFornecUF.AsString;
          sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
          ufDest := sFornecUF.AsString;
         end;
         sCFOP.Open;
         if (sCFOP.IsEmpty) then
         begin
           MessageDlg('Não existe este CFOP cadastrado para este ESTADO.'+#13+#10+'(Cadastros -> CFOP-ESTADO).', mtWarning, [mbOK], 0);
           exit;
         end;

          ACBrNFe1.NotasFiscais.Clear;

          with ACBrNFe1.NotasFiscais.Add.NFe do
          begin
            //infNFe.ID := 0 // Chave de acesso da NF-e precedida do literal NFe acrescentado a validação do formato 2.0

            if (sEstado.Active) then
              sEstado.Close;
            sEstado.Params[0].AsString := sEmpresaUF.asString;
            sEstado.Open;
            Ide.cUF       := sEstadoCODIGO.AsInteger; // Codigo do UF do Emitente do documento fiscal
            Ide.cNF       := cdsNFNUMNF.AsInteger;
            Ide.natOp     := copy(sCFOPCFNOME.AsString,0,59);
            //Verifica tipo de Pagamento
            getPagamento;

            Ide.cMunFG    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
            Ide.modelo    := 55;
            Ide.serie     := nfe_serie_receita;  // manoel dm.nfe_serie_receita;
            if (tp_amb = 1) then
            begin
              Ide.tpEmis    := teNormal;
            end
            else if (tp_amb = 2) then
            begin
              Ide.tpEmis    := teContingencia;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Contingência', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end
            else if (tp_amb = 3) then
            begin
              Ide.tpEmis    := teSCAN;
              Ide.serie     := 900;
            end
            else if (tp_amb = 4) then
            begin
              Ide.tpEmis    := teDPEC;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Contingência', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end
            else if (tp_amb = 5) then
            begin
              Ide.tpEmis    := teFSDA;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Contingência', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end
            else if (tp_amb = 6) then
            begin
              Ide.tpEmis    := teSVCAN;
              Ide.serie     := nfe_serie_receita;
            end;
            if (cdsNFIDCOMPLEMENTAR.AsString <> '') then
            begin
              ide.NFref.Add.refNFe := cdsNFIDCOMPLEMENTAR.AsString;
            end;
            Ide.nNF       := StrToInt(cdsNFNOTASERIE.AsString);
            codnf         := cdsNFNUMNF.AsInteger;
            Ide.dEmi      := cdsNFDTAEMISSAO.AsDateTime;
            Ide.dSaiEnt   := cdsNFDTASAIDA.AsDateTime;
            Ide.hSaiEnt   := cdsNFHORASAIDA.AsDateTime;

            if (cdsNFNFE_FINNFE.AsString = 'fnAjuste') then
            begin
              InputQuery('Justificativa do estorno nas Informações Adicionais de Interesse do Fisco', 'Justificativa', vAux);
              infAdic.infAdFisco := vAux;
            end;

            if (cdsNFCORPONF6.AsString <> '') then
            begin
              compra.xPed := cdsNFCORPONF6.AsString;
            end;

            // Tipo de movimentação 0 entrada 1 saida
            if (tpNFe = 0) then
              Ide.tpNF   := tnEntrada;

            if (tpNFe = 1) then
              Ide.tpNF   := tnSaida;

            if (tipoNota in ['1','5']) then
              ide.idDest := doInterna;

            if (tipoNota in ['2','6']) then
              ide.idDest := doInterestadual;

            if (tipoNota in ['3', '7']) then
            begin
              ide.idDest := doExterior;
              if (cbTipoNota.ItemIndex = 0) then
                 Dest.idEstrangeiro := sFornecINSCESTADUAL.AsString
              else
                 Dest.idEstrangeiro := sClienteINSCESTADUAL.AsString;
              Dest.indIEDest := inNaoContribuinte;
            end;

            //Ide.tpAmb     := tn2;                           // 1 - Produção // 2 Homologação
            Ide.verProc := '1.0.0.0';

            if (cdsNFNFE_FINNFE.AsString = 'fnNormal') then
              Ide.finNFe := fnNormal;

            if (cdsNFNFE_FINNFE.AsString = 'fnDevolucao') then
              Ide.finNFe := fnDevolucao;

            if (cdsNFNFE_FINNFE.AsString = 'fnAjuste') then
              Ide.finNFe := fnAjuste;

            if (cdsNFNFE_FINNFE.AsString = 'fnComplementar') then
              ide.finNFe    := fnComplementar;

            if (sTabIBGE.Active) then
              sTabIBGE.Close;
            sTabIBGE.Params[0].AsString := sEmpresaCIDADE.AsString;
            sTabIBGE.Open;
            //Carrega dados do Emitente
            if ((sEmpresaCD_IBGE.IsNull) or (sEmpresaCD_IBGE.AsString = '')) then
            begin
              MessageDlg('Codigo do IBGE da empresa não definido', mtError, [mbOK], 0);
              valida := 'N';
            end;
            if (valida = 'N') then
              exit;
            getEmpresa();
            //CARREGA OS DADOS DO DESTINATARIO CLIENTE/FORNECEDOR
            if( sFornec.Active) then
              if ((sFornecCD_IBGE.IsNull) or (sFornecCD_IBGE.AsString = '')) then
              begin
                MessageDlg('Codigo do IBGE do Fornecedor não definido', mtError, [mbOK], 0);
                valida := 'N';
              end;
            if( sCliente.Active) then
              if ((sClienteCD_IBGE.IsNull) or (sClienteCD_IBGE.AsString = '')) then
              begin
                MessageDlg('Codigo do IBGE do Cliente não definido', mtError, [mbOK], 0);
                valida := 'N';
              end;
            if (valida = 'N') then
              exit;
            getCLi_Fornec();

            ide.indFinal := cfNao;
            if (vTipoFiscal = '9') then
              ide.indFinal  := cfConsumidorFinal; //(cfNao, cfConsumidorFinal);

            pegaItens(cbTipoNota.ItemIndex);
            tot1 := 0;
            tot2 := 0;
            tot3 := 0;
            infCplTrib := '';
            //if ((cdsNFVLRTOT_TRIB.AsFloat > 0) and (dm.vTipoFiscal = '9'))  then
            if (cdsNFVLRTOT_TRIB.AsFloat > 0)  then
            begin
              pegaTributos(cdsItensNFCODMOVIMENTO.AsInteger, 0);
              infCplTrib := 'Trib aprox R$:' +
                format('%8.2n', [sqlTotal_tributos.Fields[0].AsFloat]) + '-Fed, ' +
                format('%8.2n', [sqlTotal_tributos.Fields[1].AsFloat]) + '-Est e ' +
                format('%8.2n', [sqlTotal_tributos.Fields[2].AsFloat]) + '-Mun ';
              infCplTrib := infCplTrib + 'Fonte: IBPT';//Fonte: IBPT/FECOMERCIO RJ Xe67eQ
            end;
            infCplTrib := cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString + ' ' +
              cdsNFCORPONF3.AsString + ' ' + cdsNFCORPONF4.AsString + ' ' +
              cdsNFCORPONF5.AsString + infCplTrib; // + ' ' + cdsNFCORPONF6.AsString;(usando para codigo pedido de compra)

            InfAdic.infCpl := infCplTrib;

            i := 1;
            while not cdsItensNF.Eof do // Escrevo os itens
            begin
              if (sProdutos.Active) then
                sProdutos.Close;
              sProdutos.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
              try
                sProdutos.Open;
              finally
                if ((sProdutosUNIDADEMEDIDA.AsString = '') or (sProdutosUNIDADEMEDIDA.IsNull) or (sProdutosUNIDADEMEDIDA.AsString = ' ')) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem Unidade de Medida', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if ((sProdutosNCM.AsString = '00000000') or (sProdutosNCM.IsNull) ) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com NCM Nulo ou Inválido', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if ((sProdutosORIGEM.IsNull) ) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com Origem Nula', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if (((cdsItensNFCSOSN.IsNull) or (cdsItensNFCSOSN.AsString = '')) and ((cdsItensNFCST.IsNull) or (cdsItensNFCST.AsString = ''))) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem CST ou CSOSN', mtError, [mbOK], 0);
                  valida := 'N';
                end;
              end;
              // DADOS DOS PRODUTOS DA NOTA
              getItens(i);
              i := i + 1;
              cdsItensNF.Next;
            end;

            getTransportadora();

            if (sCliente.Active) then
            begin
              if ((sClienteUF.AsString = 'EX') and (cdsNFCFOP.AsString <> '3202')) then
              begin
                exporta.UFembarq := edUfEmbarque.Text;
                exporta.xLocEmbarq := edLocalEmbarque.Text;
                exporta.UFSaidaPais := edUfEmbarque.Text;
                exporta.xLocExporta := edit2.Text;
                exporta.xLocDespacho := edit4.Text;
              end;
            end;
            //VALOR TORAL

            //ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cNF :=cdsNFNUMNF.AsInteger;
            if not ((ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional) and (cdsItensNFCSOSN.AsString <> '900')) then
            begin
              if (cdsNFBASE_ICMS.IsNull) then
                  MessageDlg('Base de cálculo nula', mtError, [mbOK], 0);
              Total.ICMSTot.vBC   := cdsNFBASE_ICMS.AsVariant;
              if (cdsNFVALOR_ICMS.IsNull) then
                  MessageDlg('ICMS nulo', mtError, [mbOK], 0);
              Total.ICMSTot.vICMS   := cdsNFVALOR_ICMS.AsVariant;
            end;

            if (cdsNFBASE_ICMS_SUBST.IsNull) then
                MessageDlg('Base ICMS ST nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;
            if (cdsNFVALOR_ICMS_SUBST.IsNull) then
                MessageDlg('ICMS ST nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vST   := cdsNFVALOR_ICMS_SUBST.AsVariant;
            if (cdsNFVALOR_PRODUTO.IsNull) then
                MessageDlg('Valor dos produtos nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vProd := cdsNFVALOR_PRODUTO.AsVariant;
            if (cdsNFVALOR_FRETE.IsNull) then
                MessageDlg('Valor do Frete nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vFrete := cdsNFVALOR_FRETE.AsVariant;
            if (cdsNFVALOR_SEGURO.IsNull) then
                MessageDlg('Valor do Seguro nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vSeg := cdsNFVALOR_SEGURO.AsVariant;
            if (cdsNFVALOR_DESCONTO.AsVariant > 0) then
              Total.ICMSTot.vDesc := RoundTo(cdsNFVALOR_DESCONTO.AsVariant, -2);
            Total.ICMSTot.vII := cdsNFII.AsVariant;

            Total.ICMSTot.vFCPUFDest := tot1;
            total.ICMSTot.vICMSUFDest := tot2;
            total.ICMSTot.vICMSUFRemet := tot3;

            if (cdsNFVALOR_IPI.IsNull) then
                MessageDlg('Valor do IPI nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vIPI := cdsNFVALOR_IPI.AsVariant;
            if ( (cdsNFVALOR_PIS.AsFloat <> 0 )or (cdsNFVALOR_PIS.AsFloat <> null )) then
              Total.ICMSTot.vPIS := cdsNFVALOR_PIS.AsFloat;
            if ( (cdsNFVALOR_COFINS.AsFloat <> 0) or (cdsNFVALOR_COFINS.AsFloat <> null )) then
              Total.ICMSTot.vCOFINS := cdsNFVALOR_COFINS.AsFloat;
            if (cdsNFOUTRAS_DESP.IsNull) then
                MessageDlg('Valor de outras despesas nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vOutro := cdsNFOUTRAS_DESP.AsVariant;
            if (cdsNFVALOR_TOTAL_NOTA.IsNull) then
                MessageDlg('Valor do Total da Nota nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vNF   := cdsNFVALOR_TOTAL_NOTA.AsVariant;
            Total.ICMSTot.vTotTrib := cdsNFVLRTOT_TRIB.AsVariant;

            Total.ICMSTot.vFCP       := cdsNFV_FCP.AsCurrency;
            Total.ICMSTot.vFCPST     := cdsNFV_FCPST.AsCurrency;
            Total.ICMSTot.vFCPSTRet  := cdsNFV_FCPSTRET.AsCurrency;
            Total.ICMSTot.vIPIDevol := cdsNFV_IPI_DEVOL.AsCurrency;

           {              Campos Novos
             , V_B_FCPUFDEST          DOUBLE PRECISION
             , V_FCP                  DOUBLE PRECISION
             , V_FCPST                DOUBLE PRECISION
             , V_FCPSTRET             DOUBLE PRECISION
             , V_IPI_DEVOL            DOUBLE PRECISION
           }
          end;
      end;
      cdsNF.Next;
   end;
   AcbrNfe1.Configuracoes.Arquivos.PathNFe := Edit1.Text;

   ACBrNFe1.NotasFiscais.Items[0].GravarXML;

   //MemoResp.Lines.LoadFromFile(ACBrNFe1.Configuracoes.Arquivos.PathSalvar+'\' +copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
  {  manoel
   dm.sqlsisAdimin.StartTransaction(TD);
   try
     str := 'UPDATE NOTAFISCAL SET ';
     str := str + ' NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
     str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
     dm.sqlsisAdimin.ExecuteDirect(str);
     dm.sqlsisAdimin.Commit(TD);
   except
     on E : Exception do
     begin
       ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
     end;
   end;
   }
   MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0);

   lblMsgNfe.Caption := 'Enviando arquivo para a Receita Federal';
   //Gera Envio da Nota
   //ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
   //ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
   //ACBrNFeDANFERave1.CasasDecimais._vUnCom := dm.danfeDec;

   if ( (tp_amb = 2) or (tp_amb = 5)) then
   begin

       ACBrNFe1.NotasFiscais.Assinar;
       ACBrNFe1.NotasFiscais.Validar;
       //Try

       {
       TD.TransactionID := 1;
       TD.IsolationLevel := xilREADCOMMITTED;
       DecimalSeparator := '.';

       dm.sqlsisAdimin.StartTransaction(TD);
       try
         str := 'UPDATE NOTAFISCAL SET ';
         str := str + ' XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML);
         //str := str + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
         str := str + ', STATUS = ' + QuotedStr('E');
         str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
         dm.sqlsisAdimin.ExecuteDirect(str);
         dm.sqlsisAdimin.Commit(TD);
       except
         on E : Exception do
         begin
           ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
           dm.sqlsisAdimin.Rollback(TD);
         end;
       end;
       }
     {except
       on E : Exception do
       begin
         ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
         exit;
       end;
     end;}
     //SALVA NFe e NOMEXML no BD
     //DecimalSeparator := ',';
     ACBrNFe1.NotasFiscais.Imprimir;
   end
   else if (tp_amb = 4) then
   begin
     MessageDlg('Este ambiente não existe mais.', mtWarning, [mbOK], 0);
     // 29/12/2015
     {
     if ACBrNFe1.WebServices.EnviarDPEC.Executar then
     begin
       //protocolo de envio ao DPEC e impressão do DANFE
       ACBrNFe1.DANFE.ProtocoloNFe:=ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC+' '+
                                    DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
       ACBrNFe1.NotasFiscais.Imprimir;
       ShowMessage(DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC));
       ShowMessage(ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);
     end;

     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     DecimalSeparator := '.';

     dm.sqlsisAdimin.StartTransaction(TD);
     try
       //SALVA NFe e NOMEXML no BD
       //SALVA PROTOCOLO DPEC
       str := 'UPDATE NOTAFISCAL SET ';
       str := str + '  XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML);
       //str := str + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
       str := str + ', STATUS = ' + QuotedStr('E');
       if (ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC <> '') then
         str := str + ', PROTOCOLOENV = ' + quotedStr(ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);
       str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
       dm.sqlsisAdimin.ExecuteDirect(str);
       dm.sqlsisAdimin.Commit(TD);
     except
       on E : Exception do
       begin
         ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the chaschemasnges
       end;
     end;
     }
   end
   else
   begin
     //try  -- Retirei pois, alguns lugares estava dando erro e nao aparecia
       // ACBrNFe1.Enviar(vNumLote,True);
       ACBrNFe1.Enviar(0);
       AcbrNfe1.Configuracoes.Arquivos.PathNFe := Edit1.Text;

       ShowMessage('Nº do Protocolo de envio ' + ACBrNFe1.WebServices.Retorno.Protocolo);
       ShowMessage('Nº do Recibo de envio ' + ACBrNFe1.WebServices.Retorno.Recibo);

       Protocolo := ACBrNFe1.WebServices.Retorno.Protocolo;
       Recibo := ACBrNFe1.WebServices.Retorno.Recibo;

      //PEGA A RESPOSTA
       con.AutoCommit := True;
       con.StartTransaction;
       //try
         //SALVA NFe, PROTOCOLOS e NOMEXML no BD
         str := 'UPDATE NOTAFISCAL SET ';
         str := str + '  XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML);
         str := str + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
         str := str + ', STATUS = ' + QuotedStr('E');
         if (Protocolo <> '') then
           str := str + ', PROTOCOLOENV = ' + quotedStr(Protocolo);
         if (Recibo <> '') then
           str := str + ', NUMRECIBO = ' + QuotedStr(Recibo);
         str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
         con.ExecuteDirect(str);
         con.Commit;
       //except
       //  on E : Exception do
       //  begin
       //    ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
       //    con.Rollback; //on failure, undo the changes
        // end;
       //end;

       FormatSettings.DecimalSeparator := ',';

       if (envemail = 'S') then
       begin
         lblMsgNfe.Caption := 'Enviando o email para o Cliente';
         if (cbTipoNota.ItemIndex = 1) then
         begin
           if (not sClienteE_MAIL.IsNull) then
             EnviaEmail
           else
             MessageDlg('Não foi possivel Enviar o Email, pois o cliente não possui email em seu cadastro.', mtError, [mbOK], 0);
         end;
       end;




   end;

   btnListar.Click;
   ACBrNFe1.NotasFiscais.Items[0].GravarXML;
   acbrnfe1.NotasFiscais.ImprimirPDF;

   cdsNF.Refresh;

end;

procedure TForm1.btnGeraPDFClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    //ACBrNFeDANFERave1.PathPDF := Edit1.Text;
    ACBrNFe1.NotasFiscais.ImprimirPDF;
  end;
end;

procedure TForm1.btnImprimeClick(Sender: TObject);
var strAtualizaNota, nProtCanc: String;
arquivx: String;
begin
   if (not cds_ccusto.Active) then
     cds_ccusto.Open;

   if (PageControl1.ActivePageIndex = 0) then
   begin
     cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
     if(ComboBox1.Text = '') then
     begin
       MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
       exit;
     end;
   end;
   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;
   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   //verifica se o CC foi selecionado caso não da mensagem avisando
   if(sEmpresa.IsEmpty) then
     MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);

  ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
    if (cdsNFSELECIONOU.AsString = 'S') then
    begin
      nfe_carregalogo;
      ACBrNFe1.NotasFiscais.Clear;
      if (cdsNFXMLNFE.AsString <> '') then
      begin
        ACBrNFe1.NotasFiscais.LoadFromString(cdsNFXMLNFE.AsString);
      end
      else begin

        if FileExists(ACBrNFe1.Configuracoes.Arquivos.PathNFe+'\' + cdsNFNOMEXML.AsString) then
        begin
          arquivx := ACBrNFe1.Configuracoes.Arquivos.PathNFe+'\' + cdsNFNOMEXML.AsString;
        end
        else begin
          OpenDialog1.Title := 'Selecione a NFE';
          OpenDialog1.DefaultExt := '*-nfe.XML';
          OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
          OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
          if OpenDialog1.Execute then
          begin
            arquivx := OpenDialog1.FileName;
          end;
        end;
        ACBrNFe1.NotasFiscais.LoadFromFile(arquivx);
      end;
      //ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
      //ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
      begin
        // 29/12/2015
        {
        ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
         DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
        ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
        ACBrNFe1.WebServices.ConsultaDPEC.Executar;
        ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.Retorno.Protocolo;
        ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
        if (cdsNFPROTOCOLOENV.IsNull) then
        begin
          strAtualizaNota := 'UPDATE NOTAFISCAL SET PROTOCOLOENV = ' +
          QuotedStr(ACBrNFe1.WebServices.Retorno.Protocolo) + ', STATUS = ' +
          QuotedStr('E') + ' WHERE NUMNF = ' + IntToStr(cdsNFNUMNF.AsInteger) +
          ' AND PROTOCOLOENV IS NULL ';
          dm.sqlsisAdimin.StartTransaction(TD);
          try
             dm.sqlsisAdimin.ExecuteDirect(strAtualizaNota);
             dm.sqlsisAdimin.Commit(TD);
          except
             on E : Exception do
             begin
               ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
               dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
             end;
          end;
        end;
        }
      end
      else
      begin
        ACBrNFe1.Consultar;
        if (cdsNFPROTOCOLOENV.IsNull) then
        begin
          strAtualizaNota := 'UPDATE NOTAFISCAL SET PROTOCOLOENV = ' +
          QuotedStr(ACBrNFe1.WebServices.Consulta.protNFe.nProt) + ', STATUS = ' +
          QuotedStr('E') +
          ' WHERE NUMNF = ' + IntToStr(cdsNFNUMNF.AsInteger) +
          ' AND PROTOCOLOENV IS NULL ';
          con.AutoCommit := True;
          con.StartTransaction;
          try
             con.ExecuteDirect(strAtualizaNota);
             con.Commit;
          except
             on E : Exception do
             begin
               ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
               con.Rollback; //on failure, undo the changes}
             end;
          end;
        end;
        nProtCanc := '';
        nProtCanc := ACBrNFe1.WebServices.Consulta.retCancNFe.nProt;
        {if (nProtCanc <> '') then
        begin
          strAtualizaNota := 'UPDATE NOTAFISCAL SET PROTOCOLOCANC = ' +
          QuotedStr(ACBrNFe1.WebServices.Consulta.retCancNFe.nProt) + ', STATUS = ' +
          QuotedStr('C') +
          ' WHERE NUMNF = ' + IntToStr(cdsNFNUMNF.AsInteger) +
          ' AND PROTOCOLOCANC IS NULL ';
          dm.sqlsisAdimin.StartTransaction(TD);
          try
             dm.sqlsisAdimin.ExecuteDirect(strAtualizaNota);
             dm.sqlsisAdimin.Commit(TD);
          except
             on E : Exception do
             begin
               ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
               dm.sqlsisAdimin.Rollback(TD);
             end;
          end;

        end;}

      end;
      ACBrNFe1.NotasFiscais.Imprimir;
      ACBrNFe1.NotasFiscais.Items[0].GravarXML;
    end;
    cdsNf.Next;
  end;

end;

procedure TForm1.btnImprimirCCeClick(Sender: TObject);
var path_eve: String;
  xCond : String;
begin
  AcbrNfe1.Configuracoes.Arquivos.PathEvento := edit3.Text + '\Eventos';
  path_eve := FormatDateTime('yyyymm', NOW);
  cdsCCE.First;
  while not cdsCCE.Eof do
  begin
    if( cdsCCESELECIONOU.AsString = 'S') then
    begin
      path_eve := AcbrNfe1.Configuracoes.Arquivos.PathEvento + '\nfe\' + path_eve +
         '\110110' + cdsCCECHAVE.AsString + '0' + IntToStr(cdsCCESEQUENCIA.AsInteger) +
         '-procEventoNFe.XML';
      if (not FilesExists(path_eve)) then
      begin
        OpenDialog1.Title := 'Selecione a NFE';
        OpenDialog1.DefaultExt := '*.XML';
        OpenDialog1.Filter := 'Arquivos CCe (*-procEventoNFe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
        OpenDialog1.InitialDir := AcbrNfe1.Configuracoes.Arquivos.PathEvento;
        if OpenDialog1.Execute then
        begin
          path_eve := OpenDialog1.FileName;
        end;
     end;
    end;
    cdsCCE.Next;
  end;
  //imprimiCCe(cdsCCEPROTOCOLO.AsString, cdsCCEDHENVIO.AsDateTime, cdsCCECONDICAO.AsString );
  ACBrNFe1.EventoNFe.LerXML(path_eve);
  ACBrNFe1.ImprimirEvento;
end;

procedure TForm1.btnInutilizarClick(Sender: TObject);
var nfInutilizar, str: String;
begin
  ACBrNFe1.SSL.SelecionarCertificado;
  fNFeInutilizar:=TfNFeInutilizar.Create(Application);
  try
    fNFeInutilizar.nfeaInutilizar := nfInutilizar;
    fNFeInutilizar.ShowModal;
  finally
    fNFeInutilizar.Free;
  end;

end;

procedure TForm1.btnListarCCeClick(Sender: TObject);
var str_cce   :string;
begin
  if (cdsCCE.Active) then
    cdsCCE.Close;
  if (CheckBox1.Checked) then
  begin
   str_cce := 'select * FROM CCE';
   cdsCCE.CommandText := str_cce;
  end
  else
  begin
    str_cce := 'select * FROM CCE WHERE PROTOCOLO IS NULL';
    cdsCCE.CommandText := str_cce;
  end;
  cdsCCE.Open;
  BtnCCe.Enabled := True;
  btnImprimirCCe.Enabled := True;

end;

procedure TForm1.btnListarClick(Sender: TObject);
var str_nf: string;
begin
 con.Connected       := False;

 if (not cds_ccusto.Active) then
     cds_ccusto.Open;

   if (cdsNF.Active) then
     cdsNF.Close;
   if (cbTipoNota.ItemIndex = 0) then
   begin
     //cdsNF.Params[4].AsSmallInt := 20;
     str_nf := 'select  nf.CFOP, nf.DTAEMISSAO, nf.DTASAIDA, nf.IDCOMPLEMENTAR, ' +
      ' nf.CORPONF1, nf.CORPONF2, nf.CORPONF3, nf.CORPONF4, nf.CORPONF5, nf.CORPONF6, ' +
      ' nf.XMLNFE, nf.CODCLIENTE, nf.NUMNF, nf.CODVENDA, nf.fatura, nf.natureza, ' +
      'UDF_ROUNDDEC(nf.BASE_ICMS, 2) as BASE_ICMS, ' +
      'UDF_ROUNDDEC(nf.VALOR_ICMS, 2) as VALOR_ICMS, ' +
      'UDF_ROUNDDEC(nf.BASE_ICMS_SUBST, 2) as BASE_ICMS_SUBST, ' +
      'UDF_ROUNDDEC(nf.VALOR_ICMS_SUBST, 2) as VALOR_ICMS_SUBST, ' +
      'UDF_ROUNDDEC(nf.VALOR_PRODUTO, 2) as VALOR_PRODUTO, nf.VALOR_FRETE, ' +
      'nf.VALOR_SEGURO, nf.OUTRAS_DESP, nf.VALOR_IPI,' +
      'UDF_ROUNDDEC(nf.VALOR_TOTAL_NOTA, 2) as VALOR_TOTAL_NOTA,  nf.FRETE,  ' +
      'nf.CNPJ_CPF,  udf_left(nf.NOMETRANSP, 60)as NOMETRANSP,  nf.INSCRICAOESTADUAL,' +
      'udf_left(nf.END_TRANSP,60)as END_TRANSP, '+
      'udf_left(nf.CIDADE_TRANSP, 60) as CIDADE_TRANSP, nf.UF_TRANSP, ' +
      'UDF_ROUNDDEC(nf.II, 2) as II, UDF_ROUNDDEC(nf.BCII, 2) as BCII, '+
      'nf.PLACATRANSP, nf.UF_VEICULO_TRANSP, nf.CODTRANSP, nf.QUANTIDADE,  ' +
      'nf.ESPECIE,  nf.MARCA, nf.NUMERO, nf.PESOLIQUIDO, nf.VALOR_DESCONTO, ' +
      'nf.PESOBRUTO, f.RAZAOSOCIAL, f.CNPJ , nf.HORASAIDA,  nf.NOTASERIE, ' +
      'nf.SELECIONOU, nf.REDUZICMS, nf.PROTOCOLOENV, ' +
      'nf.NUMRECIBO, nf.PROTOCOLOCANC, c.ENTRADA, c.VALOR_PAGAR, VALOR_PIS, VALOR_COFINS, ' +
      ' nf.NOMETRANSP TRANSP2, nf.BASE_IPI, nf.BASE_PIS, nf.BASE_COFINS, ' +
      ' UDF_ROUNDDEC(nf.VLRTOT_TRIB, 2) as VLRTOT_TRIB, nf.STATUS, nf.NOMEXML  ' +
      ' , NFE_FINNFE, NFE_MODELO, NFE_VERSAO, NFE_DESTOPERACAO, NFE_FORMATODANFE,'+
      ' NFE_TIPOEMISSAO, NFE_INDFINAL, NFE_INDPRES, IND_IEDEST ' +
      ' , NF.CCUSTO ' +
       ', nf.V_B_FCPUFDEST ' +
    ', nf.V_FCP ' +
    ', nf.V_FCPST ' +
    ', nf.V_FCPSTRET ' +
    ', nf.V_IPI_DEVOL ' +
      '  from NOTAFISCAL nf ' +
      ' inner join FORNECEDOR f on f.CODFORNECEDOR = nf.CODCLIENTE ' +
      ' inner join enderecoFORNECEDOR endeforn on endeforn.CODFORNECEDOR = f.CODFORNECEDOR ' +
      '  left outer join COMPRA c on c.CODCOMPRA = nf.CODVENDA ';

    str_nf := str_nf + ' where (nf.DTAEMISSAO between ' +
      QuotedStr(formatdatetime('mm/dd/yy', JvDateEdit1.Date)) +
      ' and ' + QuotedStr(formatdatetime('mm/dd/yy', JvDateEdit2.Date)) +') ';
    if (edSerie.Text <> '') then
      str_nf := str_nf + ' and (nf.SERIE = ' + QuotedStr(edSerie.text) + ')';
    str_nf := str_nf + ' and (endeforn.TIPOEND = 0) ';
    str_nf := str_nf + ' and ((NF.NATUREZA = 20) or (NF.NATUREZA = 21))';
    if (chkTodas.Checked = False) then
    begin
      str_nf := str_nf + ' and (nf.PROTOCOLOENV IS NULL)';
      str_nf := str_nf + ' and ((nf.STATUS IS NULL) or (nf.STATUS = ' + QuotedStr('E') + ')) ';
    end;
    if (ComboBox1.Text <> '') then
    begin
      cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
      str_nf := str_nf + ' and (nf.CCUSTO = ' + IntToStr(cds_ccustoCODIGO.AsInteger) + ')';
    end;
    str_nf := str_nf + ' order by nf.NOTASERIE DESC';
    cdsNF.CommandText := str_nf;
  end
  else
  begin
    //cdsNF.Params[4].AsSmallInt := 15;
    str_nf := 'select  nf.CFOP, nf.DTAEMISSAO, nf.DTASAIDA, nf.CODTRANSP, ' +
    'nf.IDCOMPLEMENTAR,  nf.CORPONF1, nf.CORPONF2, nf.CORPONF3, nf.CORPONF4, '+
    'nf.CORPONF5, nf.CORPONF6, nf.XMLNFE, nf.CODCLIENTE, nf.NUMNF, ' +
    'nf.CODVENDA, nf.fatura, nf.natureza, UDF_ROUNDDEC(nf.BASE_ICMS, 2) as BASE_ICMS, ' +
    'UDF_ROUNDDEC(nf.VALOR_ICMS, 2) as VALOR_ICMS, ' +
    'UDF_ROUNDDEC(nf.BASE_ICMS_SUBST, 2) as BASE_ICMS_SUBST, ' +
    'UDF_ROUNDDEC(nf.VALOR_ICMS_SUBST, 2) as VALOR_ICMS_SUBST, ' +
    'UDF_ROUNDDEC(nf.II, 2) as II, UDF_ROUNDDEC(nf.BCII, 2) as BCII, ' +
    'UDF_ROUNDDEC(nf.VALOR_PRODUTO, 2) as VALOR_PRODUTO, nf.VALOR_FRETE, ' +
    'nf.VALOR_SEGURO, nf.OUTRAS_DESP, nf.VALOR_IPI,' +
    'UDF_ROUNDDEC(nf.VALOR_TOTAL_NOTA, 2) as VALOR_TOTAL_NOTA,  nf.FRETE, ' +
    'nf.CNPJ_CPF,  udf_left(nf.NOMETRANSP, 60)as NOMETRANSP,  '+
    'nf.INSCRICAOESTADUAL, udf_left(nf.END_TRANSP, 60)as END_TRANSP, ' +
    'udf_left(nf.CIDADE_TRANSP, 60)as CIDADE_TRANSP, ' +
    'nf.UF_TRANSP, nf.PLACATRANSP, nf.UF_VEICULO_TRANSP, nf.QUANTIDADE, ' +
    'nf.ESPECIE,  nf.MARCA, nf.NUMERO, nf.PESOLIQUIDO, nf.VALOR_DESCONTO, ' +
    'nf.PESOBRUTO, nf.HORASAIDA,  nf.NOTASERIE, nf.SELECIONOU, nf.REDUZICMS, ' +
    ' nf.PROTOCOLOENV, nf.NOMETRANSP TRANSP2, nf.NUMRECIBO, nf.PROTOCOLOCANC, ' +
    ' co.ENTRADA, co.VALOR_PAGAR, c.RAZAOSOCIAL, c.CNPJ, VALOR_PIS, VALOR_COFINS '+
    ', nf.BASE_IPI, nf.BASE_PIS, nf.BASE_COFINS, UDF_ROUNDDEC(nf.VLRTOT_TRIB, 2) ' +
    ' as VLRTOT_TRIB, nf.STATUS, nf.NOMEXML, IND_IEDEST  ' +
    ' , NFE_FINNFE, NFE_MODELO, NFE_VERSAO, NFE_DESTOPERACAO, NFE_FORMATODANFE,' +
    ' NFE_TIPOEMISSAO, NFE_INDFINAL, NFE_INDPRES ' +
    ' , NF.CCUSTO ' +
    ', nf.V_B_FCPUFDEST ' +
    ', nf.V_FCP ' +
    ', nf.V_FCPST ' +
    ', nf.V_FCPSTRET ' +
    ', nf.V_IPI_DEVOL ' +

    '  from NOTAFISCAL nf ' +
    ' inner join CLIENTES c on c.CODCLIENTE = nf.CODCLIENTE ' +
    ' inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = c.CODCLIENTE '+
    '  left outer join VENDA co on co.CODVENDA = nf.CODVENDA  ';
    str_nf := str_nf + ' where (nf.DTAEMISSAO between ' +
      QuotedStr(formatdatetime('mm/dd/yy', JvDateEdit1.Date)) +
      ' and ' + QuotedStr(formatdatetime('mm/dd/yy', JvDateEdit2.Date)) +') ';
    if (edSerie.Text <> '') then
      str_nf := str_nf + ' and (nf.SERIE = ' + QuotedStr(edSerie.text) + ')';
    str_nf := str_nf + ' and (ec.TIPOEND = 0) ';
    str_nf := str_nf + ' and ((NF.NATUREZA = 15) or (NF.NATUREZA = 12) or (NF.NATUREZA = 16))';
    if (chkTodas.Checked = False) then
    begin
      str_nf := str_nf + ' and (nf.PROTOCOLOENV IS NULL)';
      str_nf := str_nf + ' and ((nf.STATUS IS NULL) or (nf.STATUS = ' + QuotedStr('E') + ')) ';
    end;
    if (ComboBox1.Text <> '') then
    begin
      cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
      str_nf := str_nf + ' and (nf.CCUSTO = ' + IntToStr(cds_ccustoCODIGO.AsInteger) + ')';
    end;
    str_nf := str_nf + ' order by nf.NOTASERIE DESC';
    cdsNF.CommandText := str_nf;
    //cdsNF.FetchParams;
    //cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
    //cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
    //cdsNF.Params[2].Clear;
    //cdsNF.Params[3].Clear;
    //cdsNf.Params.ParamByName('ENV').Clear;
    //if (chkTodas.Checked) then
    //  cdsNf.Params.ParamByName('ENV').AsString := 'TODAS';

    //if (edSerie.Text <> '') then
    //  cdsNF.Params[2].AsString := edSerie.Text
    //else
    //  cdsNF.Params[3].AsString := 'todasasseriesdenotaf';

  end;
  cdsNF.Open;

  //Seleciona Empresa de acordo com o CCusto selecionado
  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := cdsNF.FieldByname('CCUSTO').AsInteger;
  sEmpresa.Open;

  Form1.Caption := sEmpresaEMPRESA.AsString;

  if (sMenorData.Active) then
     sMenorData.Close;
   sMenorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMenorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMenorData.Params[2].Clear;
   sMenorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMenorData.Params[2].AsString := edSerie.Text
   else
     sMenorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMenorData.Open;

   if (sMaiorData.Active) then
     sMaiorData.Close;
   sMaiorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMaiorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMaiorData.Params[2].Clear;
   sMaiorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMaiorData.Params[2].AsString := edSerie.Text
   else
     sMaiorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMaiorData.Open;


   if (not cdsNF.Eof) then
   begin
     btnGeraNFe.Enabled :=      True;
     btnContingencia.Enabled := True;
     btnSPED.Enabled :=         True;
     btnDpec.Enabled :=         True;
     btnFSDA.Enabled :=         True;
     BtnPreVis.Enabled :=       True;
     btnPreVisCont.Enabled :=   True;
     btnPreVisSped.Enabled :=   True;
     btnPreVisDPEC.Enabled :=   True;
     btnPreVisFSDA.Enabled :=   True;
   end
   else
   begin
     btnGeraNFe.Enabled :=      False;
     btnContingencia.Enabled := False;
     btnSPED.Enabled :=         False;
     btnDpec.Enabled :=         False;
     btnFSDA.Enabled :=         False;
     BtnPreVis.Enabled :=       False;
     btnPreVisCont.Enabled :=   False;
     btnPreVisSped.Enabled :=   False;
     btnPreVisDPEC.Enabled :=   False;
     btnPreVisFSDA.Enabled :=   False;
   end;


end;

//// inicio

procedure TForm1.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      cbSSLLib.ItemIndex:= Ini.ReadInteger( 'Certificado','SSLLib' ,0) ;
      cbCryptLib.ItemIndex := Ini.ReadInteger( 'Certificado','CryptLib' , 0) ;
      cbHttpLib.ItemIndex := Ini.ReadInteger( 'Certificado','HttpLib' , 0) ;
      cbXmlSignLib.ItemIndex := Ini.ReadInteger( 'Certificado','XmlSignLib' , 0) ;
      edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
      edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;

      if(edtNumSerie.Text = '') then
        edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','');

      ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
      ACBrNFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

      edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\') ;

      ACBrNFe1.SSL.DescarregarCertificado;

      with ACBrNFe1.Configuracoes.Geral do
       begin
         SSLLib                := TSSLLib(cbSSLLib.ItemIndex);
         SSLCryptLib           := TSSLCryptLib(cbCryptLib.ItemIndex);
         SSLHttpLib            := TSSLHttpLib(cbHttpLib.ItemIndex);
         SSLXmlSignLib         := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
         AtualizaSSLLibsCombo;
       end;


      with ACBrNFe1.Configuracoes.Arquivos do
      begin
        PathSchemas        := edtPathSchemas.Text;
      end;

  finally
     Ini.Free ;
  end;


end;
//// fim


procedure TForm1.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text    := ACBrNFe1.SSL.SelecionarCertificado;


   edtSenha.Text := ACBrNFe1.SSL.DadosPFX;
   edtCaminho.Text := ACBrNFe1.SSL.ArquivoPFX;

   edtNumSerieABA.Text := edtNumSerie.Text;
   edtNumSerie2.Text   := edtNumSerie.Text;
   {$ENDIF}
   if ( ((ACBrNFe1.SSL.CertDataVenc - Now) < 30) and ((ACBrNFe1.SSL.CertDataVenc - Now) > 0)) then
     MessageDlg( 'Seu certificado expira dia ' + DateToStr(ACBrNFe1.SSL.CertDataVenc) , mtInformation, [mbOK], 0);

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
   edtNumSerie2.Text := edtNumSerie.Text;
   {$ENDIF}
   if ( ((ACBrNFe1.SSL.CertDataVenc - Now) < 30) and ((ACBrNFe1.SSL.CertDataVenc - Now) > 0)) then
     MessageDlg( 'Seu certificado expira dia ' + DateToStr(ACBrNFe1.SSL.CertDataVenc) , mtInformation, [mbOK], 0);

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
  I: Integer;
  ASerie: String;
  AddRow: Boolean;
begin
  frSelecionarCertificado := TfrSelecionarCertificado.Create(Self);
  try
    ACBrNFe1.SSL.LerCertificadosStore;
    AddRow := False;

    with frSelecionarCertificado.StringGrid1 do
    begin
      ColWidths[0] := 220;
      ColWidths[1] := 250;
      ColWidths[2] := 120;
      ColWidths[3] := 80;
      ColWidths[4] := 150;
      Cells[ 0, 0 ] := 'Num.Série';
      Cells[ 1, 0 ] := 'Razão Social';
      Cells[ 2, 0 ] := 'CNPJ';
      Cells[ 3, 0 ] := 'Validade';
      Cells[ 4, 0 ] := 'Certificadora';
    end;

    For I := 0 to ACBrNFe1.SSL.ListaCertificados.Count-1 do
    begin
      with ACBrNFe1.SSL.ListaCertificados[I] do
      begin
        ASerie := NumeroSerie;
        if (CNPJ <> '') then
        begin
          with frSelecionarCertificado.StringGrid1 do
          begin
            if Addrow then
              RowCount := RowCount + 1;

            Cells[ 0, RowCount-1] := NumeroSerie;
            Cells[ 1, RowCount-1] := RazaoSocial;
            Cells[ 2, RowCount-1] := CNPJ;
            Cells[ 3, RowCount-1] := FormatDateBr(DataVenc);
            Cells[ 4, RowCount-1] := Certificadora;
            AddRow := True;
          end;
        end;
      end;
    end;

    frSelecionarCertificado.ShowModal;

    if frSelecionarCertificado.ModalResult = mrOK then
      edtNumSerie.Text := frSelecionarCertificado.StringGrid1.Cells[ 0,
                            frSelecionarCertificado.StringGrid1.Row];

  finally
     frSelecionarCertificado.Free;
  end;

end;

procedure TForm1.btnSairVendaClick(Sender: TObject);
begin
 {  manoel
  if (dmnf.FormExiste(fVendas) = True) then
  begin
    if (dmnf.FormExiste(fVendaFinalizar) = True) then
    begin
      if (dmnf.FormExiste(fNotaf) = True) then
      begin
        fNotaf.Close;
        fVendaFinalizar.Close;
        fVendas.btnIncluir.Click;
        fVendas.btnCancelar.Click;
        fVendas.cds_Movimento.Params[0].Clear;
        fVendas.cds_Movimento.Close;
        Close;
      end;
    end;
  end;
  }
end;

procedure TForm1.btnSPEDClick(Sender: TObject);
begin
  if (tp_amb = 1) then
  begin
    MessageDlg('Altere a noda para o Modo Scan.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (chkScan.Checked) then
  begin
    //tp_amb := 3;
    btnGeraNFeClick(Sender);
    //tp_amb := 1;
  end;
end;

procedure TForm1.btnStatusClick(Sender: TObject);
var vXMLDoc: TXMLDocument;
    motivo: WideString;
    NomArquivo, Registro: String;
    arquivo: TextFile;
begin
  NomArquivo := Edit1.Text + '\stats.xml';
  vXMLDoc := TXMLDocument.Create(self);
  Try
  //TESTA STATUS DO SERVIÇO
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);

  //SALVA RESPOSTA NO ARQUIVO
  AssignFile(Arquivo, NomArquivo);
  Rewrite(Arquivo);
  Registro := MemoResp.Text;
  writeln(Arquivo, Registro);
  CloseFile(arquivo);

  //ABRE A RESPOSTA NO ARQUIVO
  vXMLDoc.LoadFromFile(Edit1.Text + '\stats.xml');

  //PEGA A RESPOSTA
   with vXMLDoc.DocumentElement  do
   begin
     motivo :=    ChildNodes['xMotivo'].text;
   end;
  MessageDlg( motivo, mtInformation, [mbOK], 0);
  finally
    VXMLDoc.Free;
  end;

end;

procedure TForm1.btnStatusNaoEnviadaClick(Sender: TObject);
var strNEnv: String;
begin
  if  MessageDlg('Confirma a alteração de Status da NF : ' + cdsNFNOTASERIE.AsString + ' ?', mtConfirmation, [mbYes, mbNo],0) = mrNo then
    exit;
  if (Length(cdsNFPROTOCOLOENV.AsString) > 5) then
  begin
    MessageDlg('Nota com protocolo de envio, utilize o botão imprimir DANFE.',mtWarning,[mbOk],0);
    exit;
  end;
  strNEnv := 'UPDATE NOTAFISCAL SET STATUS = Null, PROTOCOLOENV = Null ' +
  ' WHERE NUMNF = ' + IntToStr(cdsNFNUMNF.AsInteger);

  con.AutoCommit := True;
  con.StartTransaction;
  try
    con.ExecuteDirect(strNEnv);
    con.Commit;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      con.Rollback; //on failure, undo the changes}
    end;
  end;


end;

procedure TForm1.btnSVCANClick(Sender: TObject);
begin
  tp_amb := 6;
  BtnPreVisClick(Sender);
  tp_amb := 1;
end;

procedure TForm1.btnSvcanGeraClick(Sender: TObject);
begin
  tp_amb := 6;
  btnGeraNFe.Click;
  tp_amb := 1;
end;

procedure TForm1.btnValidaNFeClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.NotasFiscais.Validar;
    showmessage('Nota Fiscal Eletrônica Valida');
  end;
end;

procedure TForm1.btnValidaXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
  if OpenDialog1.Execute then
  begin
  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
    begin
       // 29/12/2015 - DPEC nao existe mais nesta versao do acbr.
      {
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
       DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
      ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.Retorno.Protocolo;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
      }
    end;
  ACBrNFe1.Enviar(0);
  end;
  ACBrNFe1.NotasFiscais.Items[0].GravarXML;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if(edtNumSerie.Text = '') then
  begin
    MessageDlg('Certificado Não Selecionado', mtError, [mbOK], 0);
    exit;
  end;
  GravarConfiguracao;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 ACBrNFe1.WebServices.StatusServico.Executar;

 MemoResp2.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetWS;
 memoRespWS2.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetornoWS;
// LoadXML(ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);


 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
end;

procedure TForm1.Button3Click(Sender: TObject);
var str : string;
begin
 if (edtNumSerieABA.Text <> '') then
    begin
        con.AutoCommit := True;
        con.StartTransaction;
        try
          str := 'UPDATE EMPRESA SET CERTIFICADO = ' + quotedStr(edtNumSerieABA.Text)
          + ' WHERE CCUSTO = ' + quotedStr(IntToStr(cds_ccustoCODIGO.AsInteger));
          con.ExecuteDirect(str);
          con.Commit;
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            con.Rollback; //on failure, undo the changes}
          end;
        end;

    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var str : string;
begin

  con.AutoCommit := True;
  con.StartTransaction;
  try
    str := 'UPDATE EMPRESA SET CERTIFICADO = ' + 'NULL'
    + ' WHERE CCUSTO = ' + quotedStr(IntToStr(cds_ccustoCODIGO.AsInteger));
    con.ExecuteDirect(str);
    con.Commit;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      con.Rollback; //on failure, undo the changes}
    end;
  end;



end;

procedure TForm1.TestEmailClick(Sender: TObject);
var
 IDNFE, RAZAO, CNPJ, TRANSP, Protocolo, Assunto, caminho , ttl, ssl, email : String;
 numnf, serie : Integer;
 CC, Texto: Tstrings;
 begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
    if (cdsNFSELECIONOU.AsString = 'S') then
    begin
      if (cdsNFXMLNFE.AsString <> '') then
      begin
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromString(cdsNFXMLNFE.AsString);
      end
      else begin
         OpenDialog1.Title := 'Selecione a NFE';
         OpenDialog1.DefaultExt:= '*-nfe.XML';
         OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
         OpenDialog1.InitialDir := Edit1.Text;
         if OpenDialog1.Execute then
         begin
           ACBrNFe1.NotasFiscais.Clear;
           caminho := OpenDialog1.FileName;
           ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
         end;
      end;
      if (numnf <> StrToInt(cdsNFNOTASERIE.AsString)) then
        numNF :=  StrToInt(cdsNFNOTASERIE.AsString);
      if not(sCliente.Active) then
      begin
        sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
        sCliente.Open;
      end;
    end;
    cdsNF.Next;
  end;
  cdsNF.EnableControls;

  CC := TstringList.Create;
  //ABRE A NOTA
  IDNFE  := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
  numnf  := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF; //StrToInt(cdsNFNOTASERIE.AsString);
  RAZAO  := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
  CNPJ   := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
  serie  := ACBrNFe1.NotasFiscais.Items[0].NFe.ide.serie;
  TRANSP := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;


  Protocolo := ACBrNFe1.WebServices.Retorno.Protocolo;
  Texto := TStringList.Create;
  Texto.Add('Empresa emissora da NF-e: ' + sEmpresaRAZAO.AsString);
  Texto.Add('CNPJ/CPF da Empresa Emissora: ' + sEmpresaCNPJ_CPF.AsString);
  Texto.Add('Empresa destacada na NF-e: ' + RAZAO);
  Texto.Add('CNPJ/CPF da Empresa/Cliente destacado: ' + CNPJ);
  Texto.Add('Número da NF: ' + InttoStr(numnf) + ' Série ' + IntToStr(serie));
  Texto.Add('Chave de identificação: ' + IDNFE);
  Texto.Add('');
  Texto.Add('');
  Texto.Add('Consulte no Portal Nacional da NFe: https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa .');
  Texto.Add('Ou consulte pela página do SEFAZ do seu estado.');

  CC.Add(sEmpresaE_MAIL.AsString); //especifique um email válido
  Assunto := 'Nota Fiscal Eletrônica ' + InttoStr(numnf);

  email := edtSeuEmail.Text;

  Try
    begin
      try
        // 29/12/2015
        ACBrMail1.Port       := edtPorta.Text;        // sEmpresaPORTA.AsString;
        ACBrMail1.Host       := edtSMTP.Text;         //sEmpresaSMTP.AsString;
        ACBrMail1.Username   := edtUsername.Text;     // sEmpresaE_MAIL.AsString;
        ACBrMail1.Password   := edtSenhas.Text;       // sEmpresaSENHA.AsString;
        ACBrMail1.From       := edtSeuEmail.Text;     // sEmpresaE_MAIL.AsString;
        ACBrMail1.FromName   := 'TESTE EMAIL ATS ';    //sEmpresaEMPRESA.AsString;
        ACBrMail1.AddAddress(email);     // (sClienteE_MAIL.AsString);


        ttl := edtTLS.Text;
        ssl := edtSSL.Text;

        if(ttl = 'S') then
        begin
          if (email_tls = 'S') then
            ACBrMail1.SetTLS := True;
          if (email_ssl = 'S') then
            ACBrMail1.SetSSL := True;
        end;

        if(ttl = 'N') then
        begin
          if (email_tls = 'N') then
            ACBrMail1.SetTLS := False;
          if (email_ssl = 'N') then
            ACBrMail1.SetSSL := False;
        end;

        //sPara, sAssunto: String; sMensagem: TStrings;
        //       EnviaPDF: Boolean; sCC: TStrings; Anexos: TStrings)
        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(sClienteE_MAIL.AsString
                                                 , Assunto
                                                 , Texto
                                                 , True //Enviar PDF junto
                                                 , CC //com copia
                                                 , nil // Lista de anexos - TStrings
                                                 );

        ShowMessage('Email enviado com sucesso!');
        lblMsgNfe.Caption := '';
      except
         on E: Exception do
          begin
            raise Exception.Create('Erro ao enviar email'+sLineBreak+E.Message);
          end;
      end;
    end;
  finally
    CC.Clear;
    CC.Free;
    Texto.Free;
    //fNFeletronica.ACBrNFe1.NotasFiscais.Clear;
  end;

end;

procedure TForm1.cbCryptLibChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm1.cbHttpLibChange(Sender: TObject);
begin
  try
    if cbHttpLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm1.cbSSLLibChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm1.cbXmlSignLibChange(Sender: TObject);
begin
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm1.CertificadoShow(Sender: TObject);
begin
        edtPorta.Text    := sEmpresaPORTA.AsString;
        edtSMTP.Text     := sEmpresaSMTP.AsString;
        edtUsername.Text := sEmpresaE_MAIL.AsString;
        edtSenhas.Text   := sEmpresaSENHA.AsString;
        edtSeuEmail.Text := sEmpresaE_MAIL.AsString;

      {/*
        ACBrMail1.Port := sEmpresaPORTA.AsString;
        ACBrMail1.Host := sEmpresaSMTP.AsString;
        ACBrMail1.Username := sEmpresaE_MAIL.AsString;
        ACBrMail1.Password := sEmpresaSENHA.AsString;
        ACBrMail1.From := sEmpresaE_MAIL.AsString;
        ACBrMail1.FromName := sEmpresaEMPRESA.AsString;
        ACBrMail1.AddAddress(sClienteE_MAIL.AsString);

      */}
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  // busca dados da empresa selecionada
  if (ComboBox1.Text <> '') then
  begin
    if (not cds_ccusto.Active) then
      cds_ccusto.Open;
    cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

    //Seleciona Empresa de acordo com o CCusto selecionado
    if (sEmpresa.Active) then
      sEmpresa.Close;
    sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
    sEmpresa.Open;
    Edit1.Text := sEmpresaDIVERSOS1.AsString;
    Edit3.Text := sEmpresaDIVERSOS1.AsString;

  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
 var Ini: TIniFile;
     IniFile    : String;
     ImpressoraDet: TIniFile;

     T : TSSLLib;
     U: TSSLCryptLib;
     V: TSSLHttpLib;
     X: TSSLXmlSignLib;

begin
  micro := Trim(GetComputerNameFunc);
  ACBrNFe1.DANFE := ACBrNFeDANFeRL1; //ACBrNFeDANFCeFortes1;
  cbSSLLib.Items.Clear ;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) ) ;
  cbSSLLib.ItemIndex := 0 ;

  cbCryptLib.Items.Clear ;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) ) ;
  cbCryptLib.ItemIndex := 0 ;

  cbHttpLib.Items.Clear ;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) ) ;
  cbHttpLib.ItemIndex := 0 ;

  cbXmlSignLib.Items.Clear ;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) ) ;
  cbXmlSignLib.ItemIndex := 0 ;

  begin
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'dbxconnections.ini');
    con.Connected       := False;
    con.HostName        := Ini.ReadString('nfe', 'Hostname', '');
    con.Port            := Ini.ReadInteger('nfe', 'Port', 0);
    con.Protocol        := Ini.ReadString('nfe', 'Protocol', '');
    con.User            := Ini.ReadString('nfe', 'User', '');
    con.Password        := Ini.ReadString('nfe', 'Password', '');
    con.Database        := Ini.ReadString('nfe', 'Database', '');
    con.ClientCodepage  := Ini.ReadString('nfe', 'ClientCodepage', '');
    con.LibraryLocation := Ini.ReadString('nfe', 'LibraryLocation', '');
    Ini.Free;
  end;


 // LerConfiguracao;

  nfe_serie_receita := 1;   /// manoel 21/03/18

  ImpressoraDet := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'prjAtsAdmin.ini' );
  try
    nfe_serie_receita  := ImpressoraDet.ReadInteger('SISTEMA','SERIERECEITA',1);
    email_tls          := ImpressoraDet.ReadString('EMAIL','TLS','');
    email_ssl          := ImpressoraDet.ReadString('EMAIL','SSL','');
   // 01/11/18 danfe_larg_codprod := ImpressoraDet.ReadInteger('Fortes','Largura',54);

  finally
    ImpressoraDet.Free;
  end;

  //  sCtrlResize.CtrlResize(TForm(fNFeletronica));
  if cds_parametro.Active then
    cds_parametro.Close;
  cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  cds_parametro.Open;
  conta_local := cds_parametroDADOS.AsString;
  cds_parametro.Close;

  if cds_parametro.Active then
    cds_parametro.Close;
  cds_parametro.Params[0].AsString := 'EMPRESA';
  cds_parametro.Open;
  danfeDec := 2;
  if (cds_parametroD5.AsString <> '') then
    danfeDec := StrToInt(cds_parametroD5.AsString);
  quebraLinhaDanfe := True;
  if (cds_parametroD6.AsString <> '') then
    quebraLinhaDanfe := False;
  imprimeDetalhamentoEspecifico := True;
  if (cds_parametroD7.AsString <> '') then
    imprimeDetalhamentoEspecifico := False;
  danfe_larg_codprod := 46;
  if (cds_parametroD2.AsString <> '') then
  begin
    try
      danfe_larg_codprod := StrToInt(cds_parametroD2.AsString);
    except
    end;
  end;
  cds_parametro.Close;

  if cds_ccusto.Active then
    cds_ccusto.Close;
  cds_ccusto.Params[0].AsString := conta_local;
  cds_ccusto.Open;
  // populo a combobox
  cds_ccusto.First;
  while not cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(cds_ccustoNOME.AsString);
    ComboBox2.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;


  begin
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'NFe.ini');
  try
    edtNumSerie.Text  := Ini.ReadString('Certificado', 'NumSerie', '');
  except
   on E:Exception do
   MessageDlg('Carregar Nº Certificado !'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
  end;
    Ini.Free;
  end;


  //cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
  //cds_ccusto.Locate('NOME', ComboBox2.Text,[loCaseInsensitive]);

  if (sEmpresa1.Active) then
    sEmpresa1.Close;
  sEmpresa1.Open;

  Edit1.Text := sEmpresa1DIVERSOS1.AsString;
  Edit3.Text := sEmpresa1DIVERSOS1.AsString;
  Edit6.Text := sEmpresa1DIVERSOS1.AsString;

  if (sEmpresa1TIPO.AsString = '1') then
  begin
    ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
    label5.Font.Color := clBlue;
    Label5.Caption :=  'PRODUÇÃO.';
    label8.Font.Color := clBlue;
    Label8.Caption :=  'PRODUÇÃO.';
  end
  else
  begin
    ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
    label5.Font.Color := clRed;
    Label5.Caption :=  'HOMOLOGAÇÃO.';
    label8.Font.Color := clRed;
    Label8.Caption :=  'HOMOLOGAÇÃO.';
  end;
  ACBrNFe1.Configuracoes.Arquivos.PathNFe := sEmpresa1DIVERSOS1.AsString;
  if ( not DirectoryExists(sEmpresa1DIVERSOS1.AsString)) then
     CreateDir(sEmpresa1DIVERSOS1.AsString);
  ACBrNFe1.Configuracoes.Arquivos.PathEvento := sEmpresa1DIVERSOS1.AsString + 'Canceladas\';
  if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathEvento)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathEvento);
  ACBrNFe1.Configuracoes.Arquivos.PathEvento := sEmpresa1DIVERSOS1.AsString + 'CCe\';
  if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathEvento)) then
     CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathEvento);
  // 29/12/2015
  //ACBrNFe1.Configuracoes.Arquivos.PathDPEC := sEmpresa1DIVERSOS1.AsString + 'DPEC\';
  //if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathDPEC)) then
  //   CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathDPEC);
  ACBrNFe1.Configuracoes.Arquivos.PathEvento := sEmpresa1DIVERSOS1.AsString + 'Inutilizadas\';
  if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathEvento)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathEvento);
  ACBrNFe1.Configuracoes.Arquivos.PathNFe := sEmpresa1DIVERSOS1.AsString;

  if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathNFe)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathNFe);
  //ACBrNFeDANFERave1.PathPDF := sEmpresa1DIVERSOS1.AsString;

  tp_amb := 1;
  //ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';

  //ACBrNFeDANFERave1.Logo :=  diretorio + '\logo.bmp';
  diretorio := GetCurrentDir;
  diretorio_schema := diretorio + '\Schemas';

  // manoel
  if (FilesExists(diretorio + '\logo_nfe.jpg')) then
    ACBrNFeDANFCeFortes1.Logo := diretorio + '\logo_nfe.jpg'
  else
    ACBrNFeDANFCeFortes1.Logo := diretorio + '\logo.bmp';
  ACBrNFeDANFCeFortes1.PathPDF := sEmpresa1DIVERSOS1.AsString;

  if (FilesExists(diretorio + '\logo.jpg')) then
    ACBrNFeDANFeRL1.Logo := diretorio + '\logo.jpg'
  else
    ACBrNFeDANFeRL1.Logo := diretorio + '\logo.bmp';
  ACBrNFeDANFeRL1.PathPDF := sEmpresa1DIVERSOS1.AsString;
  ACBrNFeDANFeRL1.ImprimirDetalhamentoEspecifico := imprimeDetalhamentoEspecifico;
  ACBrNFeDANFeRL1.QuebraLinhaEmDetalhamentoEspecifico := quebraLinhaDanfe;
  // tamanho da coluna produto na DANFE

  ACBrNFeDANFeRL1.LarguraCodProd := danfe_larg_codprod;

  ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpEmis    := teNormal;
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas := diretorio + '\Schemas';


  sEmpresa1.Close;

  if cds_parametro.Active then
    cds_parametro.Close;
  cds_parametro.Params[0].AsString := 'EMAILAUTOMATICO';
  cds_parametro.Open;
  if (not cds_parametro.IsEmpty) then
    envemail := cds_parametroCONFIGURADO.AsString
  else
    envemail := 'N';
  cds_parametro.Close;




end;




procedure TForm1.FormShow(Sender: TObject);
var  CSize: DWORD;
  ccusto_emp : Integer;
   //  micro : string ;
begin
  label48.Caption := GetVersion;
 // micro := Trim(GetComputerNameFunc);
  label26.caption := Trim(GetComputerNameFunc);
 // micro := 'TESTE';
  {
  begin
  Computer:=#0;
  CSize:=MAX_COMPUTERNAME_LENGTH + 1;
  try
      GetMem(Computer,CSize);
      if GetComputerName(Computer,CSize ) then
      Label26.Caption := Computer;
      micro := Computer;
  finally
      FreeMem(Computer);
      end;
  end;
  }

//  try

  lblSerieNfe.Caption := IntToStr(nfe_serie_receita);
  if (JvDateEdit1.Text = '  /  /    ') then
    JvDateEdit1.Text := DateToStr(Now);
  if (JvDateEdit2.Text = '  /  /    ') then
    JvDateEdit2.Text := DateToStr(Now);
   {
   if (ComboBox1.Text <> '') then
   begin
    if (not cds_ccusto.Active) then
      cds_ccusto.Open;
    cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

     //mudei para oncreat
    //Seleciona Empresa de acordo com o CCusto selecionado
    if (sEmpresa.Active) then
      sEmpresa.Close;
    sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
    sEmpresa.Open;

    if(sEmpresaCERTIFICADO.AsString <> '')then
    begin
      edtNumSerie.Text := sEmpresaCERTIFICADO.AsString;
    end;
    Edit1.Text     := sEmpresaDIVERSOS1.AsString;
    Edit3.Text     := sEmpresaDIVERSOS1.AsString;
   end;
  }
 {
 try
  if not(cdsCentroCusto.Active) then
  begin
    cdsCentroCusto.Close;
    cdsCentroCusto.Params[0].AsString := micro;
    cdsCentroCusto.Open;
    ComboBox1.ItemIndex := 0;
    ComboBox2.ItemIndex := 0;
    ComboBox1.Text       := cdsCentroCustoNOMEEMPRESA.AsString;
    ComboBox2.Text       := cdsCentroCustoNOMEEMPRESA.AsString;
    cbTipoNota.ItemIndex := cdsCentroCustoTIPONOTA.AsInteger;
    Label25.Caption      := cdsCentroCustoUCLOGIN.AsString;

  end;
  except
   on E:Exception do
   MessageDlg('Erro ao conectar 3 !'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
  end;

  if(cdsCentroCustoNOMEEMPRESA.AsString = '' ) then
  begin
    cbTipoNota.ItemIndex := 1;
  end;

 }
  // if not(cdsCentroCusto.Active) then
    begin
      cdsCentroCusto.Close;
      cdsCentroCusto.Params[0].AsString := micro;
      cdsCentroCusto.Open;
      cds_ccusto.First;
      While not cds_ccusto.Eof do begin
        if (cdsCentroCustoCODEMPRESA.AsInteger = cds_ccustoCODIGO.AsInteger) then
        begin
          ccusto_emp := cds_ccustoCODIGO.AsInteger;
          ComboBox1.ItemIndex := cds_ccusto.RecNo-1;
          ComboBox2.ItemIndex := cds_ccusto.RecNo-1;
          ComboBox1.Text      := cdsCentroCustoNOMEEMPRESA.AsString;
          ComboBox2.Text      := cdsCentroCustoNOMEEMPRESA.AsString;
        end;
        cds_ccusto.Next;
      end;
      //ComboBox1.ItemIndex := 0;

      cbTipoNota.ItemIndex := cdsCentroCustoTIPONOTA.AsInteger;
      Label25.Caption      := cdsCentroCustoUCLOGIN.AsString;

    end;

  if(cdsCentroCustoNOMEEMPRESA.AsString = '' ) then
  begin
    cbTipoNota.ItemIndex := 1;
  end;

   if (ComboBox1.Text <> '') then
   begin
     //mudei para oncreat
     //Seleciona Empresa de acordo com o CCusto selecionado
     if (sEmpresa.Active) then
       sEmpresa.Close;
     sEmpresa.Params[0].AsInteger := ccusto_emp;
     sEmpresa.Open;
     ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;

     //  se e multi empresa carrega estes dados novamente
     if (not sEmpresa.IsEmpty) then
     begin
       if(sEmpresaCERTIFICADO.AsString <> '')then
       begin
         edtNumSerie.Text := sEmpresaCERTIFICADO.AsString;
       end;
       Edit1.Text     := sEmpresaDIVERSOS1.AsString;
       Edit3.Text     := sEmpresaDIVERSOS1.AsString;

       if (sEmpresaTIPO.AsString = '1') then
       begin
         ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
         label5.Font.Color := clBlue;
         Label5.Caption :=  'PRODUÇÃO.';
         label8.Font.Color := clBlue;
         Label8.Caption :=  'PRODUÇÃO.';
       end
       else
       begin
         ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
         label5.Font.Color := clRed;
         Label5.Caption :=  'HOMOLOGAÇÃO.';
         label8.Font.Color := clRed;
         Label8.Caption :=  'HOMOLOGAÇÃO.';
       end;
       ACBrNFe1.Configuracoes.Arquivos.PathNFe := sEmpresaDIVERSOS1.AsString;
       if ( not DirectoryExists(sEmpresaDIVERSOS1.AsString)) then
         CreateDir(sEmpresaDIVERSOS1.AsString);
       ACBrNFe1.Configuracoes.Arquivos.PathEvento := sEmpresaDIVERSOS1.AsString + 'Canceladas\';
       if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathEvento)) then
         CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathEvento);
       ACBrNFe1.Configuracoes.Arquivos.PathEvento := sEmpresaDIVERSOS1.AsString + 'CCe\';
       if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathEvento)) then
         CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathEvento);
       // 29/12/2015
       //ACBrNFe1.Configuracoes.Arquivos.PathDPEC := sEmpresa1DIVERSOS1.AsString + 'DPEC\';
       //if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathDPEC)) then
       //   CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathDPEC);
       ACBrNFe1.Configuracoes.Arquivos.PathEvento := sEmpresaDIVERSOS1.AsString + 'Inutilizadas\';
       if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathEvento)) then
         CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathEvento);
       ACBrNFe1.Configuracoes.Arquivos.PathNFe := sEmpresaDIVERSOS1.AsString;

       if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathNFe)) then
         CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathNFe);
       //ACBrNFeDANFERave1.PathPDF := sEmpresa1DIVERSOS1.AsString;

       tp_amb := 1;
       //ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';

       //ACBrNFeDANFERave1.Logo :=  diretorio + '\logo.bmp';
      ACBrNFeDANFCeFortes1.PathPDF := sEmpresaDIVERSOS1.AsString;

      ACBrNFeDANFeRL1.PathPDF := sEmpresaDIVERSOS1.AsString;
     end;
   end;
   LerConfiguracao;
end;

procedure TForm1.btnPreVisContClick(Sender: TObject);
begin
    tp_amb := 2;
    BtnPreVisClick(Sender);
    tp_amb := 1;
end;

procedure TForm1.btnPreVisDPECClick(Sender: TObject);
begin
    BtnPreVisClick(Sender);
end;

procedure TForm1.btnPreVisFSDAClick(Sender: TObject);
begin
    tp_amb := 5;
    BtnPreVisClick(Sender);
    tp_amb := 1;
end;

procedure TForm1.btnPreVisSpedClick(Sender: TObject);
begin
  if (chkScan.Checked) then
  begin
    //tp_amb := 3;
    BtnPreVisClick(Sender);
    //tp_amb := 1;
  end;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
 vAux : String;
begin
  if not(InputQuery('WebServices DPEC', 'Informe o Numero do Registro do DPEC ou a Chave da NFe', vAux)) then
    exit;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
  aux, nota_rec: String;
begin
  if (edRecibo.Text = '') then
  begin
    if not(InputQuery('Consultar Recibo Lote', 'Número do Recibo', aux)) then
      exit;
  end else
  begin
    aux := edRecibo.Text;
  end;
  ACBrNFe1.WebServices.Recibo.Recibo := aux;

  ACBrNFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Recibo.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Recibo.RetornoWS);
  //LoadXML(MemoResp, WBResposta);
  nota_rec := edit1.Text + ACBrNFe1.WebServices.Recibo.NFeRetorno.ProtNFe.Items[0].chNFe + '_rec.xml';
  MemoResp.Lines.SaveToFile(nota_rec);

  //pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Consultar Recibo');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Recibo.tpAmb));
  MemoDados.Lines.Add('versao: ' +ACBrNFe1.WebServices.Recibo.versao);
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Recibo.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Recibo.xMotivo);
  MemoDados.Lines.Add('cUF: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cUF));
  MemoDados.Lines.Add('xMsg: ' +ACBrNFe1.WebServices.Recibo.xMsg);
  MemoDados.Lines.Add('cMsg: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cMsg));
  MemoDados.Lines.Add('Recibo: ' +ACBrNFe1.WebServices.Recibo.Recibo);
  MemoDados.Lines.Add('Chave: ' +ACBrNFe1.WebServices.Recibo.NFeRetorno.ProtNFe.Items[0].chNFe);
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add(' ** Retorno gravado no arquivo : ' + nota_rec + ' **');


end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  GroupBox11.Visible := False;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BtnCCeClick(Sender: TObject);
var protocolo, str, xCond :string;
    envio :TDateTime;
    NumeroLote : Integer;
    tamanho: Integer;
    nfe_arquivo : String;
begin
  ACBrNFe1.Configuracoes.Arquivos.SalvarEvento := True;
  if (edtNumSerie2.Text = '') then
  begin
    MessageDlg('Selecione o Certificado!',mtWarning,[mbOk],0);
    exit;
  end;
  if(ComboBox2.Text = '') then
  begin
    MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
    exit;
  end;

  cds_ccusto.Locate('NOME', ComboBox2.Text,[loCaseInsensitive]);

  //Seleciona Empresa de acordo com o CCusto selecionado
  if (sEmpresa.Active) then
   sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
  sEmpresa.Open;

  ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;
  nfe_carregalogo;
  envio := Now;
  AcbrNfe1.Configuracoes.Arquivos.PathNFe := edit3.Text;
  AcbrNfe1.Configuracoes.Arquivos.PathEvento := edit3.Text + '\Eventos';
  nfe_arquivo := FormatDateTime('yyyymm', NOW);
  //try
  nfe_arquivo := AcbrNfe1.Configuracoes.Arquivos.PathNFe + '\nfe\' + nfe_arquivo +
    '\' + cdsCCECHAVE.AsString + '-NFe.xml';

  NumeroLote := StrToInt(FormatDateTime('yymmddhhmm', NOW));
  if (not FilesExists(nfe_arquivo)) then
  begin
    //    MessageDlg('Arquivo XML não localizado.', mtWarning, [mbOK], 0);
    OpenDialog1.InitialDir := edit3.Text;
    if OpenDialog1.Execute then
    begin
      nfe_arquivo := OpenDialog1.FileName;
    end;
  end;
  ACBrNFe1.NotasFiscais.LoadFromFile(nfe_arquivo);
  //tamanho := Length(edit3.Text);
  //  nfe_arquivo := RemoveChar(copy(nfe_arquivo, tamanho+1, length(nfe_arquivo)));
  nfe_arquivo := ExtractFileName(nfe_arquivo);
  ACBrNFe1.EventoNFe.Evento.Clear;
  Label28.Caption := diretorio_schema;
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas := diretorio_schema;
  //  ACBrNFe1.EnvEvento.EnvEventoNFe..idLote := StrToInt(NumeroLote) ;
  xCond := 'A Carta de Correcao e disciplinada pelo paragrafo 1o-A do art. 7o do Convenio S/N, de 15 de dezembro de 1970 e pode ser utilizada para regularizacao de erro ocorrido na emissao ';
  xCond := xCond + 'de documento fiscal, desde que o erro nao esteja relacionado com: I - as variaveis que determinam o valor do imposto tais como: base de calculo, aliquota, diferenca de preco, quantidade, valor da operacao ou da prestacao; II - a correcao de ';
  xCond := xCond + 'dados cadastrais que implique mudanca do remetente ou do destinatario; III - a data de emissao ou de saida';

  with ACBrNFe1.EventoNFe.Evento.Add do
  begin
      InfEvento.chNFe     := cdsCCECHAVE.AsString ;
      InfEvento.CNPJ      := RemoveChar(Copy(cdsCCECHAVE.AsString , 7, 14));
      InfEvento.cOrgao    := cdsCCeORGAO.AsInteger;
      //InfEvento.versaoEvento := '1.0.00';
      InfEvento.dhEvento  := envio;
      infEvento.tpEvento := teCCe;
      InfEvento.nSeqEvento := cdsCCeSEQUENCIA.AsInteger;
      InfEvento.detEvento.xCorrecao := cdsCCeCORRECAO.AsString;
      //InfEvento.detEvento.xCondUso := xCond;
    end;

    if ACBrNFe1.EnviarEvento(NumeroLote) then
    begin
      with ACBrNFe1.WebServices.EnvEvento do
      begin
        if not(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135, 136]) then
        begin
          MessageDlg('Ocorreu o seguinte erro ao enviar a carta de correção:'  +
            #13+ 'Código: ' + IntToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + #13+
            'Motivo: ' + EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
          , mtError, [mbOK], 0);
        end
        else
          MessageDlg('Evento de Carta de Correção Enviado com Sucesso!',mtInformation,[mbOk],0);
      end;
    end
    else
    begin
      with ACBrNFe1.WebServices.EnvEvento do
      begin
        MessageDlg('Ocorreram erros ao enviar a Carta de Correção:' + #13 +
          'Lote: '     + IntToStr(EventoRetorno.idLote) + #13 +
          'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + #13 +
          'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + #13 +
          'Status: '   + IntToStr(EventoRetorno.cStat) + #13 +
          'Motivo: '   + EventoRetorno.xMotivo, mtError, [mbOK], 0);
      end;
    end;

  //finally
    protocolo := AcbrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
    //cce_arquivo := AcbrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML
    if (protocolo <> '') then
    begin
      /// TransactionID := 1;
      ///  IsolationLevel := xilREADCOMMITTED;
      //con.AutoCommit := True;
      //con.StartTransaction;
      FormatSettings.DecimalSeparator := '.';
      //SALVA OS PROTOCOLOS
      ///  TD.TransactionID := 1;
      ///  TD.IsolationLevel := xilREADCOMMITTED;
        con.AutoCommit := True;
        con.StartTransaction;
        ///dm.sqlsisAdimin.StartTransaction(TD);
        try
          str := 'UPDATE CCE SET PROTOCOLO = ' + quotedStr(protocolo)
          + ', DHENVIO = ' + QuotedStr(FormatDateTime('dd.mm.yyyy hh:mm:ss', envio))
          + ', CONDICAO = ' + QuotedStr(xCond)
          + ' WHERE CHAVE = ' + quotedStr(cdsCCECHAVE.AsString)
          + ' AND SEQUENCIA = ' + IntToStr(cdsCCESEQUENCIA.AsInteger);
          con.ExecuteDirect(str);
          con.Commit;
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            con.Rollback; //on failure, undo the changes}
          end;
        end;

    end;
  //end;
  ACBrNFe1.ImprimirEvento;
  ACBrNFe1.Configuracoes.Arquivos.SalvarEvento := False;
  FormatSettings.DecimalSeparator := ',';
end;

procedure TForm1.BtnPreVisClick(Sender: TObject);
var
  i: integer;
  valida, codFisc : String;
  tipoNota: Char;
begin

  if (not cds_ccusto.Active) then
    cds_ccusto.Open;
  cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

  //Seleciona Empresa de acordo com o CCusto selecionado
  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
  sEmpresa.Open;

  nfe_carregalogo;

  //verifica se o CC foi selecionado caso não da mensagem avisando
  if(sEmpresa.IsEmpty) then
    MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);

 cdsNF.First;
 while not cdsNF.Eof do
 begin
  if (cdsNFSELECIONOU.AsString = 'S') then
  begin
    tipoNota := trim(cdsNFCFOP.AsString)[1];
    if (tipoNota in ['1','2','3']) then
      tpNFe := 0;
    if (tipoNota in ['5','6','7']) then
      tpNFe := 1;

   // Isto estava fora do IF
   if (cbTipoNota.ItemIndex = 1) then
   begin
     if (sFornec.Active) then
       sFornec.Close;

     if (sCliente.Active) then
       sCliente.Close;
     sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
     sCliente.Open;
     codFisc := sClienteCODFISCAL.AsString;
     if (sClienteCODFISCAL.AsString = '') then
     begin
       MessageDlg(sClienteNOMECLIENTE.AsString + ' - informe o CODIGO FISCAL no cadastro do cliente.', mtWarning, [mbOK], 0);
       exit;
     end;
   end
   else
   begin
     if (sCliente.Active) then
       sCliente.Close;

     if (sFornec.Active) then
       sFornec.Close;
     sFornec.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
     sFornec.Open;
     codFisc := sFornecCODFISCAL.AsString;
     if (sFornecCODFISCAL.AsString = '') then
     begin
       MessageDlg(sFornecNOMECLIENTE.AsString + ' - informe o CODIGO FISCAL no cadastro do fornecedor.', mtWarning, [mbOK], 0);
       exit;
     end;
   end;

   if (sCFOP.Active) then
     sCFOP.Close;
   sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
   if (cbTipoNota.ItemIndex = 1) then
   begin
    sCFOP.Params[1].AsString := sClienteUF.AsString;
    sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
   end
   else
   begin
    sCFOP.Params[1].AsString := sFornecUF.AsString;
    sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
   end;
   sCFOP.Open;

   ACBrNFe1.NotasFiscais.Clear;
   with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
    //infNFe.ID := 0                                  // Chave de acesso da NF-e precedida do literal NFe acrescentado a validação do formato 2.0
    if (sEstado.Active) then
      sEstado.Close;
    sEstado.Params[0].AsString := sEmpresaUF.asString;
    sEstado.Open;
    Ide.cUF       := sEstadoCODIGO.AsInteger;                               // Codigo do UF do Emitente do documento fiscal
    Ide.cNF       := cdsNFNUMNF.AsInteger;
    Ide.natOp     := copy(sCFOPCFNOME.AsString,0,59);
         //Verifica tipo de Pagamento
    getPagamento;
    try
      Ide.cMunFG    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    except
      MessageDlg('Codigo do IBGE do Emitente não informado(Cadastro Empresa)', mtError, [mbOK], 0);
    end;
    Ide.modelo    := 55;
    if (tp_amb = 1) then
    begin
      Ide.serie     := nfe_serie_receita;  // manoel   era dm.nfe_serie_receita;
      Ide.tpEmis    := teNormal;
    end
    else if (tp_amb = 2) then
    begin
      Ide.tpEmis    := teContingencia;
      Ide.serie     := nfe_serie_receita;  // manoel
    end
    else if (tp_amb = 3) then
    begin
      Ide.tpEmis    := teSCAN;
      Ide.serie     := 900;
    end
    else if (tp_amb = 4) then
    begin
      Ide.tpEmis    := teDPEC;
      Ide.serie     := nfe_serie_receita;  //manoel
    end
    else if (tp_amb = 5) then
    begin
      Ide.tpEmis    := teFSDA;
      Ide.serie     := nfe_serie_receita;
    end
    else if (tp_amb = 6) then
    begin
      Ide.tpEmis    := teSVCAN;
      Ide.serie     := nfe_serie_receita;
    end;
    //Carrega os itens da NF
    pegaItens(cbTipoNota.ItemIndex);

    if( (cdsNFIDCOMPLEMENTAR.IsNull) or (cdsNFIDCOMPLEMENTAR.AsString = '')) then
      ide.finNFe    := fnNormal
    else
    begin
      ide.finNFe    := fnComplementar;
      ide.NFref.Add.refNFe := cdsNFIDCOMPLEMENTAR.AsString;
    end;
    Ide.nNF       := StrToInt(cdsNFNOTASERIE.AsString);
    Ide.dEmi      := cdsNFDTAEMISSAO.AsDateTime;
    Ide.dSaiEnt   := cdsNFDTASAIDA.AsDateTime;
    Ide.hSaiEnt   := cdsNFHORASAIDA.AsDateTime;
    infCplTrib := '';
    //if ((cdsNFVLRTOT_TRIB.AsFloat > 0) and (dm.vTipoFiscal = '9'))  then
    if (cdsNFVLRTOT_TRIB.AsFloat > 0)  then
    begin
      pegaTributos(cdsItensNFCODMOVIMENTO.AsInteger, 0);
      infCplTrib := 'Trib aprox R$:' +
        format('%8.2n', [sqlTotal_tributos.Fields[0].AsFloat]) + '-Fed, ' +
        format('%8.2n', [sqlTotal_tributos.Fields[1].AsFloat]) + '-Est e ' +
        format('%8.2n', [sqlTotal_tributos.Fields[2].AsFloat]) + '-Mun ';
      infCplTrib := infCplTrib + 'Fonte: IBPT';//Fonte: IBPT/FECOMERCIO RJ Xe67eQ
    end;
    infCplTrib := cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString + ' ' +
      cdsNFCORPONF3.AsString + ' ' + cdsNFCORPONF4.AsString + ' ' +
      cdsNFCORPONF5.AsString + infCplTrib; // + ' ' + cdsNFCORPONF6.AsString;(usando para codigo pedido de compra)

    InfAdic.infCpl := infCplTrib;
    //InfAdic.infCpl := cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString + ' ' + cdsNFCORPONF3.AsString + ' ' + cdsNFCORPONF4.AsString + ' ' + cdsNFCORPONF5.AsString; // + ' ' + cdsNFCORPONF6.AsString(Usando para o cod pedido compra);

    if (cdsNFCORPONF6.AsString <> '') then
    begin
      compra.xPed := cdsNFCORPONF6.AsString;
    end;

    // Tipo de movimentação 0 entrada 1 saida
    if (tpNFe = 0) then
      Ide.tpNF   := tnEntrada;

    if (tpNFe = 1) then
      Ide.tpNF   := tnSaida;

    if (tipoNota in ['1','5']) then
      ide.idDest := doInterna;

    if (tipoNota in ['2','6']) then
      ide.idDest := doInterestadual;

    if (tipoNota in ['3', '7']) then
      ide.idDest := doExterior;

    //Ide.tpAmb     := tn2;                           // 1 - Produção // 2 Homologação
    Ide.verProc   := '1.0.0.0';

    if (sTabIBGE.Active) then
      sTabIBGE.Close;
    sTabIBGE.Params[0].AsString := sEmpresaCIDADE.AsString;
    sTabIBGE.Open;
    //Carrega dados do Emitente
    //VERIFICA SE CODIGO IBGE ESTÁ PREENCHIDO NA EMPRESA
    if ( (sEmpresaCD_IBGE.IsNull) or (sEmpresaCD_IBGE.AsString = '') ) then
    begin
      MessageDlg('Codigo do IBGE da empresa não definido', mtError, [mbOK], 0);
      valida := 'N';
    end;
    getEmpresa();
    //CARREGA OS DADOS DO DESTINATARIO CLIENTE/FORNECEDOR
    if( sFornec.Active) then
      if ((sFornecCD_IBGE.IsNull) or (sFornecCD_IBGE.AsString = '') ) then
      begin
        MessageDlg('Codigo do IBGE do Fornecedor não definido', mtError, [mbOK], 0);
        valida := 'N';
      end;
    if( sCliente.Active) then
      if ((sClienteCD_IBGE.IsNull) or (sClienteCD_IBGE.AsString = '') ) then
      begin
        MessageDlg('Codigo do IBGE do Cliente não definido', mtError, [mbOK], 0);
        valida := 'N';
      end;
      if (valida = 'N') then
        exit;
    getCLi_Fornec();

    //Carrega os itens da NF
    //pegaItens(cbTipoNota.ItemIndex);

    i := 1;
    while not cdsItensNF.Eof do // Escrevo os itens
    begin
     if (sProdutos.Active) then
       sProdutos.Close;
     sProdutos.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
     try
       sProdutos.Open;
     finally
       if ((sProdutosUNIDADEMEDIDA.AsString = '') or (sProdutosUNIDADEMEDIDA.IsNull) or (sProdutosUNIDADEMEDIDA.AsString = ' ')) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem Unidade de Medida', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if ((sProdutosNCM.AsString = '00000000') or (sProdutosNCM.IsNull) ) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com NCM Nulo ou Inválido', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if ((sProdutosORIGEM.IsNull) ) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com Origem Nula', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if (((cdsItensNFCSOSN.IsNull) or (cdsItensNFCSOSN.AsString = '')) and ((cdsItensNFCST.IsNull) or (cdsItensNFCST.AsString = ''))) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem CST ou CSOSN', mtError, [mbOK], 0);
         valida := 'N';
       end;
     end;
     if (valida = 'N') then
       exit;
      // DADOS DOS PRODUTOS DA NOTA
      getItens(i);
      i := i + 1;
      cdsItensNF.Next;
    end;
    getTransportadora();
    //VALOR TORAL
    if not ((ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional) and (cdsItensNFCSOSN.AsString <> '900')) then
    begin
      Total.ICMSTot.vBC   := cdsNFBASE_ICMS.AsVariant;
      Total.ICMSTot.vICMS   := cdsNFVALOR_ICMS.AsVariant;
    end;
    Total.ICMSTot.vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;
    Total.ICMSTot.vST   := cdsNFVALOR_ICMS_SUBST.AsVariant;
    Total.ICMSTot.vProd := cdsNFVALOR_PRODUTO.AsVariant;
    try
      Total.ICMSTot.vFrete := cdsNFVALOR_FRETE.AsVariant;
    except
      Total.ICMSTot.vFrete := 0;
    end;
    try
      Total.ICMSTot.vSeg := cdsNFVALOR_SEGURO.AsVariant;
    except
      Total.ICMSTot.vSeg := 0;
    end;

    try
      if (cdsNFVALOR_DESCONTO.AsVariant > 0) then
        Total.ICMSTot.vDesc := RoundTo(cdsNFVALOR_DESCONTO.AsVariant, -2);
    except
      Total.ICMSTot.vDesc := roundto(0,-2);
    end;
    Total.ICMSTot.vIPI := cdsNFVALOR_IPI.AsVariant;
    if ( (cdsNFVALOR_PIS.AsFloat <> 0 )or (cdsNFVALOR_PIS.AsFloat <> null )) then
      Total.ICMSTot.vPIS := cdsNFVALOR_PIS.AsFloat;
    if ( (cdsNFVALOR_COFINS.AsFloat <> 0) or (cdsNFVALOR_COFINS.AsFloat <> null )) then
      Total.ICMSTot.vCOFINS := cdsNFVALOR_COFINS.AsFloat;
    Total.ICMSTot.vOutro := cdsNFOUTRAS_DESP.AsVariant;
    Total.ICMSTot.vNF   := cdsNFVALOR_TOTAL_NOTA.AsVariant;
    Total.ICMSTot.vTotTrib := cdsNFVLRTOT_TRIB.AsVariant;
    end;
  end;
  cdsNF.Next;
 end;
 // 29/12/2015
 //ACBrNFeDANFERave1.RavFile := str_relatorio + 'NFe_Teste.rav';
 //ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
 //ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
 //ACBrNFeDANFERave1.CasasDecimais._vUnCom := dm.danfeDec;


 ACBrNFeDANFCeFortes1.Site := sEmpresaWEB.AsString;
 ACBrNFeDANFCeFortes1.Email := sEmpresaE_MAIL.AsString;
 ACBrNFeDANFCeFortes1.CasasDecimais._vUnCom := danfeDec;

 ACBrNFeDANFeRL1.Site := sEmpresaWEB.AsString;
 ACBrNFeDANFeRL1.Email := sEmpresaE_MAIL.AsString;
 ACBrNFeDANFeRL1.CasasDecimais._vUnCom := danfeDec; // manoel dm.danfeDec;

 ACBrNFe1.NotasFiscais.Items[0].GravarXML;
 MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0);
 ACBrNFe1.NotasFiscais.Imprimir;
 //ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';


end;

procedure TForm1.getCli_Fornec;
var
  IERG : integer;
begin
  vTipoFiscal := '';   //manoel  dm.vTipoFiscal := '';
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    //Carrega dados do Destinatário
    // FORNECEDOR
    if (cbTipoNota.ItemIndex = 0) then
    begin
      Dest.CNPJCPF           := RemoveChar(sFornecCNPJ.AsString);
      Dest.xNome             := sFornecRAZAOSOCIAL.AsString;
      Dest.EnderDest.xLgr    := sFornecLOGRADOURO.AsString;
      if ((sFornecNUMERO.IsNull) or (sFornecNUMERO.AsString = '')) then
      begin
        Dest.EnderDest.nro     := 'S/N';
      end
      else
        Dest.EnderDest.nro     := sFornecNUMERO.AsString;
      if ((not sFornecCOMPLEMENTO.IsNull) or ( sFornecCOMPLEMENTO.AsString <> '')) then
        Dest.EnderDest.xCpl    := sFornecCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := sFornecBAIRRO.AsString;
      if (trim(sFornecCD_IBGE.AsString) = '') then
      begin
        MessageDlg('Fornecedor' + sFornecRAZAOSOCIAL.AsString +  'sem Código do IBGE.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.cMun    := StrToInt(RemoveChar(sFornecCD_IBGE.AsString));
      Dest.EnderDest.xMun    := sFornecCIDADE.AsString;
      Dest.EnderDest.UF      := sFornecUF.AsString;
      if (trim(sFornecCEP.AsString) = '') then
      begin
        MessageDlg('Fornecedor' + sFornecRAZAOSOCIAL.AsString +  'sem CEP.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.CEP     := StrToInt(RemoveChar(sFornecCEP.AsString));

      if (trim(sFornecCODPAIS.AsString) = '') then
      begin
        MessageDlg('Fornecedor' + sFornecRAZAOSOCIAL.AsString +  'sem PAIS.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.cPais   := StrToInt(sFornecCODPAIS.asString);
      Dest.EnderDest.xPais   := sFornecPAIS.AsString;
      Dest.EnderDest.Fone    := sFornecDDD.AsString + sFornecTELEFONE.AsString;
      IERG := 0;
      IERG := StrLen(PChar(RemoveChar(sFornecINSCESTADUAL.AsString)));
      if ((sFornecTIPOFIRMA.AsInteger = 0) and (sFornecCODFISCAL.AsString = '9')) then
      begin
        IERG := 0;
      end;
      if (sFornecCODFISCAL.AsString = '9') then
      begin
        vTipoFiscal := '9';
      end;

      if (IERG = 0) then
      begin
        Dest.indIEDest := inNaoContribuinte;
      end
      else begin
        if (sFornecINSCESTADUAL.AsString = 'ISENTO') then
        begin
          Dest.indIEDest := inIsento;
        end
        else begin
          Dest.indIEDest := inContribuinte; //, inIsento, inNaoContribuinte
          if ((sFornecUF.AsString = 'SP') or (sFornecUF.AsString = 'MG')) then
          begin
            if (IERG > 11) then
            begin
              Dest.IE := RemoveChar(sFornecINSCESTADUAL.AsString);
            end;
          end
          else begin
            if (sFornecUF.AsString <> 'EX') then
            begin
              if (IERG >= 5) then
                Dest.IE := RemoveChar(sFornecINSCESTADUAL.AsString);
            end;
          end;
        end;
      end;
    end
    //CLIENTE
    else
    begin
      if (sClienteUF.AsString <> 'EX') then
        Dest.CNPJCPF := RemoveChar(sClienteCNPJ.AsString);
      Dest.xNome             := sClienteRAZAOSOCIAL.AsString;
      if (sClienteSUFRAMA.Size = 9) then
        Dest.ISUF              := sClienteSUFRAMA.AsString;
      Dest.EnderDest.xLgr    := sClienteLOGRADOURO.AsString;
      if ((sClienteNUMERO.IsNull) or (sClienteNUMERO.AsString = '')) then
      begin
        Dest.EnderDest.nro     := 'S/N';
      end
      else
        Dest.EnderDest.nro     := sClienteNUMERO.AsString;
      if ((not sClienteCOMPLEMENTO.IsNull) or ( sClienteCOMPLEMENTO.AsString <> '')) then
        Dest.EnderDest.xCpl    := sClienteCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := sClienteBAIRRO.AsString;

      if (trim(sClienteCD_IBGE.AsString) = '') then
      begin
        MessageDlg('Cliente' + sClienteRAZAOSOCIAL.AsString +  'sem Código do IBGE.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.cMun    := StrToInt(RemoveChar(sClienteCD_IBGE.AsString));

      Dest.EnderDest.xMun    := sClienteCIDADE.AsString;
      Dest.EnderDest.UF      := sClienteUF.AsString;

      if (trim(RemoveChar(sClienteCEP.AsString)) = '') then
      begin
        MessageDlg('Cliente' + sClienteRAZAOSOCIAL.AsString +  ' sem CEP.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.CEP     := StrToInt(RemoveChar(sClienteCEP.AsString));

      Dest.EnderDest.cPais   := StrToInt(sClienteCODPAIS.AsString);
      Dest.EnderDest.xPais   := sClientePAIS.AsString;
      Dest.EnderDest.Fone    := sClienteDDD.AsString + sClienteTELEFONE.AsString;
      if (sClienteINSCESTADUAL.AsString = 'ISENTO') then
      begin
        //Dest.indIEDest := inIsento;
      end
      else begin
        IERG := 0;
        IERG := StrLen(PChar(RemoveChar(sClienteINSCESTADUAL.AsString)));
        if ((sClienteTIPOFIRMA.AsInteger = 0)
          and (sClienteCODFISCAL.AsString = '9')
          and (sClienteTEM_IE.AsString <> 'S')) then
        begin
          IERG := 0;
        end;
        if (sClienteCODFISCAL.AsString = '9') then
        begin
          vTipoFiscal := '9';
        end;

        if (IERG = 0) then
        begin
          //Dest.indIEDest := inNaoContribuinte;
        end
        else begin
          { 20/07/16 fazendo nada
          if (sClienteTem_IE.AsString = 'S') then
          begin
            //Dest.indIEDest := inNaoContribuinte;
          end
          else begin
            //Dest.indIEDest := inContribuinte;
          end;
          //Dest.indIEDest := inContribuinte; //, inIsento, inNaoContribuinte
          }
          if ((sClienteUF.AsString = 'SP') or (sClienteUF.AsString = 'MG')) then
          begin
            if (IERG > 11) then
            begin
              Dest.IE := RemoveChar(sClienteINSCESTADUAL.AsString);
            end;
          end
          else begin
            if (sClienteUF.AsString <> 'EX') then
            begin
              if (IERG >= 5) then
                Dest.IE := RemoveChar(sClienteINSCESTADUAL.AsString);
            end;
          end;
        end;


      end;
      //if (sClienteUF.AsString = 'EX') then
      //begin
      //  Dest.indIEDest := inNaoContribuinte;
      //end;
      if (cdsNFIND_IEDEST.AsString = 'inNaoContribuinte') then
        Dest.indIEDest := inNaoContribuinte
      else
        Dest.indIEDest := inContribuinte;
      if (cdsNFIND_IEDEST.AsString = 'inIsento') then
        Dest.indIEDest := inIsento;

      // ENDERECO ENTREGA
      if cds_parametro.Active then   // manoel dm.cds_parametro.Active
         cds_parametro.Close;
      cds_parametro.Params[0].AsString := 'NFE_END_ENTREGA';
      cds_parametro.Open;
      if (cds_parametroCONFIGURADO.AsString = 'S') then
      begin
        if (cdsEndEntrega.Active) then
          cdsEndEntrega.Close;
        cdsEndEntrega.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
        cdsEndEntrega.Open;
        if not cdsEndEntrega.IsEmpty then
        begin
          Entrega.CNPJCPF := RemoveChar(sClienteCNPJ.AsString);
          Entrega.xLgr := cdsEndEntregaLOGRADOURO.AsString;
          Entrega.nro := cdsEndEntregaNUMERO.AsString;
          Entrega.xBairro := cdsEndEntregaBAIRRO.AsString;
          Entrega.cMun := StrToInt(RemoveChar(sClienteCD_IBGE.AsString));
          Entrega.xMun := cdsEndEntregaCIDADE.AsString;
          Entrega.UF := cdsEndEntregaUF.AsString;
        end;
      end;

    end;
  end;

end;

procedure TForm1.getEmpresa;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    Emit.CNPJCPF           := RemoveChar(sEmpresaCNPJ_CPF.AsString);
    Emit.xNome             := sEmpresaRAZAO.AsString;
    Emit.xFant             := sEmpresaEMPRESA.AsString;
    Emit.EnderEmit.xLgr    := sEmpresaENDERECO.AsString;
    Emit.EnderEmit.nro     := sEmpresaNUMERO.AsString;
    if ((not sEmpresaOUTRAS_INFO.IsNull) or ( sEmpresaOUTRAS_INFO.AsString <> '')) then
      Emit.EnderEmit.xCpl    := sEmpresaLOGRADOURO.AsString;
    Emit.EnderEmit.xBairro := sEmpresaBAIRRO.AsString;
    Emit.EnderEmit.cMun    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    Emit.EnderEmit.xMun    := sEmpresaCIDADE.AsString;
    Emit.EnderEmit.UF      := sEmpresaUF.AsString;
    if (not sEmpresaCEP.IsNull) then
      Emit.EnderEmit.CEP     := StrToInt(RemoveChar(sEmpresaCEP.AsString));
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';
    Emit.EnderEmit.fone    := sEmpresaDDD.AsString + sEmpresaFONE.AsString;
    Emit.IE                := RemoveChar(sEmpresaIE_RG.AsString);
    if ( sEmpresaCRT.AsInteger = 0) Then
      Emit.CRT               := crtSimplesNacional
    else if ( sEmpresaCRT.AsInteger = 1) Then
      Emit.CRT               := crtSimplesExcessoReceita
    else if ( sEmpresaCRT.AsInteger = 2) Then
      Emit.CRT               := crtRegimeNormal;
  end;
end;

procedure TForm1.getItens(contador: integer);
var
  BC, BCST, desc : Variant;
  cst_parte: String;
  inf_add_prd: String;
  nfe_itens_tottrib: String;
begin
  BC := 0;
  BCST := 4;
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    with Det.Add do
    begin
      if (not cdsItensNFPEDIDO.IsNull) then
        Prod.xPed := cdsItensNFPEDIDO.AsString;
      if (not cdsItensNFNITEMPED.IsNull) then
        Prod.nItemPed := IntToStr(cdsItensNFNITEMPED.AsInteger);
      if (sCFOP.Active) then
        sCFOP.Close;
      sCFOP.Params[0].AsString := cdsItensNFCFOP.AsString;
      sCFOP.Params[2].AsString := cdsItensNFCFOP.AsString;
      if (cbTipoNota.ItemIndex = 1) then
        sCFOP.Params[1].AsString := sClienteUF.AsString
      else
        sCFOP.Params[1].AsString := sFornecUF.AsString;
      sCFOP.Open;

      Prod.nItem    := contador;
      if (mascaraProduto <> '') then
        Prod.cProd    := FormatMaskText(mascaraProduto+';0;_', cdsItensNFCODPRO.AsString)
      else
        Prod.cProd    := cdsItensNFCODPRO.AsString;

      Prod.xProd    := LeftStr(cdsItensNFDESCPRODUTO.AsString, 99);
      Prod.CFOP     := cdsItensNFCFOP.AsString;
      Prod.uCom     := sProdutosUNIDADEMEDIDA.AsString;
      Prod.qCom     := cdsItensNFQUANTIDADE.AsFloat;
      Prod.vUnCom   := cdsItensNFVLR_BASE.AsFloat;
      Prod.uTrib    := sProdutosUNIDADEMEDIDA.AsString;
      Prod.qTrib    := cdsItensNFQUANTIDADE.AsFloat;
      Prod.vUnTrib  := cdsItensNFVLR_BASE.AsFloat;

      if((cdsItensNFLOTE.AsString <> '0')and(cdsItensNFLOTE.AsString <> '')) then
      begin
        with prod.rastro.Add do
        begin
          nLote  := cdsItensNFLOTE.AsString ;
          qLote  := cdsItensNFQUANTIDADE.AsFloat;
          dFab   := cdsItensNFDTAFAB.AsDateTime;
          dVal   := cdsItensNFDTAVCTO.AsDateTime;
          cAgreg := cdsItensNFCODPRO.AsString;
        end;
      end;


      // 29/12/2015
      //if (ACBrValidadorValidarGTIN(cdsItensNFCOD_BARRA.AsString) = '') then
      if (EAN13Valido(cdsItensNFCOD_BARRA.AsString)) then
      begin
        Prod.cEAN     := cdsItensNFCOD_BARRA.AsString;
        Prod.cEANTrib := cdsItensNFCOD_BARRA.AsString;
      end else
      begin
        Prod.cEAN     := 'SEM GTIN';
        Prod.cEANTrib := 'SEM GTIN';
      end;

      desc := StrLen(PChar(MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)));
      if ( desc > 0) then
        inf_add_prd := MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)  + cdsItensNFOBS.AsString
      else
        inf_add_prd := inf_add_prd + cdsItensNFOBS.AsString;
      //if ((cdsItensNFVLRTOT_TRIB.AsFloat > 0) and (dm.vTipoFiscal = '9'))  then
      if (cdsItensNFVLRTOT_TRIB.AsFloat > 0)  then
      begin
        pegaTributos(cdsItensNFCODMOVIMENTO.AsInteger, cdsItensNFCODPRODUTO.AsInteger);
        nfe_itens_tottrib := 'Trib aprox R$:' +
          format('%8.2n', [sqlTotal_tributos.Fields[1].AsFloat]) + '-Fed, ' +
          format('%8.2n', [sqlTotal_tributos.Fields[2].AsFloat]) + '-Est e ' +
          format('%8.2n', [sqlTotal_tributos.Fields[3].AsFloat]) + '-Mun ';
        nfe_itens_tottrib := nfe_itens_tottrib + 'Fonte:'+
          sqlTotal_tributos.Fields[7].AsString + '-' +
          sqlTotal_tributos.Fields[8].AsString;//Fonte: IBPT/FECOMERCIO RJ Xe67eQ
        inf_add_prd := inf_add_prd + ' ' + nfe_itens_tottrib;
      end;
      infAdProd := inf_add_prd;
      Prod.NCM      := sProdutosNCM.AsString;
      if (cdsItensNFCEST.AsString <> '') then
        Prod.CEST := cdsItensNFCEST.AsString;
      Prod.vProd    := cdsItensNFVALTOTAL.AsFloat;
      Prod.vFrete   := cdsItensNFFRETE.AsCurrency;

      if (cdsItensNFVALOR_DESCONTO.AsCurrency > 0) then
        Prod.vDesc    := RoundTo(cdsItensNFVALOR_DESCONTO.AsCurrency, -2);

      Prod.vOutro   := cdsItensNFVALOR_OUTROS.AsCurrency;
      Prod.vSeg     := cdsItensNFVALOR_SEGURO.AsCurrency;

      if(sFornec.Active) then
        if(sFornecUF.AsString = 'EX') then
        begin
          if(sAdicao.Active) then
            sAdicao.Close;
          sAdicao.Params[0].AsInteger := cdsItensNFCODDETALHE.AsInteger;
          sAdicao.Open;
          if(sDI.Active) then
           sDI.Close;
          sDi.Params[0].AsInteger := sAdicaoADIC_CODDI.AsInteger;
          sDI.Open;
          with prod.DI.Add do
          begin
            nDi         := sDIDI_NUMDI.AsString;
            dDi         := sDIDI_DATA.AsDateTime;
            xLocDesemb  := sDIDI_LOCALDESEMB.AsString;
            UFDesemb    := sDIDI_UFDESEMB.AsString;
            dDesemb     := sDIDI_DATADESEMB.AsDateTime;
            cExportador := sDIDI_CODEXPORTADOR.AsString;
            with adi.Add do
            begin
              nAdicao     := sAdicaoADIC_NADICAO.AsInteger;
              nSeqAdi     := sAdicaoADIC_NSEQUEN.AsInteger;
              cFabricante := sAdicaoADIC_CODFAB.AsString;
              vDescDI     := sAdicaoADIC_VDESC.AsInteger;
            end;
          end;
        end;

        if (sdsProd_Comb.Active) then
          sdsProd_Comb.Close;
        sdsProd_Comb.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
        sdsProd_Comb.Open;

        if (not sdsProd_Comb.IsEmpty) then
        begin
          with prod.comb do
          begin
            try
              cProdANP := StrToInt(sdsProd_CombCPRODANP.AsString);
            except
              MessageDlg('O Código tem que ser Númerico.', mtWarning, [mbOK], 0);
              exit;
            end;
            //pMixGN := sdsProd_CombPMIXGN.AsFloat;  // removido 27/07/18
            UFcons := ufDest;
           // CODIF := '0';      // removido 30/07/18
            qTemp := cdsItensNFQUANTIDADE.AsFloat;

            // incluido 27/07/18
            Prod.comb.descANP := cdsItensNFOBS.AsString;
              //-- Percentual de GLP --
            pGLP  := cdsItensNFPGLP.AsCurrency; // 60.00
            //-- Percentual de Gás Natural --
            pGNn  := cdsItensNFPGNN.AsCurrency; // 40.00 ;
            vPart := cdsItensNFVPART.AsCurrency; // 10.00 ;
            pGNi  := cdsItensNFPGNI.AsCurrency; // 0.00;
            // incluido 27/07/18

          end;
        end;



      //Prod.genero   := sProdutosGENERO.AsInteger;
      //IMPOSTOS Do Produto

      with Imposto do
      begin
        Imposto.vTotTrib := cdsItensNFVLRTOT_TRIB.AsCurrency;

        Imposto.IPI.cEnq := trim(cdsItensNFCST_IPI_CENQ.AsString);
        with IPI do
        begin
          if (cdsItensNFCSTIPI.AsString = '00') then
            CST := ipi00
          else if (cdsItensNFCSTIPI.AsString = '01') then
            CST := ipi01
          else if (cdsItensNFCSTIPI.AsString = '02') then
            CST := ipi02
          else if (cdsItensNFCSTIPI.AsString = '03') then
            CST := ipi03
          else if (cdsItensNFCSTIPI.AsString = '04') then
            CST :=  ipi04
          else if (cdsItensNFCSTIPI.AsString = '05') then
            CST :=  ipi05
          else if (cdsItensNFCSTIPI.AsString = '49') then
            CST :=  ipi49
          else if (cdsItensNFCSTIPI.AsString = '50') then
            CST := ipi50
          else if (cdsItensNFCSTIPI.AsString = '51') then
            CST := ipi51
          else if (cdsItensNFCSTIPI.AsString = '52') then
            CST := ipi52
          else if (cdsItensNFCSTIPI.AsString = '53') then
            CST := ipi53
          else if (cdsItensNFCSTIPI.AsString = '54') then
            CST := ipi54
          else if (cdsItensNFCSTIPI.AsString = '55') then
            CST := ipi55
          else if (cdsItensNFCSTIPI.AsString = '99') then
            CST := ipi99
          else
            CST := ipi00;

          vBC  := cdsItensNFVLRBC_IPI.AsCurrency;
          pIPI := cdsItensNFpIPI.AsCurrency;
          vIPI := cdsItensNFvIPI.AsCurrency;
        end;
        with ICMS do
        begin
          // Verifica Origem do Produto
          if (sProdutosORIGEM.IsNull) then
            MessageDlg('Origem do Produto não definida', mtError, [mbOK], 0);

          //CSOSN PREENCHIDO APENAS QUANDO EMPRESA OPTANTE PELO SIMPLES.
          //101 - Tributada pelo Simples Nacional com permissão de crédito - Classificam-se neste código as operações que permitem a indicação da alíquota do ICMS devido no Simples Nacional e o valor do crédito correspondente.
          //102 - Tributada pelo Simples Nacional sem permissão de crédito - Classificam-se neste código as operações que não permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e não estejam abrangidas nas hipóteses dos códigos 103, 203, 300, 400, 500 e 900.
          //103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contemplados com isenção concedida para faixa de receita bruta nos termos da Lei Complementar nº 123, de 2006.
          //201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária - Classificam-se neste código as operações que permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e com cobrança do ICMS por substituição tributária.
          //202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária - Classificam-se neste código as operações que não permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e não estejam abrangidas nas hipóteses dos códigos 103, 203, 300, 400, 500 e 900, e com cobrança do ICMS por substituição tributária.
          //203 - Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contemplados com isenção para faixa de receita bruta nos termos da Lei Complementar nº 123, de 2006, e com cobrança do ICMS por substituição tributária.
          //300 - Imune - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contempladas com imunidade do ICMS.
          //400 - Não tributada pelo Simples Nacional - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional não sujeitas à tributação pelo ICMS dentro do Simples Nacional.
          //500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação - Classificam-se neste código as operações sujeitas exclusivamente ao regime de substituição tributária na condição de substituído tributário ou no caso de antecipações.
          //900 - Outros - Classificam-se neste código as demais operações que não se enquadrem nos códigos 101, 102, 103, 201, 202, 203, 300, 400 e 500.
          if( sEmpresaCRT.AsInteger = 0) then
          begin
            cst_parte := '00';
            if (( cdsItensNFCSOSN.AsString = null) or ( cdsItensNFCSOSN.AsString = '')) then
            begin
              CSOSN := csosnVazio;
            end
            else if ( cdsItensNFCSOSN.AsString = '101') then
            begin
              CSOSN := csosn101;
              if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
              begin
                if (cdsItensNFICMS.AsVariant > 0 ) then
                begin
                  pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                  vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
                end;
              end;
            end
            else if ( cdsItensNFCSOSN.AsString = '102') then
              CSOSN := csosn102
            else if ( cdsItensNFCSOSN.AsString = '103') then
              CSOSN := csosn103
            else if ( cdsItensNFCSOSN.AsString = '201') then
            begin
              CSOSN := csosn201;
              vBCFCPST := cdsItensNFV_B_FCPST.Value;
              pFCPST   := cdsItensNFP_FCPST.Value;
              vFCPST   := cdsItensNFV_FCPST.Value;
              if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
              begin
                if (cdsItensNFICMS.AsVariant > 0 ) then
                begin
                  pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                  vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
                end;
              end;
            end
            else if ( cdsItensNFCSOSN.AsString = '202') then
            begin
              CSOSN := csosn202;
              vBCFCPST := cdsItensNFV_B_FCPST.Value;
              pFCPST   := cdsItensNFP_FCPST.Value;
              vFCPST   := cdsItensNFV_FCPST.Value;
            end
            else if ( cdsItensNFCSOSN.AsString = '203') then
              CSOSN := csosn203
            else if ( cdsItensNFCSOSN.AsString = '300') then
              CSOSN := csosn300
            else if ( cdsItensNFCSOSN.AsString = '400') then
              CSOSN := csosn400
            else if ( cdsItensNFCSOSN.AsString = '500') then
            begin
              CSOSN       := csosn500;
              pST         := cdsItensNFICMS_PST.Value;
              vBCFCPSTRet := cdsItensNFV_B_FCPSTRET.Value;
              pFCPSTRet   := cdsItensNFP_FCPSTRET.Value;
              vFCPSTRet   := cdsItensNFV_FCPSTRET.Value;

            end
            else if ( cdsItensNFCSOSN.AsString = '900') then
            begin
              CSOSN := csosn900;
              vBCFCPST := cdsItensNFV_B_FCPST.Value;
              pFCPST   := cdsItensNFP_FCPST.Value;
              vFCPST   := cdsItensNFV_FCPST.Value;
            end;
          end;

          // CST's
          //10 TRIBUTADA
          //10 TRIBUTADA E COM COBRANÇA DO ICMS POR SUBS.TRIBUTÁRIA
          //20 COM REDUÇÃO DE BASE DE CÁLCULO
          //30 ISENTA OU NÃO TRIBUTADA E COM COBRANÇA DE ICMS POR SUBS.TRIBUTÁRIA
          //40 - ISENTA
          //41 NÃO TRIBUTADA
          //50 SUSPENSÃO
          //51 DIFERIMENTO A EXIGÊNCIA DO PREENCHIMENTO DAS INFORMAÇÕES DO ICMS DIFERIDO FICA a CRITÉRIO DE CADA UF
          //60 ICMS COBRADO ANTERIORMENTE POR SUBS.TRIBUTÁRIA
          //70 COM REDUÇÃO DA BASE DE CALCULO E COBRANÇA DO ICMS POR SUBS.TRIB. ICMS POR SUBS.TRIB.
          //90 OUTROS

          if ((Trim(cdsItensNFCST.AsString) = '') and (Trim(cdsItensNFCSOSN.AsString) = '')) then
          begin
            if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
              MessageDlg('CST do ICMS em branco no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
            Exit;
          end
          else
          begin
            cst_parte := copy(cdsItensNFCST.AsString,2,2);
            if (cst_parte = '00') then
            begin
              CST  := cst00;
              pFCP := cdsItensNFP_FCP.Value;
              vFCP := cdsItensNFV_FCP.Value;
            end;
            if (cst_parte = '10') then
            begin
              CST      := cst10;
              vBCFCPST := cdsItensNFV_B_FCPST.Value;
              pFCPST   := cdsItensNFP_FCPST.Value;
              vFCPST   := cdsItensNFV_FCPST.Value;
            end;
            if (cst_parte = '20') then
            begin
              CST    := cst20;
              vBCFCP := cdsItensNFV_B_FCP.Value;
              pFCP   := cdsItensNFP_FCP.Value;
              vFCP   := cdsItensNFV_FCP.Value;
            end;
            if (cst_parte = '30') then
            begin
              CST := cst30;
              vBCFCPST := cdsItensNFV_B_FCPST.Value;
              pFCPST   := cdsItensNFP_FCPST.Value;
              vFCPST   := cdsItensNFV_FCPST.Value;
            end;
            if (cst_parte = '40') then
              CST := cst40;
            if (cst_parte = '41') then
            begin
              CST := cst41;
              vBCSTRet    := cdsItensNFVBCSTRET.Value;
              vICMSSTRet  := cdsItensNFVICMSSTRET.Value;
              vBCSTDest   := cdsItensNFVBCSTDEST.Value;
              vICMSSTDest := cdsItensNFVICMSSTDEST.Value;
            end;
            if (cst_parte = '50') then
              CST := cst50;
            if (cst_parte = '51') then
            begin
              CST := cst51;
              vBCFCP := cdsItensNFV_B_FCP.Value;
              pFCP   := cdsItensNFP_FCP.Value;
              vFCP   := cdsItensNFV_FCP.Value;
            end;
            if (cst_parte = '60') then
            begin
              CST       := cst60;
              pST       := cdsItensNFICMS_PST.Value;
              vBCFCPST  := cdsItensNFV_B_FCPST .Value;
              pFCPSTRet := cdsItensNFP_FCPSTRET.Value;
              vFCPSTRet := cdsItensNFV_FCPSTRET.Value;
              vBCSTRet    := cdsItensNFVBCSTRET.Value;
              vICMSSTRet  := cdsItensNFVICMSSTRET.Value;
              vBCSTDest   := cdsItensNFVBCSTDEST.Value;
              vICMSSTDest := cdsItensNFVICMSSTDEST.Value;
            end;
            if (cst_parte = '70') then
            begin
              CST := cst70;
              vBCFCPST := cdsItensNFV_B_FCPST.Value;
              pFCPST   := cdsItensNFP_FCPST.Value;
              vFCPST   := cdsItensNFV_FCPST.Value;
            end;
            if (cst_parte = '90') then
            begin
              CST := cst90;
              vBCFCPST := cdsItensNFV_B_FCPST.Value;
              pFCPST   := cdsItensNFP_FCPST.Value;
              vFCPST   := cdsItensNFV_FCPST.Value;
              vBCFCP := cdsItensNFV_B_FCP.Value;
              pFCP   := cdsItensNFP_FCP.Value;
              vFCP   := cdsItensNFV_FCP.Value;
            end;
            { Substitui pela rotina acima 05/01/2016
            if ((cdsItensNFCST.AsString = '000') or (cdsItensNFCST.AsString = '100') or (cdsItensNFCST.AsString = '200') or (cdsItensNFCST.AsString = '00')) then
              CST := cst00
            else if ((cdsItensNFCST.AsString = '010') or (cdsItensNFCST.AsString = '110') or (cdsItensNFCST.AsString = '210') or (cdsItensNFCST.AsString = '10')) then
              CST := cst10
            else if ((cdsItensNFCST.AsString = '020') or (cdsItensNFCST.AsString = '120') or (cdsItensNFCST.AsString = '220') or (cdsItensNFCST.AsString = '20')) then
              CST := cst20
            else if ((cdsItensNFCST.AsString = '030') or (cdsItensNFCST.AsString = '130') or (cdsItensNFCST.AsString = '230') or (cdsItensNFCST.AsString = '30')) then
              CST := cst30
            else if ((cdsItensNFCST.AsString = '040') or (cdsItensNFCST.AsString = '140') or (cdsItensNFCST.AsString = '240') or (cdsItensNFCST.AsString = '40')) then
              CST :=  cst40
            else if ((cdsItensNFCST.AsString = '041') or (cdsItensNFCST.AsString = '141') or (cdsItensNFCST.AsString = '241') or (cdsItensNFCST.AsString = '41')) then
              CST :=  cst41
            else if ((cdsItensNFCST.AsString = '050') or (cdsItensNFCST.AsString = '150') or (cdsItensNFCST.AsString = '250') or (cdsItensNFCST.AsString = '50')) then
              CST :=  cst50
            else if ((cdsItensNFCST.AsString = '051') or (cdsItensNFCST.AsString = '151') or (cdsItensNFCST.AsString = '251') or (cdsItensNFCST.AsString = '51')) then
              CST := cst51
            else if ((cdsItensNFCST.AsString = '060') or (cdsItensNFCST.AsString = '160') or (cdsItensNFCST.AsString = '260') or (cdsItensNFCST.AsString = '60')) then
              CST := cst60
            else if ((cdsItensNFCST.AsString = '070') or (cdsItensNFCST.AsString = '170') or (cdsItensNFCST.AsString = '270') or (cdsItensNFCST.AsString = '70')) then
              CST := cst70
            else if ((cdsItensNFCST.AsString = '090') or (cdsItensNFCST.AsString = '190') or (cdsItensNFCST.AsString = '290') or (cdsItensNFCST.AsString = '90')) then
              CST := cst90
            else
              CST := cst00;
            }
          end;

          orig :=     sProdutosORIGEM.AsVariant;                       //ORIGEM DO PRODUTO
          modBC :=    BC;                                              //MODO DE BASE DE CALCULO (0) POR %
          //Não carregar ICMS para Simples Nacional
          if not ((ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional) and (cdsItensNFCSOSN.AsString <> '900')) then
          begin
            vBC := cdsItensNFVLR_BASEICMS.AsVariant;                //VALOR DA BASE DE CALCULO
            pICMS := cdsItensNFICMS.AsVariant;                     //ALIQUOTA DO ICMS
            vICMS := cdsItensNFVALOR_ICMS.AsVariant;                  //VALOR DO ICMS
          end;
          modBCST :=  BCST;                                         //MODO DE BASE DE CALCULO SUBST. TRIBUTÁRIA(4) POR %
          vBCST := 0;
          if (not cdsItensNFICMS_SUBSTD.IsNull) then
           begin
            vBCST :=    cdsItensNFICMS_SUBSTD.AsVariant;                 //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
          end;
          if (not cdsItensNFICMS_SUBSTD.IsNull) then
           begin
            vBCST :=    cdsItensNFICMS_SUBSTD.AsVariant;                 //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
          end;


          // ve se e tributado por NCM
          if (sdsCfopNCM.Active) then
            sdsCfopNCM.Close;
          sdsCfopNCM.Params[0].AsString := sProdutosNCM.AsString;
          if (cbTipoNota.ItemIndex = 0) then
            sdsCfopNCM.Params[1].AsString := sFornecUF.AsString
          else
            sdsCfopNCM.Params[1].AsString := sClienteUF.AsString;
          sdsCfopNCM.Params[2].AsString := cdsNFCFOP.AsString;
          if (cbTipoNota.ItemIndex = 0) then
            sdsCfopNCM.Params[3].AsString := sFornecCODFISCAL.AsString
          else
            sdsCfopNCM.Params[3].AsString := sClienteCODFISCAL.AsString;
          sdsCfopNCM.Open;

          if (not sdsCfopNCM.IsEmpty) then
          begin
            if (sdsCfopNCMICMS_SUBST.IsNull) then
              pMVAST := 0
            else
              pMVAST := sdsCfopNCMICMS_SUBST.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
            if (sdsCfopNCMICMS_SUBST_IC.IsNull) then
              pRedBCST := 0
            else
              pRedBCST := sdsCfopNCMICMS_SUBST_IC.AsVariant;                 //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
            if (sdsCfopNCMICMS_SUBST_IND.IsNull) then
              pICMSST := 0
            else
              pICMSST :=  sdsCfopNCMICMS_SUBST_IND.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
          end
          else begin
            // ve se e tributado no produto
            if (sdsCfopProd.Active) then
              sdsCfopProd.Close;
            sdsCfopProd.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
            if (cbTipoNota.ItemIndex = 0) then
              sdsCfopProd.Params[1].AsString := sFornecUF.AsString
            else
              sdsCfopProd.Params[1].AsString := sClienteUF.AsString;
            sdsCfopProd.Params[2].AsString := cdsNFCFOP.AsString;
            sdsCfopProd.Open;

            if (not sdsCfopProd.IsEmpty) then
            begin
              if (sdsCfopProdICMS_SUBST.IsNull) then
                pMVAST := 0
              else
                pMVAST := sdsCfopProdICMS_SUBST.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
              if (sdsCfopProdICMS_SUBST_IC.IsNull) then
                pRedBCST := 0
              else
                pRedBCST := sdsCfopProdICMS_SUBST_IC.AsVariant;                 //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
              if (sdsCfopProdICMS_SUBST_IND.IsNull) then
                pICMSST := 0
              else
                pICMSST :=  sdsCfopProdICMS_SUBST_IND.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
            end  // busca tributado cfop_uf
            else begin
              if (sCFOPICMS_SUBSTRIB.IsNull) then
                pMVAST := 0
              else
                pMVAST :=   sCFOPICMS_SUBSTRIB.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
              if (sCFOPICMS_SUBSTRIB_IC.IsNull) then
                pRedBCST := 0
              else
                pRedBCST := sCFOPICMS_SUBSTRIB_IC.AsVariant;                 //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
              if (sCFOPICMS_SUBSTRIB_IND.IsNull) then
                pICMSST := 0
              else
                pICMSST :=  sCFOPICMS_SUBSTRIB_IND.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
            end;
          end;
          if (sCFOPREDUCAO.IsNull) then
            pRedBC := 0
          else
            pRedBC :=   sCFOPREDUCAO.AsVariant;                          //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO
          if (cdsItensNFICMS_SUBST.isnull) then
            vICMSST := 0
          else
            vICMSST :=  cdsItensNFICMS_SUBST.AsVariant;                  //VALOR DO ICMS DA SUBST. TRIBUTÁRIA

        end;

        //CST PIS E COFINS
        //01	Operação Tributável com Alíquota Básica
        //02	Operação Tributável com Alíquota Diferenciada
        //03	Operação Tributável com Alíquota por Unidade de Medida de Produto
        //04	Operação Tributável Monofásica - Revenda a Alíquota Zero
        //05	Operação Tributável por Substituição Tributária
        //06	Operação Tributável a Alíquota Zero
        //07	Operação Isenta da Contribuição
        //08	Operação sem Incidência da Contribuição
        //09	Operação com Suspensão da Contribuição
        //49	Outras Operações de Saída
        //50	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
        //51	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno
        //52	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
        //53	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
        //54	Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
        //55	Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
        //56	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
        //60	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
        //61	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
        //62	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
        //63	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
        //64	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
        //65	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
        //66	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
        //67	Crédito Presumido - Outras Operações
        //70	Operação de Aquisição sem Direito a Crédito
        //71	Operação de Aquisição com Isenção
        //72	Operação de Aquisição com Suspensão
        //73	Operação de Aquisição a Alíquota Zero
        //74	Operação de Aquisição sem Incidência da Contribuição
        //75	Operação de Aquisição por Substituição Tributária
        //98	Outras Operações de Entrada
        //99	Outras Operações

        with PIS do
        begin
          if (Trim(cdsItensNFCSTPIS.AsString) = '') then
          begin
            if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
              MessageDlg('CST do PIS em branco  no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
            Exit;
          end
          else
          begin
            if (cdsItensNFCSTPIS.AsString = '01') then
              CST   := pis01
            else if (cdsItensNFCSTPIS.AsString = '02') then
              CST   := pis02
            else if (cdsItensNFCSTPIS.AsString = '03') then
              CST   := pis03
            else if (cdsItensNFCSTPIS.AsString = '04') then
              CST   := pis04
            else if (cdsItensNFCSTPIS.AsString = '06') then
              CST   := pis06
            else if (cdsItensNFCSTPIS.AsString = '07') then
              CST   := pis07
            else if (cdsItensNFCSTPIS.AsString = '08') then
              CST   := pis08
            else if (cdsItensNFCSTPIS.AsString = '09') then
              CST   := pis09
            else if (cdsItensNFCSTPIS.AsString = '99') then
              CST   := pis99;
          end;

          if (cdsItensNFPPIS.AsFloat > 0) then
            //vBC   := (cdsItensNFVALOR_PIS.AsVariant *100 ) / cdsItensNFPPIS.AsVariant //-cdsItensNFVALTOTAL.AsVariant
            vBC := cdsItensNFVLRBC_PIS.AsCurrency
          else
          vBC   := 0;
          vPIS  := cdsItensNFVALOR_PIS.AsVariant;
          if(cdsItensNFPPIS.AsVariant = null)then
            pPIS  := 0
          else
          pPIS  := cdsItensNFPPIS.AsVariant;

        end;
        with COFINS do
        begin
          if (Trim(cdsItensNFCSTCOFINS.AsString) = '') then
          begin
            if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
              MessageDlg('CST do COFINS em branco no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
            Exit;
          end
          else
          begin
            if (cdsItensNFCSTCOFINS.AsString = '01') then
              CST   := cof01
            else if (cdsItensNFCSTCOFINS.AsString = '02') then
              CST   := cof02
            else if (cdsItensNFCSTCOFINS.AsString = '03') then
              CST   := cof03
            else if (cdsItensNFCSTCOFINS.AsString = '04') then
              CST   := cof04
            else if (cdsItensNFCSTCOFINS.AsString = '06') then
              CST   := cof06
            else if (cdsItensNFCSTCOFINS.AsString = '07') then
              CST   := cof07
            else if (cdsItensNFCSTCOFINS.AsString = '08') then
              CST   := cof08
            else if (cdsItensNFCSTCOFINS.AsString = '09') then
              CST   := cof09
            else if (cdsItensNFCSTCOFINS.AsString = '99') then
              CST   := cof99;
          end;

         if ( cdsItensNFPCOFINS.AsFloat > 0) then
           //vBC   := (cdsItensNFVALOR_COFINS.AsVariant * 100) / cdsItensNFPCOFINS.AsVariant //cdsItensNFVALTOTAL.AsVariant;
           vBC := cdsItensNFVLRBC_COFINS.AsCurrency
         else
           vBC   := 0;
           if(cdsItensNFPCOFINS.AsVariant = null) then
             pCOFINS  := 0
           else
           pCOFINS  := cdsItensNFPCOFINS.AsVariant;
           vCOFINS  := cdsItensNFVALOR_COFINS.AsVariant;
        end;
        if (cdsItensNFII.asFloat > 0) then
        begin
          with II do
          begin
            vBc := cdsItensNFBCII.AsVariant;
            vII := cdsItensNFII.AsVariant;
          end;
        end;

        // 04/01/2015
        {if ((ACBrNFe1.NotasFiscais.Add.NFe.ide.modelo = 55) and
          (ACBrNFe1.NotasFiscais.Add.NFe.Ide.idDest = doInterestadual) and
          (ACBrNFe1.NotasFiscais.Add.NFe.Ide.indFinal = cfConsumidorFinal) and
          (ACBrNFe1.NotasFiscais.Add.NFe.Dest.indIEDest = inNaoContribuinte) and
          (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add.Imposto.ICMS.CST <> cstPart10) and
          (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add.Imposto.ICMS.CST <> cstPart90)) then}

        if ((cdsNFNFE_MODELO.AsString = 'moNFe') and
          (cdsNFNFE_DESTOPERACAO.AsString = 'doInterestadual') and
          (cdsNFNFE_INDFINAL.AsString = 'cfConsumidorFinal') and
          (cdsNFIND_IEDEST.AsString = 'inNaoContribuinte') and
          (cst_parte <> '10') and (cst_parte <> '90')) then
         begin
           with ICMSUFDest do
           begin
             vBCUFDest := cdsItensNFVBCUFDEST.AsCurrency;
             pFCPUFDest := cdsItensNFPFCPUFDEST.AsCurrency;
             pICMSUFDest := cdsItensNFPICMSUFDEST.AsCurrency;
             pICMSInter := cdsItensNFPICMSINTER.AsCurrency;
             pICMSInterPart := cdsItensNFPICMSINTERPART.AsCurrency;
             vFCPUFDest := cdsItensNFVFCPUFDEST.AsCurrency;
             tot1 := tot1 + cdsItensNFVFCPUFDEST.AsCurrency;
             vICMSUFDest := cdsItensNFVICMSUFDEST.AsCurrency;
             tot2 := tot2 + cdsItensNFVICMSUFDEST.AsCurrency;
             vICMSUFRemet := cdsItensNFVICMSUFREMET.AsCurrency;
             tot3 := tot3 + cdsItensNFVICMSUFREMET.AsCurrency;
             vBCFCPUFDest := cdsItensNFVBFCPUFDEST.AsCurrency;

           end;
         end;

      end; //IMPOSTOS Do Produto
    end;
  end;

end;

procedure TForm1.getPagamento;
var
 c : integer;
 vlr_total: double;
 num_fat: Integer;
begin
  num_fat := 1;
  //if(cdsFaturaFORMAPAGAMENTO.AsString = 'R' )then
  //  exit;
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    if(sCFOPNAOENVFATURA.AsString = 'S') then
    begin
     {
    if(cdsFatura.Active) then
      cdsFatura.Close;
    cdsFatura.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
    cdsFatura.Open;

    if(cdsFaturaFORMAPAGAMENTO.AsString = 'R' )then  // ?
    begin}
       with pag.Add do
       begin
         tPag := fpSemPagamento;        //11
       end;
    //end;
    end
    else begin
   /// if (cbTipoNota.ItemIndex = 1) then
   /// begin
      if (cdsNFVALOR_PAGAR.AsFloat = cdsNFENTRADA.AsFloat) then
        Ide.indPag    := ipVista
      else
        Ide.indPag    := ipPrazo;
      //pesquisa pagamento
      if ( (cdsNFFATURA.IsNull) or (cdsNFFATURA.AsString = '') ) then
      begin
        if(cdsFatura.Active) then
          cdsFatura.Close;
        cdsFatura.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
        cdsFatura.Params[1].AsInteger := cbTipoNota.ItemIndex;
        cdsFatura.Open;
        if (sNFC.Active) then
          sNFC.Close;
        sNFC.Params[0].AsInteger := cdsNFNUMNF.AsInteger;
        sNFC.Open;
        //Carrega dados do Pagamento
        cdsFatura.first;
        c := 0;
        vlr_total := 0;

        // 03/07/18
        if ((cdsFaturaFORMAPAGAMENTO.AsString <> '') and
          (cdsFaturaFORMAPAGAMENTO.AsString <> 'R')) then   // 13/06/2018
        begin
          while not cdsFatura.eof do
          begin
            vlr_total := vlr_total + cdsFaturaVALOR.AsCurrency;
            cdsFatura.next;
          end;
          cdsFatura.First;
          while not cdsFatura.eof do
          begin
            if ((cdsFaturaVALOR.AsFloat > 0) and
              (cdsFaturaDATAFATURA.AsDateTime <> cdsNFDTAEMISSAO.AsDateTime)) then
            begin
              Cobr.Dup.Add;
              if (num_fat < 10) then
                Cobr.Dup.Items[c].nDup  := '00'+IntToStr(num_fat)
              else
                Cobr.Dup.Items[c].nDup  := '0' + IntToStr(num_fat);// cdsFaturaNUMEROFATURA.ASSTRING;
              Cobr.Dup.Items[c].dVenc := cdsFaturaDATAFATURA.AsDateTime;
              Cobr.Dup.Items[c].vDup  := cdsFaturaVALOR.AsCurrency;
              num_fat := num_fat + 1;
              Inc ( c );
            end;
            cdsFatura.next;
          end;
        end;

        if (cdsFaturaVALOR.AsFloat > 0) then
        begin
          cobr.Fat.nFat  := cdsNFNOTASERIE.ASSTRING;
          cobr.Fat.vOrig := vlr_total;

          cobr.Fat.vDesc := RoundTo(0.00, -2);

          cobr.Fat.vLiq  := vlr_total;
        end;

        if (c = 0) then
          Ide.indPag    := ipOutras;

        end;
   ///end
   /// else
   ///   Ide.indPag    := ipOutras;

    if(cdsFaturaFORMAPAGAMENTO.AsString = '' )then
    begin
      ShowMessage('Falta a Forma de Pagamento!');
      Exit
    end;

    with pag.Add do
    begin
      if(cdsFaturaFORMAPAGAMENTO.AsString = '1' )then
      begin
        tPag := fpDinheiro;            // 0
      end;
      if((cdsFaturaFORMAPAGAMENTO.AsString = '2' )or(cdsFaturaFORMAPAGAMENTO.AsString = '3' )or(cdsFaturaFORMAPAGAMENTO.AsString = 'F' )) then
      begin
        tPag := fpCheque;              // 1
      end;
      if((cdsFaturaFORMAPAGAMENTO.AsString = '6' )or(cdsFaturaFORMAPAGAMENTO.AsString = 'I' )or
         (cdsFaturaFORMAPAGAMENTO.AsString = 'K' )or(cdsFaturaFORMAPAGAMENTO.AsString = 'M' ))
      then
      begin
        tPag := fpCartaoCredito;       // 2
      end;
      if((cdsFaturaFORMAPAGAMENTO.AsString = '7' )or(cdsFaturaFORMAPAGAMENTO.AsString = 'J' )or(cdsFaturaFORMAPAGAMENTO.AsString = 'L' )) then
      begin
        tPag := fpCartaoDebito;        // 3
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = 'N' )then  // ?
      begin
        tPag := fpCreditoLoja;         // 4
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = 'O' )then  // ?
      begin
        tPag := fpValeAlimentacao;     // 5
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = 'P' )then  // ?
      begin
        tPag := fpValeRefeicao;        // 6
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = 'G' )then  // ?
      begin
        tPag := fpValePresente;        // 7
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = 'Q' )then  // ?
      begin
        tPag := fpValeCombustivel;     // 8
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = '5' )then
      begin
        tPag := fpDuplicataMercantil;  // 9
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = '4' )then
      begin
        tPag := fpBoletoBancario;      //10
      end;
      if(cdsFaturaFORMAPAGAMENTO.AsString = 'R' )then  // ?
      begin
        tPag := fpSemPagamento;        //11
      end;

      if((cdsFaturaFORMAPAGAMENTO.AsString = '8') or
         (cdsFaturaFORMAPAGAMENTO.AsString = '9') or
         (cdsFaturaFORMAPAGAMENTO.AsString = 'A') or
         (cdsFaturaFORMAPAGAMENTO.AsString = 'B') or
         (cdsFaturaFORMAPAGAMENTO.AsString = 'C') or
         (cdsFaturaFORMAPAGAMENTO.AsString = 'D') or
         (cdsFaturaFORMAPAGAMENTO.AsString = 'E') or
         (cdsFaturaFORMAPAGAMENTO.AsString = 'H')
      )then
      begin
        tPag := fpOutro;               //12
      end;
      if (cdsFaturaFORMAPAGAMENTO.AsString <> 'R' )then
        vPag := vlr_total; //cdsFaturaVALOR.AsCurrency;

    end;

  end;
  end;
end;

procedure TForm1.getTransportadora;
var
  tpfrete: integer;
  tfrete: Variant;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    if ((cdsNFFRETE.IsNull) or (Trim(cdsNFFRETE.AsString) = ''))then
      tpfrete := 9
    else
      tpfrete := StrToInt(cdsNFFRETE.AsString);
    tfrete := IntToStr(tpfrete);
    //Carrega dados da transportadora
    with Transp do
    begin
      with transporta do
      begin
        case tfrete of
          0 : modFrete := mfContaEmitente;
          1 : modFrete := mfContaDestinatario;
          2 : modFrete := mfContaTerceiros;
          3 : modFrete := mfProprioRemetente;
          4 : modFrete := mfProprioDestinatario;
          9 : modFrete := mfSemFrete;
        end;
        CNPJCPF := RemoveChar(cdsNFCNPJ_CPF.AsString);
        xNome   := trim(cdsNFNOMETRANSP.AsString);
        if (cdsNFNOMETRANSP.AsString <> '') then
        begin
          if (cdsTransp.Active) then   // manoel dm.cdsTransp.Active
            cdsTransp.Close;
          cdsTransp.Params[0].AsInteger := cdsNFCODTRANSP.AsInteger;
          cdsTransp.Open;
          if (not cdsTransp.IsEmpty) then
            xNome := cdsTranspNOMETRANSP.AsString
          else begin
            listaTransp.Open;
            listaTransp.Locate('FANTASIA',cdsNFTRANSP2.AsString,[loCaseInsensitive]);
            xNome := listaTranspNOMETRANSP.AsString;
            listaTransp.Close;
          end;
        end;
        IE := RemoveChar(cdsNFINSCRICAOESTADUAL.AsString);
        xEnder := cdsNFEND_TRANSP.AsString;
        xMun := cdsNFCIDADE_TRANSP.AsString;
        UF :=  cdsNFUF_TRANSP.AsString;
        //Carrega dados da Carga para Transporte
        with Vol.Add do
        begin
          if (cdsNFQUANTIDADE.AsVariant > 0) then
            qVol := cdsNFQUANTIDADE.AsVariant
          else
            qVol := 0;

          if ( (cdsNFESPECIE.AsString <> '') and (cdsNFESPECIE.AsString <> Null) ) then
            esp := cdsNFESPECIE.AsString
          else
            esp := '';

          if ( (cdsNFMARCA.AsString <> '') and (cdsNFMARCA.AsString <>  null) ) then
             marca := cdsNFMARCA.AsString
          else
            marca := '';

          if ( (cdsNFNUMERO.AsString <> '') and ( cdsNFNUMERO.AsString <> null) ) then
            nVol :=cdsNFNUMERO.AsString
          else
            nVol := '';

          if (cdsNFPESOLIQUIDO.AsCurrency > 0) then
            pesoL :=cdsNFPESOLIQUIDO.AsCurrency
          else
            pesoL := 0;

          if (cdsNFPESOBRUTO.AsCurrency > 0) then
            pesoB :=cdsNFPESOBRUTO.AsCurrency
          else
            pesoB := 0;
        end;

        if ( (trim(StringReplace(cdsNFPLACATRANSP.AsString, '-', '', [rfReplaceAll])) <> '') and (trim(RemoveChar(cdsNFPLACATRANSP.AsString)) <> null) ) then
         if ( (cdsNFUF_VEICULO_TRANSP.AsString <> '') and (cdsNFUF_VEICULO_TRANSP.AsString <> null) ) then
         begin
           veicTransp.placa := trim(StringReplace(cdsNFPLACATRANSP.AsString, '-', '', [rfReplaceAll]));
           veicTransp.UF := cdsNFUF_VEICULO_TRANSP.AsString;
         end;
      end;
    end;
  end;

end;

procedure TForm1.imprimiCCe(protocolo: string; dthenvio: TDateTime;
  condicao: string);
begin
   ACBrNFe1.ImprimirEvento;
end;

procedure TForm1.JvDBGrid1CellClick(Column: TColumn);
begin
  cdsNF.Edit;
  if (cdsNFSELECIONOU.AsString = 'S') then
  begin
    cdsNFSELECIONOU.AsString := '';
  end
  else begin
    cdsNFSELECIONOU.AsString := 'S';
    edDadosXml.Text := cdsnfNFE_FINNFE.AsString + '-' + cdsnfNFE_MODELO.AsString + '-' + cdsnfNFE_VERSAO.AsString + '-' +
    cdsnfNFE_DESTOPERACAO.AsString + '-' + cdsnfNFE_FORMATODANFE.AsString + '-' + cdsnfNFE_TIPOEMISSAO.AsString + '-' +
    cdsnfNFE_INDFINAL.AsString + '-' + cdsnfNFE_INDPRES.AsString + '-' + cdsNFIND_IEDEST.AsString;

    if (sEmpresa.Active) then
      sEmpresa.Close;
    sEmpresa.Params[0].AsInteger := cdsNFCCUSTO.AsInteger;
    sEmpresa.Open;
    Form1.Caption := sEmpresaEMPRESA.AsString;
    //ComboBox1.Items.IndexOf(sEmpresaCENTROCUSTO.AsString);
  end;
end;

procedure TForm1.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = cdsNFSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TForm1.JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.Field = cdsNFSELECIONOU then
  begin
     JvDBGrid1.Canvas.FillRect(Rect);
     ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
     if cdsNFSELECIONOU.AsString = 'S' then
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
     else
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
  end;
end;

procedure TForm1.JvDBGrid2CellClick(Column: TColumn);
begin
     cdsCCE.Edit;
     if cdsCCESELECIONOU.AsString = 'S' then
       cdsCCESELECIONOU.AsString := ''
     else
       cdsCCESELECIONOU.AsString := 'S';
end;

procedure TForm1.JvDBGrid2ColEnter(Sender: TObject);
begin
   if JvDBGrid2.SelectedField = cdsCCESELECIONOU then
     JvDBGrid2.Options := JvDBGrid2.Options - [dgEditing]
   else
      JvDBGrid2.Options := JvDBGrid2.Options + [dgEditing];
end;

procedure TForm1.JvDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // Selecionou
  if Column.Field = cdsCCESELECIONOU then
  begin
     JvDBGrid2.Canvas.FillRect(Rect);
     ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 1);
     if cdsCCESELECIONOU.AsString = 'S' then
       ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 2)
     else
       ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 0);
  end;
end;

procedure TForm1.nfe_carregalogo;
var tem_logo: String;
begin
  tem_logo := '';
  if (FilesExists(diretorio + '\logo_nfe.jpg')) then
    tem_logo := 'S';
  if (FilesExists(diretorio + '\logo.bmp')) then
    tem_logo := 'S';

  if (tem_logo = '') then
  begin
    if (FilesExists(diretorio + '\' +  sEmpresaDIVERSOS2.AsString)) then
    begin
      ACBrNFeDANFCeFortes1.Logo := diretorio + '\' +  sEmpresaDIVERSOS2.AsString;
      ACBrNFeDANFeRL1.Logo := diretorio + '\' + sEmpresaDIVERSOS2.AsString;
    end;
  end;  
end;

procedure TForm1.pegaItens(tpNf: integer);
var strItens: String;
begin
  //Carrega os itens da NF
  if (cbTipoNota.ItemIndex = 0) then
  begin
  strItens := 'select md.CODPRODUTO, md.coddetalhe, md.pIPI, md.vIPI, UDF_ROUNDDEC(md.QUANTIDADE, 4) QUANTIDADE ' +
      ' , md.CFOP, md.PRECO, md.DESCPRODUTO, md.OBS, '+
      'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
      'ELSE pr.CODPRO END as codpro, md.VLR_BASEICMS, md.CSTIPI, md.CSTPIS, md.CSTCOFINS, md.PPIS, md.PCOFINS, ' +
      'pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.CSOSN, md.ICMS, md.pIPI, md.vIPI, md.VLR_BASEICMS, ' +
      ' UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, UDF_ROUNDDEC(md.VLR_BASE, ' + intTostr(danfeDec) + ') as VLR_BASE, ' +
      'UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, md.ICMS_SUBSTD, UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, (md.VLR_BASE * md.QUANTIDADE) as VALTOTAL, ' +
      'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
      ' ,md.NITEMPED, md.PEDIDO, MD.VLRBC_IPI, MD.VLRBC_PIS, md.VLRBC_COFINS, UDF_ROUNDDEC(md.VLRTOT_TRIB, 2) as VLRTOT_TRIB ' +
      ' , pr.COD_BARRA ' +
      ' , md.VBCUFDEST' +
      ' , md.PFCPUFDEST' +
      ' , md.PICMSUFDEST' +
      ' , md.PICMSINTER' +
      ' , md.PICMSINTERPART' +
      ' , md.VFCPUFDEST' +
      ' , md.VICMSUFDEST' +
      ' , md.VICMSUFREMET ' +
      ' , md.CST_IPI_CENQ ' +
      ' , md.CEST ' +
      ' , cp.CODMOVIMENTO ' +
      ' , md.PERCIPIDEVOL ' +
      ' , md.VALORIPIDEVOL ' +
      ' , md.ICMS_PST ' +
      ' , md.V_B_FCP ' +
      ' , md.V_FCP ' +
      ' , md.P_FCP ' +
      ' , md.V_B_FCPST ' +
      ' , md.V_FCPST ' +
      ' , md.P_FCPST ' +
      ' , md.V_B_FCPSTRET ' +
      ' , md.V_FCPSTRET ' +
      ' , md.P_FCPSTRET ' +
      ' , md.VBCSTRET ' +
      ' , md.VICMSSTRET ' +
      ' , md.VBCSTDEST ' +
      ' , md.VICMSSTDEST ' +
      ' , md.VBFCPUFDEST ' +
      ' , pr.pGLP ' +
      ' , pr.pGNn ' +
      ' , pr.vPart ' +
      ' , pr.pGNi ' +
      ' , LOTE ' +
      ' , DTAFAB ' +
      ' , DTAVCTO ' +

      ' from compra cp  inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = cp.CODMOVIMENTO ' +
      'inner join NOTAFISCAL nf on nf.CODVENDA = cp.CODCOMPRA ' +
      'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
      'where cp.CODCOMPRA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 20) or (nf.NATUREZA = 21))' ;
  end
  else
  begin
  strItens :=  'select md.CODPRODUTO, md.coddetalhe, UDF_ROUNDDEC(md.QUANTIDADE, 4) QUANTIDADE, ' +
      ' md.PRECO, md.CFOP, md.DESCPRODUTO, ' +
      'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, ' +
      ' (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
      'ELSE pr.CODPRO END as codpro, pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.ICMS, md.pIPI, md.OBS, ' +
      'md.vIPI, md.CSOSN, md.VLR_BASEICMS, UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, md.PPIS, md.PCOFINS, ' +
      'UDF_ROUNDDEC(md.VLR_BASE, ' + IntToStr(danfeDec) + ') as VLR_BASE, UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, md.CSTIPI, ' +
      'md.CSTPIS, md.CSTCOFINS, ' +
      'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS, ' +
      '  UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, ' +
      'md.ICMS_SUBSTD, UDF_ROUNDDEC((md.VLR_BASE * md.QUANTIDADE), 2) as VALTOTAL, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
      ' ,md.NITEMPED, md.PEDIDO, MD.VLRBC_IPI, MD.VLRBC_PIS, md.VLRBC_COFINS, UDF_ROUNDDEC(md.VLRTOT_TRIB, 2) as VLRTOT_TRIB' +
      ' ,pr.COD_BARRA' +
      ' , md.VBCUFDEST' +
      ' , md.PFCPUFDEST' +
      ' , md.PICMSUFDEST' +
      ' , md.PICMSINTER' +
      ' , md.PICMSINTERPART' +
      ' , md.VFCPUFDEST' +
      ' , md.VICMSUFDEST' +
      ' , md.VICMSUFREMET' +
      ' , md.CST_IPI_CENQ ' +
      ' , md.CEST ' +
      ' , vd.CODMOVIMENTO ' +
      ' , md.PERCIPIDEVOL ' +
      ' , md.VALORIPIDEVOL ' +
      ' , md.ICMS_PST ' +
      ' , md.V_B_FCP ' +
      ' , md.V_FCP ' +
      ' , md.P_FCP ' +
      ' , md.V_B_FCPST ' +
      ' , md.V_FCPST ' +
      ' , md.P_FCPST ' +
      ' , md.V_B_FCPSTRET ' +
      ' , md.V_FCPSTRET ' +
      ' , md.P_FCPSTRET ' +
      ' , md.VBCSTRET ' +
      ' , md.VICMSSTRET ' +
      ' , md.VBCSTDEST ' +
      ' , md.VICMSSTDEST ' +
      ' , md.VBFCPUFDEST ' +
      ' , pr.pGLP ' +
      ' , pr.pGNn ' +
      ' , pr.vPart ' +
      ' , pr.pGNi ' +
      ' , LOTE ' +
      ' , DTAFAB ' +
      ' , DTAVCTO ' +

      ' from VENDA vd inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = vd.CODMOVIMENTO ' +
      'inner join NOTAFISCAL nf on nf.CODVENDA = vd.CODVENDA ' +
      'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
      'where vd.CODVENDA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 12) or (nf.NATUREZA = 15) or (nf.NATUREZA = 16))' ;
  end;

  if (cdsItensNF.Active) then
    cdsItensNF.Close;

  cdsItensNF.CommandText := strItens;
  cdsItensNF.Open;

end;

procedure TForm1.pegaTributos(codMov, codProd: Integer);
var pegaTribSql : String;
begin
  pegaTribSql := 'SELECT CODPRODUTO ' +
    ' , TRIB_FED ' +
    ' , TRIB_EST ' +
    ' , TRIB_MUN ' +
    ' , TOT_TRIB_FED ' +
    ' , TOT_TRIB_EST ' +
    ' , TOT_TRIB_MUN ' +
    ' , FONTE ' +
    ' , CHAVE ' +
    ' FROM TOTAL_TRIBUTOS(' +
    IntToStr(codMov) + ')';
  if (codProd > 0) then
  begin
    pegaTribSql := pegaTribSql +
      ' WHERE CODPRODUTO = ' + IntToStr(codProd);
  end;
  if (codProd = 0) then
  begin
    pegaTribSql := 'SELECT ' +
      ' SUM(TRIB_FED) ' +
      ' , SUM(TRIB_EST) ' +
      ' , SUM(TRIB_MUN) ' +
      ' FROM TOTAL_TRIBUTOS(' +
      IntToStr(codMov) + ')';
  end;
  if (sqlTotal_tributos.Active) then
    sqlTotal_tributos.Close;
  sqlTotal_tributos.SQL.Clear;
  sqlTotal_tributos.SQL.Add(pegaTribSql);
  sqlTotal_tributos.Open;

end;

function TForm1.validaNumNfeScan: Boolean;
begin
  //
end;

procedure TForm1.EnviaEmail;
var
 IDNFE, RAZAO, CNPJ, TRANSP, Protocolo, Assunto, caminho : String;
 numnf, serie : Integer;
 CC, Texto: Tstrings;
 begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
    if (cdsNFSELECIONOU.AsString = 'S') then
    begin
      if (cdsNFXMLNFE.AsString <> '') then
      begin
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromString(cdsNFXMLNFE.AsString);
      end
      else begin
         OpenDialog1.Title := 'Selecione a NFE';
         OpenDialog1.DefaultExt:= '*-nfe.XML';
         OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
         OpenDialog1.InitialDir := Edit1.Text;
         if OpenDialog1.Execute then
         begin
           ACBrNFe1.NotasFiscais.Clear;
           caminho := OpenDialog1.FileName;
           ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
         end;
      end;
      if (numnf <> StrToInt(cdsNFNOTASERIE.AsString)) then
        numNF :=  StrToInt(cdsNFNOTASERIE.AsString);
      if not(sCliente.Active) then
      begin
        sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
        sCliente.Open;
      end;
    end;
    cdsNF.Next;
  end;
  cdsNF.EnableControls;

  CC := TstringList.Create;
  //ABRE A NOTA
  IDNFE  := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
  numnf  := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF; //StrToInt(cdsNFNOTASERIE.AsString);
  RAZAO  := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
  CNPJ   := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
  serie  := ACBrNFe1.NotasFiscais.Items[0].NFe.ide.serie;
  TRANSP := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;


  Protocolo := ACBrNFe1.WebServices.Retorno.Protocolo;
  Texto := TStringList.Create;
  Texto.Add('Empresa emissora da NF-e: ' + sEmpresaRAZAO.AsString);
  Texto.Add('CNPJ/CPF da Empresa Emissora: ' + sEmpresaCNPJ_CPF.AsString);
  Texto.Add('Empresa destacada na NF-e: ' + RAZAO);
  Texto.Add('CNPJ/CPF da Empresa/Cliente destacado: ' + CNPJ);
  Texto.Add('Número da NF: ' + InttoStr(numnf) + ' Série ' + IntToStr(serie));
  Texto.Add('Chave de identificação: ' + IDNFE);
  Texto.Add('');
  Texto.Add('');
  Texto.Add('Consulte no Portal Nacional da NFe: https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa .');
  Texto.Add('Ou consulte pela página do SEFAZ do seu estado.');

  CC.Add(sEmpresaE_MAIL.AsString); //especifique um email válido
  Assunto := 'Nota Fiscal Eletrônica ' + InttoStr(numnf);

  Try
    begin
      try
        // 29/12/2015
        ACBrMail1.Port := sEmpresaPORTA.AsString;
        ACBrMail1.Host := sEmpresaSMTP.AsString;
        ACBrMail1.Username := sEmpresaE_MAIL.AsString;
        ACBrMail1.Password := sEmpresaSENHA.AsString;
        ACBrMail1.From := sEmpresaE_MAIL.AsString;
        ACBrMail1.FromName := sEmpresaEMPRESA.AsString;
        ACBrMail1.AddAddress(sClienteE_MAIL.AsString);

        if (email_tls = 'S') then
          ACBrMail1.SetTLS := True;
        if (email_ssl = 'S') then
          ACBrMail1.SetSSL := True;


        //sPara, sAssunto: String; sMensagem: TStrings;
        //       EnviaPDF: Boolean; sCC: TStrings; Anexos: TStrings)
        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(sClienteE_MAIL.AsString
                                                 , Assunto
                                                 , Texto
                                                 , True //Enviar PDF junto
                                                 , CC //com copia
                                                 , nil // Lista de anexos - TStrings
                                                 );

        ShowMessage('Email enviado com sucesso!');
        lblMsgNfe.Caption := '';
      except
         on E: Exception do
          begin
            raise Exception.Create('Erro ao enviar email'+sLineBreak+E.Message);
          end;
      end;
    end;
  finally
    CC.Clear;
    CC.Free;
    Texto.Free;
    //fNFeletronica.ACBrNFe1.NotasFiscais.Clear;
  end;


  end;

procedure TForm1.GravarConfiguracao;
var
 IniFile    : String;
 Ini        : TIniFile;
 StreamMemo : TMemoryStream;
begin
 IniFile := ChangeFileExt( Application.ExeName, '.ini');

  Ini := TIniFile.Create( IniFile );
  try

    Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text);
    Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text);
    Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text);

    Ini.WriteInteger( 'Certificado','SSLLib' , cbSSLLib.ItemIndex) ;
    Ini.WriteInteger( 'Certificado','CryptLib' , cbCryptLib.ItemIndex) ;
    Ini.WriteInteger( 'Certificado','HttpLib' , cbHttpLib.ItemIndex) ;
    Ini.WriteInteger( 'Certificado','XmlSignLib' , cbXmlSignLib.ItemIndex) ;

    edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\') ;

    with ACBrNFe1.Configuracoes.Geral do
    begin
     SSLLib                := TSSLLib(cbSSLLib.ItemIndex);
     SSLCryptLib           := TSSLCryptLib(cbCryptLib.ItemIndex);
     SSLHttpLib            := TSSLHttpLib(cbHttpLib.ItemIndex);
     SSLXmlSignLib         := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
     AtualizaSSLLibsCombo;
    end;
       // manoel
    // cbSSLType.ItemIndex    := Ini.ReadInteger('WebService','SSLType' , 0) ;

    StreamMemo := TMemoryStream.Create;

    StreamMemo.Seek(0,soFromBeginning);

    StreamMemo.Free;
  finally
    Ini.Free;
  end;

end;

end.
