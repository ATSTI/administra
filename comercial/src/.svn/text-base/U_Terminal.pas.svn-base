unit U_Terminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, JvExStdCtrls, JvEdit, JvValidateEdit,
  Mask, DBCtrls, JvExControls, JvLabel, JvExDBGrids, JvDBGrid, jpeg,
  ExtCtrls, JvExExtCtrls, JvImage, Grids, DBGrids, StdCtrls, ComCtrls,
  MMJPanel, JvSpeedButton, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  Menus, JvComponentBase, JvFormAutoSize, FMTBcd, DB, SqlExpr, Provider,
  DBClient, JvExButtons, JvBitBtn, rpcompobase, rpvclreport, uUtils, DBxPress, Printers,
  JvButton, JvTransparentButton, DBLocal, DBLocalS, IniFiles;
  //dxCore, dxButton,

type
  TF_Terminal = class(TForm)
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel5: TMMJPanel;
    MMJPanel8: TMMJPanel;
    JvLabel1: TJvLabel;
    EdtCodBarra1: TEdit;
    PopupMenu1: TPopupMenu;
    AlterarItendoPedido1: TMenuItem;
    F5ExcluirItemdoPedido1: TMenuItem;
    F7ExcluirPedido1: TMenuItem;
    LocalizarPedido1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel12: TPanel;
    JvImage1: TJvImage;
    MMJPanel4: TMMJPanel;
    JvLabel7: TJvLabel;
    EdtCodBarra: TEdit;
    MMJPanel7: TMMJPanel;
    JvLabel6: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel11: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    TabComanda: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    JvDBGrid2: TJvDBGrid;
    TabDelivery: TTabSheet;
    DBGrid2: TDBGrid;
    MMJPanel6: TMMJPanel;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    edtFone: TEdit;
    edtNome: TEdit;
    edtEnd: TEdit;
    b_cliente: TSQLDataSet;
    b_clienteCODCLIENTE: TIntegerField;
    b_clienteNOMECLIENTE: TStringField;
    btnProduto: TBitBtn;
    scds_produto_proc: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
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
    JvProcurar: TJvBitBtn;
    JvAlterar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    JvImprimir: TJvBitBtn;
    JvFinalizar: TJvBitBtn;
    SQLDataSet1: TSQLDataSet;
    Finalizar1: TMenuItem;
    F11ImprimirPedido1: TMenuItem;
    JvSair: TJvBitBtn;
    F9Sair1: TMenuItem;
    VCLReport1: TVCLReport;
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
    SaveDialog1: TSaveDialog;
    scds_produto_procLOTE: TStringField;
    scds_produto_procSALDOESTOQUE: TFloatField;
    Panel2: TPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    JvTransparentButton3: TJvTransparentButton;
    JvTransparentButton4: TJvTransparentButton;
    JvTransparentButton5: TJvTransparentButton;
    JvTransparentButton6: TJvTransparentButton;
    JvTransparentButton7: TJvTransparentButton;
    JvTransparentButton8: TJvTransparentButton;
    JvTransparentButton9: TJvTransparentButton;
    JvTransparentButton10: TJvTransparentButton;
    JvTransparentButton11: TJvTransparentButton;
    JvTransparentButton12: TJvTransparentButton;
    JvTransparentButton13: TJvTransparentButton;
    JvTransparentButton14: TJvTransparentButton;
    JvTransparentButton15: TJvTransparentButton;
    JvTransparentButton16: TJvTransparentButton;
    JvTransparentButton17: TJvTransparentButton;
    JvTransparentButton18: TJvTransparentButton;
    JvTransparentButton19: TJvTransparentButton;
    JvTransparentButton20: TJvTransparentButton;
    JvTransparentButton21: TJvTransparentButton;
    JvTransparentButton22: TJvTransparentButton;
    JvTransparentButton23: TJvTransparentButton;
    JvTransparentButton24: TJvTransparentButton;
    JvTransparentButton25: TJvTransparentButton;
    JvTransparentButton26: TJvTransparentButton;
    JvTransparentButton27: TJvTransparentButton;
    JvTransparentButton28: TJvTransparentButton;
    JvTransparentButton29: TJvTransparentButton;
    JvTransparentButton30: TJvTransparentButton;
    JvTransparentButton31: TJvTransparentButton;
    JvTransparentButton32: TJvTransparentButton;
    JvTransparentButton33: TJvTransparentButton;
    JvTransparentButton34: TJvTransparentButton;
    JvTransparentButton35: TJvTransparentButton;
    JvTransparentButton36: TJvTransparentButton;
    JvTransparentButton37: TJvTransparentButton;
    JvTransparentButton38: TJvTransparentButton;
    JvTransparentButton39: TJvTransparentButton;
    JvTransparentButton40: TJvTransparentButton;
    JvTransparentButton41: TJvTransparentButton;
    JvTransparentButton42: TJvTransparentButton;
    JvTransparentButton43: TJvTransparentButton;
    JvTransparentButton44: TJvTransparentButton;
    JvTransparentButton45: TJvTransparentButton;
    JvTransparentButton46: TJvTransparentButton;
    JvTransparentButton47: TJvTransparentButton;
    JvTransparentButton48: TJvTransparentButton;
    JvTransparentButton49: TJvTransparentButton;
    JvTransparentButton50: TJvTransparentButton;
    JvTransparentButton51: TJvTransparentButton;
    JvTransparentButton52: TJvTransparentButton;
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
    s_venda: TSQLDataSet;
    JvBitBtn1: TJvBitBtn;
    MMJPanel1: TMMJPanel;
    JvLabel10: TJvLabel;
    EdtComanda: TEdit;
    MMJPanel3: TMMJPanel;
    JvLabel8: TJvLabel;
    p_mesas: TDataSetProvider;
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
    JvBitBtn2: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    MMJPanel9: TMMJPanel;
    LabelComissao: TJvLabel;
    JvLabel3: TJvLabel;
    JvComissao: TJvValidateEdit;
    JvTotal: TJvValidateEdit;
    sbuscaCli: TSQLDataSet;
    edtCodCli: TEdit;
    JvLabel12: TJvLabel;
    JvParcial: TJvValidateEdit;
    JvSubtotal: TJvValidateEdit;
    JvLabel13: TJvLabel;
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
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    scds_cli_proc: TSQLClientDataSet;
    scds_cli_procCODCLIENTE: TIntegerField;
    scds_cli_procNOMECLIENTE: TStringField;
    scds_cli_procLOGRADOURO: TStringField;
    scds_cli_procTELEFONE: TStringField;
    scds_cli_procBLOQUEIO: TStringField;
    JvLabel14: TJvLabel;
    JvLabel15: TJvLabel;
    edtQtde: TJvCalcEdit;
    edtQtde1: TJvCalcEdit;
    JvBitBtn5: TJvBitBtn;
    pmImp: TPopupMenu;
    ImprimirSetor21: TMenuItem;
    ReimprimirSetor21: TMenuItem;
    ImprimirSetor2Local1: TMenuItem;
    ReimprimirSetor2Local1: TMenuItem;
    JvBitBtn6: TJvBitBtn;
    s_Bloque: TSQLDataSet;
    Parcial1: TMenuItem;
    RelatriosFechamentos1: TMenuItem;
    S_CAIXA: TSQLDataSet;
    S_CAIXACODIGO: TIntegerField;
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
    dspCaixa1: TDataSetProvider;
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
    JvBitBtn7: TJvBitBtn;
    NovoPedido1: TMenuItem;
    EditarComanda1: TMenuItem;
    scds_cli_procNUMERO: TStringField;
    scds_cli_procBAIRRO: TStringField;
    pmCaixa: TPopupMenu;
    AbrirCaixa1: TMenuItem;
    EfetuarSangria1: TMenuItem;
    Entrada1: TMenuItem;
    Pagamentos1: TMenuItem;
    Fechamentodecaixa1: TMenuItem;
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
    JvLabel16: TJvLabel;
    edMesa: TEdit;
    sqlMesaOcupada: TSQLDataSet;
    dspMesaOcupada: TDataSetProvider;
    cdsMesaOcupada: TClientDataSet;
    JvTransparentButton53: TJvTransparentButton;
    JvTransparentButton54: TJvTransparentButton;
    JvTransparentButton55: TJvTransparentButton;
    JvTransparentButton56: TJvTransparentButton;
    JvTransparentButton57: TJvTransparentButton;
    JvTransparentButton58: TJvTransparentButton;
    JvTransparentButton59: TJvTransparentButton;
    JvTransparentButton60: TJvTransparentButton;
    JvTransparentButton61: TJvTransparentButton;
    JvTransparentButton62: TJvTransparentButton;
    JvTransparentButton63: TJvTransparentButton;
    JvTransparentButton64: TJvTransparentButton;
    JvTransparentButton65: TJvTransparentButton;
    JvTransparentButton66: TJvTransparentButton;
    JvTransparentButton67: TJvTransparentButton;
    JvTransparentButton68: TJvTransparentButton;
    JvTransparentButton69: TJvTransparentButton;
    JvTransparentButton70: TJvTransparentButton;
    JvTransparentButton71: TJvTransparentButton;
    JvTransparentButton72: TJvTransparentButton;
    JvTransparentButton73: TJvTransparentButton;
    JvTransparentButton74: TJvTransparentButton;
    JvTransparentButton75: TJvTransparentButton;
    JvTransparentButton76: TJvTransparentButton;
    JvTransparentButton77: TJvTransparentButton;
    JvTransparentButton78: TJvTransparentButton;
    JvTransparentButton79: TJvTransparentButton;
    JvTransparentButton80: TJvTransparentButton;
    JvTransparentButton81: TJvTransparentButton;
    JvTransparentButton82: TJvTransparentButton;
    JvTransparentButton83: TJvTransparentButton;
    JvTransparentButton84: TJvTransparentButton;
    JvTransparentButton85: TJvTransparentButton;
    JvTransparentButton86: TJvTransparentButton;
    JvTransparentButton87: TJvTransparentButton;
    JvTransparentButton88: TJvTransparentButton;
    JvTransparentButton89: TJvTransparentButton;
    JvTransparentButton90: TJvTransparentButton;
    Timer1: TTimer;
    procedure EdtComandaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvAlterarClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure F5ExcluirItemdoPedido1Click(Sender: TObject);
    procedure F7ExcluirPedido1Click(Sender: TObject);
    procedure JvFinalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvSairClick(Sender: TObject);
    procedure JvImprimirClick(Sender: TObject);
    procedure JvExcluirClick(Sender: TObject);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure JvTransparentButton2Click(Sender: TObject);
    procedure JvTransparentButton3Click(Sender: TObject);
    procedure JvTransparentButton4Click(Sender: TObject);
    procedure JvTransparentButton5Click(Sender: TObject);
    procedure JvTransparentButton6Click(Sender: TObject);
    procedure JvTransparentButton7Click(Sender: TObject);
    procedure JvTransparentButton8Click(Sender: TObject);
    procedure JvTransparentButton9Click(Sender: TObject);
    procedure JvTransparentButton10Click(Sender: TObject);
    procedure JvTransparentButton11Click(Sender: TObject);
    procedure JvTransparentButton12Click(Sender: TObject);
    procedure JvTransparentButton13Click(Sender: TObject);
    procedure JvTransparentButton14Click(Sender: TObject);
    procedure JvTransparentButton15Click(Sender: TObject);
    procedure JvTransparentButton16Click(Sender: TObject);
    procedure JvTransparentButton17Click(Sender: TObject);
    procedure JvTransparentButton18Click(Sender: TObject);
    procedure JvTransparentButton19Click(Sender: TObject);
    procedure JvTransparentButton20Click(Sender: TObject);
    procedure JvTransparentButton21Click(Sender: TObject);
    procedure JvTransparentButton22Click(Sender: TObject);
    procedure JvTransparentButton23Click(Sender: TObject);
    procedure JvTransparentButton24Click(Sender: TObject);
    procedure JvTransparentButton25Click(Sender: TObject);
    procedure JvTransparentButton26Click(Sender: TObject);
    procedure JvTransparentButton27Click(Sender: TObject);
    procedure JvTransparentButton28Click(Sender: TObject);
    procedure JvTransparentButton29Click(Sender: TObject);
    procedure JvTransparentButton30Click(Sender: TObject);
    procedure JvTransparentButton31Click(Sender: TObject);
    procedure JvTransparentButton32Click(Sender: TObject);
    procedure JvTransparentButton33Click(Sender: TObject);
    procedure JvTransparentButton34Click(Sender: TObject);
    procedure JvTransparentButton35Click(Sender: TObject);
    procedure JvTransparentButton36Click(Sender: TObject);
    procedure JvTransparentButton37Click(Sender: TObject);
    procedure JvTransparentButton38Click(Sender: TObject);
    procedure JvTransparentButton39Click(Sender: TObject);
    procedure JvTransparentButton40Click(Sender: TObject);
    procedure JvTransparentButton41Click(Sender: TObject);
    procedure JvTransparentButton42Click(Sender: TObject);
    procedure JvTransparentButton43Click(Sender: TObject);
    procedure JvTransparentButton44Click(Sender: TObject);
    procedure JvTransparentButton45Click(Sender: TObject);
    procedure JvTransparentButton46Click(Sender: TObject);
    procedure JvTransparentButton47Click(Sender: TObject);
    procedure JvTransparentButton48Click(Sender: TObject);
    procedure JvTransparentButton49Click(Sender: TObject);
    procedure JvTransparentButton50Click(Sender: TObject);
    procedure JvTransparentButton51Click(Sender: TObject);
    procedure JvTransparentButton52Click(Sender: TObject);
    procedure EdtCodBarra1Enter(Sender: TObject);
    procedure EdtCodBarra1Exit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure edtFoneKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtQtde1KeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure ImprimirSetor21Click(Sender: TObject);
    procedure ReimprimirSetor21Click(Sender: TObject);
    procedure ImprimirSetor2Local1Click(Sender: TObject);
    procedure ReimprimirSetor2Local1Click(Sender: TObject);
    procedure JvComissaoKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn6Click(Sender: TObject);
    procedure RelatriosFechamentos1Click(Sender: TObject);
    procedure JvBitBtn7Click(Sender: TObject);
    procedure EditarComanda1Click(Sender: TObject);
    procedure AbrirCaixa1Click(Sender: TObject);
    procedure EfetuarSangria1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure Fechamentodecaixa1Click(Sender: TObject);
    procedure edMesaKeyPress(Sender: TObject; var Key: Char);
    procedure JvTransparentButton53Click(Sender: TObject);
    procedure JvTransparentButton54Click(Sender: TObject);
    procedure JvTransparentButton55Click(Sender: TObject);
    procedure JvTransparentButton56Click(Sender: TObject);
    procedure JvTransparentButton57Click(Sender: TObject);
    procedure JvTransparentButton58Click(Sender: TObject);
    procedure JvTransparentButton59Click(Sender: TObject);
    procedure JvTransparentButton60Click(Sender: TObject);
    procedure JvTransparentButton61Click(Sender: TObject);
    procedure JvTransparentButton62Click(Sender: TObject);
    procedure JvTransparentButton63Click(Sender: TObject);
    procedure JvTransparentButton64Click(Sender: TObject);
    procedure JvTransparentButton65Click(Sender: TObject);
    procedure JvTransparentButton66Click(Sender: TObject);
    procedure JvTransparentButton67Click(Sender: TObject);
    procedure JvTransparentButton68Click(Sender: TObject);
    procedure JvTransparentButton69Click(Sender: TObject);
    procedure JvTransparentButton70Click(Sender: TObject);
    procedure JvTransparentButton71Click(Sender: TObject);
    procedure JvTransparentButton72Click(Sender: TObject);
    procedure JvTransparentButton73Click(Sender: TObject);
    procedure JvTransparentButton74Click(Sender: TObject);
    procedure JvTransparentButton75Click(Sender: TObject);
    procedure JvTransparentButton76Click(Sender: TObject);
    procedure JvTransparentButton77Click(Sender: TObject);
    procedure JvTransparentButton78Click(Sender: TObject);
    procedure JvTransparentButton79Click(Sender: TObject);
    procedure JvTransparentButton80Click(Sender: TObject);
    procedure JvTransparentButton81Click(Sender: TObject);
    procedure JvTransparentButton82Click(Sender: TObject);
    procedure JvTransparentButton83Click(Sender: TObject);
    procedure JvTransparentButton84Click(Sender: TObject);
    procedure JvTransparentButton85Click(Sender: TObject);
    procedure JvTransparentButton86Click(Sender: TObject);
    procedure JvTransparentButton87Click(Sender: TObject);
    procedure JvTransparentButton88Click(Sender: TObject);
    procedure JvTransparentButton89Click(Sender: TObject);
    procedure JvTransparentButton90Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    deliveryLivre: boolean;
    linhaTracejada, linhaTituloItem, linhaDescItem, linhaItemUn, linhaItemQtde : String; //VARIAVEIS IMPRESSAO
    linhaItemVlUnit, linhaItemVlTotal, linhaTotal, qntespacos : String;  //VARIAVEIS IMPRESSAO
    TD: TTransactionDesc;
    clienteConsumidor,nomecliente, tipo_busca : string;
    I, codcliente, ID_MOVDET : integer;
    codlote, nome_botao, nomedocliente, existe_Detalhe : string;
    corbotao, cor : TColor;
    varsql, sql : string;
    id_movimento, ModeloImpressora : integer;
    //Variaveis
    CodigoProduto : Integer;
    RETORNO, vendaexiste : String;
    ESTOQUE : Boolean;
    tipoImpressao : string;
    usaDll : string;
    IMPRESSORA:TextFile;
    Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descricao do produto,nome
    total, porc, totgeral , desconto : double;
    porta : string;
    cliente : string;
    vTIPO_PEDIDO, teste_codigo, estoque_negativo, SaldoNegativo : String;
    parcial, poc : Double;
    endCli, FoneCli, datasistema, Codigo_Pedido, razao_emp, cnpj : string;
    TEXTO_IMPRIMIR, TEXTO_IMP, fantasia, col : string;
    tamtexto : Integer;
    var_Retorno : Boolean;
    jaFezCtrlResize : String;
    //--------------------------------------------------------------------------
    procedure IncluiPedido;
    procedure AlteraPedido;
    procedure IncluiItemPedido;
    procedure BuscaProduto;
    procedure BuscaLote;
    procedure existevenda;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    procedure imprimeDLLBema;
    procedure imprimeDelivery;
    procedure imprimeDeliveryTXT;
    procedure imprimeComanda;
    procedure imprimecomandaTXT;
    procedure imp_Setor1_DLL;
    procedure imp_Setor1_LPT;
    procedure imp_Setor2_DLL;
    procedure clic_botao;
    procedure pinta_botao;
    procedure pinta_botao_1;
    procedure CtrlResize;
    procedure Mesa_Clic(botao:Integer);
    procedure update_MOVDETALHE;
    procedure bloqueia_mesa;
    procedure Libera_mesa;
    procedure permissao;
    procedure testacaixaaberto;
    procedure abreComanda;
    procedure abreDelivery;
    { Private declarations }
  public
    var_FINALIZOU : string;
    { Public declarations }
  end;

