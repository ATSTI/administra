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
unit uOrdemAssistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, DBClient, Provider, SqlExpr,
  Menus, XPMenu, ExtCtrls, DBCtrls, MMJPanel, Grids, DBGrids, Mask,
  UCHistDataset, UCHist_Base, JvExControls, JvLabel, DBLocal, DBLocalS,
  ComCtrls;

type
  TfOrdemAssistencia = class(TForm)
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    DtSrc: TDataSource;
    MMJPanel1: TMMJPanel;
    btnProcurar: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    MMJPanel2: TMMJPanel;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    GroupBox1: TGroupBox;
    Codigo: TLabel;
    Nome: TLabel;
    Data: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnPesquisa_autorizada: TBitBtn;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBGrid1: TDBGrid;
    btnNovoProd: TBitBtn;
    GroupBox6: TGroupBox;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
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
    cds_produtoLOCALIZACAO: TStringField;
    cds_produtoTIPOPRECOVENDA: TStringField;
    cds_produtoVALORMINIMO: TFloatField;
    cds_produtoVALORCOMISSAO: TFloatField;
    cds_produtoGERADESCONTO: TStringField;
    cds_produtoIMPRIMIR: TStringField;
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
    sds_produtoLOCALIZACAO: TStringField;
    sds_produtoTIPOPRECOVENDA: TStringField;
    sds_produtoVALORMINIMO: TFloatField;
    sds_produtoVALORCOMISSAO: TFloatField;
    sds_produtoGERADESCONTO: TStringField;
    sds_produtoIMPRIMIR: TStringField;
    Label34: TLabel;
    sds_Mov_Det: TSQLDataSet;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
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
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detCODIGO: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detLOTES: TStringField;
    cds_Mov_detDETALHE: TStringField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detDESCPRODUTO: TStringField;
    cds_Mov_detPESO_QTDE: TFloatField;
    cds_Mov_detTotalPedido: TAggregateField;
    DtSrc1: TDataSource;
    sds_prod: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateField1: TDateField;
    StringField12: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    sds_prodICMS: TFloatField;
    sds_prodCODALMOXARIFADO: TIntegerField;
    sds_prodIPI: TFloatField;
    sds_prodCLASSIFIC_FISCAL: TStringField;
    sds_prodCST: TStringField;
    sds_prodBASE_ICMS: TFloatField;
    sds_prodPRODUTO: TStringField;
    sds_prodPRECOMEDIO: TBCDField;
    sds_prodCOD_COMISSAO: TIntegerField;
    sds_prodMARGEM_LUCRO: TFloatField;
    sds_prodCOD_BARRA: TStringField;
    sds_prodVALOR_PRAZO: TFloatField;
    sds_prodTIPO: TStringField;
    sds_prodCONTA_DESPESA: TStringField;
    sds_prodCONTA_RECEITA: TStringField;
    sds_prodCONTA_ESTOQUE: TStringField;
    sds_prodRATEIO: TStringField;
    sds_prodCODPRO: TStringField;
    sds_prodQTDE_PCT: TFloatField;
    sds_prodPESO_QTDE: TFloatField;
    sds_prodDATACADASTRO: TSQLTimeStampField;
    sds_prodMARGEM: TFloatField;
    sds_prodPRO_COD: TStringField;
    sds_prodDATAGRAV: TDateField;
    sds_prodCODFORN: TStringField;
    dsp_prod: TDataSetProvider;
    cds_prod: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    DateField2: TDateField;
    StringField18: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    cds_prodICMS: TFloatField;
    cds_prodCODALMOXARIFADO: TIntegerField;
    cds_prodIPI: TFloatField;
    cds_prodCLASSIFIC_FISCAL: TStringField;
    cds_prodCST: TStringField;
    cds_prodBASE_ICMS: TFloatField;
    cds_prodPRODUTO: TStringField;
    cds_prodPRECOMEDIO: TBCDField;
    cds_prodCOD_COMISSAO: TIntegerField;
    cds_prodMARGEM_LUCRO: TFloatField;
    cds_prodCOD_BARRA: TStringField;
    cds_prodVALOR_PRAZO: TFloatField;
    cds_prodTIPO: TStringField;
    cds_prodCONTA_DESPESA: TStringField;
    cds_prodCONTA_RECEITA: TStringField;
    cds_prodCONTA_ESTOQUE: TStringField;
    cds_prodRATEIO: TStringField;
    cds_prodCODPRO: TStringField;
    cds_prodQTDE_PCT: TFloatField;
    cds_prodPESO_QTDE: TFloatField;
    cds_prodDATACADASTRO: TSQLTimeStampField;
    cds_prodMARGEM: TFloatField;
    cds_prodPRO_COD: TStringField;
    cds_prodDATAGRAV: TDateField;
    cds_prodCODFORN: TStringField;
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
    DataSource2: TDataSource;
    dtProduto: TDataSource;
    DataSource3: TDataSource;
    sds_Movimento: TSQLDataSet;
    dsp_Movimento: TDataSetProvider;
    cds_Movimento: TClientDataSet;
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
    sPermissao: TSQLDataSet;
    sPermissaoUCUSERNAME: TStringField;
    sPermissaoUCLOGIN: TStringField;
    sPermissaoUCPROFILE: TIntegerField;
    dspEstoque: TDataSetProvider;
    sdsEstoque: TSQLDataSet;
    cdsEstoque: TClientDataSet;
    cdsEstoqueCOD: TIntegerField;
    cdsEstoqueCODPROD: TStringField;
    cdsEstoqueSUM: TFloatField;
    cdsETotal: TClientDataSet;
    cdsETotalCODPRODUTO: TIntegerField;
    cdsETotalQUANTIDADE: TFloatField;
    cdsETotalPRECO: TFloatField;
    dspETotal: TDataSetProvider;
    sdsETotal: TSQLDataSet;
    sPrazo: TSQLDataSet;
    sPrazoPRAZORECEBIMENTO: TSmallintField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCODPRO: TStringField;
    sdsPRODUTO: TStringField;
    sdsCODALMOXARIFADO: TIntegerField;
    sdsVALOR_PRAZO: TFloatField;
    sdsQTDE_PCT: TFloatField;
    sdsCONTA_DESPESA: TStringField;
    sdsLOCALIZACAO: TStringField;
    sdsUNIDADEMEDIDA: TStringField;
    sdsVALORUNITARIOATUAL: TFloatField;
    sdsUSALOTE: TStringField;
    sdsCODPRODUTO: TIntegerField;
    cds: TClientDataSet;
    cdsCODPRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsCODALMOXARIFADO: TIntegerField;
    cdsVALOR_PRAZO: TFloatField;
    cdsQTDE_PCT: TFloatField;
    cdsCONTA_DESPESA: TStringField;
    cdsLOCALIZACAO: TStringField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsUSALOTE: TStringField;
    cdsCODPRODUTO: TIntegerField;
    cdsDetalhe: TClientDataSet;
    cdsDetalheCODPRODMP: TIntegerField;
    cdsDetalheSUM: TFloatField;
    cdsDetalheUSAPRECO: TStringField;
    dspDetalhe: TDataSetProvider;
    sdsDetalhe: TSQLDataSet;
    sdsDetalheCODPRODMP: TIntegerField;
    sdsDetalheSUM: TFloatField;
    sdsDetalheUSAPRECO: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    ds_ccusto: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    dbeCodRevenda: TDBEdit;
    dbeNomeRevenda: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    dbeCodConsumidor: TDBEdit;
    dbeNomeConsumidor: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
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
    ds_serv: TDataSource;
    JvLabel1: TJvLabel;
    sds_forn: TSQLDataSet;
    dsp_forn: TDataSetProvider;
    cds_forn: TClientDataSet;
    sds_fornCODFORNECEDOR: TIntegerField;
    sds_fornRAZAOSOCIAL: TStringField;
    sds_fornCNPJ: TStringField;
    sds_fornCIDADE: TStringField;
    sds_fornDDD: TSmallintField;
    sds_fornTELEFONE: TStringField;
    sds_fornUF: TStringField;
    cds_fornCODFORNECEDOR: TIntegerField;
    cds_fornRAZAOSOCIAL: TStringField;
    cds_fornCNPJ: TStringField;
    cds_fornCIDADE: TStringField;
    cds_fornDDD: TSmallintField;
    cds_fornTELEFONE: TStringField;
    cds_fornUF: TStringField;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoCONTROLE: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoCODREV: TIntegerField;
    sds_MovimentoRAZREV: TStringField;
    sds_MovimentoUFREV: TStringField;
    sds_MovimentoCIDADEREV: TStringField;
    sds_MovimentoRAZFORN: TStringField;
    sds_MovimentoCNPJFORN: TStringField;
    sds_MovimentoCIDADEFORN: TStringField;
    sds_MovimentoUFFORN: TStringField;
    sds_MovimentoDDFORN: TSmallintField;
    sds_MovimentoTELFORN: TStringField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODCONS: TIntegerField;
    sds_MovimentoNOMECONS: TStringField;
    sds_MovimentoCNPJCONS: TStringField;
    sds_MovimentoTELCONS: TStringField;
    sds_MovimentoENDCONS: TStringField;
    sds_MovimentoUFCONS: TStringField;
    sds_MovimentoCIDADECONS: TStringField;
    sds_MovimentoBAIRROCONS: TStringField;
    sds_MovimentoCEPCONS: TStringField;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoCONTROLE: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoCODREV: TIntegerField;
    cds_MovimentoRAZREV: TStringField;
    cds_MovimentoUFREV: TStringField;
    cds_MovimentoCIDADEREV: TStringField;
    cds_MovimentoRAZFORN: TStringField;
    cds_MovimentoCNPJFORN: TStringField;
    cds_MovimentoCIDADEFORN: TStringField;
    cds_MovimentoUFFORN: TStringField;
    cds_MovimentoDDFORN: TSmallintField;
    cds_MovimentoTELFORN: TStringField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODCONS: TIntegerField;
    cds_MovimentoNOMECONS: TStringField;
    cds_MovimentoCNPJCONS: TStringField;
    cds_MovimentoTELCONS: TStringField;
    cds_MovimentoENDCONS: TStringField;
    cds_MovimentoUFCONS: TStringField;
    cds_MovimentoCIDADECONS: TStringField;
    cds_MovimentoBAIRROCONS: TStringField;
    cds_MovimentoCEPCONS: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    scds_cli: TSQLClientDataSet;
    scds_cliCODCLIENTE: TIntegerField;
    scds_cliNOMECLIENTE: TStringField;
    scds_cliRAZAOSOCIAL: TStringField;
    scds_cliCNPJ: TStringField;
    scds_cliCIDADE: TStringField;
    scds_cliUF: TStringField;
    scds_cliLOGRADOURO: TStringField;
    scds_cliDDD: TStringField;
    scds_cliRG: TStringField;
    scds_cliTELEFONE: TStringField;
    scds_cliCEP: TStringField;
    scds_cliBAIRRO: TStringField;
    scds_cliBLOQUEIO: TStringField;
    scds_cliSTATUS: TSmallintField;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_Mov_DetDESCPRODUTO: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetPESO_QTDE: TFloatField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetCODIGO: TStringField;
    sds_Mov_DetLOTES: TStringField;
    sds_Mov_DetDETALHE: TStringField;
    sds_MovimentoCONFERIDO: TStringField;
    sds_MovimentoNFCOBRANCA: TIntegerField;
    sds_MovimentoORDEMATEND: TIntegerField;
    sds_MovimentoNFREVENDA: TIntegerField;
    cds_MovimentoCONFERIDO: TStringField;
    cds_MovimentoNFCOBRANCA: TIntegerField;
    cds_MovimentoORDEMATEND: TIntegerField;
    cds_MovimentoNFREVENDA: TIntegerField;
    sFornecedor: TSQLDataSet;
    ComboBox1: TComboBox;
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
    scds_cliente_procCODUSUARIO: TIntegerField;
    scds_cliente_procBLOQUEIO: TStringField;
    scds_cliente_procCNPJ: TStringField;
    scds_cliente_procCIDADE: TStringField;
    scds_cliente_procLOGRADOURO: TStringField;
    scds_cliente_procDDD: TStringField;
    scds_cliente_procRG: TStringField;
    scds_cliente_procTELEFONE: TStringField;
    scds_cliente_procCEP: TStringField;
    scds_cliente_procBAIRRO: TStringField;
    scds_prod_proc: TSQLDataSet;
    scds_prod_procCODPRO: TStringField;
    scds_prod_procCODPRODUTO: TIntegerField;
    scds_prod_procPRODUTO: TStringField;
    scds_prod_procCODALMOXARIFADO: TIntegerField;
    scds_prod_procVALOR_PRAZO: TFloatField;
    scds_prod_procQTDE_PCT: TFloatField;
    scds_prod_procCONTA_DESPESA: TStringField;
    scds_prod_procLOCALIZACAO: TStringField;
    scds_prod_procUNIDADEMEDIDA: TStringField;
    scds_prod_procVALORUNITARIOATUAL: TFloatField;
    scds_prod_procUSALOTE: TStringField;
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
    sFornecedorCODENDERECO: TIntegerField;
    sFornecedorCODFORNECEDOR_1: TIntegerField;
    sFornecedorLOGRADOURO: TStringField;
    sFornecedorBAIRRO: TStringField;
    sFornecedorCOMPLEMENTO: TStringField;
    sFornecedorCIDADE: TStringField;
    sFornecedorUF: TStringField;
    sFornecedorCEP: TStringField;
    sFornecedorDDD: TSmallintField;
    sFornecedorTELEFONE: TStringField;
    sFornecedorTELEFONE1: TStringField;
    sFornecedorTELEFONE2: TStringField;
    sFornecedorFAX: TStringField;
    sFornecedorE_MAIL: TStringField;
    sFornecedorRAMAL: TStringField;
    sFornecedorTIPOEND: TSmallintField;
    sFornecedorDADOSADICIONAIS: TStringField;
    ComboBox2: TComboBox;
    SForn: TSQLDataSet;
    SFornCODFORNECEDOR: TIntegerField;
    SFornNOMEFORNECEDOR: TStringField;
    SFornRAZAOSOCIAL: TStringField;
    SFornCONTATO: TStringField;
    SFornTIPOFIRMA: TSmallintField;
    SFornCPF: TStringField;
    SFornCNPJ: TStringField;
    SFornINSCESTADUAL: TStringField;
    SFornRG: TStringField;
    SFornSEGMENTO: TSmallintField;
    SFornREGIAO: TSmallintField;
    SFornLIMITECREDITO: TFloatField;
    SFornDATACADASTRO: TDateField;
    SFornCODUSUARIO: TIntegerField;
    SFornSTATUS: TSmallintField;
    SFornHOMEPAGE: TStringField;
    SFornPRAZOPAGAMENTO: TSmallintField;
    SFornPRAZOENTREGA: TSmallintField;
    SFornCONTA_FORNECEDOR: TStringField;
    sLotes: TSQLDataSet;
    sLotesCODLOTE: TIntegerField;
    sLotesLOTE: TStringField;
    sLotesCODPRODUTO: TIntegerField;
    sLotesDATAFABRICACAO: TDateField;
    sLotesDATAVENCIMENTO: TDateField;
    sLotesESTOQUE: TFloatField;
    sLotesPRECO: TFloatField;
    sLotesNOTAFISCAL: TStringField;
    sLotesSERIEINI: TIntegerField;
    sLotesSERIEFIM: TIntegerField;
    sLotesPRODUTO: TStringField;
    sLotesVALORUNITARIOATUAL: TFloatField;
    sLotesCODPRO: TStringField;
    cds_Mov_detCODLOTE: TIntegerField;
    sds_Mov_DetCODLOTE: TIntegerField;
    BtnRevenda: TBitBtn;
    btnCliente: TBitBtn;
    btnProdutoProcura: TBitBtn;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoProdClick(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure dbeCodRevendaExit(Sender: TObject);
    procedure dbeCodConsumidorExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Exit(Sender: TObject);
    procedure dbeCodRevendaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodConsumidorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27Exit(Sender: TObject);
    procedure BtnRevendaClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
  private
    modo :string;
    function Verifica_Campos_Em_Branco: Boolean;
    { Private declarations }
  public
  campocentrocusto, usarateio, usaprecolista, CODIGOPRODUTO, tipoCompra, CompradorPadraoNome : String;
  J: integer;
    { Public declarations }
  end;

var
  fOrdemAssistencia: TfOrdemAssistencia;
  Incluir, Alterar, Excluir, Cancelar, Procurar : String;
  qtde: Double;

implementation

uses UDm, UDmSaude, ufDlgLogin, uUtils, sCtrlResize, uProcurar_nf, UDMNF,
  ufprocura_prod, uProcurar;

{$R *.dfm}

(***********************************************************************)
function TfOrdemAssistencia.Verifica_Campos_Em_Branco: Boolean;
var cont : integer;
begin
  Result:=True; //assume que estão todos preenchidos
  for cont:= 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[cont].Required then
      if (DtSrc.DataSet.Fields[cont].IsNull)or
         (DtSrc.DataSet.Fields[cont].AsString='') then
      begin
        MessageDlg('Preencha o campo "'+DtSrc.DataSet.Fields[cont].DisplayLabel+'"',
                   mtWarning,[mbOk],0);
        Result:=False;
        Break;
      end;
end;
(***********************************************************************)

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfOrdemAssistencia.DtSrcStateChange(Sender: TObject);
var icomp: integer;
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
 if Incluir = 'S' then
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive]
 else
    btnIncluir.Enabled := False;

 if Alterar = 'S' then
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnGravar.Enabled:=False;

 if Cancelar = 'S' then
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnCancelar.Enabled:=false;

 if Excluir = 'S' then
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse]
 else
  btnExcluir.Enabled:=false;

 if Procurar = 'S' then
  btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive]
 else
  btnProcurar.Enabled := False;
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

  for icomp:=0 to ComponentCount - 1 do
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit, dsBrowse];

  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnGravar.Enabled := True;
    btnCancelar.Visible := True;
    btnCancelar.Enabled := True;    
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Enabled := True;
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btnExcluir.Enabled := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;

