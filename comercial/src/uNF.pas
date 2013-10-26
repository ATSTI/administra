{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit uNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCheckBox, ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvDBRadioPanel, FMTBcd, DB, Provider, DBClient, SqlExpr,
  JvEdit, JvDBSearchEdit, MMJPanel, Buttons, ComCtrls, Mask, DBCtrls,
  JvExMask, JvToolEdit, JvDBLookup, JvDBLookupComboEdit, Grids, DBGrids,
  rpcompobase, rpvclreport, Printers, JvCombobox, JvDBSearchComboBox,
  dxCore, dxButton, Menus, EExtenso, rplabelitem, DBLocal, DBLocalS;

type
  TfNF = class(TForm)
    PageControl1: TPageControl;
    tabitens: TTabSheet;
    tabnf: TTabSheet;
    Label3: TLabel;
    dbeProduto: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    Label18: TLabel;
    BitBtn2: TBitBtn;
    dbeSerie: TDBEdit;
    Label7: TLabel;
    btnSerie: TBitBtn;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    cbConta: TComboBox;
    Label17: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    GroupBox4: TGroupBox;
    DBEdit21: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label29: TLabel;
    Label30: TLabel;
    DBMemo1: TDBMemo;
    Label28: TLabel;
    GroupBox5: TGroupBox;
    Label31: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn9: TBitBtn;
    Label32: TLabel;
    ComboBox2: TComboBox;
    tabFinanceiro: TTabSheet;
    DBEdit22: TDBEdit;
    Label33: TLabel;
    DBEdit23: TDBEdit;
    Label34: TLabel;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label19: TLabel;
    Label27: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit27: TDBEdit;
    BitBtn6: TBitBtn;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    BitBtn5: TBitBtn;
    RadioButton1: TRadioButton;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    GroupBox2: TGroupBox;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    dbeUsuario: TDBEdit;
    DBEdit68: TDBEdit;
    MMJPanel1: TMMJPanel;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    MMJPanel2: TMMJPanel;
    rg: TRadioGroup;
    Label2: TLabel;
    dbeCliente: TDBEdit;
    DBEdit67: TDBEdit;
    BitBtn1: TBitBtn;
    cbFinanceiro: TJvCheckBox;
    cbEstoque: TJvCheckBox;
    MMJPanel3: TMMJPanel;
    btnCancelarNF: TBitBtn;
    btnExcluirNF: TBitBtn;
    btnGravarNF: TBitBtn;
    btnIncluirNF: TBitBtn;
    GroupBox7: TGroupBox;
    DBEdit53: TDBEdit;
    Label62: TLabel;
    BitBtn7: TBitBtn;
    DBEdit46: TDBEdit;
    GroupBox1: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit54: TDBEdit;
    Label56: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label57: TLabel;
    DBEdit49: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label60: TLabel;
    DBEdit52: TDBEdit;
    Label61: TLabel;
    DBEdit28: TDBEdit;
    DBEdit17: TDBEdit;
    btnImprimirNF: TBitBtn;
    BitBtn30: TBitBtn;
    Panel1: TPanel;
    BitBtn11: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    VCLReport1: TVCLReport;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    BitBtn22: TBitBtn;
    GroupBox9: TGroupBox;
    ComboBox5: TComboBox;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Finalizar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    ExcluiProduto1: TMenuItem;
    IncluiProduto1: TMenuItem;
    Oramento1: TMenuItem;
    MMJPanel4: TMMJPanel;
    BitBtn10: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Extenso: TEvExtenso;
    sqs_tit: TSQLDataSet;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    DBEdit30: TDBEdit;
    Label39: TLabel;
    sExportaMov: TSQLDataSet;
    sExportaMovCODMOVIMENTO: TIntegerField;
    sExportaMovDATAMOVIMENTO: TDateField;
    sExportaMovCODCLIENTE: TIntegerField;
    sExportaMovCODNATUREZA: TSmallintField;
    sExportaMovSTATUS: TSmallintField;
    sExportaMovCODUSUARIO: TSmallintField;
    sExportaMovCODVENDEDOR: TSmallintField;
    sExportaMovCODALMOXARIFADO: TIntegerField;
    sExportaMovCODFORNECEDOR: TIntegerField;
    sExportaMovDATA_SISTEMA: TSQLTimeStampField;
    sExportaMovCOD_VEICULO: TIntegerField;
    sExportaMovCONTROLE: TStringField;
    sExportaMovOBS: TStringField;
    pExportaMov: TDataSetProvider;
    cExportaMov: TClientDataSet;
    cExportaMovCODMOVIMENTO: TIntegerField;
    cExportaMovDATAMOVIMENTO: TDateField;
    cExportaMovCODCLIENTE: TIntegerField;
    cExportaMovCODNATUREZA: TSmallintField;
    cExportaMovSTATUS: TSmallintField;
    cExportaMovCODUSUARIO: TSmallintField;
    cExportaMovCODVENDEDOR: TSmallintField;
    cExportaMovCODALMOXARIFADO: TIntegerField;
    cExportaMovCODFORNECEDOR: TIntegerField;
    cExportaMovDATA_SISTEMA: TSQLTimeStampField;
    cExportaMovCOD_VEICULO: TIntegerField;
    cExportaMovCONTROLE: TStringField;
    cExportaMovOBS: TStringField;
    cMov: TClientDataSet;
    cMovCODMOVIMENTO: TIntegerField;
    cMovDATAMOVIMENTO: TDateField;
    cMovCODCLIENTE: TIntegerField;
    cMovCODNATUREZA: TSmallintField;
    cMovSTATUS: TSmallintField;
    cMovCODUSUARIO: TSmallintField;
    cMovCODVENDEDOR: TSmallintField;
    cMovCODALMOXARIFADO: TIntegerField;
    cMovCODFORNECEDOR: TIntegerField;
    cMovDATA_SISTEMA: TSQLTimeStampField;
    cMovCOD_VEICULO: TIntegerField;
    cMovCONTROLE: TStringField;
    cMovOBS: TStringField;
    pMov: TDataSetProvider;
    sMov: TSQLDataSet;
    sMovCODMOVIMENTO: TIntegerField;
    sMovDATAMOVIMENTO: TDateField;
    sMovCODCLIENTE: TIntegerField;
    sMovCODNATUREZA: TSmallintField;
    sMovSTATUS: TSmallintField;
    sMovCODUSUARIO: TSmallintField;
    sMovCODVENDEDOR: TSmallintField;
    sMovCODALMOXARIFADO: TIntegerField;
    sMovCODFORNECEDOR: TIntegerField;
    sMovDATA_SISTEMA: TSQLTimeStampField;
    sMovCOD_VEICULO: TIntegerField;
    sMovCONTROLE: TStringField;
    sMovOBS: TStringField;
    sExportaMovDet: TSQLDataSet;
    sExportaMovDetCODDETALHE: TIntegerField;
    sExportaMovDetCODMOVIMENTO: TIntegerField;
    sExportaMovDetCODALMOXARIFADO: TSmallintField;
    sExportaMovDetCODPRODUTO: TIntegerField;
    sExportaMovDetQUANTIDADE: TFloatField;
    sExportaMovDetPRECO: TFloatField;
    sExportaMovDetICMS: TFloatField;
    sExportaMovDetUN: TStringField;
    sExportaMovDetQTDE_ALT: TFloatField;
    sExportaMovDetBAIXA: TStringField;
    sExportaMovDetPRECOCUSTO: TFloatField;
    sExportaMovDetVLRESTOQUE: TFloatField;
    sExportaMovDetQTDEESTOQUE: TFloatField;
    sExportaMovDetDESCPRODUTO: TStringField;
    sExportaMovDetPRECOULTIMACOMPRA: TFloatField;
    sExportaMovDetVLR_BASE: TFloatField;
    pExportaMovDet: TDataSetProvider;
    cExportaMovDet: TClientDataSet;
    cExportaMovDetCODDETALHE: TIntegerField;
    cExportaMovDetCODMOVIMENTO: TIntegerField;
    cExportaMovDetCODALMOXARIFADO: TSmallintField;
    cExportaMovDetCODPRODUTO: TIntegerField;
    cExportaMovDetQUANTIDADE: TFloatField;
    cExportaMovDetPRECO: TFloatField;
    cExportaMovDetICMS: TFloatField;
    cExportaMovDetUN: TStringField;
    cExportaMovDetQTDE_ALT: TFloatField;
    cExportaMovDetBAIXA: TStringField;
    cExportaMovDetPRECOCUSTO: TFloatField;
    cExportaMovDetVLRESTOQUE: TFloatField;
    cExportaMovDetQTDEESTOQUE: TFloatField;
    cExportaMovDetDESCPRODUTO: TStringField;
    cExportaMovDetPRECOULTIMACOMPRA: TFloatField;
    cExportaMovDetVLR_BASE: TFloatField;
    cMovDet: TClientDataSet;
    cMovDetCODDETALHE: TIntegerField;
    cMovDetCODMOVIMENTO: TIntegerField;
    cMovDetCODALMOXARIFADO: TSmallintField;
    cMovDetCODPRODUTO: TIntegerField;
    cMovDetQUANTIDADE: TFloatField;
    cMovDetPRECO: TFloatField;
    cMovDetICMS: TFloatField;
    cMovDetUN: TStringField;
    cMovDetQTDE_ALT: TFloatField;
    cMovDetBAIXA: TStringField;
    cMovDetPRECOCUSTO: TFloatField;
    cMovDetVLRESTOQUE: TFloatField;
    cMovDetQTDEESTOQUE: TFloatField;
    cMovDetDESCPRODUTO: TStringField;
    cMovDetPRECOULTIMACOMPRA: TFloatField;
    cMovDetVLR_BASE: TFloatField;
    pMovDet: TDataSetProvider;
    sMovDet: TSQLDataSet;
    sMovDetCODDETALHE: TIntegerField;
    sMovDetCODMOVIMENTO: TIntegerField;
    sMovDetCODALMOXARIFADO: TSmallintField;
    sMovDetCODPRODUTO: TIntegerField;
    sMovDetQUANTIDADE: TFloatField;
    sMovDetPRECO: TFloatField;
    sMovDetICMS: TFloatField;
    sMovDetUN: TStringField;
    sMovDetQTDE_ALT: TFloatField;
    sMovDetBAIXA: TStringField;
    sMovDetPRECOCUSTO: TFloatField;
    sMovDetVLRESTOQUE: TFloatField;
    sMovDetQTDEESTOQUE: TFloatField;
    sMovDetDESCPRODUTO: TStringField;
    sMovDetPRECOULTIMACOMPRA: TFloatField;
    sMovDetVLR_BASE: TFloatField;
    sExportaVenda: TSQLDataSet;
    sExportaVendaCODVENDA: TIntegerField;
    sExportaVendaCODMOVIMENTO: TIntegerField;
    sExportaVendaCODCLIENTE: TIntegerField;
    sExportaVendaDATAVENDA: TDateField;
    sExportaVendaDATAVENCIMENTO: TDateField;
    sExportaVendaNUMEROBORDERO: TIntegerField;
    sExportaVendaBANCO: TSmallintField;
    sExportaVendaCODVENDEDOR: TSmallintField;
    sExportaVendaSTATUS: TSmallintField;
    sExportaVendaCODUSUARIO: TSmallintField;
    sExportaVendaDATASISTEMA: TDateField;
    sExportaVendaVALOR: TFloatField;
    sExportaVendaNOTAFISCAL: TIntegerField;
    sExportaVendaSERIE: TStringField;
    sExportaVendaDESCONTO: TFloatField;
    sExportaVendaCODCCUSTO: TSmallintField;
    sExportaVendaN_PARCELA: TSmallintField;
    sExportaVendaOPERACAO: TStringField;
    sExportaVendaFORMARECEBIMENTO: TStringField;
    sExportaVendaN_DOCUMENTO: TStringField;
    sExportaVendaCAIXA: TSmallintField;
    sExportaVendaMULTA_JUROS: TFloatField;
    sExportaVendaAPAGAR: TFloatField;
    sExportaVendaVALOR_PAGAR: TFloatField;
    sExportaVendaENTRADA: TFloatField;
    sExportaVendaN_BOLETO: TStringField;
    sExportaVendaSTATUS1: TStringField;
    sExportaVendaCONTROLE: TStringField;
    sExportaVendaOBS: TStringField;
    sExportaVendaVALOR_ICMS: TFloatField;
    sExportaVendaVALOR_FRETE: TFloatField;
    sExportaVendaVALOR_SEGURO: TFloatField;
    sExportaVendaOUTRAS_DESP: TFloatField;
    sExportaVendaVALOR_IPI: TFloatField;
    sExportaVendaPRAZO: TStringField;
    pExportaVenda: TDataSetProvider;
    cExportaVenda: TClientDataSet;
    cExportaVendaCODVENDA: TIntegerField;
    cExportaVendaCODMOVIMENTO: TIntegerField;
    cExportaVendaCODCLIENTE: TIntegerField;
    cExportaVendaDATAVENDA: TDateField;
    cExportaVendaDATAVENCIMENTO: TDateField;
    cExportaVendaNUMEROBORDERO: TIntegerField;
    cExportaVendaBANCO: TSmallintField;
    cExportaVendaCODVENDEDOR: TSmallintField;
    cExportaVendaSTATUS: TSmallintField;
    cExportaVendaCODUSUARIO: TSmallintField;
    cExportaVendaDATASISTEMA: TDateField;
    cExportaVendaVALOR: TFloatField;
    cExportaVendaNOTAFISCAL: TIntegerField;
    cExportaVendaSERIE: TStringField;
    cExportaVendaDESCONTO: TFloatField;
    cExportaVendaCODCCUSTO: TSmallintField;
    cExportaVendaN_PARCELA: TSmallintField;
    cExportaVendaOPERACAO: TStringField;
    cExportaVendaFORMARECEBIMENTO: TStringField;
    cExportaVendaN_DOCUMENTO: TStringField;
    cExportaVendaCAIXA: TSmallintField;
    cExportaVendaMULTA_JUROS: TFloatField;
    cExportaVendaAPAGAR: TFloatField;
    cExportaVendaVALOR_PAGAR: TFloatField;
    cExportaVendaENTRADA: TFloatField;
    cExportaVendaN_BOLETO: TStringField;
    cExportaVendaSTATUS1: TStringField;
    cExportaVendaCONTROLE: TStringField;
    cExportaVendaOBS: TStringField;
    cExportaVendaVALOR_ICMS: TFloatField;
    cExportaVendaVALOR_FRETE: TFloatField;
    cExportaVendaVALOR_SEGURO: TFloatField;
    cExportaVendaOUTRAS_DESP: TFloatField;
    cExportaVendaVALOR_IPI: TFloatField;
    cExportaVendaPRAZO: TStringField;
    pVenda: TDataSetProvider;
    sVenda: TSQLDataSet;
    sVendaCODVENDA: TIntegerField;
    sVendaCODMOVIMENTO: TIntegerField;
    sVendaCODCLIENTE: TIntegerField;
    sVendaDATAVENDA: TDateField;
    sVendaDATAVENCIMENTO: TDateField;
    sVendaNUMEROBORDERO: TIntegerField;
    sVendaBANCO: TSmallintField;
    sVendaCODVENDEDOR: TSmallintField;
    sVendaSTATUS: TSmallintField;
    sVendaCODUSUARIO: TSmallintField;
    sVendaDATASISTEMA: TDateField;
    sVendaVALOR: TFloatField;
    sVendaNOTAFISCAL: TIntegerField;
    sVendaSERIE: TStringField;
    sVendaDESCONTO: TFloatField;
    sVendaCODCCUSTO: TSmallintField;
    sVendaN_PARCELA: TSmallintField;
    sVendaOPERACAO: TStringField;
    sVendaFORMARECEBIMENTO: TStringField;
    sVendaN_DOCUMENTO: TStringField;
    sVendaCAIXA: TSmallintField;
    sVendaMULTA_JUROS: TFloatField;
    sVendaAPAGAR: TFloatField;
    sVendaVALOR_PAGAR: TFloatField;
    sVendaENTRADA: TFloatField;
    sVendaN_BOLETO: TStringField;
    sVendaSTATUS1: TStringField;
    sVendaCONTROLE: TStringField;
    sVendaOBS: TStringField;
    sVendaVALOR_ICMS: TFloatField;
    sVendaVALOR_FRETE: TFloatField;
    sVendaVALOR_SEGURO: TFloatField;
    sVendaOUTRAS_DESP: TFloatField;
    sVendaVALOR_IPI: TFloatField;
    sVendaPRAZO: TStringField;
    cVenda: TClientDataSet;
    cVendaCODVENDA: TIntegerField;
    cVendaCODMOVIMENTO: TIntegerField;
    cVendaCODCLIENTE: TIntegerField;
    cVendaDATAVENDA: TDateField;
    cVendaDATAVENCIMENTO: TDateField;
    cVendaNUMEROBORDERO: TIntegerField;
    cVendaBANCO: TSmallintField;
    cVendaCODVENDEDOR: TSmallintField;
    cVendaSTATUS: TSmallintField;
    cVendaCODUSUARIO: TSmallintField;
    cVendaDATASISTEMA: TDateField;
    cVendaVALOR: TFloatField;
    cVendaNOTAFISCAL: TIntegerField;
    cVendaSERIE: TStringField;
    cVendaDESCONTO: TFloatField;
    cVendaCODCCUSTO: TSmallintField;
    cVendaN_PARCELA: TSmallintField;
    cVendaOPERACAO: TStringField;
    cVendaFORMARECEBIMENTO: TStringField;
    cVendaN_DOCUMENTO: TStringField;
    cVendaCAIXA: TSmallintField;
    cVendaMULTA_JUROS: TFloatField;
    cVendaAPAGAR: TFloatField;
    cVendaVALOR_PAGAR: TFloatField;
    cVendaENTRADA: TFloatField;
    cVendaN_BOLETO: TStringField;
    cVendaSTATUS1: TStringField;
    cVendaCONTROLE: TStringField;
    cVendaOBS: TStringField;
    cVendaVALOR_ICMS: TFloatField;
    cVendaVALOR_FRETE: TFloatField;
    cVendaVALOR_SEGURO: TFloatField;
    cVendaOUTRAS_DESP: TFloatField;
    cVendaVALOR_IPI: TFloatField;
    cVendaPRAZO: TStringField;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    sLotes: TSQLDataSet;
    pLotes: TDataSetProvider;
    cLotes: TClientDataSet;
    cLotesCODLOTE: TIntegerField;
    cLotesLOTE: TStringField;
    cLotesCODPRODUTO: TIntegerField;
    cLotesDATAFABRICACAO: TDateField;
    cLotesDATAVENCIMENTO: TDateField;
    cLotesESTOQUE: TFloatField;
    cLotesPRECO: TFloatField;
    cLotesNOTAFISCAL: TStringField;
    sLotesCODLOTE: TIntegerField;
    sLotesLOTE: TStringField;
    sLotesCODPRODUTO: TIntegerField;
    sLotesDATAFABRICACAO: TDateField;
    sLotesDATAVENCIMENTO: TDateField;
    sLotesESTOQUE: TFloatField;
    sLotesPRECO: TFloatField;
    sLotesNOTAFISCAL: TStringField;
    BitBtn16: TBitBtn;
    sLote: TSQLDataSet;
    dLote: TDataSetProvider;
    cLote: TClientDataSet;
    sLoteESTOQUE: TFloatField;
    cLoteESTOQUE: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure buscaserieNF;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBLookupComboEdit4Change(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbFinanceiroClick(Sender: TObject);
    procedure btnIncluirNFClick(Sender: TObject);
    procedure btnCancelarNFClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure rgClick(Sender: TObject);
    procedure btnGravarNFClick(Sender: TObject);
    procedure btnImprimirNFClick(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnExcluirCliClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarcliClick(Sender: TObject);
    procedure BitBtn30Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnExcluirNFClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
  private
    { Private declarations }
    usalote, matPrima, inseridoMatPrima, tipoVenda, jaCarregados, usaCC, contaS_pend: string;
    procedure baixamatprimas(tipomat: string; codmovt: integer);
    Procedure incluimovimento;
    Procedure incluivenda;
    Procedure incluinf;
    procedure proccliente;
    procedure gravamovimento;
    procedure gravamov_detalhe;
    procedure gravavenda;
    procedure calcula_icms(Estado: String);
    procedure CarregaParametros;
    procedure exportatabelas;
    procedure lote;
  public
      qtde, vrr : double;
    { Public declarations }
  end;

var
  fNF: TfNF;
  //Variaveis da venda
  valorUnitario: Double;
  codmovdet, codserv, codmd, centro_receita, cod_nat, cod_vendedor_padrao, cod_cli : integer;
  natureza, contas_pendentes, nome_vendedor_padrao, valor_fatura, fatura_NF: string;
  // variaveis da venda finalizar
  prazo, valor: double;
  terminal, data_movimento, varcancela : string;
  codigo_cliente, codigo_moviemento : integer;
  diasAumenta : integer;
  DtaTemp : TDateTime;

implementation

uses UDm, UDMNF, sCtrlResize, uUtils, ufprocura_prod, uProcurar,
  uProcurar_nf, uEstado, uRegiaoCadastro, uFiltroMovimento, uImpr_Boleto,
  unitExclusao, uLotes, uClienteVeiculo, uMostra_Contas, uAtsAdmin;

{$R *.dfm}

procedure TfNF.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fNF));
  PageControl1.ActivePage := tabitens;
  if (rg.ItemIndex = 1) then
     Label2.Caption := 'Cliente :';
  usaLote := 'N';
  jaCarregados := 'NAO';
  if (dm.moduloUsado = 'AUTOMOTIVA') then
    GroupBox5.Visible := True;
  if (dm.emppadrao <> '') then
  begin
    ComboBox5.Text := dm.emppadrao;
    ComboBox5.Enabled := False;
    
  end;

  if (cbFinanceiro.Checked = True) then
  begin
    tabFinanceiro.TabVisible := True;
    incluivenda;
  end
  else
  begin
    tabFinanceiro.TabVisible := False;
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
  end;
    
end;

procedure TfNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {if (DMNF.cds_cli.State in [dsInsert, dsEdit]) then
      DMNF.cds_cli.Cancel;
  if (dmnf.cds_cli.Active) then
      dmnf.cds_cli.Close; }
  if (DMNF.cds_nf.State in [dsInsert, dsEdit]) then
      DMNF.cds_nf.Cancel;
  if (DMNF.cds_venda.State in [dsInsert, dsEdit]) then
      DMNF.cds_venda.Cancel;
  if (DMNF.cds_Mov_det.State in [dsInsert, dsEdit]) then
      DMNF.cds_Mov_det.Cancel;
  if (DMNF.cds_Movimento.State in [dsInsert, dsEdit]) then
      DMNF.cds_Movimento.Cancel;
  DMNF.cds_nf.Close;
  DMNF.cds_venda.Close;
  DMNF.cds_Mov_det.Close;
  DMNF.cds_Movimento.Close;
end;

procedure TfNF.btnIncluirClick(Sender: TObject);
begin
  if (cbFinanceiro.Checked = True) then
  begin
    tabFinanceiro.TabVisible := True;
    incluivenda;
  end
  else
  begin
    tabFinanceiro.TabVisible := False;
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
  end;

  // Pego os parametros para Lanç. Entrada
  if (jaCarregados <> 'SIM') then
    CarregaParametros;
  incluimovimento;
  BitBtn1.Click;
end;

procedure TfNF.incluimovimento;
begin
  if (dmnf.cds_venda.Active) then
    dmnf.cds_venda.close;

  if DMNF.DtSrc.DataSet.State in [dsInactive] then
    DMNF.DtSrc.DataSet.Open;

  DMNF.DtSrc.DataSet.Append;
  DMNF.cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
  DMNF.cds_MovimentoDESCNATUREZA.AsString := natureza;
  DMNF.cds_MovimentoCODUSUARIO.AsInteger := usulog;
  DMNF.cds_MovimentoCODVENDEDOR.AsInteger := usulog;
  DMNF.cds_MovimentoNOMEUSUARIO.AsString := nome_user;
  DMNF.cds_MovimentoCOD_VEICULO.AsInteger := 0;
  if DMNF.cds_Mov_det.Active then
    DMNF.cds_Mov_det.Close;
  DMNF.cds_Mov_det.Params[0].Clear;
  DMNF.cds_Mov_det.Params[1].Clear;
  if DMNF.DtSrc1.DataSet.State in [dsInactive] then
  begin
    DMNF.DtSrc1.DataSet.Open;
    DMNF.DtSrc1.DataSet.Append;
  end;
  if DMNF.DtSrc1.DataSet.State in [dsBrowse] then
      DMNF.DtSrc1.DataSet.Append;
  // Insert na table vendas
  incluivenda;
  BitBtn1.Enabled := true;
  btnProdutoProcura.Enabled := true;
  BitBtn2.Enabled := true;
  dbEdit17.Text := '';
end;

procedure TfNF.incluinf;
begin
  dmnf.cds_nf.Append;
  DBEdit15.SetFocus;
end;

procedure TfNF.incluivenda;
begin
  if DMNF.DtSrcVenda.DataSet.State in [dsInactive] then
  begin
    DMNF.DtSrcVenda.DataSet.Open;
    DMNF.DtSrcVenda.DataSet.Append;
  end;
  if DMNF.DtSrcVenda.DataSet.State in [dsBrowse] then
    DMNF.DtSrcVenda.DataSet.Append;

  DMNF.cds_vendaDATASISTEMA.AsDateTime := Now;
  DMNF.cds_vendaDESCONTO.AsFloat := 0;
  DMNF.cds_vendaMULTA_JUROS.AsFloat := 0;
  DMNF.cds_vendaENTRADA.AsFloat := 0;
  DMNF.cds_vendaVALOR_PAGAR.AsFloat := 0;
  DMNF.cds_vendaAPAGAR.AsFloat := 0;
  DMNF.cds_vendaN_PARCELA.AsInteger := 1;
  DMNF.cds_vendaBANCO.AsInteger := 0;
  DMNF.cds_vendaDATAVENDA.AsDateTime := now;
  DMNF.cds_vendaDATAVENCIMENTO.AsDateTime := now;
  DMNF.cds_vendaSTATUS.AsInteger:=0;

  if (not Dm.parametro.Active) then
    dm.parametro.Open;
  dm.parametro.Locate('PARAMETRO', 'SERIEPADRAO', [loCaseInsensitive]);
  dbeSerie.Text := dm.parametroDADOS.AsString;
  DMNF.cds_vendaSERIE.AsString := dm.parametroDADOS.AsString;
  { 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----}
  dbeUsuario.Text := IntToStr(usulog);
  dbEdit68.Text := nome_user;
  { ---- ********************************************************************* ----}
   buscaserieNF;

end;

procedure TfNF.btnNovoClick(Sender: TObject);
begin
  {if (matPrima = 'SIM') then
    inseridoMatPrima := 'SIM'; }
  if DMNF.DtSrc1.State in [dsInsert, dsEdit] then
  begin
    if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
      DMNF.cds_Movimento.Edit;
    DMNF.DtSrc1.DataSet.Post;
    // Esta Varíavel é pra não executar o insereMatPrima repetidas vezes
    {if (inseridoMatPrima = 'SIM') then
    if (matPrima = 'SIM') then
    begin
      insereMatPrima;
    end; }
    DMNF.DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;

  if DMNF.DtSrc1.State in [dsBrowse] then
  begin
   if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
    DMNF.cds_Movimento.Edit;
    DMNF.DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;

end;

procedure TfNF.BitBtn8Click(Sender: TObject);
begin
  if DMNF.DtSrc.DataSet.State in [dsBrowse] then
     DMNF.DtSrc.DataSet.edit;

  if  MessageDlg('Confirma a exclusão do item ''' + DMNF.cds_Mov_detDESCPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
     DMNF.DtSrc1.DataSet.Delete;
end;

procedure TfNF.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  //sCtrlResize.CtrlResize(TForm(fNF));
  inseridoMatPrima := 'NAO';
  codmovdet := 1999999;
  codserv := 1999999;
  codmd := 1999999;
  PageControl1.ActivePageIndex := 0;
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
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
  dm.cds_parametro.Close;
  utilcrtitulo.Free;
  {------Pesquisando na tab Parametro se usa Mostrar Contas Pendentes ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTAS PENDENTES';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    contas_pend := 'SIM';

end;

procedure TfNF.baixamatprimas(tipomat: string; codmovt: integer);
begin

end;

procedure TfNF.dbeProdutoExit(Sender: TObject);
begin
  if (DMNF.dtSrc1.State in [dsInsert, dsEdit]) then
  begin
    //varonde := 'compra';
    //var_F := 'venda';
    if (dbeProduto.Text = '') then
    begin
      exit;
    end;
    if DMNF.DtSrc1.DataSet.State in [dsInactive] then
      if dbeProduto.Text='' then exit;

    if DMNF.DtSrc1.DataSet.State in [dsBrowse] then
       DMNF.DtSrc1.DataSet.Edit;
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].AsInteger := 0;
      dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnProdutoProcura.Click;
        exit;
      end;
      DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
      DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
      DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
      DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
      DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
      DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
      DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
      if (DMNF.cds_MovimentoCONTROLE.AsString <> '') then
         DMNF.cds_Mov_detLOTE.AsString := DMNF.cds_MovimentoCONTROLE.AsString;
      if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
         DMNF.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         DMNF.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
      DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      //Usa Lote ??
      if (dm.scds_produto_procLOTES.AsString <> 'S') then
      begin
        usaLote := 'S';
        dm.scds_produto_proc.Close;
        if dbeProduto.Text = '' then
           dbeProduto.SetFocus;
      end
      else begin
        Bitbtn4.Click;
      end;
  end;
end;

procedure TfNF.buscaserieNF;
begin
  if DMNF.DtSrc.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then  begin
      if DMNF.scds_serie_proc.Active then
        DMNF.scds_serie_proc.Close;
      DMNF.scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
      DMNF.scds_serie_proc.Open;
      if DMNF.scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      DMNF.cds_vendaSERIE.AsString := DMNF.scds_serie_procSERIE.AsString;
      //É nota fiscal ?
      {if DMNF.scds_serie_procNOTAFISCAL.AsInteger=0 then
      begin
        //    btnImprimir.Enabled:=False;
        btnNotaFiscal.Enabled:=True;
        end
        else
        begin
        //    btnImprimir.Enabled:=True;
        btnNotaFiscal.Enabled:=False;
      end;}
      DMNF.cds_vendaNOTAFISCAL.AsInteger := DMNF.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;

end;

procedure TfNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (PageControl1.ActivePage = tabitens) then
 begin
   if (key = #13) then
   begin
      if DMNF.DtSrc1.DataSet.State in [dsInactive] then
        exit
      else
      if (dbeProduto.Text = '') then
      begin
         if (dbeProduto.Focused) then
           btnProdutoProcura.Click
         else
         begin
          key:= #0;
          SelectNext((Sender as TwinControl),True,True);
         end; 
      end
      else
      begin
        key:= #0;
        SelectNext((Sender as TwinControl),True,True);
     end;
   end;
 end
 else
 begin
   if (key = #13) then
   begin
     key:= #0;
     SelectNext((Sender as TwinControl),True,True);
   end;
 end;
end;

procedure TfNF.JvDBLookupComboEdit4Change(Sender: TObject);
begin
   dmnf.cds_MovimentoCODCLIENTE.AsInteger := dmnf.cClienteCODCLIENTE.AsInteger;
end;

procedure TfNF.btnProdutoProcuraClick(Sender: TObject);
begin
  if dmnf.DtSrc1.DataSet.State in [dsInactive] then
   exit;
  fProcura_prod.cbTipo.ItemIndex := 4;   
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel2.Visible := True;
  fProcura_prod.Panel1.Visible := False;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  var_F := 'formnf';
  dmnf.cds_Mov_detLOTE.AsString := '';
  fProcura_prod.BitBtn1.Click;  
  fProcura_prod.ShowModal;
  // Usa Lote
  if (fProcura_prod.cds_procLOTES.AsString <> 'S') then
  begin
    usaLote := 'S';
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
    if dmnf.cds_Mov_det.State in [dsInsert] then
      DBEdit9.SetFocus;
    if dmnf.cds_Mov_det.State in [dsBrowse] then
      btnNovo.SetFocus;
  end
  else begin
    Bitbtn4.SetFocus;
  end;
end;

procedure TfNF.BitBtn1Click(Sender: TObject);
begin
  if (dmnf.cds_Movimento.State in [dsInsert, dsEdit]) then
  begin
    proccliente;
    if contas_pend = 'SIM' then
    begin
      //**********************************************************
      // abre tabela e mostra se a contas pendentes
      if fMostra_Contas.ClientDataSet1.Active then
        fMostra_Contas.ClientDataSet1.Close;
      fMostra_Contas.ClientDataSet1.Params[0].AsDate := Now;
      fMostra_Contas.ClientDataSet1.Params[1].AsInteger := dmNf.cds_MovimentoCODCLIENTE.AsInteger;
      fMostra_Contas.ClientDataSet1.Open;
      if not fMostra_Contas.ClientDataSet1.IsEmpty then
         fMostra_Contas.ShowModal;
    end;
  end;
end;

procedure TfNF.proccliente;
begin
  DM.varNomeCliente := '';
  dm.codcli := 0;

  fProcurar_nf:= TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
   // varform := 'venda';
    //codcli := 0;
    //nomecli := '';
    if (fProcurar_nf.ShowModal = mrOK) then
    begin
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
      if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
        dmnf.cds_venda.Cancel;
        dmnf.cds_Movimento.Cancel;
        dmnf.cds_Mov_det.Cancel;
        exit;
      end;

      if (dm.BlVendaCadImcomp = 'S') then
      begin
        if ((dmnf.scds_cli_procCNPJ.IsNull) or (dmnf.scds_cli_procLOGRADOURO.IsNull)) then
        begin
          MessageDlg('Cliente com CPF/CNPJ ou Endereço faltando no cadastro.', mtError, [mbOK], 0);
          dmnf.cds_venda.Cancel;
          dmnf.cds_Movimento.Cancel;
          exit;
        end;
      end;
    end;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;

  if dmnf.dtSrc.State=dsBrowse then
    dmnf.cds_Movimento.Edit;
  prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
  dmnf.cds_MovimentoCODCLIENTE.AsInteger := dm.codcli;
  dmnf.cds_MovimentoNOMECLIENTE.AsString := dm.varNomeCliente;
  dbeProduto.SetFocus;


  if (dm.moduloUsado = 'AUTOMOTIVA') then
    MaskEdit1.SetFocus;
end;

procedure TfNF.btnGravarClick(Sender: TObject);
var strTit , strSql : string;
begin
  if (DBEdit2.Text = '') then
    buscaserieNF;
  //if (cbFinanceiro.Checked = True) then
  if (DBEdit2.Text = '') then
  begin
    MessageDlg('Para efetuar uma venda é preciso Preencha os campoa Série e Nota Fiscal.', mtWarning, [mbOK], 0);
    exit;
  end
  else begin
    strTit := IntToStr(dmnf.cds_vendaNOTAFISCAL.AsInteger);
    begin
      strSql := 'SELECT NOTAFISCAL FROM VENDA where NOTAFISCAL = ' ;
      strSql := strSql + QuotedStr(strTit) + ' and SERIE = ' + QuotedStr(dmnf.cds_vendaSERIE.AsString);
      if sqs_tit.Active then
        sqs_tit.Close;
      sqs_tit.CommandText := strSql;
      sqs_tit.Open;
      if not sqs_tit.IsEmpty then
      begin
        strSql := 'SELECT MAX(NOTAFISCAL) FROM VENDA where ' ;
        strSql := strSql + ' SERIE = ' + QuotedStr(dmnf.cds_vendaSERIE.AsString);
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
  if (dmnf.cds_Mov_detCODPRO.AsString = '') then
    dmnf.cds_Mov_det.cancel;
  if (dmnf.cds_Mov_detCODPRO.AsString <> '') then
   if (dmnf.cds_Mov_det.State in [dsInsert]) then
    dmnf.cds_Mov_det.post;

 { if (dmnf.cds_Mov_detCODPRO.AsString = '') then
    if (dmnf.cds_Mov_det.State in [dsInsert]) then
      dmnf.cds_Mov_det.Cancel;}
 // Grava o Movimento
 gravamovimento;
 // Grava o Movimento Detalhe
 gravamov_detalhe;
 // Salvar Venda
 dmnf.cds_vendaVALOR.AsFloat := dmnf.cds_vendaVALOR.AsFloat +
   dmnf.cds_vendaVALOR_FRETE.AsFloat +
   dmnf.cds_vendaVALOR_SEGURO.AsFloat +
   dmnf.cds_vendaOUTRAS_DESP.AsFloat +
   dmnf.cds_vendaVALOR_IPI.AsFloat;
 dmnf.cds_vendaVALOR_PAGAR.AsFloat := dmnf.cds_vendaVALOR.AsFloat -
   dmnf.cds_vendaENTRADA.AsFloat + dmnf.cds_vendaMULTA_JUROS.AsFloat -
   dmnf.cds_vendaDESCONTO.AsFloat;
 if (rg.ItemIndex = 1) then
 begin
     gravavenda;
     tabnf.Enabled := True;
     tabFinanceiro.Enabled := True;
 end;
  if (DMNF.cds_Mov_det.State in [dsEdit]) then
      DMNF.cds_Mov_det.ApplyUpdates(0);
  if (DMNF.cds_Movimento.State in [dsEdit]) then
      DMNF.cds_Movimento.ApplyUpdates(0);

    if dmnf.cds_Movimento.State in [dsInsert, dsEdit] then
    begin
      fnf.btnIncluir.Visible := False;
      fnf.btnexcluir.Visible := False;
      fnf.btngravar.Visible := True;
      fnf.btnGravar.Enabled := True;
      fnf.btnCancelar.Visible := True;
      fnf.btnCancelar.Enabled := True;
    end;

    if dmnf.cds_Movimento.State in [dsBrowse,dsInactive] then
    begin
      fnf.btnIncluir.Enabled := True;
      fnf.btnIncluir.Visible := True;
      fnf.btnexcluir.Visible := True;
      fnf.btnExcluir.Enabled := True;
      fnf.btnSair.Enabled := True;
      fnf.btnProcurar.Enabled := True;            
      fnf.btngravar.Visible := False;
      fnf.btnCancelar.Visible := False;
    end;

end;

procedure TfNF.gravavenda;
var  tipoMov: String;
     diferenca : double;
     utilcrtitulo : Tutils;
begin
  if (dmnf.cds_venda.state in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cds_vendaCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
    DMNF.cds_vendaCODCLIENTE.AsInteger := DMNF.cds_MovimentoCODCLIENTE.AsInteger;
    DMNF.cds_vendaCODVENDEDOR.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    //DMNF.cds_vendaDATAVENDA.AsDateTime := DMNF.cds_MovimentoDATAMOVIMENTO.AsDateTime;
    DMNF.cds_vendaCODCCUSTO.AsInteger := DMNF.cds_MovimentoCODALMOXARIFADO.AsInteger;
    dmnf.cds_vendaCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cds_vendaCODUSUARIO.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;

   if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;
   dmnf.sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) - ((QTDE_ALT/100)*(QUANTIDADE * PRECO))) FROM MOVIMENTODETALHE' +
                           ' WHERE CODMOVIMENTO = ' +
                           IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
  dmnf.sqs_tit.Open;
  dmnf.cds_vendaVALOR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
//  if (dmnf.cds_vendaDESCONTO.AsFloat > 0)then
  dmnf.cds_vendaVALOR_PAGAR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat - dmnf.cds_vendaDESCONTO.AsFloat);
 // dmnf.cds_vendaVALOR_PAGAR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  vrr := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  dmnf.sqs_tit.Close;

    if (dmnf.cds_vendaENTRADA.AsFloat > 0) then
    begin
      if (cbConta.Text = '') then
      begin
        MessageDlg('Informe o CAIXA.', mtError, [mbOK], 0);
        cbConta.SetFocus;
        exit;
      end;
      try
        if (StrToInt(dbedit7.Text) = 1) then
        begin
          diferenca := dmnf.cds_vendaVALOR.AsFloat - dmnf.cds_vendaDESCONTO.AsFloat;
          diferenca := diferenca - dmnf.cds_vendaENTRADA.AsFloat;
          if (diferenca > 0.01) then
          begin
            MessageDlg('O sistema considera a parcela 1 como a entrada.', mtError, [mbOK], 0);
            dbedit7.SetFocus;
            dmnf.cds_Movimento.Edit;
            dmnf.cds_Mov_det.Edit;
            exit;
          end;
        end;
      except
        MessageDlg('Informe um número para PARCELAS.', mtError, [mbOK], 0);
        dbedit7.SetFocus;
        exit;
      end;
    end;
      if (dbeSerie.Text = '') then
      begin
        MessageDlg('Informe uma Série.', mtError, [mbOK], 0);
        dbeSerie.SetFocus;
        exit;
      end;
  //A lançamento do cr tem que ser antes de salvar á venda
  //pois, caso o título já tenha sido baixado não é permitido alterar a venda.
  //Gerando o contas a receber
  //  gerar_cr; **************** 22/10/03
  //if dmnf.DtSrc.State in [dsEdit, dsInsert] then
  //begin
    utilcrtitulo := Tutils.Create;
    dmnf.cds_vendaFORMARECEBIMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);

    if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
      dmnf.cds_vendaCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;

    dmnf.cds_vendaVALOR.AsFloat := dmnf.cds_vendaVALOR.AsFloat +
      dmnf.cds_vendaVALOR_FRETE.AsFloat +
      dmnf.cds_vendaVALOR_SEGURO.AsFloat +
      dmnf.cds_vendaOUTRAS_DESP.AsFloat +
      dmnf.cds_vendaVALOR_IPI.AsFloat;
    dmnf.cds_vendaAPAGAR.AsFloat := dmnf.cds_vendaVALOR.AsFloat -
      dmnf.cds_vendaENTRADA.AsFloat + dmnf.cds_vendaMULTA_JUROS.AsFloat -
      dmnf.cds_vendaDESCONTO.AsFloat;
   //end;
   dmnf.cds_venda.ApplyUpdates(0);
  //baixando o movimento na tabela estoque
  //Gravando o numero sequencial
  if not dmnf.scds_serie_proc.Active then
  begin
     dmnf.scds_serie_proc.Params[0].AsString := dbeSerie.Text;
     dmnf.scds_serie_proc.Open;
  end;
  if (dmnf.cds_vendaNOTAFISCAL.AsInteger > dmnf.scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    dmnf.scds_serie_proc.Edit;
    dmnf.scds_serie_procULTIMO_NUMERO.AsInteger := dmnf.cds_vendaNOTAFISCAL.AsInteger;
    dmnf.scds_serie_proc.ApplyUpdates(0);
  end;
  dmnf.scds_serie_proc.Close;
  dmnf.scdsCr_proc.Close;
  dmnf.scdsCr_proc.Params[0].AsInteger := dmnf.cds_vendaCODVENDA.AsInteger;
  dmnf.scdsCr_proc.Open;
  {codrec := dmnf.scdsCr_procCODRECEBIMENTO.AsInteger;
  Cod_orig := dmnf.cds_vendaCODVENDA.AsInteger;
  tipo_origem := 'VENDA';
  cod_cli_forn := dmnf.cds_vendaCODCLIENTE.AsInteger;}
  if (cbFinanceiro.Checked = True) then
  begin
    fatura_NF := '';
    if dmnf.scdsCr_proc.State in [dsEdit, dsBrowse] then
    begin
      dmnf.scdsCr_proc.First;
      while not dmnf.scdsCr_proc.Eof do
      begin
        if dmnf.scdsCr_procSITUACAO.AsString <> '7-' then
        begin
          fatura_NF := fatura_NF + ' ( ';
          fatura_NF := fatura_NF + dmnf.scdsCr_procTIT.AsString;
          fatura_NF := fatura_NF + ' - ' + DateToStr(dmnf.scdsCr_procDATAVENCIMENTO.AsDateTime);
          valor_fatura := formatfloat('#,##0.00',dmnf.scdsCr_procVALOR_RESTO.Value);
          fatura_NF := fatura_NF + ' - ' + valor_fatura + ')';
        end;
        dmnf.scdsCr_proc.Next;
      end;
    end;
  end;
  //********************************************************************************
  // aqui corrijo o codigo do movimento na tabela mov_detalhe
    dmnf.cds_Mov_det.First;
    While not dmnf.cds_Mov_det.Eof do
    begin
        dmnf.cds_Mov_det.Edit;
        if (cbEstoque.Checked = False) then
          dmnf.cds_Mov_detBAIXA.AsString := '2'
        else
          dmnf.cds_Mov_detBAIXA.AsString := '1';
       dmnf.cds_Mov_det.ApplyUpdates(0);
       dmnf.cds_Mov_det.Next;
    end;

end;

procedure TfNF.gravamov_detalhe;
begin
  if (dmnf.cds_Mov_det.State in [dsEdit, dsInsert]) then
  begin
    IF (DBEdit17.Text <> '') then
      dmnf.cds_Mov_detDESCPRODUTO.AsString := DBEDit17.Text;
    dmnf.cds_mov_det.Post;
  end;
  //********************************************************************************
  // aqui corrijo o codigo do movimento na tabela mov_detalhe
    dmnf.cds_Mov_det.First;
    While not dmnf.cds_Mov_det.Eof do
    begin
      if (dmnf.cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
      begin
        dmnf.cds_Mov_det.Edit;
        dmnf.cds_Mov_detCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
        IF (dmnf.cds_Mov_detQTDE_ALT.IsNull) then
           dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        codmovdet := dm.c_6_genid.Fields[0].AsInteger;
        if ComboBox2.Text <> '' then
        begin
           dmnf.cds_cm.Locate('CODIGO', ComboBox2.Text,[loPartialKey]);
           dmnf.cds_Mov_detCOD_COMISSAO.AsInteger := dmnf.cds_cmCOD_COMISSAO.AsInteger;
           //dmnf.cds_Mov_detCODIGO.AsString := dmnf.cds_cmCODIGO.AsString;
        end;
        dmnf.cds_Mov_detCODDETALHE.AsInteger := codmovdet;
        {if (cbEstoque.Checked = False) then
          dmnf.cds_Mov_detBAIXA.AsString := '2'
        else
          dmnf.cds_Mov_detBAIXA.AsString := '1';}
        dmnf.cds_Mov_det.post;
      end;
      dmnf.cds_Mov_det.Next;
    end;
    dmnf.cds_Mov_det.ApplyUpdates(0);
end;

procedure TfNF.gravamovimento;
begin
 if dmnf.cds_Movimento.State in [dsInsert] then
 begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  dmnf.cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
 end;

  //*******************************************************************************
  IF (dmnf.DtSrc.State in [dsInsert, dsEdit]) then
  begin
    DMNF.cds_MovimentoDATAMOVIMENTO.AsDateTime := DMNF.cds_vendaDATAVENDA.AsDateTime;  
    if (usaCC = 'SIM') then
    begin
      dmnf.cds_ccusto.Locate('NOME',ComboBox5.Text, [loCaseInsensitive]);
      dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := dmnf.cds_ccustoCODIGO.AsInteger;
    end
    else
    begin
      dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := 51;
    end;
    if (DBComboBox1.Text <> '') then
      if  (dmnf.cds_movimentoCONTROLE.AsString <> DBComboBox1.Text) then
        dmnf.cds_MovimentoCONTROLE.AsString := DBComboBox1.Text;
  end;
    if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 3;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Venda';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 2;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Saída';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = False)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 12;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'nf';
    end;
  dmnf.cds_Movimento.ApplyUpdates(0);
end;

procedure TfNF.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfNF.btnCancelarClick(Sender: TObject);
begin
    if (DMNF.cds_venda.State in [dsinsert, dsedit]) then
      DMNF.cds_venda.Cancel;
    DMNF.cds_Mov_det.Cancel;
    DMNF.cds_Movimento.Cancel;
    DMNF.cds_venda.Close;
    DMNF.cds_Mov_det.Close;
    DMNF.cds_Movimento.Close;
end;

procedure TfNF.cbFinanceiroClick(Sender: TObject);
begin
  if (cbFinanceiro.Checked = True) then
  begin
    tabFinanceiro.TabVisible := True;
    incluivenda;
  end
  else
  begin
    tabFinanceiro.TabVisible := False;
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
  end;

end;

procedure TfNF.btnIncluirNFClick(Sender: TObject);
begin
  if (not dmnf.cds_nf.Active) then
     dmnf.cds_nf.Open;
  dmnf.cds_nf.Append;
  DBEdit15.SetFocus;
end;

procedure TfNF.btnCancelarNFClick(Sender: TObject);
begin
    DMNF.cds_nf.Cancel;
end;

procedure TfNF.DBEdit26Exit(Sender: TObject);
var vTextocfop : string;
begin
  if dmnf.scds.Active then
    dmnf.scds.Close;
  vTextocfop := dmnf.scds.CommandText;
  dmnf.scds.CommandText := 'SELECT CFCOD AS CFOP , CFNOME as NATUREZA FROM CFOP ' +
     ' where CFCOD = ''' + dbEdit26.Text + '''';
  dmnf.scds.Open;
  dmnf.cds_nfDESCNATUREZA.AsString  := dmnf.scds.Fields[1].asString;
  dmnf.scds.Close;
  dmnf.scds.CommandText := vTextocfop;
end;

procedure TfNF.BitBtn3Click(Sender: TObject);
begin
  if dmnf.scds.Active then
    dmnf.scds.Close;
  fProcurar:= TfProcurar.Create(self,dmnf.procCFOP);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.EvDBFind1.DataField := 'CFCOD';
  fProcurar.BtnProcurar.Click;
  if fProcurar.ShowModal=mrOk then
  begin
    if dmnf.DtSrc_NF.State=dsBrowse then
      dmnf.cds_nf.Edit;
    dmnf.cds_nfCFOP.AsString := dmnf.procCFOPCFCOD.AsString;
    dmnf.cds_nfDESCNATUREZA.AsString := dmnf.procCFOPCFNOME.AsString;
  end;
  finally
    dmnf.scds.Close;
    fProcurar.Free;
    DBEdit26.SetFocus;
  end;
end;

procedure TfNF.BitBtn7Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_transp_proc);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMETRANSP';
  if fProcurar.ShowModal=mrOk then
  begin
    if dmnf.DtSrc_NF.State=dsBrowse then
      dmnf.cds_nf.Edit;
    dmnf.cds_nfCODTRANSP.AsInteger := dm.scds_transp_procCODTRANSP.AsInteger;
    dmnf.cds_nfNOMETRANSP.AsString := dm.scds_transp_procNOMETRANSP.AsString;
    dmnf.cds_nfUF_TRANSP.AsString := dm.scds_transp_procUF_TRANSP.AsString;
    dmnf.cds_nfFRETE.AsString := dm.scds_transp_procFRETE.AsString;
    dmnf.cds_nfUF_VEICULO_TRANSP.AsString := dm.scds_transp_procUF_VEICULO_TRANSP.AsString;
    dmnf.cds_nfCNPJ_CPF.AsString := dm.scds_transp_procCNPJ_CPF.AsString;
    dmnf.cds_nfEND_TRANSP.AsString := dm.scds_transp_procEND_TRANSP.AsString;
    dmnf.cds_nfCIDADE_TRANSP.AsString := dm.scds_transp_procCIDADE_TRANSP.AsString;
    dmnf.cds_nfUF_TRANSP.AsString := dm.scds_transp_procUF_TRANSP.AsString;
    dmnf.cds_nfINSCRICAOESTADUAL.AsString := dm.scds_transp_procINSCRICAOESTADUAL.AsString;
    dmnf.cds_nfPLACATRANSP.AsString := dm.scds_transp_procPLACATRANSP.AsString;
    dmnf.cds_nfCORPONF1.AsString  := dm.scds_transp_procCORPONF1.AsString;
    dmnf.cds_nfCORPONF2.AsString  := dm.scds_transp_procCORPONF2.AsString;
    dmnf.cds_nfCORPONF3.AsString  := dm.scds_transp_procCORPONF3.AsString;
    dmnf.cds_nfCORPONF4.AsString  := dm.scds_transp_procCORPONF4.AsString;
    dmnf.cds_nfCORPONF5.AsString  := dm.scds_transp_procCORPONF5.AsString;
    dmnf.cds_nfCORPONF6.AsString  := dm.scds_transp_procCORPONF6.AsString;
  end;
  finally
    dm.scds_transp_proc.Close;
    fProcurar.Free;
    DBEdit56.SetFocus;
  end;

end;

procedure TfNF.rgClick(Sender: TObject);
begin
  if (rg.ItemIndex = 1) then
  begin
    Label2.Caption := 'Cliente :';
    GroupBox9.Caption := 'Local Venda';
    Label11.Caption := 'Vendedor';
    Label12.Caption := 'Data Venda';
    Label24.Caption := 'Forma Recebimento';
    dbeCliente.DataField := 'CODCLIENTE';
    dbEdit67.DataField := 'NOMECLIENTE';
    MMJPanel2.Background.StartColor := clTeal;
    MMJPanel2.Background.EndColor := clTeal;
    MMJPanel1.Background.StartColor := clTeal;
    MMJPanel1.Background.EndColor := clTeal;
    rg.Color := clTeal;
    GroupBox9.Color := clTeal;
    cbFinanceiro.Color := clTeal;
    cbEstoque.Color := clTeal;
  end
  else begin
    Label2.Caption := 'Fornecedor :';
    GroupBox9.Caption := 'Local Compra';
    Label11.Caption := 'Comprador';
    Label12.Caption := 'Data Compra';
    Label24.Caption := 'Forma Pagamento';
    dbeCliente.DataField := 'CODFORNECEDOR';
    dbEdit67.DataField := 'NOMEFORNECEDOR';
    MMJPanel2.Background.StartColor := clSkyBlue;
    MMJPanel2.Background.EndColor := clSkyBlue;
    MMJPanel1.Background.StartColor := clSkyBlue;
    MMJPanel1.Background.EndColor := clSkyBlue;
    rg.Color := clSkyBlue;
    GroupBox9.Color := clSkyBlue;
    cbFinanceiro.Color := clSkyBlue;
    cbEstoque.Color := clSkyBlue;
  end;
  jaCarregados := 'NAO';
end;

procedure TfNF.btnGravarNFClick(Sender: TObject);
begin
  decimalseparator := '.';
  //vValornf := dmnf.cds_nfVALOR_PRODUTO.AsFloat;
  decimalseparator := ',';
  if (dbEdit15.text = '') then
  begin
    MessageDlg('Informe o Número da Nota Fiscal!',mtWarning, [mbOK], 0);
    dbedit1.SetFocus;
    exit;
  end;
  if (dbEdit26.text = '') then
  begin
    MessageDlg('Informe o CFOP!',mtWarning, [mbOK], 0);
    dbedit26.SetFocus;
    exit;
  end;
  if (dmnf.cds_nfUF.AsString = '') then
  begin
    {** Abro o Cadastro do Clientes para adicionar o estado **}
  end;
  // salvo a Nota Fiscal
  if (dmnf.DtSrc_NF.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cds_nfNUMNF.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  dmnf.cds_nfNOTAFISCAL.AsString := IntToStr(dmnf.cds_vendaNOTAFISCAL.AsInteger);
  dmnf.cds_nfNOTASERIE.AsString := IntToStr(dmnf.cds_vendaNOTAFISCAL.AsInteger);
  dmnf.cds_nf.ApplyUpdates(0);
  // Calcula ICMS - IPI
  calcula_icms('OUTROS');
end;

procedure TfNF.btnImprimirNFClick(Sender: TObject);
begin
  if (rg.ItemIndex = 1) then
  begin
    dmnf.repdm.FileName := str_relatorio + 'nf_new.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    dmnf.repdm.Execute;
  end;
end;

procedure TfNF.BitBtn34Click(Sender: TObject);
begin
  if not dmnf.DtSrcE.DataSet.Active then
     dmnf.DtSrcE.DataSet.open;
  dmnf.DtSrcE.DataSet.Append;
  //DBEdit73.SetFocus;
end;

procedure TfNF.BitBtn35Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     if dmnf.proc_end.Active then
        dmnf.proc_end.Close;
     dmnf.proc_end.Params[0].AsInteger := dmnf.cds_cliCODCLIENTE.AsInteger;
     dmnf.proc_end.Open;
     if dmnf.proc_endCOUNT.AsInteger = 1 then
     begin
       MessageDlg('Não é possivel excluir esse endereço, você pode alterá-lo.. ', mtWarning, [mbOK], 0);
       exit;
     end;
     if (dmnf.cdsEnderecoCliTIPOEND.AsInteger = 0) then
     begin
       MessageDlg('Não é possivel excluir o endereço principal.', mtWarning, [mbOK], 0);
       exit;
     end;
     dmnf.DtSrcE.DataSet.Delete;
     (dmnf.DtSrcE.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfNF.calcula_icms(Estado: String);
var str_sql: string;
begin
  Try
    if (dmnf.sds_calculo.Active) then
      dmnf.sds_calculo.Close;
    str_sql := 'EXECUTE PROCEDURE CALCULA_ICMS(';
    // NUMNF
    str_sql := str_sql + IntToStr(dmnf.cds_nfNUMNF.asInteger);
    // UF
    str_sql := str_sql + ',''' + dmnf.cds_nfUF.AsString + '''';
    // CFOP
    str_sql := str_sql + ',''' + dmnf.cds_nfCFOP.AsString + '''';
    // Valor Frete
    DecimalSeparator := '.';
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_FRETE.AsFloat);
    // Valor Seguro
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_SEGURO.AsFloat);
    // Valor_Outros
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfOUTRAS_DESP.AsFloat);
    // Total
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_PRODUTO.AsFloat);
    // Informado INDICES MANUALMENTE
    IF (DBEdit44.Text <> '') then
    begin
      str_sql := str_sql + ',''' + 'S' + '''';
      str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfICMS.AsFloat);
      IF (DBEdit45.Text <> '') THEN
      str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfREDUZICMS.AsFloat)
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
    dmnf.sds_calculo.CommandText := str_sql;
    dmnf.sds_calculo.ExecSQL();
  except
    DecimalSeparator := ',';
    MessageDlg('Erro no cálculo!', mtError, [mbOK], 0);
  end;
end;

procedure TfNF.BitBtn5Click(Sender: TObject);
var nunf: integer;
begin
  if (dmnf.DtSrc_NF.State in [dsEdit, dsInsert]) Then
  begin
    btnGravarNF.Click;
    exit;
  end;
  nunf := dmnf.cds_nfNUMNF.AsInteger;
  // Calcula ICMS - IPI
  calcula_icms('OUTROS');
  // Abre a tabela Novamente.
  dmnf.cds_nf.Close;
  dmnf.cds_nf.Params[0].AsInteger := nunf;
  dmnf.cds_nf.Open;
end;

procedure TfNF.btnProcurarClick(Sender: TObject);
begin
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
      fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
      dmnf.cds_ccusto.Next;
    end;
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    {if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
    dm.cds_parametro.Open;}
    if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
    begin
      fFiltroMovimento.Edit3.Text := '3';
      fFiltroMovimento.Edit4.Text := 'Venda';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
    begin
      fFiltroMovimento.Edit3.Text := '2';
      fFiltroMovimento.Edit4.Text := 'Saída';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = False)) then
    begin
      fFiltroMovimento.Edit3.Text := '5';
      fFiltroMovimento.Edit4.Text := 'nf';
    end;

    //dm.cds_parametro.Close;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.ShowModal;
    //if dmnf.cds_Movimento.IsEmpty then
    //  exit;
   { if (not dmnf.cds_ccusto.Active) then
      dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.Locate('CODIGO', dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive]);
    ComboBox1.Text := cds_ccustoNOME.AsString;
     }
    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    dmnf.cds_Movimento.Open;

    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cds_Mov_det.Open;
    ComboBox2.Text := dmnf.cds_Mov_detCODIGO.AsString;
    //mostra veiculos do cliente
    if (dmnf.cds_Veiculocli.Active) then
      dmnf.cds_Veiculocli.Close;
    dmnf.cds_Veiculocli.Params[0].Clear;
    dmnf.cds_Veiculocli.Params[1].AsInteger := dmnf.cds_MovimentoCOD_VEICULO.asInteger;
    dmnf.cds_Veiculocli.Open;
    MaskEdit1.Text := '';
    if (not dmnf.cds_Veiculocli.IsEmpty) then
    begin
      MaskEdit1.Text := dmnf.cds_VeiculocliPLACA.AsString;
      Label31.Caption := dmnf.cds_VeiculocliMARCA_MODELO.AsString;
    end;
    dmnf.cds_Veiculocli.Close;

    {------Pesquisando na tab Parametro se usa Comissão por Venda---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'COMISSAO VENDA';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      ComboBox2.Visible := true;
      Label32.Visible := True;
      if (not dmnf.cds_cm.Active) then
        dmnf.cds_cm.Open;
      dmnf.cds_cm.Locate('COD_COMISSAO', dmnf.cds_Mov_detCOD_COMISSAO.AsInteger,[loPartialKey]);
      ComboBox2.Text := dmnf.cds_Mov_detCODIGO.AsString;
     end;
    BitBtn1.Enabled := true;
    btnProdutoProcura.Enabled := true;
    //BitBtn5.Enabled := true;
    //mostra venda
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
    dmnf.cds_venda.Params[0].Clear;
    dmnf.cds_venda.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.asInteger;
    dmnf.cds_venda.Open;
    if (not dmnf.cds_venda.IsEmpty) then
    begin
      if (dmnf.cds_nf.Active) then
        dmnf.cds_nf.Close;
      dmnf.cds_nf.Params[0].Clear;
      dmnf.cds_nf.Params[1].AsInteger := dmnf.cds_vendaCODVENDA.asInteger;
      dmnf.cds_nf.Open;
      if (dmnf.cds_nf.IsEmpty) then
        dmnf.cds_nf.Close;
      tabnf.Enabled := True;
      if (dmnf.scdsCr_proc.Active) then
        dmnf.scdsCr_proc.Close;
      dmnf.scdsCr_proc.Params[0].AsInteger := dmnf.cds_vendaCODVENDA.AsInteger;
      dmnf.scdsCr_proc.Open;
      if (dmnf.scdsCr_proc.IsEmpty) then
        dmnf.scdsCr_proc.Close
      else
        tabFinanceiro.Enabled := True;
    end
    else
    begin
      if (cbFinanceiro.Checked = True) then
        incluivenda
      else
        dmnf.cds_venda.Close;
    end;

    if (DMNF.cds_MovimentoCODNATUREZA.AsInteger = 3) then
    begin
      cbFinanceiro.Checked := True;
      cbEstoque.Checked := True;
    end;

    if (DMNF.cds_MovimentoCODNATUREZA.AsInteger = 2) then
    begin
      cbFinanceiro.Checked := False;
      cbEstoque.Checked := True;
    end;

    if (DMNF.cds_MovimentoCODNATUREZA.AsInteger = 5) then
    begin
      cbFinanceiro.Checked := False;
      cbEstoque.Checked := False;
    end;
end;


procedure TfNF.CarregaParametros;
begin
  centro_receita := 0;
  procprod := 'PROC_PROD_SIMPLES';
  if (not dm.parametro.Active) then
    dm.parametro.Open;

  if (rg.ItemIndex = 1) then
  begin
    if (dm.parametro.Locate('PARAMETRO', 'CADASTROVEICULO', [loCaseInsensitive])) then
    if dm.cds_parametroDADOS.AsString = 'SIM' then
    begin
      GroupBox5.Visible := True;
    end;
  end;

  {------Pesquisando na tab Parametro se usa Mostrar Contas Pendentes ---}
    if (dm.parametro.Locate('PARAMETRO', 'CONTAS PENDENTES', [loCaseInsensitive])) then
    begin
      if dm.parametroDADOS.AsString = 'S' then
        contas_pendentes := 'SIM';
    end;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if (dm.parametro.Locate('PARAMETRO','CENTRO RECEITA PADRAO', [loCaseInsensitive])) then
    begin
      Try
        centro_receita := strToint(dm.parametroDADOS.AsString);
      except
        centro_receita := 0;
      end;
    end;
  {------Pesquisando na tab Parametro Vendedor Padrão ---------}
  if (dm.parametro.Locate('PARAMETRO','VENDEDORPADRAO', [loCaseInsensitive])) then
  begin
    Try
      cod_vendedor_padrao := strToint(dm.parametroDADOS.AsString);
    except
      cod_vendedor_padrao := 0;
    end;
    nome_vendedor_padrao := dm.parametroD1.AsString;
  end else
  begin
    cod_vendedor_padrao := usulog; //1;
    nome_vendedor_padrao :=  nome_user  //'..'
  end;
  {------Pesquisando na tab Parametro se usa Comissão por Venda---------}
    if (dm.parametro.Locate('PARAMETRO','COMISSAO VENDA',[loCaseInsensitive])) then
    begin
      if dm.parametroCONFIGURADO.AsString = 'S' then
      begin
        ComboBox2.Visible := true;
        ComboBox2.Items.Clear;
        Label17.Visible := True;
        if DMNF.cds_cm.Active then
           DMNF.cds_cm.Close;
        DMNF.cds_cm.Params[0].Clear;
        DMNF.cds_cm.Params[1].AsInteger := 9999999;
        DMNF.cds_cm.Open;
        DMNF.cds_cm.First;
        // populo a combobox
        while not DMNF.cds_cm.Eof do
        begin
          ComboBox2.Items.Add(DMNF.cds_cmCODIGO.AsString);
          DMNF.cds_cm.Next;
        end;
      end;
    end;
  {------Pesquisando na tab Parametro se usa Comissão por produto---------}
    if (dm.parametro.Locate('PARAMETRO','COMISSAO PRODUTO', [loCaseInsensitive])) then
    begin
      if dm.parametroDADOS.AsString = 'S' then
      begin
        label4.Caption := 'CM';
        if DMNF.cds_cm.Active then
          DMNF.cds_cm.Close;
        DMNF.cds_cm.Params[0].Clear;
        DMNF.cds_cm.Params[1].AsInteger := 9999999;
        DMNF.cds_cm.Open;
      end;
    end;
  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda/Compra--------}
    if (dm.parametro.Locate('PARAMETRO','NATUREZAVENDA',[loCaseInsensitive])) then
    begin
      Try
        cod_nat := strToint(dm.parametroDADOS.asString);
      except
        cod_nat := 3;
      end;
      natureza := dm.parametroD1.AsString;
    end;
  {------Pesquisando na tab Parametro se usa ANOTACOES ---}
  if (dm.parametro.Locate('PARAMETRO','ANOTACOESVENDAS', [loCaseInsensitive])) then
  begin
    DBComboBox1.Items.Clear;
    if (dm.parametroCONFIGURADO.AsString = 'N') then
      DBComboBox1.Enabled := False
    else begin
      DBComboBox1.Items.Add(dm.parametroD1.AsString);
      IF (dm.cds_parametroD2.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD2.AsString);
      IF (dm.cds_parametroD3.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD3.AsString);
      IF (dm.cds_parametroD3.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD3.AsString);
      IF (dm.cds_parametroD4.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD4.AsString);
      IF (dm.cds_parametroD5.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD5.AsString);
      IF (dm.cds_parametroD6.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD6.AsString);
      IF (dm.cds_parametroD7.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD7.AsString);
      IF (dm.cds_parametroD8.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD8.AsString);
      IF (dm.cds_parametroD9.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD9.AsString);
    end;
  end
  else begin
    DBComboBox1.Enabled := False;
  end;
    if (dm.moduloUsado = 'AUTOMOTIVA') then
    begin
      //TabSheet1.Caption := 'Peças/Serviços';
      bitbtn4.Enabled := False;
      Label4.Caption := 'Com.';
      Label29.Caption := 'Kilometragem';
      Label11.Caption := 'Colab./Técnico';
      //BitBtn3.Enabled := False;
      //fVendas.Caption := 'Ordem de Serviços e Vendas de Peças';
      //Label15.Caption := 'Lançamento de Ordem de Serviços e Vendas de Peças';
      //GroupBox2.Caption := 'Local OS';
      //GroupBox3.Caption := 'Data';
    end;

  if (dm.moduloUsado = 'CITRUS') then
  begin
    Label16.Caption := 'kg';
  end;
    if (dm.parametro.Locate('PARAMETRO','MATERIAPRIMA', [loCaseInsensitive])) then
    begin
      if (dm.parametroCONFIGURADO.AsString = 'S') then
      begin
        matPrima := 'SIM';
        inseridoMatPrima := 'SIM';
      end
      else
        matPrima := 'NAO';
    end;
  { Usa Centro Receita }
    usaCC := 'NAO';
    if (dm.parametro.Locate('PARAMETRO','CENTRORECEITA', [loCaseInsensitive])) then
    begin
      if (dm.parametroCONFIGURADO.AsString = 'S') then
      begin
        usaCC := 'SIM';
        ComboBox5.Enabled := True;
        //Vejo quais são as contas de Receitas para listar no lookupcombobox.
        if (dmnf.cds_ccusto.Active) then
          dmnf.cds_ccusto.Close;
        dmnf.cds_ccusto.Params[0].AsString := dm.parametroDADOS.AsString;
        dmnf.cds_ccusto.Open;
        // populo a combobox
        dmnf.cds_ccusto.First;
        while (not dmnf.cds_ccusto.Eof) do
        begin
          ComboBox5.Items.Add(dmnf.cds_ccustoNOME.AsString);
          dmnf.cds_ccusto.Next;
        end;
      end;
    end;
end;

procedure TfNF.btnExcluirCliClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    dm.sqlsisAdimin.ExecuteDirect('delete from enderecocliente where codcliente='+
    intToStr(dmnf.cds_cliCODCLIENTE.asInteger));
    dmnf.DtSrc.DataSet.Delete;
    (dmnf.DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TfNF.btnExcluirClick(Sender: TObject);
var
  codigomovimento : integer;
begin
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTAADMINISTRADOR';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
      if (fAtsAdmin.UserControlComercial.CurrentUser.Profile = StrToInt(dm.cds_parametroDADOS.AsString)) then
      begin
        if MessageDlg('Deseja realmente excluir este registro ?',mtConfirmation,
                      [mbYes,mbNo],0) = mrYes then
        begin
           if dm.scds_produto_procLOTES.AsString = 'S' then
              lote; // Antes de delatar retorno os Lotes
           codigomovimento := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
           dmnf.DtSrc.DataSet.Delete;
           (dmnf.DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
           if Dm.cds_parametro.Active then
              dm.cds_parametro.Close;
           dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
           dm.cds_parametro.Open;
           if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
           begin
             // deleta movimento gerado pelo Baixa Estoque (Materia prima)
             if (rg.ItemIndex = 1) then
               dm.sqlsisAdimin.ExecuteDirect('Delete from MOVIMENTO where COD_VEICULO = ' + IntToStr(codigomovimento) + ' and CODNATUREZA = 2');
           end;
           dm.cds_parametro.Close;
        end
        else
          Abort;
        if dmnf.DtSrc1.DataSet.Active then
           dmnf.DtSrc1.DataSet.Close;
      end
      else
      begin
        if dm.scds_produto_procLOTES.AsString = 'S' then
           lote; // Antes de Cancelar retorno os Lotes
        if (DMNF.cds_Movimento.State in [dsBrowse]) then
           DMNF.cds_Movimento.Edit;
        DMNF.cds_MovimentoSTATUS.AsInteger := 2; // CANCELADO
        MessageDlg('Movimento Cancelado.', mtWarning, [mbOK], 0);
        DMNF.cds_Movimento.ApplyUpdates(0);
      end;
  end
  else
  begin
    if MessageDlg('Deseja realmente excluir este registro ?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
    begin
       if dm.scds_produto_procLOTES.AsString = 'S' then
         lote; // Antes de Cancelar retorno os Lotes
       codigomovimento := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
       dmnf.DtSrc.DataSet.Delete;
       (dmnf.DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);

       if Dm.cds_parametro.Active then
          dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
       dm.cds_parametro.Open;
       if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
       begin
         // deleta movimento gerado pelo Baixa Estoque (Materia prima)
         if (rg.ItemIndex = 1) then
           dm.sqlsisAdimin.ExecuteDirect('Delete from MOVIMENTO where COD_VEICULO = ' + IntToStr(codigomovimento) + ' and CODNATUREZA = 2');
       end;
       dm.cds_parametro.Close;
    end
    else
      Abort;
    if dmnf.DtSrc1.DataSet.Active then
       dmnf.DtSrc1.DataSet.Close;
  end;
end;

procedure TfNF.btnCancelarcliClick(Sender: TObject);
begin
  dmnf.cdsEnderecoCli.Cancel;
  if (dmnf.cds_cli.State in [dsInsert, dsEdit]) then
    dmnf.cds_cli.Cancel;
end;

procedure TfNF.BitBtn30Enter(Sender: TObject);
begin
  Panel1.Visible := True;
  Panel1.SetFocus;
end;

procedure TfNF.BitBtn2Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
   if fProcurar.ShowModal=mrOk then
    begin
      if dmnf.dtSrc.State=dsBrowse then
        dmnf.cds_Movimento.Edit;
      dmnf.cds_MovimentoCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
      dmnf.cds_MovimentoNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfNF.BitBtn38Click(Sender: TObject);
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
var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, logradouro,cep,fone, clientecupom, doccli : string;//Para recortar parte da descrição do produto,nome
  total : double;
begin
      // Imprimindo
      if (not dm.cds_empresa.Active) then
        dm.cds_empresa.Open;
      {----- aqui monto o endereço-----}
      logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
      cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
      ' - ' + dm.cds_empresaCEP.Value;
      fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
      ' / ' + dm.cds_empresaFONE_2.Value;
      {------------------------DADOS DO CLIENTE--------------------------}
      clientecupom := 'Cliente : ' + IntToStr(dmnf.cds_MovimentoCODCLIENTE.AsInteger) + ' - ' +
                      dmnf.cds_MovimentoNOMECLIENTE.AsString;
      doccli := 'CPF : ' + dmnf.cds_MovimentoCNPJ.AsString;
      Texto  := '-------------------------------------' ;
      Texto1 := DateTimeToStr(Now) + '  Titulo.:  ' +
      dmnf.scdsCr_procTITULO.AsString;
      Texto2 := '-------------------------------------' ;
      Texto4 := 'Podruto   UN  Qtde   V.Un.   V.Total ' ;
      Texto5 := DateTimeToStr(Now) + ' Total.: R$   ';
      {-----------------------------------------------------------}
      {-------------------Imprimi Cabeçalho-----------------------}
      AssignFile(IMPRESSORA,'COM1:');
      Rewrite(IMPRESSORA);
      Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
      Writeln(Impressora, cJustif, c17cpi, logradouro);
      Writeln(Impressora, cJustif, cep);
      Writeln(Impressora, cJustif, fone);
      Writeln(Impressora, cJustif , c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, cJustif, c17cpi, clientecupom);
      Writeln(Impressora, cJustif, c17cpi, doccli);
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, c17cpi, texto1);
      Writeln(Impressora, c17cpi, texto2);
      Writeln(Impressora, c17cpi, texto4);
      {-----------------------------------------------------------}
      {-------------------Imprimi itens do boleto-----------------}
      try
        dmnf.cds_Mov_det.First;
        while not dmnf.cds_Mov_det.Eof do
        begin
          dmnf.cds_Mov_det.RecordCount;
          texto3 := '';
          texto6 := '';
          texto6 := Format('%-4s',[dmnf.cds_Mov_detCODPRO.Value]);
          texto3 := texto3 + Format('          %-2s',[dmnf.cds_Mov_detUN.Value]);
          texto3 := texto3 + Format('    %-6.0n',[dmnf.cds_Mov_detQUANTIDADE.AsFloat]);
          texto3 := texto3 + Format('%-6.2n',[dmnf.cds_Mov_detPRECO.AsFloat]);
          texto3 := texto3 + Format('  %-6.2n',[dmnf.cds_Mov_detValorTotal.value]);
          //texto6 := texto6 + fVendas.cds_Mov_detDETALHE.Value;
//          texto6 := texto6 + Copy(dmnf.cds_Mov_detDETALHE.Value, 0, 30);
          Writeln(Impressora, c17cpi, texto6);
          Writeln(Impressora, c17cpi, texto3);//NOME DO PRODUTO
          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          dmnf.cds_Mov_det.next;
        end;
        texto3 := '';
        texto6 := '';
        {-----------------------------------------------------------}
        {-------------------Imprimi Cabeçalho-----------------------}
        Texto2 := '-------------------------------------' ;
        Texto3 := 'Vencimento  Status  Valor R$  ' ;
        Writeln(Impressora, c17cpi, texto2);
        Writeln(Impressora, c17cpi, texto3);
        {-----------------------------------------------------------}
        {-------------------Imprimi Parcelas -----------------------}
        dmnf.scdsCr_proc.First;
        while not dmnf.scdsCr_proc.Eof do
        begin
          texto3 := '';
          dmnf.scdsCr_proc.RecordCount;
          // imprime
          Texto3 := FormatDateTime('dd/mm/yyyy', dmnf.scdsCr_procDATAVENCIMENTO.Value);
          Texto3 := Texto3 + ' - '  + dmnf.scdsCr_procSTATUS.Value;
          if (dmnf.scdsCr_procSITUACAO.AsString = '7-') then
             Texto3 := Texto3 + ' - '  +
                    Format('%-6.2n',[dmnf.scdsCr_procVALORRECEBIDO.AsFloat])
          else
             Texto3 := Texto3 + ' - '  +
                    Format('%-6.2n',[dmnf.scdsCr_procVALORREC.AsFloat]);
          Writeln(Impressora, c17cpi, texto3);
          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          dmnf.scdsCr_proc.next;
        end;
        {-----------------------------------------------------------}
        {-------------------Imprimi final do Pedido-----------------}
        total := dmnf.cds_Mov_detTotalPedido.Value;
        Writeln(Impressora, c17cpi, texto);
        Write(Impressora, c17cpi, texto5);
        Writeln(Impressora, c17cpi + Format(' %-6.2n',[total]));
        texto3 := '';
        texto3 := 'Ass.:____________________________';
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
      if (MessageDlg('Imprimir Carnê ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
          VCLReport1.FileName := str_relatorio + 'impr_carne.rep';
          VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
          VCLReport1.Report.Params.ParamByName('PVENDA').Value := dmnf.cds_vendaCODVENDA.AsInteger;
          VCLReport1.Execute;
      end;
end;

procedure TfNF.BitBtn31Click(Sender: TObject);
var
  varExtenso :TRpLabel;
begin
  inherited;
    VCLReport1.FileName := str_relatorio + 'impr_texto_nf.rep';

    varExtenso := TRpLabel(VCLReport1.Report.FindComponent('TRpLabel29'));
    if Assigned(varExtenso) then
     varExtenso.Text := Extenso.GetExtenso(DMNF.cds_vendaVALOR_PAGAR.Value);//Edit1.Text;

    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PVENDA').Value := dmnf.cds_vendaCODVENDA.AsInteger;
    VCLReport1.Execute;
end;

procedure TfNF.BitBtn11Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'orcamento_nf.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfNF.BitBtn37Click(Sender: TObject);
begin
  {Usado para inserir Despesa de Frete se o sistema for usado para o Citrus}
  if (bitbtn37.Caption <> 'Frete') then
  begin
    fImpr_Boleto := TfImpr_Boleto.Create(Application);
    try
     fImpr_Boleto.ShowModal;
    finally
     fImpr_Boleto.Free;
    end;
  end
  else begin

  end;
end;

procedure TfNF.Panel1Exit(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TfNF.BitBtn22Click(Sender: TObject);
begin
  if (rg.ItemIndex = 1) then
  begin
    dmnf.repdm.FileName := str_relatorio + 'nf_serv_nf.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_vendaCODVENDA.AsInteger;
    dmnf.repdm.Execute;
  end;
end;

procedure TfNF.btnSerieClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dmnf.scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
    begin
      if dmnf.DtSrcVenda.State=dsBrowse then
        dmnf.cds_venda.Edit;
      dmnf.cds_vendaSERIE.AsString := dmnf.scds_serie_procSERIE.AsString;
      dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger;
      dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
   finally
    dmnf.scds_serie_proc.Close;
    fProcurar.Free;
   end;
    DBEdit2.SetFocus;
end;

procedure TfNF.BitBtn4Click(Sender: TObject);
begin
  dm.LOTENF := '';
  //Usa Lote ??
  if (not dm.scds_produto_proc.Active) then
  begin
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
    dm.scds_produto_proc.Open;
  end;
  if dm.scds_produto_procLOTES.AsString = 'S' then
  begin
    fLotes := TfLotes.Create(Application);
    try
      if fLotes.cdslotes.Active then
        fLotes.cdslotes.Close;
      fLotes.cdslotes.Params[0].AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      fLotes.cdslotes.Open;
      var_F := 'formnf';
      fLotes.btnProdutoProcura.Enabled := False;
      fLotes.btnIncluir.Enabled := False;
      fLotes.btnGravar.Enabled := False;
      fLotes.btnExcluir.Enabled := False;
      fLotes.btnCancelar.Enabled := False;
      fLotes.btnProcurar.Enabled := False;
      fLotes.ShowModal;
    finally
      fLotes.Free;
      dmnf.cds_Mov_detLOTE.AsString := dm.LOTENF;
      dmnf.cds_Mov_detQUANTIDADE.Value := dm.LOTEQTDE;
    end;
  end;
  dm.scds_produto_proc.Close;
{  if (DBEdit17.Text <> '') then
    DBEdit17.SetFocus
  else
    dbEdit9.SetFocus;}
end;

procedure TfNF.PageControl1Change(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  if (PageControl1.ActivePage = tabnf) then
  begin
     if (DMNF.DtSrc_NF.DataSet.State in [dsInactive]) then
         btnIncluirNF.Click;
  end;
  // Listo as Contas Caixa
  if (PageControl1.ActivePage = tabFinanceiro) then
  begin
    ComboBox1.Items.Clear;
    ComboBox4.Items.Clear;
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
      ComboBox4.Items.Add(dm.cds_7_contas.Fields[2].asString);
      dm.cds_7_contas.Next;
    end;
    utilcrtitulo := Tutils.Create;
    // Popula Status
    j := utilcrtitulo.Forma.Count;
    for i := 0 to j - 1 do
    begin
      combobox3.Items.Add(utilcrtitulo.Forma.Strings[i]);
    end;
  end;
  
end;


procedure TfNF.btnExcluirNFClick(Sender: TObject);
begin
  formExclusao := TformExclusao.Create(Application);
  try
     formExclusao.ShowModal;
  finally
     formExclusao.Free;
  end;
end;

procedure TfNF.BitBtn9Click(Sender: TObject);
begin
   fClienteVeiculo := TfClienteVeiculo.Create(Application);
   try
     fClienteVeiculo.varPlaca := MaskEdit1.Text;
     // o cadastro do veículo não deve ter o cliente na OS terá;
     cod_cli := 1;//cds_MovimentoCODCLIENTE.AsInteger;
     fClienteVeiculo.ShowModal;
     MaskEdit1.Text := fClienteVeiculo.varPlaca;
     if (DMNF.cds_Veiculocli.Active) then
       DMNF.cds_Veiculocli.Close;
     DMNF.cds_Veiculocli.Params[1].Clear;
     DMNF.cds_Veiculocli.Params[0].AsString := fClienteVeiculo.varPlaca;
     DMNF.cds_Veiculocli.Open;
     Label31.Caption := DMNF.cds_VeiculocliMARCA_MODELO.AsString;
     if (DMNF.cds_movimento.State in [dsInsert, dsEdit]) then
     begin
       DMNF.cds_MovimentoCOD_VEICULO.AsInteger := DMNF.cds_VeiculocliCOD_VEICULO.AsInteger;
        if (DMNF.sdsVeiculoCli.Active) then
          DMNF.sdsVeiculoCli.Close;
        DMNF.sdsVeiculoCli.Params[0].AsInteger := DMNF.cds_VeiculocliCOD_VEICULO.asinteger;
        DMNF.sdsVeiculoCli.Open;
        if (not DMNF.sdsVeiculoCli.IsEmpty) then
        begin
          dbeCliente.Text := IntToStr(DMNF.sdsVeiculoCli.Fields[0].asInteger);
          DBEdit67.Text := DMNF.sdsVeiculoCli.Fields[1].AsString;
          DMNF.cds_MovimentoCODCLIENTE.AsInteger := DMNF.sdsVeiculoCli.Fields[0].asInteger;
          DMNF.cds_MovimentoNOMECLIENTE.AsString := DMNF.sdsVeiculoCli.Fields[1].AsString;
          DMNF.cds_MovimentoOBS.AsString := DMNF.sdsVeiculoCli.Fields[2].AsString;
          prazo := DMNF.sdsVeiculoCli.Fields[3].AsFloat;
          DBComboBox1.SetFocus;
        end
        else
          dbeCliente.SetFocus;
     end;
   finally
     fClienteVeiculo.varplaca := '';
     fClienteVeiculo.Free;
   end;

end;

procedure TfNF.DBEdit1Exit(Sender: TObject);
var
  total :double;
begin
   if (dmnf.cds_mov_det.State in [dsEdit, dsInsert]) then
   if dmnf.cds_Mov_detLOTE.AsString <> '' then
   begin
       if dmnf.cdslotes.Active then
          dmnf.cdslotes.Close;
       dmnf.cdslotes.Params[0].AsString := dmnf.cds_Mov_detLOTE.AsString;
       dmnf.cdsLotes.Params[2].AsInteger := dmnf.cds_Mov_detCODPRODUTO.AsInteger;
       dmnf.cdslotes.Open;
       total := dmnf.cdslotesESTOQUE.Value - dmnf.cds_Mov_detQUANTIDADE.Value;

       if (total < (-0.00099999999999999999999)) then
       begin
         MessageDlg('Estoque insuficiente para essa venda', mtWarning, [mbOK], 0);
         dmnf.cdslotes.Close;
         DBEdit1.Text := '';
         DBEdit1.SetFocus;
         exit;
       end;
       dmnf.cdslotes.Close;
   end;
   if (dm.moduloUsado = 'CITRUS') then
   begin
     if (dmnf.cds_Mov_detQTDE_ALT.AsFloat = 0) then
       dmnf.cds_Mov_detQTDE_ALT.AsFloat := dmnf.cds_Mov_detQUANTIDADE.AsFloat * qtde;
  end;
end;

procedure TfNF.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
 if Key in ['.'] then Key := ',';
end;

procedure TfNF.DBEdit6Exit(Sender: TObject);
begin
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (dmnf.cds_Mov_detQUANTIDADE.AsFloat = 0) then
    if (qtde > 0) then
      dmnf.cds_Mov_detQUANTIDADE.AsFloat := dmnf.cds_Mov_detQTDE_ALT.AsFloat/qtde;
  end;
end;

procedure TfNF.dbeSerieExit(Sender: TObject);
begin
  if (dmnf.DtSrc.State in [dsInsert,dsEdit]) then
  begin
    if (dbeSerie.Text = '') then exit;
    if (dbeSerie.Field.OldValue <> dbeSerie.Field.NewValue) then
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
      dmnf.cds_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      dmnf.cds_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;
end;

procedure TfNF.dbeClienteExit(Sender: TObject);
begin
  if (dmnf.dtsrc.State in [dsInsert]) then
  begin
    if (dbeCliente.Text = '') then
    begin
      exit;
    end;
    if dmnf.scds_cli_proc.Active then
    dmnf.scds_cli_proc.Close;
    dmnf.scds_cli_proc.Params[0].Clear;
    dmnf.scds_cli_proc.Params[1].Clear;
    dmnf.scds_cli_proc.Params[2].Clear;
    dmnf.scds_cli_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dmnf.scds_cli_proc.Open;
    if dmnf.scds_cli_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      bitbtn1.Click;
      exit;
    end;
    if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
    begin
      MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
      dmnf.cds_venda.Cancel;
      dmnf.cds_Movimento.Cancel;
      exit;
      //dbeCliente.SetFocus;
    end;
  end;
end;

procedure TfNF.DBEdit29Exit(Sender: TObject);
begin
   dmnf.cds_vendaVALOR_PAGAR.AsFloat := dmnf.cds_vendaVALOR.AsFloat - dmnf.cds_vendaDESCONTO.AsFloat +
     dmnf.cds_vendaMULTA_JUROS.AsFloat;
end;

procedure TfNF.DBEdit30Exit(Sender: TObject);
begin
  if (dmnf.cds_mov_det.state in [dsInsert, dsEdit]) then
  begin
    if (dmnf.cds_vendaDESCONTO.AsFloat > 0) then
    begin
      dmnf.cds_vendaVALOR.AsFloat := dmnf.cds_vendaVALOR.AsFloat +
      dmnf.cds_vendaVALOR_FRETE.AsFloat +
      dmnf.cds_vendaVALOR_SEGURO.AsFloat +
      dmnf.cds_vendaOUTRAS_DESP.AsFloat +
      dmnf.cds_vendaVALOR_IPI.AsFloat;
      dmnf.cds_vendaVALOR_PAGAR.AsFloat := dmnf.cds_vendaVALOR.AsFloat -
      dmnf.cds_vendaENTRADA.AsFloat + dmnf.cds_vendaMULTA_JUROS.AsFloat -
      dmnf.cds_vendaDESCONTO.AsFloat;
    end
    else
    begin
      if (dmnf.cds_Mov_detTotalPedido.IsNull) then
      begin
        dmnf.cds_vendaVALOR.AsFloat := dmnf.cds_Mov_detTotalPedido.Value;
        dmnf.cds_vendaVALOR_PAGAR.AsFloat := dmnf.cds_Mov_detTotalPedido.Value;
      end;
    end;
  end;  
end;

procedure TfNF.exportatabelas;
var
  vari: integer;
begin
    // Copio dados tabMovimento
  Try
    cMov.Params[0].AsInteger := DMNF.cds_MovimentoCODMOVIMENTO.AsInteger;
    cMov.Open;
    cExportaMov.Close;
    cExportaMov.Params[0].AsInteger := DMNF.cds_MovimentoCODMOVIMENTO.AsInteger;
    cExportaMov.Open;
    if (cExportaMov.IsEmpty) then
      cExportaMov.append
    else
    begin
       MessageDlg('Movimento já Exportado.', mtWarning, [mbOK], 0);
       exit;
    end;

    for vari := 0 to cMov.fieldcount -1 do
    begin
       if (cMov.fields[vari].fieldkind = fkdata) then
          cExportaMov.fields[vari].value := cMov.fieldbyname(cMov.fields[vari].fieldname).value;
    end;
    cExportaMov.ApplyUpdates(0);
    // Copio dados tabMovimento Detalhe
    cMovDet.Params[0].AsInteger := DMNF.cds_MovimentoCODMOVIMENTO.AsInteger;
    cMovDet.Open;
    cExportaMovDet.Open;
    cMovDet.First;
    while not cMovDet.Eof do
    begin
      cExportaMovDet.append;
      for vari := 0 to cMovDet.fieldcount -1 do
      begin
         if (cMovDet.fields[vari].fieldkind = fkdata) then
            cExportaMovDet.fields[vari].value := cMovDet.fieldbyname(cMovDet.fields[vari].fieldname).value;
      end;
      cExportaMovDet.ApplyUpdates(0);
      cMovDet.Next;
    end;
    // Copio dados tab. Venda
    cVenda.Params[0].AsInteger := DMNF.cds_MovimentoCODMOVIMENTO.AsInteger;
    cVenda.Open;
    cExportaVenda.Open;
    cVenda.First;
    while not cVenda.Eof do
    begin
      cExportaVenda.append;
      for vari := 0 to cVenda.fieldcount -1 do
      begin
         if (cVenda.fields[vari].fieldkind = fkdata) then
            cExportaVenda.fields[vari].value := cVenda.fieldbyname(cVenda.fields[vari].fieldname).value;
      end;
      cExportaVenda.ApplyUpdates(0);
      cVenda.Next;
    end;
    MessageDlg('Arquivos exportados com suscesso', mtWarning, [mbOK], 0);
  Except
    MessageDlg('Erro ao exportar arquivos', mtWarning, [mbOK], 0);
  end;

end;

procedure TfNF.BitBtn14Click(Sender: TObject);
begin
  if (dmnf.cds_Movimento.State in [dsBrowse]) then
    exportatabelas;
end;

procedure TfNF.BitBtn15Click(Sender: TObject);
begin
  if (rg.ItemIndex = 1) then
  begin
    dmnf.repdm.FileName := str_relatorio + 'nf_transporte.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    dmnf.repdm.Execute;
  end;
end;

procedure TfNF.lote;
begin
  DMNF.cds_Mov_det.First;
  while not DMNF.cds_Mov_det.Eof do
  begin
    if cLotes.Active then
      cLotes.Close;
    cLotes.Params[0].AsString := dmnf.cds_Mov_detLOTE.AsString;
    cLotes.Open;
    if (not cLotes.IsEmpty) then
    begin
      cLotes.Edit;
      cLotesESTOQUE.Value := cLotesESTOQUE.Value + dmnf.cds_Mov_detQUANTIDADE.Value;
      cLotes.ApplyUpdates(0);
    end;
    cLotes.Close;
    DMNF.cds_Mov_det.Next;
  end;
end;

procedure TfNF.BitBtn16Click(Sender: TObject);
var I : integer;
    texto : string;
begin
    //********************************************************************************
    // aqui corrijo o codigo do movimento na tabela mov_detalhe
    I := 1;
    dmnf.cds_Mov_det.First;
    While not dmnf.cds_Mov_det.Eof do
    begin
       if (cLotes.Active) then
         cLotes.Close;
       cLotes.Params[0].AsString := dmnf.cds_Mov_detLOTE.AsString;
       cLotes.Open;
       if (I = 1) then
       begin
         if (cLotesESTOQUE.Value = 0) then
           texto := 'Dev. Total da NF. nº '
         else
           texto := 'Dev. Parcial da NF. nº ';
         DMNF.cds_nfCORPONF1.AsString := texto + dmnf.cds_Mov_detLOTE.AsString;
       end;

       if (I = 2) then
       begin
         if (cLotesESTOQUE.Value = 0) then
           texto := 'Dev. Total da NF. nº '
         else
           texto := 'Dev. Parcial da NF. nº ';
         DMNF.cds_nfCORPONF2.AsString := texto + dmnf.cds_Mov_detLOTE.AsString;
       end;
       if (I = 3) then
       begin
         if (cLotesESTOQUE.Value = 0) then
           texto := 'Dev. Total da NF. nº '
         else
           texto := 'Dev. Parcial da NF. nº ';
         DMNF.cds_nfCORPONF3.AsString := texto + dmnf.cds_Mov_detLOTE.AsString;
       end;
       if (I = 4) then
       begin
         if (cLotesESTOQUE.Value = 0) then
           texto := 'Dev. Total da NF. nº '
         else
           texto := 'Dev. Parcial da NF. nº ';
         DMNF.cds_nfCORPONF4.AsString := texto + dmnf.cds_Mov_detLOTE.AsString;
       end;
       if (I = 5) then
       begin
         if (cLotesESTOQUE.Value = 0) then
           texto := 'Dev. Total da NF. nº '
         else
           texto := 'Dev. Parcial da NF. nº ';
         DMNF.cds_nfCORPONF5.AsString := texto + dmnf.cds_Mov_detLOTE.AsString;
       end;
       if (I = 6) then
       begin
         if (cLotesESTOQUE.Value = 0) then
           texto := 'Dev. Total da NF. nº '
         else
           texto := 'Dev. Parcial da NF. nº ';
         DMNF.cds_nfCORPONF6.AsString := texto + dmnf.cds_Mov_detLOTE.AsString;
       end;
       I := I + 1;
       dmnf.cds_Mov_det.Next;
    end;
end;

end.