const
    cJustif = #27#97#51;
    cEject = #12;
    { Tamanho da fonte }
    c20cpi = #22;
    c10cpi = #18;
    c12cpi = #27#77;
    c17cpi = #15;
    cIExpandido = #14;
    cFExpandido = #20;
    { Formatacao da fonte }
    cINegrito = #27#71;
    cFNegrito = #27#72;
    cIItalico = #27#52;
    cFItalico = #27#53;

var
  F_Terminal: TF_Terminal;

implementation

uses sCtrlResize, UDm, UDM_MOV, UDMNF, uFiltroMovimento,
  U_AlteraPedido, uOsFinaliza, ufprocura_prod, U_AUTORIZACAO,
  u_mesas, U_MudaMesa, U_Entrada, uProcurar_nf, uAbrirCaixa, U_RelTerminal,
  U_AbreComanda, uSangria, uCrTituloPagto, uEntradaCaixa, uMovCaixa,
  uFiscalCls;

{$R *.dfm}    // Teste teste opcao

procedure TF_Terminal.EdtComandaKeyPress(Sender: TObject; var Key: Char);
begin
   // Se Precionar ENTER Busco a Comanda se n達o Encontrar Adiciona...
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

procedure TF_Terminal.IncluiItemPedido;
var CODIGO_DO_MOVIMENTO : integer;
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  ID_MOVDET := dm.c_6_genid.Fields[0].AsInteger;

  dm.c_6_genid.Close;

  sql := 'INSERT INTO MOVIMENTODETALHE (CODDETALHE, CODPRODUTO, STATUS, CODALMOXARIFADO, CODMOVIMENTO, QUANTIDADE, UN, '+
         'PRECO, DESCPRODUTO, LOTE) VALUES ( ' +
         IntToStr(ID_MOVDET) + ', ' + IntToStr(scds_produto_procCODPRODUTO.AsInteger) + ', ' +
         'null' + ', ' + IntToStr(0) + ', ';
  if (PageControl1.ActivePage = TabSheet1) then
    sql := sql +  IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  if (PageControl1.ActivePage = TabComanda) then
    sql := sql +  IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  if (PageControl1.ActivePage = TabDelivery) then
    sql := sql +  IntToStr(DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  sql := sql +  QuotedStr(scds_produto_procUNIDADEMEDIDA.AsString) + ', ';
  DecimalSeparator := '.';
  sql := sql +  FloatToStr(scds_produto_procVALOR_PRAZO.AsFloat)  + ', ';
  sql := sql +  QuotedStr(scds_produto_procPRODUTO.AsString) + ', ';

   if (tipo_busca = '3') then  // s坦 preencho o campo Lote se o parametro usa lote for 3
     sql := sql + QuotedStr(codlote) + ')'
   else
     sql := sql + 'null' + ')' ;
  dm.sqlsisAdimin.StartTransaction(TD);
  DecimalSeparator := ',';
  Try
    dm.sqlsisAdimin.ExecuteDirect(sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro no sistema, o Iten nao foi gravada.', mtError,
        [mbOk], 0);
  end;

   if (DM_MOV.c_movdet.Active) then
         DM_MOV.c_movdet.Close;
   DM_MOV.c_movdet.Params[0].Clear;

   if (PageControl1.ActivePage = TabSheet1) then
     CODIGO_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;

   if (PageControl1.ActivePage = TabComanda) then
     CODIGO_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;

   if (PageControl1.ActivePage = TabDelivery) then
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

end;

procedure TF_Terminal.IncluiPedido;
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  id_movimento := dm.c_6_genid.Fields[0].AsInteger;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;

  sql := 'INSERT INTO MOVIMENTO (CODMOVIMENTO, CODPEDIDO, CODNATUREZA, DATAMOVIMENTO, DATA_SISTEMA, STATUS, '+
    'CODUSUARIO, CODVENDEDOR, CODALMOXARIFADO, USUARIOLOGADO, CODCLIENTE, TIPO_PEDIDO) VALUES ( ' +
    IntToStr(id_movimento) + ', ' + IntToStr(id_movimento) +
    ', ' + IntToStr(3) +
    ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', now)) +
    ', ' + QuotedStr(formatdatetime('mm/dd/yyyy HH:MM', now)) +
    ', ' + IntToStr(20) +
    ', ' + IntToStr(1) +
    ', ' + IntToStr(1) + ', ';
  if (DM_MOV.ID_CCUSTO > 0) then
    sql := sql + IntToStr(DM_MOV.ID_CCUSTO)
  else
    sql := sql + DM.cds_parametroD1.AsString;

  sql := sql +  ', ' + QuotedStr(nome_user) + ', ' + IntToStr(codcliente) + ', ';
  if (PageControl1.ActivePage = TabSheet1) then
    sql := sql + QuotedStr('P') + ')'; // Pedido Consumidor
  if (PageControl1.ActivePage = TabComanda) then
    sql := sql + QuotedStr('C') + ')'; // Venda Comanda / MESA
  if (PageControl1.ActivePage = TabDelivery) then
    sql := sql + QuotedStr('D') + ')'; // Venda Delivery

  dm.c_6_genid.Close;
  dm.cds_parametro.Close;
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
     dm.sqlsisAdimin.ExecuteDirect(sql);
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o Movimento n達o foi gravada.', mtError,
         [mbOk], 0);
  end;

  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (DM_MOV.c_movimento.Active) then
        DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := id_movimento;
    DM_MOV.c_movimento.Open;
  end;

  if (PageControl1.ActivePage = TabComanda) then
  begin
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    sql := sql + 'and m.CODMOVIMENTO = ';
    sql := sql + IntToStr(id_movimento);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;
  end;

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    abreDelivery;
  end;
  JvTotal.Value := 0;
  JvParcial.Value := 0;
  JvSubtotal.Value := 0;

  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;

