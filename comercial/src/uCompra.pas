unit uCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Mask, DBCtrls, DBClient, Provider, SqlExpr, Grids, DBGrids,
  rpcompobase, rpvclreport, UCHist_Base, UCHistDataset, JvExDBGrids,
  JvDBGrid, JvExStdCtrls, JvCombobox ,umovimento , dbxpress;

type
  TfCompra = class(TfPai)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Label15: TLabel;
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
    dsp_Movimento: TDataSetProvider;
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
    DtSrc1: TDataSource;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detTotalPedido: TAggregateField;
    dsp_Mov_det: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
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
    dtProduto: TDataSource;
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
    dsp_prod: TDataSetProvider;
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
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ds_ccusto: TDataSource;
    GroupBox1: TGroupBox;
    dbeCliente: TDBEdit;
    btnClienteProcura: TBitBtn;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    dbeProduto: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    ExcluiProduto1: TMenuItem;
    IncluirProduto1: TMenuItem;
    Finalizar1: TMenuItem;
    sdslote: TSQLDataSet;
    sdsloteCODLOTE: TIntegerField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteDATAFABRICACAO: TDateField;
    sdsloteDATAVENCIMENTO: TDateField;
    sdsloteESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    sdsloteCODPRO: TStringField;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    cdslotesCODLOTE: TIntegerField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesDATAFABRICACAO: TDateField;
    cdslotesDATAVENCIMENTO: TDateField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRODUTO: TStringField;
    cdslotesCODPRO: TStringField;
    btnRateio: TBitBtn;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    BitBtn2: TBitBtn;
    VCLReport1: TVCLReport;
    sdslista: TSQLDataSet;
    dsplista: TDataSetProvider;
    cdslista: TClientDataSet;
    sdslistaUNIDADE: TStringField;
    sdslistaPRECOLISTA: TFloatField;
    sdslistaCODIGO: TStringField;
    sdslistaCODPRODUTO: TIntegerField;
    sdslistaCODFORNECEDOR: TIntegerField;
    sdslistaPRODUTO: TStringField;
    cdslistaUNIDADE: TStringField;
    cdslistaPRECOLISTA: TFloatField;
    cdslistaCODIGO: TStringField;
    cdslistaCODPRODUTO: TIntegerField;
    cdslistaCODFORNECEDOR: TIntegerField;
    cdslistaPRODUTO: TStringField;
    dbLote: TDBComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    UCHist_DataSetMovimento: TUCHist_DataSet;
    UCControlHistoricoCompra: TUCControlHistorico;
    UCHist_DataSetMov_det: TUCHist_DataSet;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn9: TBitBtn;
    DataSource3: TDataSource;
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
    BitBtn4: TBitBtn;
    DBGrid1: TJvDBGrid;
    Label18: TLabel;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    Label11: TLabel;
    DBEdit16: TDBEdit;
    SpeedButton1: TBitBtn;
    sds_MovimentoTOTALMOVIMENTO: TFloatField;
    sds_MovimentoCODMOVRATEIO: TIntegerField;
    sds_MovimentoVALORRATEIO: TFloatField;
    sds_MovimentoRATEIO: TFloatField;
    cds_MovimentoTOTALMOVIMENTO: TFloatField;
    cds_MovimentoCODMOVRATEIO: TIntegerField;
    cds_MovimentoVALORRATEIO: TFloatField;
    cds_MovimentoRATEIO: TFloatField;
    CheckBox2: TCheckBox;
    DBEdit17: TDBEdit;
    Label13: TLabel;
    GroupBox8: TGroupBox;
    DBEdit6: TDBEdit;
    sds_MovimentoDATA_ENTREGA: TDateField;
    sds_MovimentoPRAZO_PAGAMENTO: TStringField;
    cds_MovimentoDATA_ENTREGA: TDateField;
    cds_MovimentoPRAZO_PAGAMENTO: TStringField;
    GroupBox9: TGroupBox;
    cbPrazo: TDBComboBox;
    sds_MovimentoUSER_APROVA: TStringField;
    cds_MovimentoUSER_APROVA: TStringField;
    edRespAprovacao: TDBEdit;
    Label16: TLabel;
    GroupBox10: TGroupBox;
    DBEdit7: TDBEdit;
    btnTransp: TBitBtn;
    Label17: TLabel;
    Label19: TLabel;
    cbTransportadora: TComboBox;
    cbTpTransp: TComboBox;
    sds_MovimentoCODTRANSP: TIntegerField;
    sds_MovimentoTPFRETE: TStringField;
    cds_MovimentoCODTRANSP: TIntegerField;
    cds_MovimentoTPFRETE: TStringField;
    Edit1: TEdit;
    Label20: TLabel;
    sds_MovimentoCODPEDIDO: TIntegerField;
    cds_MovimentoCODPEDIDO: TIntegerField;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    BitBtn5: TBitBtn;
    btnDuplicar: TBitBtn;
    btnDupVenda: TBitBtn;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetSTATUS: TStringField;
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
    sds_Mov_DetDESCPRODUTO: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetRATEIO: TStringField;
    sds_Mov_DetPESO_QTDE: TFloatField;
    sds_Mov_DetCFOP: TStringField;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detSTATUS: TStringField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detDESCPRODUTO: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detRATEIO: TStringField;
    cds_Mov_detPESO_QTDE: TFloatField;
    cds_Mov_detCFOP: TStringField;
    sds_Mov_DetPIPI: TFloatField;
    sds_Mov_DetVIPI: TFloatField;
    sds_Mov_DetVALOR_ICMS: TFloatField;
    cds_Mov_detPIPI: TFloatField;
    cds_Mov_detVIPI: TFloatField;
    cds_Mov_detVALOR_ICMS: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetCSOSN: TStringField;
    sds_Mov_DetNITEMPED: TIntegerField;
    sds_Mov_DetPEDIDO: TStringField;
    sds_Mov_DetCST: TStringField;
    sds_Mov_DetVLR_BASE: TFloatField;
    sds_Mov_DetVLR_BASEICMS: TFloatField;
    sds_Mov_DetVALOR_DESCONTO: TFloatField;
    sds_Mov_DetFRETE: TFloatField;
    sds_Mov_DetICMS_SUBST: TFloatField;
    sds_Mov_DetICMS_SUBSTD: TFloatField;
    sds_Mov_DetVALOR_SEGURO: TFloatField;
    sds_Mov_DetVALOR_OUTROS: TFloatField;
    sds_Mov_DetNCM: TStringField;
    sds_Mov_DetII: TFloatField;
    sds_Mov_DetBCII: TFloatField;
    sds_Mov_DetOBS: TStringField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detCSOSN: TStringField;
    cds_Mov_detNITEMPED: TIntegerField;
    cds_Mov_detPEDIDO: TStringField;
    cds_Mov_detCST: TStringField;
    cds_Mov_detVLR_BASE: TFloatField;
    cds_Mov_detVLR_BASEICMS: TFloatField;
    cds_Mov_detVALOR_DESCONTO: TFloatField;
    cds_Mov_detFRETE: TFloatField;
    cds_Mov_detICMS_SUBST: TFloatField;
    cds_Mov_detICMS_SUBSTD: TFloatField;
    cds_Mov_detVALOR_SEGURO: TFloatField;
    cds_Mov_detVALOR_OUTROS: TFloatField;
    cds_Mov_detNCM: TStringField;
    cds_Mov_detII: TFloatField;
    cds_Mov_detBCII: TFloatField;
    cds_Mov_detOBS: TStringField;
    sds_Mov_DetCSTIPI: TStringField;
    sds_Mov_DetCSTPIS: TStringField;
    sds_Mov_DetCSTCOFINS: TStringField;
    cds_Mov_detCSTIPI: TStringField;
    cds_Mov_detCSTPIS: TStringField;
    cds_Mov_detCSTCOFINS: TStringField;
    GroupBox11: TGroupBox;
    edCFOP: TEdit;
    sds_Mov_DetFRETE_BC: TStringField;
    cds_Mov_detFRETE_BC: TStringField;
    sds_Mov_DetVALOR_PIS: TFloatField;
    sds_Mov_DetVALOR_COFINS: TFloatField;
    cds_Mov_detVALOR_PIS: TFloatField;
    cds_Mov_detVALOR_COFINS: TFloatField;
    sds_Mov_DetPAGOU: TStringField;
    cds_Mov_detPAGOU: TStringField;
    procedure dbeClienteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRateioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure DtSrc1DataChange(Sender: TObject; Field: TField);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_MovimentoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure cds_Mov_detBeforePost(DataSet: TDataSet);
    procedure dbLoteChange(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnTranspClick(Sender: TObject);
    procedure cbTransportadoraChange(Sender: TObject);
    procedure cbTpTranspChange(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure btnDupVendaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure GroupBox11Click(Sender: TObject);
    procedure edCFOPExit(Sender: TObject);
  private
    modo :string;
    { Private declarations }
  public
    est_compra: double;
    { Public declarations }
    campocentrocusto, usarateio, usaprecolista, CODIGOPRODUTO, CompradorPadraoNome, obrigatorio : String; // tipoCompra,
    J, ccustoCompras, CompradorPadrao: integer;
    ufFornecCompra: String;
    codFiscalFornecCompra: String;
    procedure precolista;
  end;

var
  fCompra: TfCompra;
  valorUnitario, qtde: Double;
  modo: string;

implementation

uses uComercial, UDm, uRateioPag, uFiltroMov_compra, ufprocura_prod,
  uCompraFinalizar, uProdutoLote, uProcurar, uLotes, uClienteVeiculo,
  sCtrlResize, uAtsAdmin, uUtils, UDMNF, uftransp, uFornecedorCadastro,
  uProdutoCadastro, uLotes_Produtos, uDetalhe;


{$R *.dfm}

procedure TfCompra.dbeClienteExit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert]) then                     
  begin
    if (dbeCliente.Text = '') then
    begin
      exit;
    end;
    if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    if (dm.scds_forn_procCFOP.asString <> '') then
    begin
      edCFOP.Text := dm.scds_forn_procCFOP.asString;
      if (dm.validaCfop(edCFOP.Text) = False) then
      begin
        MessageDlg('CFOP não cadastrado em CFOP-Estado.', mtWarning, [mbOK], 0);
      end;
       if (not cds_Mov_det.IsEmpty) then
       begin
         if (cds_Mov_det.State in [dsEdit, dsInsert]) then
           cds_Mov_detCFOP.AsString := edCFOP.Text
         else begin
           cds_Mov_det.Edit;
           cds_Mov_detCFOP.AsString := edCFOP.Text;
         end;
       end;
    end;
    ufFornecCompra := dm.scds_forn_procUF.asString;
    codFiscalFornecCompra := 'J';
    if (dm.scds_forn_procCodFiscal.asString <> '') then
      codFiscalFornecCompra := dm.scds_forn_procCodFiscal.asString;
    cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit3.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
    if (campocentrocusto = 'SIM') then
      ComboBox1.SetFocus
    else
      dbEdit2.SetFocus;
  end
  else
  if dbeCliente.Field.OldValue<>dbeCliente.Field.NewValue then
  begin
    if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    if (dm.scds_forn_procCFOP.asString <> '') then
    begin
      edCFOP.Text := dm.scds_forn_procCFOP.asString;
      if (dm.validaCfop(edCFOP.Text) = False) then
      begin
        MessageDlg('CFOP não cadastrado em CFOP-Estado.', mtWarning, [mbOK], 0);
      end;
     if (not cds_Mov_det.IsEmpty) then
     begin
       if (cds_Mov_det.State in [dsEdit, dsInsert]) then
         cds_Mov_detCFOP.AsString := edCFOP.Text
       else begin
         cds_Mov_det.Edit;
         cds_Mov_detCFOP.AsString := edCFOP.Text;
       end;
     end;

    end;
    cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit3.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    if (campocentrocusto = 'SIM') then
      ComboBox1.SetFocus
    else
      DbEdit2.SetFocus;
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    dbLote.visible := True;
    if (cdsLotes.Active) then
      cdsLotes.Close;
    cdsLotes.CommandText := 'SELECT lote.*, prod.PRODUTO, prod.CODPRO' +
       ' FROM LOTES lote, PRODUTOS prod ' +
       ' WHERE prod.CODPRODUTO = lote.CODPRODUTO ' +
       ' and lote.PRECO = ' + IntToStr(cds_MovimentoCODFORNECEDOR.AsInteger);
    cdsLotes.Open;
    dbLote.Items.Clear;
    while (not cdsLotes.Eof) do
    begin
      dbLote.Items.Add(cdslotesLOTE.AsString);
      cdsLotes.Next;
    end;
  end;
  dm.scds_forn_proc.Close;

