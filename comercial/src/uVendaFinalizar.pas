unit uVendaFinalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, Grids, DBGrids, ExtCtrls, DBCtrls, Mask, StdCtrls,
  Buttons, DB, DBClient, Provider, SqlExpr, Menus, XPMenu, MMJPanel,
  DBLocal, DBLocalS, rpcompobase, rpvclreport, EExtenso, rplabelitem,
  VDOBasePrinter, VDODmPrinter, Printers, Modulo, JvBaseEdits, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, fClassCitrus, uUtils,
  UCHist_Base, UCHistDataset, DBXpress, uVendaCls;

    //, ComCtrls, ImgList, Mask, Modulo

type
  TfVendaFinalizar = class(TfPai)
    btnNotaFiscal: TBitBtn;
    btnImprimir: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    dbeSerie: TDBEdit;
    btnSerie: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn7: TBitBtn;
    DBGrid1: TDBGrid;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    MMJPanel3: TMMJPanel;
    Label6: TLabel;
    Label5: TLabel;
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
    DataSource1: TDataSource;
    dbeUsuario: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Edit4: TEdit;
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
    dsp_cr: TDataSetProvider;
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
    VCLReport1: TVCLReport;
    VCLReport2: TVCLReport;
    VCLReport3: TVCLReport;
    EvExtenso1: TEvExtenso;
    sqs_tit: TSQLDataSet;
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
    sds_vendaNOMECLIENTE: TStringField;
    sds_vendaNOMEUSUARIO: TStringField;
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
    dsp_venda: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODMOVIMENTO: TIntegerField;
    cdsCODCLIENTE: TIntegerField;
    cdsDATAVENDA: TDateField;
    cdsDATAVENCIMENTO: TDateField;
    cdsNUMEROBORDERO: TIntegerField;
    cdsBANCO: TSmallintField;
    cdsCODVENDEDOR: TSmallintField;
    cdsCODUSUARIO: TSmallintField;
    cdsDATASISTEMA: TDateField;
    cdsVALOR: TFloatField;
    cdsNOTAFISCAL: TIntegerField;
    cdsSERIE: TStringField;
    cdsNOMECLIENTE: TStringField;
    cdsNOMEUSUARIO: TStringField;
    cdsBANCO_1: TStringField;
    cdsCODVENDA: TIntegerField;
    cdsDESCONTO: TFloatField;
    cdsCODCCUSTO: TSmallintField;
    cdsN_PARCELA: TSmallintField;
    cdsN_DOCUMENTO: TStringField;
    cdsCAIXA: TSmallintField;
    cdsMULTA_JUROS: TFloatField;
    cdsAPAGAR: TFloatField;
    cdsVALOR_PAGAR: TFloatField;
    cdsENTRADA: TFloatField;
    cdsN_BOLETO: TStringField;
    cdsFORMARECEBIMENTO: TStringField;
    cdsOPERACAO: TStringField;
    cdsSTATUS: TSmallintField;
    cdsSTATUS1: TStringField;
    cdsCONTROLE: TStringField;
    cdsdiferenca: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    SQLDataSet1DP: TIntegerField;
    scdsCr_procDP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    cbConta: TComboBox;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    VDODmPrinter1: TVDODmPrinter;
    Label24: TLabel;
    ComboBox1: TComboBox;
    SQLDataSet1CODCLIENTE: TIntegerField;
    scdsCr_procCODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    scdsCr_procTIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    scdsCr_procSITUACAO: TStringField;
    BitBtn1: TBitBtn;
    sdsAgenda: TSQLDataSet;
    dspAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    cdsAgendaCOD_AGENDAMENTO: TIntegerField;
    cdsAgendaCODCLIENTE: TIntegerField;
    cdsAgendaASSUNTO: TStringField;
    cdsAgendaHORA: TTimeField;
    cdsAgendaDATA: TDateField;
    cdsAgendaFONE: TStringField;
    cdsAgendaSTATUS: TStringField;
    sdsAgendaCOD_AGENDAMENTO: TIntegerField;
    sdsAgendaCODCLIENTE: TIntegerField;
    sdsAgendaASSUNTO: TStringField;
    sdsAgendaHORA: TTimeField;
    sdsAgendaDATA: TDateField;
    sdsAgendaFONE: TStringField;
    sdsAgendaSTATUS: TStringField;
    sdsVisita: TSQLDataSet;
    sdsVisitaCODVISITA: TIntegerField;
    sdsVisitaCODCLIENTE: TIntegerField;
    sdsVisitaVISITA: TStringField;
    sdsVisitaDATAULTIMA: TDateField;
    sdsVisitaDATAPROXIMA: TDateField;
    sdsVisitaDIAS: TIntegerField;
    dspVisita: TDataSetProvider;
    cdsVisita: TClientDataSet;
    cdsVisitaCODVISITA: TIntegerField;
    cdsVisitaCODCLIENTE: TIntegerField;
    cdsVisitaVISITA: TStringField;
    cdsVisitaDATAULTIMA: TDateField;
    cdsVisitaDATAPROXIMA: TDateField;
    cdsVisitaDIAS: TIntegerField;
    Vcont: TSQLDataSet;
    VcontCOUNT: TIntegerField;
    sdsAgendaCODVENDA: TIntegerField;
    cdsAgendaCODVENDA: TIntegerField;
    sdsagexcluir: TSQLDataSet;
    cdsAgexcluir: TClientDataSet;
    dspAgexcluir: TDataSetProvider;
    sdsVisitaExcluir: TSQLDataSet;
    dspVisitaExcluir: TDataSetProvider;
    cdsVexcluir: TClientDataSet;
    cdsAgexcluirCOD_AGENDAMENTO: TIntegerField;
    cdsAgexcluirCODCLIENTE: TIntegerField;
    cdsAgexcluirASSUNTO: TStringField;
    cdsAgexcluirHORA: TTimeField;
    cdsAgexcluirDATA: TDateField;
    cdsAgexcluirFONE: TStringField;
    cdsAgexcluirSTATUS: TStringField;
    cdsAgexcluirCODVENDA: TIntegerField;
    sdsagexcluirCOD_AGENDAMENTO: TIntegerField;
    sdsagexcluirCODCLIENTE: TIntegerField;
    sdsagexcluirASSUNTO: TStringField;
    sdsagexcluirHORA: TTimeField;
    sdsagexcluirDATA: TDateField;
    sdsagexcluirFONE: TStringField;
    sdsagexcluirSTATUS: TStringField;
    sdsagexcluirCODVENDA: TIntegerField;
    sdsexcluir: TSQLDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField2: TStringField;
    TimeField1: TTimeField;
    DateField3: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField6: TIntegerField;
    dspexcluir: TDataSetProvider;
    cdsexcluir: TClientDataSet;
    cdsexcluirCOD_AGENDAMENTO: TIntegerField;
    cdsexcluirCODCLIENTE: TIntegerField;
    cdsexcluirASSUNTO: TStringField;
    cdsexcluirHORA: TTimeField;
    cdsexcluirDATA: TDateField;
    cdsexcluirFONE: TStringField;
    cdsexcluirSTATUS: TStringField;
    cdsexcluirCODVENDA: TIntegerField;
    cdsVexcluirCODVISITA: TIntegerField;
    cdsVexcluirCODCLIENTE: TIntegerField;
    cdsVexcluirVISITA: TStringField;
    cdsVexcluirDATAULTIMA: TDateField;
    cdsVexcluirDATAPROXIMA: TDateField;
    cdsVexcluirDIAS: TIntegerField;
    sdsVisitaExcluirCODVISITA: TIntegerField;
    sdsVisitaExcluirCODCLIENTE: TIntegerField;
    sdsVisitaExcluirVISITA: TStringField;
    sdsVisitaExcluirDATAULTIMA: TDateField;
    sdsVisitaExcluirDATAPROXIMA: TDateField;
    sdsVisitaExcluirDIAS: TIntegerField;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_DESP: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    cdsVALOR_ICMS: TFloatField;
    cdsVALOR_FRETE: TFloatField;
    cdsVALOR_SEGURO: TFloatField;
    cdsOUTRAS_DESP: TFloatField;
    cdsVALOR_IPI: TFloatField;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    edCodigoColhedor: TEdit;
    cbNomeColhedor: TJvDBSearchComboBox;
    dtPagColhedor: TJvDatePickerEdit;
    edVlrColhedor: TJvCalcEdit;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    edCodFretista: TEdit;
    cbNomeFretista: TJvDBSearchComboBox;
    dtDataPagFrete: TJvDatePickerEdit;
    edVlrFrete: TJvCalcEdit;
    JvCalcEdit1: TJvCalcEdit;
    edPrecoColhedor: TJvCalcEdit;
    Label30: TLabel;
    Label36: TLabel;

    UCHist_DataSet1: TUCHist_DataSet;
    UCControlHistoricoFinalizarVenda: TUCControlHistorico;

    Label37: TLabel;
    Label38: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    JvCalcEdit3: TJvCalcEdit;
    CheckBox1: TCheckBox;
    SpeedButton2: TBitBtn;
    SpeedButton3: TBitBtn;
    btnUsuarioProcura: TBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    EvExtenso2: TEvExtenso;
    SQLDataSet1FORMARECEBIMENTO: TStringField;
    scdsCr_procFORMARECEBIMENTO: TStringField;
    sds_vendaCOD_TRANPORTADORA: TIntegerField;
    cdsCOD_TRANPORTADORA: TIntegerField;
    sds_vendaPRAZO: TStringField;
    cdsPRAZO: TStringField;
    cbPrazo: TJvComboBox;
    dbDtaVencimento: TDBEdit;
    CheckBox2: TCheckBox;
    sqlBuscaNota: TSQLQuery;
    scds_forn_proc: TSQLClientDataSet;
    scds_forn_procCODFORNECEDOR: TIntegerField;
    scds_forn_procNOMEFORNECEDOR: TStringField;
    scds_forn_procRAZAOSOCIAL: TStringField;
    scds_forn_procPRAZOPAGAMENTO: TSmallintField;
    sFornecedor: TSQLDataSet;
    sFornecedorCODFORNECEDOR: TIntegerField;
    sFornecedorNOMEFORNECEDOR: TStringField;
    sFornecedorRAZAOSOCIAL: TStringField;
    sFornecedorCONTATO: TStringField;
    sFornecedorTIPOFIRMA: TSmallintField;
    sFornecedorCPF: TStringField;
    sFornecedorCNPJ: TStringField;
    sFornecedorINSCESTADUAL: TStringField;
    sFornecedorRG: TStringField;
    sFornecedorSEGMENTO: TSmallintField;
    sFornecedorREGIAO: TSmallintField;
    sFornecedorLIMITECREDITO: TFloatField;
    sFornecedorDATACADASTRO: TDateField;
    sFornecedorCODUSUARIO: TIntegerField;
    sFornecedorSTATUS: TSmallintField;
    sFornecedorHOMEPAGE: TStringField;
    sFornecedorPRAZOPAGAMENTO: TSmallintField;
    sFornecedorPRAZOENTREGA: TSmallintField;
    sFornecedorCONTA_FORNECEDOR: TStringField;
    sForn_NC: TSQLDataSet;
    sForn_NCCODFORNECEDOR: TIntegerField;
    sForn_NCNOMEFORNECEDOR: TStringField;
    sForn_NCRAZAOSOCIAL: TStringField;
    sForn_NCCONTATO: TStringField;
    sForn_NCTIPOFIRMA: TSmallintField;
    sForn_NCCPF: TStringField;
    sForn_NCCNPJ: TStringField;
    sForn_NCINSCESTADUAL: TStringField;
    sForn_NCRG: TStringField;
    sForn_NCSEGMENTO: TSmallintField;
    sForn_NCREGIAO: TSmallintField;
    sForn_NCLIMITECREDITO: TFloatField;
    sForn_NCDATACADASTRO: TDateField;
    sForn_NCCODUSUARIO: TIntegerField;
    sForn_NCSTATUS: TSmallintField;
    sForn_NCHOMEPAGE: TStringField;
    sForn_NCPRAZOPAGAMENTO: TSmallintField;
    sForn_NCPRAZOENTREGA: TSmallintField;
    sForn_NCCONTA_FORNECEDOR: TStringField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    DBEdit4: TDBEdit;
    Label39: TLabel;
    sds_vendaCODPEDIDO: TIntegerField;
    cdsCODPEDIDO: TIntegerField;
    pm2: TPopupMenu;
    ImprimirPedido1: TMenuItem;
    ImprimirOrdemdeServio1: TMenuItem;
    sds_vendaOBS: TStringField;
    cdsOBS: TStringField;
    dlgSave1: TSaveDialog;
    DBEdit21: TDBEdit;
    Label40: TLabel;
    sds_vendaPORCENTAGENDESC: TFloatField;
    sds_vendaCODORIGEM: TIntegerField;
    sds_vendaTROCO: TFloatField;
    sds_vendaCOMISSAO: TFloatField;
    sds_vendaCAIXINHA: TFloatField;
    sds_vendaRATEIO: TFloatField;
    sds_vendaVALOR_ST: TFloatField;
    cdsPORCENTAGENDESC: TFloatField;
    cdsCODORIGEM: TIntegerField;
    cdsTROCO: TFloatField;
    cdsCOMISSAO: TFloatField;
    cdsCAIXINHA: TFloatField;
    cdsRATEIO: TFloatField;
    cdsVALOR_ST: TFloatField;
    ImprimirCupom1: TMenuItem;
    btnCupom: TBitBtn;
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsCalcFields(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnUsuarioProcuraClick(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeUsuarioExit(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cbNomeColhedorChange(Sender: TObject);
    procedure cbNomeFretistaChange(Sender: TObject);
    procedure dtPagColhedorChange(Sender: TObject);
    procedure edPrecoColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure cbNomeColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure dtPagColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure JvCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edVlrColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure cbNomeFretistaKeyPress(Sender: TObject; var Key: Char);
    procedure dtDataPagFreteKeyPress(Sender: TObject; var Key: Char);
    procedure edVlrFreteKeyPress(Sender: TObject; var Key: Char);
    procedure JvCalcEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DtSrcStateChange(Sender: TObject);
    procedure cbPrazoChange(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure JvCalcEdit1Exit(Sender: TObject; var Key: Char);
    procedure edPrecoColhedorExit(Sender: TObject; var Key: Char);
    procedure JvCalcEdit2Exit(Sender: TObject; var Key: Char);
    procedure JvCalcEdit3Exit(Sender: TObject; var Key: Char);
    procedure edCodigoColhedorExit(Sender: TObject);
    procedure edCodFretistaExit(Sender: TObject);
    procedure JvCalcEdit3Change(Sender: TObject);
    procedure JvCalcEdit2Change(Sender: TObject);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure ImprimirPedido1Click(Sender: TObject);
    procedure ImprimirOrdemdeServio1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure ImprimirCupom1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCupomClick(Sender: TObject);
  private
    TD: TTransactionDesc;
    usaMateriaPrima: String;
    { Private declarations }
    procedure excluinf;
    procedure notaFiscal;
    procedure baixaestoque(Tipo: string);
    procedure agendar;
    procedure agendarexcluir;
    procedure imprimecupom;
    function RemoveAcento(Str: string): string;
    procedure estoqueEstorna;
    procedure baixaEntrada;
  public
    vrr, nparc : double;
    grava: TCompras;
    contaDespesa: string;
    contaDespesaFrete, contaDespesaPiscina ,portaimpr,tipoimpressao : string;
    excluiuNF : Boolean;
    { Public declarations }
  end;

function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';

var
  fVendaFinalizar: TfVendaFinalizar;
  valor: double;
  terminal, data_movimento, varcancela : string;
  codigo_cliente, codigo_moviemento : integer;
  diasAumenta : integer;
  DtaTemp : TDateTime;
  { Variaveis para impressão de Cupom}
  buffer, cmd: String;
  comunica: String;
  retorno,envia, porta, comando, fecha, modo: Integer;
  negrito, italico, sublinhado, expandido: Integer;
  PGAltura, PGLargura : Integer;
  ThreadStatus : TThreadLeStatus;

implementation

uses UDm, uVendas, uComercial, uImpr_Boleto, uCheques_bol, uNotafiscal,
  uProcurar, ufCrAltera, uTerminal, uITENS_NF, uSelecionaVisitas,
  uDmCitrus, sCtrlResize, uNotaf, UDMNF, uAtsAdmin, UCBase, uEstoque,
  uMovimento, U_Boletos, uCarne, uReceberCls, uTerminal_Delivery;

{$R *.dfm}

//retorna o ultimo dia o mes, de uma data fornecida
function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
{  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;}
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt + diasAumenta);
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp;
  DtaTemp := Result;
end;

procedure TfVendaFinalizar.cdsBeforePost(DataSet: TDataSet);
begin
  inherited;
    if cdsSTATUS1.AsString = '0' then
      cdsSTATUS.AsInteger := 0;
    if cdsSTATUS1.AsString = '1' then
      cdsSTATUS.AsInteger := 1;
    if cdsSTATUS1.AsString = '2' then
      cdsSTATUS.AsInteger := 2;
end;

procedure TfVendaFinalizar.cdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsdiferenca.AsFloat := cdsENTRADA.AsFloat - cdsAPAGAR.AsFloat;
end;

procedure TfVendaFinalizar.cdsNewRecord(DataSet: TDataSet);
var aliqsuf : Double;
    suframa : Boolean;
begin
  inherited;
  if terminal = '' then
  begin
    cdsCODMOVIMENTO.AsInteger := fVendas.cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsCODCLIENTE.AsInteger := fVendas.cds_MovimentoCODCLIENTE.AsInteger;
    cdsNOMECLIENTE.AsString := fVendas.cds_MovimentoNOMECLIENTE.AsString;
    cdsCODVENDEDOR.AsInteger := fVendas.cds_MovimentoCODVENDEDOR.AsInteger;
    cdsNOMEUSUARIO.AsString := fVendas.cds_MovimentoNOMEUSUARIO.AsString;
    if (cbPrazo.Visible = False) then
      cdsDATAVENDA.AsDateTime := fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime
    else
      cdsDATAVENDA.AsDateTime := Now;
    cdsCODCCUSTO.AsInteger := fVendas.cds_MovimentoCODALMOXARIFADO.AsInteger;
    cdsCODUSUARIO.AsInteger := usulog;
    cdsDATASISTEMA.AsDateTime := Now;
    cdsDESCONTO.AsFloat := 0;
    cdsMULTA_JUROS.AsFloat := 0;
    cdsENTRADA.AsFloat := 0;
    cdsVALOR_PAGAR.AsFloat := 0;
    cdsAPAGAR.AsFloat := 0;
    cdsN_PARCELA.AsInteger := StrToInt(FloatToStr(nparc));
    cdsBANCO.AsInteger := 0;
    if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(fVendas.dbeCliente.Text);
    dm.scds_cliente_proc.Open;
    cdsDATAVENCIMENTO.AsDateTime := cdsDATAVENDA.AsDateTime  + dm.scds_cliente_procPRAZORECEBIMENTO.AsFloat;
    if (Length(dm.scds_cliente_procSUFRAMA.AsString) = 9) then
      suframa := True
    else
      suframa := False;
    dm.scds_cliente_proc.Close;
    cdsSTATUS.AsInteger:=0;
    if (fVendas.cds_MovimentoFORMA_PAG.AsString <> '') then
      cbPrazo.Text := fVendas.cds_MovimentoFORMA_PAG.AsString;
    if (not dm.cdsPrazo.Active) then
      dm.cdsPrazo.Open;
    if (dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
      cdsN_PARCELA.asInteger := StrToInt(FloatToStr(dm.cdsPrazoValor.asFloat));
    cdsCOD_TRANPORTADORA.AsInteger := fVendas.cds_MovimentoCODTRANSP.AsInteger;
    if (sqs_tit.Active) then
      sqs_tit.Close;

    //CARREGA DESCONTO CLIENTE COM SUFRAMA
    if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SUFRAMA';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
      aliqsuf := 0
    else
      if (suframa) then
        aliqsuf := StrToFloat(dm.cds_parametroD1.AsString)
      else
        aliqsuf := 0;

    if (dm.moduloUsado <> 'CITRUS') then
    begin
      if (sqs_tit.Active) then
      sqs_tit.Close;

      sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * COALESCE(VLR_BASE,0))' +
        ' + COALESCE(VIPI,0) + COALESCE(ICMS_SUBST,0)) ' +
        ' ,SUM(COALESCE(VIPI,0)), SUM(COALESCE(VALOR_ICMS,0)), SUM(COALESCE(ICMS_SUBST,0)) '+
        ' FROM MOVIMENTODETALHE' +
                           ' WHERE CODMOVIMENTO = ' +
                           IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.asInteger);
    end
    else
    begin
      if (sqs_tit.Active) then
      sqs_tit.Close;
      sqs_tit.CommandText := 'SELECT SUM((((QTDE_ALT  - ICMS) / 40.8) * PRECO) + ' +
        ' (VIPI + ICMS_SUBST)) ' +
        ' ,SUM(VIPI), SUM(VALOR_ICMS), SUM(ICMS_SUBST) '+
        '  FROM MOVIMENTODETALHE' +
        ' WHERE CODMOVIMENTO = ' + IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.asInteger);
    end;
    if terminal = '0' then
    begin
      cdsCODMOVIMENTO.AsInteger := fTerminal.cds_MovimentoCODMOVIMENTO.AsInteger;
      cdsCODCLIENTE.AsInteger := fTerminal.cds_MovimentoCODCLIENTE.AsInteger;
      cdsNOMECLIENTE.AsString := fTerminal.cds_MovimentoNOMECLIENTE.AsString;
      cdsCODVENDEDOR.AsInteger := fTerminal.cds_MovimentoCODVENDEDOR.AsInteger;
      cdsNOMEUSUARIO.AsString := fTerminal.cds_MovimentoNOMEUSUARIO.AsString;
      cdsDATAVENDA.AsDateTime := fTerminal.cds_MovimentoDATAMOVIMENTO.AsDateTime;
      cdsCODCCUSTO.AsInteger := fTerminal.cds_MovimentoCODALMOXARIFADO.AsInteger;
      cdsCODUSUARIO.AsInteger := usulog;
      cdsDATASISTEMA.AsDateTime := Now;
      cdsMULTA_JUROS.AsFloat := 0;
      cdsENTRADA.AsFloat := 0;
      cdsVALOR_PAGAR.AsFloat := 0;
      cdsAPAGAR.AsFloat := 0;
      cdsN_PARCELA.AsInteger := 1;
      cdsDESCONTO.AsFloat := (cdsVALOR.AsFloat * aliqsuf)/100;
      cdsBANCO.AsInteger := 0;
      if dm.scds_cliente_proc.Active then
        dm.scds_cliente_proc.Close;
      dm.scds_cliente_proc.Params[0].Clear;
      dm.scds_cliente_proc.Params[1].Clear;
      dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(fVendas.dbeCliente.Text);
      dm.scds_cliente_proc.Open;
      cdsDATAVENCIMENTO.AsDateTime := cdsDATAVENDA.AsDateTime + dm.scds_cliente_procPRAZORECEBIMENTO.AsFloat;
      dm.scds_cliente_proc.Close;
      cdsSTATUS.AsInteger:=0;
      sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * VLR_BASE) FROM MOVIMENTODETALHE' +
                             ' WHERE CODMOVIMENTO = ' +
                             IntToStr(fTerminal.cds_MovimentoCODMOVIMENTO.asInteger);
    end;
  end;
  sqs_tit.Open;
  cdsVALOR.AsCurrency      := FloatToCurr(sqs_tit.Fields[0].AsFloat);
  cdsVALOR_ICMS.AsCurrency := FloatToCurr(sqs_tit.Fields[2].AsFloat);
  cdsVALOR_IPI.AsCurrency  := FloatToCurr(sqs_tit.Fields[1].AsFloat);
  cdsVALOR_ST.AsCurrency   := FloatToCurr(sqs_tit.Fields[3].AsFloat);

  cdsVALOR_PAGAR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);
  vrr := FloatToCurr(sqs_tit.Fields[0].AsFloat);
  sqs_tit.Close;
  if terminal <> '0' then
  begin
    sqs_tit.CommandText := 'SELECT SUM(QUANTIDADE * VLR_BASE) FROM MOVIMENTODETALHE' +
                             ' WHERE CODMOVIMENTO = ' +
                             IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.asInteger);
    sqs_tit.Open;
    cdsDESCONTO.AsFloat := (cdsVALOR.AsFloat * aliqsuf)/100;
    cdsVALOR_PAGAR.AsCurrency := cdsVALOR.AsCurrency;
    sqs_tit.Close;
  end;