end;

procedure TF_Terminal.AlteraPedido;
begin
    existe_Detalhe := '';
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].Clear;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
       existe_Detalhe := 'SIM';
end;

procedure TF_Terminal.BuscaProduto;
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


  varsql := 'select  prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO, prod.UNIDADEMEDIDA ' +
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
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (tipo_busca = 'CODBARRA') then
      scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + EdtCodBarra.Text + ''''
    else
      scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + EdtCodBarra.Text + '''';
  end;

  if (PageControl1.ActivePage = TabComanda) then
  begin
    if (tipo_busca = 'CODBARRA') then
      scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + EdtCodBarra1.Text + ''''
    else
      scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + EdtCodBarra1.Text + '''';
  end;

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    if (tipo_busca = 'CODBARRA') then
      scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + EdtCodBarra1.Text + ''''
    else
      scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + EdtCodBarra1.Text + '''';
  end;

  scds_produto_proc.Open;

  if (scds_produto_proc.IsEmpty) then
  begin
     //BuscaLote;   // se n達o
     RETORNO := 'FALSO';
     scds_produto_proc.Close;
  end;

  if (estoque_negativo = 'TRUE') then // n達o permito venda com saldo negativo
    if (scds_produto_procESTOQUEATUAL.Value <= 0) then
    begin
       ShowMessage('Produto com saldo negativo !');
       SaldoNegativo := 'TRUE';
       scds_produto_proc.Close;
    end;
end;

procedure TF_Terminal.EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
var poc : double;
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
         nomecliente := b_clienteNOMECLIENTE.AsString;
      end;

      if (EdtCodBarra.Text <> '') then
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
           EdtCodBarra.Clear;
           EdtCodBarra.SetFocus;
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
          edtQtde.Value := 1;
          if (tipo_busca <> 'CODBARRA') then
            edtQtde.SetFocus;
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
      EdtCodBarra.Text := '';
   end;
end;

procedure TF_Terminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (DM_MOV.c_movimento.Active) then
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
    end;
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

procedure TF_Terminal.JvProcurarClick(Sender: TObject);
begin
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (DM_MOV.c_movimento.Active) then
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
    end;
  end;

  // ==================================
  if (not dmnf.cds_ccusto.Active) then
      dmnf.cds_ccusto.Open;
  dmnf.cds_ccusto.First;
  while not dmnf.cds_ccusto.Eof do
  begin
    fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
    dmnf.cds_ccusto.Next;
  end;
  dmnf.cds_ccusto.Close;
  {------Pesquisando na tab Parametro o valor padr達o para a Natureza Operacao ---------}
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
    if (vTIPO_PEDIDO = 'C') then // 辿 COMANDA
    begin
      DM_MOV.c_movimento.Close;
      if (DM_MOV.c_comanda.Active) then
        DM_MOV.c_comanda.Close;
      DM_MOV.c_comanda.CommandText := '';
      sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
      sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
      sql := sql + 'WHERE m.CODMOVIMENTO = ';
      sql := sql + IntToStr(fFiltroMovimento.cod_mov);
      DM_MOV.c_comanda.CommandText := sql;
      DM_MOV.c_comanda.Open;
      teste_codigo := IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger);
    end;

    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].Clear;
    DM_MOV.c_movdet.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
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
    if (PageControl1.ActivePage <> TabSheet1) then
    begin
       if (TabSheet1.TabVisible = False) then
          TabSheet1.TabVisible := True;
       PageControl1.ActivePage := TabSheet1;
    end;
  end
  else // Venda MESA /COMANDA
  begin
    if (PageControl1.ActivePage <> TabComanda) then
    begin
       if (TabComanda.TabVisible = False) then
          TabComanda.TabVisible := True;
       if (MMJPanel8.Visible = False) then
           MMJPanel8.Visible := True;
       PageControl1.ActivePage := TabComanda;
       JvLabel8.Caption := 'Consulta-' + DM_MOV.c_comandaNOMECLIENTE.AsString;
    end
    else
       JvLabel8.Caption := 'Consulta-' + DM_MOV.c_comandaNOMECLIENTE.AsString;
  end;
  if (vTIPO_PEDIDO = 'D') then // DELIVERY
  begin
    if (PageControl1.ActivePage <> TabDelivery) then
    begin
       if (TabDelivery.TabVisible = False) then
          TabDelivery.TabVisible := True;
       PageControl1.ActivePage := TabDelivery;
       if (MMJPanel8.Visible = False) then
           MMJPanel8.Visible := True;
        sql := 'select c.CODCLIENTE, m.CODMOVIMENTO,c.NOMECLIENTE, e.LOGRADOURO, e.TELEFONE from MOVIMENTO m ';
        sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
        sql := sql + 'left outer join ENDERECOCLIENTE e on e.CODCLIENTE = c.CODCLIENTE ';
        sql := sql + 'WHERE m.CODMOVIMENTO = ' + IntToStr(DM_MOV.ID_DO_MOVIMENTO);
        sql := sql + ' and e.TIPOEND = 0 ';
        if (SQLDataSet1.Active) then
            SQLDataSet1.Close;
        SQLDataSet1.CommandText := sql;
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

procedure TF_Terminal.FormCreate(Sender: TObject);
var i: integer;
begin
  jaFezCtrlResize := 'N';
  if (FileExists('logo.jpg')) then
    JvImage1.Picture.LoadFromFile('logo.jpg');
  //------Pesquisando na tab Parametro se usa DELIVERY ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  TabSheet1.TabVisible := False;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabSheet1.TabVisible := True;
    if (MMJPanel8.Visible = True) then
      MMJPanel8.Visible := False;
  end;

  //------Pesquisando na tab Parametro se usa DELIVERY ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DELIVERY';
  dm.cds_parametro.Open;
  TabDelivery.TabVisible := False;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabDelivery.TabVisible := True;
    MMJPanel8.Visible :=True;
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
    MMJPanel8.Visible :=True;
    //populaMesas;
    abreComanda;
    CtrlResize;
    pinta_botao_1;
  end;

  if (PageControl1.ActivePage = TabSheet1) then
    MMJPanel8.Visible :=False;

  if (TabDelivery.TabVisible = True) then
      PageControl1.ActivePage := TabDelivery;

  if (TabComanda.TabVisible = True) then
      PageControl1.ActivePage := TabComanda;

  if (TabSheet1.TabVisible = True) then
    PageControl1.ActivePage := TabSheet1;

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
    DM.USACONTROLECAIXA := 'SIM'
  else
    DM.USACONTROLECAIXA := 'NAO';
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

  JvDBGrid2.Visible := False;
end;

procedure TF_Terminal.JvDBGrid2DblClick(Sender: TObject);
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