end;

procedure TfOrdemAssistencia.btnIncluirClick(Sender: TObject);
begin
inherited;
  J := 1;
  modo := 'incluir';
  codmovdet := 1999999;

  if cds_Movimento.Active then
    cds_Movimento.Open;
  cds_Movimento.Params[0].Clear;

  if cds_Mov_det.Active then
    cds_Mov_det.Open;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;

  if DtSrc.DataSet.State in [dsInactive] then
  begin
    DtSrc.DataSet.Open;
    DtSrc.DataSet.Edit;
    DtSrc.DataSet.Append;
  end;
  if DtSrc.DataSet.State in [dsBrowse] then
  begin
      DtSrc.DataSet.Edit;
      DtSrc.DataSet.Append;
  end;

  cds_MovimentoCODNATUREZA.AsInteger := 4;
  cds_MovimentoSTATUS.AsInteger := 0;

  cds_MovimentoCODUSUARIO.AsInteger := 1;
  cds_MovimentoNOMEUSUARIO.AsString := CompradorPadraoNome;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;

  if c_8_serv.Active then
    c_8_serv.Close;

  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;

  if DtSrc1.DataSet.State in [dsInactive] then
  begin
    DtSrc1.DataSet.Open;
    DtSrc1.DataSet.Append;
  end;
  if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;

  ComboBox2.Items.Clear;
  if sForn.Active then
    sForn.Close;
  sForn.Open;
  sForn.First;
  while not sForn.Eof do
  begin
    ComboBox2.Items.Add(SFornRAZAOSOCIAL.AsString);
    sForn.Next;
  end;