end;

procedure TfVendaFinalizar.cdsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfVendaFinalizar.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  cdsVALOR.AsFloat := vrr +
    cdsVALOR_FRETE.AsFloat +
    cdsVALOR_SEGURO.AsFloat +
    cdsOUTRAS_DESP.AsFloat +
    cdsVALOR_IPI.AsFloat;
  cdsAPAGAR.AsFloat := cdsVALOR.AsFloat -
    cdsENTRADA.AsFloat + cdsMULTA_JUROS.AsFloat -
    cdsDESCONTO.AsFloat;
  cdsVALOR_PAGAR.AsFloat := cdsVALOR.AsFloat - cdsDESCONTO.AsFloat;
end;

procedure TfVendaFinalizar.DBEdit11Exit(Sender: TObject);
begin
  inherited;
 if cdsENTRADA.AsFloat > 0 then
  cdsdiferenca.AsFloat := cdsVALOR_PAGAR.AsFloat - cdsENTRADA.AsFloat;
end;

procedure TfVendaFinalizar.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  fCrAltera := TfCrAltera.Create(Application);
  try
    fCrAltera.ntitulo := scdsCr_procTITULO.AsString;
    fCrAltera.codcliente := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.demissao := scdsCr_procEMISSAO.AsDateTime;


    if (fCrAltera.cds.Active) then
      fCrAltera.cds.Close;
    fCrAltera.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds.Open;

    if (fCrAltera.cds1.Active) then
      fCrAltera.cds1.Close;
    fCrAltera.cds1.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds1.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds1.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds1.Open;

    fCrAltera.Label1.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.Label2.Caption := scdsCr_procTITULO.AsString;    
    fCrAltera.ShowModal;
    scdsCr_proc.Close;
    scdsCr_proc.Open;
  finally
    fCrAltera.Free;
  end;

end;