procedure TF_Terminal.PageControl1Change(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       PageControl1.Enabled := False;
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
  if (PageControl1.ActivePage = TabSheet1) then
  begin
     deliveryLivre := False;
     if (MMJPanel8.Visible = True) then
        MMJPanel8.Visible := False;
     EdtCodBarra.SetFocus;
     if (JvBitBtn2.Visible = True) then
      JvBitBtn2.Visible := False;
     if (JvBitBtn3.Visible = True) then
      JvBitBtn3.Visible := False;
  end;
  if (PageControl1.ActivePage = TabComanda) then
  begin
    deliveryLivre := False;
    if (MMJPanel8.Visible = False) then
      MMJPanel8.Visible := True;

    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;
    pinta_botao_1;
    JvLabel8.Caption := '...';
    //EdtComanda.SetFocus;
    if (JvBitBtn2.Visible = False) then
      JvBitBtn2.Visible := True;
    if (JvBitBtn3.Visible = False) then
      JvBitBtn3.Visible := True;
    if (JvBitBtn4.Visible = False) then
      JvBitBtn4.Visible := True;
    edMesa.SetFocus;
  end;

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    if (MMJPanel8.Visible = False) then
      MMJPanel8.Visible := True;
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

procedure TF_Terminal.EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
var poc : Double;
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

    if (PageControl1.ActivePage = TabComanda) then
    begin
      if (DM_MOV.c_comanda.Active) then
       sql := 'SELECT OBS FROM MOVIMENTO WHERE CODMOVIMENTO = ' +
              IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger);
      if (s_Bloque.Active) then
       s_Bloque.Close;
      s_Bloque.CommandText := sql;
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
      RETORNO := 'FALSO';

    if (SaldoNegativo = 'TRUE') then
    begin
       //ShowMessage('Produto com saldo negativo !');
       EdtCodBarra1.Clear;
       EdtCodBarra1.SetFocus;
       exit;
    end;

    if (RETORNO = 'FALSO') then
    begin
       btnProduto.Click;
    end
    else
    begin
       IncluiItemPedido;
       edtQtde1.Value := 1;
       edtQtde1.SetFocus;
    end;

    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;

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
      JvParcial.Value := 0;
      JvSubtotal.Value := JvTotal.Value + porc;
    end;
    c_forma.Close;

    if (scds_produto_proc.Active) then
      scds_produto_proc.Close;
    EdtCodBarra1.Text := '';
  end;
end;

procedure TF_Terminal.JvDBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;    
end;

procedure TF_Terminal.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;
end;

procedure TF_Terminal.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;    
end;