end;

procedure TfOrdemAssistencia.btnSairClick(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
      close;
  end
  else
    Close;
end;

procedure TfOrdemAssistencia.btnExcluirClick(Sender: TObject);
begin
  if Excluir = 'N' then Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TfOrdemAssistencia.btnCancelarClick(Sender: TObject);
begin
  if Cancelar = 'N' then Exit;
  DtSrc.DataSet.Cancel;
end;

procedure TfOrdemAssistencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;

procedure TfOrdemAssistencia.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;



procedure TfOrdemAssistencia.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
   str, str_For, strOriginal :string;
   i : Integer;
   util : TUtils;
begin
  util := TUtils.Create;
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
             str_For := str_For + ':' + util.DeleteChar('''',dataset.Fields[i].AsString) + '; '+#13+#10;
           end;
        end;
        // aqui se modificar o arquivo
        if (dataset.UpdateStatus = usUnModified) then
        begin
           if (str_For = '') then
            str_for := '----Modificado----' + #13+#10;
             strOriginal := strOriginal + dataset.FieldDefList[i].Name;
             if (dataset.Fields[i].AsString <> '') then
               strOriginal := strOriginal + ': ' + util.DeleteChar('''',dataset.Fields[i].AsString)
             else
               strOriginal := strOriginal + ': Vazio';
           DataSet.Next;
           if (not dataset.Fields[i].IsNull) then
           begin
             if (dataset.Fields[i].AsString = '') then
               str_For := str_For + strOriginal +  ' -> Vazio; '+#13+#10
             else
               str_For := str_For + strOriginal +  ' -> ' + util.DeleteChar('''',dataset.Fields[i].AsString) + '; '+#13+#10;
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
             str_For := str_For + ':' + util.DeleteChar('''',dataset.Fields[i].AsString) + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      dm.sqlsisAdimin.ExecuteDirect(str);
  end;

end;


procedure TfOrdemAssistencia.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fOrdemAssistencia));
end;

procedure TfOrdemAssistencia.btnGravarClick(Sender: TObject);
begin
   if cds_Movimento.State in [dsInsert] then
   begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
   end;
  IF (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    {if (cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive])) then
      cds_MovimentoCODALMOXARIFADO.AsInteger := StrToInt(cds_ccustoCODIGO.AsString)
    else
      cds_MovimentoCODALMOXARIFADO.AsInteger:= ccustoCompras;  }
  inherited;
  cds_Movimento.ApplyUpdates(0);
  if (cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
  begin
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      if (cds_Mov_detLOTE.asString = '') then
        cds_Mov_detLOTE.Clear;
      cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      cds_Mov_detQUANTIDADE.AsInteger := 1;      
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_det.Post;
      cds_Mov_det.Next;
      codmovdet := 0;
    end;
  end;
  cds_Mov_det.ApplyUpdates(0);
  end;
  // LANCAR COMPRAS PARA GERAR CONTAS A PAGAR DESTA DESPESA ?????????????
  // MOVIMENTO VAI FICAR COM CODNATUREZA = 4 MESMO   ????????????????????


end;

procedure TfOrdemAssistencia.btnNovoProdClick(Sender: TObject);
begin
inherited;
  if (J = 10) then
  begin
    btnGravar.Click;
    J := 0;
  end
  else
    J := J + 1;
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
   if cds_Movimento.State in [dsBrowse, dsInactive] then
    cds_Movimento.Edit;
    DtSrc1.DataSet.Post;
    if ds_serv.State in [dsInsert, dsEdit] then
    begin
      if cds_Movimento.State in [dsBrowse, dsInactive] then
        cds_Movimento.Edit;
      c_8_servPRECO.AsFloat := cds_Mov_detPRECO.AsFloat;
      ds_serv.DataSet.Post;
    end;
    if (usarateio = 'SIM') then
    begin
      usarateio := 'NAO';
      //btnGravar.Click;
      cds_Movimento.Edit;
    end;
    DtSrc1.DataSet.Append;
    DBEdit30.SetFocus;
  end;
  if DtSrc1.State in [dsBrowse] then
  begin
   if cds_Movimento.State in [dsBrowse, dsInactive] then
    cds_Movimento.Edit;
    DtSrc1.DataSet.Append;
    DBEdit30.SetFocus;
  end;
end;

procedure TfOrdemAssistencia.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  //  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
  if (cds_Mov_detPESO_QTDE.Value >0) then
     qtde := cds_Mov_detPESO_QTDE.Value;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (qtde > 0) then
      valor := (cds_Mov_detQTDE_ALT.AsFloat - cds_Mov_detICMS.AsFloat)/qtde
    else
      valor := cds_Mov_detQUANTIDADE.AsFloat;
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * valor;
  end
  else begin
    if cds_Mov_detQTDE_ALT.Value > 0 then
    begin
      cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
      //valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
      //cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
    end
    else
      cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
  end;
end;

procedure TfOrdemAssistencia.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (codmovdet < 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TfOrdemAssistencia.cds_Mov_detReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfOrdemAssistencia.DBEdit1Exit(Sender: TObject);
begin
  if (dtsrc.State in [dsInsert]) then
  begin
    if (DBEdit1.Text = '') then
    begin
      exit;
    end;
    if cds_forn.Active then
    cds_forn.Close;
    cds_forn.Params[0].AsInteger := StrToInt(DBEdit1.Text);
    cds_forn.Open;
    if cds_forn.IsEmpty then begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_MovimentoCODFORNECEDOR.AsInteger := cds_fornCODFORNECEDOR.AsInteger;
    cds_MovimentoRAZFORN.AsString := cds_fornRAZAOSOCIAL.AsString;
    cds_MovimentoCNPJFORN.AsString := cds_fornCNPJ.AsString;
    cds_MovimentoCIDADEFORN.AsString := cds_fornCIDADE.AsString;
    cds_MovimentoTELFORN.AsString := cds_fornTELEFONE.AsString;
    cds_MovimentoDDFORN.AsString := cds_fornDDD.AsString;
    cds_MovimentoUFFORN.AsString := cds_fornUF.AsString;

    ComboBox2.Text := cds_fornRAZAOSOCIAL.AsString;
    dbEdit6.Text := cds_fornCNPJ.AsString;
    dbEdit7.Text := cds_fornCIDADE.AsString;
    dbEdit8.Text := cds_fornUF.AsString;
    dbEdit10.Text := cds_fornTELEFONE.AsString;
    dbEdit9.Text := cds_fornDDD.AsString;
    cds_forn.Close;
    if (campocentrocusto = 'SIM') then
  end
  else
  if DBEdit1.Field.OldValue<>DBEdit1.Field.NewValue then
  begin
    if cds_forn.Active then
      cds_forn.Close;
    cds_forn.Params[0].AsInteger:=StrToInt(DBEdit1.Text);
    cds_forn.Open;
    if cds_forn.IsEmpty then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_MovimentoCODREV.AsInteger := cds_fornCODFORNECEDOR.AsInteger;
    cds_MovimentoRAZREV.AsString := cds_fornRAZAOSOCIAL.AsString;
    cds_MovimentoCNPJFORN.AsString := cds_fornCNPJ.AsString;
    cds_MovimentoCIDADEFORN.AsString := cds_fornCIDADE.AsString;
    cds_MovimentoTELFORN.AsString := cds_fornTELEFONE.AsString;
    cds_MovimentoDDFORN.AsString := cds_fornDDD.AsString;
    cds_MovimentoUFFORN.AsString := cds_fornUF.AsString;

    ComboBox2.Text := cds_fornRAZAOSOCIAL.AsString;
    dbEdit6.Text := cds_fornCNPJ.AsString;
    dbEdit7.Text := cds_fornCIDADE.AsString;
    dbEdit8.Text := cds_fornUF.AsString;
    dbEdit10.Text := cds_fornTELEFONE.AsString;
    dbEdit9.Text := cds_fornDDD.AsString;


  end;
  cds_forn.Close;
end;

procedure TfOrdemAssistencia.dbeCodRevendaExit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
   if dbeCodRevenda.Text = '' then
     exit;
   if scds_cliente_proc.Active then
      scds_cliente_proc.Close;
   scds_cliente_proc.Params[0].Clear;
   scds_cliente_proc.Params[1].Clear;
   scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodRevenda.Text);
   scds_cliente_proc.Open;
    if scds_cliente_proc.IsEmpty then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_MovimentoCODREV.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoRAZREV.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCIDADEREV.AsString := scds_cliente_procCIDADE.AsString;
    cds_MovimentoUFREV.AsString := scds_cliente_procUF.AsString;

    dbeNomeRevenda.Text := scds_cliente_procNOMECLIENTE.AsString;
    DBEdit13.Text := scds_cliente_procCIDADE.AsString;
    DBEdit14.Text := scds_cliente_procUF.AsString;
//    scds_cliente_proc.Close;

  if scds_cliente_procBLOQUEIO.AsString = 'S' then
    begin
      MessageDlg('Revendedor com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
      cds_Movimento.Cancel;
      exit;
    end;
    cds_MovimentoCODREV.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoRAZREV.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCIDADEREV.AsString := scds_cliente_procCIDADE.AsString;
    cds_MovimentoUFREV.AsString := scds_cliente_procUF.AsString;

    DBENomeRevenda.Text := scds_cliente_procNOMECLIENTE.AsString;
    DBEdit13.Text := scds_cliente_procCIDADE.AsString;
    DBEdit14.Text := scds_cliente_procUF.AsString;
    scds_cliente_proc.Close;

  end
  else
  if dbeCodRevenda.Field.OldValue <> dbeCodRevenda.Field.NewValue then
  begin
   if dbeCodRevenda.Text = '' then
     exit;
   if scds_cliente_proc.Active then
      scds_cliente_proc.Close;
   scds_cliente_proc.Params[0].Clear;
   scds_cliente_proc.Params[1].Clear;
   scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodRevenda.Text);
   scds_cliente_proc.Open;
    if scds_cliente_proc.IsEmpty then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    if scds_cliente_procSTATUS.AsInteger = 2 then
    begin
      MessageDlg('Revendedor com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
      exit;
    end;

    cds_MovimentoCODREV.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoRAZREV.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCIDADEREV.AsString := scds_cliente_procCIDADE.AsString;
    cds_MovimentoUFREV.AsString := scds_cliente_procUF.AsString;

    dbeNomeRevenda.Text := scds_cliente_procNOMECLIENTE.AsString;
    DBEdit13.Text := scds_cliente_procCIDADE.AsString;
    DBEdit14.Text := scds_cliente_procUF.AsString;

    scds_cliente_proc.Close;
    end;

end;

procedure TfOrdemAssistencia.dbeCodConsumidorExit(Sender: TObject);
begin
inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
   if dbeCodConsumidor.Text = '' then
     exit;
   if scds_cliente_proc.Active then
      scds_cliente_proc.Close;
   scds_cliente_proc.Params[0].Clear;
   scds_cliente_proc.Params[1].Clear;
   scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodConsumidor.Text);
   scds_cliente_proc.Open;

   if scds_cliente_proc.IsEmpty then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_MovimentoCODCONS.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoNOMECONS.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCIDADECONS.AsString := scds_cliente_procCIDADE.AsString;
    cds_MovimentoUFCONS.AsString := scds_cliente_procUF.AsString;
    cds_MovimentoCNPJCONS.AsString := scds_cliente_procCNPJ.AsString;
    cds_MovimentoTELCONS.AsString := scds_cliente_procTELEFONE.AsString;
    cds_MovimentoENDCONS.AsString := scds_cliente_procLOGRADOURO.AsString;
    cds_MovimentoBAIRROCONS.AsString := scds_cliente_procBAIRRO.AsString;
    cds_MovimentoCEPCONS.AsString := scds_cliente_procCEP.AsString;

    dbeNomeConsumidor.Text := scds_cliente_procNOMECLIENTE.AsString;
    DBEdit19.Text := scds_cliente_procCNPJ.AsString;
    DBEdit20.Text := scds_cliente_procTELEFONE.AsString;
    DBEdit21.Text := scds_cliente_procLOGRADOURO.AsString;
    DBEdit22.Text := scds_cliente_procUF.AsString;
    DBEdit23.Text := scds_cliente_procBAIRRO.AsString;
    DBEdit24.Text := scds_cliente_procCIDADE.AsString;
    DBEdit25.Text := scds_cliente_procCEP.AsString;
    //scds_cliente_proc.Close;

  if scds_cliente_procBLOQUEIO.AsString = 'S' then
    begin
      MessageDlg('Revendedor com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
      cds_Movimento.Cancel;
      exit;
    end;
    cds_MovimentoCODCONS.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoNOMECONS.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCIDADECONS.AsString := scds_cliente_procCIDADE.AsString;
    cds_MovimentoUFCONS.AsString := scds_cliente_procUF.AsString;
    cds_MovimentoCNPJCONS.AsString := scds_cliente_procCNPJ.AsString;
    cds_MovimentoTELCONS.AsString := scds_cliente_procTELEFONE.AsString;
    cds_MovimentoENDCONS.AsString := scds_cliente_procLOGRADOURO.AsString;
    cds_MovimentoBAIRROCONS.AsString := scds_cliente_procBAIRRO.AsString;
    cds_MovimentoCEPCONS.AsString := scds_cliente_procCEP.AsString;

    dbeNomeConsumidor.Text := scds_cliente_procNOMECLIENTE.AsString;
    DBEdit19.Text := scds_cliente_procCNPJ.AsString;
    DBEdit20.Text := scds_cliente_procTELEFONE.AsString;
    DBEdit21.Text := scds_cliente_procLOGRADOURO.AsString;
    DBEdit22.Text := scds_cliente_procUF.AsString;
    DBEdit23.Text := scds_cliente_procBAIRRO.AsString;
    DBEdit24.Text := scds_cliente_procCIDADE.AsString;
    DBEdit25.Text := scds_cliente_procCEP.AsString;
    scds_cliente_proc.Close;

  end
  else
  if dbeCodConsumidor.Field.OldValue <> dbeCodConsumidor.Field.NewValue then
  begin
    if scds_cliente_proc.Active then
       scds_cliente_proc.Close;
    scds_cliente_proc.Params[0].Clear;
    scds_cliente_proc.Params[1].Clear;
    scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodConsumidor.Text);
    scds_cliente_proc.Open;
    if scds_cliente_proc.IsEmpty then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    if scds_cliente_procSTATUS.AsInteger = 2 then
    begin
      MessageDlg('Revendedor com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
      exit;
    end;

    cds_MovimentoCODCONS.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoNOMECONS.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCIDADECONS.AsString := scds_cliente_procCIDADE.AsString;
    cds_MovimentoUFCONS.AsString := scds_cliente_procUF.AsString;
    cds_MovimentoCNPJCONS.AsString := scds_cliente_procCNPJ.AsString;
    cds_MovimentoTELCONS.AsString := scds_cliente_procTELEFONE.AsString;
    cds_MovimentoENDCONS.AsString := scds_cliente_procLOGRADOURO.AsString;
    cds_MovimentoBAIRROCONS.AsString := scds_cliente_procBAIRRO.AsString;
    cds_MovimentoCEPCONS.AsString := scds_cliente_procCEP.AsString;

    dbeNomeConsumidor.Text := scds_cliente_procNOMECLIENTE.AsString;
    DBEdit19.Text := scds_cliente_procCNPJ.AsString;
    DBEdit20.Text := scds_cliente_procTELEFONE.AsString;
    DBEdit21.Text := scds_cliente_procLOGRADOURO.AsString;
    DBEdit22.Text := scds_cliente_procUF.AsString;
    DBEdit23.Text := scds_cliente_procBAIRRO.AsString;
    DBEdit24.Text := scds_cliente_procCIDADE.AsString;
    DBEdit25.Text := scds_cliente_procCEP.AsString;
    scds_cliente_proc.Close;
    end;
end;

procedure TfOrdemAssistencia.FormCreate(Sender: TObject);
begin

  ComboBox2.Items.Clear;
  if sForn.Active then
    sForn.Close;
  sForn.Open;
  sForn.First;
  while not sForn.Eof do
  begin
    ComboBox2.Items.Add(SFornRAZAOSOCIAL.AsString);
    sForn.Next;
  end;

  if cds_Movimento.Active then
      cds_Movimento.Close;
    cds_Movimento.Params[0].clear;
    cds_Movimento.Open;
    // populo a combobox
    cds_Movimento.First;
    while not cds_Movimento.Eof do
    begin
      ComboBox1.Items.Add(cds_MovimentoORDEMATEND.AsString);
      cds_Movimento.Next;
    end;

end;

procedure TfOrdemAssistencia.DBEdit30Exit(Sender: TObject);
begin
inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
   if dbedit30.Text = '' then
     exit;
   if scds_prod_proc.Active then
      scds_prod_proc.Close;
   scds_prod_proc.Params[0].AsInteger := StrToInt(DBEdit30.Text);
   scds_prod_proc.Open;
    if scds_prod_proc.IsEmpty then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_Mov_detCODPRODUTO.AsInteger := scds_prod_procCODPRO.AsInteger;
    cds_Mov_detPRODUTO.AsString := scds_prod_procPRODUTO.AsString;
    cds_Mov_detPRECO.AsFloat := scds_prod_procVALORUNITARIOATUAL.AsFloat;

    DBEdit31.Text := scds_prod_procPRODUTO.AsString;
    DBEdit32.Text := FloatToStr(scds_prod_procVALORUNITARIOATUAL.AsFloat);
    scds_prod_proc.Close;


  if DBEdit30.Field.OldValue <> DBEdit30.Field.NewValue then
  begin
   if dbedit30.Text = '' then
     exit;
   if scds_prod_proc.Active then
      scds_prod_proc.Close;
   scds_prod_proc.Params[0].AsInteger := StrToInt(DBEdit30.Text);
   scds_prod_proc.Open;
   if scds_prod_proc.IsEmpty then
    begin
      MessageDlg('Código não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_Mov_detCODPRODUTO.AsInteger := scds_prod_procCODPRO.AsInteger;
    cds_Mov_detDESCPRODUTO.AsString := scds_prod_procPRODUTO.AsString;
    cds_Mov_detPRECO.AsFloat := scds_prod_procVALORUNITARIOATUAL.AsFloat;

    DBEdit31.Text := scds_prod_procPRODUTO.AsString;
    DBEdit32.Text := FloatToStr(scds_prod_procVALORUNITARIOATUAL.AsFloat);
    scds_prod_proc.Close;
   end;
 end;
end;

procedure TfOrdemAssistencia.ComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if  (key = #13) then
  begin
    if (DtSrc.State in [dsInsert]) then
    begin
      if sFornecedor.Active then
        sFornecedor.Close;
      sFornecedor.Params[0].AsString := ComboBox2.Text;
      sFornecedor.Open;
      DBEdit1.Text := IntToStr(sFornecedorCODFORNECEDOR.AsInteger);
      DBEdit6.Text := sFornecedorCNPJ.AsString;
      DBEdit7.Text := sFornecedorCIDADE.AsString;
      DBEdit8.Text := sFornecedorUF.AsString;
      DBEdit9.Text := IntToStr(sFornecedorDDD.AsInteger);
      DBEdit10.Text := sFornecedorTELEFONE.AsString;
    end;
  end;
end;

procedure TfOrdemAssistencia.ComboBox2Exit(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    if sFornecedor.Active then
      sFornecedor.Close;
    sFornecedor.Params[0].AsString := ComboBox2.Text;
    sFornecedor.Open;
    DBEdit1.Text := IntToStr(sFornecedorCODFORNECEDOR.AsInteger);
    DBEdit6.Text := sFornecedorCNPJ.AsString;
    DBEdit7.Text := sFornecedorCIDADE.AsString;
    DBEdit8.Text := sFornecedorUF.AsString;
    DBEdit9.Text := IntToStr(sFornecedorDDD.AsInteger);
    DBEdit10.Text := sFornecedorTELEFONE.AsString;
  end;
end;

procedure TfOrdemAssistencia.dbeCodRevendaKeyPress(Sender: TObject;
  var Key: Char);
begin
inherited;
  if  (key = #13) then
  begin
    if (dtsrc.State in [dsInsert, dsEdit]) then
    begin
     if dbeCodRevenda.Text = '' then
       exit;
     if scds_cliente_proc.Active then
        scds_cliente_proc.Close;
     scds_cliente_proc.Params[0].Clear;
     scds_cliente_proc.Params[1].Clear;
     scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodRevenda.Text);
     scds_cliente_proc.Open;
      if scds_cliente_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado.', mtWarning,
        [mbOk], 0);
        exit;
      end;
      cds_MovimentoCODREV.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
      cds_MovimentoRAZREV.AsString := scds_cliente_procNOMECLIENTE.AsString;
      cds_MovimentoCIDADEREV.AsString := scds_cliente_procCIDADE.AsString;
      cds_MovimentoUFREV.AsString := scds_cliente_procUF.AsString;

      dbeNomeRevenda.Text := scds_cliente_procNOMECLIENTE.AsString;
      DBEdit13.Text := scds_cliente_procCIDADE.AsString;
      DBEdit14.Text := scds_cliente_procUF.AsString;
  //    scds_cliente_proc.Close;

    if scds_cliente_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Revendedor com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
        cds_Movimento.Cancel;
        exit;
      end;
      cds_MovimentoCODREV.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
      cds_MovimentoRAZREV.AsString := scds_cliente_procNOMECLIENTE.AsString;
      cds_MovimentoCIDADEREV.AsString := scds_cliente_procCIDADE.AsString;
      cds_MovimentoUFREV.AsString := scds_cliente_procUF.AsString;

      dbeNomeRevenda.Text := scds_cliente_procNOMECLIENTE.AsString;
      DBEdit13.Text := scds_cliente_procCIDADE.AsString;
      DBEdit14.Text := scds_cliente_procUF.AsString;
      scds_cliente_proc.Close;

    end
    else
    if dbeCodRevenda.Field.OldValue <> dbeCodRevenda.Field.NewValue then
    begin
     if dbeCodRevenda.Text = '' then
       exit;
     if scds_cliente_proc.Active then
        scds_cliente_proc.Close;
     scds_cliente_proc.Params[0].Clear;
     scds_cliente_proc.Params[1].Clear;
     scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodRevenda.Text);
     scds_cliente_proc.Open;
      if scds_cliente_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado.', mtWarning,
        [mbOk], 0);
        exit;
      end;
      if scds_cliente_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Revendedor com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
      end;

      cds_MovimentoCODREV.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
      cds_MovimentoRAZREV.AsString := scds_cliente_procNOMECLIENTE.AsString;
      cds_MovimentoCIDADEREV.AsString := scds_cliente_procCIDADE.AsString;
      cds_MovimentoUFREV.AsString := scds_cliente_procUF.AsString;

      dbeNomeRevenda.Text := scds_cliente_procNOMECLIENTE.AsString;
      DBEdit13.Text := scds_cliente_procCIDADE.AsString;
      DBEdit14.Text := scds_cliente_procUF.AsString;

      scds_cliente_proc.Close;
      end;
  end;    
end;

procedure TfOrdemAssistencia.dbeCodConsumidorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if  (key = #13) then
  begin
    if (dtsrc.State in [dsInsert, dsEdit]) then
    begin
     if dbeCodConsumidor.Text = '' then
       exit;
     if scds_cliente_proc.Active then
        scds_cliente_proc.Close;
     scds_cliente_proc.Params[0].Clear;
     scds_cliente_proc.Params[1].Clear;
     scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodConsumidor.Text);
     scds_cliente_proc.Open;

     if scds_cliente_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado.', mtWarning,
        [mbOk], 0);
        exit;
      end;
      cds_MovimentoCODCONS.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
      cds_MovimentoNOMECONS.AsString := scds_cliente_procNOMECLIENTE.AsString;
      cds_MovimentoCIDADECONS.AsString := scds_cliente_procCIDADE.AsString;
      cds_MovimentoUFCONS.AsString := scds_cliente_procUF.AsString;
      cds_MovimentoCNPJCONS.AsString := scds_cliente_procCNPJ.AsString;
      cds_MovimentoTELCONS.AsString := scds_cliente_procTELEFONE.AsString;
      cds_MovimentoENDCONS.AsString := scds_cliente_procLOGRADOURO.AsString;
      cds_MovimentoBAIRROCONS.AsString := scds_cliente_procBAIRRO.AsString;
      cds_MovimentoCEPCONS.AsString := scds_cliente_procCEP.AsString;

      dbeNomeConsumidor.Text := scds_cliente_procNOMECLIENTE.AsString;
      DBEdit19.Text := scds_cliente_procCNPJ.AsString;
      DBEdit20.Text := scds_cliente_procTELEFONE.AsString;
      DBEdit21.Text := scds_cliente_procLOGRADOURO.AsString;
      DBEdit22.Text := scds_cliente_procUF.AsString;
      DBEdit23.Text := scds_cliente_procBAIRRO.AsString;
      DBEdit24.Text := scds_cliente_procCIDADE.AsString;
      DBEdit25.Text := scds_cliente_procCEP.AsString;
      //scds_cliente_proc.Close;

    if scds_cliente_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Revendedor com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
        cds_Movimento.Cancel;
        exit;
      end;
      cds_MovimentoCODCONS.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
      cds_MovimentoNOMECONS.AsString := scds_cliente_procNOMECLIENTE.AsString;
      cds_MovimentoCIDADECONS.AsString := scds_cliente_procCIDADE.AsString;
      cds_MovimentoUFCONS.AsString := scds_cliente_procUF.AsString;
      cds_MovimentoCNPJCONS.AsString := scds_cliente_procCNPJ.AsString;
      cds_MovimentoTELCONS.AsString := scds_cliente_procTELEFONE.AsString;
      cds_MovimentoENDCONS.AsString := scds_cliente_procLOGRADOURO.AsString;
      cds_MovimentoBAIRROCONS.AsString := scds_cliente_procBAIRRO.AsString;
      cds_MovimentoCEPCONS.AsString := scds_cliente_procCEP.AsString;

      dbeNomeConsumidor.Text := scds_cliente_procNOMECLIENTE.AsString;
      DBEdit19.Text := scds_cliente_procCNPJ.AsString;
      DBEdit20.Text := scds_cliente_procTELEFONE.AsString;
      DBEdit21.Text := scds_cliente_procLOGRADOURO.AsString;
      DBEdit22.Text := scds_cliente_procUF.AsString;
      DBEdit23.Text := scds_cliente_procBAIRRO.AsString;
      DBEdit24.Text := scds_cliente_procCIDADE.AsString;
      DBEdit25.Text := scds_cliente_procCEP.AsString;
      scds_cliente_proc.Close;

    end
    else
    if dbeCodConsumidor.Field.OldValue <> dbeCodConsumidor.Field.NewValue then
    begin
      if scds_cliente_proc.Active then
         scds_cliente_proc.Close;
      scds_cliente_proc.Params[0].Clear;
      scds_cliente_proc.Params[1].Clear;
      scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCodConsumidor.Text);
      scds_cliente_proc.Open;
      if scds_cliente_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado.', mtWarning,
        [mbOk], 0);
        exit;
      end;
      if scds_cliente_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Revendedor com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
      end;

      cds_MovimentoCODCONS.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
      cds_MovimentoNOMECONS.AsString := scds_cliente_procNOMECLIENTE.AsString;
      cds_MovimentoCIDADECONS.AsString := scds_cliente_procCIDADE.AsString;
      cds_MovimentoUFCONS.AsString := scds_cliente_procUF.AsString;
      cds_MovimentoCNPJCONS.AsString := scds_cliente_procCNPJ.AsString;
      cds_MovimentoTELCONS.AsString := scds_cliente_procTELEFONE.AsString;
      cds_MovimentoENDCONS.AsString := scds_cliente_procLOGRADOURO.AsString;
      cds_MovimentoBAIRROCONS.AsString := scds_cliente_procBAIRRO.AsString;
      cds_MovimentoCEPCONS.AsString := scds_cliente_procCEP.AsString;

      dbeNomeConsumidor.Text := scds_cliente_procNOMECLIENTE.AsString;
      DBEdit19.Text := scds_cliente_procCNPJ.AsString;
      DBEdit20.Text := scds_cliente_procTELEFONE.AsString;
      DBEdit21.Text := scds_cliente_procLOGRADOURO.AsString;
      DBEdit22.Text := scds_cliente_procUF.AsString;
      DBEdit23.Text := scds_cliente_procBAIRRO.AsString;
      DBEdit24.Text := scds_cliente_procCIDADE.AsString;
      DBEdit25.Text := scds_cliente_procCEP.AsString;
      scds_cliente_proc.Close;
      end;
   end;