procedure TfVendaFinalizar.SpeedButton3Click(Sender: TObject);
var str:string;
begin
  inherited;

  if (fVendas.cds_MovimentoCODNATUREZA.AsInteger = 14) then //Cancelado
  begin
    if  MessageDlg('NF CANCELADA, confirma mudança do Status : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      scdsCr_proc.ApplyUpdates(0);
      // NF ou Venda Cancelada
      if (cds.State in [dsBrowse]) then
         cds.Edit;
      cdsSTATUS.AsInteger := 0;
      cds.ApplyUpdates(0);
      if (fVendas.cds_Movimento.State in [dsBrowse]) then
         fVendas.cds_Movimento.edit;
      fVendas.cds_MovimentoCODNATUREZA.AsInteger := 3; //Venda
      fVendas.cds_Movimento.ApplyUpdates(0);

      MessageDlg('Status alterado com sucesso.', mtInformation, [mbOK], 0);
      scdsCr_proc.Refresh;
    Except
      MessageDlg('Não foi possível alterar STATUS.', mtError, [mbOK], 0);
    end;
  end
  else
  begin
    if  MessageDlg('Confirma o cancelamento da baixa do Título : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      if( scdsCr_procSTATUS.AsString = '7-') then
        scdsCr_procVALOR_RESTO.AsFloat := scdsCr_procVALORRECEBIDO.asFloat;
      scdsCr_procVALORRECEBIDO.AsFloat := 0;
      scdsCr_procCAIXA.Clear;
      scdsCr_proc.ApplyUpdates(0);
      MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);

      DecimalSeparator := '.';
      str := 'Update RECEBIMENTO set DATARECEBIMENTO = null, DATACONSOLIDA = null';
      str := str + ' WHERE CODRECEBIMENTO = ' + IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str);
      DecimalSeparator := ',';
      scdsCr_proc.Refresh;
    Except
      MessageDlg('Não foi possível cancelar a baixa.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfVendaFinalizar.btnGravarClick(Sender: TObject);
var  strSql, strTit, tipoMov: String;
     diferenca : double;
     utilcrtitulo : Tutils;
     FRec : TReceberCls;
begin
  if (dm.cCustoFechado(cdsCODCCUSTO.AsInteger, cdsDATAVENDA.AsDateTime)) then
  begin
    MessageDlg('Centro de Resultado já finalizado.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if ((cdsNOTAFISCAL.IsNull) or (Trim(cdsNOTAFISCAL.AsString) = '')) then
  begin
    MessageDlg('Informe o Nº da nota', mtWarning, [mbOK], 0);
    DBEdit2.SetFocus;
    Exit;
  end;

  if (cbPrazo.Visible = True) then
  begin
    if (not dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    begin
      MessageDlg('Escolha o prazo de pagamento.', mtError, [mbOK], 0);
      cbPrazo.SetFocus;
      exit;
    end;
    cdsPRAZO.AsString := cbPrazo.Text;
  end;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  tipoMov := 'EDIT';
  if DtSrc.State in [dsInsert] then
  begin
    tipoMov := 'INSERT';
    IF (cdsCODUSUARIO.asinteger = 0) then
      cdsCODUSUARIO.AsInteger := cdsCODVENDEDOR.AsInteger;

    if (cdsENTRADA.AsFloat > 0) then
    begin
      if (cbConta.Text = '') then
      begin
        MessageDlg('Informe o CAIXA.', mtError, [mbOK], 0);
        cbConta.SetFocus;
        exit;
      end;
      try
        if (StrToInt(dbedit5.Text) = 1) then
        begin
          diferenca := cdsVALOR.AsFloat - cdsDESCONTO.AsFloat;
          diferenca := diferenca - cdsENTRADA.AsFloat;
          if (diferenca > 0.01) then
          begin
            MessageDlg('O sistema considera a parcela 1 como a entrada.', mtError, [mbOK], 0);
            dbedit5.SetFocus;
            exit;
          end;
        end;
      except
        MessageDlg('Informe um número para PARCELAS.', mtError, [mbOK], 0);
        dbedit5.SetFocus;
        exit;
      end;
    end;

    if (dbeSerie.Text = '') then
    begin
      MessageDlg('Informe uma Série.', mtError, [mbOK], 0);
      dbeSerie.SetFocus;
      exit;
    end;

    if (DM.tipoVenda <> 'DEVOLUCAO') then
    begin
      strTit := IntToStr(cdsNOTAFISCAL.AsInteger);
      begin
        strSql := 'SELECT v.NOTAFISCAL FROM VENDA v, MOVIMENTO m ' +
         ' WHERE v.CODMOVIMENTO = m.CODMOVIMENTO ' +
         '   AND m.CODNATUREZA = 3 ' +
         '   AND NOTAFISCAL = ' ;
        strSql := strSql + QuotedStr(strTit) +
        '    AND SERIE = ' + QuotedStr(cdsSERIE.AsString);
        if sqs_tit.Active then
          sqs_tit.Close;
        sqs_tit.CommandText := strSql;
        sqs_tit.Open;
        if not sqs_tit.IsEmpty then
        begin
          strSql := 'SELECT MAX(v.NOTAFISCAL) FROM VENDA v, MOVIMENTO m ' +
            ' where v.CODMOVIMENTO = m.CODMOVIMENTO ' +
            '   AND m.CODNATUREZA = 3';
          strSql := strSql + ' AND SERIE = ' + QuotedStr(cdsSERIE.AsString);
          if sqs_tit.Active then
            sqs_tit.Close;
          sqs_tit.CommandText := strSql;
          sqs_tit.Open;
          MessageDlg('Número do Título repetido.' + #10#13 +
            ' O último número usado foi : ' + sqs_tit.Fields[0].AsSTring, mtWarning, [mbOK], 0);
          DBEdit2.SetFocus;
          exit;
        end;
      end;
    end;

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    if varcancela = 'varcancela' then
       exit;

    if terminal = '' then
      cdsCODMOVIMENTO.AsInteger := fVendas.cds_MovimentoCODMOVIMENTO.AsInteger
    else
      cdsCODMOVIMENTO.AsInteger := fTerminal.cds_MovimentoCODMOVIMENTO.AsInteger;
    strTit := IntToStr(cdsNOTAFISCAL.AsInteger) + '-' + cdsSERIE.AsString;
  end;

  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (tipoMov = 'EDIT') then  // Se e insercao nao preciso ver se ja existe
    begin
      // Ver se ja existe o Lancamento
      strSql := 'SELECT TITULO FROM PAGAMENTO where TITULO = ' ;
      strSql := strSql + QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger) + '-C');
      strSql := strSql + ' OR TITULO = ' + QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger) + '-F');
      if sqs_tit.Active then
        sqs_tit.Close;
      sqs_tit.CommandText := strSql;
      sqs_tit.Open;
      if (sqs_tit.IsEmpty) then
        tipoMov := 'INSERT'
      else
        tipoMov := 'EDIT';
    end;
    grava := TCompras.Create;
    grava.CentroResultado := cdsCODCCUSTO.AsInteger;
    grava.CFO := fVendas.cds_Mov_detLOTE.AsString;
    //-----------------
    if (edCodigoColhedor.Text <> '') then
    begin
      grava.DataVenda := cdsDATAVENDA.AsDateTime;
      grava.CodMovimento := IntToStr(cdsCODMOVIMENTO.AsInteger);
      grava.CodColhedor := edCodigoColhedor.Text;
      grava.ContaDespesa := contaDespesa;
      grava.DataPagColhedor := dtPagColhedor.Date;
      grava.VlrColhedor := edVlrColhedor.Value;
      grava.QtdeVenda := jvCalcEdit1.Value;
      grava.CodProdutor := IntToStr(fVendas.cds_Mov_detCOD_COMISSAO.AsInteger);
      if (tipoMov = 'INSERT') then
        grava.InsereDespesa;
      if (tipoMov = 'EDIT') then
        grava.AlteraDespesa;
    end;
    if (edCodFretista.Text <> '') then
    begin
      grava.DataVenda := cdsDATAVENDA.AsDateTime;
      grava.CodMovimento := IntToStr(cdsCODMOVIMENTO.AsInteger);
      grava.CodColhedor := edCodigoColhedor.Text;
      grava.CodFretista := edCodFretista.Text;
      grava.VlrFrete := edVlrFrete.Value;
      grava.DataPagFrete := dtDataPagFrete.Date;
      grava.ContaDespesaFrete := contaDespesaFrete;
      grava.QtdeVenda := jvCalcEdit1.Value;
      if (tipoMov = 'INSERT') then
        grava.InsereDespesaFrete;
      if (tipoMov = 'EDIT') then
        grava.AlteraDespesaFrete;
    end;
    grava.Destroy;
  end;

  if (dm.moduloUsado = 'MERGULHO') then
  begin
    if (tipoMov = 'EDIT') then  // Se e insercao nao preciso ver se ja existe
    begin
      // Ver se ja existe o Lancamento
      strSql := 'SELECT TITULO FROM PAGAMENTO where TITULO = ' ;
      strSql := strSql + QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger) + '-C');
      strSql := strSql + ' OR TITULO = ' + QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger) + '-F');
      if sqs_tit.Active then
        sqs_tit.Close;
      sqs_tit.CommandText := strSql;
      sqs_tit.Open;
      if (sqs_tit.IsEmpty) then
        tipoMov := 'INSERT'
      else
        tipoMov := 'EDIT';
    end;
    grava := TCompras.Create;
    grava.CentroResultado := cdsCODCCUSTO.AsInteger;
    grava.CFO := fVendas.cds_Mov_detLOTE.AsString;
    //-----------------
    if (edCodigoColhedor.Text <> '') then
    begin
      grava.DataVenda := cdsDATAVENDA.AsDateTime;
      grava.CodMovimento := IntToStr(cdsCODMOVIMENTO.AsInteger);
      grava.CodColhedor := edCodigoColhedor.Text;
      grava.ContaDespesa := contaDespesa;
      grava.DataPagColhedor := dtPagColhedor.Date;
      grava.VlrColhedor := edVlrColhedor.Value;
      grava.QtdeVenda := jvCalcEdit1.Value;
      grava.CodProdutor := IntToStr(fVendas.cds_Mov_detCOD_COMISSAO.AsInteger);
      if (tipoMov = 'INSERT') then
        grava.InsereDespesa;
      if (tipoMov = 'EDIT') then
        grava.AlteraDespesa;
    end;
    if (edCodFretista.Text <> '') then
    begin
      grava.DataVenda := cdsDATAVENDA.AsDateTime;
      grava.CodMovimento := IntToStr(cdsCODMOVIMENTO.AsInteger);
      grava.CodColhedor := edCodigoColhedor.Text;
      grava.CodFretista := edCodFretista.Text;
      grava.VlrFrete := edVlrFrete.Value;
      grava.DataPagFrete := dtDataPagFrete.Date;
      grava.ContaDespesaFrete := contaDespesaPiscina;
      grava.QtdeVenda := jvCalcEdit1.Value;
      if (tipoMov = 'INSERT') then
        grava.InsereDespesaFrete;
      if (tipoMov = 'EDIT') then
        grava.AlteraDespesaFrete;
    end;
    grava.Destroy;
  end;


  //A lançamento do cr tem que ser antes de salvar á venda
  //pois, caso o título já tenha sido baixado não é permitido alterar a venda.
  //Gerando o contas a receber
  //  gerar_cr; **************** 22/10/03
  if DtSrc.State in [dsEdit, dsInsert] then
  begin
    utilcrtitulo := Tutils.Create;
    cdsFORMARECEBIMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);

    if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
      cdsCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger
    else begin
      if (cdsENTRADA.AsFloat > 0) then
      begin
        MessageDlg('Caixa informado inválido.', mtError, [mbOK], 0);
        cbConta.SetFocus;
        exit;
      end;
    end;

    cdsVALOR.AsFloat := vrr + cdsVALOR_FRETE.AsFloat + cdsVALOR_SEGURO.AsFloat +
      cdsOUTRAS_DESP.AsFloat - cdsDESCONTO.AsFloat;
    cdsAPAGAR.AsFloat := cdsVALOR.AsFloat - cdsENTRADA.AsFloat + cdsMULTA_JUROS.AsFloat;
    cdsVALOR_PAGAR.AsFloat := cdsVALOR.AsFloat;

    {Usado para bloquear alteração em RECEBIMENTO pelas triggers
     da notafiscal }
    if (cds.State in [dsInsert, dsEdit]) then
    if (cdsVALOR.AsFloat <> vrr) then
      cdsSTATUS1.AsString := 'B';

    //inherited;
    // Retirei do Inherited a opção de gravar, pois, não exibe mensagem de erro, e aqui e necessario
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      cds.ApplyUpdates(0);
      // Executo Classe Insere Recebimento ---------------------------------------
      if (scdsCr_proc.IsEmpty) then
      begin
        FRec := TReceberCls.Create;
        try
           codRec := FRec.geraTitulo(0, cdsCODVENDA.AsInteger);
        finally
           Frec.Free;
        end;
      end;
      //dmnf.baixaEstoque(cdsCODMOVIMENTO.AsInteger, cdsDATAVENDA.AsDateTime, 'VENDA');
      dm.sqlsisAdimin.Commit(TD);
      if (cdsENTRADA.AsFloat > 0) then
        baixaEntrada;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
  end;
  //baixando o movimento na tabela estoque
  btnIncluir.Visible:=False;
  btnImprimir.SetFocus;
  //Gravando o numero sequencial
  if not scds_serie_proc.Active then
  begin
     scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
     scds_serie_proc.Open;
  end;
  if (cdsNOTAFISCAL.AsInteger > scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    scds_serie_proc.Edit;
    scds_serie_procULTIMO_NUMERO.AsInteger := cdsNOTAFISCAL.AsInteger;
    scds_serie_proc.ApplyUpdates(0);
  end;
  scds_serie_proc.Close;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cdsCODVENDA.AsInteger;
  scdsCr_proc.Open;

  codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
  Cod_orig := cdsCODVENDA.AsInteger;
  tipo_origem := 'VENDA';
  cod_cli_forn := cdsCODCLIENTE.AsInteger;
  c_f := 'C'; // C=Cliente
  if DtSrc.State in [dsInsert, dsEdit] then
     btnGravar.Click;

  if (usaMateriaPrima = 'S') then
  begin
    //BitBtn1.Click;
    baixaestoque('BAIXAAUTOMATICA');
  end;
  if (terminal = '') then
  if (fVendas.cds_Movimento.State in [dsBrowse]) then
  begin
    fVendas.cds_Movimento.Edit;
    fVendas.cds_MovimentoSTATUS.AsInteger := 0;
    fVendas.cds_Movimento.ApplyUpdates(0);
    fVendas.RadioPedido.Checked := False;
  end;

   strSql := 'UPDATE RECEBIMENTO SET DP = 1 where CODVENDA = ' + IntToStr(cdsCODVENDA.AsInteger);
   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro ao grava campo DP para imprimir boleto .', mtError,
           [mbOk], 0);
    end;

end;

procedure TfVendaFinalizar.btnExcluirClick(Sender: TObject);
var    utilcrtitulo : Tutils;
  usu_n, usu_s : string;
  FEstoque: TEstoque;
  dataVenda: TDateTime;
  FMov : TMovimento;
  FRec : TReceberCls;