end;

procedure TfCompra.FormCreate(Sender: TObject);
begin
  //inherited;
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fCompra));

  if (dm.moduloUsado = 'CITRUS') then
  begin
    CheckBox1.Visible := True;
    Label8.Caption := 'Refugo';
    // Unidade
    {Label5.Left := 375;
    DBEdit8.Left := 375;}
    // Qtde
    {Label6.Left := 313;
    DBEdit9.Left := 313;   }
    //DBEdit9.TabOrder := 10;
    // Tonelada
    Label4.Caption := 'kg';
    {Label4.Left := 127;
    DbEdit5.Left := 127;}
    //DbEdit5.TabOrder := 4;
    GroupBox6.Caption := 'FRUTAS';
    //dbLote.Visible := True;
    GroupBox4.Caption := 'LOTE';
    GroupBox1.Caption := 'PRODUTOR';
  end;

  {------Pesquisando na tab Parametro qual form de Procura Produtos ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'TERMINALVENDAS';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    procprod := dm.cds_parametroDADOS.AsString;
  end
  else
    procprod := 'PROC_PROD_SIMPLES';


  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if not dm.cds_parametro.IsEmpty then
    begin
      if (dm.cds_parametroD1.AsString = 'SIM') then
        obrigatorio := dm.cds_parametroD1.AsString;
    end;

  conta_desp := dm.cds_parametroDADOS.AsString;

  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    ComboBox1.Enabled := True;
    campocentrocusto := 'SIM';
    Try
      if (dm.cds_parametroD1.asString <> '') then
        ccustoCompras := StrToInT(dm.cds_parametroD1.asString);
    except
      ccustoCompras := 0;
    end;
  end
  else begin
    ComboBox1.Enabled := False;
    campocentrocusto := 'NAO';
    Try
      if (dm.cds_parametroD1.asString <> '') then
        ccustoCompras := StrToInT(dm.cds_parametroD1.asString);
    except
      ccustoCompras := 0;
    end;
  end;
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTROLE';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
    dbEdit1.Enabled := False
  else if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
    dbEdit1.Enabled := True
  else
    dbEdit1.Enabled := False;

  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'N' then
  begin
    DBEDit1.TabStop := False;
  end;
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    DBEDit1.TabStop := True;
  end;
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTAPRECOCOMPRA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
      if dm.cds_parametroCONFIGURADO.AsString = 'S' then
         usaprecolista := 'S';
  end;

  if cds_ccusto.Active then
    cds_ccusto.Close;
  cds_ccusto.Params[0].AsString := conta_desp;
  cds_ccusto.Open;
  // populo a combobox
  cds_ccusto.First;
  while not cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;

  if (not cds_ccusto.Active) then
    cds_ccusto.Open;
  cds_ccusto.Locate('CODIGO', dm.CCustoPadrao, [loCaseInsensitive]);
  ComboBox1.Text := cds_ccustoNOME.AsString;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'SIM' then
  begin
    GroupBox7.Visible := True;
  end;

  {------Pesquisando na tab Parametro Comprador Padrão ---------}
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMPRADORPADRAO';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    compradorPadrao := strToint(dm.cds_parametroDADOS.AsString);
    CompradorPadraoNome := dm.cds_parametroD1.AsString;
  end else
  begin
    compradorPadrao := 1;
    CompradorPadraoNome := '..'
  end;

  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.open;
  if (not dm.cdsPrazo.IsEmpty) then
  begin
    dm.CdsPrazo.first;
    cbPrazo.Items.clear;
    while not dm.CdsPrazo.eof do
    begin
      cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
      dm.cdsPrazo.next;
    end;
  end;

  //Populo combobox Transportadora
  if (not dmnf.listaTransp.Active) then
    dmnf.listaTransp.Open;
  dmnf.listaTransp.First;
  while not dmnf.listaTransp.Eof do
  begin
     cbTransportadora.Items.Add(dmnf.listaTranspNOMETRANSP.AsString);
     dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;

  Case dm.vendaDec of
    2 : cds_Mov_detPRECO.EditFormat :=  ',##0.00';
    3 : cds_Mov_detPRECO.EditFormat :=  ',##0.000';
    4 : cds_Mov_detPRECO.EditFormat :=  ',##0.0000';
    5 : cds_Mov_detPRECO.EditFormat :=  ',##0.00000';
    6 : cds_Mov_detPRECO.EditFormat :=  ',##0.000000';
  end;
  Case dm.vendaDec of
    2 : cds_Mov_detPRECO.DisplayFormat :=  ',##0.00';
    3 : cds_Mov_detPRECO.DisplayFormat :=  ',##0.000';
    4 : cds_Mov_detPRECO.DisplayFormat :=  ',##0.0000';
    5 : cds_Mov_detPRECO.DisplayFormat :=  ',##0.00000';
    6 : cds_Mov_detPRECO.DisplayFormat :=  ',##0.000000';
  end;
  
end;

procedure TfCompra.btnIncluirClick(Sender: TObject);
begin
  inherited;
  J := 1;
  modo := 'incluir';
  codmovdet := 1999999;
  edCFOP.Text := dm.cfopEntrada;
  if (dm.validaCfop(edCFOP.Text) = False) then
  begin
    MessageDlg('CFOP não cadastrado em CFOP-Estado.', mtWarning, [mbOK], 0);
  end;

  if cds_Movimento.Active then
    cds_Movimento.Close;
  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  inherited;
  if (DM.tipoCompra = 'COMPRA') then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := 4;
    cds_MovimentoDESCNATUREZA.AsString := 'Compra';
  end;
  if (DM.tipoCompra = 'DEVOLUCAO') then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := 9;
    cds_MovimentoDESCNATUREZA.AsString := 'Devolucao Compras';
  end;

  cds_MovimentoCODUSUARIO.AsInteger := 1;
  cds_MovimentoNOMEUSUARIO.AsString := CompradorPadraoNome;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;

  if c_8_serv.Active then
    c_8_serv.Close;

  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  dbeCliente.Text := '';
  dbeCliente.SetFocus;

  if DtSrc1.DataSet.State in [dsInactive] then
  begin
    DtSrc1.DataSet.Open;
    DtSrc1.DataSet.Append;
  end;
  if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;

  if (GroupBox7.Visible = True) then
  begin
    MaskEdit1.Text := '';
  end;

  btnClienteProcura.Enabled := true;
  btnProdutoProcura.Enabled := true;
  dbeCliente.SetFocus;
end;

procedure TfCompra.btnGravarClick(Sender: TObject);
begin
  //Não é permitido alteração em Compra ja finalizada
  if(DMNF.cds_compra.Active) then
    DMNF.cds_compra.Close;
  DMNF.cds_compra.Params.ParamByName('CODcompra').Clear;
  DMNF.cds_compra.Params.ParamByName('PCODMOV').AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  DMNF.cds_compra.Open;
  if(not DMNF.cds_compra.IsEmpty) then
  begin
    MessageDlg('Compra finalizada, não é possivel executar a alteração.', mtWarning, [mbOk], 0);
    exit;
  end;

  if (dm.AprovaCompra = 'S') then
  begin
    if (cds_MovimentoSTATUS.AsInteger = 3) then
    begin
      if(DMNF.cds_compra.Active) then
        DMNF.cds_compra.Close;
      DMNF.cds_compra.Params.ParamByName('CODcompra').Clear;
      DMNF.cds_compra.Params.ParamByName('PCODMOV').AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      DMNF.cds_compra.Open;
      if(DMNF.cds_compra.IsEmpty) then
        cds_MovimentoSTATUS.AsInteger := 0
      else
      begin
        MessageDlg('Compra finalizada, não é possivel executar a alteração.', mtWarning, [mbOk], 0);
        btnCancelar.Click;
        exit;
      end;
    end;
  end;

   //VERIFICA SE VENDEDOR ESTÁ PREENCHIDO
   if(DBEdit15.Text = '') then
   begin
   if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
   dm.scds_usuario_proc.Params[0].Clear;
   dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(DBEdit15.Text);
   dm.scds_usuario_proc.Open;
   if dm.scds_usuario_proc.IsEmpty then begin
     MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
     [mbOk], 0);
     SpeedButton1.Click;
     exit;
   end;
   end;

   if ( ((ComboBox1.Text = '') or (ComboBox1.Text = null)) and (obrigatorio = 'SIM') )then
    MessageDlg('Centro de Custo Obrigatório', mtError, [mbOK], 0)
   else
   begin
     modo := 'gravar';
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
      if (cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive])) then
        cds_MovimentoCODALMOXARIFADO.AsInteger := StrToInt(cds_ccustoCODIGO.AsString)
      else
        cds_MovimentoCODALMOXARIFADO.AsInteger:= ccustoCompras;
      if (GroupBox7.Visible = True) then
      if (MaskEdit1.Text <> '') then
      if (cds_MovimentoCOD_VEICULO.IsNull) then
      begin
        if (cds_Veiculocli.Active) then
          cds_Veiculocli.Close;
        cds_Veiculocli.Params[1].Clear;
        cds_Veiculocli.Params[0].AsString := MaskEdit1.Text;
        cds_Veiculocli.Open;
        cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
      end;
    end;
    if(cds_MovimentoCODPEDIDO.IsNull) then
      cds_MovimentoCODPEDIDO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    inherited;  // Preciso ver se gravou, do contrário, cancela o processo e para aqui
    {cds_Movimento.ApplyUpdates(0);
    if cds_Movimento.ChangeCount > 0 then
    begin
    end;}
    //else begin
    {  if cds_Movimento.State in [dsInsert, dsEdit] then
      begin
        MessageDlg('Erro para gravar o registro.', mtWarning,
           [mbOk], 0);
        exit;
      end;}
    //end;
    //********************************************************************************
    // aqui corrijo o codigo do movimento na tabela mov_detalhe
    if (cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
    begin
      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        cds_Mov_det.Edit;
        if (cds_Mov_detLOTE.asString = '') then
          cds_Mov_detLOTE.Clear;
        cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
        DBEdit10Exit(Sender);
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        if (dm.validaCfop(edCFOP.Text) = False) then
        begin
          MessageDlg('CFOP não cadastrado em CFOP-Estado.', mtWarning, [mbOK], 0);
          exit;
        end;
        cds_Mov_det.Post;
        cds_Mov_det.Next;
        codmovdet := 0;
      end;
    end;
    cds_Mov_det.ApplyUpdates(0);
    if (usarateio = 'SIM') then
    begin
      btnRateio.Click;
      usarateio := 'NAO';
    end;

    // Coloquei este cancel aqui pq , no dtsrc1 coloquei um código
    // pra mudar o dtsrt para edit quando mudo o dtsrc1
    DtSrc.DataSet.Cancel;
    end;
    cds_Mov_det.Close;
    cds_Mov_det.Params[0].Clear;
    cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;
end;

procedure TfCompra.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
  cds_MovimentoDATAMOVIMENTO.Value := Date;
  cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
  cds_MovimentoSTATUS.Value := 0;
  cds_MovimentoCODUSUARIO.AsInteger := usulog;
  //DBEdit15.Text := IntToStr(compradorPadrao);
  //DBEdit16.Text := compradorPadraoNome;
  cds_MovimentoCODVENDEDOR.Value := compradorPadrao;
  cds_MovimentoNOMEUSUARIO.Value := compradorPadraoNome;
  cds_MovimentoCODCLIENTE.AsInteger := 0;
  cds_MovimentoCODALMOXARIFADO.AsInteger := ccustoCompras;
  if (cds_ccusto.Locate('CODIGO', ccustoCompras, [loCaseInsensitive])) then
    ComboBox1.Text := cds_ccustoNOME.AsString;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMPRA'; // Busca o Resp. pela Aprovacao Cadastrado
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    cds_MovimentoUSER_APROVA.AsString := dm.cds_parametroD1.AsString;

end;

procedure TfCompra.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  inherited;
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

procedure TfCompra.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  inherited;
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
  cds_Mov_detCFOP.AsString := edCFOP.Text;
  cds_Mov_detLOTE.AsString := '0';
  cds_Mov_detVIPI.AsFloat := 0;
  if (not (cds_Mov_detFRETE.AsFloat > 0)) then
    cds_Mov_detFRETE.AsFloat := 0;
  if (not (cds_Mov_detCFOP.AsString = '')) then
    cds_Mov_detCFOP.AsString := edCFOP.Text;
end;

procedure TfCompra.btnExcluirClick(Sender: TObject);
var     usu_n, usu_s : string;
        utilcrtitulo : Tutils;
begin
  usu_n := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
  usu_s := fAtsAdmin.UserControlComercial.CurrentUser.Password;
  modo := 'EDITAR';
  cds_Mov_det.Refresh;
  if ( not cds_Mov_detBAIXA.IsNull ) then
    modo := 'FINALIZADO';
  if (modo = 'FINALIZADO') then
  begin
    if (dm.blVendaFin = 'S') then
    begin
      MessageDlg('Pedido já finalizado, exclusão não permitida.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  if (utilcrtitulo.verificapermissao = False) then
  begin
    if (cds_MovimentoSTATUS.AsInteger <> 1) then
    begin
      if MessageDlg('Deseja Cancelar esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
      try
        if (cds_Movimento.State in [dsBrowse]) then
           cds_Movimento.Edit;
        cds_MovimentoSTATUS.AsInteger := 1; // CANCELADO
        MessageDlg('Movimento Cancelado.', mtWarning, [mbOK], 0);
        cds_Movimento.ApplyUpdates(0);
      Except
        MessageDlg('Erro ao cancelar o Movimento', mtWarning, [mbOK], 0);
        exit;
      end;
      end
      else
        MessageDlg('Movimento Não Alterado.', mtWarning, [mbOK], 0);
    end;
  end
  else
  begin
    if MessageDlg('Deseja Excluir esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      DtSrc.DataSet.Delete;
      (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
      if DtSrc1.DataSet.Active then
        DtSrc1.DataSet.Close;
      DtSrc.DataSet.Close;
    end;
  end;
  dm.cds_parametro.Close;
  fAtsAdmin.UserControlComercial.VerificaLogin(usu_n,usu_s);
end;

procedure TfCompra.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DtSrc1.DataSet.Cancel;
{  DtSrc1.DataSet.Close;
  ds_serv.DataSet.Cancel;
  ds_serv.DataSet.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  DtSrc.DataSet.Close;
  if cds_prod.Active then
    cds_prod.Close;}
end;

procedure TfCompra.btnProcurarClick(Sender: TObject);
begin
  inherited;
    //ffiltromov_compra := TfFiltroMov_compra.Create(Application);
    //try
      if (not cds_ccusto.Active) then
        cds_ccusto.Open;
      cds_ccusto.First;
      while not cds_ccusto.Eof do
      begin
        ffiltromov_compra.ComboBox1.Items.Add(cds_ccustoNOME.AsString);
        cds_ccusto.Next;
      end;
      cds_ccusto.close;
      {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'NATUREZACOMPRA';
      dm.cds_parametro.Open;
      fFiltroMov_compra.Edit3.Text := dm.cds_parametroDADOS.AsString;
      fFiltroMov_compra.Edit4.Text := dm.cds_parametroD1.AsString;
      dm.cds_parametro.Close;
      if (DM.tipoCompra = 'DEVOLUCAO') then
      begin
        ffiltromov_compra.Edit3.Text := '9';
        ffiltromov_compra.Edit4.Text := 'Devolução';
        //ffiltromov_compra.Label9.Caption := 'Devolução Compras';
        ffiltromov_compra.Label10.Caption := 'Devolução Compras';
        ffiltromov_compra.MMJPanel1.Background.EndColor := clOlive;
        ffiltromov_compra.MMJPanel2.Background.EndColor := clOlive;
      end;
      if (DM.tipoCompra = 'COMPRA') then
      begin
        ffiltromov_compra.Edit3.Text := '4';
        ffiltromov_compra.Edit4.Text := 'Compra';
        ffiltromov_compra.Label10.Caption := 'Compras';
        ffiltromov_compra.MMJPanel1.Background.EndColor   := dm.corEnd;
        ffiltromov_compra.MMJPanel1.Background.StartColor := dm.corStart;
        ffiltromov_compra.MMJPanel2.Background.EndColor   := dm.corStart;
        ffiltromov_compra.MMJPanel2.Background.StartColor := dm.corEnd;
      end;
      if (DM.tipoCompra = 'COTACAO') then
      begin
        fFiltroMov_compra.Edit3.Text := '5';
        fFiltroMov_compra.Edit4.Text := 'Pedido - Cotação';
        fFiltroMov_compra.Edit3.ReadOnly := True;
        fFiltroMov_compra.Edit4.ReadOnly := True;
        //fFiltroMov_compra.codigo := 'COTACAO';
        ffiltromov_compra.Label10.Caption := 'Pedido - Cotação';
        ffiltromov_compra.MMJPanel1.Background.EndColor := clYellow;
        ffiltromov_compra.MMJPanel2.Background.EndColor := clYellow;
      end;
      fFiltroMov_compra.ShowModal;
      if (GroupBox7.Visible = True) then
      begin
        if (cds_MovimentoPLACA.AsString <> '') then
          MaskEdit1.Text := cds_MovimentoPLACA.AsString
        else
          MaskEdit1.Text := '';
      end;
      if (not cds_ccusto.Active) then
        cds_ccusto.Open;
      cds_ccusto.Locate('CODIGO',cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive]);
      ComboBox1.Text := cds_ccustoNOME.AsString;

      modo := 'EDITAR';
      if ( not cds_Mov_detBAIXA.IsNull ) then
        modo := 'FINALIZADO';

     //CARREGA TRANSPORTADORA
     if(not cds_MovimentoCODTRANSP.IsNull) then
     begin
       DMNF.listaTransp.Open;
       DMNF.listaTransp.Locate('CODTRANSP',cds_MovimentoCODTRANSP.AsInteger, [loCaseInsensitive]);
       cbTransportadora.Text := dmnf.listaTranspNOMETRANSP.AsString;
       Edit1.Text := dmnf.listaTranspFONE.AsString;
       DMNF.listaTransp.Close;
     end
     else
     begin
       cbTransportadora.Text := '';
       Edit1.Text := '';
     end;

     //CARREGA TIPO DO FRETE
     if (cds_MovimentoTPFRETE.AsString <> '') then
       cbTpTransp.ItemIndex := StrToInt(cds_MovimentoTPFRETE.AsString)
     else
       cbTpTransp.ItemIndex := -1;

     if (cds_Mov_detCFOP.AsString <> '') then
        edCFOP.Text := cds_Mov_detCFOP.AsString;

end;

procedure TfCompra.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;
 if Alterar = 'S' then
   BitBtn1.Enabled:=DtSrc.State in [dsInsert,dsEdit,dsBrowse]
 else
  BitBtn1.Enabled:=False;
end;

procedure TfCompra.dbeProdutoExit(Sender: TObject);
begin
  inherited;
  varonde := 'compra';
  if (dbeProduto.Text = '') then
  begin
    exit;
  end;

  if (cds_mov_det.State in [dsInsert, dsEdit]) then
  begin
    if (usaprecolista = 'S') then
    begin
        varonde := 'Lista';
        CODIGOPRODUTO := dbeProduto.Text;
        precolista;
        exit;
    end;
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
    if (dm.scds_produto_procRATEIO.AsString = 'S') then
    begin
      usarateio := 'SIM';
      conta_pl := dm.scds_produto_procCONTA_DESPESA.AsString;
    end
    else
      usarateio := 'NAO';
    dm.origemProdutoCfop := 0;
    if (not dm.scds_produto_proc.fieldByName('ORIGEM').IsNull) then
      dm.origemProdutoCfop := StrToInt(dm.scds_produto_proc.fieldByName('ORIGEM').asString);

    cds_mov_detCFOP.asString := dm.pesquisaCfopAUsar(
    dm.scds_produto_procCODPRODUTO.AsInteger
    ,ufFornecCompra,codFiscalFornecCompra
    , dm.origemProdutoCfop
    , dm.scds_produto_procNCM.AsString, 'Entrada');
    if (cds_mov_detCFOP.asString = '') then
      cds_mov_detCFOP.asString := edCfop.text;

    cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
    cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
    cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
    cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
    //cds_Mov_detQTDE_ALT.AsFloat := dm.scds_produto_procPESO_QTDE.AsFloat;
    qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
    cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
    if(cds_Mov_detQUANTIDADE.AsFloat = 0) then
      cds_Mov_detQUANTIDADE.AsFloat := 1;
    if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
       cds_Mov_detPRECO.AsFloat :=
       dm.scds_produto_procVALORUNITARIOATUAL.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
    else
       cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
    valorUnitario := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
    cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
    cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
    if (dm.moduloUsado <> 'CITRUS') then
    begin
      //cds_Mov_detQTDE_ALT.AsFloat := dm.scds_produto_procIPI.AsFloat;
      cds_Mov_detPIPI.AsFloat := dm.scds_produto_procIPI.AsFloat;
    end;
    if (dm.scds_produto_procLOTES.AsString = 'S') then
    begin
      {if (dm.moduloUsado = 'CITRUS') then
      begin
        if (dbLote.Text = '') then
        begin
          MessageDlg('Insira o número do CFO.', mtWarning, [mbOK], 0);
          dbLote.SetFocus;
          Exit;
        end;
        cds_Mov_detLOTE.AsString := cds_MovimentoCONTROLE.AsString;
        cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
      end
      else begin}
        if (DBEdit1.Text <> '') then
        begin
          cds_Mov_detLOTE.AsString := cds_MovimentoCONTROLE.AsString;
          cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
          cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        end;
    end;
    dm.scds_produto_proc.Close;
  end;

end;

procedure TfCompra.btnProdutoProcuraClick(Sender: TObject);
var sql, sql1: string;
begin
  inherited;
  fProcura_prod.cbTipo.ItemIndex := 5;
  fProcura_prod.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    fProcura_prod.BitBtn1.Click;
  end
  else
  begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'compra';
  var_F := 'compra';

  if (usaprecolista = 'S') then
  begin
     varonde := 'Lista';
     var_F := 'Lista';
  end;

  cds_Mov_detLOTE.AsString := '';

  fProcura_prod.ShowModal;

  if (procprod = 'PROC_PROD_COMPLETO') then
  begin
    //vejo se usa preço pôr Fornecedor
    if (usaprecolista = 'S') then
    begin
       precolista;
    end
    else
    begin
      cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
      cds_Mov_detCODPRODUTO.asInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_COMPRA.AsFloat;
      cds_Mov_detPIPI.AsFloat := fProcura_prod.cds_procIPI.AsFloat;
      cds_Mov_detDESCPRODUTO.asString := fProcura_prod.cds_procPRODUTO.AsString;
      qtde := fProcura_prod.cds_procPESO_QTDE.AsFloat;
    end;
  end;

  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := codprodxa;
  dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
  dm.scds_produto_proc.Open;

  if (dm.scds_produto_procRATEIO.AsString = 'S') then
  begin
    usarateio := 'SIM';
    conta_pl := dm.scds_produto_procCONTA_DESPESA.AsString;
  end
  else
    usarateio := 'NAO';

  if fProcura_prod.cds_procLOTES.AsString = 'S' then
  begin
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'LOTEUNITARIO';
    dm.cds_parametro.Open;
    if( (DbEdit1.Text = '') and (cds_Mov_detLOTE.AsString = '') and (dm.cds_parametroCONFIGURADO.AsString = 'S') ) then
    begin
      {fLotes_Produtos := TfLotes_Produtos.Create(Application);
      try
        fLotes_Produtos.DBEdit1.DataSource := fCompra.DtSrc1;
        fLotes_Produtos.JvDBDatePickerEdit1.DataSource := fCompra.DtSrc1;
        fLotes_Produtos.JvDBDatePickerEdit2.DataSource := fCompra.DtSrc1;
        fLotes_Produtos.TIPO := 'COMPRA';
        fLotes_Produtos.ShowModal;
      finally
        //cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        //cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        fLotes_Produtos.Free;
      end;}
    end
    else if ( (DbEdit1.Text = '')  and (dm.cds_parametroCONFIGURADO.AsString <> 'S') )then
    begin
      if fLotes.cdslotes.Active then
        fLotes.cdslotes.Close;
      sql1 := fLotes.sdslote.CommandText;
      sql := ' and (lote.LOTE = ' + QuotedStr(dbedit1.Text) + ')';
      fLotes.cdslotes.CommandText := sql1 + sql;
      fLotes.cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      fLotes.cdslotes.Open;
      var_F := 'compra';
      if fLotes.cdslotes.IsEmpty then
      begin
        fLotes.cdslotes.Append;
        fLotes.cdslotesCODPRODUTO.AsInteger := cds_Mov_detCODPRODUTO.AsInteger;
        fLotes.cdslotesCODPRO.AsString := cds_Mov_detCODPRO.AsString;
        fLotes.cdslotesPRODUTO.Value := cds_Mov_detDESCPRODUTO.Value;
        //fLotes.cdslotesDATAFABRICACAO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        //fLotes.cdslotesDATAVENCIMENTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        fLotes.cdslotesLOTE.AsString := cds_MovimentoCONTROLE.AsString;
        fLotes.btnGravar.Click;
        cds_Mov_detLOTE.AsString := fLotes.cdslotesLOTE.AsString;
        //cds_Mov_detDTAFAB.AsDateTime := fLotes.cdslotesDATAFABRICACAO.AsDateTime;
        //cds_Mov_detDTAVCTO.AsDateTime := fLotes.cdslotesDATAVENCIMENTO.AsDateTime;
        //fLotes.cdslotes.ApplyUpdates(0);
      end;
    end;
     { fLotes.btnProdutoProcura.Enabled := False;
      fLotes.ShowModal;}
  end;
  fLotes.cdslotes.CommandText := sql1;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  if cds_Mov_det.State in [dsInsert] then
    DBEdit9.SetFocus;
  if cds_Mov_det.State in [dsBrowse] then
    btnNovo.SetFocus;

end;

procedure TfCompra.btnNovoClick(Sender: TObject);

begin
  inherited;
  DecimalSeparator := ',';
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
      btnGravar.Click;
      btnRateio.Click;
      cds_Movimento.Edit;
    end;
    DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;
  if DtSrc1.State in [dsBrowse] then
  begin
   if cds_Movimento.State in [dsBrowse, dsInactive] then
    cds_Movimento.Edit;
    DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;

end;

procedure TfCompra.BitBtn8Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;

  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detDESCPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) <> mrYes then exit;
     DtSrc1.DataSet.Delete;
end;

procedure TfCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (cds_MovimentoSTATUS.AsInteger = 1) then
  begin
    MessageDlg('Pedido/Venda Cancelado', mtWarning, [mbOK], 0);
    exit;
  end;

  if (dm.AprovaCompra = 'S') then
  begin
    if (cds_MovimentoSTATUS.AsInteger < 3) then
    begin
      MessageDlg('Pedido não aprovado.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;

  inherited;
 if DtSrc.DataSet.State in [dsInsert, dsEdit] then
    btnGravar.Click;
 if DtSrc.DataSet.State in [dsInsert, dsEdit, dsBrowse] then
   fCompraFinalizar.ShowModal
 else
   Exit;
end;

procedure TfCompra.btnClienteProcuraClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  fProcurar.RadioGroup2.Visible := True;  
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    varForm1 := 'compra';
    cod_forn := 0;
    nome_forn := '';
   fProcurar.ShowModal;
   if dtSrc.State=dsBrowse then
     cds_Movimento.Edit;
   cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
   cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
   ufFornecCompra := dm.scds_forn_procUF.asString;
   codFiscalFornecCompra := 'J';
   if (dm.scds_forn_procCodFiscal.asString <> '') then
     codFiscalFornecCompra := dm.scds_forn_procCodFiscal.asString;
   if (dm.scds_forn_procCFOP.asString <> '') then
   begin
     edCFOP.Text := dm.scds_forn_procCFOP.asString;
     if (not cds_Mov_det.IsEmpty) then
     begin
       if (cds_Mov_det.State in [dsEdit, dsInsert]) then
         cds_Mov_detCFOP.AsString := edCFOP.Text
       else begin
         cds_Mov_det.Edit;
         cds_Mov_detCFOP.AsString := edCFOP.Text;
       end;
     end;
   end;
   finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
   end;
   if (campocentrocusto = 'SIM') then
     ComboBox1.SetFocus
   else
     DBEdit2.SetFocus;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cdsLotes.Active) then
      cdsLotes.Close;
    cdsLotes.CommandText := 'SELECT lote.*, prod.PRODUTO, prod.CODPRO' +
       ' FROM LOTES lote, PRODUTOS prod ' +
       ' WHERE prod.CODPRODUTO = lote.CODPRODUTO ' +
       ' and lote.PRECO = ' + IntToStr(cds_MovimentoCODFORNECEDOR.AsInteger);
    cdsLotes.Open;
    while (not cdsLotes.Eof) do
    begin
      dbLote.Items.Add(cdslotesLOTE.AsString);
      cdsLotes.Next;
    end;
  end;

end;

procedure TfCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (cds_Mov_det.Active) then
     cds_Mov_det.Close;
  if (cds_Movimento.Active) then
     cds_Movimento.Close;
  if (cdslotes.Active) then
     cdslotes.Close;
  fLotes.Free;
  fDetalhe.Free;
  inherited;
  //dm.EstoqueAtualiza;
end;

procedure TfCompra.btnRateioClick(Sender: TObject);
begin
  inherited;
  if (cds_Mov_detCONTA_DESPESA.AsString <> '') then
    conta_pl := cds_Mov_detCONTA_DESPESA.AsString;
  // Variáveis usadas para abrir o rateio
  tipo := 'COMPRAS';
  valor_rateio := cds_Mov_detValorTotal.AsFloat;
  // Já carrego a variável abaixo na procura do produto.
  //conta_pl := cds_Mov_detCONTA_DESPESA.AsString;
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
    btnGravar.Click;
  end;
  codigo := cds_MovimentoCODMOVIMENTO.AsInteger;
  fRateioPag.ShowModal;
  conta_pl := '';
end;

procedure TfCompra.FormShow(Sender: TObject);
begin
  inherited;
  DecimalSeparator := ',';
  fLotes := TfLotes.Create(Application);
  fDetalhe := TfDetalhe.Create(Application);  
  if (DM.tipoCompra = 'DEVOLUCAO') then
  begin
    MMJPanel1.Background.EndColor := clOlive;
    MMJPanel2.Background.StartColor := clOlive;
    Label15.Caption := 'Devolução Compras';
  end;
  if (DM.tipoCompra = 'COMPRA') then
  begin
  end;
  if (dm.emppadrao <> '') then
  begin
    ComboBox1.Text := dm.emppadrao;
    ComboBox1.Enabled := False;
  end;

end;

procedure TfCompra.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (cds_Mov_detPRECO.AsFloat = 0) then
    cds_Mov_detPRECO.AsFloat := cds_Mov_detValorTotal.asfloat/cds_Mov_detQUANTIDADE.AsFloat;
end;

procedure TfCompra.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
    cds_mov_det.IndexFieldNames := Column.FieldName;
end;

procedure TfCompra.BitBtn2Click(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    MessageDlg('Grave as alterações antes de imprimir.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (RadioButton1.Checked = True) then
    VCLReport1.FileName := str_relatorio + 'produto_etiquetaCompra1.rep'
  else
    VCLReport1.FileName := str_relatorio + 'produto_etiquetaCompra.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('CODMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfCompra.precolista;
begin
   if (cdslista.Active) then
     cdslista.Close;
   cdslista.Params[0].AsString := cds_MovimentoCODFORNECEDOR.AsString;
   cdslista.Params[1].AsString := CODIGOPRODUTO;
   cdslista.Open;
   if (not cdslista.IsEmpty) then
   begin
     cds_Mov_detCODPRODUTO.AsInteger := cdslistaCODPRODUTO.AsInteger;
     cds_Mov_detCODPRO.AsString := cdslistaCODIGO.AsString;
     cds_Mov_detDESCPRODUTO.Value := cdslistaPRODUTO.Value;
     cds_Mov_detUN.AsString := cdslistaUNIDADE.AsString;
     cds_Mov_detQUANTIDADE.AsFloat := 1;
     cds_Mov_detPRECO.AsFloat := cdslistaPRECOLISTA.AsFloat;
     valorUnitario := cdslistaPRECOLISTA.AsFloat;
   end
   else
   begin
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].AsInteger := 0;
      dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnProdutoProcura.Click;
        exit;
      end;
      cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
      cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      cds_Mov_detQUANTIDADE.AsFloat := 1;
      if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
         cds_Mov_detPRECO.AsFloat :=  dm.scds_produto_procVALORUNITARIOATUAL.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
      valorUnitario := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
      cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
      cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      dm.scds_produto_proc.Close;
   end;
end;

procedure TfCompra.dbeClienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    if (DtSrc.DataSet.State in [dsInsert]) then
    begin
      if (dbeCliente.Text = '') then
      begin
        btnClienteProcura.Click;
        if (campocentrocusto = 'SIM') then
          ComboBox1.SetFocus
        else
          DBEdit2.SetFocus;
      end;
    end;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompra.dbeProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    if (DtSrc1.DataSet.State in [dsInsert]) then
    if (dbeProduto.Text = '') then
    begin
      btnProdutoProcura.Click;
    end;
  end;
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompra.DtSrc1DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (DtSrc1.State in [dsEdit]) then
    if (DtSrc.State in [dsBrowse, dsInactive]) then
      cds_Movimento.Edit;
end;

procedure TfCompra.cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfCompra.cds_MovimentoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);

end;

procedure TfCompra.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if (cds_mov_det.State in [dsEdit, dsInsert]) then
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cds_Mov_detQTDE_ALT.AsFloat = 0) then
      cds_Mov_detQTDE_ALT.AsFloat := cds_Mov_detQUANTIDADE.AsFloat * qtde;
  end;

end;

procedure TfCompra.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cds_Mov_detQUANTIDADE.AsFloat = 0) then
    if (qtde > 0) then
    begin
      cds_Mov_detQUANTIDADE.AsFloat := (cds_Mov_detQTDE_ALT.AsFloat - cds_Mov_detICMS.AsFloat)/qtde;
    end;
  end;
end;

procedure TfCompra.cds_Mov_detBeforePost(DataSet: TDataSet);
begin
//  if (cds_Mov_detCFOP.AsString <> edCFOP.Text) then
  //  cds_Mov_detCFOP.AsString := edCFOP.Text;
  inherited;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    cds_Mov_detCOD_COMISSAO.AsInteger := cds_MovimentoCODFORNECEDOR.AsInteger;
  end;
end;

procedure TfCompra.dbLoteChange(Sender: TObject);
begin
  inherited;
  if  (cdslotes.Active) then
  if (cds_mov_det.State in [dsInsert, dsEdit]) then
    dbeProduto.Text := cdslotesCODPRO.AsString;
end;

procedure TfCompra.MaskEdit1Exit(Sender: TObject);
begin
  inherited;
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  if (dtsrc.State in [dsBrowse, dsInactive]) then
    exit;
  // Traz o Véiculo

  if (cds_Veiculocli.Active) then
    cds_Veiculocli.Close;
  cds_Veiculocli.Params[1].Clear;
  cds_Veiculocli.Params[0].AsString := MaskEdit1.Text;
  cds_Veiculocli.Open;

  if (cds_Veiculocli.IsEmpty) then
  begin
    cod_cli := 1; //cds_MovimentoCODCLIENTE.AsInteger;
    BitBtn9.Click;
    //dbeCliente.SetFocus;
  end
  else begin
    Label10.Caption := cds_VeiculocliMARCA_MODELO.AsString;
    cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
  {  if (sdsVeiculoCli.Active) then
      sdsVeiculoCli.Close;
    sdsVeiculoCli.Params[0].AsInteger := cds_VeiculocliCOD_VEICULO.asinteger;
    sdsVeiculoCli.Open;
    if (not sdsVeiculoCli.IsEmpty) then
    begin
      //dbeCliente.Text := IntToStr(sdsVeiculoCli.Fields[0].asInteger);
      //DBEdit3.Text := sdsVeiculoCli.Fields[1].AsString;
      //cds_MovimentoCODCLIENTE.AsInteger := sdsVeiculoCli.Fields[0].asInteger;
      //cds_MovimentoNOMECLIENTE.AsString := sdsVeiculoCli.Fields[1].AsString;
      //cds_MovimentoOBS.AsString := sdsVeiculoCli.Fields[2].AsString;
      //prazo := sdsVeiculoCli.Fields[3].AsFloat;
      //DBComboBox1.SetFocus;
    end; }
  end;
  dbeCliente.SetFocus;
end;

procedure TfCompra.BitBtn9Click(Sender: TObject);
begin
  inherited;
   fClienteVeiculo := TfClienteVeiculo.Create(Application);
   try
     fClienteVeiculo.varPlaca := MaskEdit1.Text;
     // o cadastro do veículo não deve ter o cliente na OS terá;
     cod_cli := 1;//cds_MovimentoCODCLIENTE.AsInteger;
     fClienteVeiculo.ShowModal;
     MaskEdit1.Text := fClienteVeiculo.varPlaca;
     if (cds_Veiculocli.Active) then
       cds_Veiculocli.Close;
     cds_Veiculocli.Params[1].Clear;
     cds_Veiculocli.Params[0].AsString := fClienteVeiculo.varPlaca;
     cds_Veiculocli.Open;
     Label10.Caption := cds_VeiculocliMARCA_MODELO.AsString;
     if (cds_movimento.State in [dsInsert, dsEdit]) then
     begin
       cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
     end;
   finally
     fClienteVeiculo.varplaca := '';
     fClienteVeiculo.Free;
   end;
   dbeCliente.SetFocus;
end;

procedure TfCompra.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (qtde > 0) then
    begin
      cds_Mov_detQUANTIDADE.AsFloat := (cds_Mov_detQTDE_ALT.AsFloat - cds_Mov_detICMS.AsFloat)/qtde;
    end;
  end;
end;

procedure TfCompra.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if (dm.AprovaCompra = 'S') then
  begin
    if (cds_MovimentoSTATUS.AsInteger < 3) then
    begin
      MessageDlg('Pedido não aprovado.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  VCLReport1.FileName := str_relatorio + 'lista_compra.rep';
  VCLReport1.Title    := str_relatorio + 'lista_compra.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PCOMPRA').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfCompra.JvDBGrid1TitleClick(Column: TColumn);
begin
  inherited;
    cds_mov_det.IndexFieldNames := Column.FieldName;
end;

procedure TfCompra.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'COMPRADOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
   if fProcurar.ShowModal=mrOk then
    begin
    if dtSrc.State=dsBrowse then
     cds_Movimento.Edit;
     cds_MovimentoCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
     cds_MovimentoNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfCompra.btnTranspClick(Sender: TObject);
begin
//  inherited;
   ftransp := Tftransp.Create(Application);
   try
     ftransp.ShowModal;
   finally
     ftransp.Free;
   end;
  //Populo combobox Transportadora
  if (not dmnf.listaTransp.Active) then
    dmnf.listaTransp.Open;
  dmnf.listaTransp.First;
  cbTransportadora.Items.Clear;
  while not dmnf.listaTransp.Eof do
  begin
     cbTransportadora.Items.Add(dmnf.listaTranspNOMETRANSP.AsString);
     dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;
end;

procedure TfCompra.cbTransportadoraChange(Sender: TObject);
begin
  if (cds_Movimento.state in [dsBrowse]) then
   cds_Mov_det.Edit;
  if (cds_Movimento.State in [dsinsert, dsEdit]) then
    if (cbTransportadora.Text <> '') then
    begin
       DMNF.listaTransp.Open;
       DMNF.listaTransp.Locate('NOMETRANSP',cbTransportadora.Text,[loCaseInsensitive]);
       cds_MovimentoCODTRANSP.AsInteger := dmnf.listaTranspCODTRANSP.AsInteger;
       Edit1.Text := dmnf.listaTranspFONE.AsString;
       DMNF.listaTransp.Close;
    end;
end;

procedure TfCompra.cbTpTranspChange(Sender: TObject);
begin
  if (cds_Movimento.state in [dsBrowse]) then
   cds_Mov_det.Edit;
  if (cds_Movimento.State in [dsinsert, dsEdit]) then
    cds_MovimentoTPFRETE.AsString := IntToStr(cbTpTransp.ItemIndex);

end;

procedure TfCompra.Label3Click(Sender: TObject);
begin
  inherited;
  if (dbeProduto.Text = '') then
     exit;
  fProdutoCadastro := TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.btnProcurar.Visible := False;
    if (dm.cds_produto.Active) then
      dm.cds_produto.close;
    dm.cds_produto.Params[0].AsInteger := cds_Mov_detCODPRODUTO.AsInteger;
    dm.cds_produto.Open;
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.Free;
    dm.cds_produto.Close;
  end;
end;

procedure TfCompra.GroupBox1Click(Sender: TObject);
begin
  inherited;
  if (dbeCliente.Text = '') then
     exit;

   fFornecedorCadastro:=TfFornecedorCadastro.Create(Application);
   try
    fFornecedorCadastro.cds_fornecedor.Params[0].AsInteger := cds_MovimentoCODFORNECEDOR.AsInteger;
    fFornecedorCadastro.cds_fornecedor.Open;
    fFornecedorCadastro.ShowModal;
   finally
     fFornecedorCadastro.Free;
   end;
end;

procedure TfCompra.DBEdit10Exit(Sender: TObject);
begin
  inherited;
     //CARREGA TELA PARA PREENCHIMENTO DO LOTE POR PRODUTO
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_procLOTES.AsString = 'S' then
    begin
      if( (DbEdit1.Text = '') and (cds_Mov_detLOTE.AsString = '') ) then
      begin
        fLotes_Produtos := TfLotes_Produtos.Create(Application);
        try
          fLotes_Produtos.DBEdit1.DataSource := fCompra.DtSrc1;
          fLotes_Produtos.JvDBDatePickerEdit1.DataSource := fCompra.DtSrc1;
          fLotes_Produtos.JvDBDatePickerEdit2.DataSource := fCompra.DtSrc1;
          fLotes_Produtos.TIPO := 'COMPRA';
          fLotes_Produtos.ShowModal;
        finally
          //cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
          //cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
          fLotes_Produtos.Free;
        end;
      end;
    end;
    dm.scds_produto_proc.Close;
end;

procedure TfCompra.BitBtn5Click(Sender: TObject);
begin
  inherited;
  fLotes_Produtos := TfLotes_Produtos.Create(Application);
  try
    fLotes_Produtos.DBEdit1.DataSource := fCompra.DtSrc1;
    fLotes_Produtos.JvDBDatePickerEdit1.DataSource := fCompra.DtSrc1;
    fLotes_Produtos.JvDBDatePickerEdit2.DataSource := fCompra.DtSrc1;
    fLotes_Produtos.TIPO := 'COMPRA';
    fLotes_Produtos.ShowModal;
  finally
    //cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
    //cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
    fLotes_Produtos.Free;
  end;
end;

procedure TfCompra.btnDuplicarClick(Sender: TObject);
var   FMov : TMovimento;
   codMov  : Integer;
      TDA  : TTransactionDesc;
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then
  exit;

  TDA.TransactionID  := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;

  try
    FMov := TMovimento.Create;

    Try
      dm.sqlsisAdimin.StartTransaction(TDA);

      FMov.CodMov      := 0;
      FMov.CodCCusto   := cds_MovimentoCODALMOXARIFADO.AsInteger;
      FMov.CodCliente   := cds_MovimentoCODCLIENTE.AsInteger;
      FMov.CodNatureza := cds_MovimentoCODNATUREZA.AsInteger;
      FMov.Status      := cds_MovimentoSTATUS.AsInteger;
      FMov.CodUsuario  := usulog;
      FMov.CodVendedor := cds_MovimentoCODVENDEDOR.AsInteger;
      FMov.DataMov     := cds_MovimentoDATAMOVIMENTO.AsDateTime ;
      FMov.Obs         := cds_MovimentoOBS.AsString;
      Fmov.CodFornec   := cds_MovimentoCODFORNECEDOR.AsInteger;
      Fmov.CodPedido   := cds_MovimentoCODPEDIDO.AsInteger;
      codMov           := FMov.inserirMovimento(0);

      While not cds_Mov_det.Eof do
      begin
        FMov.MovDetalhe.CodMov        := codMov;
        FMov.MovDetalhe.CodProduto    := cds_Mov_detCODPRODUTO.AsInteger;
        Fmov.MovDetalhe.Descricao     := cds_Mov_detDESCPRODUTO.AsString;
        FMov.MovDetalhe.Qtde          := cds_Mov_detQUANTIDADE.AsFloat;
        FMov.MovDetalhe.Lote          := cds_Mov_detLOTE.AsString;
        Fmov.MovDetalhe.Preco         := cds_Mov_detPRECO.AsFloat;
        Fmov.MovDetalhe.Un            := cds_Mov_detUN.AsString;
        Fmov.MovDetalhe.Desconto      := cds_Mov_detQTDE_ALT.AsFloat;
        FMov.MovDetalhe.inserirMovDet;
        cds_Mov_det.Next;
      end;
      dm.sqlsisAdimin.Commit(TDA);
      MessageDlg('Copia da Compra gerado com sucesso.', mtInformation,[mbOk], 0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;

  finally
    FMov.Free;
  end;
end;

procedure TfCompra.btnDupVendaClick(Sender: TObject);
var   FMov : TMovimento;
   codMov  : Integer;
      TDA  : TTransactionDesc;
begin
  inherited;

  if DtSrc.DataSet.State in [dsInactive] then
  exit;

  TDA.TransactionID  := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;

  try
    FMov := TMovimento.Create;

    Try
      dm.sqlsisAdimin.StartTransaction(TDA);

      FMov.CodMov      := 0;
      FMov.CodCCusto   := cds_MovimentoCODALMOXARIFADO.AsInteger;
      FMov.CodCliente  := 0;
      FMov.CodNatureza := 3;
      FMov.Status      := cds_MovimentoSTATUS.AsInteger;
      FMov.CodUsuario  := usulog;
      FMov.CodVendedor := cds_MovimentoCODVENDEDOR.AsInteger;
      FMov.DataMov     := cds_MovimentoDATAMOVIMENTO.AsDateTime ;
      FMov.Obs         := cds_MovimentoOBS.AsString;
      Fmov.CodFornec   := 0;
      Fmov.CodPedido   := cds_MovimentoCODPEDIDO.AsInteger;
      codMov           := FMov.inserirMovimento(0);

      While not cds_Mov_det.Eof do
      begin
        FMov.MovDetalhe.CodMov        := codMov;
        FMov.MovDetalhe.CodProduto    := cds_Mov_detCODPRODUTO.AsInteger;
        Fmov.MovDetalhe.Descricao     := cds_Mov_detDESCPRODUTO.AsString;
        FMov.MovDetalhe.Qtde          := cds_Mov_detQUANTIDADE.AsFloat;
        FMov.MovDetalhe.Lote          := cds_Mov_detLOTE.AsString;
        Fmov.MovDetalhe.Preco         := cds_Mov_detPRECO.AsFloat;
        Fmov.MovDetalhe.Un            := cds_Mov_detUN.AsString;
        Fmov.MovDetalhe.Desconto      := cds_Mov_detQTDE_ALT.AsFloat;
        FMov.MovDetalhe.inserirMovDet;
        cds_Mov_det.Next;
      end;
      dm.sqlsisAdimin.Commit(TDA);
      MessageDlg('Gerado Venda desta Compra com sucesso.', mtInformation,[mbOk], 0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;

  finally
    FMov.Free;
  end;
end;


procedure TfCompra.DBGrid1DblClick(Sender: TObject);
begin
  fDetalhe.detcodMovimento := cds_Mov_detCODDETALHE.AsInteger;
  fDetalhe.ShowModal;
end;

procedure TfCompra.GroupBox11Click(Sender: TObject);
begin
  inherited;
   // Exibir o Estado
end;

procedure TfCompra.edCFOPExit(Sender: TObject);
begin
  inherited;
  if (cds_Mov_detCFOP.AsString <> edCfop.Text) then
  begin
    if (cds_Mov_det.State in [dsInsert, dsEdit]) then
      cds_Mov_detCFOP.AsString := edCfop.Text
    else begin
      cds_Mov_det.Edit;
      cds_Mov_detCFOP.AsString := edCfop.Text;
    end;
  end;  
end;

end.