end;

procedure TfOrdemAssistencia.DBEdit30KeyPress(Sender: TObject;
  var Key: Char);
begin
  if  (key = #13) then
    begin
    if (dtsrc.State in [dsInsert, dsEdit]) then
    begin
     if dbedit30.Text = '' then
       exit;
     if scds_prod_proc.Active then
        scds_prod_proc.Close;
     scds_prod_proc.Params[0].AsInteger := StrToInt(DBEdit30.Text);
     scds_prod_proc.Open;
      if scds_prod_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado.', mtWarning,
        [mbOk], 0);
        exit;
      end;
      cds_Mov_detCODPRODUTO.AsInteger := scds_prod_procCODPRO.AsInteger;
      cds_Mov_detDESCPRODUTO.AsString := scds_prod_procPRODUTO.AsString;
      cds_Mov_detPRECO.AsFloat := scds_prod_procVALORUNITARIOATUAL.AsFloat;

      DBEdit31.Text := scds_prod_procPRODUTO.AsString;
      DBEdit32.Text := FloatToStr(scds_prod_procVALORUNITARIOATUAL.AsFloat);
      scds_prod_proc.Close;


    if DBEdit30.Field.OldValue <> DBEdit30.Field.NewValue then
    begin
     if dbedit30.Text = '' then
       exit;
     if scds_prod_proc.Active then
        scds_prod_proc.Close;
     scds_prod_proc.Params[0].AsInteger := StrToInt(DBEdit30.Text);
     scds_prod_proc.Open;
     if scds_prod_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado.', mtWarning,
        [mbOk], 0);
        exit;
      end;
      cds_Mov_detCODPRODUTO.AsInteger := scds_prod_procCODPRO.AsInteger;
      cds_Mov_detDESCPRODUTO.AsString := scds_prod_procPRODUTO.AsString;
      cds_Mov_detPRECO.AsFloat := scds_prod_procVALORUNITARIOATUAL.AsFloat;

      DBEdit31.Text := scds_prod_procPRODUTO.AsString;
      DBEdit32.Text := FloatToStr(scds_prod_procVALORUNITARIOATUAL.AsFloat);
      scds_prod_proc.Close;
     end;
   end;
 end;