begin
  dataVenda := cdsDATAVENDA.AsDateTime;

  usu_n := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
  usu_s := fAtsAdmin.UserControlComercial.CurrentUser.Password;
  utilcrtitulo := Tutils.Create;
  if (utilcrtitulo.verificapermissao = True) then
  begin
    if scdscr_proc.Active then
       scdscr_proc.Close;
    scdscr_proc.Params[0].Clear;
    scdscr_proc.Params[0].AsInteger := cdsCODVENDA.AsInteger;
    scdscr_proc.Open;
    if cds_cr.Active then
      cds_cr.Close;
    cds_cr.Params[0].AsInteger := scdscr_procCODRECEBIMENTO.AsInteger;
    cds_cr.Open;
    if (cds_crSTATUS.AsString = '5-') then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
      begin

        if (dm.moduloUsado = 'CITRUS') then
        begin
          grava := TCompras.Create;
          grava.DataVenda := cdsDATAVENDA.AsDateTime;
          grava.CodMovimento := IntToStr(cdsCODMOVIMENTO.AsInteger);
          grava.CodColhedor := edCodigoColhedor.Text;
          grava.CodFretista := edCodFretista.Text;
        end;
         agendarexcluir;
         excluinf;
         if excluiuNF then
         begin
           try
             dm.sqlsisAdimin.StartTransaction(TD);
             DtSrc.DataSet.Delete;
             (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
             if (usaMateriaPrima = 'S') then   // Usa Materia Prima então tem que excluir tbem;
             begin
               if (dm.sqlBusca.Active) then
                 dm.sqlBusca.Close;
               dm.sqlBusca.SQL.Clear;
               dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO, DATAMOVIMENTO FROM MOVIMENTO ' +
                 ' WHERE CODPEDIDO   = ' + IntToStr(codigo_moviemento) +
                 '   AND CODNATUREZA = 2'+
                 '   AND CODCLIENTE  = ' + IntToStr(codigo_cliente));
               dm.sqlBusca.Open;
               if (not dm.sqlBusca.IsEmpty) then
               begin
                 dm.sqlsisAdimin.ExecuteDirect('Delete From VENDA WHERE CODMOVIMENTO = ' +
                   IntToStr(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger));
                 dm.sqlsisAdimin.ExecuteDirect('Delete From MOVIMENTO WHERE CODMOVIMENTO = ' +
                   IntToStr(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger));
               end;
             end;
             dm.sqlBusca.Close;
             dm.sqlsisAdimin.Commit(TD);
             ShowMessage('Venda Excluida com Sucesso');
           except
             on E : Exception do
             begin
               ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
               dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             end;
           end;
         end;
       end;
    end
    else if (cds_cr.IsEmpty) then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
      begin
        if (dm.moduloUsado = 'CITRUS') then
        begin
          grava := TCompras.Create;
          grava.DataVenda := cdsDATAVENDA.AsDateTime;
          grava.CodMovimento := IntToStr(cdsCODMOVIMENTO.AsInteger);
          grava.CodColhedor := edCodigoColhedor.Text;
          grava.CodFretista := edCodFretista.Text;
        end;
         agendarexcluir;
         excluinf;
          Try
            dm.sqlsisAdimin.StartTransaction(TD);
            DtSrc.DataSet.Delete;
            (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
            dm.sqlsisAdimin.Commit(TD);
          except
            on E : Exception do
            begin
              ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
              dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
            end;
          end;
      end;

    end;

    FRec := TReceberCls.Create;
    try
      FRec.excluiTitulo(scdscr_proc.Params[0].AsInteger);
    finally
      Frec.Free;
    end;

  {------Pesquisando na tab Parametro se usa consumo Materia Prima na Venda ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
  dm.cds_parametro.Open;

  if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
  begin
    // Excluindo a baixa da materia Prima
    codigo_cliente :=  fVendas.cds_MovimentoCODCLIENTE.AsInteger;
    data_movimento :=  DateToStr(fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime);
  end;

  if (dm.moduloUsado = 'CITRUS') then
  begin
    grava.ExcluiLancamento;
    grava.Destroy;
  end;

  //não esta exluindo o estoque qdo exclui  a finalizacao da venda

  cds_cr.Close;
  scdscr_proc.Close;
  end
  else
    BitBtn2.Click;

  fAtsAdmin.UserControlComercial.VerificaLogin(usu_n,usu_s);
end;

procedure TfVendaFinalizar.btnNotaFiscalClick(Sender: TObject);
var nfe :string;
begin
  if (dm.validaClienteParaNF(fVendas.cds_MovimentoCODCLIENTE.AsInteger) = False) then
  begin
    exit;
  end;
  if DtSrc.State in [dsInsert] then
  begin
    btnGravar.Click;
  end;
  if (fVendas.cds_MovimentoCODMOVIMENTO.AsInteger > 0) then
    dm.EstoqueAtualiza(fVendas.cds_MovimentoCODMOVIMENTO.AsInteger);

  nfe := 'S';

  if (nfe = 'S' ) then
  begin
    fatura_NF := '';
    tipo_form := 'VENDA';
    if scdsCr_proc.State in [dsEdit, dsBrowse] then
    begin
      scdsCr_proc.First;
      while not scdsCr_proc.Eof do
      begin
        if scdsCr_procSITUACAO.AsString <> '7-' then
        begin
          if (dm.moduloUsado = 'CITRUS') then
          begin
            fatura_NF := fatura_NF + ' ( ';
            fatura_NF := fatura_NF + DateToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
            fatura_NF := fatura_NF + ' - ' + scdsCr_procTIT.AsString;
            valor_fatura := formatfloat('#,##0.00',scdsCr_procVALOR_RESTO.Value);
            fatura_NF := fatura_NF + ' - ' + valor_fatura + ')';
          end
          else begin
            fatura_NF := fatura_NF + ' ( ';
            fatura_NF := fatura_NF + scdsCr_procTIT.AsString;
            fatura_NF := fatura_NF + ' - ' + DateToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
            valor_fatura := formatfloat('#,##0.00',scdsCr_procVALOR_RESTO.Value);
            fatura_NF := fatura_NF + ' - ' + valor_fatura + ')';
          end;
        end;
        scdsCr_proc.Next;
      end;

      // Aqui é usado para a DNZ
      if Dm.cds_parametro.Active then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'NFVALOR';
      dm.cds_parametro.Open;
      if (not dm.cds_parametro.IsEmpty) then
      if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      begin
        scdsCr_proc.First;
        fatura_NF := ' ( ';
        fatura_NF := fatura_NF + scdsCr_procTIT.AsString;
        fatura_NF := fatura_NF + ' - ' + DateToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
        valor_fatura := formatfloat('#,##0.00',scdsCr_procVALOR_RESTO.Value);
        fatura_NF := fatura_NF + ' - ' + valor_fatura + ')';
      end;
    end;
    notaFiscal;
  end;
end;

procedure TfVendaFinalizar.btnImprimirClick(Sender: TObject);
var
   XY: TPoint;
begin
     XY := Point(50, -10);
     XY := btnImprimir.ClientToScreen(XY);
     pm2.Popup(XY.X, XY.Y + btnImprimir.Height - 2);
end;

procedure TfVendaFinalizar.BitBtn3Click(Sender: TObject);
var
nrdiames: Integer;
diasemana: array[1..7] of String;
diames: array[1..31] of String;
meses: array[1..12] of String;
dia, mes, ano: Word;
valor: Double;
acompo,acompo1, acompo2 : TRpLabel;
begin
  inherited;
  {Usado para inserir Despesa de Colheita se o sistema for usado para o Citrus}
  {if (bitbtn3.Caption = 'Colhedor') then
  begin
    if (DtSrc.State in [dsInsert, dsEdit]) then
    begin
      MessageDlg('Salve o lançamento antes de prosseguir.', mtWarning,
        [mbOk], 0);
      exit;
    end;
    fFreteColheita := TfFreteColheita.Create(Application);
    try
     fFreteColheita.ccusto := cdsCODCCUSTO.AsInteger;
     fFreteColheita.freteOuColheita := 'colheita';
     fFreteColheita.ShowModal;
    finally
     fFreteColheita.Free;
    end;
  end
  else begin}
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    //*********************************
    // escreve o dia da semana pôr extenso
    diasemana[1]:= 'Domingo';
    diasemana[2]:= 'Segunda-feira';
    diasemana[3]:= 'Terça-feira';
    diasemana[4]:= 'Quarta-feira';
    diasemana[5]:= 'Quinta-feira';
    diasemana[6]:= 'Sexta-feira';
    diasemana[7]:= 'Sábado';

    //*********************************
    // escreve o dia do mês pôr extenso
    diames[1]:= 'Um';
    diames[2]:= 'Dois';
    diames[3]:= 'Tres';
    diames[4]:= 'Quatro';
    diames[5]:= 'Cinco';
    diames[6]:= 'Seis';
    diames[7]:= 'Sete';
    diames[8]:= 'Oito';
    diames[9]:= 'Nove';
    diames[10]:= 'Des';
    diames[11]:= 'Onze';
    diames[12]:= 'Doze';
    diames[13]:= 'Treze';
    diames[14]:= 'Quatorze';
    diames[15]:= 'Quinze';
    diames[16]:= 'Dezesseis';
    diames[17]:= 'Dezessete';
    diames[18]:= 'Dezoito';
    diames[19]:= 'Dezenove';
    diames[20]:= 'Vinte';
    diames[21]:= 'Vinte e um';
    diames[22]:= 'Vinte e dois';
    diames[23]:= 'Vinte e tres';
    diames[24]:= 'Vinte e quatro';
    diames[25]:= 'Vinte e cinco';
    diames[26]:= 'Vinte e seis';
    diames[27]:= 'Vinte e sete';
    diames[28]:= 'Vinte e oito';
    diames[29]:= 'Vinte e nove';
    diames[30]:= 'Trinta';
    diames[31]:= 'Trinta e um';

    //*********************************
    // escreve o mês pôr extenso
    meses[1]:= 'Janeiro';
    meses[2]:= 'Fevereiro';
    meses[3]:= 'Março';
    meses[4]:= 'Abril';
    meses[5]:= 'Maio';
    meses[6]:= 'Junho';
    meses[7]:= 'Julho';
    meses[8]:= 'Agosto';
    meses[9]:= 'Setembro';
    meses[10]:= 'Outubro';
    meses[11]:= 'Novembro';
    meses[12]:= 'Dezembro';

    DecodeDate(scdsCr_procDATAVENCIMENTO.AsDateTime,ano,mes,dia);
    nrdiames := dia;
    acompo:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));
    acompo1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel17'));
    acompo2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel18'));

    if Assigned(acompo) then
      acompo.Text := diames[nrdiames]+' dias do mês de '+meses[mes]+
      ' do ano de '+INTTOSTR(ano) + ' pararei pôr esta única via de ' +
      ' NOTA PROMISSÓRIA à '+ dm.cds_empresaRAZAO.AsString + ' Cnpj nº ' +
      dm.cds_empresaCNPJ_CPF.AsString;

    if Assigned(acompo) then
      acompo2.Text := INTTOSTR(dia)+' de '+meses[mes]+
      ' de '+INTTOSTR(ano);

    valor := scdsCr_procVALOR_RESTO.AsFloat;
    if Assigned(acompo1) then
      acompo1.Text := 'ou à sua ordem, a quantia de '+
        EvExtenso1.GetExtenso(Valor);

    VCLReport1.FileName := str_relatorio + 'promissoria.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PVENDA').Value := cdsCODVENDA.AsInteger;
    VCLReport1.Execute;
  //end;
end;

procedure TfVendaFinalizar.BitBtn4Click(Sender: TObject);
var  strSql: String;
begin
  inherited;
  {Usado para inserir Despesa de Frete se o sistema for usado para o Citrus}
  if (bitbtn4.Caption <> 'Frete') then
  begin
    //fImpr_Boleto := TfImpr_Boleto.Create(Application);
    F_Boletos := TF_Boletos.Create(Application);
    try

      strSql := 'UPDATE RECEBIMENTO SET DP = 1 where CODVENDA = ' + IntToStr(cdsCODVENDA.AsInteger);
      dm.sqlsisAdimin.StartTransaction(TD);
      Try
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        MessageDlg('Erro ao grava campo DP para imprimir boleto .', mtError,
            [mbOk], 0);
      end;

      if (F_Boletos.ds_cr.Active) then
        F_Boletos.ds_cr.Close;
      F_Boletos.ds_cr.CommandText := 'select * from RECEBIMENTO where DP = 1 ';
      F_Boletos.ds_cr.Open;
      F_Boletos.ShowModal;

    Finally
        F_Boletos.Free;
    end;

    strSql := 'UPDATE RECEBIMENTO SET DP = null where CODVENDA = ' + IntToStr(cdsCODVENDA.AsInteger);
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro ao grava campo DP para imprimir boleto .', mtError,
         [mbOk], 0);
    end;


  end
  else begin

  end;
end;

