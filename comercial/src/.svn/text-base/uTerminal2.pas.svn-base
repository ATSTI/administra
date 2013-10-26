unit uTerminal2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, StdCtrls,
  Buttons, JvExButtons, JvBitBtn, FMTBcd, SqlExpr, Provider, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, JvExControls, JvLabel, ComCtrls,
  JvExComCtrls, JvComCtrls, DB, rpcompobase, rpvclreport, DBLocal,
  DBLocalS, Menus, DBClient, jpeg, JvImage, DBCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvExStdCtrls, JvEdit, JvValidateEdit, JvGIF, DBxPress, Printers, IniFiles,
  XPMenu, DateUtils, JvSpeedButton;

type
  TfTerminal2 = class(TForm)
    JvPanel1: TJvPanel;
    JvPanel2: TJvPanel;
    JvPanel3: TJvPanel;
    JvProcurar: TJvBitBtn;
    JvBitBtn7: TJvBitBtn;
    JvAlterar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    JvImprimir: TJvBitBtn;
    JvFinalizar: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn6: TJvBitBtn;
    JvBitBtn5: TJvBitBtn;
    JvBitBtn1: TJvBitBtn;
    JvSair: TJvBitBtn;
    imovdet: TSQLDataSet;
    imovdetUN: TStringField;
    imovdetCODPRO: TStringField;
    imovdetCOD_BARRA: TStringField;
    imovdetPRODUTO: TStringField;
    imovdetDESCPRODUTO: TStringField;
    imovdetQTDE: TFloatField;
    imovdetPRECO: TFloatField;
    imovdetVALTOTAL: TFloatField;
    dsp_imovdet: TDataSetProvider;
    cds_imovdet: TClientDataSet;
    cds_imovdetUN: TStringField;
    cds_imovdetCODPRO: TStringField;
    cds_imovdetCOD_BARRA: TStringField;
    cds_imovdetPRODUTO: TStringField;
    cds_imovdetDESCPRODUTO: TStringField;
    cds_imovdetQTDE: TFloatField;
    cds_imovdetPRECO: TFloatField;
    cds_imovdetVALTOTAL: TFloatField;
    cds_imovdetTotalPedido: TAggregateField;
    sqlMesaOcupada: TSQLDataSet;
    dspMesaOcupada: TDataSetProvider;
    cdsMesaOcupada: TClientDataSet;
    sdsCaixa1: TSQLDataSet;
    sdsCaixa1IDCAIXACONTROLE: TIntegerField;
    sdsCaixa1CODCAIXA: TIntegerField;
    sdsCaixa1CODUSUARIO: TIntegerField;
    sdsCaixa1DATAFECHAMENTO: TDateField;
    sdsCaixa1SITUACAO: TStringField;
    sdsCaixa1MAQUINA: TStringField;
    sdsCaixa1DATAABERTURA: TDateField;
    sdsCaixa1VALORABRE: TFloatField;
    sdsCaixa1VALORFECHA: TFloatField;
    sdsCaixa1NOMECAIXA: TStringField;
    dspCaixa1: TDataSetProvider;
    sCaixa1: TClientDataSet;
    sCaixa1IDCAIXACONTROLE: TIntegerField;
    sCaixa1CODCAIXA: TIntegerField;
    sCaixa1CODUSUARIO: TIntegerField;
    sCaixa1DATAFECHAMENTO: TDateField;
    sCaixa1SITUACAO: TStringField;
    sCaixa1MAQUINA: TStringField;
    sCaixa1DATAABERTURA: TDateField;
    sCaixa1VALORABRE: TFloatField;
    sCaixa1VALORFECHA: TFloatField;
    sCaixa1NOMECAIXA: TStringField;
    S_CAIXA: TSQLDataSet;
    S_CAIXACODIGO: TIntegerField;
    SQLDataSet1: TSQLDataSet;
    DataSource1: TDataSource;
    s_parametro: TSQLDataSet;
    s_parametroDESCRICAO: TStringField;
    s_parametroPARAMETRO: TStringField;
    s_parametroCONFIGURADO: TStringField;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    s_parametroD5: TStringField;
    s_parametroD6: TStringField;
    s_parametroD7: TStringField;
    s_parametroD8: TStringField;
    s_parametroD9: TStringField;
    s_parametroINSTRUCOES: TStringField;
    s_parametroVALOR: TFloatField;
    pmCaixa: TPopupMenu;
    AbrirCaixa1: TMenuItem;
    EfetuarSangria1: TMenuItem;
    Entrada1: TMenuItem;
    Pagamentos1: TMenuItem;
    Fechamentodecaixa1: TMenuItem;
    scds_cli_proc: TSQLClientDataSet;
    scds_cli_procCODCLIENTE: TIntegerField;
    scds_cli_procTELEFONE: TStringField;
    scds_cli_procNOMECLIENTE: TStringField;
    scds_cli_procLOGRADOURO: TStringField;
    scds_cli_procBLOQUEIO: TStringField;
    scds_cli_procNUMERO: TStringField;
    scds_cli_procBAIRRO: TStringField;
    VCLReport1: TVCLReport;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    scds_produto_proc: TClientDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    scds_produto_procLOTE: TStringField;
    scds_produto_procSALDOESTOQUE: TFloatField;
    SaveDialog1: TSaveDialog;
    b_cliente: TSQLDataSet;
    b_clienteCODCLIENTE: TIntegerField;
    b_clienteNOMECLIENTE: TStringField;
    PopupMenu1: TPopupMenu;
    AlterarItendoPedido1: TMenuItem;
    F5ExcluirItemdoPedido1: TMenuItem;
    F7ExcluirPedido1: TMenuItem;
    LocalizarPedido1: TMenuItem;
    Finalizar1: TMenuItem;
    F11ImprimirPedido1: TMenuItem;
    F9Sair1: TMenuItem;
    Parcial1: TMenuItem;
    NovoPedido1: TMenuItem;
    EditarComanda1: TMenuItem;
    pmImp: TPopupMenu;
    ImprimirSetor21: TMenuItem;
    ReimprimirSetor21: TMenuItem;
    ImprimirSetor2Local1: TMenuItem;
    ReimprimirSetor2Local1: TMenuItem;
    RelatriosFechamentos1: TMenuItem;
    s_venda: TSQLDataSet;
    s_Bloque: TSQLDataSet;
    sbuscaCli: TSQLDataSet;
    s_mesas: TClientDataSet;
    s_mesasCODCLIENTE: TIntegerField;
    s_mesasNOMECLIENTE: TStringField;
    s_mesasRAZAOSOCIAL: TStringField;
    s_mesasCONTATO: TStringField;
    s_mesasTIPOFIRMA: TSmallintField;
    s_mesasCPF: TStringField;
    s_mesasCNPJ: TStringField;
    s_mesasINSCESTADUAL: TStringField;
    s_mesasRG: TStringField;
    s_mesasSEGMENTO: TSmallintField;
    s_mesasREGIAO: TSmallintField;
    s_mesasLIMITECREDITO: TFloatField;
    s_mesasDATACADASTRO: TDateField;
    s_mesasCODUSUARIO: TIntegerField;
    s_mesasSTATUS: TSmallintField;
    s_mesasHOMEPAGE: TStringField;
    s_mesasPRAZORECEBIMENTO: TSmallintField;
    s_mesasPRAZOENTREGA: TSmallintField;
    s_mesasCODBANCO: TSmallintField;
    s_mesasBASE_ICMS: TSmallintField;
    s_mesasDATANASC: TDateField;
    s_mesasCONTA_CLIENTE: TStringField;
    s_mesasOBS: TStringField;
    s_mesasTEM_IE: TStringField;
    s_mesasDATARESC: TDateField;
    s_mesasNOMEMAE: TStringField;
    s_mesasSEXO: TStringField;
    s_mesasFORMA_CORRESPOND: TStringField;
    s_mesasGRUPO_CLIENTE: TStringField;
    s_mesasCODINCLUCANC: TIntegerField;
    s_mesasEXIST_COBERT: TStringField;
    s_mesasEXISTCOPART: TStringField;
    s_mesasDATAREINC: TDateField;
    s_mesasGERAAVISO: TStringField;
    s_mesasGERAENV: TStringField;
    s_mesasGERABOL: TStringField;
    s_mesasEMVIAGEM: TStringField;
    s_mesasDTAALTERA: TDateField;
    s_mesasSERIELETRA: TStringField;
    s_mesasSERIE: TStringField;
    s_mesasRA: TStringField;
    s_mesasCURSO: TStringField;
    s_mesasIP: TStringField;
    s_mesasN_CONTRATO: TStringField;
    s_mesasMAC: TStringField;
    s_mesasMARCA: TStringField;
    s_mesasBANDA_UPLOAD: TStringField;
    s_mesasBANDA_DOWLOAD: TStringField;
    s_mesasTORRE_CONECCAO: TStringField;
    s_mesasCOD_FAIXA: TIntegerField;
    s_mesasDESCONTO: TFloatField;
    s_mesasMENSALIDADE: TFloatField;
    s_mesasANUIDADE: TFloatField;
    s_mesasPARCELA: TIntegerField;
    s_mesasPARCELAGERADAS: TIntegerField;
    s_mesasNUMERO: TIntegerField;
    s_mesasDATANASCIMENTO: TSQLTimeStampField;
    s_mesasANOLETIVO: TStringField;
    s_mesasSITUACAOESCOLAR: TStringField;
    s_mesasRGMAE: TStringField;
    s_mesasCPFMAE: TStringField;
    s_mesasPAI: TStringField;
    s_mesasRGPAI: TStringField;
    s_mesasCPFPAI: TStringField;
    s_mesasLANCADOCLASSE: TIntegerField;
    s_mesasTRANSPORTE: TStringField;
    s_mesasCIDADENASC: TStringField;
    s_mesasUFNASC: TStringField;
    s_mesasNACIONALIDADE: TStringField;
    s_mesasCERTIDAONASCNUM: TStringField;
    s_mesasLIVRONASC: TStringField;
    s_mesasFLLIVRONASC: TStringField;
    s_mesasLOCALTRABPAI: TStringField;
    s_mesasLOCALTRABMAE: TStringField;
    s_mesasTELTRABPAI: TStringField;
    s_mesasTELTRABMAE: TStringField;
    s_mesasINFONECESSARIAS: TStringField;
    s_mesasCARTEIRAVACINACAO: TStringField;
    s_mesasRAPRODESP: TStringField;
    s_mesasLOCALTRABALUNO: TStringField;
    s_mesasTELTRABALUNO: TStringField;
    s_mesasRAPROD: TStringField;
    s_mesasCERT_NAS_COMARCA: TStringField;
    s_mesasCERT_NAS_UF: TStringField;
    s_mesasCERT_NAS_MUNICIPIO: TStringField;
    s_mesasCERT_NAS_DISTRITO: TStringField;
    s_mesasCERT_NAS_SUBDISTRITO: TStringField;
    s_mesasDIVERSO1: TStringField;
    s_mesasDIVERSO2: TStringField;
    s_mesasDATAEMISSAORG: TDateField;
    s_mesasESTADORG: TStringField;
    s_mesasCOMUNICAALUNO: TStringField;
    s_mesasFONEMAE: TStringField;
    s_mesasCELULARMAE: TStringField;
    s_mesasCOMUNICAMAE: TStringField;
    s_mesasFONEPAI: TStringField;
    s_mesasCELULARPAI: TStringField;
    s_mesasCOMUNICAPAI: TStringField;
    s_mesasVALOR_MATRICULA: TFloatField;
    s_mesasDATATRANSF: TDateField;
    s_mesasCOR_RACA: TStringField;
    s_mesasPERIODO: TStringField;
    s_mesasFOTO: TStringField;
    s_mesasDATA_MATRICULA: TSQLTimeStampField;
    s_mesasCODRESPONSAVEL: TIntegerField;
    s_mesasID_COB: TIntegerField;
    s_mesasCOD_TRANPORTADORA: TIntegerField;
    s_mesasBLOQUEADO: TStringField;
    s_mesasBLOQUEIO: TStringField;
    s_mesasCFOP: TStringField;
    s_mesasCOD_CLI: TStringField;
    p_mesas: TDataSetProvider;
    sql_mesas: TSQLDataSet;
    sql_mesasCODCLIENTE: TIntegerField;
    sql_mesasNOMECLIENTE: TStringField;
    sql_mesasRAZAOSOCIAL: TStringField;
    sql_mesasCONTATO: TStringField;
    sql_mesasTIPOFIRMA: TSmallintField;
    sql_mesasCPF: TStringField;
    sql_mesasCNPJ: TStringField;
    sql_mesasINSCESTADUAL: TStringField;
    sql_mesasRG: TStringField;
    sql_mesasSEGMENTO: TSmallintField;
    sql_mesasREGIAO: TSmallintField;
    sql_mesasLIMITECREDITO: TFloatField;
    sql_mesasDATACADASTRO: TDateField;
    sql_mesasCODUSUARIO: TIntegerField;
    sql_mesasSTATUS: TSmallintField;
    sql_mesasHOMEPAGE: TStringField;
    sql_mesasPRAZORECEBIMENTO: TSmallintField;
    sql_mesasPRAZOENTREGA: TSmallintField;
    sql_mesasCODBANCO: TSmallintField;
    sql_mesasBASE_ICMS: TSmallintField;
    sql_mesasDATANASC: TDateField;
    sql_mesasCONTA_CLIENTE: TStringField;
    sql_mesasOBS: TStringField;
    sql_mesasTEM_IE: TStringField;
    sql_mesasDATARESC: TDateField;
    sql_mesasNOMEMAE: TStringField;
    sql_mesasSEXO: TStringField;
    sql_mesasFORMA_CORRESPOND: TStringField;
    sql_mesasGRUPO_CLIENTE: TStringField;
    sql_mesasCODINCLUCANC: TIntegerField;
    sql_mesasEXIST_COBERT: TStringField;
    sql_mesasEXISTCOPART: TStringField;
    sql_mesasDATAREINC: TDateField;
    sql_mesasGERAAVISO: TStringField;
    sql_mesasGERAENV: TStringField;
    sql_mesasGERABOL: TStringField;
    sql_mesasEMVIAGEM: TStringField;
    sql_mesasDTAALTERA: TDateField;
    sql_mesasSERIELETRA: TStringField;
    sql_mesasSERIE: TStringField;
    sql_mesasRA: TStringField;
    sql_mesasCURSO: TStringField;
    sql_mesasIP: TStringField;
    sql_mesasN_CONTRATO: TStringField;
    sql_mesasMAC: TStringField;
    sql_mesasMARCA: TStringField;
    sql_mesasBANDA_UPLOAD: TStringField;
    sql_mesasBANDA_DOWLOAD: TStringField;
    sql_mesasTORRE_CONECCAO: TStringField;
    sql_mesasCOD_FAIXA: TIntegerField;
    sql_mesasDESCONTO: TFloatField;
    sql_mesasMENSALIDADE: TFloatField;
    sql_mesasANUIDADE: TFloatField;
    sql_mesasPARCELA: TIntegerField;
    sql_mesasPARCELAGERADAS: TIntegerField;
    sql_mesasNUMERO: TIntegerField;
    sql_mesasDATANASCIMENTO: TSQLTimeStampField;
    sql_mesasANOLETIVO: TStringField;
    sql_mesasSITUACAOESCOLAR: TStringField;
    sql_mesasRGMAE: TStringField;
    sql_mesasCPFMAE: TStringField;
    sql_mesasPAI: TStringField;
    sql_mesasRGPAI: TStringField;
    sql_mesasCPFPAI: TStringField;
    sql_mesasLANCADOCLASSE: TIntegerField;
    sql_mesasTRANSPORTE: TStringField;
    sql_mesasCIDADENASC: TStringField;
    sql_mesasUFNASC: TStringField;
    sql_mesasNACIONALIDADE: TStringField;
    sql_mesasCERTIDAONASCNUM: TStringField;
    sql_mesasLIVRONASC: TStringField;
    sql_mesasFLLIVRONASC: TStringField;
    sql_mesasLOCALTRABPAI: TStringField;
    sql_mesasLOCALTRABMAE: TStringField;
    sql_mesasTELTRABPAI: TStringField;
    sql_mesasTELTRABMAE: TStringField;
    sql_mesasINFONECESSARIAS: TStringField;
    sql_mesasCARTEIRAVACINACAO: TStringField;
    sql_mesasRAPRODESP: TStringField;
    sql_mesasLOCALTRABALUNO: TStringField;
    sql_mesasTELTRABALUNO: TStringField;
    sql_mesasRAPROD: TStringField;
    sql_mesasCERT_NAS_COMARCA: TStringField;
    sql_mesasCERT_NAS_UF: TStringField;
    sql_mesasCERT_NAS_MUNICIPIO: TStringField;
    sql_mesasCERT_NAS_DISTRITO: TStringField;
    sql_mesasCERT_NAS_SUBDISTRITO: TStringField;
    sql_mesasDIVERSO1: TStringField;
    sql_mesasDIVERSO2: TStringField;
    sql_mesasDATAEMISSAORG: TDateField;
    sql_mesasESTADORG: TStringField;
    sql_mesasCOMUNICAALUNO: TStringField;
    sql_mesasFONEMAE: TStringField;
    sql_mesasCELULARMAE: TStringField;
    sql_mesasCOMUNICAMAE: TStringField;
    sql_mesasFONEPAI: TStringField;
    sql_mesasCELULARPAI: TStringField;
    sql_mesasCOMUNICAPAI: TStringField;
    sql_mesasVALOR_MATRICULA: TFloatField;
    sql_mesasDATATRANSF: TDateField;
    sql_mesasCOR_RACA: TStringField;
    sql_mesasPERIODO: TStringField;
    sql_mesasFOTO: TStringField;
    sql_mesasDATA_MATRICULA: TSQLTimeStampField;
    sql_mesasCODRESPONSAVEL: TIntegerField;
    sql_mesasID_COB: TIntegerField;
    sql_mesasCOD_TRANPORTADORA: TIntegerField;
    sql_mesasBLOQUEADO: TStringField;
    sql_mesasBLOQUEIO: TStringField;
    sql_mesasCFOP: TStringField;
    sql_mesasCOD_CLI: TStringField;
    Timer1: TTimer;
    JvPageControl1: TJvPageControl;
    TabVenda: TTabSheet;
    TabComanda: TTabSheet;
    TabDelivery: TTabSheet;
    JvImage1: TJvImage;
    JvPanel5: TJvPanel;
    JvLabel6: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel9: TJvLabel;
    DBEdit2: TDBEdit;
    JvLabel11: TJvLabel;
    DBEdit3: TDBEdit;
    JvPanel6: TJvPanel;
    JvPanel7: TJvPanel;
    JvDBGrid1: TJvDBGrid;
    JvPanel8: TJvPanel;
    edMesa: TEdit;
    JvLabel16: TJvLabel;
    pMesa: TPanel;
    Panel1: TPanel;
    JvLabel2: TJvLabel;
    edtFone: TEdit;
    JvLabel4: TJvLabel;
    edtCodCli: TEdit;
    edtNome: TEdit;
    BitBtn1: TBitBtn;
    JvLabel5: TJvLabel;
    edtEnd: TEdit;
    DBGrid2: TDBGrid;
    Image1: TImage;
    s_forma: TSQLDataSet;
    s_formaCOD_VENDA: TIntegerField;
    s_formaID_ENTRADA: TIntegerField;
    s_formaCAIXA: TSmallintField;
    s_formaN_DOC: TStringField;
    s_formaFORMA_PGTO: TStringField;
    s_formaVALOR_PAGO: TFloatField;
    s_formaFORMA: TStringField;
    s_formaNOME: TStringField;
    p_forma: TDataSetProvider;
    c_forma: TClientDataSet;
    c_formaCOD_VENDA: TIntegerField;
    c_formaID_ENTRADA: TIntegerField;
    c_formaCAIXA: TSmallintField;
    c_formaN_DOC: TStringField;
    c_formaFORMA_PGTO: TStringField;
    c_formaVALOR_PAGO: TFloatField;
    c_formaFORMA: TStringField;
    c_formaNOME: TStringField;
    c_formatotal: TAggregateField;
    EdtComanda: TEdit;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    XPMenu1: TXPMenu;
    btnProduto: TBitBtn;
    FazerTroca1: TMenuItem;
    Panel2: TPanel;
    LabelComissao: TJvLabel;
    JvComissao: TJvValidateEdit;
    Panel3: TPanel;
    JvLabel3: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvTotal: TJvValidateEdit;
    JvParcial: TJvValidateEdit;
    JvSubtotal: TJvValidateEdit;
    Panel4: TPanel;
    edtQtde1: TJvCalcEdit;
    JvLabel14: TJvLabel;
    Panel5: TPanel;
    EdtCodBarra1: TEdit;
    JvLabel1: TJvLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    JvLabel7: TJvLabel;
    JvSpeedButton3: TJvSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure JvProcurarClick(Sender: TObject);
    procedure PanelClick(Sender: TObject);
    procedure JvSairClick(Sender: TObject);
    procedure JvBitBtn7Click(Sender: TObject);
    procedure JvAlterarClick(Sender: TObject);
    procedure JvExcluirClick(Sender: TObject);
    procedure JvImprimirClick(Sender: TObject);
    procedure JvFinalizarClick(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn6Click(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure edMesaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBarra1Enter(Sender: TObject);
    procedure EdtCodBarra1Exit(Sender: TObject);
    procedure edtQtde1KeyPress(Sender: TObject; var Key: Char);
    procedure JvPageControl1Change(Sender: TObject);
    procedure EdtComandaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProdutoClick(Sender: TObject);
    procedure NovoPedido1Click(Sender: TObject);
    procedure AlterarItendoPedido1Click(Sender: TObject);
    procedure F5ExcluirItemdoPedido1Click(Sender: TObject);
    procedure F7ExcluirPedido1Click(Sender: TObject);
    procedure EditarComanda1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtFoneKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure EfetuarSangria1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure Fechamentodecaixa1Click(Sender: TObject);
    procedure AbrirCaixa1Click(Sender: TObject);
    procedure FazerTroca1Click(Sender: TObject);
    procedure RelatriosFechamentos1Click(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
  private
    peditoTerminalFinalizado: String;
    linhaTracejada, linhaTituloItem, linhaDescItem, linhaItemUn, linhaItemQtde : String; //VARIAVEIS IMPRESSAO
    linhaItemVlUnit, linhaItemVlTotal, linhaTotal, qntespacos : String;  //VARIAVEIS IMPRESSAO
    tamtexto : Integer;
    col: String;
    usaDll : String;
    tipoImpressao: String;
    ModeloImpressora: Integer;
    caixaTerminal2: Integer;
    caixaTerminal2DataAbertura : TDate;
    caixaTerminal2Id : Integer;
    cliente : string;
    TD: TTransactionDesc;
    vTIPO_PEDIDO: STring;
    str_sql: String;
    numMesa : Integer;
    fantasia, endCli, FoneCli, datasistema, Codigo_Pedido, razao_emp, cnpj : string;
    Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;
    saldoNegativo, estoque_negativo: String;
    porta: String;
    total, porc, totgeral , desconto : double;
    IMPRESSORA:TextFile;
    TEXTO_IMPRIMIR, TEXTO_IMP: String;
    deliveryLivre: Boolean;
    estoque: boolean;
    var_retorno: boolean;
    codCliente: integer;
    retorno : String;
    tipo_busca: String;
    codLote: String;
    procedure criarMesas;
    procedure abreDelivery;
    procedure abreComanda(busca: String);
    procedure pintaBotao;
    procedure testaCaixaAberto;
    function existeVenda: Boolean;
    procedure imprimeComanda;
    procedure imprimeDelivery;
    procedure imprimeDLLBema;
    procedure imprimeDeliveryTXT;
    procedure imprimecomandaTXT;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    procedure bloqueia_mesa;
    procedure incluiPedido;
    procedure alteraPedido;
    procedure msgImpressora;
    procedure permissao;
    procedure libera_mesa;
    procedure buscaProduto;
    procedure incluiItemPedido;
    procedure buscaLote;
    procedure abreDeliverySelec;
    { Private declarations }

  public
    var_FINALIZOU : string;
    { Public declarations }
  end;

var
  fTerminal2: TfTerminal2;

implementation

uses UDm, UDM_MOV, uFiltroMovimento, U_AlteraPedido, U_RelTerminal,
  uOsFinaliza, U_Entrada, U_MudaMesa, u_mesas, U_AUTORIZACAO,
  ufprocura_prod, U_AbreComanda, uProcurar_nf, UDMNF, uFiscalCls,
  uAbrirCaixa, uSangria, uEntradaCaixa, uCrTituloPagto, uMovCaixa, uTroca;

{$R *.dfm}

procedure TfTerminal2.FormCreate(Sender: TObject);
var
  x, qtd, larguraMesa, alturaMesa, i : integer;
//var i: integer;
//  strPn : TObject;
begin
  //------Pesquisando na tab Parametro se usa DELIVERY ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  TabVenda.TabVisible := False;
  larguraMesa := 110;
  alturaMesa := 60;
  numMesa := 1;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabVenda.TabVisible := True;
    if (dm.cds_parametroD1.AsString <> '') then
      numMesa := StrToInt(dm.cds_parametroD1.AsString);
    if (dm.cds_parametroD2.AsString <> '') then
      larguraMesa := StrToInt(dm.cds_parametroD2.AsString);
    if (dm.cds_parametroD3.AsString <> '') then
      alturaMesa := StrToInt(dm.cds_parametroD3.AsString);
  end;

  ClientHeight := StrToInt(dm.videoH);
  ClientWidth  := StrToInt(dm.videoW);
  jvSair.Left := Width - 52;
  JvBitBtn1.Left := Width - 99;
  JvBitBtn5.Left := Width - 143;
  JvBitBtn6.Left := Width - 190;
  i := 0;
  qtd := 1;
  x:=0;

  if (s_mesas.Active) then
    s_mesas.close;
  s_mesas.Open;

  for x:=0 to ((numMesa)-1) do
  begin
    TCustomPanel.Create(pMesa);
    TPanel(pMesa.Components[(Qtd + i)-1]).ParentBackground := False;
    TControl(pMesa.Components[(Qtd + i)-1]).Name    := 'Panel' + IntToStr(i);
    TControl(pMesa.Components[(Qtd + i)-1]).Parent  := pMesa;
    if i > 1 then
    begin
      if (pMesa.Width + pMesa.Left) < ((larguraMesa) +
      TControl(pMesa.Components[(Qtd + i)-2]).Left + TControl(pMesa.Components[(Qtd + i)-2]).width + 5) then
      begin
        TControl(pMesa.Components[(Qtd + i)-1]).Top  := TControl(pMesa.Components[(Qtd + i)-2]).Top
        + TControl(pMesa.Components[(Qtd + i)-2]).Height + 2;
        TControl(pMesa.Components[(Qtd + i)-1]).left  := 5;
      end
      else
      begin
        TControl(pMesa.Components[(Qtd + i)-1]).Left  := TControl(pMesa.Components[(Qtd + i)-2]).Left +
        TControl(pMesa.Components[(Qtd + i)-2]).width + 5;
        TControl(pMesa.Components[(Qtd + i)-1]).Top   := TControl(pMesa.Components[(Qtd + i)-2]).top;
      end
    end
    else
    begin
      TControl(pMesa.Components[(Qtd + i)-1]).Top   := 5;
      if (i = 0) then
        TControl(pMesa.Components[(Qtd + i)-1]).Left  := 5
      else
        TControl(pMesa.Components[(Qtd + i)-1]).Left  := TControl(pMesa.Components[(Qtd + i)-2]).Left +
        TControl(pMesa.Components[(Qtd + i)-2]).width + 5;
    end;

    TControl(pMesa.Components[(Qtd + i)-1]).Height  := (alturaMesa);
    TControl(pMesa.Components[(Qtd + i)-1]).Width   := (larguraMesa);

    if (not s_mesas.Eof) then
    begin
      TPanel(pMesa.Components[(Qtd + i)-1]).Caption := s_mesasNOMECLIENTE.AsString;
      s_mesas.Next;
    end;

    TPanel(pMesa.Components[(Qtd + i)-1]).OnClick   := PanelClick;
    inc(i);
  end;
  if (FileExists('logo.jpg')) then
    JvImage1.Picture.LoadFromFile('logo.jpg');

  //------Pesquisando na tab Parametro se usa DELIVERY ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DELIVERY';
  dm.cds_parametro.Open;
  TabDelivery.TabVisible := False;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabDelivery.TabVisible := True;
    abreDelivery;
  end;

  //------Pesquisando na tab Parametro se usa COMANDA ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMANDA';
  dm.cds_parametro.Open;
  TabComanda.TabVisible := False;

  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabComanda.TabVisible := True;
    abreComanda('');
  end;


  if (TabDelivery.TabVisible = True) then
      jvPageControl1.ActivePage := TabDelivery;

  if (TabComanda.TabVisible = True) then
      jvPageControl1.ActivePage := TabComanda;

  if (TabVenda.TabVisible = True) then
    jvPageControl1.ActivePage := TabVenda;

  //------Pesquisando na tab Parametro se PAGA_COMISSAO ---
  DM_MOV.V_PAGACOMISSAO := 'NAO';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PAGA_COMISSAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    DM_MOV.V_PAGACOMISSAO := 'SIM';
    LabelComissao.Visible := True;
    JvComissao.Visible :=True;
    JvComissao.Value := StrToInt(dm.cds_parametroDADOS.AsString);
  end
  else
  begin
    LabelComissao.Visible := False;
    JvComissao.Value := 0;
    JvComissao.Visible := False;
  end;
  if (s_parametro.Active) then
   s_parametro.Close;
  s_parametro.Params[0].AsString := 'IMPRESSAORESUMIDA';
  s_parametro.Open;
  if (not s_parametro.IsEmpty) then
    DM.impressaoResumida := 'SIM'
  else
    DM.impressaoResumida := 'NAO';

  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'USACONTROLECAIXA';
  s_parametro.Open;
  if (not s_parametro.IsEmpty) then
  begin
    DM.USACONTROLECAIXA := 'SIM';
  end  
  else begin
    DM.USACONTROLECAIXA := 'NAO';
    caixaTerminal2 := dm.CCustoPadrao;
    caixaTerminal2DataAbertura := now;
    caixaTerminal2Id := 0;
  end;
  s_parametro.Close;

  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (not sCaixa1.IsEmpty) then
    DM_MOV.ID_CCUSTO := sCaixa1CODCAIXA.AsInteger
  else
    DM_MOV.ID_CCUSTO := 0;
  sCaixa1.Close;

end;


procedure TfTerminal2.JvProcurarClick(Sender: TObject);
begin
  peditoTerminalFinalizado := 'N';
  codCliente := 0;

  if (not dm.cds_ccusto.Active) then
      dm.cds_ccusto.Open;
  dm.cds_ccusto.First;
  fFiltroMovimento.ComboBox1.items.Clear;
  while not dm.cds_ccusto.Eof do
  begin
    fFiltroMovimento.ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
  dm.cds_ccusto.Close;
  {------Pesquisando na tab Parametro o valor padrao para a Natureza Operacao ---------}
  if dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
  dm.cds_parametro.Open;
  fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
  fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
  DM.tipoVenda := 'VENDA';
  fFiltroMovimento.BitBtn8.Enabled := False;
  fFiltroMovimento.cod_mov := 0;
  fFiltroMovimento.ShowModal;
  dm.cds_parametro.Close;
  fFiltroMovimento.Edit3.Text := '3';
  fFiltroMovimento.Edit4.Text := 'VENDAS';
  if (fFiltroMovimento.cod_mov > 0) then
  begin
    DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].Clear;
    DM_MOV.c_movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    DM_MOV.c_movimento.Open;
    vTIPO_PEDIDO := DM_MOV.c_movimentoTIPO_PEDIDO.AsString;
    if (vTIPO_PEDIDO = 'C') then // COMANDA
    begin
      DM_MOV.c_movimento.Close;
      abreComanda(' AND m.CODMOVIMENTO = ' + IntToStr(fFiltroMovimento.cod_mov));
    end;

    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].Clear;
    DM_MOV.c_movdet.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
    if (SQLDataSet1.Active) then
      SQLDataSet1.Close;
    SQLDataSet1.CommandText := 'SELECT SUM(R.VALORRECEBIDO), SUM(V.DESCONTO) DESC'+
      ' FROM RECEBIMENTO R, VENDA V ' +
      ' WHERE R.CODVENDA = V.CODVENDA ' +
      '   AND V.CODMOVIMENTO  = ' + IntToStr(fFiltroMovimento.cod_mov);
    SQLDataSet1.Open;
    if (SQLDataSet1.Fields[0].IsNull) then
    begin
      JvParcial.Value := 0;
    end
    else begin
      peditoTerminalFinalizado := 'S';
      JvParcial.Value := SQLDataSet1.Fields[0].Value;
    end;
    if (SQLDataSet1.Fields[1].IsNull) then
    begin
      JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
    end
    else begin
      JvSubtotal.Value := JvTotal.Value - JvParcial.Value - SQLDataSet1.Fields[1].Value;
    end;
  end
  else
  begin
    if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
    if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
  end;

  if (vTIPO_PEDIDO <> 'C') then // Venda Consumidor
  begin
    if (jvPageControl1.ActivePage <> TabVenda) then
    begin
       if (TabVenda.TabVisible = False) then
          TabVenda.TabVisible := True;
       jvPageControl1.ActivePage := TabVenda;
    end;
  end
  else // Venda MESA /COMANDA
  begin
    if (jvPageControl1.ActivePage <> TabComanda) then
    begin
       if (TabComanda.TabVisible = False) then
          TabComanda.TabVisible := True;
       jvPageControl1.ActivePage := TabComanda;
       pintaBotao;
       //JvLabel8.Caption := 'Consulta-' + DM_MOV.c_comandaNOMECLIENTE.AsString;
    end;
    //else
       //JvLabel8.Caption := 'Consulta-' + DM_MOV.c_comandaNOMECLIENTE.AsString;
  end;
  if (vTIPO_PEDIDO = 'D') then // DELIVERY
  begin
    if (jvPageControl1.ActivePage <> TabDelivery) then
    begin
       if (TabDelivery.TabVisible = False) then
          TabDelivery.TabVisible := True;
       jvPageControl1.ActivePage := TabDelivery;
       str_sql := 'select c.CODCLIENTE, m.CODMOVIMENTO,c.NOMECLIENTE, e.LOGRADOURO,' +
        ' e.TELEFONE from MOVIMENTO m ';
       str_sql := str_sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
       str_sql := str_sql + 'left outer join ENDERECOCLIENTE e on e.CODCLIENTE = c.CODCLIENTE ';
       str_sql := str_sql + 'WHERE m.CODMOVIMENTO = ' + IntToStr(DM_MOV.ID_DO_MOVIMENTO);
       str_sql := str_sql + ' and e.TIPOEND = 0 ';
        if (SQLDataSet1.Active) then
            SQLDataSet1.Close;
        SQLDataSet1.CommandText := str_sql;
        SQLDataSet1.Open;
        if (not SQLDataSet1.IsEmpty) then
        begin
           edtCodCli.Text := IntToStr(SQLDataSet1.Fields[0].AsInteger);
           edtNome.Text := SQLDataSet1.Fields[2].AsString;
           edtFone.Text := SQLDataSet1.Fields[4].AsString;
           edtEnd.Text := SQLDataSet1.Fields[3].AsString;
        end;
        SQLDataSet1.Close;
    end;
  end;
end;

procedure TfTerminal2.criarMesas;
begin

end;

procedure TfTerminal2.PanelClick(Sender: TObject);
var poc : Double;
begin
  pintaBotao;
  TPanel(Sender).Color :=  clYellow;
  JvPanel8.Caption := TPanel(Sender).Caption;
  if (DM_MOV.s_BuscaComanda.Active) then
    DM_MOV.s_BuscaComanda.Close;
  DM_MOV.s_BuscaComanda.Params[0].Clear;
  DM_MOV.s_BuscaComanda.Params[1].AsString :=  TPanel(Sender).Caption;
  DM_MOV.s_BuscaComanda.Open;
  if (DM_MOV.s_BuscaComanda.IsEmpty) then
  begin
     DM_MOV.s_BuscaComanda.Close;
     ShowMessage('Mesa nao Localizada');
     Exit;
  end;
  edMesa.Text := DM_MOV.s_BuscaComandaCOD_CLI.AsString;
  codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
  if (DM_MOV.s_buscaMov.Active) then
     DM_MOV.s_buscaMov.Close;

  str_sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
         'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
         'where m.CODNATUREZA = ' + IntToStr(3) + ' and m.STATUS = ' +
         IntToStr(20) + ' and m.CODCLIENTE = ' + IntToStr(codcliente);
  DM_MOV.s_buscaMov.CommandText := str_sql;

  DM_MOV.s_buscaMov.Open;


  if (DM_MOV.s_buscaMov.IsEmpty)then
     IncluiPedido
  else
  begin
    abreComanda(' and m.CODCLIENTE = ' + IntToStr(codcliente));
    AlteraPedido;
  end;
  if (not DM_MOV.c_movdet.IsEmpty) then
  begin
    poc := 0;
    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
    if (c_forma.Active) then
      c_forma.Close;
    c_forma.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.Value;
    c_forma.Open;

    if (not c_formatotal.IsNull) then
    begin
      JvParcial.Value := c_formatotal.Value;
      JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
    end
    else
    begin
      JvParcial.Value := 0;
      JvSubtotal.Value := JvTotal.Value + poc;
    end;

    if (JvComissao.Visible = True) then
      if (JvComissao.Value > 0) then
        poc := (JvComissao.Value /100) * JvTotal.Value;
    JvSubtotal.Value := JvSubtotal.Value + poc;
    c_forma.Close;
  end
  else
  begin
    DM_MOV.c_movdet.Close;
    JvTotal.AsFloat := 0;
  end;
  DM_MOV.s_buscaMov.Close;
  DM_MOV.s_BuscaComanda.Close;
  if (JvTotal.Value = 0) then
  begin
    JvParcial.Value := 0;
    JvSubtotal.Value := 0;
  end;
end;

procedure TfTerminal2.abreDelivery;
var linhaDelivery: Integer;
begin
  linhaDelivery := 0;
  if (DM_MOV.c_Delivery.Active) then
  begin
    linhaDelivery := DM_MOV.c_Delivery.RecNo;
    DM_MOV.c_Delivery.Close;
  end;
  DM_MOV.c_Delivery.CommandText := '';
  str_sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  str_sql := str_sql + ' inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  str_sql := str_sql + ' WHERE m.CODNATUREZA = 3 ';
  str_sql := str_sql + ' and m.STATUS = 20 ';
  str_sql := str_sql + ' and m.TIPO_PEDIDO = ';
  str_sql := str_sql + QuotedStr('D');
  DM_MOV.c_Delivery.CommandText := str_sql;
  DM_MOV.c_Delivery.Open;
  if (linhaDelivery > 0) then
    DM_MOV.c_Delivery.RecNo := linhaDelivery;
end;

procedure TfTerminal2.abreComanda(busca: String);
begin
  if (DM_MOV.c_comanda.Active) then
    DM_MOV.c_comanda.Close;
  DM_MOV.c_comanda.CommandText := '';
  str_sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  str_sql := str_sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  str_sql := str_sql + 'WHERE m.CODNATUREZA = 3';
  str_sql := str_sql + 'and m.STATUS = 20';
  str_sql := str_sql + busca;
  DM_MOV.c_comanda.CommandText := str_sql;
  DM_MOV.c_comanda.Open;
end;

procedure TfTerminal2.JvSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfTerminal2.pintaBotao;
var j: integer;
begin
  abreComanda('');
  dm_mov.c_comanda.First;
  for j := 0 to ((numMesa)-1) do
  begin
    if (dm_mov.c_comanda.Locate('NOMECLIENTE', TPanel(pMesa.Components[(j)]).Caption, [loCaseInsensitive])) then
      TPanel(pMesa.Components[(j)]).Color := clRed
    else
      TPanel(pMesa.Components[(j)]).Color := clMoneyGreen;
  end;

end;

procedure TfTerminal2.JvBitBtn7Click(Sender: TObject);
begin
  peditoTerminalFinalizado := 'N';
  codCliente := 0;
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       jvPageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;

  if (jvPageControl1.ActivePage = TabComanda) then
  begin
    edMesa.SetFocus;
  end;

  if (jvPageControl1.ActivePage = TabVenda) then
  begin
    if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
    if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
    JvTotal.Value := 0;
    JvSubtotal.Value := 0;
    JvParcial.Value := 0;
    edtQtde1.Value := 0;
    EdtCodBarra1.SetFocus;
  end;
  if (jvPageControl1.ActivePage = TabDelivery) then
  begin
    edtFone.Text := '';
    edtCodCli.Text := '';
    edtNome.Text := '';
    edtEnd.Text := '';
    JvTotal.Value := 0;
    JvSubtotal.Value := 0;
    JvParcial.Value := 0;
    edtFone.SetFocus;
  end;

end;

procedure TfTerminal2.testaCaixaAberto;
begin
  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (sCaixa1.IsEmpty) then
  begin
    DM.resultadoOperacao := 'FALSE';
  end
  else begin
    DM.resultadoOperacao := 'TRUE';
    caixaTerminal2 := sCaixa1CODCAIXA.AsInteger;
    caixaTerminal2DataAbertura := sCaixa1DATAABERTURA.AsDateTime;
    caixaTerminal2Id := sCaixa1IDCAIXACONTROLE.AsInteger;
  end;
  sCaixa1.Close;

end;

procedure TfTerminal2.JvAlterarClick(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       jvPageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;

 if (not DM_MOV.c_movdet.Active) then
    Exit;

 F_AlteraPedido:=TF_AlteraPedido.Create(Application);
 try
   DM_MOV.c_movdet.Edit;
   F_AlteraPedido.JvQtde.AsFloat := DM_MOV.c_movdetQUANTIDADE.AsFloat;
   F_AlteraPedido.JvUnitario.AsFloat := DM_MOV.c_movdetPRECO.AsFloat;
   F_AlteraPedido.ShowModal;
 finally
   F_AlteraPedido.Free;
 end;

end;

procedure TfTerminal2.JvExcluirClick(Sender: TObject);
var sql_texto : string;
begin
  if (peditoTerminalFinalizado = 'S') then
  begin
    MessageDlg('Pedido já finalizado.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (jvPageControl1.ActivePage = TabVenda) then
  begin
    if MessageDlg('Deseja realmente Excluir esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try

        if (existevenda) then
        begin
          //DM_MOV.c_venda.Delete;
          //DM_MOV.c_venda.ApplyUpdates(0);
          //DM_MOV.c_venda.Close;
          MessageDlg('Exclua a finalização primeiro.', mtWarning, [mbOK], 0);
          exit;
        end;
          DM_MOV.c_movimento.Edit;
          DM_MOV.c_movimentoCODNATUREZA.AsInteger := 14;
          DM_MOV.c_movimentoSTATUS.AsInteger := 2;
          (DM_MOV.d_movimento.DataSet as TClientDataSet).ApplyUpdates(0);
          if DM_MOV.d_movdet.DataSet.Active then
            DM_MOV.d_movdet.DataSet.Close;
          DM_MOV.d_movimento.DataSet.Close;
          JvTotal.Value := 0;
          JvParcial.Value := 0;
          JvSubtotal.Value := 0;
          ShowMessage('Pedido/Orcamento Excluido com Suscesso');
       Except
         on E : Exception do
         begin
           ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           exit;
         end;
      end;
    end;
  end;
  if (jvPageControl1.ActivePage = TabComanda) then
  begin
    if (JvPanel8.Caption = '...') then
    begin
       ShowMessage('Selecione um registro');
       exit;
    end;
    if MessageDlg('Deseja realmente Excluir esse registro? ' ,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try

        if (existevenda) then
        begin
          //DM_MOV.c_venda.Delete;
          //DM_MOV.c_venda.ApplyUpdates(0);
          //DM_MOV.c_venda.Close;
          MessageDlg('Exclua a finalização primeiro.', mtWarning, [mbOK], 0);
        end;
          DM_MOV.c_comanda.Edit;
          DM_MOV.c_comandaCODNATUREZA.AsInteger := 14;
          DM_MOV.c_comandaSTATUS.AsInteger := 2;
          (DM_MOV.d_comanda.DataSet as TClientDataSet).ApplyUpdates(0);

          DM_MOV.d_movdet.DataSet.Close;

          DM_MOV.d_comanda.DataSet.Close;
          ShowMessage('Pedido/Orcamento Excluido com Suscesso');
          pintaBotao;
          JvPanel8.Caption := '...';
          JvParcial.Value := 0;
          JvSubtotal.Value := 0;
       Except
         on E : Exception do
         begin
           ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           exit;
         end;

      end;
    end;
  end;

  if (jvPageControl1.ActivePage = TabDelivery) then
  begin
    if MessageDlg('Deseja realmente Excluir esse registro? ',mtConfirmation ,[mbYes,mbNo],0) = mrYes then
    begin
      try
        DM_MOV.c_venda.Close;

        if (existevenda) then
        begin
          ShowMessage('Delete o Fechamento antes de deletar o pedido');
          Exit;
        end;

        if (DM_MOV.ID_DO_MOVIMENTO > 0) then
        begin
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);

          sql_texto := 'UPDATE MOVIMENTO SET CODNATUREZA = 14, STATUS = 2 WHERE CODMOVIMENTO = ';
          sql_texto :=   sql_texto + IntToStr(DM_MOV.ID_DO_MOVIMENTO);

          Try
            dm.sqlsisAdimin.ExecuteDirect(sql_texto);
            dm.sqlsisAdimin.Commit(TD);
          except
             on E : Exception do
             begin
               ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
              MessageDlg('Erro no sistema, o movimento nao foi excluido.', mtError,
                  [mbOk], 0);
              Exit;
               dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             end;
          end;
          ShowMessage('Pedido/Orcamento Excluido com Sucesso');

          DM_MOV.c_Delivery.Close;

          DM_MOV.c_Delivery.CommandText := '';
          str_sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
          str_sql := str_sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
          str_sql := str_sql + 'WHERE m.CODNATUREZA = ';
          str_sql := str_sql + IntToStr(3);
          str_sql := str_sql + 'and m.STATUS = ';
          str_sql := str_sql + IntToStr(20);
          str_sql := str_sql + 'and m.TIPO_PEDIDO = ';
          str_sql := str_sql + QuotedStr('D');
          DM_MOV.c_Delivery.CommandText := str_sql;
          DM_MOV.c_Delivery.Open;
          edtCodCli.Text := '';
          edtNome.Text := '';
          edtEnd.Text := '';
          edtFone.Text := '';

          DM_MOV.c_movdet.Close;

          JvParcial.Value := 0;
          JvSubtotal.Value := 0;
          JvTotal.Value := 0;
        end;
       Except
         on E : Exception do
         begin
           ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           exit;
         end;
      end;
    end;
  end;

end;

function TfTerminal2.existeVenda: Boolean;
begin
  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;

  if (jvPageControl1.ActivePage = TabVenda) then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_MovimentoCODMOVIMENTO.AsInteger;

  if (jvPageControl1.ActivePage = TabComanda) then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_comandaCODMOVIMENTO.AsInteger;

  if (jvPageControl1.ActivePage = TabDelivery) then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;

  DM_MOV.c_venda.Open;

  Result := False;
  if (not DM_MOV.c_venda.IsEmpty) then
    Result := True;
end;

procedure TfTerminal2.JvImprimirClick(Sender: TObject);
begin
  if (DM_MOV.c_movdet.IsEmpty) then
  begin
    ShowMessage('Informe itens do Pedido !');
    edtFone.SetFocus;
    Exit;
  end;

  usaDll := 'FALSE';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';

  dm.cds_parametro.Close;

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
    ShowMessage('Parametro Tipo Impressao nao configurado');
    exit;
  end;

  if (tipoImpressao = 'CUPOM') then
  begin
    if (usaDll = 'TRUE') then
    begin
      if (jvPageControl1.ActivePage = TabDelivery) then
        imprimeDelivery;
      if (jvPageControl1.ActivePage = TabComanda) then
        imprimeDLLBema;
      if (jvPageControl1.ActivePage = TabVenda) then
      imprimeComanda;
    end
    else
    begin
      if (jvPageControl1.ActivePage = TabDelivery) then
        imprimeDeliveryTXT;
      if (jvPageControl1.ActivePage = TabVenda) then
        imprimecomandaTXT;
      if (jvPageControl1.ActivePage = TabComanda) then
        imprimeCupom;
    end;
  end;

  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;

  if (jvPageControl1.ActivePage = TabComanda) then
  begin
    if (s_parametro.Active) then
      s_parametro.Close;
    s_parametro.Params[0].AsString := 'BLOQUEARMESA';
    s_parametro.Open;
    if (not s_parametro.Eof) then
      bloqueia_mesa;
    s_parametro.Close;
  end;

  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;

  if (dm.cds_empresa.Active) then
    dm.cds_empresa.Close;

  if (s_parametro.Active) then
    s_parametro.Close;
end;

procedure TfTerminal2.imprimeComanda;
var linhas : Integer;
begin
  if (not dm.cds_empresa.Active) then
   dm.cds_empresa.Open;
  {----- aqui monto o endereco-----}
  razao_emp := dm.cds_empresaRAZAO.AsString;
  cnpj      := dm.cds_empresaCNPJ_CPF.AsString;
  logradouro := dm.cds_empresaENDERECO.Value + ' ' + dm.cds_empresaNUMERO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '|------------------------------------------------|' ;
  Texto1 := '| COMANDA N. ';
  Texto2 := '|------------------------------------------------|' ;
  Texto3 := '|Produto                                         |' ;
  Texto4 := '|Codigo        UN      Qtde     V.Un.    V.Total |' ;
  datasistema := DateTimeToStr(DM_MOV.c_movimentoDATA_SISTEMA.AsDateTime);
  Codigo_Pedido := IntToStr(DM_MOV.c_movimentoCODPEDIDO.AsInteger);

  if (s_parametro.Active) then
  s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  s_parametro.Open;
  porta := s_parametroDADOS.AsString;
  s_parametro.Close;

  ModeloImpressora := StrToInt(DM.impressora_pc);

  //Configura o Modelo da Impressora
  iRetorno := ConfiguraModeloImpressora( ModeloImpressora );
  if (iRetorno = -2) then
  ShowMessage('Erro Configurando Impressora');
  // Abre a porta da Impressora
  iRetorno := IniciaPorta( pchar(porta) );
  if (iRetorno <= 0) then
  ShowMessage('Erro Abrindo Porta');
  // Ajusta o Tamanho do Papel
  iRetorno := AjustaLarguraPapel(48);
  if (iRetorno <= 0) then
  ShowMessage('Erro Ajustando a Largura do Papel');

  // Imprime o numero da comanda
  //Texto1  := Texto1 + Codigo_Pedido;
  buffer  := ' COMANDA N. ' + Codigo_Pedido;
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 2, 0, 0, 2, 1);
  //FormataTX(campo, modo, Italico, Sublinhado, Expandido, Negrito)

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|' + Format('%-46s  ', ['Emissao :' + datasistema]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto3 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto4 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  DM_MOV.c_movdet.First;
  while not DM_MOV.c_movdet.Eof do
  begin
     // imprime
   // if (DM.impressaoResumida = 'NAO') then
   //   buffer  := DM_MOV.c_movdetDESCPRODUTO.Value + Chr(13) + Chr(10)
   // else
    buffer  := '|' +  Format('%-46s  ', [DM_MOV.c_movdetPRODUTO.Value]) + '|';
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      MessageDlg('Problemas na impressÃ£o do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
      exit;
    end;
    buffer  := Format('%-10s  ',[DM_MOV.c_movdetCODPRO.Value]);
    buffer  := buffer + Format('  %2s  ',[DM_MOV.c_movdetUN.Value]);
    buffer  := buffer + Format('  %6.3n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
    buffer  := buffer + Format('    %6.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
    buffer  := buffer + Format('  %8.2n',[DM_MOV.c_movdetValorTotal.value]);
    buffer  := '|' +  Format('%-46s  ', [buffer]) + '|';
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
      exit;
    end;
    DM_MOV.c_movdet.next;
  end;

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  // Imprime Linhas
  for linhas := 0 to 10 do
  begin
    buffer  := '|________|_____________________________|_________|' ;
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  end;

  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'MENSAGEM';
  s_parametro.Open;
  buffer  := s_parametroDADOS.AsString;
  s_parametro.Close;

  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 1, 0);

  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  // Corto o Papel
  comando := AcionaGuilhotina(1);  // modo corte Total
  if comando <> 1 then
   MessageDlg('Problemas no corte do papel..' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );


  if (dm.cds_empresa.Active) then
   dm.cds_empresa.Close;

  if (s_parametro.Active) then
   s_parametro.Close;

  iRetorno := FechaPorta();

end;

procedure TfTerminal2.imprimeDelivery;
begin
  if (not dm.cds_empresa.Active) then
  dm.cds_empresa.Open;
  {----- aqui monto o endereco-----}
  razao_emp := dm.cds_empresaRAZAO.AsString;
  cnpj      := dm.cds_empresaCNPJ_CPF.AsString;
  logradouro := dm.cds_empresaENDERECO.Value + ' ' + dm.cds_empresaNUMERO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '|------------------------------------------------|' ;
  Texto1 := '|                 DELIVERY / ENTREGA             |';
  Texto2 := '|------------------------------------------------|' ;
  Texto3 := '|Produto                                         |' ;
  Texto4 := '|Codigo        UN      Qtde     V.Un.    V.Total |' ;
  cliente := 'Cliente : ' + DM_MOV.c_DeliveryNOMECLIENTE.Value;
  endcli := edtEnd.Text;
  FoneCli := edtFone.Text;
  datasistema := DateTimeToStr(DM_MOV.c_DeliveryDATA_SISTEMA.AsDateTime);
  Codigo_Pedido := IntToStr(DM_MOV.c_DeliveryCODPEDIDO.AsInteger);

  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  s_parametro.Open;
  porta := s_parametroDADOS.AsString;
  s_parametro.Close;

  ModeloImpressora := StrToInt(DM.impressora_pc);

  //Configura o Modelo da Impressora
  iRetorno := ConfiguraModeloImpressora( ModeloImpressora );

  if (iRetorno = -2) then
    ShowMessage('Erro Configurando Impressora');
  iRetorno := IniciaPorta( pchar(porta) );
  if (iRetorno <= 0) then
    ShowMessage('Erro Abrindo Porta');

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := Texto1 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := '|' + Format('%-46s  ', ['Pedido n. ' + Codigo_Pedido + ' - Data : ' + datasistema]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
   msgImpressora;
    exit;
  end;

  buffer  := '|' + Format('%-46s  ', [cliente]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := '|Telefone: ' +  Format('%-36s  ', [FoneCli]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := '|' +  Format('%-46s  ', [endCli]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := Texto3 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := Texto4 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  DM_MOV.c_movdet.First;
  while not DM_MOV.c_movdet.Eof do
  begin
    // imprime
    // if (DM.impressaoResumida = 'NAO') then
    //   buffer  := DM_MOV.c_movdetDESCPRODUTO.Value + Chr(13) + Chr(10)
    // else
    buffer  := '|' +  Format('%-46s  ', [DM_MOV.c_movdetPRODUTO.Value]) + '|';
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      msgImpressora;
      exit;
    end;
    buffer  := Format('%-10s  ',[DM_MOV.c_movdetCODPRO.Value]);
    buffer  := buffer + Format('  %2s  ',[DM_MOV.c_movdetUN.Value]);
    buffer  := buffer + Format('  %6.3n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
    buffer  := buffer + Format('    %6.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
    buffer  := buffer + Format('  %8.2n',[DM_MOV.c_movdetValorTotal.value]);
    buffer  := '|' +  Format('%-46s  ', [buffer]) + '|';
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      msgImpressora;
      exit;
    end;
    DM_MOV.c_movdet.next;
  end;

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;
  Texto5 := '|                         Total.: R$ ';
  buffer  := texto5;
  total   := DM_MOV.c_movdettotalpedido.Value;
  buffer  := buffer + Format('%10.2n',[total]) + ' |';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  //      Texto2 := '|------------------------------------------------|'
  Texto5 := '|Assinatura:______________________________________|';
  buffer  := texto5;
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := DM_MOV.c_DeliveryNOMECLIENTE.Value;
  buffer  := '|' +  Format('%46s  ', [buffer]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  // Corto o Papel
  comando := AcionaGuilhotina(0);  // modo corte parcial
  if comando <> 1 then
   MessageDlg('Problemas no corte do papel..' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );


  // Imprimir o Recibo  -----------------------------------------------------

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|' +  Format('%-46s  ', [razao_emp]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|' +  Format('%-46s  ', [logradouro]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|' +  Format('%-46s  ', [cep]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|Telefone :' +  Format('%-36s  ', [fone]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|CNPJ :' +  Format('%-40s  ', [cnpj]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := texto;
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  Texto5 := '|                    RECIBO                      |';
  buffer  := texto5;
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := texto2;
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|' + Format('%-46s  ', ['Pedido n. ' + Codigo_Pedido + ' - Data : ' + datasistema]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|' + Format('%-46s  ', [cliente]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|Telefone: ' +  Format('%-36s  ', [FoneCli]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '|' +  Format('%-46s  ', [endCli]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto3 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto4 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  DM_MOV.c_movdet.First;
  while not DM_MOV.c_movdet.Eof do
  begin
   // imprime
    buffer  := '|' +  Format('%-46s  ', [DM_MOV.c_movdetDESCPRODUTO.Value]) + '|';
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      msgImpressora;
      exit;
    end;
    buffer  := Format('%-10s  ',[DM_MOV.c_movdetCODPRO.Value]);
    buffer  := buffer + Format('  %2s  ',[DM_MOV.c_movdetUN.Value]);
    buffer  := buffer + Format('  %6.3n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
    buffer  := buffer + Format('    %6.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
    buffer  := buffer + Format('  %8.2n',[DM_MOV.c_movdetVALTOTAL.asFloat]);
    buffer  := '|' +  Format('%-46s  ', [buffer]) + '|';
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      msgImpressora;
      exit;
    end;
    DM_MOV.c_movdet.next;
  end;

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  Texto5 := '|                         Total.: R$ ';
  buffer  := texto5;
  total   := DM_MOV.c_movdettotalpedido.Value;
  buffer  := buffer + Format('%10.2n',[total]) + ' |';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  if (s_parametro.Active) then
     s_parametro.close;
  s_parametro.Params[0].AsString := 'MENSAGEM';
  s_parametro.Open;
  if (not s_parametro.Eof) then
   DM.Mensagem := s_parametroDADOS.AsString
  else
   DM.Mensagem := '';

  buffer  := '|' +  Format('%-46s  ', [DM.Mensagem]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  // Corto o Papel
  comando := AcionaGuilhotina(1);  // modo corte Total
  if comando <> 1 then
   MessageDlg('Problemas no corte do papel..' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

  if (dm.cds_empresa.Active) then
   dm.cds_empresa.Close;

  if (s_parametro.Active) then
   s_parametro.Close;

  iRetorno := FechaPorta();

end;

procedure TfTerminal2.imprimeDLLBema;
var parcial: Double;
begin
  if (not dm.cds_empresa.Active) then
  dm.cds_empresa.Open;
  {----- aqui monto o endereco-----}
  logradouro := dm.cds_empresaENDERECO.Value + ' ' + dm.cds_empresaNUMERO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '--------------------------------------------------' ;
  Texto1 := '                FECHAMENTO PARCIAL                ';
  Texto2 := '--------------------------------------------------' ;
  Texto3 := 'Produto ' ;
  Texto4 := 'Cod.Barra       UN    Qtde     V.Un.     V.Total ' ;
  Texto5 := DateTimeToStr(Now) + '        Total.: R$ ';
  if (jvPageControl1.ActivePage = TabVenda) then
   cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;

  if (jvPageControl1.ActivePage = TabComanda) then
   cliente := 'Cliente : ' + DM_MOV.c_comandaNOMECLIENTE.Value;

  if (jvPageControl1.ActivePage = TabDelivery) then
   cliente := 'Cliente : ' + DM_MOV.c_DeliveryNOMECLIENTE.Value;

  if (s_parametro.Active) then
     s_parametro.close;
  s_parametro.Params[0].AsString := 'MENSAGEM';
  s_parametro.Open;
  if (not s_parametro.Eof) then
   DM.Mensagem := s_parametroDADOS.AsString
  else
   DM.Mensagem := '';

  if (s_parametro.Active) then
  s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  s_parametro.Open;
  porta := s_parametroDADOS.AsString;
  s_parametro.Close;

  ModeloImpressora := StrToInt(DM.impressora_pc);

  //Configura o Modelo da Impressora
  iRetorno := ConfiguraModeloImpressora( ModeloImpressora );

  if (iRetorno = -2) then
  ShowMessage('Erro Configurando Impressora');
  iRetorno := IniciaPorta( pchar(porta) );
  if (iRetorno <= 0) then
  ShowMessage('Erro Abrindo Porta');

  // Largura do Papel
  iRetorno := AjustaLarguraPapel(48);
  if (iRetorno <= 0) then
  ShowMessage('Erro Ajustando a Largura do Papel');


  buffer  := dm.cds_empresaRAZAO.AsString + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := logradouro + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := cep + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := fone + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := 'CNPJ :' + dm.cds_empresaCNPJ_CPF.AsString + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := cliente + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := texto1 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := texto3 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

  buffer  := texto4 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    msgImpressora;
    exit;
  end;

   DM_MOV.c_movdet.First;
   while not DM_MOV.c_movdet.Eof do
   begin
      // imprime
      if (DM.impressaoResumida = 'NAO') then
        buffer  := DM_MOV.c_movdetDESCPRODUTO.Value + Chr(13) + Chr(10)
      else
        buffer  := DM_MOV.c_movdetPRODUTO.Value + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgImpressora;
        exit;
      end;
      buffer  := Format('%-13s',[DM_MOV.c_movdetCODPRO.Value]);
      buffer  := buffer + Format(linhaItemUn,[DM_MOV.c_movdetUN.Value]);
      buffer  := buffer + Format(linhaItemQtde,[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
      buffer  := buffer + Format(linhaItemVlUnit,[DM_MOV.c_movdetPRECO.AsFloat]);
      buffer  := buffer + Format(linhaItemVlTotal,[DM_MOV.c_movdetValorTotal.value]);
      buffer  := buffer + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgImpressora;
        exit;
      end;
      DM_MOV.c_movdet.next;
   end;

   buffer  := texto + Chr(13) + Chr(10);
   comando := FormataTX(buffer, 3, 0, 0, 0, 0);
   if comando = 0 then
   begin
     msgImpressora;
     exit;
   end;

   buffer  := texto5;
   total   := DM_MOV.c_movdettotalpedido.Value;
   buffer  := buffer + Format('%10.2n',[total]);
   buffer  := buffer + Chr(13) + Chr(10);
   comando := FormataTX(buffer, 3, 0, 0, 0, 0);

   // Verifico se tem % Garcom
   s_parametro.Close;
   if (s_parametro.Active) then
   s_parametro.Close;
   s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
   s_parametro.Open;
   if (not s_parametro.IsEmpty) then
   begin
     porc    := 0;
     if (JvComissao.Value > 0) then
     begin
       Texto5 := DateTimeToStr(Now) + '            % : R$ ';
       buffer  := texto5;
       porc    := (JvComissao.Value / 100) * total;
       buffer  := buffer + Format('%10.2n',[porc]);
       buffer  := buffer + Chr(13) + Chr(10);
       comando := FormataTX(buffer, 3, 0, 0, 0, 0);

       buffer  := texto5;
       total   := total + porc;
       buffer  := buffer + Format('%10.2n',[total]);
       buffer  := buffer + Chr(13) + Chr(10);
       comando := FormataTX(buffer, 3, 0, 0, 0, 0);
     end;
   end;
   s_parametro.Close;
   if (JvParcial.Value > 0) then
   begin
     Texto5 := DateTimeToStr(Now) + '            % : R$ ';
     parcial := JvParcial.Value;
     porc := total - parcial;
     buffer  := texto5;
     buffer  := buffer + Format('%10.2n',[parcial]);
     buffer  := buffer + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);

     buffer  := texto5;
     buffer  := buffer + Format('%10.2n',[porc]);
     buffer  := buffer + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);
   end;

    buffer  := '' + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    buffer  := '' + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    buffer  := '' + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    buffer  := '' + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);

   // Corto o Papel
   comando := AcionaGuilhotina(1);  // modo total (full cut)
   if comando <> 1 then
     MessageDlg('Problemas no corte do papel..' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

   iRetorno := FechaPorta();

end;

procedure TfTerminal2.imprimeDeliveryTXT;
begin

    str_sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
              'e.LOGRADOURO, e.NUMERO, e.BAIRRO, e.TELEFONE ' +
              'FROM CLIENTES a, ENDERECOCLIENTE e ' +
              'where e.CODCLIENTE = a.CODCLIENTE ' +
              ' and e.TIPOEND = 0 ' +
              ' and a.CODCLIENTE = ' + IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger);
    if (sbuscaCli.Active) then
         sbuscaCli.Close;
    sbuscaCli.CommandText := str_sql;
    sbuscaCli.Open;

    if (sbuscaCli.IsEmpty) then
    begin
       ShowMessage('Selecione um Cliente');
       Exit;
    end;

    if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
    {----- aqui monto o endereco-----}
    razao_emp := dm.cds_empresaRAZAO.AsString;
    fantasia  := dm.cds_empresaEMPRESA.AsString;
    cnpj      := dm.cds_empresaCNPJ_CPF.AsString;
    logradouro := dm.cds_empresaENDERECO.Value + ' ' + dm.cds_empresaNUMERO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
    cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
    ' - ' + dm.cds_empresaCEP.Value;
    fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
    ' / ' + dm.cds_empresaFONE_2.Value;
    Texto   := '|----------------------------------------------------------|' ;
    Texto1  := '|                      DELIVERY / ENTREGA                  |';
    Texto2  := '|----------------------------------------------------------|' ;
    Texto3  := '|Produto                                                   |' ;
    Texto4  := '|      Codigo          Qtde       V.Un.      V.Total       |' ;
    cliente := 'Cliente : ' + DM_MOV.c_DeliveryNOMECLIENTE.Value;
    endcli  := sbuscaCli.Fields[2].AsString + ',' + sbuscaCli.Fields[3].AsString + ' ' + sbuscaCli.Fields[4].AsString;
    FoneCli := sbuscaCli.Fields[5].AsString;
    datasistema := DateTimeToStr(DM_MOV.c_DeliveryDATA_SISTEMA.AsDateTime);
    Codigo_Pedido := IntToStr(DM_MOV.c_DeliveryCODPEDIDO.AsInteger);

    if (s_parametro.Active) then
      s_parametro.Close;
    s_parametro.Params[0].AsString := 'IMPARQUIVO';
    s_parametro.Open;
    if (not s_parametro.Eof) then
    begin
      SaveDialog1.Execute;
      AssignFile(IMPRESSORA, SaveDialog1.FileName);
      s_parametro.Close;
    end
    else
    begin
      if (s_parametro.Active) then
        s_parametro.Close;
      s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
      s_parametro.Open;
      AssignFile(IMPRESSORA,s_parametroDADOS.AsString);
    end;

    Rewrite(IMPRESSORA);

    tamtexto := length(fantasia); // cRazao (Nome Fantasia)
    tamtexto := (48 - tamtexto) div 2; //iColuna (numero de colunas a serem impressas)
    col := inttostr(tamtexto);
    write(Impressora,Format('%'+col+'s',['']) ); //imprimi espacos em branco para centralizar
    writeln(Impressora,fantasia); //imprimi o o nome fantasia centralizado.

    Writeln(Impressora, c17cpi, texto);
    Writeln(Impressora, c17cpi, texto1);
    Writeln(Impressora, c17cpi, texto2);
    Writeln(Impressora, c17cpi, texto3);
    Writeln(Impressora, c17cpi, texto4);
    Writeln(Impressora, c17cpi, texto);

    DM_MOV.c_movdet.First;
    while not DM_MOV.c_movdet.Eof do
    begin
        TEXTO_IMPRIMIR  := Format('%-56s  ', [DM_MOV.c_movdetPRODUTO.Value]);
        Writeln(Impressora, c17cpi, TEXTO_IMPRIMIR);
        TEXTO_IMPRIMIR  := Format('%10s  ',[DM_MOV.c_movdetCODPRO.Value]);
        TEXTO_IMPRIMIR  := TEXTO_IMPRIMIR + Format('     %8.3n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
        TEXTO_IMPRIMIR  := TEXTO_IMPRIMIR + Format('     %8.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
        TEXTO_IMPRIMIR  := TEXTO_IMPRIMIR + Format('     %10.2n',[DM_MOV.c_movdetValorTotal.value]);
        TEXTO_IMP  := Format('%-56s  ', [TEXTO_IMPRIMIR]);
        Writeln(Impressora, c17cpi, TEXTO_IMP);
        DM_MOV.c_movdet.next;
    end;

    Writeln(Impressora, c17cpi, texto);
    total   := DM_MOV.c_movdettotalpedido.Value;
    TEXTO_IMPRIMIR := 'Total.: R$' + Format('%10.2n',[total]);
    TEXTO_IMP  := '|' +  Format('%56s  ', [TEXTO_IMPRIMIR]) + '|';
    Writeln(Impressora, c17cpi, TEXTO_IMP);

    Writeln(Impressora, c17cpi, texto);
    // Dados do Pedido
    TEXTO_IMPRIMIR  := Format('%-56s  ', ['Pedido n. ' + Codigo_Pedido + ' - Data : ' + datasistema]);
    Writeln(Impressora, c17cpi, TEXTO_IMPRIMIR);

    TEXTO_IMPRIMIR  := DM_MOV.c_DeliveryNOMECLIENTE.Value;
    TEXTO_IMPRIMIR  := 'CLIENTE :' +  Format('%-45s  ', [TEXTO_IMPRIMIR]);
    Writeln(Impressora,#18, TEXTO_IMPRIMIR);

    TEXTO_IMPRIMIR  := 'TELEFONE: ' +  Format('%-45s  ', [FoneCli]);
    Writeln(Impressora, cFExpandido, TEXTO_IMPRIMIR);

    TEXTO_IMPRIMIR  := 'END.:' +  Format('%-45s  ', [endCli]);
    Writeln(Impressora, cFExpandido, TEXTO_IMPRIMIR);

    Texto5 := 'Assinatura:_______________________________________________';
    Writeln(Impressora, c17cpi, texto5);

    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);

   CloseFile(IMPRESSORA);

   if (dm.cds_empresa.Active) then
       dm.cds_empresa.Close;

   if (s_parametro.Active) then
       s_parametro.Close;

    if (sbuscaCli.Active) then
         sbuscaCli.Close;

end;

procedure TfTerminal2.imprimecomandaTXT;
var linhas : Integer;
begin
  if (not dm.cds_empresa.Active) then
     dm.cds_empresa.Open;
  {----- aqui monto o endereco-----}
  razao_emp := dm.cds_empresaRAZAO.AsString;
  cnpj      := dm.cds_empresaCNPJ_CPF.AsString;
  logradouro := dm.cds_empresaENDERECO.Value + ' ' + dm.cds_empresaNUMERO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '------------------------------------------------' ;
  Texto1 := 'COMANDA N. ';
  Texto2 := '------------------------------------------------' ;
  Texto3 := 'Produto                                         ' ;
  Texto4 := 'Codigo        UN      Qtde     V.Un.    V.Total ' ;
  datasistema := DateTimeToStr(DM_MOV.c_movimentoDATA_SISTEMA.AsDateTime);
  Codigo_Pedido := IntToStr(DM_MOV.c_movimentoCODPEDIDO.AsInteger);

  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'IMPARQUIVO';
  s_parametro.Open;
  if (not s_parametro.Eof) then
  begin
    SaveDialog1.Execute;
    AssignFile(IMPRESSORA, SaveDialog1.FileName);
    s_parametro.Close;
  end
  else
  begin
    if (s_parametro.Active) then
      s_parametro.Close;
    s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
    s_parametro.Open;
    AssignFile(IMPRESSORA,s_parametroDADOS.AsString);
  end;

  Rewrite(IMPRESSORA);

  // Imprime o numero da comanda
  TEXTO_IMPRIMIR  := Texto2;
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);

  TEXTO_IMPRIMIR  := ' COMANDA N. ' + Codigo_Pedido;
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);
  //TEXTO_IMPRIMIR  := Texto2;
  //Writeln(Impressora, c17cpi, TEXTO_IMPRIMIR);
  TEXTO_IMPRIMIR  := Format('%-46s  ', ['Emissao :' + datasistema]);
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);

  TEXTO_IMPRIMIR  := Texto2;
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);
  TEXTO_IMPRIMIR  := Texto3;
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);
  TEXTO_IMPRIMIR  := Texto4;
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);
  TEXTO_IMPRIMIR  := Texto2;
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);

   //DM_MOV.c_movdet.First;
   if (cds_imovdet.Active) then
     cds_imovdet.Close;
   cds_iMovdet.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.AsInteger;
   cds_iMovDet.Open;

   while not cds_iMovdet.Eof do
   begin
      TEXTO_IMPRIMIR  := Format('%-56s  ', [cds_iMovdetPRODUTO.Value]);
      Writeln(Impressora, c17cpi, TEXTO_IMPRIMIR);
      TEXTO_IMPRIMIR  := Format('%10s  ',[cds_iMovdetCODPRO.Value]);
      // TEXTO_IMPRIMIR  := TEXTO_IMPRIMIR + Format('  %2s  ',[DM_MOV.c_movdetUN.Value]);
      TEXTO_IMPRIMIR  := TEXTO_IMPRIMIR + Format('     %8.2n',[cds_imovdetQTDE.AsFloat]);
      TEXTO_IMPRIMIR  := TEXTO_IMPRIMIR + Format('     %8.2n',[cds_iMovdetPRECO.AsFloat]);
      TEXTO_IMPRIMIR  := TEXTO_IMPRIMIR + Format('     %10.2n',[cds_imovdetVALTOTAL.asFloat]);
      TEXTO_IMP  := Format('%-56s  ', [TEXTO_IMPRIMIR]);
      Writeln(Impressora, c17cpi, TEXTO_IMP);
      cds_iMovdet.next;
   end;

   TEXTO_IMPRIMIR  := Texto2;
   Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);

   // Imprime Linhas
   for linhas := 0 to 10 do
   begin
      TEXTO_IMPRIMIR  := '________|_____________________________|_________' ;
      Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);
   end;

   if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
  TEXTO_IMPRIMIR  := s_parametroDADOS.AsString;
  s_parametro.Close;
  Writeln(Impressora, c10cpi, TEXTO_IMPRIMIR);

  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);

  CloseFile(IMPRESSORA);

  if (dm.cds_empresa.Active) then
    dm.cds_empresa.Close;

  if (s_parametro.Active) then
     s_parametro.Close;
end;

procedure TfTerminal2.imprimeCupom;
var i : Integer;
begin
     if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     {----- aqui monto o endereco-----}
     logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := linhaTracejada;
     Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
      IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger);
     Texto2 := linhaTracejada;
     Texto3 := 'Produto ' ;
     Texto4 := linhaTituloItem;
     Texto5 := DateTimeToStr(Now) + 'Total.: R$   ';

     if (jvPageControl1.ActivePage = TabVenda) then
       cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;

     if (jvPageControl1.ActivePage = TabComanda) then
       cliente := 'Cliente : ' + DM_MOV.c_comandaNOMECLIENTE.Value;

     if (jvPageControl1.ActivePage = TabDelivery) then
       cliente := 'Cliente : ' + DM_MOV.c_DeliveryNOMECLIENTE.Value;


     if (s_parametro.Active) then
         s_parametro.close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       DM.Mensagem := s_parametroDADOS.AsString
     else
       DM.Mensagem := '';

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       SaveDialog1.Execute;
       AssignFile(IMPRESSORA, SaveDialog1.FileName);
       s_parametro.Close;
     end
     else
     begin
       s_parametro.Close;
            if (s_parametro.Active) then
       s_parametro.Close;
       s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
       s_parametro.Open;
       AssignFile(IMPRESSORA,s_parametroDADOS.AsString);
     end;

     Rewrite(IMPRESSORA);
     Writeln(Impressora, c10cpi + cIExpandido + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
     Writeln(Impressora, c10cpi + logradouro);
     Writeln(Impressora, cep);
     Writeln(Impressora, fone);
     Writeln(Impressora, c10cpi + Format('%-30s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
     Writeln(Impressora, cliente);
     Writeln(Impressora, c10cpi, texto);
     Writeln(Impressora, c10cpi, texto1);
     Writeln(Impressora, c10cpi, texto2);
     Writeln(Impressora, c10cpi, texto3);
     Writeln(Impressora, c10cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
   try
     //DM_MOV.c_movdet.First;
     if (cds_imovdet.Active) then
       cds_imovdet.Close;
     cds_iMovdet.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.AsInteger;
     cds_iMovDet.Open;

     while not cds_iMovdet.Eof do
     begin
       cds_iMovdet.RecordCount;
       // imprime
       Writeln(Impressora, c10cpi + Format('%-24s',[Copy(cds_iMovdetDESCPRODUTO.Value,0,StrToInt(linhaDescItem))]));
       //Write(Impressora, c10cpi, Format('%-4s',[cds_iMovdetCOD_BARRA.Value]));
       Write(Impressora, c10cpi + Format(linhaItemUn ,[cds_iMovdetUN.Value]));
       Write(Impressora, c10cpi + Format(linhaItemQtde,[cds_imovdetQTDE.AsFloat]));
       Write(Impressora, c10cpi + Format(linhaItemVlUnit,[cds_imovdetVALTOTAL.asFloat/cds_imovdetQTDE.AsFloat]));
       Writeln(Impressora, c10cpi + Format(linhaItemVlTotal,[cds_imovdetVALTOTAL.asFloat]));

       with Printer.Canvas do
       begin
         Font.Name := 'Courier New';
         Font.Size := 4;
       end;
       cds_imovdet.next;
     end;
     total := DM_MOV.c_movdettotalpedido.Value;
     Writeln(Impressora, c10cpi, texto);
     Texto5 := '  Total : R$ ';
     Write(Impressora, c10cpi + Format(linhaTotal,[texto5]));
     Writeln(Impressora, c10cpi + Format(linhaItemVlTotal,[total]));


     s_parametro.Close;
     if (s_parametro.Active) then
     s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (not s_parametro.IsEmpty) then
     begin
       if (JvComissao.Value > 0) then
       begin
         Texto5 := '  % : R$ ';
         Write(Impressora, c10cpi + Format(linhaTotal,[texto5]));
         porc    := JvComissao.Value / 100;
         porc    := porc * JvTotal.Value;
         Writeln(Impressora, c10cpi + Format(linhaItemVlTotal,[porc]));
         total   := total + porc;
         Texto5 := 'Total + perc:R$ ';
         Write(Impressora, c10cpi + Format(linhaTotal,[texto5]));
         Writeln(Impressora, c10cpi + Format(linhaItemVlTotal,[total]));
       end;
     end;
     s_parametro.Close;

     Writeln(IMPRESSORA);
     Write(Impressora, c10cpi, DM.Mensagem);
     for i := 0 to StrToInt(qntespacos) do
     begin
       Writeln(IMPRESSORA);
     end;
     Write(IMPRESSORA, chr(ord(strtoint('29')))+chr(ord(strtoint( '+86')))+chr(ord(strtoint('+01'))));
  finally
    CloseFile(IMPRESSORA);
  end;

end;

procedure TfTerminal2.imprimeRecibo;
begin
  VCLReport1.FileName := str_relatorio + 'orcamento_new.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;

end;

procedure TfTerminal2.bloqueia_mesa;
begin
  str_sql := 'UPDATE MOVIMENTO SET OBS = ' + QuotedStr('BLOQUEADA - PARCIAL IMPRESSA') +
           ' WHERE CODMOVIMENTO = ' + IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger);

  if (DM_MOV.s_buscaMov.Active) then
    DM_MOV.s_buscaMov.Close;

  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro ao efetuar troca de Mesa .', mtError,
        [mbOk], 0);
  end;
end;

procedure TfTerminal2.JvFinalizarClick(Sender: TObject);
var i: integer;
begin
  if (DM_MOV.c_movdet.IsEmpty) then
  begin
    ShowMessage('Selecione um Pedido');
    Exit;
  end;

  if (jvPageControl1.ActivePage <> TabDelivery) then
   DM_MOV.ID_DO_MOVIMENTO := 0;
  if (jvPageControl1.ActivePage = TabVenda) then
  begin
    if (not DM_MOV.c_movimento.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'PDV';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
  end;

  if (jvPageControl1.ActivePage = TabComanda) then
  begin
    if (not DM_MOV.c_comanda.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'COMANDA';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    DM_MOV.c_movimento.Open;
  end;


  if (jvPageControl1.ActivePage = TabDelivery) then
  begin
    if (not DM_MOV.c_Delivery.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'DELIVERY';
   // DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
    if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    DM_MOV.c_movimento.Open;
  end;

  fOsFinaliza := TfOsFinaliza.Create(Application);
  try
    fOsFinaliza.porc_com := JvComissao.Value;
    fOsFinaliza.dtaOsFinaliza := caixaTerminal2DataAbertura;
    fOsFinaliza.ShowModal;
    if (fOsFinaliza.OSFinalizaStatus = 'FINALIZADO') then
    begin
      if (jvPageControl1.ActivePage = TabVenda) then
      begin
        peditoTerminalFinalizado := 'N';
        if (DM_MOV.c_movimento.Active) then
          DM_MOV.c_movimento.Close;
        if (DM_MOV.c_movdet.Active) then
          DM_MOV.c_movdet.Close;
      end;
    end;
  finally
    fOsFinaliza.Free;
  end;



  if (s_venda.Active) then
    s_venda.Close;
  s_venda.Params[0].Clear;
  s_venda.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  s_venda.Open;
  if (not s_venda.IsEmpty) then
  begin
    if (jvPageControl1.ActivePage = TabComanda) then
    begin
      if (DM_MOV.c_movimentoSTATUS.Value = 0) then
      begin
       if (DM_MOV.c_movimento.Active) then
       begin
         cliente := DM_MOV.c_movimentoNOMECLIENTE.AsString;
         pintaBotao;
       end;
      end;
    end;

    if (DM.USACONTROLECAIXA <> 'SIM') then
    begin
      if (jvPageControl1.ActivePage = TabVenda) then
       EdtCodBarra1.SetFocus;
      if (jvPageControl1.ActivePage = TabDelivery) then
       edtFone.SetFocus;
      if (jvPageControl1.ActivePage = TabComanda) then
      begin
       pintaBotao;
       JvPanel8.Caption := '...';
      end;
      if (DM_MOV.c_movdet.Active) then
         DM_MOV.c_movdet.Close;
      JvTotal.AsFloat := 0;
      JvParcial.AsFloat := 0;
      JvSubtotal.AsFloat := 0;
    end;
  end;

  if (s_venda.Active) then
   s_venda.Close;

  if (jvPageControl1.ActivePage = TabDelivery) then
  begin
    if (DM_MOV.c_Delivery.Active) then
      DM_MOV.c_Delivery.Close;
    DM_MOV.c_Delivery.CommandText := '';
    str_sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    str_sql := str_sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    str_sql := str_sql + 'WHERE m.CODNATUREZA = ';
    str_sql := str_sql + IntToStr(3);
    str_sql := str_sql + 'and m.STATUS = ';
    str_sql := str_sql + IntToStr(20);
    str_sql := str_sql + 'and m.TIPO_PEDIDO = ';
    str_sql := str_sql + QuotedStr('D');
    DM_MOV.c_Delivery.CommandText := str_sql;
    DM_MOV.c_Delivery.Open;
  end;
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PAGA_COMISSAO';
  dm.cds_parametro.Open;
  if(not dm.cds_parametro.IsEmpty) then
   JvComissao.Value := StrToFloat(dm.cds_parametroDADOS.AsString);
  dm.cds_parametro.Close;
  if (TabComanda.TabVisible = True) then
  begin
    edMesa.Text := '';
    pintaBotao;
    if (jvPageControl1.TabIndex = 1) then
      edMesa.SetFocus;
  end;
  if (jvPageControl1.TabIndex = 0) then
    EdtCodBarra1.SetFocus;

end;

procedure TfTerminal2.JvBitBtn4Click(Sender: TObject);
var porc_com : Double;
begin
  var_FINALIZOU := 'NAO';
 DM_MOV.ID_DO_MOVIMENTO := 0;
 if (jvPageControl1.ActivePage = TabVenda) then
 begin
    if (not DM_MOV.c_movimento.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'PDV';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
 end;

 if (jvPageControl1.ActivePage = TabComanda) then
 begin
    if (not DM_MOV.c_comanda.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'COMANDA';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    DM_MOV.c_movimento.Open;
 end;

 if (jvPageControl1.ActivePage = TabDelivery) then
 begin
    if (not DM_MOV.c_Delivery.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'DELIVERY';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
    if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    DM_MOV.c_movimento.Open;
 end;

  F_Entrada := TF_Entrada.Create(Application);
  try
    f_entrada.dtaFEntrada := caixaTerminal2DataAbertura;
    if (F_Entrada.c_forma.Active) then
      F_Entrada.c_forma.Close;
    F_Entrada.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    F_Entrada.c_forma.Open;

    if (F_Entrada.c_forma.IsEmpty) then
      F_Entrada.c_forma.Append
    else
      F_Entrada.c_forma.Edit;
    F_Entrada.JvPedido.Value := JvTotal.Value;

    porc_com :=  JvComissao.Value;
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'LANCACOMISSAOCR';
    dm.cds_parametro.Open;
    if (not dm.cds_parametro.Eof) then
      F_Entrada.JvComissao.Value:= (porc_com /100) * F_Entrada.JvPedido.Value;
    dm.cds_parametro.Close;
    if(JvComissao.Visible) then
    begin
      F_Entrada.JvComissao.Visible := True;
      F_Entrada.JvLabel12.Visible := True;
    end
    else
    begin
      F_Entrada.JvComissao.Visible := False;
      F_Entrada.JvLabel12.Visible := False;
    end;
    F_Entrada.ShowModal;
  finally
    F_Entrada.Free;
  end;

  if (c_forma.Active) then
    c_forma.Close;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;
  if (not c_formatotal.IsNull) then
  begin
    porc := 0;
    if (JvComissao.Visible = True) then
      if (JvComissao.Value > 0) then
        porc := (JvComissao.Value /100) * JvTotal.Value;
    JvParcial.Value := c_formatotal.Value;
    JvParcial.Value := c_formatotal.Value;
    JvSubtotal.Value := JvTotal.Value + porc - JvParcial.Value;
    if (JvSubtotal.Value < 0.009) then
      var_FINALIZOU := 'SIM';
  end;

  c_forma.Close;

  if (var_FINALIZOU = 'SIM') then
  begin
    if (jvPageControl1.ActivePage = TabComanda) then
    begin
      if (DM_MOV.c_comanda.Active) then
        DM_MOV.c_comanda.Close;
      pintaBotao;
      edMesa.Text := '';
      edMesa.SetFocus;
      JvPanel8.Caption := '...';
      JvTotal.Value := 0;
    end;

    if (jvPageControl1.ActivePage = TabVenda) then
    begin
      peditoTerminalFinalizado := 'N';
       EdtCodBarra1.SetFocus;
       if (DM_MOV.c_movimento.Active) then
           DM_MOV.c_movimento.Close;
       JvTotal.Value := 0;
    end;

    if (jvPageControl1.ActivePage = TabDelivery) then
    begin
      edtFone.Text := '';
      edtCodCli.Text := '';
      edtNome.Text := '';
      edtEnd.Text := '';
      edtFone.SetFocus;
      if (DM_MOV.c_Delivery.Active) then
        DM_MOV.c_Delivery.Close;
      DM_MOV.c_Delivery.CommandText := '';
      str_sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
      str_sql := str_sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
      str_sql := str_sql + 'WHERE m.CODNATUREZA = ';
      str_sql := str_sql + IntToStr(3);
      str_sql := str_sql + 'and m.STATUS = ';
      str_sql := str_sql + IntToStr(20);
      str_sql := str_sql + 'and m.TIPO_PEDIDO = ';
      str_sql := str_sql + QuotedStr('D');
      DM_MOV.c_Delivery.CommandText := str_sql;
      DM_MOV.c_Delivery.Open;
    end;
    if (DM_MOV.c_movdet.Active) then
       DM_MOV.c_movdet.Close;
    JvSubtotal.Value := 0;
    JvTotal.Value := 0;
    JvParcial.Value := 0;
    DM_MOV.ID_DO_MOVIMENTO := 0;
  end;
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PAGA_COMISSAO';
  dm.cds_parametro.Open;
  if(not dm.cds_parametro.IsEmpty) then
    JvComissao.Value := StrToFloat(dm.cds_parametroDADOS.AsString);
  dm.cds_parametro.Close;

end;

procedure TfTerminal2.JvBitBtn3Click(Sender: TObject);
begin
  if (DM_MOV.s_BuscaComanda.Active) then
    DM_MOV.s_BuscaComanda.Close;
  DM_MOV.s_BuscaComanda.Params[0].AsString := edMesa.Text;
  //DM_MOV.s_BuscaComanda.Params[1].AsString :=  nome_botao;
  DM_MOV.s_BuscaComanda.Params[1].Clear;
  DM_MOV.s_BuscaComanda.Open;
  if (DM_MOV.s_BuscaComanda.IsEmpty) then
  begin
     DM_MOV.s_BuscaComanda.Close;
     ShowMessage('Comanda/Mesa nao Localizada');
     Exit;
  end;

  if (DM_MOV.s_buscaMov.Active) then
     DM_MOV.s_buscaMov.Close;

  str_sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
         'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
         'where m.CODNATUREZA = 3 and m.STATUS = 20' +
         ' and m.CODCLIENTE = ' + IntToStr(DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger);
  DM_MOV.s_buscaMov.CommandText := str_sql;
  DM_MOV.s_buscaMov.Open;

  if (DM_MOV.s_buscaMov.IsEmpty)then
  begin
    ShowMessage('Selecione uma Mesa');
    Exit;
  end;

  F_MudaMesa := TF_MudaMesa.Create(Application);
  try
    F_MudaMesa.Edit1.Text := JvPanel8.Caption;
    F_MudaMesa.ShowModal;
  finally
    F_MudaMesa.Free;
  end;
  DM_MOV.s_buscaMov.close;

  abreComanda('');
  JvPanel8.Caption := '...';
  pintaBotao;
end;

procedure TfTerminal2.JvBitBtn2Click(Sender: TObject);
begin
  F_MESAS := TF_MESAS.Create(Application);
  try
    F_MESAS.ShowModal;
  finally
    F_MESAS.Free;
  end;
  abreComanda('');
end;

procedure TfTerminal2.JvBitBtn6Click(Sender: TObject);
var
   XY: TPoint;
begin
     XY := Point(50, -10);
     XY := JvBitBtn6.ClientToScreen(XY);
     pmCaixa.Popup(XY.X, XY.Y + JvBitBtn6.Height - 2);
end;

procedure TfTerminal2.JvBitBtn5Click(Sender: TObject);
var
   XY: TPoint;
begin
  XY := Point(50, -10);
  XY := JvBitBtn5.ClientToScreen(XY);
  pmImp.Popup(XY.X, XY.Y + JvBitBtn5.Height - 2);
end;

procedure TfTerminal2.JvBitBtn1Click(Sender: TObject);
begin
  ModeloImpressora := StrToInt(DM.impressora_pc);

  //Configura o Modelo da Impressora
  iRetorno := ConfiguraModeloImpressora( ModeloImpressora );
  if (iRetorno = -2) then
    ShowMessage('Erro Configurando Impressora');
  iRetorno := IniciaPorta( pchar( 'USB' ) );
  if (iRetorno <= 0) then
    ShowMessage('Erro Abrindo Porta');

  // Comando para Acionar a Gaveta de Dinheiro
  scomando := #27 + #118 + #140;
  iRetorno := ComandoTX( scomando, Length( scomando ));

  iRetorno := 0;
  iRetorno := FechaPorta();
end;

procedure TfTerminal2.edMesaKeyPress(Sender: TObject; var Key: Char);
  var i, j: Integer;
  nomeCliAmarelo: String;
begin
  if (key = #13) then
  begin

    if (DM_MOV.s_BuscaComanda.Active) then
      DM_MOV.s_BuscaComanda.Close;
    DM_MOV.s_BuscaComanda.Params[0].AsString := edMesa.Text;
    DM_MOV.s_BuscaComanda.Params[1].Clear;
    DM_MOV.s_BuscaComanda.Open;
    if (DM_MOV.s_BuscaComanda.IsEmpty) then
    begin
       DM_MOV.s_BuscaComanda.Close;
       ShowMessage('Mesa nao Localizada');
       Exit;
    end;

    // Pinto de Vermelho os botoes mesas ocupada
    // *****************************************
    pintaBotao;
    for j := 0 to ((numMesa)-1) do
    begin
      if (TPanel(pMesa.Components[(j)]).Caption = DM_MOV.s_BuscaComandaNOMECLIENTE.AsString) then
        TPanel(pMesa.Components[(j)]).Color := clGreen;
    end;
    JvPanel8.Caption := DM_MOV.s_BuscaComandaNOMECLIENTE.AsString;
    codCliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
    nomeCliAmarelo := DM_MOV.s_BuscaComandaNOMECLIENTE.AsString;
    //************************************** FIM DO VERMELHO

    if (DM_MOV.s_buscaMov.Active) then
       DM_MOV.s_buscaMov.Close;

    str_sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
           'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
           'where m.CODNATUREZA = ' + IntToStr(3) + ' and m.STATUS = ' +
           IntToStr(20) + ' and m.CODCLIENTE = ' + IntToStr(codCliente);
    DM_MOV.s_buscaMov.CommandText := str_sql;

    DM_MOV.s_buscaMov.Open;

    if (DM_MOV.s_buscaMov.IsEmpty)then
       IncluiPedido
    else
    begin
      abreComanda(' and m.CODCLIENTE = ' + IntToStr(DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger));
      AlteraPedido;
    end;
    if (not DM_MOV.c_movdet.IsEmpty) then
    begin
      porc := 0;
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
      if (c_forma.Active) then
        c_forma.Close;
      c_forma.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.Value;
      c_forma.Open;

      if (not c_formatotal.IsNull) then
      begin
        JvParcial.Value := c_formatotal.Value;
        JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
      end
      else
      begin
        JvParcial.Value := 0;
        JvSubtotal.Value := JvTotal.Value + porc;
      end;

      if (JvComissao.Visible = True) then
        if (JvComissao.Value > 0) then
          porc := (JvComissao.Value /100) * JvTotal.Value;
      JvSubtotal.Value := JvSubtotal.Value + porc;
      c_forma.Close;
    end
    else
    begin
      DM_MOV.c_movdet.Close;
      JvTotal.AsFloat := 0;
    end;
    DM_MOV.s_buscaMov.Close;
    DM_MOV.s_BuscaComanda.Close;
    if (JvTotal.Value = 0) then
    begin
       JvParcial.Value := 0;
       JvSubtotal.Value := 0;
    end;
  end;
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
    EdtCodBarra1.SetFocus;
  end;

end;

procedure TfTerminal2.EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
begin
  codLote := '0';
  if (key = #13) then
  begin
    if (DM.USACONTROLECAIXA = 'SIM') then
    begin
       testacaixaaberto;
       if DM.resultadoOperacao = 'FALSE' then
       begin
          ShowMessage('Caixa nao esta aberto');
          Exit;
       end;
    end;

    if (jvPageControl1.ActivePage = TabComanda) then
    begin
      if (DM_MOV.c_comanda.Active) then
       str_sql := 'SELECT OBS FROM MOVIMENTO WHERE CODMOVIMENTO = ' +
              IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger);
      if (s_Bloque.Active) then
       s_Bloque.Close;
      s_Bloque.CommandText := str_sql;
      s_Bloque.Open;
      if (s_Bloque.Fields[0].AsString = 'BLOQUEADA - PARCIAL IMPRESSA') then
      begin
        if (MessageDlg('Mesa/Comanda Bloqueada '+#13+#10+'      DESBLOQUEAR ?', mtInformation, [mbYes, mbNo], 0) in [mrYes, mrNo, mrNone]) then
        begin
          permissao;

          if (DM.RESULTADO_APROVA = True) then
          begin
            Libera_mesa;
            s_Bloque.Close;
          end
          else
          begin
            s_Bloque.Close;
            Exit;
          end;
        end;
      end;
      s_Bloque.Close;
    end;
    SaldoNegativo := 'FALSE';
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
      estoque_negativo := 'FALSO'
    else
      estoque_negativo := 'TRUE';

    if (EdtCodBarra1.Text <> '') then
      BuscaProduto
    else
    begin
      btnProduto.Click;
      EdtCodBarra1.Clear;
      exit;
    end;

    if (retorno = 'FALSO') then
    begin
      btnProduto.Click;
      EdtCodBarra1.Clear;
      exit;
    end;

    if (SaldoNegativo = 'TRUE') then
    begin
      //ShowMessage('Produto com saldo negativo !');
      EdtCodBarra1.Clear;
      EdtCodBarra1.SetFocus;
      exit;
    end;

    IncluiItemPedido;
    edtQtde1.Value := 1;
    edtQtde1.SetFocus;

    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;

    if (s_parametro.Active) then
      s_parametro.Close;
    s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
    s_parametro.Open;
    porc    := 0;
    if (not s_parametro.IsEmpty) then
    begin
      if (JvComissao.Value > 0) then
      begin
        porc := (JvComissao.Value / 100) * JvTotal.Value;
        JvSubtotal.AsFloat := porc + JvTotal.Value;
      end;
    end;
    s_parametro.Close;

    if (c_forma.Active) then
      c_forma.Close;
    c_forma.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.Value;
    c_forma.Open;
    if (not c_formatotal.IsNull) then
    begin
      JvParcial.Value := c_formatotal.Value;
      JvSubtotal.Value := (JvTotal.Value + porc) - JvParcial.Value;
    end
    else
    begin
      JvParcial.Value := 0;
      JvSubtotal.Value := JvTotal.Value + porc;
    end;
    c_forma.Close;

    if (scds_produto_proc.Active) then
      scds_produto_proc.Close;
    EdtCodBarra1.Text := '';
  end;
  if (tipo_busca = 'CODBARRA') then
    EdtCodBarra1.SetFocus;
end;

procedure TfTerminal2.EdtCodBarra1Enter(Sender: TObject);
begin
  EdtCodBarra1.Color := clYellow;
end;

procedure TfTerminal2.EdtCodBarra1Exit(Sender: TObject);
begin
  EdtCodBarra1.Color := clWindow;
end;

procedure TfTerminal2.edtQtde1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (edtQtde1.Value <> 1) then
    begin
       if (DM_MOV.c_movdet.Active) then
       begin
         DM_MOV.c_movdet.Edit;
         DM_MOV.c_movdetQUANTIDADE.AsFloat := edtQtde1.Value ;
         DM_MOV.c_movdetvalortotal.AsFloat := DM_MOV.c_movdetQUANTIDADE.AsFloat * DM_MOV.c_movdetPRECO.AsFloat;
         DM_MOV.c_movdet.ApplyUpdates(0);
       end
       else begin
         MessageDlg('Pedido nao iniciado, use a opcao F2.', mtError, [mbOK], 0);
         exit;
       end;
    end;
    EdtCodBarra1.SetFocus;
    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;

    if (s_parametro.Active) then
      s_parametro.Close;
    s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
    s_parametro.Open;
    porc := 0;
    if (not s_parametro.IsEmpty) then
    begin
       if (JvComissao.Value > 0) then
         porc := (JvComissao.Value / 100) * JvTotal.Value;
    end;
    s_parametro.Close;

    if (c_forma.Active) then
      c_forma.Close;
    c_forma.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.Value;
    c_forma.Open;
    if (not c_formatotal.IsNull) then
    begin
      JvParcial.Value := c_formatotal.Value;
      JvSubtotal.Value := (JvTotal.Value + porc) - JvParcial.Value;
    end
    else
    begin
      JvParcial.Value := 0;
      JvSubtotal.Value := JvTotal.Value + porc;
    end;
    c_forma.Close;
    if (jvPageControl1.ActivePage = TabComanda) then
      edMesa.SetFocus;

  end;

end;

procedure TfTerminal2.JvPageControl1Change(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       jvPageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;

  if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
  if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
  JvTotal.AsFloat := 0;
  JvParcial.Value := 0;
  JvSubtotal.Value := 0;
  if (jvPageControl1.ActivePage = TabVenda) then
  begin
     deliveryLivre := False;
     EdtCodBarra1.SetFocus;
     if (JvBitBtn2.Visible = True) then
      JvBitBtn2.Visible := False;
     if (JvBitBtn3.Visible = True) then
      JvBitBtn3.Visible := False;
  end;
  if (jvPageControl1.ActivePage = TabComanda) then
  begin
    deliveryLivre := False;

    abreComanda('');
    JvPanel8.Caption := '...';
    //EdtComanda.SetFocus;
    if (JvBitBtn2.Visible = False) then
      JvBitBtn2.Visible := True;
    if (JvBitBtn3.Visible = False) then
      JvBitBtn3.Visible := True;
    if (JvBitBtn4.Visible = False) then
      JvBitBtn4.Visible := True;
    edMesa.SetFocus;
    pintaBotao;
  end;

  if (jvPageControl1.ActivePage = TabDelivery) then
  begin
    if (JvBitBtn2.Visible = True) then
      JvBitBtn2.Visible := False;
    if (JvBitBtn3.Visible = True) then
      JvBitBtn3.Visible := False;
    if (JvBitBtn4.Visible = False) then
      JvBitBtn4.Visible := True;
    if (EdtCodBarra1.Visible = False) then
        EdtCodBarra1.Visible := True;
    if (edtQtde1.Visible = False) then
        edtQtde1.Visible := True;
    if (JvLabel1.Visible = False) then
        JvLabel1.Visible := True;
    if (JvLabel14.Visible = False) then
        JvLabel14.Visible := True;
    deliveryLivre := True;
    edtFone.Clear;
    edtNome.Clear;
    edtCodCli.Clear;
    edtFone.SetFocus;
  end;

end;

procedure TfTerminal2.alteraPedido;
begin
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;
  DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
  DM_MOV.c_movdet.Open;
end;

procedure TfTerminal2.incluiPedido;
var id_movimento: integer;
  ccustoPedido: string;
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  id_movimento := dm.c_6_genid.Fields[0].AsInteger;
  dm.totalpago := 0;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;

  ccustoPedido := '51';
  if (not dm.cds_parametro.IsEmpty) then
    ccustoPedido := DM.cds_parametroD1.AsString;

  if (codCliente = 0) then
  begin
    codCliente := 1;
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
      codCliente := StrToInt(dm.cds_parametroDADOS.AsString);
    dm.cds_parametro.Close;
  end;  

  str_sql := 'INSERT INTO MOVIMENTO (CODMOVIMENTO, CODPEDIDO, CODNATUREZA, DATAMOVIMENTO, DATA_SISTEMA, STATUS, '+
    'CODUSUARIO, CODVENDEDOR, CODALMOXARIFADO, USUARIOLOGADO, CODCLIENTE, TIPO_PEDIDO) VALUES ( ' +
    IntToStr(id_movimento) + ', ' + IntToStr(id_movimento) +
    ', ' + IntToStr(3) +
    ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', caixaTerminal2DataAbertura)) +
    ', ' + QuotedStr(formatdatetime('mm/dd/yyyy HH:MM', now)) +
    ', ' + IntToStr(20) +
    ', ' + IntToStr(1) +
    ', ' + IntToStr(1) + ', ';
  if (DM_MOV.ID_CCUSTO > 0) then
    str_sql := str_sql + IntToStr(DM_MOV.ID_CCUSTO)
  else
    str_sql := str_sql + ccustoPedido;

  str_sql := str_sql +  ', ' + QuotedStr(nome_user) + ', ' + IntToStr(codcliente) + ', ';
  if (jvPageControl1.ActivePage = TabVenda) then
    str_sql := str_sql + QuotedStr('P') + ')'; // Pedido Consumidor
  if (jvPageControl1.ActivePage = TabComanda) then
    str_sql := str_sql + QuotedStr('C') + ')'; // Venda Comanda / MESA
  if (jvPageControl1.ActivePage = TabDelivery) then
    str_sql := str_sql + QuotedStr('D') + ')'; // Venda Delivery

  dm.c_6_genid.Close;
  dm.cds_parametro.Close;
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
     dm.sqlsisAdimin.ExecuteDirect(str_sql);
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o Movimento nao foi gravada.', mtError,
         [mbOk], 0);
  end;

  if (jvPageControl1.ActivePage = TabVenda) then
  begin
    if (DM_MOV.c_movimento.Active) then
        DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := id_movimento;
    DM_MOV.c_movimento.Open;
  end;

  if (jvPageControl1.ActivePage = TabComanda) then
  begin
    abreComanda(' and m.CODMOVIMENTO = ' + IntToStr(id_movimento));
  end;

  if (jvPageControl1.ActivePage = TabDelivery) then
  begin
    abreDelivery;
  end;
  JvTotal.Value := 0;
  JvParcial.Value := 0;
  JvSubtotal.Value := 0;

  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;

end;

procedure TfTerminal2.msgImpressora;
begin
  MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
end;

procedure TfTerminal2.permissao;
begin
  if (s_parametro.Active) then
     s_parametro.Close;
  s_parametro.Params[0].AsString := 'APROVACAO';
  s_parametro.Open;
  if (not s_parametro.Eof) then
  begin
    F_AUTORIZACAO := TF_AUTORIZACAO.Create(Application);
    if (EXISTEPERFIL = 'FALSE') then
    begin
      F_AUTORIZACAO.Free;
      Exit;
    end;
    try
      F_AUTORIZACAO.ShowModal;
    finally
      F_AUTORIZACAO.Free;
    end;
  end
  else
  begin
    ShowMessage('Parametro de APROVACAO nao configurado !');
  end;
  s_parametro.Close;

end;

procedure TfTerminal2.libera_mesa;
begin
  str_sql := 'UPDATE MOVIMENTO SET OBS = ' + QuotedStr('') +
           ' WHERE CODMOVIMENTO = ' + IntToStr(DM_MOV.c_movdetCODMOVIMENTO.AsInteger);
  if (DM_MOV.s_buscaMov.Active) then
    DM_MOV.s_buscaMov.Close;
  Try
     dm.sqlsisAdimin.StartTransaction(TD);
     dm.sqlsisAdimin.ExecuteDirect(str_sql);
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro ao efetuar troca de Mesa .', mtError,
         [mbOk], 0);
  end;
end;

procedure TfTerminal2.buscaProduto;
begin
  RETORNO := '';
  tipo_busca := '1'; //CODBARRA
  {------Verifico se a busca sera efetuada pelo CODPRO ou pelo CODBARRA ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BUSCAPRODUTO';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
     tipo_busca := dm.cds_parametroDADOS.AsString;   //CODPRO
  dm.cds_parametro.Close;
  str_sql := 'select  prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO, prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT, prod.ICMS, prod.CODALMOXARIFADO, prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO, prod.RATEIO, prod.TIPO, prod.LOCALIZACAO, prod.ESTOQUEATUAL ' +
         ', est.LOTE, est.SALDOESTOQUE, est.MESANO ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' left outer join ESTOQUEMES est ' +
         ' on est.CODPRODUTO = prod.CODPRODUTO ' +
         ' where ';

  if scds_produto_proc.Active then
    scds_produto_proc.Close;
  scds_produto_proc.CommandText := '';
  if (codLote <> '0') then
  begin
    scds_produto_proc.CommandText := str_sql + ' prod.CODPRODUTO = ' +
      IntToStr(dm.sqlBusca.FieldByName('CODPRODUTO').AsInteger);
  end
  else begin
    if (jvPageControl1.ActivePage = TabVenda) then
    begin
      if (tipo_busca = 'CODBARRA') then
        scds_produto_proc.CommandText := str_sql + ' COD_BARRA = ' + '''' + EdtCodBarra1.Text + ''''
      else
        scds_produto_proc.CommandText := str_sql + ' CODPRO = ' + '''' + EdtCodBarra1.Text + '''';
    end;

    if (jvPageControl1.ActivePage = TabComanda) then
    begin
      if (tipo_busca = 'CODBARRA') then
        scds_produto_proc.CommandText := str_sql + ' COD_BARRA = ' + '''' + EdtCodBarra1.Text + ''''
      else
        scds_produto_proc.CommandText := str_sql + ' CODPRO = ' + '''' + EdtCodBarra1.Text + '''';
    end;

    if (jvPageControl1.ActivePage = TabDelivery) then
    begin
      if (tipo_busca = 'CODBARRA') then
        scds_produto_proc.CommandText := str_sql + ' COD_BARRA = ' + '''' + EdtCodBarra1.Text + ''''
      else
        scds_produto_proc.CommandText := str_sql + ' CODPRO = ' + '''' + EdtCodBarra1.Text + '''';
    end;
  end;
  scds_produto_proc.Open;

  if (scds_produto_proc.IsEmpty) then
  begin
    BuscaLote;
    if (scds_produto_proc.IsEmpty) then
    begin
      RETORNO := 'FALSO';
      scds_produto_proc.Close;
    end;
  end;

  if ((estoque_negativo = 'TRUE') and (retorno = 'FALSO')) then // nao permito venda com saldo negativo
    if (scds_produto_procESTOQUEATUAL.Value <= 0) then
    begin
      ShowMessage('Produto com saldo negativo !');
      SaldoNegativo := 'TRUE';
      scds_produto_proc.Close;
    end;

end;

procedure TfTerminal2.incluiItemPedido;
var CODIGO_DO_MOVIMENTO, id_movDet : integer;
begin
  if (peditoTerminalFinalizado = 'S') then
  begin
    MessageDlg('Pedido já finalizado.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (jvPageControl1.ActivePage = TabVenda) then
    if (DM_MOV.c_movimento.State in [dsInactive]) then
      incluiPedido;
  if (jvPageControl1.ActivePage = TabComanda) then
    str_sql := str_sql +  IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  if (jvPageControl1.ActivePage = TabDelivery) then
    str_sql := str_sql +  IntToStr(DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  ID_MOVDET := dm.c_6_genid.Fields[0].AsInteger;

  dm.c_6_genid.Close;

  str_sql := 'INSERT INTO MOVIMENTODETALHE (CODDETALHE, CODPRODUTO, STATUS, CODALMOXARIFADO, CODMOVIMENTO, QUANTIDADE, UN, '+
         'PRECO, DESCPRODUTO, LOTE) VALUES ( ' +
         IntToStr(ID_MOVDET) + ', ' + IntToStr(scds_produto_procCODPRODUTO.AsInteger) + ', ' +
         'null' + ', ' + IntToStr(0) + ', ';
  if (jvPageControl1.ActivePage = TabVenda) then
    str_sql := str_sql +  IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  if (jvPageControl1.ActivePage = TabComanda) then
    str_sql := str_sql +  IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  if (jvPageControl1.ActivePage = TabDelivery) then
    str_sql := str_sql +  IntToStr(DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  str_sql := str_sql +  QuotedStr(scds_produto_procUNIDADEMEDIDA.AsString) + ', ';
  DecimalSeparator := '.';
  str_sql := str_sql +  FloatToStr(scds_produto_procVALOR_PRAZO.AsFloat)  + ', ';
  str_sql := str_sql +  QuotedStr(scds_produto_procPRODUTO.AsString) + ', ';

   if (codLote <> '0') then  // so preencho o campo Lote se o parametro usa lote for 3
     str_sql := str_sql + QuotedStr(codlote) + ')'
   else
     str_sql := str_sql + 'null' + ')' ;
  dm.sqlsisAdimin.StartTransaction(TD);
  DecimalSeparator := ',';
  Try
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro no sistema, o Iten nao foi gravada.', mtError,
        [mbOk], 0);
  end;

   if (DM_MOV.c_movdet.Active) then
         DM_MOV.c_movdet.Close;
   DM_MOV.c_movdet.Params[0].Clear;

   if (jvPageControl1.ActivePage = TabVenda) then
     CODIGO_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;

   if (jvPageControl1.ActivePage = TabComanda) then
     CODIGO_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;

   if (jvPageControl1.ActivePage = TabDelivery) then
     CODIGO_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;

   DM_MOV.c_movdet.Params[0].AsInteger := CODIGO_DO_MOVIMENTO;
   DM_MOV.c_movdet.Open;
   DM_MOV.c_movdet.Locate('CODDETALHE',ID_MOVDET,[loCaseInsensitive]);

  if (c_forma.Active) then
    c_forma.Close;
  c_forma.Params[0].AsInteger := CODIGO_DO_MOVIMENTO;
  c_forma.Open;
  if (not c_formatotal.IsNull) then
  begin
    JvParcial.Value := c_formatotal.Value;
    JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
  end;
  c_forma.Close;
  codLote := '0'; 
end;

procedure TfTerminal2.EdtComandaKeyPress(Sender: TObject; var Key: Char);
begin
 // Se Precionar ENTER Busco a Comanda se nao Encontrar Adiciona...
 if (key = #13) then
 begin
   if (EdtComanda.Text <> '') then
   begin
      if (DM_MOV.s_BuscaComanda.Active) then
        DM_MOV.s_BuscaComanda.Close;
      DM_MOV.s_BuscaComanda.Params[1].Clear;
      DM_MOV.s_BuscaComanda.Params[0].AsString :=  EdtComanda.Text;
      DM_MOV.s_BuscaComanda.Open;
      if (DM_MOV.s_BuscaComanda.IsEmpty) then
      begin
         DM_MOV.s_BuscaComanda.Close;
         ShowMessage('Comanda nao Localizada');
         Exit;
      end;
      codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
      if (DM_MOV.s_buscaMov.Active) then
         DM_MOV.s_buscaMov.Close;
      DM_MOV.s_buscaMov.Params[1].Clear;
      DM_MOV.s_buscaMov.Params[3].Clear;
      DM_MOV.s_buscaMov.Params[5].Clear;
      DM_MOV.s_buscaMov.Params[0].AsInteger := codcliente;
      DM_MOV.s_buscaMov.Params[2].AsInteger := 3;
      DM_MOV.s_buscaMov.Params[4].AsInteger := 20;//Pedidos em aberto
      DM_MOV.s_buscaMov.Open;
      if (DM_MOV.s_buscaMov.IsEmpty)then
         IncluiPedido
      else
      begin
         if (DM_MOV.c_comanda.Active) then
             DM_MOV.c_comanda.Close;
         DM_MOV.c_comanda.Params[1].Clear;
         DM_MOV.c_comanda.Params[3].Clear;
         DM_MOV.c_comanda.Params[5].Clear;
         DM_MOV.c_comanda.Params[6].Clear;
         DM_MOV.c_comanda.Params[0].AsInteger := codcliente;
         DM_MOV.c_comanda.Params[2].AsInteger := 3;
         DM_MOV.c_comanda.Params[4].AsInteger := 20;
         DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
         DM_MOV.c_comanda.Open;
         AlteraPedido;
      end;

      DM_MOV.s_buscaMov.Close;
      DM_MOV.s_BuscaComanda.Close;
   end
   else
   begin
     if (DM_MOV.c_comanda.Active) then
       DM_MOV.c_comanda.Close;
     DM_MOV.c_comanda.Params[0].Clear;
     DM_MOV.c_comanda.Params[3].Clear;
     DM_MOV.c_comanda.Params[5].Clear;
     DM_MOV.c_comanda.Params[6].Clear;
     DM_MOV.c_comanda.Params[1].AsInteger := 9999999;
     DM_MOV.c_comanda.Params[2].AsInteger := 3;
     DM_MOV.c_comanda.Params[4].AsInteger := 20;
     DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
     DM_MOV.c_comanda.Open;
     DM_MOV.c_comanda.First;
     AlteraPedido;
   end;
 end;
end;

procedure TfTerminal2.EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
var poc : double;
  clienteConsumidor: String;
begin
   if (key = #13) then
   begin
      if (DM.USACONTROLECAIXA = 'SIM') then
      begin
         testacaixaaberto;
         if DM.resultadoOperacao = 'FALSE' then
         begin
            ShowMessage('Caixa nao esta aberto');
            Exit;
         end;
      end;

      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
      dm.cds_parametro.Open;
      if (dm.cds_parametro.IsEmpty) then
         estoque_negativo := 'FALSO'
      else
         estoque_negativo := 'TRUE';

      SaldoNegativo := 'FALSE';

      clienteConsumidor := '1';
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
      dm.cds_parametro.Open;
      if not dm.cds_parametro.IsEmpty then
        clienteConsumidor := dm.cds_parametroDADOS.AsString;
      dm.cds_parametro.Close;

      if (b_cliente.Active) then
        b_cliente.Close;
      b_cliente.Params[0].AsInteger := StrToInt(clienteConsumidor);
      b_cliente.Open;
      if (b_cliente.IsEmpty) then
      begin
          ShowMessage('Cliente configurado nos parametros nao consta no cadastro de clientes.');
          exit;
      end
      else
      begin
         codcliente := b_clienteCODCLIENTE.AsInteger;
      end;

      if (EdtCodBarra1.Text <> '') then
      begin
        if Dm.cds_parametro.Active then
            dm.cds_parametro.Close;
        dm.cds_parametro.Params[0].AsString := 'BUSCACUPOM';
        dm.cds_parametro.Open;
        if not dm.cds_parametro.IsEmpty then
           tipo_busca := dm.cds_parametroDADOS.AsString;   //CODPRO
        dm.cds_parametro.Close;

        if (tipo_busca = '3') then
        begin
           BuscaLote;
           if ( (RETORNO = 'FALSO') and (ESTOQUE = False) ) then
           begin
             MessageDlg('Quantidade em estoque insuficiente.', mtWarning, [mbOK], 0);
             Exit;
           end;
           if (RETORNO = 'FALSO') then
             BuscaProduto;
        end
        else
        begin
           BuscaProduto;
        end;

        if (SaldoNegativo = 'TRUE') then
        begin
           //ShowMessage('Produto com saldo negativo !');
           EdtCodBarra1.Clear;
           EdtCodBarra1.SetFocus;
           exit;
        end;

        if (RETORNO = 'FALSO') then
        begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;
          btnProduto.Click
        end
        else
        begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;
          IncluiItemPedido;   // Tabela MovimentoDetalhe
          edtQtde1.Value := 1;
          if (tipo_busca <> 'CODBARRA') then
            edtQtde1.SetFocus;
        end;
      end
      else
      begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;

          btnProduto.Click;

          if (scds_produto_proc.Active) then
            scds_produto_proc.Close;
      end;

      if (not DM_MOV.c_movdet.IsEmpty) then
      begin
        JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
        // Verifico se tem % Garcom
        if (s_parametro.Active) then
          s_parametro.Close;
        s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
        s_parametro.Open;
        porc    := 0;
        if (not s_parametro.IsEmpty) then
        begin
           if (JvComissao.Value > 0) then
             porc    := (JvComissao.Value / 100) * JvTotal.Value;
        end;
        s_parametro.Close;

        if (c_forma.Active) then
          c_forma.Close;
        c_forma.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.Value;
        c_forma.Open;
        if (not c_formatotal.IsNull) then
        begin
          JvParcial.Value := c_formatotal.Value;
          JvSubtotal.Value := (JvTotal.Value + poc) - JvParcial.Value;
        end
        else
        begin
          JvParcial.Value  := 0;
          JvSubtotal.Value := JvTotal.Value + porc;
        end;
        c_forma.Close;
      end;
      EdtCodBarra1.Text := '';
   end;
end;

procedure TfTerminal2.buscaLote;
begin
  codLote := '0';

  str_sql := 'SELECT r.SALDO,r.CODPRO,r.CODPRODUTO, r.PRODUTO FROM VIEW_ESTOQUELOTE(' +
    '0, ' + QuotedStr(EdtCodBarra1.Text) + ') r ';

  if (dm.sqlBusca.Active) then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add(str_sql);
  dm.sqlBusca.Open;

  if (dm.sqlBusca.IsEmpty) then
  begin
    dm.sqlBusca.Close;
    RETORNO := 'FALSO';
    ESTOQUE := True;
  end
  else begin
    if(dm.sqlBusca.FieldByName('SALDO').asFloat > 0) then
    begin
      RETORNO := 'True';
      ESTOQUE := True;
      if (jvPageControl1.ActivePage = TabVenda) then
         codlote := EdtCodBarra1.Text;
      if (jvPageControl1.ActivePage = TabComanda) then
         codlote := EdtCodBarra1.Text;
      if not dm.cds_parametro.IsEmpty then
         tipo_busca := dm.cds_parametroDADOS.AsString;   //CODPRO
      dm.cds_parametro.Close;
      str_sql := 'select  prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO || ' +
             QuotedStr(' - S.: ' + EdtCodBarra1.Text) + ' AS PRODUTO ' +
             ', prod.UNIDADEMEDIDA ' +
             ', prod.QTDE_PCT, prod.ICMS, prod.CODALMOXARIFADO, prod.CONTA_DESPESA ' +
             ', ccus.ALMOXARIFADO, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO ' +
             ', prod.COD_COMISSAO, prod.RATEIO, prod.TIPO, prod.LOCALIZACAO, prod.ESTOQUEATUAL ' +
             ', est.LOTE, est.SALDOESTOQUE, est.MESANO ' +
             ' from PRODUTOS prod ' +
             ' left outer join ALMOXARIFADO ccus ' +
             ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
             ' left outer join ESTOQUEMES est ' +
             ' on est.CODPRODUTO = prod.CODPRODUTO ' +
             ' where ';
      if scds_produto_proc.Active then
        scds_produto_proc.Close;
      scds_produto_proc.CommandText := str_sql + ' prod.CODPRODUTO = ' +
        IntToStr(dm.sqlBusca.FieldByName('CODPRODUTO').AsInteger);
      scds_produto_proc.Open;        
    end
    else begin
      RETORNO := 'FALSO';
      ESTOQUE := False;
    end;
  end;
end;

procedure TfTerminal2.JvDBGrid2DblClick(Sender: TObject);
begin
  EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;
  DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
  DM_MOV.c_movdet.Open;
  if (not DM_MOV.c_movdet.IsEmpty) then
    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
  else
    JvTotal.AsFloat := 0;

end;

procedure TfTerminal2.FormShow(Sender: TObject);
var ImpressoraDet: TIniFile;
  dataHoje : TDate;
begin
  ImpressoraDet := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'dbxconnections.ini');
  try
    linhaTracejada := ImpressoraDet.ReadString('IMPRESSORA', 'linhaTracejada', '');
    linhaTituloItem := ImpressoraDet.ReadString('IMPRESSORA', 'linhaTituloItem', '');
    linhaDescItem := ImpressoraDet.ReadString('IMPRESSORA', 'linhaDescItem', '');
    linhaItemUn := ImpressoraDet.ReadString('IMPRESSORA', 'linhaItemUn', '');
    linhaItemQtde := ImpressoraDet.ReadString('IMPRESSORA', 'linhaItemQtde', '');
    linhaItemVlUnit := ImpressoraDet.ReadString('IMPRESSORA', 'linhaItemVlUnit', '');
    linhaItemVlTotal := ImpressoraDet.ReadString('IMPRESSORA', 'linhaItemVlTotal', '');
    linhaTotal := ImpressoraDet.ReadString('IMPRESSORA', 'linhaTotal', '');
    qntespacos := ImpressoraDet.ReadString('IMPRESSORA', 'qntespacos', '');
  finally
    ImpressoraDet.Free;
  end;

  if (s_parametro.Active) then
   s_parametro.Close;
  s_parametro.Params[0].AsString := 'USACONTROLECAIXA';
  s_parametro.Open;
  if (not s_parametro.Eof) then
  begin
    if (JvBitBtn6.Visible = False) then
      JvBitBtn6.Visible := True;
     DM_MOV.V_USACONTR_CAIXA := 'SIM';
  end
  else
  begin
    DM_MOV.V_USACONTR_CAIXA := 'NAO';
    if (JvBitBtn6.Visible = True) then
      JvBitBtn6.Visible := False;
  end;
  s_parametro.Close;

  if (jvPageControl1.ActivePage = TabVenda) then
  begin
     EdtCodBarra1.SetFocus;
     JvBitBtn2.Visible := False;
     JvBitBtn3.Visible := False;
  end;

  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if (DM.resultadoOperacao = 'TRUE') then
     begin
       dataHoje := today;
       if (caixaTerminal2DataAbertura <> dataHoje) then
       begin
         MessageDlg('Caixa Aberto com data de ' +
         formatdatetime('dd/mm/yyyy', caixaTerminal2DataAbertura) + '.' + #13#10 +
         ' TODO MOVIMENTO SERA CRIADO COM ESTA DATA.' , mtWarning, [mbOK], 0);
       end;
     end;
     if (DM.resultadoOperacao = 'FALSE') then
     begin
       jvPageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
     end;
  end;
  codCliente := 0;
end;

procedure TfTerminal2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (jvPageControl1.ActivePage = TabVenda) then
  begin
    {if (DM_MOV.c_movimento.Active) then
    begin
       if (s_venda.Active) then
          s_venda.Close;
       s_venda.Params[0].Clear;
       s_venda.Params[0].AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
       s_venda.Open;
       if (s_venda.IsEmpty) then
       begin
          if (MessageDlg('Existe Pedido em aberto, Excluir pedido ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
          begin
            DM_MOV.c_movimento.Delete;
            DM_MOV.c_movimento.ApplyUpdates(0);
          end;
       end;
       s_venda.Close;
    end;}
  end;
  if (DM_MOV.c_venda.Active) then
     DM_MOV.c_venda.Close;

  if (DM_MOV.c_movdet.Active) then
     DM_MOV.c_movdet.Close;

  if (DM_MOV.c_movimento.Active) then
     DM_MOV.c_movimento.Close;

  if (DM_MOV.c_comanda.Active) then
     DM_MOV.c_comanda.Close;

  if (DM_MOV.c_Delivery.Active) then
     DM_MOV.c_Delivery.Close;

end;

procedure TfTerminal2.btnProdutoClick(Sender: TObject);
var poc : Double;
begin
  if (peditoTerminalFinalizado = 'S') then
  begin
    MessageDlg('Pedido já finalizado.', mtWarning, [mbOK], 0);
    exit;
  end;

   if (jvPageControl1.ActivePage = TabVenda) then
   begin
     if DM_MOV.d_movimento.DataSet.State in [dsInactive] then
       incluiPedido;
     DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
   end;
   if (jvPageControl1.ActivePage = TabComanda) then
   begin
     if DM_MOV.d_comanda.DataSet.State in [dsInactive] then
       exit;
     DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
   end;
   if (jvPageControl1.ActivePage = TabDelivery) then
   begin
     if DM_MOV.d_delivery.DataSet.State in [dsInactive] then
       exit;
     DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
   end;
   if (fProcura_prod.Panel2.Visible = False) then
     fProcura_prod.Panel2.Visible := True;
   if (fProcura_prod.Panel1.Visible = True) then
     fProcura_prod.Panel1.Visible := False;
   var_F := 'terminalloja';
   fProcura_prod.Edit2.ReadOnly := True;
   fProcura_prod.Edit2.TabStop := False;
   // Define busca pelos produtos de venda
   fProcura_prod.cbTipo.ItemIndex := 2;
   fProcura_prod.BitBtn1.Click;
   fProcura_prod.ShowModal;

   if (jvPageControl1.ActivePage = TabDelivery) then
   begin
     edtFone.Clear;
     edtFone.SetFocus;
   end;

   if (DM_MOV.c_movdet.Active) then
     DM_MOV.c_movdet.Close;
   DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
   DM_MOV.c_movdet.Open;

  if (not DM_MOV.c_movdettotalpedido.IsNull) then
    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
  JvParcial.Value := 0;
  JvSubtotal.Value := JvTotal.Value - JvParcial.Value;

  if (c_forma.Active) then
    c_forma.Close;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;
  if (not c_formatotal.IsNull) then
  begin
    JvParcial.Value := c_formatotal.Value;
    JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
  end;
  //JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
  if (JvComissao.Visible = True) then
  begin
    if (JvComissao.Value > 0) then
      poc := (JvComissao.Value /100) * JvTotal.Value
    else
      poc := 0;
    if (c_forma.IsEmpty) then
      JvParcial.Value := 0
    else
      JvParcial.Value := c_formatotal.Value;
    JvSubtotal.Value := JvTotal.Value + poc - JvParcial.Value;
  end;
  if (c_forma.Active) then
    c_forma.Close;
  if (jvPageControl1.ActivePage = TabComanda) then
  begin
    edMesa.SetFocus;
  end;
end;

procedure TfTerminal2.NovoPedido1Click(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       jvPageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;

  if (jvPageControl1.ActivePage = TabComanda) then
  begin
   edMesa.SetFocus;
  end;

  if (jvPageControl1.ActivePage = TabVenda) then
  begin
    if (DM_MOV.c_movimento.Active) then
        DM_MOV.c_movimento.Close;
    if (DM_MOV.c_movdet.Active) then
        DM_MOV.c_movdet.Close;
    JvTotal.Value := 0;
    JvSubtotal.Value := 0;
    JvParcial.Value := 0;
    edtQtde1.Value := 0;
    EdtCodBarra1.SetFocus;
  end;
  if (jvPageControl1.ActivePage = TabDelivery) then
  begin
    edtFone.Text := '';
    edtCodCli.Text := '';
    edtNome.Text := '';
    edtEnd.Text := '';
    JvTotal.Value := 0;
    JvSubtotal.Value := 0;
    JvParcial.Value := 0;
    edtFone.SetFocus;
  end;

end;

procedure TfTerminal2.AlterarItendoPedido1Click(Sender: TObject);
begin
  if (peditoTerminalFinalizado = 'S') then
  begin
    MessageDlg('Pedido já finalizado.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       jvPageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;

 if (not DM_MOV.c_movdet.Active) then
    Exit;

 F_AlteraPedido:=TF_AlteraPedido.Create(Application);
 try
   DM_MOV.c_movdet.Edit;
   F_AlteraPedido.JvQtde.AsFloat := DM_MOV.c_movdetQUANTIDADE.AsFloat;
   F_AlteraPedido.JvUnitario.AsFloat := DM_MOV.c_movdetPRECO.AsFloat;
   F_AlteraPedido.ShowModal;
 finally
   F_AlteraPedido.Free;
 end;

end;

procedure TfTerminal2.F5ExcluirItemdoPedido1Click(Sender: TObject);
begin
  if (peditoTerminalFinalizado = 'S') then
  begin
    MessageDlg('Pedido já finalizado.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
    testacaixaaberto;
    if DM.resultadoOperacao = 'FALSE' then
    begin
      jvPageControl1.Enabled := False;
      ShowMessage('O caixa precisa ser aberto');
      Exit;
    end;
  end;
  if ( MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes,mbNo],0) = mrYes )then
  begin
    if (s_parametro.Active) then
     s_parametro.Close;
    s_parametro.Params[0].AsString := 'APROVACAO';
    s_parametro.Open;
    if (not s_parametro.Eof) then
    begin
      F_AUTORIZACAO := TF_AUTORIZACAO.Create(Application);
      try
        if (EXISTEPERFIL = 'FALSE') then
        begin
          Exit;
        end
        else
          F_AUTORIZACAO.ShowModal;
      finally
        F_AUTORIZACAO.Free;
      end;
      if (DM.RESULTADO_APROVA = True) then
      begin
        DM_MOV.d_movdet.DataSet.Delete;
       (DM_MOV.d_movdet.DataSet as TClientDataSet).ApplyUpdates(0);
      end
      else
      begin
        ShowMessage('Usuario sem altorizacao para Excluir/Cancelar Itens');
        Exit;
      end;
    end
    else
    begin
      DM_MOV.d_movdet.DataSet.Delete;
     (DM_MOV.d_movdet.DataSet as TClientDataSet).ApplyUpdates(0);
    end;
  end
  else
    Abort;

end;

procedure TfTerminal2.F7ExcluirPedido1Click(Sender: TObject);
begin
  JvExcluir.Click;
end;

procedure TfTerminal2.EditarComanda1Click(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       jvPageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;

  porc := 0;
  if (jvPageControl1.ActivePage = TabVenda) then
  begin
     f_AbreComanda := Tf_AbreComanda.Create(Application);
     try
        f_AbreComanda.ShowModal;
        if (DM_MOV.ID_DO_MOVIMENTO > 0) then
        begin
           if (DM_MOV.c_movimento.Active) then
              DM_MOV.c_movimento.Close;
           DM_MOV.c_movimento.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
           DM_MOV.c_movimento.Open;
           if (DM_MOV.c_movdet.Active) then
              DM_MOV.c_movdet.Close;
           DM_MOV.c_movdet.Params[0].Clear;
           DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
           DM_MOV.c_movdet.Open;

            JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
            c_forma.Close;
            c_forma.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.Value;
            c_forma.Open;
            if (not c_formatotal.IsNull) then
            begin
              JvParcial.Value := c_formatotal.Value;
              JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
              if (DM_MOV.V_PAGACOMISSAO = 'SIM') then
              begin
                if (JvComissao.Value > 0) then
                  porc := (JvComissao.Value /100) * JvTotal.Value
                else
                  porc := 0;
                JvSubtotal.Value := JvSubtotal.Value + porc;
                porc := 0;
              end;
            end
            else
            begin
              JvParcial.Value := 0;
              if (DM_MOV.V_PAGACOMISSAO = 'SIM') then
                JvSubtotal.Value := JvTotal.Value + porc
              else
                JvSubtotal.Value := JvTotal.Value;
            end;
            c_forma.Close;
        end;
     finally
       f_AbreComanda.Free;
     end;
  end;

end;

procedure TfTerminal2.BitBtn1Click(Sender: TObject);
begin
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if (dmnf.scds_cli_procSTATUS.AsInteger = 2) then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes voce tera que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        edtFone.SetFocus;
      end;
      if scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda nao permitida.', mtError, [mbOK], 0);
        exit;
        edtFone.SetFocus;
      end;
     edtFone.Text := scds_cli_procTELEFONE.AsString;
     edtCodCli.Text := IntToStr(scds_cli_procCODCLIENTE.AsInteger);
     edtNome.Text := scds_cli_procNOMECLIENTE.AsString;
     edtEnd.Text := scds_cli_procLOGRADOURO.AsString + ',' + scds_cli_procNUMERO.AsString + ' ' +  scds_cli_procBAIRRO.AsString;
     edtFone.SetFocus;
  finally
   scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;

end;

procedure TfTerminal2.edtFoneKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (edtFone.Text <> '') then
    begin
      str_sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
            'e.LOGRADOURO, e.TELEFONE, e.NUMERO, e.BAIRRO ' +
            'FROM CLIENTES a, ENDERECOCLIENTE e ' +
            'where e.CODCLIENTE = a.CODCLIENTE ' +
            ' and e.TIPOEND = 0 ' +
            ' and e.TELEFONE = ' + QuotedStr(edtFone.Text);
      if (sbuscaCli.Active) then
         sbuscaCli.Close;
      sbuscaCli.CommandText := str_sql;
      sbuscaCli.Open;
      if (not sbuscaCli.IsEmpty) then
      begin
        edtCodCli.Text := IntToStr(sbuscaCli.Fields[0].AsInteger);
        edtNome.Text := sbuscaCli.Fields[1].AsString;
        edtEnd.Text := sbuscaCli.Fields[2].AsString + ', ' + sbuscaCli.Fields[4].AsString + ' ' + sbuscaCli.Fields[5].AsString;
        deliveryLivre := False;
        if (MessageDlg('Incluir Pedido ?', mtInformation, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
        begin
          codcliente := sbuscaCli.Fields[0].AsInteger;
          IncluiPedido;
          DM_MOV.c_Delivery.Locate('CODCLIENTE',edtCodCli.Text,[loCaseInsensitive]);
          EdtCodBarra1.SetFocus;
          deliveryLivre := True;          
        end;
      end
      else
      begin
       edtCodCli.Clear;
       edtNome.Clear;
       edtEnd.Clear;
      end;
      sbuscaCli.Close;
    end
    else
    begin
     BitBtn1.Click;
    end;
  end;

end;

procedure TfTerminal2.DBGrid2DblClick(Sender: TObject);
begin
  abreDeliverySelec;
  EdtCodBarra1.SetFocus;
end;

procedure TfTerminal2.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  abreDeliverySelec;
end;

procedure TfTerminal2.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  abreDeliverySelec;
end;

procedure TfTerminal2.abreDeliverySelec;
begin
  deliveryLivre := False;
  EdtComanda.Text := IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger);
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;
  DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
  DM_MOV.c_movdet.Open;
  DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;

  str_sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
        'e.LOGRADOURO, e.TELEFONE, e.NUMERO, e.BAIRRO ' +
        'FROM CLIENTES a, ENDERECOCLIENTE e ' +
        'where e.CODCLIENTE = a.CODCLIENTE ' +
        '  and a.CODCLIENTE = ' + IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger) +
        ' and e.TIPOEND = 0 ';
  if (sbuscaCli.Active) then
      sbuscaCli.Close;
  sbuscaCli.CommandText := str_sql;
  sbuscaCli.Open;
  if (not sbuscaCli.IsEmpty) then
  begin
     edtCodCli.Text := IntToStr(sbuscaCli.Fields[0].AsInteger);
     edtNome.Text := sbuscaCli.Fields[1].AsString;
     edtEnd.Text := sbuscaCli.Fields[2].AsString + ',' + sbuscaCli.Fields[4].AsString + sbuscaCli.Fields[5].AsString;
     edtFone.Text := sbuscaCli.Fields[3].AsString;
  end;
  sbuscaCli.Close;

  if (not DM_MOV.c_movdet.IsEmpty) then
  begin
    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
    if (c_forma.Active) then
      c_forma.Close;
    c_forma.Params[0].AsInteger := DM_MOV.c_movdetCODMOVIMENTO.Value;
    c_forma.Open;
    if (not c_formatotal.IsNull) then
    begin
      JvParcial.Value := c_formatotal.Value;
      JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
    end;
    c_forma.Close;
  end
  else
    JvTotal.AsFloat := 0;
  deliveryLivre := True;

end;

procedure TfTerminal2.DBGrid2CellClick(Column: TColumn);
begin
  abreDeliverySelec;
end;

procedure TfTerminal2.EfetuarSangria1Click(Sender: TObject);
var
  FclsSangria : TFiscalCls;
begin
  try
    FclsSangria := TFiscalCls.Create;
    // Pego o Caixa Aberto
    var_Retorno := FclsSangria.VerificaCaixaAberto();
  finally
    FclsSangria.Free;
  end;
  if (var_Retorno = True) then
  begin
    fSangria := TfSangria.create(Application);
    try
      fSangria.ShowModal;
    finally
      fSangria.Free;
    end;
  end
  else
  begin
     ShowMessage('Nao existe Caixa Aberto');
     Exit;
  end;
end;

procedure TfTerminal2.Entrada1Click(Sender: TObject);
var
  FclsEntCaixa : TFiscalCls;
begin
  try
    FclsEntCaixa := TFiscalCls.Create;
    var_Retorno := FclsEntCaixa.VerificaCaixaAberto();   // Pego o Caixa Aberto
  finally
    FclsEntCaixa.Free;
  end;

  if (var_Retorno = True) then
  begin
    fEntradaCaixa := TfEntradaCaixa.create(Application);
    try
      fEntradaCaixa.ShowModal;
    finally
      fEntradaCaixa.Free;
    end;
  end
  else
  begin
     ShowMessage('Nao existe Caixa Aberto');
     Exit;
  end;
end;

procedure TfTerminal2.Pagamentos1Click(Sender: TObject);
begin
  fcrTituloPagto.ShowModal;
end;

procedure TfTerminal2.Fechamentodecaixa1Click(Sender: TObject);
var
  Caixa : TFiscalCls;
begin
  testaCaixaAberto;
  fMovCaixa := TfMovCaixa.Create(Application);
  try
    fMovCaixa.caixaMovCaixa := caixaTerminal2;
    fMovCaixa.caixaDtaMovCaixa := caixaTerminal2DataAbertura;
    fMovCaixa.caixaIdMovCaixa := caixaTerminal2Id;
    fMovCaixa.ShowModal;
  finally
    fMovCaixa.Free;
  end;
  {  try
      Caixa := TFiscalCls.Create;
      // Pego o Caixa Aberto
      var_Retorno := Caixa.VerificaCaixaAberto();
    finally
      Caixa.Free;
    end;
    if var_Retorno = False then
      jvPageControl1.Enabled := False;
  end;}
end;

procedure TfTerminal2.AbrirCaixa1Click(Sender: TObject);
var
  Caixa : TFiscalCls;
begin
  fAbrirCaixa := TfAbrirCaixa.create(Application);
  try
    fAbrirCaixa.ShowModal;
    if (DM.USACONTROLECAIXA = 'SIM') then
    begin
    end;
    Caixa := TFiscalCls.Create;
    var_Retorno := Caixa.VerificaCaixaAberto();
    if var_Retorno = True then
      jvPageControl1.Enabled := True;
  finally
    fAbrirCaixa.Free;
    Caixa.Free;
  end;
end;

procedure TfTerminal2.FazerTroca1Click(Sender: TObject);
begin
  if (jvPageControl1.ActivePage = TabVenda) then
  begin
    if (DM_MOV.c_movimento.Active) then
    if (DM_MOV.c_movdetBAIXA.AsString = '1') then
    begin
      fTroca := TfTroca.Create(Application);
      try
        fTroca.codMovTroca := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
        fTroca.codProdATrocar := DM_MOV.c_movdetCODPRODUTO.AsInteger;
        fTroca.produtoATrocar := DM_MOV.c_movdetCODPRO.AsString + '-' + DM_MOV.c_movdetDESCPRODUTO.AsString;
        fTroca.valorATrocar := DM_MOV.c_movdetVALTOTAL.AsFloat;
        fTroca.codCCustoTroca := DM_MOV.c_movimentoCODALMOXARIFADO.AsInteger;
        fTroca.codDetTroca := DM_MOV.c_movdetCODDETALHE.AsInteger;
        fTroca.ShowModal;
      finally
        fTroca.Free;
      end;
    end;
  end;  
end;

procedure TfTerminal2.RelatriosFechamentos1Click(Sender: TObject);
begin
  F_RelTerminal := TF_RelTerminal.Create(Application);
  try
    F_RelTerminal.ShowModal;
  finally
    F_RelTerminal.Free;
  end;
end;

procedure TfTerminal2.JvSpeedButton3Click(Sender: TObject);
begin
  if (peditoTerminalFinalizado = 'S') then
    exit;
    
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  try
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    if (fProcurar_nf.ShowModal = mrOK) then
    begin
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terap que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
      end;
      if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda nao permitida.', mtError, [mbOK], 0);
        exit;
      end;
    end;
    if (dm_mov.c_movimento.State in [dsBrowse]) then
      dm_mov.c_movimento.Edit;
    DM_MOV.c_movimentoCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    DM_MOV.c_movimentoNOMECLIENTE.AsString := dmnf.scds_cli_procNOMECLIENTE.AsString;
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTO SET CODCLIENTE = ' +
        IntToStr(dmnf.scds_cli_procCODCLIENTE.AsInteger) +
        ' WHERE CODMOVIMENTO = ' + IntToStr(dm_mov.c_movimentoCODMOVIMENTO.AsInteger));
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, o Iten nao foi gravada.', mtError,
          [mbOk], 0);
    end;
  finally
    dmnf.scds_cli_proc.Close;
    fProcurar_nf.Free;
  end;

end;

end.