procedure TF_Terminal.JvAlterarClick(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       PageControl1.Enabled := False;
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

procedure TF_Terminal.btnProdutoClick(Sender: TObject);
var poc : Double;
begin
   if (PageControl1.ActivePage = TabSheet1) then
   begin
     if DM_MOV.d_movimento.DataSet.State in [dsInactive] then
       exit;
     DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
   end;
   if (PageControl1.ActivePage = TabComanda) then
   begin
     if DM_MOV.d_comanda.DataSet.State in [dsInactive] then
       exit;
     DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
   end;
   if (PageControl1.ActivePage = TabDelivery) then
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

   if (PageControl1.ActivePage = TabDelivery) then
   begin
      edtFone.Clear;
      edtFone.SetFocus;
   end;

   if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
   DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
   DM_MOV.c_movdet.Open;

  if (c_forma.Active) then
    c_forma.Close;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;
  if (not c_formatotal.IsNull) then
  begin
    JvParcial.Value := c_formatotal.Value;
    JvSubtotal.Value := JvTotal.Value - JvParcial.Value;
  end;

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
end;

procedure TF_Terminal.F5ExcluirItemdoPedido1Click(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
    testacaixaaberto;
    if DM.resultadoOperacao = 'FALSE' then
    begin
      PageControl1.Enabled := False;
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

procedure TF_Terminal.F7ExcluirPedido1Click(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
    testacaixaaberto;
    if DM.resultadoOperacao = 'FALSE' then
    begin
     PageControl1.Enabled := False;
     ShowMessage('O caixa precisa ser aberto');
     Exit;
    end;
  end;
  
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if MessageDlg('Deseja realmente Excluir esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try
        existevenda;
        if (vendaexiste = 'SIM') then
        begin
          DM_MOV.c_venda.Delete;
          DM_MOV.c_venda.ApplyUpdates(0);
          DM_MOV.c_venda.Close;
        end;
          DM_MOV.d_movimento.DataSet.Delete;
          (DM_MOV.d_movimento.DataSet as TClientDataSet).ApplyUpdates(0);
          if DM_MOV.d_movdet.DataSet.Active then
            DM_MOV.d_movdet.DataSet.Close;
          DM_MOV.d_movimento.DataSet.Close;
          JvTotal.Value := 0;
          JvParcial.Value := 0;
          JvSubtotal.Value := 0;
          ShowMessage('Pedido/Orcamento Excluido com Suscesso');
       Except
        MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
  end;
  if (PageControl1.ActivePage = TabComanda) then
  begin
    if (JvLabel8.Caption = '...') then
    begin
       ShowMessage('Selecione um registro');
       exit;
    end;
    if MessageDlg('Deseja realmente Excluir esse registro? ' + nome_botao,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try
        existevenda;
        if (vendaexiste = 'SIM') then
        begin
          DM_MOV.c_venda.Delete;
          DM_MOV.c_venda.ApplyUpdates(0);
          DM_MOV.c_venda.Close;
        end;
          DM_MOV.d_comanda.DataSet.Delete;
          (DM_MOV.d_comanda.DataSet as TClientDataSet).ApplyUpdates(0);
          if DM_MOV.d_movdet.DataSet.Active then
            DM_MOV.d_movdet.DataSet.Close;
          DM_MOV.d_comanda.DataSet.Close;
          ShowMessage('Pedido/Orcamento Excluido com Suscesso');
          pinta_botao;
          JvLabel8.Caption := '...';
          JvParcial.Value := 0;
          JvSubtotal.Value := 0;
       Except
        MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
  end;

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    if MessageDlg('Deseja realmente Excluir esse registro? ' + nome_botao,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try
        existevenda;
        if (vendaexiste = 'SIM') then
        begin
          DM_MOV.c_venda.Delete;
          DM_MOV.c_venda.ApplyUpdates(0);
          DM_MOV.c_venda.Close;
        end;
          DM_MOV.d_delivery.DataSet.Delete;
          (DM_MOV.d_delivery.DataSet as TClientDataSet).ApplyUpdates(0);
          if DM_MOV.d_delivery.DataSet.Active then
            DM_MOV.d_delivery.DataSet.Close;
          DM_MOV.d_delivery.DataSet.Close;
          ShowMessage('Pedido/Orcamento Excluido com Suscesso');
          JvParcial.Value := 0;
          JvSubtotal.Value := 0;
       Except
        MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
  end;
end;

procedure TF_Terminal.JvFinalizarClick(Sender: TObject);
var i: integer;
begin

  if (DM_MOV.c_movdet.IsEmpty) then
  begin
    ShowMessage('Selecione um Pedido');
    Exit;
  end;

  if (PageControl1.ActivePage <> TabDelivery) then
   DM_MOV.ID_DO_MOVIMENTO := 0;
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (not DM_MOV.c_movimento.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'PDV';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
  end;

  if (PageControl1.ActivePage = TabComanda) then
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


  if (PageControl1.ActivePage = TabDelivery) then
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

  {F_TerminalFinaliza:=TF_TerminalFinaliza.Create(Application);
  try
    F_TerminalFinaliza.porc_com := JvComissao.Value;
    F_TerminalFinaliza.ShowModal;
  finally
    F_TerminalFinaliza.Free;
  end;}
  fOsFinaliza := TfOsFinaliza.Create(Application);
  try
    fOsFinaliza.porc_com := JvComissao.Value;
    fOsFinaliza.ShowModal;
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
    if (PageControl1.ActivePage = TabComanda) then
    begin
      if (DM_MOV.c_movimentoSTATUS.Value = 0) then
      begin
       if (DM_MOV.c_movimento.Active) then
       begin
         nomedocliente := DM_MOV.c_movimentoNOMECLIENTE.AsString;
         pinta_botao;
         cor := clLime;
       end;
      end;
    end;

    if (DM.USACONTROLECAIXA <> 'SIM') then
    begin
      if (PageControl1.ActivePage = TabSheet1) then
       EdtCodBarra.SetFocus;
      if (PageControl1.ActivePage = TabDelivery) then
       edtFone.SetFocus;
      if (PageControl1.ActivePage = TabComanda) then
      begin
       pinta_botao;
       JvLabel8.Caption := '...';
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

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    if (DM_MOV.c_Delivery.Active) then
      DM_MOV.c_Delivery.Close;
    DM_MOV.c_Delivery.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    sql := sql + 'and m.TIPO_PEDIDO = ';
    sql := sql + QuotedStr('D');
    DM_MOV.c_Delivery.CommandText := sql;
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
    pinta_botao_1;
    if (PageControl1.TabIndex = 1) then
      edMesa.SetFocus;
  end;
  if (PageControl1.TabIndex = 0) then
    EdtCodBarra.SetFocus;
end;

procedure TF_Terminal.BuscaLote;
begin
  varsql := 'select first 1 prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO, prod.UNIDADEMEDIDA ' +
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
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    varsql := varsql + ' est.LOTE = ' + '''' + EdtCodBarra.Text + '''' ;
    scds_produto_proc.CommandText := varsql + ' order by est.MESANO desc';
  end;


  if (PageControl1.ActivePage = TabComanda) then
  begin
    varsql := varsql + ' est.LOTE = ' + '''' + EdtCodBarra1.Text + '''' ;
    scds_produto_proc.CommandText := varsql;
  end;

  scds_produto_proc.Open;

  if (scds_produto_proc.IsEmpty) then
  begin
    //ShowMessage('Produto n達o Localizado');
    scds_produto_proc.Close;
    RETORNO := 'FALSO';
    ESTOQUE := True;
  end
  else
  begin
    if(scds_produto_procSALDOESTOQUE.asFloat > 0) then
    begin
      RETORNO := 'True';
      ESTOQUE := True;
    end
    else
    begin
      RETORNO := 'FALSO';
      ESTOQUE := False;
    end;
    if (PageControl1.ActivePage = TabSheet1) then
       codlote := EdtCodBarra.Text;
    if (PageControl1.ActivePage = TabComanda) then
       codlote := EdtCodBarra1.Text;
  end;


end;

procedure TF_Terminal.FormShow(Sender: TObject);
var ImpressoraDet: TIniFile;
  dir : string;
begin
  if (jaFezCtrlResize = 'N') then
  begin
    sCtrlResize.CtrlResize(TForm(F_Terminal));
    jaFezCtrlResize := 'S';
  end;
  dir := ExtractFilePath(Application.ExeName);
  ImpressoraDet := TIniFile.Create(dir + 'dbxconnections.ini');
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
  
  if (PageControl1.ActivePage = TabSheet1) then
  begin
     if (MMJPanel8.Visible = True) then
        MMJPanel8.Visible := False;
     EdtCodBarra.SetFocus;
     JvBitBtn2.Visible := False;
     JvBitBtn3.Visible := False;
  end;

  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       PageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
     end;
  end;
end;

procedure TF_Terminal.JvSairClick(Sender: TObject);
begin
   close;
end;

procedure TF_Terminal.JvImprimirClick(Sender: TObject);
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
       if PageControl1.ActivePage = TabDelivery then
         imprimeDelivery;
       if PageControl1.ActivePage = TabComanda then
         imprimeDLLBema;
       if PageControl1.ActivePage = TabSheet1 then
       imprimeComanda;

     end
     else
     begin
       if PageControl1.ActivePage = TabDelivery then
          imprimeDeliveryTXT;
       if PageControl1.ActivePage = TabSheet1 then
          imprimecomandaTXT;
       if PageControl1.ActivePage = TabComanda then
          imprimeCupom;
     end;
  end;

  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;
    
  if (PageControl1.ActivePage = TabComanda) then
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

procedure TF_Terminal.JvExcluirClick(Sender: TObject);
var sql_texto : string;
begin
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if MessageDlg('Deseja realmente Excluir esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try
        existevenda;
        if (vendaexiste = 'SIM') then
        begin
          //DM_MOV.c_venda.Delete;
          //DM_MOV.c_venda.ApplyUpdates(0);
          //DM_MOV.c_venda.Close;
          MessageDlg('Exclua a finaliza艫o primeiro.', mtWarning, [mbOK], 0);
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
        MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
  end;
  if (PageControl1.ActivePage = TabComanda) then
  begin
    if (JvLabel8.Caption = '...') then
    begin
       ShowMessage('Selecione um registro');
       exit;
    end;
    if MessageDlg('Deseja realmente Excluir esse registro? ' + nome_botao,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try
        existevenda;
        if (vendaexiste = 'SIM') then
        begin
          //DM_MOV.c_venda.Delete;
          //DM_MOV.c_venda.ApplyUpdates(0);
          //DM_MOV.c_venda.Close;
          MessageDlg('Exclua a finaliza艫o primeiro.', mtWarning, [mbOK], 0);
        end;
          DM_MOV.c_comanda.Edit;
          DM_MOV.c_comandaCODNATUREZA.AsInteger := 14;
          DM_MOV.c_comandaSTATUS.AsInteger := 2;
          (DM_MOV.d_comanda.DataSet as TClientDataSet).ApplyUpdates(0);

          DM_MOV.d_movdet.DataSet.Close;

          DM_MOV.d_comanda.DataSet.Close;
          ShowMessage('Pedido/Orcamento Excluido com Suscesso');
          pinta_botao;
          JvLabel8.Caption := '...';
          JvParcial.Value := 0;
          JvSubtotal.Value := 0;
       Except
        MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
  end;

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    if MessageDlg('Deseja realmente Excluir esse registro? ',mtConfirmation ,[mbYes,mbNo],0) = mrYes then
    begin
      try
        existevenda;

        DM_MOV.c_venda.Close;

        if (vendaexiste = 'SIM') then
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
            dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
            MessageDlg('Erro no sistema, o movimento nao foi excluido.', mtError,
                [mbOk], 0);
            Exit;
          end;
          ShowMessage('Pedido/Orcamento Excluido com Sucesso');

          DM_MOV.c_Delivery.Close;

          DM_MOV.c_Delivery.CommandText := '';
          sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
          sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
          sql := sql + 'WHERE m.CODNATUREZA = ';
          sql := sql + IntToStr(3);
          sql := sql + 'and m.STATUS = ';
          sql := sql + IntToStr(20);
          sql := sql + 'and m.TIPO_PEDIDO = ';
          sql := sql + QuotedStr('D');
          DM_MOV.c_Delivery.CommandText := sql;
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
        MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
  end;
end;

procedure TF_Terminal.existevenda;
begin
  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;

  if (PageControl1.ActivePage = TabSheet1) then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_MovimentoCODMOVIMENTO.AsInteger;

  if (PageControl1.ActivePage = TabComanda) then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_comandaCODMOVIMENTO.AsInteger;

  if (PageControl1.ActivePage = TabDelivery) then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;

  DM_MOV.c_venda.Open;

  if (not DM_MOV.c_venda.IsEmpty) then
    vendaexiste := 'SIM'
  else
    vendaexiste := 'NAO';
end;

procedure TF_Terminal.imprimeCupom;
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

     if (PageControl1.ActivePage = TabSheet1) then
       cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;

     if (PageControl1.ActivePage = TabComanda) then
       cliente := 'Cliente : ' + DM_MOV.c_comandaNOMECLIENTE.Value;

     if (PageControl1.ActivePage = TabDelivery) then
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
       if (F_Terminal.JvComissao.Value > 0) then
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

procedure TF_Terminal.imprimeRecibo;
begin
  VCLReport1.FileName := str_relatorio + 'orcamento_new.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TF_Terminal.imprimeDLLBema;
var parcial, poc : Double;
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
  if (PageControl1.ActivePage = TabSheet1) then
   cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;

  if (PageControl1.ActivePage = TabComanda) then
   cliente := 'Cliente : ' + DM_MOV.c_comandaNOMECLIENTE.Value;

  if (PageControl1.ActivePage = TabDelivery) then
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
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := logradouro + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := cep + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := fone + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := 'CNPJ :' + dm.cds_empresaCNPJ_CPF.AsString + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := cliente + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto1 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto3 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto4 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possaveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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
        MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;
      buffer  := Format('%-13s  ',[DM_MOV.c_movdetCODPRO.Value]);
      buffer  := buffer + Format('  %2s  ',[DM_MOV.c_movdetUN.Value]);
      buffer  := buffer + Format(' %6.3n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
      buffer  := buffer + Format('   %6.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
      buffer  := buffer + Format('   %8.2n',[DM_MOV.c_movdetValorTotal.value]);
      buffer  := buffer + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;
      DM_MOV.c_movdet.next;
   end;

   buffer  := texto + Chr(13) + Chr(10);
   comando := FormataTX(buffer, 3, 0, 0, 0, 0);
   if comando = 0 then
   begin
     MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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
     //poc := JvSubtotal.Value;
     poc := total - parcial;
     buffer  := texto5;
     buffer  := buffer + Format('%10.2n',[parcial]);
     buffer  := buffer + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);

     buffer  := texto5;
     buffer  := buffer + Format('%10.2n',[poc]);
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

procedure TF_Terminal.clic_botao;
var poc : Double;
begin
    JvLabel8.Caption := nome_botao;
    if (DM_MOV.s_BuscaComanda.Active) then
      DM_MOV.s_BuscaComanda.Close;
    DM_MOV.s_BuscaComanda.Params[0].Clear;
    DM_MOV.s_BuscaComanda.Params[1].AsString :=  nome_botao;
    DM_MOV.s_BuscaComanda.Open;
    if (DM_MOV.s_BuscaComanda.IsEmpty) then
    begin
       DM_MOV.s_BuscaComanda.Close;
       ShowMessage('Comanda n\E3o Localizada');
       Exit;
    end;
    edMesa.Text := DM_MOV.s_BuscaComandaCOD_CLI.AsString;
    codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
    if (DM_MOV.s_buscaMov.Active) then
       DM_MOV.s_buscaMov.Close;

    sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
           'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
           'where m.CODNATUREZA = ' + IntToStr(3) + ' and m.STATUS = ' +
           IntToStr(20) + ' and m.CODCLIENTE = ' + IntToStr(codcliente);
    DM_MOV.s_buscaMov.CommandText := sql;

    DM_MOV.s_buscaMov.Open;


    if (DM_MOV.s_buscaMov.IsEmpty)then
       IncluiPedido
    else
    begin
      if (DM_MOV.c_comanda.Active) then
        DM_MOV.c_comanda.Close;
      DM_MOV.c_comanda.CommandText := '';
      sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
      sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
      sql := sql + 'WHERE m.CODNATUREZA = ';
      sql := sql + IntToStr(3);
      sql := sql + 'and m.STATUS = ';
      sql := sql + IntToStr(20);
      sql := sql + 'and m.CODCLIENTE = ';
      sql := sql + IntToStr(codcliente);

      DM_MOV.c_comanda.CommandText := sql;
      DM_MOV.c_comanda.Open;
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

procedure TF_Terminal.JvTransparentButton1Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton1.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton2Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton2.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton3Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton3.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton4Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton4.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton5Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton5.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton6Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton6.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton7Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton7.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton8Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton8.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton9Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton9.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton10Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton10.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton11Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton11.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton12Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton12.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton13Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton13.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton14Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton14.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton15Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton15.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton16Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton16.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton17Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton17.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton18Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton18.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton19Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton19.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton20Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton20.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton21Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton21.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton22Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton22.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton23Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton23.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton24Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton24.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton25Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton25.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton26Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton26.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton27Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton27.ComponentIndex);end;

procedure TF_Terminal.JvTransparentButton28Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton28.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton29Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton29.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton30Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton30.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton31Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton31.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton32Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton32.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton33Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton33.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton34Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton34.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton35Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton35.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton36Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton36.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton37Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton37.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton38Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton38.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton39Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton39.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton40Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton40.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton41Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton41.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton42Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton42.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton43Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton43.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton44Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton44.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton45Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton45.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton46Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton46.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton47Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton47.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton48Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton48.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton49Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton49.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton50Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton50.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton51Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton51.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton52Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton52.ComponentIndex);
end;

procedure TF_Terminal.pinta_botao;
var i: integer;
begin
  if (DM_MOV.c_comanda.Active) then
    DM_MOV.c_comanda.Close;
  DM_MOV.c_comanda.CommandText := '';
  sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + 'WHERE m.CODNATUREZA = 3';
  sql := sql + 'and m.STATUS = 20';
  DM_MOV.c_comanda.CommandText := sql;
  DM_MOV.c_comanda.Open;

  cor := clLime;

  for i := 51 to 141 do
  begin
    if (TJvTransparentButton(Components[i]).Caption = nome_botao) then
       TJvTransparentButton(Components[i]).color := cor;
  end;
end;

procedure TF_Terminal.pinta_botao_1;
var I : Integer;
begin
  if (cdsMesaOcupada.Active) then
    cdsMesaOcupada.Close;
  sql := 'select c.NOMECLIENTE from MOVIMENTO m, CLIENTES c ';
  sql := sql + ' WHERE c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + '   AND m.CODNATUREZA = ' + IntToStr(3);
  sql := sql + '   AND m.STATUS = ' + IntToStr(20);
  cdsMesaOcupada.CommandText := sql;
  cdsMesaOcupada.Open;

  cor := clLime;

  for i := 51 to 141 do
  begin
    TJvTransparentButton(Components[i]).color := cor;
  end;

  cor := clRed;

  cdsMesaOcupada.First;
  while not cdsMesaOcupada.Eof do
  begin
    nomedocliente := cdsMesaOcupada.FieldByName('NOMECLIENTE').AsString;

    for i := 51 to 141 do
    begin
      if (TJvTransparentButton(Components[i]).Caption = nomedocliente) then
        TJvTransparentButton(Components[i]).color := cor;
    end;
    cdsMesaOcupada.Next;
  end;
  cdsMesaOcupada.Close;
end;

procedure TF_Terminal.EdtCodBarra1Enter(Sender: TObject);
begin
  EdtCodBarra1.Color := clYellow;
end;

procedure TF_Terminal.EdtCodBarra1Exit(Sender: TObject);
begin
  EdtCodBarra1.Color := clWindow;
end;

procedure TF_Terminal.JvBitBtn1Click(Sender: TObject);
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

procedure TF_Terminal.CtrlResize;
var
  i : integer;
  numeroComp : Smallint;
begin
  if (s_mesas.Active) then
    s_mesas.close;
  s_mesas.Open;
  s_mesas.First;
  numeroComp := JvTransparentButton1.ComponentIndex -1;
  while not (s_mesas.Eof) do
  begin
      TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Visible := True;
      TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Caption := s_mesasNOMECLIENTE.AsString;
      TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Font.Name := 'Cooper Black';
      TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Font.Color := clBlack;
    s_mesas.Next;
  end;
  s_mesas.Close;
end;

procedure TF_Terminal.Mesa_Clic(botao: Integer);
begin
  pinta_botao_1;
  nome_botao := TJvTransparentButton(Components[botao]).Caption;
  clic_botao;
  TJvTransparentButton(Components[botao]).Color := clYellow;
  EdtCodBarra1.SetFocus;
end;

procedure TF_Terminal.JvBitBtn2Click(Sender: TObject);
begin
  F_MESAS := TF_MESAS.Create(Application);
  try
    F_MESAS.ShowModal;
  finally
    F_MESAS.Free;
  end;
    //CtrlResize;
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;
    pinta_botao_1;

end;

procedure TF_Terminal.JvBitBtn3Click(Sender: TObject);
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
  codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
  if (DM_MOV.s_buscaMov.Active) then
     DM_MOV.s_buscaMov.Close;

  sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
         'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
         'where m.CODNATUREZA = 3 and m.STATUS = 20' +
         ' and m.CODCLIENTE = ' + IntToStr(codcliente);
  DM_MOV.s_buscaMov.CommandText := sql;
  DM_MOV.s_buscaMov.Open;

  if (DM_MOV.s_buscaMov.IsEmpty)then
  begin
    ShowMessage('Selecione uma Mesa');
    Exit;
  end;

  F_MudaMesa := TF_MudaMesa.Create(Application);
  try
    F_MudaMesa.Edit1.Text := JvLabel8.Caption;
    F_MudaMesa.ShowModal;
  finally
    F_MudaMesa.Free;
  end;
  DM_MOV.s_buscaMov.close;

  if (DM_MOV.c_comanda.Active) then
    DM_MOV.c_comanda.Close;
  DM_MOV.c_comanda.CommandText := '';
  sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + 'WHERE m.CODNATUREZA = ';
  sql := sql + IntToStr(3);
  sql := sql + 'and m.STATUS = ';
  sql := sql + IntToStr(20);
  DM_MOV.c_comanda.CommandText := sql;
  DM_MOV.c_comanda.Open;
  JvLabel8.Caption := '...';

  //CtrlResize;
  if (DM_MOV.c_comanda.Active) then
    DM_MOV.c_comanda.Close;
  DM_MOV.c_comanda.CommandText := '';
  sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + 'WHERE m.CODNATUREZA = ';
  sql := sql + IntToStr(3);
  sql := sql + 'and m.STATUS = ';
  sql := sql + IntToStr(20);
  DM_MOV.c_comanda.CommandText := sql;
  DM_MOV.c_comanda.Open;
  pinta_botao;
  pinta_botao_1;  
end;

procedure TF_Terminal.JvBitBtn4Click(Sender: TObject);
var poc, porc_com : Double;
begin
 DM_MOV.ID_DO_MOVIMENTO := 0;
 if (PageControl1.ActivePage = TabSheet1) then
 begin
    if (not DM_MOV.c_movimento.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'PDV';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
 end;

 if (PageControl1.ActivePage = TabComanda) then
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

 if (PageControl1.ActivePage = TabDelivery) then
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
    if (F_Entrada.c_forma.Active) then
      F_Entrada.c_forma.Close;
    F_Entrada.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    F_Entrada.c_forma.Open;
    var_FINALIZOU := '';
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
    poc := 0;
    if (JvComissao.Visible = True) then
      if (JvComissao.Value > 0) then
        poc := (JvComissao.Value /100) * JvTotal.Value;
    JvParcial.Value := c_formatotal.Value;
    JvParcial.Value := c_formatotal.Value;
    JvSubtotal.Value := JvTotal.Value + poc - JvParcial.Value;
    if (JvSubtotal.Value < 0.009) then
      var_FINALIZOU := 'SIM';
  end;

  c_forma.Close;

  if (var_FINALIZOU = 'SIM') then
  begin
    if (PageControl1.ActivePage = TabComanda) then
    begin
       if (DM_MOV.c_comanda.Active) then
           DM_MOV.c_comanda.Close;
       pinta_botao;
       JvLabel8.Caption := '...';
       JvTotal.Value := 0;
    end;

    if (PageControl1.ActivePage = TabSheet1) then
    begin
       EdtCodBarra.SetFocus;
       if (DM_MOV.c_movimento.Active) then
           DM_MOV.c_movimento.Close;
       JvTotal.Value := 0;
    end;

    if (PageControl1.ActivePage = TabDelivery) then
    begin
      edtFone.Text := '';
      edtCodCli.Text := '';
      edtNome.Text := '';
      edtEnd.Text := '';
      edtFone.SetFocus;
      if (DM_MOV.c_Delivery.Active) then
        DM_MOV.c_Delivery.Close;
      DM_MOV.c_Delivery.CommandText := '';
      sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
      sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
      sql := sql + 'WHERE m.CODNATUREZA = ';
      sql := sql + IntToStr(3);
      sql := sql + 'and m.STATUS = ';
      sql := sql + IntToStr(20);
      sql := sql + 'and m.TIPO_PEDIDO = ';
      sql := sql + QuotedStr('D');
      DM_MOV.c_Delivery.CommandText := sql;
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
  if (TabComanda.TabVisible = True) then
  begin
    edMesa.Text := '';
    pinta_botao_1;
    edMesa.SetFocus;
  end;  
end;

procedure TF_Terminal.edtFoneKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (edtFone.Text <> '') then
    begin
      sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
            'e.LOGRADOURO, e.TELEFONE, e.NUMERO, e.BAIRRO ' +
            'FROM CLIENTES a, ENDERECOCLIENTE e ' +
            'where e.CODCLIENTE = a.CODCLIENTE ' +
            ' and e.TIPOEND = 0 ' +
            ' and e.TELEFONE = ' + QuotedStr(edtFone.Text);
      if (sbuscaCli.Active) then
         sbuscaCli.Close;
      sbuscaCli.CommandText := sql;
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

procedure TF_Terminal.DBGrid2DblClick(Sender: TObject);
begin
  deliveryLivre := False;
  EdtComanda.Text := IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger);
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;
  DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
  DM_MOV.c_movdet.Open;
  DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;

  sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
        'e.LOGRADOURO, e.TELEFONE, e.NUMERO, e.BAIRRO ' +
        'FROM CLIENTES a, ENDERECOCLIENTE e ' +
        'where e.CODCLIENTE = a.CODCLIENTE ' +
        '  and a.CODCLIENTE = ' + IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger) +
        ' and e.TIPOEND = 0 ';
  if (sbuscaCli.Active) then
      sbuscaCli.Close;
  sbuscaCli.CommandText := sql;
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
  EdtCodBarra1.SetFocus;
end;

procedure TF_Terminal.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  deliveryLivre := False;
  //EdtComanda.Text := IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger);
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;
  DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
  DM_MOV.c_movdet.Open;
  DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;


  sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
        'e.LOGRADOURO, e.TELEFONE ' +
        'FROM CLIENTES a, ENDERECOCLIENTE e ' +
        'where e.CODCLIENTE = a.CODCLIENTE ' +
        '  and a.CODCLIENTE = ' + IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger) +
        '  and e.TIPOEND = 0 ';

  if (sbuscaCli.Active) then
      sbuscaCli.Close;
  sbuscaCli.CommandText := sql;
  sbuscaCli.Open;
  if (not sbuscaCli.IsEmpty) then
  begin
     edtCodCli.Text := IntToStr(sbuscaCli.Fields[0].AsInteger);
     edtNome.Text := sbuscaCli.Fields[1].AsString;
     edtEnd.Text := sbuscaCli.Fields[2].AsString;
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

procedure TF_Terminal.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  deliveryLivre := False;
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;
  DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
  DM_MOV.c_movdet.Open;
  DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;


  sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
        'e.LOGRADOURO, e.TELEFONE ' +
        'FROM CLIENTES a, ENDERECOCLIENTE e ' +
        'where e.CODCLIENTE = a.CODCLIENTE ' +
        '  and a.CODCLIENTE = ' + IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger) +
        '  and e.TIPOEND = 0 ';

  if (sbuscaCli.Active) then
      sbuscaCli.Close;
  sbuscaCli.CommandText := sql;
  sbuscaCli.Open;
  if (not sbuscaCli.IsEmpty) then
  begin
     edtCodCli.Text := IntToStr(sbuscaCli.Fields[0].AsInteger);
     edtNome.Text := sbuscaCli.Fields[1].AsString;
     edtEnd.Text := sbuscaCli.Fields[2].AsString;
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

procedure TF_Terminal.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  deliveryLivre := False;
  //EdtComanda.Text := IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger);
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;
  DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
  DM_MOV.c_movdet.Open;
  DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;

  sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
        'e.LOGRADOURO, e.TELEFONE ' +
        'FROM CLIENTES a, ENDERECOCLIENTE e '  +
        'where e.CODCLIENTE = a.CODCLIENTE ' +
        '  and a.CODCLIENTE = ' + IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger) +
        '  and e.TIPOEND = 0 ';

  if (sbuscaCli.Active) then
      sbuscaCli.Close;
  sbuscaCli.CommandText := sql;
  sbuscaCli.Open;
  if (not sbuscaCli.IsEmpty) then
  begin
     edtCodCli.Text := IntToStr(sbuscaCli.Fields[0].AsInteger);
     edtNome.Text := sbuscaCli.Fields[1].AsString;
     edtEnd.Text := sbuscaCli.Fields[2].AsString;
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
  EdtCodBarra1.SetFocus;
  deliveryLivre := True;
end;

procedure TF_Terminal.BitBtn1Click(Sender: TObject);
begin
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes voce tera que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        edtFone.SetFocus;
      end;
      if scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda n達o permitida.', mtError, [mbOK], 0);
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

procedure TF_Terminal.edtQtde1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (edtQtde1.AsInteger > 1) then
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
      JvSubtotal.Value := (JvTotal.Value + porc) - JvParcial.Value;
    end
    else
    begin
      JvParcial.Value := 0;
      JvSubtotal.Value := JvTotal.Value + porc;
    end;
    c_forma.Close;
    if (PageControl1.ActivePage = TabComanda) then
      edMesa.SetFocus;
  end;
end;

procedure TF_Terminal.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (edtQtde.Value > 0) then
    begin
       if (DM_MOV.c_movdet.Active) then
       begin
          DM_MOV.c_movdet.Edit;
          DM_MOV.c_movdetQUANTIDADE.AsFloat := edtQtde.Value ;
          DM_MOV.c_movdetvalortotal.AsFloat := edtQtde.Value * DM_MOV.c_movdetPRECO.AsFloat;
          DM_MOV.c_movdet.ApplyUpdates(0);
       end;
    end;
    EdtCodBarra.SetFocus;

    JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;

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
      JvSubtotal.Value := (JvTotal.Value + porc) - JvParcial.Value;
    end
    else
    begin
      JvParcial.Value := 0;
      JvSubtotal.Value := JvTotal.Value + porc;
    end;
    c_forma.Close;
  end;
end;

procedure TF_Terminal.JvBitBtn5Click(Sender: TObject);
var
   XY: TPoint;
begin
  XY := Point(50, -10);
  XY := JvBitBtn5.ClientToScreen(XY);
  pmImp.Popup(XY.X, XY.Y + JvBitBtn5.Height - 2);
end;

procedure TF_Terminal.imp_Setor1_DLL;
var Fonte : string;
var TXT, DESC, QUTDE, UNDE : string;
begin
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  if (PageControl1.ActivePage = TabSheet1) then
    cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;
  if (PageControl1.ActivePage = TabComanda) then
    cliente := 'Cliente : ' + DM_MOV.c_comandaNOMECLIENTE.Value;
  if (PageControl1.ActivePage = TabDelivery) then
    cliente := 'Cliente : ' + DM_MOV.c_DeliveryNOMECLIENTE.Value;

  Texto  := '-----------------------------------------------------' ;
  Texto4 := 'Produto                                Unde      Qtde' ;
  Texto5 := DateTimeToStr(Now);
  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'PORTA SETOR2';
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

  buffer  := dm.cds_empresaRAZAO.AsString + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := cliente + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto4 + Chr(13) + Chr(10); // 'Produto UN Qtde'
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  DM_MOV.IMP_MOVDET.First;
  while not DM_MOV.IMP_MOVDET.Eof do
  begin
    // italico + expandido
    // FormataTX( "Texto a ser impresso", TipoLetra, It叩lico, Sublinhado, Expandido, Enfatizado)
    DESC   := Copy(DM_MOV.IMP_MOVDETDESCPRODUTO.AsString, 0, 30);
    DESC   := Format('%-40s', [DESC]);
    UNDE   := DM_MOV.IMP_MOVDETUN.AsString;
    UNDE   := Format(' %2s', [UNDE]);
    QUTDE  := FloatToStr(DM_MOV.IMP_MOVDETQUANTIDADE.AsFloat);
    QUTDE  := Format('%10.2n', [StrToFloat(QUTDE)]);
    Texto3 := DESC + UNDE + QUTDE;
    buffer  := Texto3 + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
      exit;
    end;
    update_MOVDETALHE;
    DM_MOV.IMP_MOVDET.Next;
  end;
  DM_MOV.IMP_MOVDET.Close;
  buffer  := texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
   MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
   exit;
  end;
  buffer  := texto5;
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
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
end;

procedure TF_Terminal.imp_Setor2_DLL;
begin

end;

procedure TF_Terminal.update_MOVDETALHE;
begin
  //atualiza campo impresso do moviemto detalhe;
  sql := 'UPDATE MOVIMENTODETALHE SET IMPRESSO = ' + QuotedStr('SIM') +
           ' WHERE CODDETALHE = ' + IntToStr(DM_MOV.IMP_MOVDETCODDETALHE.AsInteger);

  DM_MOV.s_buscaMov.Close;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro ao efetuar troca de Mesa .', mtError,
        [mbOk], 0);
  end;
end;

procedure TF_Terminal.ImprimirSetor21Click(Sender: TObject);
begin
  if (DM_MOV.IMP_MOVDET.Active) then
     DM_MOV.IMP_MOVDET.Close;
  DM_MOV.IMP_MOVDET.CommandText := 'select md.*, pr.CODPRO, pr.COD_BARRA, pr.PRODUTO ' +
                    ' from MOVIMENTODETALHE md ' +
                    ' left outer join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
                    ' where md.CODMOVIMENTO = ' + IntToStr(DM_MOV.c_movdetCODMOVIMENTO.AsInteger) +
                    ' and pr.IMPRESSORA_2 = ' + QuotedStr('SIM') +
                    ' and md.IMPRESSO is null';
  DM_MOV.IMP_MOVDET.Open;
  imp_Setor1_LPT;
end;

procedure TF_Terminal.ReimprimirSetor21Click(Sender: TObject);
begin
  if (DM_MOV.IMP_MOVDET.Active) then
     DM_MOV.IMP_MOVDET.Close;
  DM_MOV.IMP_MOVDET.CommandText := 'select md.*, pr.CODPRO, pr.COD_BARRA, pr.PRODUTO ' +
                    ' from MOVIMENTODETALHE md ' +
                    ' left outer join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
                    ' where md.CODMOVIMENTO = ' + IntToStr(DM_MOV.c_movdetCODMOVIMENTO.AsInteger) +
                    ' and pr.IMPRESSORA_2 = ' + QuotedStr('SIM');
                    //' and md.IMPRESSO is null';
  DM_MOV.IMP_MOVDET.Open;
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
       imprimeCupom;
  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;
end;

procedure TF_Terminal.imp_Setor1_LPT;
var TXT, DESC, QUTDE, UNDE : string;
begin
  if (not dm.cds_empresa.Active) then
  dm.cds_empresa.Open;
  Texto  := '------------------------------------------------------' ;
  Texto4 := 'Produto                                   UN      Qtde' ;
  Texto5 := DateTimeToStr(Now);

  if (PageControl1.ActivePage = TabSheet1) then
    cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;
  if (PageControl1.ActivePage = TabComanda) then
    cliente := 'Cliente : ' + DM_MOV.c_comandaNOMECLIENTE.Value;
  if (PageControl1.ActivePage = TabDelivery) then
    cliente := 'Cliente : ' + DM_MOV.c_DeliveryNOMECLIENTE.Value;

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
    s_parametro.Params[0].AsString := 'PORTA SETOR2';
    s_parametro.Open;
    AssignFile(IMPRESSORA,s_parametroDADOS.AsString);
  end;

  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  Writeln(Impressora, cliente);
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  try
     DM_MOV.IMP_MOVDET.First;
     while not DM_MOV.IMP_MOVDET.Eof do
     begin
        // imprime
       DESC   := Copy(DM_MOV.IMP_MOVDETDESCPRODUTO.AsString, 0, 30);
       DESC   := Format('%-40s', [DESC]);
       UNDE   := DM_MOV.IMP_MOVDETUN.AsString;
       UNDE   := Format(' %2s', [UNDE]);
       QUTDE  := FloatToStr(DM_MOV.IMP_MOVDETQUANTIDADE.AsFloat);
       QUTDE  := Format('%10.2n', [StrToFloat(QUTDE)]);
       Texto3 := DESC + UNDE + QUTDE;
       Writeln(Impressora, c10cpi, Texto3);
       // Write(Impressora, c10cpi, Format('%-40s  ',[DM_MOV.IMP_MOVDETDESCPRODUTO.Value]));
       // Write(Impressora, c10cpi + Format('%-2s',[DM_MOV.IMP_MOVDETUN.Value]));
       // Write(Impressora, c10cpi + Format('%10.2n',[DM_MOV.IMP_MOVDETQUANTIDADE.AsFloat]));
       with Printer.Canvas do
       begin
          Font.Name := 'Courier New';
          Font.Size := 4;
       end;
       DM_MOV.IMP_MOVDET.next;
     end;
     DM_MOV.IMP_MOVDET.Close;
     Writeln(Impressora, c17cpi, texto);
     Write(Impressora, c17cpi, texto5);

     Writeln(IMPRESSORA);
     Write(Impressora, c10cpi, DM.Mensagem);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;

end;

procedure TF_Terminal.ImprimirSetor2Local1Click(Sender: TObject);
begin
  if (DM_MOV.IMP_MOVDET.Active) then
     DM_MOV.IMP_MOVDET.Close;
  DM_MOV.IMP_MOVDET.CommandText := 'select md.*, pr.CODPRO, pr.COD_BARRA, pr.PRODUTO ' +
                    ' from MOVIMENTODETALHE md ' +
                    ' left outer join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
                    ' where md.CODMOVIMENTO = ' + IntToStr(DM_MOV.c_movdetCODMOVIMENTO.AsInteger) +
                    ' and pr.IMPRESSORA_2 = ' + QuotedStr('SIM');
                    //' and md.IMPRESSO is null';
  DM_MOV.IMP_MOVDET.Open;
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
    // if (usaDll = 'TRUE') then
       imp_Setor1_DLL
    // else
    //   imprimeCupom;
  end;
  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;
end;

procedure TF_Terminal.ReimprimirSetor2Local1Click(Sender: TObject);
begin
  if (DM_MOV.IMP_MOVDET.Active) then
     DM_MOV.IMP_MOVDET.Close;
  DM_MOV.IMP_MOVDET.CommandText := 'select md.*, pr.CODPRO, pr.COD_BARRA, pr.PRODUTO ' +
                    ' from MOVIMENTODETALHE md ' +
                    ' left outer join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
                    ' where md.CODMOVIMENTO = ' + IntToStr(DM_MOV.c_movdetCODMOVIMENTO.AsInteger) +
                    ' and pr.IMPRESSORA_2 = ' + QuotedStr('SIM');
                    //' and md.IMPRESSO is null';
  DM_MOV.IMP_MOVDET.Open;
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
       imp_Setor1_DLL
  end;
  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;
end;

procedure TF_Terminal.JvComissaoKeyPress(Sender: TObject; var Key: Char);
var poc : Double;
begin
   if (key = #13) then
   begin
      if (JvComissao.Value > 0) then
        poc := (JvComissao.Value /100) * JvTotal.Value
      else
        poc := 0;
      JvSubtotal.Value := JvTotal.Value + poc - JvParcial.Value;
   end;
end;

procedure TF_Terminal.bloqueia_mesa;
begin
  sql := 'UPDATE MOVIMENTO SET OBS = ' + QuotedStr('BLOQUEADA - PARCIAL IMPRESSA') +
           ' WHERE CODMOVIMENTO = ' + IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger);

  if (DM_MOV.s_buscaMov.Active) then
    DM_MOV.s_buscaMov.Close;

  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    MessageDlg('Erro ao efetuar troca de Mesa .', mtError,
        [mbOk], 0);
  end;
end;

procedure TF_Terminal.Libera_mesa;
begin
  sql := 'UPDATE MOVIMENTO SET OBS = ' + QuotedStr('') +
           ' WHERE CODMOVIMENTO = ' + IntToStr(DM_MOV.c_movdetCODMOVIMENTO.AsInteger);
  if (DM_MOV.s_buscaMov.Active) then
    DM_MOV.s_buscaMov.Close;
  Try
     dm.sqlsisAdimin.StartTransaction(TD);
     dm.sqlsisAdimin.ExecuteDirect(sql);
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro ao efetuar troca de Mesa .', mtError,
         [mbOk], 0);
  end;
end;

procedure TF_Terminal.JvBitBtn6Click(Sender: TObject);
var
   XY: TPoint;
begin
     XY := Point(50, -10);
     XY := JvBitBtn6.ClientToScreen(XY);
     pmCaixa.Popup(XY.X, XY.Y + JvBitBtn6.Height - 2);
end;

procedure TF_Terminal.permissao;
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

procedure TF_Terminal.RelatriosFechamentos1Click(Sender: TObject);
begin
  F_RelTerminal := TF_RelTerminal.Create(Application);
  try
    F_RelTerminal.ShowModal;
  finally
    F_RelTerminal.Free;
  end;  

end;

procedure TF_Terminal.imprimeDelivery;
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
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := Texto1 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := '|' + Format('%-46s  ', ['Pedido n. ' + Codigo_Pedido + ' - Data : ' + datasistema]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := Texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := '|' + Format('%-46s  ', [cliente]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := '|Telefone: ' +  Format('%-36s  ', [FoneCli]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := '|' +  Format('%-46s  ', [endCli]) + '|';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := Texto3 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := Texto4 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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
      MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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

  buffer  := Texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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

  //if (cds_imovdet.Active) then
  //  cds_imovdet.Close;
  //cds_iMovdet.Params[0].AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
  //cds_iMovDet.Open;

  DM_MOV.c_movdet.First;
  while not DM_MOV.c_movdet.Eof do
  begin
   // imprime
   // if (DM.impressaoResumida = 'NAO') then
   //   buffer  := DM_MOV.c_movdetDESCPRODUTO.Value + Chr(13) + Chr(10)
   // else
    buffer  := '|' +  Format('%-46s  ', [DM_MOV.c_movdetDESCPRODUTO.Value]) + '|';
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      MessageDlg('Problemas na impress達o do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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
      MessageDlg('Problemas na impress達o do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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

procedure TF_Terminal.imprimeComanda;
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
      MessageDlg('Problemas na impress達o do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
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

procedure TF_Terminal.JvBitBtn7Click(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       PageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;

  if (PageControl1.ActivePage = TabComanda) then
  begin
   edMesa.SetFocus;
  end;

  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (DM_MOV.c_movimento.Active) then
        DM_MOV.c_movimento.Close;
    if (DM_MOV.c_movdet.Active) then
        DM_MOV.c_movdet.Close;
    JvTotal.Value := 0;
    JvSubtotal.Value := 0;
    JvParcial.Value := 0;
    edtQtde.Value := 0;
    EdtCodBarra.SetFocus;
  end;
  if (PageControl1.ActivePage = TabDelivery) then
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

procedure TF_Terminal.EditarComanda1Click(Sender: TObject);
begin
  if (DM.USACONTROLECAIXA = 'SIM') then
  begin
     testacaixaaberto;
     if DM.resultadoOperacao = 'FALSE' then
     begin
       PageControl1.Enabled := False;
       ShowMessage('O caixa precisa ser aberto');
       Exit;
     end;
  end;
  
  if (PageControl1.ActivePage = TabSheet1) then
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
                  poc := (JvComissao.Value /100) * JvTotal.Value
                else
                  poc := 0;
                JvSubtotal.Value := JvSubtotal.Value + poc;
              end;
            end
            else
            begin
              JvParcial.Value := 0;
              if (DM_MOV.V_PAGACOMISSAO = 'SIM') then
                JvSubtotal.Value := JvTotal.Value + poc
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

procedure TF_Terminal.testacaixaaberto;
begin
  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (sCaixa1.IsEmpty) then
    DM.resultadoOperacao := 'FALSE'
  else
    DM.resultadoOperacao := 'TRUE';
  sCaixa1.Close;
end;

procedure TF_Terminal.imprimeDeliveryTXT;
begin

    sql := 'SELECT a.CODCLIENTE, a.NOMECLIENTE, ' +
              'e.LOGRADOURO, e.NUMERO, e.BAIRRO, e.TELEFONE ' +
              'FROM CLIENTES a, ENDERECOCLIENTE e ' +
              'where e.CODCLIENTE = a.CODCLIENTE ' +
              ' and e.TIPOEND = 0 ' +
              ' and a.CODCLIENTE = ' + IntToStr(DM_MOV.c_DeliveryCODCLIENTE.AsInteger);
    if (sbuscaCli.Active) then
         sbuscaCli.Close;
    sbuscaCli.CommandText := sql;
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

procedure TF_Terminal.imprimecomandaTXT;
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

procedure TF_Terminal.AbrirCaixa1Click(Sender: TObject);
var
  Caixa : TFiscalCls;
begin
  fAbrirCaixa := TfAbrirCaixa.create(Application);
  try
    fAbrirCaixa.ShowModal;
    if (DM.USACONTROLECAIXA = 'SIM') then
    begin
       if Panel2.Enabled = False then
          Panel2.Enabled := True;
       if MMJPanel6.Enabled = False then
          MMJPanel6.Enabled := True;
    end;
    Caixa := TFiscalCls.Create;
    var_Retorno := Caixa.VerificaCaixaAberto();
    if var_Retorno = True then
      PageControl1.Enabled := True;
  finally
    fAbrirCaixa.Free;
    Caixa.Free;
  end;
end;

procedure TF_Terminal.EfetuarSangria1Click(Sender: TObject);
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
     ShowMessage('N達o existe Caixa Aberto');
     Exit;
  end;

end;

procedure TF_Terminal.Pagamentos1Click(Sender: TObject);
begin
  fcrTituloPagto.ShowModal;
end;

procedure TF_Terminal.Entrada1Click(Sender: TObject);
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
     ShowMessage('N達o existe Caixa Aberto');
     Exit;
  end;

end;

procedure TF_Terminal.Fechamentodecaixa1Click(Sender: TObject);
var
  Caixa : TFiscalCls;
begin
  fMovCaixa := TfMovCaixa.Create(Application);
  try
    fMovCaixa.ShowModal;
  finally
    fMovCaixa.Free;
    try
      Caixa := TFiscalCls.Create;
      // Pego o Caixa Aberto
      var_Retorno := Caixa.VerificaCaixaAberto();
    finally
      Caixa.Free;
    end;
    if var_Retorno = False then
      PageControl1.Enabled := False;
  end;
end;

procedure TF_Terminal.edMesaKeyPress(Sender: TObject; var Key: Char);
  var i: Integer;
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
       ShowMessage('Mesa n\E3o Localizada');
       Exit;
    end;

    // Pinto de Vermelho os botoes mesas ocupada
    // *****************************************
    pinta_botao_1;

    nomeCliAmarelo := DM_MOV.s_BuscaComandaNOMECLIENTE.AsString;
    //************************************** FIM DO VERMELHO


    codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
    if (DM_MOV.s_buscaMov.Active) then
       DM_MOV.s_buscaMov.Close;

    sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
           'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
           'where m.CODNATUREZA = ' + IntToStr(3) + ' and m.STATUS = ' +
           IntToStr(20) + ' and m.CODCLIENTE = ' + IntToStr(codcliente);
    DM_MOV.s_buscaMov.CommandText := sql;

    DM_MOV.s_buscaMov.Open;

    if (DM_MOV.s_buscaMov.IsEmpty)then
       IncluiPedido
    else
    begin
      if (DM_MOV.c_comanda.Active) then
        DM_MOV.c_comanda.Close;
      DM_MOV.c_comanda.CommandText := '';
      sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
      sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
      sql := sql + 'WHERE m.CODNATUREZA = 3';
      sql := sql + 'and m.STATUS = 20';
      sql := sql + 'and m.CODCLIENTE = ';
      sql := sql + IntToStr(codcliente);

      DM_MOV.c_comanda.CommandText := sql;
      DM_MOV.c_comanda.Open;
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


    cor := clYellow;

    for i := 51 to 141 do
    begin
      if (TJvTransparentButton(Components[i]).Caption = nomeCliAmarelo) then
        TJvTransparentButton(Components[i]).color := cor;
    end;
  end;
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
    EdtCodBarra1.SetFocus;
  end;
end;

procedure TF_Terminal.JvTransparentButton53Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton53.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton54Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton54.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton55Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton55.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton56Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton56.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton57Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton57.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton58Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton58.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton59Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton59.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton60Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton60.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton61Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton61.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton62Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton62.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton63Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton63.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton64Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton64.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton65Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton65.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton66Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton66.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton67Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton67.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton68Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton68.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton69Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton69.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton70Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton70.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton71Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton71.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton72Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton72.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton73Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton73.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton74Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton74.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton75Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton75.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton76Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton76.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton77Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton77.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton78Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton78.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton79Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton77.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton80Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton80.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton81Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton81.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton82Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton82.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton83Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton83.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton84Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton84.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton85Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton85.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton86Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton86.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton87Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton87.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton88Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton88.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton89Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton89.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton90Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton90.ComponentIndex);
end;

procedure TF_Terminal.abreComanda;
begin
  if (DM_MOV.c_comanda.Active) then
    DM_MOV.c_comanda.Close;
  DM_MOV.c_comanda.CommandText := '';
  sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  sql := sql + ' inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + ' WHERE m.CODNATUREZA = 3 ';
  sql := sql + ' and m.STATUS = 20 ';
  DM_MOV.c_comanda.CommandText := sql;
  DM_MOV.c_comanda.Open;
end;

procedure TF_Terminal.abreDelivery;
var linhaDelivery: Integer;
begin
  linhaDelivery := 0;
  if (DM_MOV.c_Delivery.Active) then
  begin
    linhaDelivery := DM_MOV.c_Delivery.RecNo;
    DM_MOV.c_Delivery.Close;
  end;
  DM_MOV.c_Delivery.CommandText := '';
  sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  sql := sql + ' inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + ' WHERE m.CODNATUREZA = 3 ';
  sql := sql + ' and m.STATUS = 20 ';
  sql := sql + ' and m.TIPO_PEDIDO = ';
  sql := sql + QuotedStr('D');
  DM_MOV.c_Delivery.CommandText := sql;
  DM_MOV.c_Delivery.Open;
  if (linhaDelivery > 0) then
    DM_MOV.c_Delivery.RecNo := linhaDelivery;
end;

procedure TF_Terminal.Timer1Timer(Sender: TObject);
begin
  if (deliveryLivre) then
    abreDelivery;
end;

end.