procedure TfVendaFinalizar.BitBtn5Click(Sender: TObject);
var
text :TRpLabel;
valor : Double;
numero: integer;
begin
 if  (scdsCr_procSITUACAO.AsString <> '9-') then
 begin
   if (scdsCr_procSITUACAO.AsString = '5-') then
    if  MessageDlg('Confirma a emissão de duplicata?',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
   scdsCr_proc.First;
   While not scdsCr_proc.Eof Do
   begin
     if scdsCr_procSITUACAO.AsString = '7-' then
       scdsCr_proc.Next
     else
     begin
       numero := numero  + 1;
       scdsCr_proc.Edit;
       //scdsCr_procSTATUS.AsString := '9-'; // em cobrança
       scdsCr_procFORMARECEBIMENTO.AsString := '5';// Duplicata
       //scdsCr_procTITULO.AsString := IntToStr(numero) + '-' + scds_serie_procSERIE.AsString;
       //scdsCr_procDP.AsInteger := numero;
       scdsCr_proc.Post;
       scdsCr_proc.Next;
     end;
   end;
   scdsCr_proc.ApplyUpdates(0);
 end;
   if (cds.State in [dsBrowse]) then
      cds.edit;
   cdsFORMARECEBIMENTO.AsString := '5';
   cds.ApplyUpdates(0);
   if scdsCr_procSITUACAO.AsString = '7-' then
     scdsCr_proc.Next;
   //valor := scdsCr_procVALOR_RESTO.AsFloat;
   valor := scdsCr_procVALORREC.AsFloat;
   Edit4.Text:= EvExtenso1.GetExtenso(Valor);
   VCLReport3.Filename := str_relatorio + 'duplicata.rep';
   VCLReport3.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   text:=TRpLabel(VCLReport3.Report.FindComponent('TRpLabel18'));
 if (cds.State = dsBrowse) then
 begin
   VCLReport3.Report.Params.ParamByName('PCOD').Value := cdsCODVENDA.AsInteger;
   if Assigned(text) then
     text.Text := Edit4.Text;
   VCLReport3.Execute;
 end;
end;

procedure TfVendaFinalizar.BitBtn7Click(Sender: TObject);

begin
  inherited;
  if cds.State in [dsInsert, dsEdit] then
  begin
    btnGravar.Click;
  end;
  if (codrec = 0) then
    codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
  Cod_orig := cdsCODVENDA.AsInteger;
  tipo_origem := 'VENDA';
  cod_cli_forn := cdsCODCLIENTE.AsInteger;
  c_f := 'C'; // C=Cliente
  caixa := cdsCAIXA.AsInteger;
  fCheques_bol.titulo := scdsCr_procTITULO.AsString;
  valortitulo := cdsVALOR.AsFloat - cdsDESCONTO.AsFloat;
  fCheques_bol.btnBaixarTitulo.Enabled := True;
  fCheques_bol.ShowModal;
  scdsCr_proc.Refresh;
end;

procedure TfVendaFinalizar.btnUsuarioProcuraClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
   if fProcurar.ShowModal=mrOk then
    begin
    if dtSrc.State=dsBrowse then
     cds.Edit;
     cdsCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
     cdsNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfVendaFinalizar.btnSerieClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
    begin
    if dtSrc.State=dsBrowse then
     cds.Edit;
     cdsSERIE.AsString := scds_serie_procSERIE.AsString;
     cdsNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
   finally
    scds_serie_proc.Close;
    fProcurar.Free;
   end;
    DBEdit2.SetFocus;
end;

procedure TfVendaFinalizar.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
//  inherited;
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fVendaFinalizar));
  nparc := 1;

  {------Pesquisando na tab Parametro se usa consumo Materia Prima na Venda ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
  dm.cds_parametro.Open;
  usaMateriaPrima := dm.cds_parametroCONFIGURADO.AsString;

  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('PARAMETRO', 'NOTAFISCALDESATIVADO', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      DbEdit2.ReadOnly := True;
    end;
  { 003 - Verificando o uso do campo Controle - 09-05-2005 }
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTROLE';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
    begin
      Label6.Visible := True;
      DBEdit15.Visible := True;
      Label5.Visible := True;
      Label5.Caption := dm.cds_parametroDADOS.AsString;
      DBEdit16.Visible := True;
    end
    else
    begin
      Label6.Visible := False;
      DBEdit15.Visible := False;
      Label5.Visible := False;
      DBEdit16.Visible := False;
    end;
  { --- 003 ---- }
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;

  while not dm.cds_7_contas.Eof do
  begin
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'EMPRESA';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD1.AsString = 'AUTOMOTIVA') then
  begin
    GroupBox2.Caption := 'Colaborador/Técnico';
    btnImprimir.Caption := 'Imp. OS';
    BitBtn1.Enabled := False;
  end;
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    bitbtn3.Visible := False;
    bitbtn4.Visible := False;
    bitbtn5.Visible := False;
    bitbtn1.Visible := False;
    Panel4.Visible := True;
    GroupBox3.Visible := False;
    // Inicializo a Classe TCompras(fClassCitrus).
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'ContaDespesaColheita';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      MessageDlg('Conta de Despesas de Colheita não cadastrado ' + #10#13 +
        'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaColheita',mtInformation,[mbOk],0);
    end
    else
      contaDespesa := dm.cds_parametroDADOS.AsString;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'ContaDespesaFrete';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      MessageDlg('Conta de Despesas de Frete não cadastrado ' + #10#13 +
        'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaFrete',mtInformation,[mbOk],0);
    end
    else
      contaDespesaFrete := dm.cds_parametroDADOS.AsString;

  end;

  if (dm.moduloUsado = 'MERGULHO') then
  begin
    CheckBox1.Visible := False;
    bitbtn3.Visible := False;
    bitbtn4.Visible := False;
    bitbtn5.Visible := False;
    bitbtn1.Visible := False;
    Panel4.Visible := True;
    GroupBox3.Visible := False;
    label29.Caption := 'Professor';
    label34.Caption := 'Piscina';
    label30.Caption := 'Horas';
    label37.Caption := 'Horas';


  cbNomeColhedor.Items.Clear;
  if (not sFornecedor.Active) then
     sFornecedor.Open;
  sFornecedor.First;
  while not sFornecedor.Eof do
  begin
    cbNomeColhedor.Items.Add(sFornecedorRAZAOSOCIAL.AsString);
    sFornecedor.Next;
  end;

  cbNomeFretista.Items.Clear;
  if (not sFornecedor.Active) then
     sFornecedor.Open;
  sFornecedor.First;
  while not sFornecedor.Eof do
  begin
    cbNomeFretista.Items.Add(sFornecedorRAZAOSOCIAL.AsString);
    sFornecedor.Next;
  end;

    // Inicializo a Classe TCompras(fClassCitrus).
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'ContaDespesaProfessor';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      MessageDlg('Conta de Despesas de Professor não cadastrado ' + #10#13 +
        'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaProfessor',mtInformation,[mbOk],0);
    end
    else
      contaDespesa := dm.cds_parametroDADOS.AsString;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'ContaDespesaPiscina';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      MessageDlg('Conta de Despesas de Frete não cadastrado ' + #10#13 +
        'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaPiscina',mtInformation,[mbOk],0);
    end
    else
      contaDespesaPiscina := dm.cds_parametroDADOS.AsString;
  end;

end;

procedure TfVendaFinalizar.FormShow(Sender: TObject);
var utilcrtitulo : Tutils;
  diferenca: Double;
begin
  inherited;
  DecimalSeparator := ',';
  codrec := 0;
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'USACUPOM';
  dm.cds_parametro.Open;
  if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
    btnCupom.Visible := True
  else
    btnCupom.Visible := False;

  if (DM.tipoVenda = 'DEVOLUCAO') then
  begin
    MMJPanel1.Background.EndColor := clNavy;
    MMJPanel3.Background.EndColor := clNavy;
  end
  else begin
    MMJPanel1.Background.EndColor   := dm.corEnd;
    MMJPanel1.Background.StartColor := dm.corStart;
    MMJPanel3.Background.EndColor   := dm.corStart;
    MMJPanel3.Background.StartColor := dm.corEnd;
  end;
  if (not dm.parametro.Active) then
    dm.parametro.Open;

  if (dm.parametro.locate('DADOS', 'PRAZO', [loCaseInsensitive])) then
  begin
    if (dm.parametroCONFIGURADO.AsString = 'N') then
    begin
      dbDtaVencimento.Visible := True;
      cbPrazo.ItemIndex := -1;
      cbPrazo.Visible := False;
    end
    else begin
      try
        if (not dm.cdsPrazo.Active) then
        dm.cdsPrazo.open;
        if (not dm.cdsPrazo.IsEmpty) then
        begin
          dm.CdsPrazo.first;
          nparc := dm.CdsPrazoVALOR.asFloat;
          cbPrazo.Items.clear;
          while not dm.CdsPrazo.eof do
          begin
            cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
            dm.cdsPrazo.next;
          end;
        end;
      except
      end;
      cbPrazo.ItemIndex := 0;
    end;
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    jvCalcEdit1.Value := fVendas.cds_Mov_detQUANTIDADE.Value;
    jvCalcEdit2.Value := fVendas.cds_Mov_detQUANTIDADE.Value;    
    if (dmCitrus.cdsColhedor.Active) then
      dmCitrus.cdsColhedor.Close;
    dmCitrus.cdsColhedor.Open;
    cbNomeColhedor.Text := '';
    edCodigoColhedor.Text := '';
    edVlrColhedor.Value := 0;
    if (dmCitrus.cdsFretista.Active) then
      dmCitrus.cdsFretista.Close;
    dmCitrus.cdsFretista.Open;
    cbNomeFretista.Text := '';
    edCodFretista.Text := '';
    edVlrFrete.Value := 0;
  end;

  if (dm.moduloUsado = 'MERGULHO') then
  begin
    jvCalcEdit1.Value := fVendas.cds_Mov_detQUANTIDADE.Value;
    jvCalcEdit2.Value := fVendas.cds_Mov_detQUANTIDADE.Value;
  end;


  //a tabela esta aberta, então verifica se é edicao ou inserção
  //procurando na tabela venda pelo código do movimento.
  if dm.scds_venda_proc.Active then
    dm.scds_venda_proc.Close;
  dm.scds_venda_proc.Params[0].AsInteger:= fVendas.cds_MovimentoCODMOVIMENTO.AsInteger;
  dm.scds_venda_proc.Open;
  if dm.scds_venda_proc.IsEmpty then
  begin
    btnIncluir.Visible:=True;
    btnIncluir.Click;
    if fVendas.DBEdit15.Text <> '' then
    begin
      dbeUsuario.Text := fVendas.DBEdit15.Text;
      //DBEdit15.Text := fVendas.DBEdit16.Text;
      dbeSerie.SetFocus;
    end
    else
      dbeUsuario.SetFocus;
    dm.scds_venda_proc.Close;
    scdsCr_proc.Close;
    exit;
  end
  else
  begin
    btnIncluir.Visible:=False;
    if cds.Active then
      cds.Close;
    cds.Params[0].AsInteger:=dm.scds_venda_procCODVENDA.AsInteger;
    cds.Open;
    diferenca := fVendas.cds_Mov_detTotalPedido.Value - (cdsVALOR.Value-(cdsVALOR_FRETE.Value + cdsVALOR_SEGURO.Value +
      cdsVALOR_IPI.Value + cdsOUTRAS_DESP.Value + cdsMULTA_JUROS.Value + cdsVALOR_ST.Value));
    if (diferenca < 0) then
      diferenca := diferenca * (-1);  
    if (not cds.IsEmpty) then
    if ( diferenca > 0.001) then
    begin
        cds.Edit;
        if (sqs_tit.Active) then
          sqs_tit.Close;

        if (dm.moduloUsado <> 'CITRUS') then
        begin
          if (sqs_tit.Active) then
          sqs_tit.Close;

          sqs_tit.CommandText := 'SELECT SUM(QUANTIDADE * VLR_BASE) FROM MOVIMENTODETALHE' +
                               ' WHERE CODMOVIMENTO = ' +
                               IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.asInteger);
        end
        else begin
          if (sqs_tit.Active) then
          sqs_tit.Close;
          sqs_tit.CommandText := 'SELECT SUM(((QTDE_ALT  - ICMS) / 40.8) * PRECO) FROM MOVIMENTODETALHE' +
                               ' WHERE CODMOVIMENTO = ' +
                               IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.asInteger);
      end;
      sqs_tit.Open;
      cdsVALOR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat + ( +
      cdsVALOR_FRETE.Value + cdsVALOR_SEGURO.Value + cdsVALOR_IPI.Value + cdsOUTRAS_DESP.Value +
      cdsMULTA_JUROS.Value + cdsVALOR_ST.Value));
      cdsVALOR_PAGAR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat + ( +
      cdsVALOR_FRETE.Value + cdsVALOR_SEGURO.Value + cdsVALOR_IPI.Value + cdsOUTRAS_DESP.Value +
      cdsMULTA_JUROS.Value + cdsVALOR_ST.Value));
      vrr := FloatToCurr(sqs_tit.Fields[0].AsFloat);
      sqs_tit.Close;
      cds.ApplyUpdates(0);
    end;

    if (cdsFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdsFORMARECEBIMENTO.asString);
    end;
    if (dm.cds_7_contas.Locate('CODIGO', cdsCAIXA.AsInteger, [loCaseInsensitive])) then
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;

    if (dm.moduloUsado = 'CITRUS') then
    begin
      // Colhedor ################################################################
      if (dmCitrus.sdsBusca.active) then
        dmCitrus.sdsBusca.Close;
      dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
      ' p.CODFORNECEDOR, f.NOMEFORNECEDOR, p.OUTRO_DEBITO from PAGAMENTO p, FORNECEDOR f' +
      ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
      QuotedStr(IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.AsInteger) + '-C');
      dmCitrus.sdsBusca.open;
      if (not dmCitrus.sdsBusca.IsEmpty) then
      begin
        edCodigoColhedor.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
        cbNomeColhedor.Text := dmCitrus.sdsBusca.Fields[3].AsString;
        dtPagColhedor.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
        edVlrColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
        if (dmCitrus.sdsBusca.Fields[4].AsFloat > 0) then
        begin
          edPrecoColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat/
          dmCitrus.sdsBusca.Fields[4].AsFloat;
        end
        else
          edPrecoColhedor.Value := 0;
      end
      else begin
        edCodigoColhedor.Text := '';
        cbNomeColhedor.Text := '';
        dtPagColhedor.Clear;
        edVlrColhedor.Value := 0;
        edPrecoColhedor.Value := 0;
      end;
      // FRETE ###################################################################
      if (dmCitrus.sdsBusca.active) then
        dmCitrus.sdsBusca.Close;
      dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
      ' p.CODFORNECEDOR, f.NOMEFORNECEDOR from PAGAMENTO p, FORNECEDOR f' +
      ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
      QuotedStr(IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.AsInteger) + '-F');
      dmCitrus.sdsBusca.open;
      if (not dmCitrus.sdsBusca.IsEmpty) then
      begin
        edCodFretista.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
        cbNomeFretista.Text := dmCitrus.sdsBusca.Fields[3].AsString;
        dtDataPagFrete.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
        edVlrFrete.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
      end
      else begin
        edCodFretista.Text := '';
        cbNomeFretista.Text := '';
        dtDataPagFrete.Clear;
        edVlrFrete.Value := 0;
      end;
    end; // Fim Citrus


    if (dm.moduloUsado = 'MERGULHO') then
    begin
      // Colhedor ################################################################
      if (dmCitrus.sdsBusca.active) then
        dmCitrus.sdsBusca.Close;
      dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
      ' p.CODFORNECEDOR, f.NOMEFORNECEDOR, p.OUTRO_DEBITO from PAGAMENTO p, FORNECEDOR f' +
      ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
      QuotedStr(IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.AsInteger) + '-C');
      dmCitrus.sdsBusca.open;
      if (not dmCitrus.sdsBusca.IsEmpty) then
      begin
        edCodigoColhedor.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
        cbNomeColhedor.Text := dmCitrus.sdsBusca.Fields[3].AsString;
        dtPagColhedor.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
        edVlrColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
        if (dmCitrus.sdsBusca.Fields[4].AsFloat > 0) then
        begin
          edPrecoColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat/
          dmCitrus.sdsBusca.Fields[4].AsFloat;
        end
        else
          edPrecoColhedor.Value := 0;
      end
      else begin
        edCodigoColhedor.Text := '';
        cbNomeColhedor.Text := '';
        dtPagColhedor.Clear;
        edVlrColhedor.Value := 0;
        edPrecoColhedor.Value := 0;
      end;
      // FRETE ###################################################################
      if (dmCitrus.sdsBusca.active) then
        dmCitrus.sdsBusca.Close;
      dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
      ' p.CODFORNECEDOR, f.NOMEFORNECEDOR from PAGAMENTO p, FORNECEDOR f' +
      ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
      QuotedStr(IntToStr(fVendas.cds_MovimentoCODMOVIMENTO.AsInteger) + '-F');
      dmCitrus.sdsBusca.open;
      if (not dmCitrus.sdsBusca.IsEmpty) then
      begin
        edCodFretista.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
        cbNomeFretista.Text := dmCitrus.sdsBusca.Fields[3].AsString;
        dtDataPagFrete.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
        edVlrFrete.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
      end
      else begin
        edCodFretista.Text := '';
        cbNomeFretista.Text := '';
        dtDataPagFrete.Clear;
        edVlrFrete.Value := 0;
      end;
    end; // Fim MERGULHO
    cbPrazo.Text := cdsPRAZO.AsString;    
  end;
  dm.scds_venda_proc.Close;
  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cdsCODVENDA.AsInteger;
  scdsCr_proc.Open;
end;

procedure TfVendaFinalizar.dbeUsuarioExit(Sender: TObject);
begin
  inherited;
  if dbeUsuario.Text='' then exit;
  if dtsrc.State = dsInsert then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Params.ParamByName('pPerfil').AsString := 'VENDEDOR';
    dm.scds_usuario_proc.Params.ParamByName('pPerfil1').AsString := 'AMBOS';
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    cdsCODVENDEDOR.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cdsNOMEUSUARIO.AsString:=dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end
  else
  if dbeUsuario.Field.OldValue<>dbeUsuario.Field.NewValue then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    cdsCODVENDEDOR.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cdsNOMEUSUARIO.AsString:=dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end;

end;