end;

procedure TfOrdemAssistencia.DBEdit27Exit(Sender: TObject);
begin
   if (dbedit27.Text = '') then
   begin
     exit;
   end;  
   if sLotes.Active then
      sLotes.Close;
   sLotes.Params[0].AsInteger := StrToInt(DBEdit27.Text);
   sLotes.Open;
    if sLotes.IsEmpty then
    begin
      MessageDlg('Lote não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_Mov_detCODPRODUTO.AsInteger := sLotesCODPRO.AsInteger;
    cds_Mov_detPRODUTO.AsString := sLotesPRODUTO.AsString;
    cds_Mov_detDESCPRODUTO.AsString := sLotesPRODUTO.AsString;
    cds_Mov_detDTAFAB.AsDateTime := sLotesDATAFABRICACAO.AsDateTime;
    cds_Mov_detLOTE.AsString := sLotesLOTE.AsString;

    DBEdit28.Text := sLotesLOTE.AsString;
    DBEdit29.Text := DateToStr(sLotesDATAFABRICACAO.AsDateTime);
    DBEdit30.Text := IntToStr(sLotesCODPRODUTO.AsInteger);
    DBEdit31.Text := sLotesPRODUTO.AsString;
    DBEdit32.Text := FloatToStr(sLotesPRECO.AsFloat);

    sLotes.Close;


  if (DBEdit28.Field.OldValue <> DBEdit28.Field.NewValue) then
  begin
   if sLotes.Active then
      sLotes.Close;
   sLotes.Params[0].AsInteger := StrToInt(DBEdit27.Text);
   sLotes.Open;
   if sLotes.IsEmpty then
    begin
      MessageDlg('Lote não cadastrado.', mtWarning,
      [mbOk], 0);
      exit;
    end;
    cds_Mov_detCODPRODUTO.AsInteger := sLotesCODPRO.AsInteger;
    cds_Mov_detPRODUTO.AsString := sLotesPRODUTO.AsString;
    cds_Mov_detDESCPRODUTO.AsString := sLotesPRODUTO.AsString;
    cds_Mov_detPRECO.AsFloat := sLotesVALORUNITARIOATUAL.AsFloat;
    cds_Mov_detDTAFAB.AsDateTime := sLotesDATAFABRICACAO.AsDateTime;
    cds_Mov_detLOTE.AsString := sLotesLOTE.AsString;

    DBEdit28.Text := sLotesLOTE.AsString;
    DBEdit29.Text := DateToStr(sLotesDATAFABRICACAO.AsDateTime);
    DBEdit30.Text := IntToStr(sLotesCODPRODUTO.AsInteger);
    DBEdit31.Text := sLotesPRODUTO.AsString;
    DBEdit32.Text := FloatToStr(sLotesPRECO.AsFloat);
    sLotes.Close;
   end;

end;

procedure TfOrdemAssistencia.BtnRevendaClick(Sender: TObject);
begin
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    DM.varNomeCliente := '';
    dm.codcli := 0;
    fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
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
          cds_Movimento.Cancel;
          exit;
          //dbeCliente.SetFocus;
        end;
      end;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
    fProcura_prod.codcli := dm.codcli;

    if dtSrc.State=dsBrowse then
      cds_Movimento.Edit;
    cds_MovimentoCODVENDEDOR.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
    cds_MovimentoRAZREV.AsString := dm.varNomeCliente;//fListaClientes.cdsNOMECLIENTE.AsString;
  end;
end;

procedure TfOrdemAssistencia.btnClienteClick(Sender: TObject);
begin
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    DM.varNomeCliente := '';
    dm.codcli := 0;
    fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
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
          cds_Movimento.Cancel;
          exit;
          //dbeCliente.SetFocus;
        end;
      end;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
    fProcura_prod.codcli := dm.codcli;

    if dtSrc.State=dsBrowse then
      cds_Movimento.Edit;
    cds_MovimentoCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
    cds_MovimentoNOMECONS.AsString := dm.varNomeCliente;//fListaClientes.cdsNOMECLIENTE.AsString;
  end;

end;

procedure TfOrdemAssistencia.btnProdutoProcuraClick(Sender: TObject);
begin
  if (DtSrc1.State in [dsInsert, dsEdit]) then
  begin
    DM.varNomeCliente := '';
    dm.codcli := 0;
    fProcurar := TfProcurar.Create(self,dm.scds_prod);
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'PRODUTO';
    fProcurar.btnIncluir.Visible := True;
    fProcurar.BtnProcurar.Click;
    try
      if (fProcurar.ShowModal = mrOK) then
      begin
        cds_Mov_detCODPRODUTO.AsInteger := fProcurar.codProdProc;
        cds_Mov_detDESCPRODUTO.AsString := fProcurar.DescProProc;
        cds_Mov_detCODPRO.AsString      := fProcurar.codProProc;
      end;
    finally
      if (dm.scds_prod.Active) then
        dm.scds_prod.Close;
      fProcurar.Free;
    end;
  end;
end;

end.