procedure TfVendaFinalizar.dbeSerieExit(Sender: TObject);
begin
  inherited;
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if (dbeSerie.Text = '') then
      exit;

    if (cdsNOTAFISCAL.IsNull) then
    begin
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      cdsNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then  begin
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      cdsSERIE.AsString := scds_serie_procSERIE.AsString;
      //É nota fiscal ?
      if scds_serie_procNOTAFISCAL.AsInteger=0 then
      begin
        //    btnImprimir.Enabled:=False;
        btnNotaFiscal.Enabled:=True;
        end
        else
        begin
        //    btnImprimir.Enabled:=True;
        btnNotaFiscal.Enabled:=False;
      end;
      cdsNOTAFISCAL.AsInteger:=
      scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;

end;

procedure TfVendaFinalizar.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  cdsVALOR.AsFloat := vrr +
    cdsVALOR_FRETE.AsFloat +
    cdsVALOR_SEGURO.AsFloat +
    cdsOUTRAS_DESP.AsFloat +
    cdsVALOR_IPI.AsFloat;
  cdsAPAGAR.AsFloat := cdsVALOR.AsFloat -
    cdsENTRADA.AsFloat + cdsMULTA_JUROS.AsFloat -
    cdsDESCONTO.AsFloat;
end;

procedure TfVendaFinalizar.btnIncluirClick(Sender: TObject);
begin
  inherited;
  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;
  cdsSERIE.AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    dbeUsuario.Text := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { ---- 06 ----}

  dbeUsuario.SetFocus;
end;

procedure TfVendaFinalizar.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
 if Key in ['.'] then Key := ',';

end;

procedure TfVendaFinalizar.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit6.Text = '0,00') then
  if (DBEdit16.Visible = True) then
    DBEdit16.SetFocus;
end;

procedure TfVendaFinalizar.baixaestoque(Tipo: string);
begin
  codigo_cliente :=  fVendas.cds_MovimentoCODCLIENTE.AsInteger;
  data_movimento :=  DateToStr(fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime);
  codigo_moviemento := fVendas.cds_MovimentoCODMOVIMENTO.AsInteger;

  {** adiciono um novo movimento}
  fVendas.btnIncluir.Click;
  fVendas.cds_MovimentoCODCLIENTE.AsInteger := codigo_cliente;
  fVendas.cds_MovimentoCODPEDIDO.AsInteger  := codigo_moviemento;

  fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime := StrToDate(data_movimento);
  { Natureza = 'Saída' }
  fVendas.cds_MovimentoCODNATUREZA.AsInteger := 2;
  //fVendas.cds_MovimentoCONTROLE.AsString := IntToStr(codigo_moviemento);
  fVendas.btnGravar.Click;

  //Executa rotina para inserir materias primas
  fVendas.baixamatprimas(Tipo, codigo_moviemento);

  //close;

  if (fVendas.cds_Movimento.Active) then
    fVendas.cds_Movimento.Close;
  fVendas.cds_Mov_det.Params[0].Clear;
  fVendas.cds_Movimento.Params[0].AsInteger := codigo_moviemento;
  fVendas.cds_Movimento.Open;

  if (fVendas.cds_Mov_det.Active) then
    fVendas.cds_Mov_det.Close;
  fVendas.cds_Mov_det.Params[0].Clear;
  fVendas.cds_Mov_det.Params[1].AsInteger := codigo_moviemento;
  fVendas.cds_Mov_det.Open;

end;

procedure TfVendaFinalizar.BitBtn1Click(Sender: TObject);
begin
//  inherited;
  if MessageDlg('Deseja lançar movimento,'+#13+#10+' para os itens ' +#13+#10+
    ' cadastrados em Matéria Prima ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    baixaestoque('BAIXASEPARADA');
  end;
end;

procedure TfVendaFinalizar.agendar;
begin
   {** Verifico se tem mais de um tipo de visita}
   if (Vcont.Active) then
      Vcont.Close;
   Vcont.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
   Vcont.Open;
   if (VcontCOUNT.AsInteger > 1) then // se maior que 1
   begin
     varcancela := '';
     Vcont.Close;
     fSelecionaVisitas := TfSelecionaVisitas.Create(Application);
     try
       fSelecionaVisitas.ShowModal;
       if varcancela = 'varcancela' then
        exit;
     finally
       fSelecionaVisitas.Free;
     end;
   end
   else
   begin // se = a 1
     Vcont.Close;
     if (cdsVisita.Active) then
        cdsVisita.Close;
     cdsVisita.Params[1].Clear;
     cdsVisita.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
     cdsVisita.Open;

     if (cdsAgenda.Active) then
         cdsAgenda.Close;
     cdsAgenda.Params[0].AsInteger := cdsVisitaCODCLIENTE.AsInteger;
     cdsAgenda.Params[1].AsDateTime := cdsVisitaDATAPROXIMA.AsDateTime;
     cdsAgenda.Open;
     {if (not cdsAgenda.IsEmpty) then // fianlizo a visita da tabela agenda
     begin
       cdsAgenda.Edit;
       cdsAgendaSTATUS.AsString := 'Finalizada';
       cdsAgenda.ApplyUpdates(0);
     end;}
     cdsAgenda.Append;
     if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
     dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_AGENDA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
     dm.c_6_genid.Open;
     cdsAgendaCOD_AGENDAMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
     dm.c_6_genid.Close;
     cdsAgendaCODCLIENTE.AsInteger := cdsCODCLIENTE.AsInteger;
     cdsAgendaCODVENDA.AsInteger := cdsCODVENDA.AsInteger;
     cdsAgendaASSUNTO.AsString := 'Visita';
     diasAumenta := cdsVisitaDIAS.AsInteger;
     UltimoDiaMes(cdsVisitaDATAPROXIMA.AsDateTime);
     cdsAgendaDATA.AsDateTime := DtaTemp;
     cdsAgenda.ApplyUpdates(0);

     if (dm.cdsVisita.Active) then
        dm.cdsVisita.Close;
     dm.cdsVisita.Params[0].Clear;
     dm.cdsVisita.Params[1].Clear;
     dm.cdsVisita.Params[2].AsInteger := cdsVisitaCODVISITA.AsInteger;
     dm.cdsVisita.Open;
     dm.cdsVisita.Edit;
     if (not dm.cdsVisitaDATAPROXIMA.IsNull) then
        dm.cdsVisitaDATAULTIMA.AsDateTime := dm.cdsVisitaDATAPROXIMA.AsDateTime
     else
        dm.cdsVisitaDATAULTIMA.AsDateTime := DtaTemp;
     dm.cdsVisitaDATAPROXIMA.AsDateTime := DtaTemp;
     dm.cdsVisita.ApplyUpdates(0);
   end;

end;

procedure TfVendaFinalizar.agendarexcluir;
begin
     if (cdsexcluir.Active) then
         cdsexcluir.Close;
     cdsexcluir.Params[0].AsInteger := cdsCODVENDA.AsInteger;
     cdsexcluir.Open;
     if (not cdsexcluir.IsEmpty) then
     begin
       {** Verifico se tem mais de um tipo de visita}
       if (Vcont.Active) then
          Vcont.Close;
       Vcont.Params[0].AsInteger := cdsexcluirCODCLIENTE.AsInteger;
       Vcont.Open;
       if (VcontCOUNT.AsInteger > 1) then // se maior que 1
       begin
          cdsexcluir.First;
          while not cdsexcluir.Eof do
          begin
            // acerto a data  da procima visita na tabela visita
            if (cdsVexcluir.Active) then
                cdsVexcluir.Close;
            cdsVexcluir.Params[0].AsInteger := cdsexcluirCODCLIENTE.AsInteger;
            cdsVexcluir.Params[1].AsDate := cdsexcluirDATA.AsDateTime;
            cdsVexcluir.Open;
            cdsVexcluir.Edit;
            cdsVexcluirDATAPROXIMA.AsDateTime := cdsVexcluirDATAULTIMA.AsDateTime;
            cdsVexcluir.ApplyUpdates(0);
            cdsVexcluir.Close;
            // deleto Agenda
            if (cdsAgexcluir.Active) then
                cdsAgexcluir.Close;
            cdsAgexcluir.Params[0].AsInteger := cdsexcluirCODVENDA.AsInteger;
            cdsAgexcluir.Open;
            cdsAgexcluir.Delete;
            cdsAgexcluir.ApplyUpdates(0);
            cdsAgexcluir.Close;
            cdsexcluir.Next;
          end;
       end
       else
       begin
            // acerto a data  da procima visita na tabela visita
            if (cdsVexcluir.Active) then
                cdsVexcluir.Close;
            cdsVexcluir.Params[0].AsInteger := cdsexcluirCODCLIENTE.AsInteger;
            cdsVexcluir.Params[1].AsDateTime := cdsexcluirDATA.AsDateTime;
            cdsVexcluir.Open;
            cdsVexcluir.Edit;
            cdsVexcluirDATAPROXIMA.AsDateTime := cdsVexcluirDATAULTIMA.AsDateTime;
            cdsVexcluir.ApplyUpdates(0);
            cdsVexcluir.Close;
            // deleto Agenda
            if (cdsAgexcluir.Active) then
                cdsAgexcluir.Close;
            cdsAgexcluir.Params[0].AsInteger := cdsexcluirCODVENDA.AsInteger;
            cdsAgexcluir.Open;
            cdsAgexcluir.Delete;
            cdsAgexcluir.ApplyUpdates(0);
            cdsAgexcluir.Close;
       end;
     cdsexcluir.Close;
     end;
end;

procedure TfVendaFinalizar.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  {Usado para bloquear alteração em RECEBIMENTO pelas triggers
   da notafiscal }
  if (cds.State in [dsInsert, dsEdit]) then
    cdsSTATUS1.AsString := 'B';

end;

procedure TfVendaFinalizar.BitBtn2Click(Sender: TObject);
var FVen: TVendaCls;
begin
  if MessageDlg('Atenção, confirmando essa operação o sistema vai alterar o status para'+#13+#10+' "CANCELADO", não será excluido do sistema.',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
  begin
    Try
      FVen := TVendaCls.Create;
     try
       dm.sqlsisAdimin.StartTransaction(TD);
       FVen.cancelarVenda(cdsCODVENDA.AsInteger, cdsCODMOVIMENTO.AsInteger, cdsDATAVENDA.AsDateTime);

       if (usaMateriaPrima = 'S') then   // Usa Materia Prima então tem que excluir tbem;
       begin
         dm.sqlBusca.SQL.Clear;
         dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO, DATAMOVIMENTO FROM MOVIMENTO ' +
           ' WHERE CODPEDIDO   = ' + IntToStr(codigo_moviemento) +
           '   AND CODNATUREZA = 2'+
           '   AND CODCLIENTE  = ' + IntToStr(codigo_cliente));
         dm.sqlBusca.Open;
         if (not dm.sqlBusca.IsEmpty) then
         begin
           //dmnf.cancelaEstoque(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger,  +
           //dm.sqlBusca.fieldByName('DATAMOVIMENTO').AsDateTime, 'VENDA');
           dm.sqlsisAdimin.ExecuteDirect('Delete From VENDA WHERE CODMOVIMENTO = ' +
             IntToStr(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger));
           dm.sqlsisAdimin.ExecuteDirect('Delete From MOVIMENTO WHERE CODMOVIMENTO = ' +
             IntToStr(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger));
         end;
       end;
       dm.sqlBusca.Close;

       dm.sqlsisAdimin.Commit(TD);

       MessageDlg('Venda cancelada com sucesso.', mtInformation, [mbOK], 0);
     except
       on E : Exception do
       begin
         ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
         dm.sqlsisAdimin.Rollback(TD);
       end;
     end;
    Finally
      FVen.Free;
    end;
  end;
    { if (fVendas.cds_Movimento.State in [dsBrowse]) then
       fVendas.cds_Movimento.Edit;
     fVendas.cds_MovimentoCODNATUREZA.AsInteger := 14;
     fVendas.cds_Movimento.ApplyUpdates(0);
     if (cds.State in [dsBrowse]) then
        cds.Edit;
     cdsSTATUS.AsInteger := 14;

     try
       dm.sqlsisAdimin.StartTransaction(TD);
       dmnf.cancelaEstoque(cdsCODMOVIMENTO.AsInteger, cdsDATAVENDA.AsDateTime, 'VENDA');
       if (usaMateriaPrima = 'S') then   // Usa Materia Prima então tem que excluir tbem;
       begin
         if (dm.sqlBusca.Active) then
           dm.sqlBusca.Close;
         dm.sqlBusca.SQL.Clear;
         dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO, DATAMOVIMENTO FROM MOVIMENTO ' +
           ' WHERE CODPEDIDO   = ' + IntToStr(codigo_moviemento) +
           '   AND CODNATUREZA = 2'+
           '   AND CODCLIENTE  = ' + IntToStr(codigo_cliente));
         dm.sqlBusca.Open;
         if (not dm.sqlBusca.IsEmpty) then
         begin
           dmnf.cancelaEstoque(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger,  +
           dm.sqlBusca.fieldByName('DATAMOVIMENTO').AsDateTime, 'VENDA');
         end;
       end;
      cds.ApplyUpdates(0);
       dm.sqlsisAdimin.Commit(TD);
     except
       on E : Exception do
       begin
         ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
         dm.sqlsisAdimin.Rollback(TD);
       end;
     end;  }

end;

procedure TfVendaFinalizar.cbNomeColhedorChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds.Edit;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    edCodigoColhedor.Text := IntToStr(dmCitrus.cdsColhedorCODFORNECEDOR.asInteger);
  end
  else
  begin
  if sForn_NC.Active then
  sForn_NC.Close;
    sForn_NC.Params[0].AsString := cbNomeColhedor.Text;
    sForn_NC.Open;
  edCodigoColhedor.Text := IntToStr(sForn_NCCODFORNECEDOR.asInteger);
  end;
end;

procedure TfVendaFinalizar.cbNomeFretistaChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds.Edit;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    edCodFretista.Text := intToStr(dmCitrus.cdsFretistaCODFORNECEDOR.asinteger);
  end
  else
  begin
  if sForn_NC.Active then
  sForn_NC.Close;
    sForn_NC.Params[0].AsString := cbNomeFretista.Text;
    sForn_NC.open;
  edCodFretista.Text := intToStr(sForn_NCCODFORNECEDOR.asInteger);
  end;
end;

procedure TfVendaFinalizar.dtPagColhedorChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds.Edit;
    {Tira o 1% do Total Colhido.}
    if (CheckBox1.Checked = True) then
      edVlrColhedor.Value := (jvCalcEdit1.Value * 0.99) * edPrecoColhedor.Value
    else
      edVlrColhedor.Value := jvCalcEdit1.Value * edPrecoColhedor.Value;
end;

procedure TfVendaFinalizar.edPrecoColhedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    {Tira o 1% do Total Colhido.}
    if (CheckBox1.Checked = True) then
      edVlrColhedor.Value := (jvCalcEdit1.Value * 0.99) * edPrecoColhedor.Value
    else
      edVlrColhedor.Value := jvCalcEdit1.Value * edPrecoColhedor.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.cbNomeColhedorKeyPress(Sender: TObject;
  var Key: Char);
begin
 { inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;                                                }
end;

procedure TfVendaFinalizar.dtPagColhedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.JvCalcEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.edVlrColhedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.cbNomeFretistaKeyPress(Sender: TObject;
  var Key: Char);
begin
  {inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;}
end;

procedure TfVendaFinalizar.dtDataPagFreteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.edVlrFreteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.JvCalcEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  edVlrFrete.Value := jvCalcEdit2.Value * JvCalcEdit3.Value;
end;

procedure TfVendaFinalizar.imprimecupom;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

Centro = #27#97#49; // Centraliza a Impressão
var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, logradouro,cep,fone, clientecupom, doccli : string;//Para recortar parte da descrição do produto,nome
  total : double;
  portaIMP : string;
begin
      if (not dm.cds_empresa.Active) then
        dm.cds_empresa.Open;
      {----- aqui monto o endereço-----}
      logradouro := '  ' + dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
      cep :=  '  ' + dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
      ' - ' + dm.cds_empresaCEP.Value;
      fone := '  (19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
      ' / ' + dm.cds_empresaFONE_2.Value;
      {------------------------DADOS DO CLIENTE--------------------------}
      clientecupom := '  ' + IntToStr(fVendas.cds_MovimentoCODCLIENTE.AsInteger) + '-' +
                   Copy(fVendas.cds_MovimentoNOMECLIENTE.AsString, 0, 36); //fVendas.cds_MovimentoNOMECLIENTE.AsString;

    //  doccli := 'CPF : ' + fVendas.cds_MovimentoCNPJ.AsString;
      Texto  := '----------------------------------------' ;
      Texto1 := '  ' + FormatDateTime('dd/mm/yyyy', scdsCr_procEMISSAO.Value) + '  Titulo.:  ' +
      scdsCr_procTITULO.AsString;
      Texto2 := '----------------------------------------' ;
      Texto4 := '  Produto  UN     Qtde   V.Un.    V.Total ' ;
      Texto5 := '  ' + DateTimeToStr(Now) + ' Total.: R$  ';
     // Texto5 := FormatDateTime('dd/mm/yyyy', scdsCr_procEMISSAO.Value) + ' Total.: R$   ' ;
      {-----------------------------------------------------------}
      {-------------------Imprimi Cabeçalho-----------------------}
      // Para gravar em arquivo
      //OpenDialog1.Execute;
      //AssignFile(IMPRESSORA, OpenDialog1.FileName);
     // AssignFile(IMPRESSORA,'COM1:');
  //   AssignFile ( IMPRESSORA, 'C:\venda.txt' );

   //   tipoimpressao := 'txt';

     if (dm.cds_parametro.Active) then
       dm.cds_parametro.Close;
     dm.cds_parametro.Params[0].AsString := 'IMPARQUIVO';
     dm.cds_parametro.Open;
     if (not dm.cds_parametro.Eof) then
     begin
       dlgSave1.Execute;
       AssignFile(IMPRESSORA, dlgSave1.FileName);
       dm.cds_parametro.Close;
     end
     else
     begin
       if (dm.cds_parametro.Active) then
         dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].Clear;
       dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
       dm.cds_parametro.Open;
       portaIMP := dm.cds_parametroDADOS.AsString;
       dm.cds_parametro.Close;
       AssignFile(IMPRESSORA,portaIMP);
     end;

     Rewrite(IMPRESSORA);
      Writeln(Impressora, c10cpi + '  VENDA');
      Writeln(IMPRESSORA);
      Writeln(Impressora, c17cpi + RemoveAcento(Format('  %-36s',[dm.cds_empresaRAZAO.Value])));
      Writeln(Impressora, c17cpi, logradouro);
      Writeln(Impressora, c17cpi, cep);
      Writeln(Impressora, c17cpi, fone);
     // Writeln(Impressora, c10cpi + Format('%-36s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, c17cpi, clientecupom);
      Writeln(Impressora, c17cpi, doccli);
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, c17cpi, texto1);
      if (dm.moduloUsado = 'AUTOMOTIVA') then
      begin
        Writeln(Impressora, c17cpi, '  Placa: ' + fVendas.MaskEdit1.Text);
        Writeln(Impressora, c17cpi, '  KM: ' + fVendas.cds_MovimentoCONTROLE.AsString);
      end;
      Writeln(Impressora, c17cpi, texto2);
      Writeln(Impressora, c17cpi, texto4);
      {-----------------------------------------------------------}
      {-------------------Imprimi itens do boleto-----------------}
      try
        fVendas.cds_Mov_det.First;
        while not fVendas.cds_Mov_det.Eof do
        begin
          fVendas.cds_Mov_det.RecordCount;
          texto3 := '';
          texto6 := '  ';
          //texto6 := Format('%-4s',[fVendas.cds_Mov_detCODPRO.Value]);
          texto3 := texto3 + Format('           %-2s',[fVendas.cds_Mov_detUN.Value]);
          texto3 := texto3 + Format('     %-6.2n',[fVendas.cds_Mov_detQUANTIDADE.AsFloat]);
          texto3 := texto3 + Format(' %-6.2n',[fVendas.cds_Mov_detPRECO.AsFloat]);
          texto3 := texto3 + Format('   %-6.2n',[fVendas.cds_Mov_detValorTotal.value]);
          //texto6 := texto6 + fVendas.cds_Mov_detDESCPRODUTO.Value;
          texto6 := texto6 + '  ' + Copy(fVendas.cds_Mov_detDESCPRODUTO.Value, 0, 36);       //descrição do produto
          Writeln(Impressora, c17cpi, RemoveAcento(texto6));
          Writeln(Impressora, c17cpi, RemoveAcento(texto3));//NOME DO PRODUTO
          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          fVendas.cds_Mov_det.next;
        end;
        texto3 := '';
        texto6 := '';
        {-----------------------------------------------------------}
        {-------------------Imprimi Cabeçalho-----------------------}
        Texto2 := '----------------------------------------' ;
        Texto3 := '  Vencimento  Status  Valor R$  ' ;
        Writeln(Impressora, c17cpi, texto2);
        Writeln(Impressora, c17cpi, texto3);
        {------------------------------------------------------}
        {-------------------Imprimi Parcelas -----------------------}
        scdsCr_proc.First;
        while not scdsCr_proc.Eof do
        begin
          texto3 := '';
          scdsCr_proc.RecordCount;
          // imprime
          Texto3 := '  ' + FormatDateTime('dd/mm/yyyy', scdsCr_procDATAVENCIMENTO.Value);
          Texto3 := '  ' + Texto3 + ' - '  + scdsCr_procSTATUS.Value;
          if (scdsCr_procSITUACAO.AsString = '7-') then
             Texto3 := Texto3 + ' - '  +
                    Format('%-6.2n',[scdsCr_procVALORRECEBIDO.AsFloat])
          else
             Texto3 := Texto3 + ' - '  +
                    Format('%-6.2n',[scdsCr_procVALORREC.AsFloat]);
          Writeln(Impressora, c17cpi, texto3);
          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          scdsCr_proc.next;
        end;
        {-----------------------------------------------------------}
        {-------------------Imprimi final do Pedido-----------------}
        total := fVendas.cds_Mov_detTotalPedido.Value;
        Writeln(Impressora, c17cpi, texto);
        Write(Impressora, c17cpi, texto5);
        Writeln(Impressora, c17cpi + Format('%-6.2n',[total]));
        texto3 := '';
        texto3 := '  Ass.:____________________________';
        Writeln(IMPRESSORA);
        Writeln(Impressora, c17cpi, texto3);
        // Pula linhas
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
      finally
        CloseFile(IMPRESSORA);
      end;

end;

procedure TfVendaFinalizar.DtSrcStateChange(Sender: TObject);
begin
  if DtSrc.State in [dsInsert, dsEdit] then
    BitBtn2.Enabled := False;
  if DtSrc.State in [dsBrowse] then
    BitBtn2.Enabled := True;
   btnImprimir.Enabled:=DtSrc.State in [dsBrowse];
   btnNotaFiscal.Enabled:=DtSrc.State in [dsBrowse];   
  inherited;

end;

procedure TfVendaFinalizar.cbPrazoChange(Sender: TObject);
begin
  inherited;
  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.Open;
  if (dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    if (dtsrc.State in [dsInsert, dsEdit]) then
      cdsN_PARCELA.asInteger := StrToInt(FloatToStr(dm.cdsPrazoValor.asFloat));
end;

procedure TfVendaFinalizar.CheckBox2Click(Sender: TObject);
begin
  inherited;
  if (CheckBox2.Checked = True) then
  begin
      dbDtaVencimento.Visible := False;
      cbPrazo.Visible := True;
  end
  else
  begin
      dbDtaVencimento.Visible := True;
      cbPrazo.Visible := False;
  end;
end;

procedure TfVendaFinalizar.notaFiscal;
var
  Save_Cursor:TCursor;
  codClienteNF, ultimoNumUsado: integer;
  serieNf: String;
  str_sql, numNf: String;
begin
  if (sqlBuscaNota.Active) then
    sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento, codCliente  from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
    QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (sqlBuscaNota.IsEmpty) then
  begin
    try
      codClienteNF := 0;
      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;    { Show hourglass cursor }

      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'SERIENFE';
      dm.cds_parametro.Open;

      if (dmnf.scds_serienfe.Active) then
        dmnf.scds_serienfe.Close;
      dmnf.scds_serienfe.Params[0].AsString := dm.cds_parametroD1.AsString;

      dmnf.scds_serienfe.Open;

      if (not dm.cds_parametro.IsEmpty) then
      begin
        if (dm.cds_parametroCONFIGURADO.AsString = 'N') then
        begin
          if (dmnf.scds_serie_proc.Active) then
            dmnf.scds_serie_proc.Close;
          dmnf.scds_serie_proc.Params[0].AsString := dm.cds_parametroD1.AsString;
          dmnf.scds_serie_proc.Open;
          if (not dmnf.scds_serie_proc.IsEmpty) then
          begin
            numNf := IntToStr(dmnf.scds_serie_procULTIMO_NUMERO.AsInteger + 1);

            str_sql := 'SELECT MAX(CAST(NOTASERIE AS INTEGER)) NUMNF FROM NOTAFISCAL ' +
                    ' where SERIE = ' + QuotedStr(dm.cds_parametroD1.AsString);
            if (dm.sqlBusca.Active) then
              dm.sqlBusca.Close;
            dm.sqlBusca.SQL.Clear;
            dm.sqlBusca.SQL.Add(str_sql);
            dm.sqlBusca.Open;
            ultimoNumUsado := dm.sqlBusca.fieldByName('NUMNF').AsInteger;
            if ((ultimoNumUsado + 1) < StrToInt(numNF)) then
            begin
              MessageDlg('O último número de nota emitido foi : ' + IntToSTr(ultimoNumUsado) +
              '. Verifique se a númeração está correta antes de continuar', mtWarning, [mbOK], 0);
            end;

            if (StrToInt(numNf) > dmnf.scds_serie_procULTIMO_NUMERO.AsInteger) then
            begin
              dmnf.scds_serie_proc.Edit;
              dmnf.scds_serie_procULTIMO_NUMERO.AsInteger := StrToInt(numNf);
              dmnf.scds_serie_proc.ApplyUpdates(0);
            end;
          end;
        end
        else begin
          numNf := IntToStr(cdsNOTAFISCAL.AsInteger);
        end;
        serieNf := dm.cds_parametroD1.AsString;
      end
      else
      begin
        MessageDlg('Cadastre o Parametro SERIENFE para prosseguir', mtWarning, [mbOK], 0);
        exit;
      end;
      if (numNf = '') then
      begin
        MessageDlg('Número da Série não encontrado.', mtWarning, [mbOK], 0);
        exit;
      end;
      // Nota Fiscal
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        if (DM.tipoVenda = 'VENDA') then
        begin
          str_sql := 'EXECUTE PROCEDURE GERA_NF_VENDA(';
          str_sql := str_sql + IntToStr(cdsCODCLIENTE.AsInteger);
          str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDATAVENDA.AsDateTime));
          str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDATAVENCIMENTO.AsDateTime));
          str_sql := str_sql + ', ' + QuotedStr(serieNF);
          str_sql := str_sql + ', ' + QuotedStr(numNf);
          str_sql := str_sql + ', ' + IntToStr(cdsCODMOVIMENTO.AsInteger) + ')';
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
        end;
        if (DM.tipoVenda = 'DEVOLUCAO') then
        begin
          str_sql := 'EXECUTE PROCEDURE GERA_NF_DEVOLUCAOVENDA(';
          str_sql := str_sql + IntToStr(cdsCODCLIENTE.AsInteger);
          str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDATAVENDA.AsDateTime));
          str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDATAVENCIMENTO.AsDateTime));
          str_sql := str_sql + ', ' + QuotedStr(serieNF);
          str_sql := str_sql + ', ' + QuotedStr(numNf);
          str_sql := str_sql + ', ' + IntToStr(cdsCODMOVIMENTO.AsInteger) + ')';
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
        end;
        dm.sqlsisAdimin.ExecuteDirect('update movimento set nfe = ' +
          QuotedStr(inttostr(dmnf.scds_serienfeNOTASERIE.AsInteger+1) + '-' + serieNF) +
          ' where CODMOVIMENTO = ' +  IntToStr(cdsCODMOVIMENTO.AsInteger));
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          Exit;
        end;
      end;
    if (sqlBuscaNota.Active) then
      sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select codMovimento, codCliente from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
      QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger)));
    sqlBuscaNota.Open;
    // Abrindo a tela da nota
    //****************** ver como vou ter o código do Movimento para abrir esta no
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end;
  fNotaf := TfNotaf.Create(Application);
  try
    fNotaF.codMovFin := sqlBuscaNota.Fields[0].AsInteger;
    fNotaF.codCliFin := sqlBuscaNota.Fields[1].AsInteger;

    if (not  dm.cds_empresa.Active) then
      dm.cds_empresa.open;
    fNotaf.cbFinanceiro.Checked := False;
    fNotaf.cbEstoque.Checked := False;
    fNotaf.btnProcurar.Enabled := False;
    if (dmnf.cds_nf.Active) then
    begin
      if(DMNF.cds_nfFRETE.asString <> '') then
        fNotaf.cboFrete.ItemIndex := StrToInt(DMNF.cds_nfFRETE.asString)
      else
        fNotaf.cboFrete.ItemIndex := -1;
    end;
    fNotaf.ShowModal;
    if (dmnf.cds_nfSTATUS.AsString = 'S') then
      fNotaf.RadioGroup1.ItemIndex := 0
    else
      fNotaf.RadioGroup1.ItemIndex := 1;
  finally
    DMNF.cds_nf.Close;
    dmnf.cds_nf.Params[0].Clear;
    dmnf.cds_nf.Params[1].Clear;
    fNotaf.Free;
  end;
end;

procedure TfVendaFinalizar.excluinf;
var
  str_sql : string;
begin
  excluiuNF := True;
  if (sqlBuscaNota.Active) then
    sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  if (dm.tipoVenda = 'VENDA') then
  begin
  sqlBuscaNota.SQL.Add('select m.codMovimento, m.codCliente, v.CODVENDA, ' +
    ' nf.PROTOCOLOENV, nf.PROTOCOLOCANC ' +
    '  from NOTAFISCAL nf, VENDA v, MOVIMENTO m ' +
    ' where nf.CODVENDA = v.CODVENDA ' +
    '   and v.CODMOVIMENTO = m.CODMOVIMENTO ' +
    '   and m.CODNATUREZA = 15 ' +
    '   and m.CONTROLE = ' +
    QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger)));
  end;
  if (dm.tipoVenda = 'DEVOLUCAO') then
  begin
    sqlBuscaNota.SQL.Add('select m.codMovimento, m.codCliente, v.CODVENDA ' +
    ' nf.PROTOCOLOENV, nf.PROTOCOLOCANC ' +
    '  from NOTAFISCAL nf, VENDA v, MOVIMENTO m ' +
    ' where nf.CODVENDA = v.CODVENDA ' +
    '   and v.CODMOVIMENTO = m.CODMOVIMENTO ' +
    '   and m.CODNATUREZA = 16 ' +
    '   and m.CONTROLE = ' +
    QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger)));
  end;
  sqlBuscaNota.Open;
  if (not sqlBuscaNota.IsEmpty) then
  begin
    if (sqlBuscaNota.Fields[3].AsString <> '') then
    begin
      MessageDlg('NF já enviada, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
      exit;
    end;
    if (sqlBuscaNota.Fields[4].AsString <> '') then
    begin
      MessageDlg('NF cancelada no SEFAZ, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
      exit;
    end;

    // Nota Fiscal
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'DELETE FROM NOTAFISCAL ';
      str_sql := str_sql + ' where CODVENDA = ' + inttostr(sqlBuscaNota.Fields[2].AsInteger);
      //str_sql := str_sql + ' where NOTASERIE = ' + inttostr(cdsNOTAFISCAL.AsInteger);
      //str_sql := str_sql + ' and CODCLIENTE = ' + inttostr(cdsCODCLIENTE.AsInteger);
      //str_sql := str_sql + ' and DTAEMISSAO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDATAVENDA.AsDateTime));
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM VENDA ';
      str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM MOVIMENTO ';
      str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
      ShowMessage('Nota Fiscal Excluída com suscesso');
      excluiuNF := True;
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para Excluir a Nota Fiscal.', mtError, [mbOK], 0);
      excluiuNF := False;
    end;
  end;
end;

procedure TfVendaFinalizar.JvCalcEdit1Exit(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.edPrecoColhedorExit(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    {Tira o 1% do Total Colhido.}
    if (CheckBox1.Checked = True) then
      edVlrColhedor.Value := (jvCalcEdit1.Value * 0.99) * edPrecoColhedor.Value
    else
      edVlrColhedor.Value := jvCalcEdit1.Value * edPrecoColhedor.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.JvCalcEdit2Exit(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendaFinalizar.JvCalcEdit3Exit(Sender: TObject;
  var Key: Char);
begin
  inherited;
  edVlrFrete.Value := jvCalcEdit2.Value * JvCalcEdit3.Value;
end;

procedure TfVendaFinalizar.edCodigoColhedorExit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    if (edCodigoColhedor.Text = '') then
    begin
      exit;
    end;
    if scds_forn_proc.Active then
      scds_forn_proc.Close;
    scds_forn_proc.Params[0].Clear;
    scds_forn_proc.Params[1].Clear;
    scds_forn_proc.Params[2].AsInteger:=StrToInt(edCodigoColhedor.Text);
    scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
    scds_forn_proc.Open;
    if scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cbNomeColhedor.Text := scds_forn_procNOMEFORNECEDOR.AsString;
    scds_forn_proc.Close;
  end

end;

procedure TfVendaFinalizar.edCodFretistaExit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    if (edCodFretista.Text = '') then
    begin
      exit;
    end;
    if scds_forn_proc.Active then
      scds_forn_proc.Close;
    scds_forn_proc.Params[0].Clear;
    scds_forn_proc.Params[1].Clear;
    scds_forn_proc.Params[2].AsInteger:=StrToInt(edCodFretista.Text);
    scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
    scds_forn_proc.Open;
    if scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cbNomeFretista.Text := scds_forn_procNOMEFORNECEDOR.AsString;
    scds_forn_proc.Close;
    end

end;

procedure TfVendaFinalizar.JvCalcEdit3Change(Sender: TObject);
begin
  inherited;
  edVlrColhedor.Value := jvCalcEdit2.Value * jvCalcEdit3.Value;
end;

procedure TfVendaFinalizar.JvCalcEdit2Change(Sender: TObject);
begin
  inherited;
  edVlrColhedor.Value := jvCalcEdit2.Value * jvCalcEdit3.Value;
end;

function TfVendaFinalizar.RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;

procedure TfVendaFinalizar.cdsAfterPost(DataSet: TDataSet);
var  FEstoque: TEstoque;
begin
  inherited;
end;

procedure TfVendaFinalizar.ImprimirPedido1Click(Sender: TObject);
var
  acompo : TRpLabel;
  valorextenco : Double;
begin
  inherited;

  tipoImpressao := '';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CUPOMPDV';
  dm.cds_parametro.Open;

  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'CUPOM';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'RECIBOPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'RECIBO';

  if (tipoImpressao = '') then
  begin
    ShowMessage('Parametro Tipo Impressão não configurado');
    exit;
  end;

  if (tipoImpressao = 'CUPOM') then
  begin
    imprimecupom;
  end;

  if (tipoImpressao = 'RECIBO') then
  begin
     if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'REL. VENDAS';
      dm.cds_parametro.Open;
      if dm.cds_parametro.IsEmpty then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Tipo de Impressão (PADRÃO ou CUPOM)';
        dm.cds_parametroPARAMETRO.AsString := 'REL. VENDAS';
        dm.cds_parametroDADOS.AsString := 'PADRÃO';
        dm.cds_parametro.ApplyUpdates(0);
      end;
      if dm.cds_parametroDADOS.AsString = 'PADRÃO' then
      begin
        VCLReport2.FileName := str_relatorio + 'impr_texto.rep';
        if (dm.moduloUsado = 'AGROPECUARIA') then
        begin
          valorextenco := cdsVALOR.AsFloat; //StrToFloat(DBEdit1.Text);
          acompo:=TRpLabel(VCLReport2.Report.FindComponent('TRpLabel28'));
          if Assigned(acompo) then
            acompo.Text:= EvExtenso1.GetExtenso(valorextenco);
        end;
        VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
        VCLReport2.Report.Params.ParamByName('PVENDA').Value := cdsCODVENDA.AsInteger;
        VCLReport2.Execute;
      end;
      if dm.cds_parametroDADOS.AsString = 'PERSONALIZADO' then
      begin
        VCLReport2.FileName := str_relatorio + 'recibo_venda.rep';
        VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
        VCLReport2.Report.Params.ParamByName('CODVENDA').Value := cdsCODVENDA.AsInteger;
        VCLReport2.Report.Params.ParamByName('CODID').Value := cdsCODCLIENTE.AsInteger;
        VCLReport2.Report.Params.ParamByName('N_COPIAS').Value := 2;
        VCLReport2.Execute;
      end;
  end;


{ if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'REL. VENDAS';
  dm.cds_parametro.Open;
  if dm.cds_parametro.IsEmpty then
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Tipo de Impressão (PADRÃO ou CUPOM)';
    dm.cds_parametroPARAMETRO.AsString := 'REL. VENDAS';
    dm.cds_parametroDADOS.AsString := 'PADRÃO';
    dm.cds_parametro.ApplyUpdates(0);
  end;
  if dm.cds_parametroDADOS.AsString = 'PADRÃO' then
  begin
    VCLReport2.FileName := str_relatorio + 'impr_texto.rep';
    if (dm.moduloUsado = 'AGROPECUARIA') then
    begin
      valorextenco := cdsVALOR.AsFloat; //StrToFloat(DBEdit1.Text);
      acompo:=TRpLabel(VCLReport2.Report.FindComponent('TRpLabel28'));
      if Assigned(acompo) then
        acompo.Text:= EvExtenso1.GetExtenso(valorextenco);
    end;
    VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport2.Report.Params.ParamByName('PVENDA').Value := cdsCODVENDA.AsInteger;
    VCLReport2.Execute;
  end;

  if dm.cds_parametroDADOS.AsString = 'CUPOM' then
  //   if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    portaimpr := dm.cds_parametroD2.AsString;
    tipoimpressao := dm.cds_parametroD1.AsString ;
    imprimecupom;
  end;
  if dm.cds_parametroDADOS.AsString = 'PERSONALIZADO' then
  begin
    VCLReport2.FileName := str_relatorio + 'recibo_venda.rep';
    VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport2.Report.Params.ParamByName('CODVENDA').Value := cdsCODVENDA.AsInteger;
    VCLReport2.Report.Params.ParamByName('CODID').Value := cdsCODCLIENTE.AsInteger;
    VCLReport2.Report.Params.ParamByName('N_COPIAS').Value := 2;
    VCLReport2.Execute;
  end;
  }
end;

procedure TfVendaFinalizar.ImprimirOrdemdeServio1Click(Sender: TObject);
begin
  fCarne := TfCarne.Create(Application);
  try
    if (fCarne.scdsCr_proc.Active) then
        fCarne.scdsCr_proc.Close;
    fCarne.scdsCr_proc.Params[0].AsInteger := cdsCODVENDA.AsInteger;
    fCarne.scdsCr_proc.Open;

    if (fCarne.buscaCli.Active) then
        fCarne.buscaCli.Close;
    fCarne.buscaCli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
    fCarne.buscaCli.Open;


    //fCarne.txtParcela.Caption := scdsCr_procVIA.AsString;
    //fCarne.txtNomeSacado.Caption := DM_MOV.c_vendaNOMECLIENTE.AsString;
    //fCarne.BoletoCarne.BeforePrint;
    fCarne.BoletoCarne.Preview();
    //fCarne.ShowModal;
  finally
    fCarne.Free;
  end;
end;

procedure TfVendaFinalizar.btnSairClick(Sender: TObject);
begin
  inherited;
  if (dmnf.cds_nf.Active) then
  begin
    dmnf.cds_nf.Close;  
    dmnf.cds_nf.Params[0].Clear;
    dmnf.cds_nf.Params[1].Clear;
  end;
end;

procedure TfVendaFinalizar.estoqueEstorna;
begin

end;

procedure TfVendaFinalizar.baixaEntrada;
var texto: String;
FRec : TReceberCls;
begin
  // Marco o Título
  Try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    Texto := 'UPDATE RECEBIMENTO SET DP = 0, USERID = ' + IntToStr(usulog) +
      ' WHERE CODVENDA = ' + IntToStr(cdsCODVENDA.AsInteger);
    dm.sqlsisAdimin.ExecuteDirect(Texto);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
  try
    FRec := TReceberCls.Create;
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      FRec := TReceberCls.Create;
      FRec.baixaTitulo(cdsENTRADA.AsFloat, //Valor
                              0, //Funrural
                              0, // Juros
                              0, // Desconto
                              0, // Perda
                              Now, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Baixa
                              Now, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Recebimento
                              Now, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Consolida
                              cdsFORMARECEBIMENTO.AsString,  // FormaRecebimento
                              cdsN_DOCUMENTO.AsString, //DM_MOV.c_vendaN_DOCUMENTO.AsString, // NÂº Documento
                              cdsCAIXA.AsInteger, // Caixa
                              cdsCODCLIENTE.AsInteger, // Codigo do Cliente
                              '7-',
                              usulog, ''); // Usuario Logado
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      Texto := 'UPDATE RECEBIMENTO SET DP = ' + 'null' + ', USERID = ' + 'null' +
        ' WHERE USERID   = ' + IntToStr(usulog) +
        '   AND CODVENDA = ' + IntToStr(cdsCODVENDA.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(Texto);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  Finally
    FRec.Free;
  end;
end;

procedure TfVendaFinalizar.ImprimirCupom1Click(Sender: TObject);
begin
  imprimecupom;
end;

procedure TfVendaFinalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (fVendas.cds_MovimentoCODMOVIMENTO.AsInteger > 0) then
    dm.EstoqueAtualiza(fVendas.cds_MovimentoCODMOVIMENTO.AsInteger);
  if (DtSrc.State in [dsEdit, dsInsert]) then
    DtSrc.DataSet.Cancel;
  scdsCr_proc.Params[0].Clear;
  cds.Params[0].Clear;
  cds.Params[1].Clear;
end;

procedure TfVendaFinalizar.btnCupomClick(Sender: TObject);
var str_sql : string;
begin
  if (sqlBuscaNota.Active) then
    sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento from MOVIMENTO where (CODNATUREZA = 7) AND CONTROLE = ' +
      QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (sqlBuscaNota.IsEmpty) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'EXECUTE PROCEDURE GERA_CUPOM(';
      str_sql := str_sql  + IntToStr(cdsCODMOVIMENTO.AsInteger) + ')';
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        Exit;
      end;
    end;
  end;

  //if (sqlBuscaNota.Active) then
      sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento from MOVIMENTO where (CODNATUREZA = 7) AND CONTROLE = ' +
    QuotedStr(IntToStr(cdsCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;

  fTerminal_Delivery := TfTerminal_Delivery.Create(Application);
  try
    fTerminal_Delivery.cds_Movimento.Close;
    fTerminal_Delivery.cds_Movimento.Params[0].AsInteger := sqlBuscaNota.Fields[0].AsInteger;
    fTerminal_Delivery.cds_Movimento.Open;

    fTerminal_Delivery.cds_Mov_det.Close;
    fTerminal_Delivery.cds_Mov_det.Params[0].Clear;
    fTerminal_Delivery.cds_Mov_det.Params[1].AsInteger := sqlBuscaNota.Fields[0].AsInteger;
    fTerminal_Delivery.cds_Mov_det.Open;

    if (dm.totalpago > 0) then
      fTerminal_Delivery.jvPago.Value := dm.totalpago
    else
      fTerminal_Delivery.jvPago.Text := fTerminal_Delivery.DBEdit4.Text;

    fTerminal_Delivery.ShowModal;
  finally
    fTerminal_Delivery.Free;
  end;
end;

end.
