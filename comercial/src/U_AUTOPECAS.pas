unit U_AUTOPECAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExStdCtrls, JvGroupBox, Mask, DBCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons, MMJPanel, FMTBcd, DB,
  DBClient, Provider, SqlExpr, ComCtrls, uUtils, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, Menus, DBXpress, jpeg, JvExExtCtrls, JvImage,
  JvSpin, JvDBSpinEdit, ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase, RXCtrls,
  DBLocal, DBLocalS, umovimento, uVendaCls;

type
  TF_AUTOPECAS = class(TForm)
    MMJPanel1: TMMJPanel;
    edt_produto: TEdit;
    lbl1: TLabel;
    btn1: TBitBtn;
    MMJPanel5: TMMJPanel;
    btn_incluir: TBitBtn;
    s_buscaPro: TSQLDataSet;
    s_similar: TSQLDataSet;
    s_movimento: TSQLDataSet;
    p_similar: TDataSetProvider;
    p_movimento: TDataSetProvider;
    ds_similar: TClientDataSet;
    ds_movimento: TClientDataSet;
    d_similar: TDataSource;
    d_movimento: TDataSource;
    d_movdet: TDataSource;
    ds_movdet: TClientDataSet;
    p_movdet: TDataSetProvider;
    s_movdet: TSQLDataSet;
    s_venda: TSQLDataSet;
    p_venda: TDataSetProvider;
    ds_venda: TClientDataSet;
    d_venda: TDataSource;
    ds_similarID_SIMILAR: TIntegerField;
    ds_similarID_PRODUTO: TIntegerField;
    ds_similarCODPRO: TStringField;
    ds_similarCODPROSIMILAR: TStringField;
    ds_similarPRODUTO: TStringField;
    ds_similarMARCA: TStringField;
    ds_similarVALORUNITARIOATUAL: TFloatField;
    ds_similarPRECOMEDIO: TBCDField;
    s_buscaProCODPRODUTO: TIntegerField;
    s_buscaProPRODUTO: TStringField;
    s_buscaProPRECOMEDIO: TBCDField;
    s_buscaProVALORUNITARIOATUAL: TFloatField;
    s_buscaProUNIDADEMEDIDA: TStringField;
    s_buscaProMARCA: TStringField;
    s_buscaProCODPRO: TStringField;
    s_buscaProCOD_BARRA: TStringField;
    ds_movimentoCODMOVIMENTO: TIntegerField;
    ds_movimentoDATAMOVIMENTO: TDateField;
    ds_movimentoCODCLIENTE: TIntegerField;
    ds_movimentoCODNATUREZA: TSmallintField;
    ds_movimentoSTATUS: TSmallintField;
    ds_movimentoCODUSUARIO: TSmallintField;
    ds_movimentoCODVENDEDOR: TSmallintField;
    ds_movimentoCODALMOXARIFADO: TIntegerField;
    ds_movimentoCODFORNECEDOR: TIntegerField;
    ds_movimentoDATA_SISTEMA: TSQLTimeStampField;
    ds_movimentoCOD_VEICULO: TIntegerField;
    ds_movimentoCONTROLE: TStringField;
    ds_movimentoOBS: TStringField;
    ds_movimentoCONFERIDO: TStringField;
    ds_movimentoNFCOBRANCA: TIntegerField;
    ds_movimentoORDEMATEND: TIntegerField;
    ds_movimentoNFREVENDA: TIntegerField;
    ds_movimentoCODORIGEM: TIntegerField;
    ds_movimentoKM: TStringField;
    ds_movimentoTOTALMOVIMENTO: TFloatField;
    ds_movimentoVALORRATEIO: TFloatField;
    ds_movimentoRATEIO: TFloatField;
    ds_movimentoCODMOVRATEIO: TIntegerField;
    ds_movimentoNFE: TStringField;
    ds_movimentoNOMECLIENTE: TStringField;
    ds_movimentoOBS_1: TStringField;
    ds_movimentoPLACA: TStringField;
    ds_movimentoMARCA_MODELO: TStringField;
    ds_movimentoNOMEUSUARIO: TStringField;
    ds_movimentoNOMEFORNECEDOR: TStringField;
    ds_movimentoDESCNATUREZA: TStringField;
    ds_movimentoALMOXARIFADO: TStringField;
    ds_movimentoTIPOTITULO: TSmallintField;
    ds_movimentoBAIXAMOVIMENTO: TSmallintField;
    s_movimentoCODMOVIMENTO: TIntegerField;
    s_movimentoDATAMOVIMENTO: TDateField;
    s_movimentoCODCLIENTE: TIntegerField;
    s_movimentoCODNATUREZA: TSmallintField;
    s_movimentoSTATUS: TSmallintField;
    s_movimentoCODUSUARIO: TSmallintField;
    s_movimentoCODVENDEDOR: TSmallintField;
    s_movimentoCODALMOXARIFADO: TIntegerField;
    s_movimentoCODFORNECEDOR: TIntegerField;
    s_movimentoDATA_SISTEMA: TSQLTimeStampField;
    s_movimentoCOD_VEICULO: TIntegerField;
    s_movimentoCONTROLE: TStringField;
    s_movimentoOBS: TStringField;
    s_movimentoCONFERIDO: TStringField;
    s_movimentoNFCOBRANCA: TIntegerField;
    s_movimentoORDEMATEND: TIntegerField;
    s_movimentoNFREVENDA: TIntegerField;
    s_movimentoCODORIGEM: TIntegerField;
    s_movimentoKM: TStringField;
    s_movimentoTOTALMOVIMENTO: TFloatField;
    s_movimentoVALORRATEIO: TFloatField;
    s_movimentoRATEIO: TFloatField;
    s_movimentoCODMOVRATEIO: TIntegerField;
    s_movimentoNFE: TStringField;
    s_movimentoNOMECLIENTE: TStringField;
    s_movimentoOBS_1: TStringField;
    s_movimentoPLACA: TStringField;
    s_movimentoMARCA_MODELO: TStringField;
    s_movimentoNOMEUSUARIO: TStringField;
    s_movimentoNOMEFORNECEDOR: TStringField;
    s_movimentoDESCNATUREZA: TStringField;
    s_movimentoALMOXARIFADO: TStringField;
    s_movimentoTIPOTITULO: TSmallintField;
    s_movimentoBAIXAMOVIMENTO: TSmallintField;
    ds_movdetCODDETALHE: TIntegerField;
    ds_movdetCODMOVIMENTO: TIntegerField;
    ds_movdetCODPRODUTO: TIntegerField;
    ds_movdetICMS: TFloatField;
    ds_movdetPRECO: TFloatField;
    ds_movdetQUANTIDADE: TFloatField;
    ds_movdetQTDE_ALT: TFloatField;
    ds_movdetUN: TStringField;
    ds_movdetBAIXA: TStringField;
    ds_movdetCONTROLE: TSmallintField;
    ds_movdetCOD_COMISSAO: TIntegerField;
    ds_movdetVALTOTAL: TFloatField;
    ds_movdetCODPRO: TStringField;
    ds_movdetPRODUTO: TStringField;
    ds_movdetCODALMOXARIFADO: TIntegerField;
    ds_movdetVALORUNITARIOATUAL: TFloatField;
    ds_movdetQTDE_PCT: TFloatField;
    ds_movdetALMOXARIFADO: TStringField;
    ds_movdetCONTA_DESPESA: TStringField;
    ds_movdetCOD_BARRA: TStringField;
    ds_movdetLOCALIZACAO: TStringField;
    ds_movdetESTOQUEATUAL: TFloatField;
    s_movdetCODDETALHE: TIntegerField;
    s_movdetCODMOVIMENTO: TIntegerField;
    s_movdetCODPRODUTO: TIntegerField;
    s_movdetICMS: TFloatField;
    s_movdetPRECO: TFloatField;
    s_movdetQUANTIDADE: TFloatField;
    s_movdetQTDE_ALT: TFloatField;
    s_movdetUN: TStringField;
    s_movdetBAIXA: TStringField;
    s_movdetCONTROLE: TSmallintField;
    s_movdetCOD_COMISSAO: TIntegerField;
    s_movdetVALTOTAL: TFloatField;
    s_movdetCODPRO: TStringField;
    s_movdetPRODUTO: TStringField;
    s_movdetCODALMOXARIFADO: TIntegerField;
    s_movdetVALORUNITARIOATUAL: TFloatField;
    s_movdetQTDE_PCT: TFloatField;
    s_movdetALMOXARIFADO: TStringField;
    s_movdetCONTA_DESPESA: TStringField;
    s_movdetCOD_BARRA: TStringField;
    s_movdetLOCALIZACAO: TStringField;
    s_movdetESTOQUEATUAL: TFloatField;
    s_buscaProQTDE_PCT: TFloatField;
    s_buscaProICMS: TFloatField;
    s_buscaProIPI: TFloatField;
    s_buscaProCLASSIFIC_FISCAL: TStringField;
    s_buscaProCST: TStringField;
    s_buscaProBASE_ICMS: TFloatField;
    s_buscaProCOD_COMISSAO: TIntegerField;
    btn4: TBitBtn;
    btn_excluir: TBitBtn;
    btn_procura: TBitBtn;
    btn12: TBitBtn;
    btn_sair: TBitBtn;
    s_similarID_SIMILAR: TIntegerField;
    s_similarID_PRODUTO: TIntegerField;
    s_similarCODPRO: TStringField;
    s_similarCODPROSIMILAR: TStringField;
    s_similarPRODUTO: TStringField;
    s_similarMARCA: TStringField;
    s_similarVALORUNITARIOATUAL: TFloatField;
    s_similarPRECOMEDIO: TBCDField;
    s_movimentoCODPEDIDO: TIntegerField;
    ds_movimentoCODPEDIDO: TIntegerField;
    db_qtde: TJvDBCalcEdit;
    db_valor: TJvDBCalcEdit;
    s_movdetDESCPRODUTO: TStringField;
    ds_movdetDESCPRODUTO: TStringField;
    ds_movdettotal: TAggregateField;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    pm1: TPopupMenu;
    s_vendaCODVENDA: TIntegerField;
    s_vendaCODMOVIMENTO: TIntegerField;
    s_vendaCODCLIENTE: TIntegerField;
    s_vendaDATAVENDA: TDateField;
    s_vendaDATAVENCIMENTO: TDateField;
    s_vendaNUMEROBORDERO: TIntegerField;
    s_vendaBANCO: TSmallintField;
    s_vendaCODVENDEDOR: TSmallintField;
    s_vendaSTATUS: TSmallintField;
    s_vendaCODUSUARIO: TSmallintField;
    s_vendaDATASISTEMA: TDateField;
    s_vendaVALOR: TFloatField;
    s_vendaNOTAFISCAL: TIntegerField;
    s_vendaSERIE: TStringField;
    s_vendaDESCONTO: TFloatField;
    s_vendaCODCCUSTO: TSmallintField;
    s_vendaN_PARCELA: TSmallintField;
    s_vendaOPERACAO: TStringField;
    s_vendaFORMARECEBIMENTO: TStringField;
    s_vendaN_DOCUMENTO: TStringField;
    s_vendaCAIXA: TSmallintField;
    s_vendaMULTA_JUROS: TFloatField;
    s_vendaAPAGAR: TFloatField;
    s_vendaVALOR_PAGAR: TFloatField;
    s_vendaENTRADA: TFloatField;
    s_vendaN_BOLETO: TStringField;
    s_vendaSTATUS1: TStringField;
    s_vendaCONTROLE: TStringField;
    s_vendaOBS: TStringField;
    s_vendaVALOR_ICMS: TFloatField;
    s_vendaVALOR_FRETE: TFloatField;
    s_vendaVALOR_SEGURO: TFloatField;
    s_vendaOUTRAS_DESP: TFloatField;
    s_vendaVALOR_IPI: TFloatField;
    s_vendaPRAZO: TStringField;
    s_vendaCODORIGEM: TIntegerField;
    s_vendaNOMECLIENTE: TStringField;
    s_vendaNOMEUSUARIO: TStringField;
    s_vendaBANCO_1: TStringField;
    ds_vendaCODVENDA: TIntegerField;
    ds_vendaCODMOVIMENTO: TIntegerField;
    ds_vendaCODCLIENTE: TIntegerField;
    ds_vendaDATAVENDA: TDateField;
    ds_vendaDATAVENCIMENTO: TDateField;
    ds_vendaNUMEROBORDERO: TIntegerField;
    ds_vendaBANCO: TSmallintField;
    ds_vendaCODVENDEDOR: TSmallintField;
    ds_vendaSTATUS: TSmallintField;
    ds_vendaCODUSUARIO: TSmallintField;
    ds_vendaDATASISTEMA: TDateField;
    ds_vendaVALOR: TFloatField;
    ds_vendaNOTAFISCAL: TIntegerField;
    ds_vendaSERIE: TStringField;
    ds_vendaDESCONTO: TFloatField;
    ds_vendaCODCCUSTO: TSmallintField;
    ds_vendaN_PARCELA: TSmallintField;
    ds_vendaOPERACAO: TStringField;
    ds_vendaFORMARECEBIMENTO: TStringField;
    ds_vendaN_DOCUMENTO: TStringField;
    ds_vendaCAIXA: TSmallintField;
    ds_vendaMULTA_JUROS: TFloatField;
    ds_vendaAPAGAR: TFloatField;
    ds_vendaVALOR_PAGAR: TFloatField;
    ds_vendaENTRADA: TFloatField;
    ds_vendaN_BOLETO: TStringField;
    ds_vendaSTATUS1: TStringField;
    ds_vendaCONTROLE: TStringField;
    ds_vendaOBS: TStringField;
    ds_vendaVALOR_ICMS: TFloatField;
    ds_vendaVALOR_FRETE: TFloatField;
    ds_vendaVALOR_SEGURO: TFloatField;
    ds_vendaOUTRAS_DESP: TFloatField;
    ds_vendaVALOR_IPI: TFloatField;
    ds_vendaPRAZO: TStringField;
    ds_vendaCODORIGEM: TIntegerField;
    ds_vendaNOMECLIENTE: TStringField;
    ds_vendaNOMEUSUARIO: TStringField;
    ds_vendaBANCO_1: TStringField;
    sds_s: TSQLDataSet;
    s_movimentoCHASSIS: TStringField;
    ds_movimentoCHASSIS: TStringField;
    s_cr: TSQLDataSet;
    p_cr: TDataSetProvider;
    ds_cr: TClientDataSet;
    d_cr: TDataSource;
    s_crCODCLIENTE: TIntegerField;
    s_crCODRECEBIMENTO: TIntegerField;
    s_crTITULO: TStringField;
    s_crVIA: TStringField;
    s_crDATAVENCIMENTO: TDateField;
    s_crVALORTITULO: TFloatField;
    s_crDP: TIntegerField;
    s_crSTATUS: TStringField;
    s_crVALORRECEBIDO: TFloatField;
    s_crVALOR_RESTO: TFloatField;
    s_crVALOR_PRIM_VIA: TFloatField;
    s_crN_DOCUMENTO: TStringField;
    s_crCAIXA: TSmallintField;
    s_crFORMARECEBIMENTO: TStringField;
    s_crDATARECEBIMENTO: TDateField;
    s_crNOMECLIENTE: TStringField;
    s_crVALORREC: TFloatField;
    s_crEMISSAO: TDateField;
    s_crTIT: TStringField;
    s_crSITUACAO: TStringField;
    ds_crCODCLIENTE: TIntegerField;
    ds_crCODRECEBIMENTO: TIntegerField;
    ds_crTITULO: TStringField;
    ds_crVIA: TStringField;
    ds_crDATAVENCIMENTO: TDateField;
    ds_crVALORTITULO: TFloatField;
    ds_crDP: TIntegerField;
    ds_crSTATUS: TStringField;
    ds_crVALORRECEBIDO: TFloatField;
    ds_crVALOR_RESTO: TFloatField;
    ds_crVALOR_PRIM_VIA: TFloatField;
    ds_crN_DOCUMENTO: TStringField;
    ds_crCAIXA: TSmallintField;
    ds_crDATARECEBIMENTO: TDateField;
    ds_crFORMARECEBIMENTO: TStringField;
    ds_crNOMECLIENTE: TStringField;
    ds_crVALORREC: TFloatField;
    ds_crEMISSAO: TDateField;
    ds_crTIT: TStringField;
    ds_crSITUACAO: TStringField;
    sqs_tit: TSQLDataSet;
    ExcluiItem1: TMenuItem;
    rocaPeloSimilar1: TMenuItem;
    ListaProdutos1: TMenuItem;
    pm2: TPopupMenu;
    ImprimirOramento1: TMenuItem;
    ImprimirPedido1: TMenuItem;
    ImprimirOrdemdeServio1: TMenuItem;
    dlgOpen1: TOpenDialog;
    DataSource2: TDataSource;
    ds_Veiculocli: TClientDataSet;
    ds_VeiculocliCOD_VEICULO: TIntegerField;
    ds_VeiculocliCOD_CLIENTE: TIntegerField;
    ds_VeiculocliPLACA: TStringField;
    ds_VeiculocliMARCA_MODELO: TStringField;
    ds_VeiculocliTIPO: TStringField;
    ds_VeiculocliCOMBUSTIVEL: TStringField;
    ds_VeiculocliANO_FAB: TStringField;
    ds_VeiculocliANO_MOD: TStringField;
    ds_VeiculocliCOR: TStringField;
    dsp_Veiculocli: TDataSetProvider;
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
    pgc1: TPageControl;
    ts1: TTabSheet;
    MMJPanel4: TMMJPanel;
    JvGroupBox2: TJvGroupBox;
    JvGroupBox4: TJvGroupBox;
    JvDBGrid2: TJvDBGrid;
    JvGroupBox5: TJvGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtCODPEDIDO: TDBEdit;
    dbedtDATAMOVIMENTO: TDBEdit;
    rg1: TRadioGroup;
    ts2: TTabSheet;
    MMJPanel6: TMMJPanel;
    JvGroupBox11: TJvGroupBox;
    JvDBGrid4: TJvDBGrid;
    JvGroupBox12: TJvGroupBox;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl17: TLabel;
    dbeSerie: TDBEdit;
    btnSerie: TBitBtn;
    dbedtNOTAFISCAL: TDBEdit;
    DBSpinParc: TJvDBSpinEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvGroupBox1: TJvGroupBox;
    lbl3: TLabel;
    lbl9: TLabel;
    dbedtCODCLIENTE: TDBEdit;
    dbedtNOMECLIENTE: TDBEdit;
    btn2: TBitBtn;
    JvGroupBox10: TJvGroupBox;
    lbl18: TLabel;
    lbl27: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    cbb4: TComboBox;
    cbb5: TComboBox;
    btn9: TBitBtn;
    cbb3: TComboBox;
    dbedtNOTAFISCAL1: TDBEdit;
    pnl3: TPanel;
    btn5: TBitBtn;
    btn10: TBitBtn;
    ts4: TTabSheet;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel3: TMMJPanel;
    dbedtVALTOTAL: TDBEdit;
    JvGroupBox13: TJvGroupBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Boleto1: TMenuItem;
    ProcurarPedidoOramento1: TMenuItem;
    IncluirPedidoOramento1: TMenuItem;
    ExcluirPedidoOramento1: TMenuItem;
    CacelarOperao1: TMenuItem;
    EncerrarOperaoSair1: TMenuItem;
    GravarPedidoOrament1: TMenuItem;
    sTitulo: TSQLDataSet;
    sds_VeiculocliCHASSIS: TStringField;
    ds_VeiculocliCHASSIS: TStringField;
    chk1: TCheckBox;
    s_buscaProVALOR_PRAZO: TFloatField;
    dbedtDescProduto: TDBEdit;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    GroupBox1: TGroupBox;
    lbl13: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl32: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    JvDBCalcEdit4: TJvDBCalcEdit;
    JvDBCalcEdit6: TJvDBCalcEdit;
    JvDBCalcEdit7: TJvDBCalcEdit;
    JvDBCalcEdit5: TJvDBCalcEdit;
    s_movimentoCOMBUSTIVEL: TStringField;
    s_movimentoANO_FAB: TStringField;
    s_movimentoANO_MOD: TStringField;
    ds_movimentoCOMBUSTIVEL: TStringField;
    ds_movimentoANO_FAB: TStringField;
    ds_movimentoANO_MOD: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnl2: TPanel;
    JvImage1: TJvImage;
    DBMemo1: TDBMemo;
    TabSheet3: TTabSheet;
    pm3: TPopupMenu;
    AprovarOramento1: TMenuItem;
    AbrirOS1: TMenuItem;
    btn6: TBitBtn;
    b_cliente: TSQLDataSet;
    b_clienteCODCLIENTE: TIntegerField;
    b_clienteNOMECLIENTE: TStringField;
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
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sProcuraProd: TSQLDataSet;
    sProcuraProdCODPRODUTO: TIntegerField;
    sProcuraProdCODPRO: TStringField;
    sProcuraProdPRODUTO: TStringField;
    sProcuraProdUNIDADEMEDIDA: TStringField;
    sProcuraProdQTDE_PCT: TFloatField;
    sProcuraProdICMS: TFloatField;
    sProcuraProdCODALMOXARIFADO: TIntegerField;
    sProcuraProdALMOXARIFADO: TStringField;
    sProcuraProdVALORUNITARIOATUAL: TFloatField;
    sProcuraProdVALOR_PRAZO: TFloatField;
    sProcuraProdTIPO: TStringField;
    sProcuraProdESTOQUEATUAL: TFloatField;
    sProcuraProdLOCALIZACAO: TStringField;
    sProcuraProdLOTES: TStringField;
    sProcuraProdPESO_QTDE: TFloatField;
    sProcuraProdCOD_COMISSAO: TIntegerField;
    JvGroupBox3: TJvGroupBox;
    lbl2: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtCHASSIS1: TDBEdit;
    btn7: TBitBtn;
    dbedtKM1: TDBEdit;
    medt2: TMaskEdit;
    JvDBGrid3: TJvDBGrid;
    s_movdetPRECOMEDIO: TBCDField;
    s_movdetMARGEM: TFloatField;
    ds_movdetPRECOMEDIO: TBCDField;
    ds_movdetMARGEM: TFloatField;
    CadastrodeProduto1: TMenuItem;
    btnProduto: TBitBtn;
    s_similarVALOR_PRAZO: TFloatField;
    ds_similarVALOR_PRAZO: TFloatField;
    s_similarLOCALIZACAO: TStringField;
    ds_similarLOCALIZACAO: TStringField;
    s_similarMARGEM: TFloatField;
    ds_similarMARGEM: TFloatField;
    s_movdetMARCA: TStringField;
    ds_movdetMARCA: TStringField;
    procedure edt_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_incluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_movimentoNewRecord(DataSet: TDataSet);
    procedure db_qtdeExit(Sender: TObject);
    procedure db_valorExit(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure d_movimentoStateChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure ds_vendaNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure ExcluiItem1Click(Sender: TObject);
    procedure rocaPeloSimilar1Click(Sender: TObject);
    procedure ListaProdutos1Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure ImprimirOramento1Click(Sender: TObject);
    procedure ImprimirPedido1Click(Sender: TObject);
    procedure btn_procuraClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure Boleto1Click(Sender: TObject);
    procedure d_vendaDataChange(Sender: TObject; Field: TField);
    procedure btnProdutoClick(Sender: TObject);
    procedure medt1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeSerieExit(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure lbl3Click(Sender: TObject);
    procedure AbrirOS1Click(Sender: TObject);
    procedure AprovarOramento1Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
    centro_receita, cod_nat, cod_vendedor_padrao, COD_VENDA: integer;
    nome_cliente, natureza, contas_pendentes, nome_vendedor_padrao, orcamento: string;
    clienteConsumidor, numTitulo, caixa, codproduto, codcliente, codnatureza, codalmoxarif: integer;
    strSql, serie, usaprecolista, usacadveiculo, tiporel: string;
    vrr, precovenda : double;
    result : Boolean;
    codMovSaida : Integer;    
    procedure buscaSimilar;
  public
    { Public declarations }
    function buscaProdLista(codBarra, ProdLista:String): Integer;
    function geraCodBarra(vlrBarra: String; i :integer): String;
    procedure buscaProduto;
    procedure BUSCA_PRODUTO;
    procedure BUSCA_PRAMETROS;
    procedure inseriMovimento;
    procedure inseriMovDetalhe;
    procedure imprimePedido;
    procedure imprimeCupom;
    procedure consulta_titulos;
  end;

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
  F_AUTOPECAS: TF_AUTOPECAS;
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, logradouro,cep,fone : string;
  total : double;
  id_movimento, id_movdet, codmovdet : Integer;
  utilcrtitulo : Tutils;
  i, j : integer;
  TD: TTransactionDesc;
  cliente, modelo, placa, varcancela, strTit, tipoMov, tipoimpressao: String;
  diferenca : double;
  TDA: TTransactionDesc;
implementation

uses UDm, sCtrlResize, uListaClientes, U_Boletos, ufprocura_prod,
  uFiltroMovimento, uClienteVeiculo, uProcurar, U_OSBUSCA,
  uClienteCadastro, U_FiltroOS, uProcura_prodOficina, u_SIMILARES,
  uProdutoCadastro, uCliente1;

{$R *.dfm}

procedure TF_AUTOPECAS.edt_produtoKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
  if (edt_produto.text = '') then
    exit;
    codproduto := 0;
    buscaProduto;
    buscaSimilar;
    if (scds_produto_proc.Active) then
      scds_produto_proc.Close;
    if (s_buscaPro.Active) then
      s_buscaPro.Close;
    if (sProcuraProd.Active) then
      sProcuraProd.Close;
    ds_movdet.Last;  
    edt_produto.text := ''; 
 end;
end;

procedure TF_AUTOPECAS.btn_incluirClick(Sender: TObject);
var
  FMov: TMovimento;
begin
  if (ds_cr.Active) then
     ds_cr.Close;
  if (ds_venda.Active) then
     ds_venda.Close;
  if (ds_similar.Active) then
     ds_similar.Close;

  if (ds_movdet.Active) then
  begin
     ds_movdet.Params[0].Clear;
     ds_movdet.Params[1].Clear;
     ds_movdet.Close;
  end;

  if (ds_movimento.Active) then
  begin
     ds_movimento.Params[0].Clear;
     ds_movimento.Close;
  end;
  if (pgc1.ActivePage <> ts1) then
    pgc1.ActivePage := ts1;

  BUSCA_PRAMETROS;
  // Inserir Movimento
  inseriMovimento;
  // Abre Movimento
  if (ds_movimento.Active) then
    ds_movimento.Close;
  ds_movimento.Params[0].AsInteger := codMovSaida;
  ds_movimento.Open;
  if (not ds_movimento.IsEmpty) then
    ds_movimento.Edit;

  // Abro a tabela movimento
 { if (ds_movimento.Active) then
    ds_movimento.Close;
  ds_movimento.Open;
  ds_movimento.Append;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  ds_movimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  if (ds_movdet.Active) then
    ds_movdet.Close;

  if (ds_venda.Active) then
    ds_venda.Close;

  ds_venda.Open;
  ds_venda.Append;
  }
//  edt_produto.SetFocus;

end;

procedure TF_AUTOPECAS.FormShow(Sender: TObject);
begin
//  sCtrlResize.CtrlResize(TForm(F_AUTOPECAS));

  if (rg1.ItemIndex = 1) then
  begin
     ts2.TabVisible := False;
     //ts3.TabVisible := False;
     ts4.TabVisible := False;
  end;

end;

procedure TF_AUTOPECAS.FormCreate(Sender: TObject);
begin
    {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      centro_receita := strToint(dm.cds_parametroDADOS.AsString);
    end;
    {------Pesquisando na tab Parametro Vendedor Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      cod_vendedor_padrao := strToint(dm.cds_parametroDADOS.AsString);
      nome_vendedor_padrao := dm.cds_parametroD1.AsString;
    end else
    begin
      cod_vendedor_padrao := 1;
      nome_vendedor_padrao := '..'
    end;
  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  cod_nat := strToint(dm.cds_parametroD2.asString);
  natureza := 'Venda a Vista';
  codcliente := strToint(dm.cds_parametroDADOS.asString);
  codalmoxarif := strToint(dm.cds_parametroD1.asString);
  tiporel := dm.cds_parametroD3.asString;
  {----------------------------------------------------------------------}
    // Se usa preço da Lista
  If (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PRECOLISTA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaprecolista := dm.cds_parametroDADOS.AsString; //'SIM';

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'SIM' then
    usacadveiculo := 'SIM';

  if (not dm.cdsPrazo.Active) then
  dm.cdsPrazo.open;
  if (not dm.cdsPrazo.IsEmpty) then
  begin
    dm.CdsPrazo.first;
    //nparc := dm.CdsPrazoVALOR.asFloat;
    cbb3.Items.clear;
    while not dm.CdsPrazo.eof do
    begin
      cbb3.Items.Add(dm.cdsPrazoPARAMETRO.asString);
      dm.cdsPrazo.next;
    end;
  end;
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
    cbb4.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbb5.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
end;

procedure TF_AUTOPECAS.ds_movimentoNewRecord(DataSet: TDataSet);
begin
  ds_MovimentoCODNATUREZA.AsInteger := cod_nat;
  ds_MovimentoDESCNATUREZA.AsString := natureza;
  ds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
  ds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
  ds_MovimentoCODCLIENTE.AsInteger := 1;
  ds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
  ds_MovimentoDATAMOVIMENTO.Value := Date;
  ds_MovimentoDATA_SISTEMA.AsDateTime := Now;
  ds_MovimentoSTATUS.Value := 0;
  ds_MovimentoCODUSUARIO.AsInteger:=usulog;
  ds_MovimentoCODVENDEDOR.Value:=usulog;
  ds_MovimentoCODCLIENTE.AsInteger := codcliente;
  ds_MovimentoCODALMOXARIFADO.AsInteger := 1;
  ds_movimentoTIPOTITULO.AsInteger := 0;
  cbb3.ItemIndex := 0;
  cbb4.ItemIndex := 1;
  cbb5.ItemIndex := 0;  
end;

procedure TF_AUTOPECAS.db_qtdeExit(Sender: TObject);
begin
  if ds_movdet.State in [dsInactive] then
    Exit;
  if ds_movdet.State in [dsBrowse] then
    ds_movdet.edit;
  ds_movdetVALTOTAL.AsFloat := ds_movdetPRECO.AsFloat * ds_movdetQUANTIDADE.AsFloat;
  ds_movdet.Post;
  db_valor.SetFocus;
end;

procedure TF_AUTOPECAS.db_valorExit(Sender: TObject);
begin
  if ds_movdet.State in [dsInactive] then
    Exit;

  if ds_movdet.State in [dsBrowse] then
    ds_movdet.edit;
  ds_movdetVALTOTAL.AsFloat := ds_movdetPRECO.AsFloat * ds_movdetQUANTIDADE.AsFloat;
  ds_movdet.Post;
  edt_produto.Clear;
  dbedtDescProduto.SetFocus;
end;

procedure TF_AUTOPECAS.JvDBGrid1DblClick(Sender: TObject);
begin
    if (not ds_movdet.Active) then
       Exit;
    buscaSimilar;
end;

procedure TF_AUTOPECAS.JvDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if (not ds_movdet.Active) then
       Exit;
    buscaSimilar;
end;

procedure TF_AUTOPECAS.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (not ds_movdet.Active) then
       Exit;
    buscaSimilar;
end;

procedure TF_AUTOPECAS.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (not ds_movdet.Active) then
       Exit;
    buscaSimilar;
end;

procedure TF_AUTOPECAS.d_movimentoStateChange(Sender: TObject);
begin
  if (d_movimento.State in [dsEdit]) then
  begin
     if (sTitulo.Active) then
       sTitulo.Close;
     sTitulo.Params[0].AsInteger := ds_vendaCODVENDA.AsInteger;
     sTitulo.Open;
     if (not sTitulo.IsEmpty) then
     begin
        MessageDlg('Existem Títulos já Recebidos, Alteração não Permitida', mtWarning, [mbOK], 0);
        exit;
     end;
  end;

  btn_sair.Enabled := d_movimento.State in [dsBrowse,dsInactive];

  if (d_movimento.State in [dsInsert, dsEdit]) then
  begin
    btn_incluir.Visible := False;
    btn_excluir.Visible := False;
    btn_gravar.Visible := True;
    btn_gravar.Enabled := True;
    btn_cancelar.Visible := True;
    btn_cancelar.Enabled := True;
  end;

  if (d_movimento.State in [dsBrowse,dsInactive]) then
  begin
    btn_incluir.Enabled := True;
    btn_incluir.Visible := True;
    btn_excluir.Visible := True;
    btn_excluir.Enabled := True;
    btn_gravar.Visible := False;
    btn_cancelar.Visible := False;
  end;

end;

procedure TF_AUTOPECAS.btn2Click(Sender: TObject);
begin
 if d_movimento.DataSet.State in [dsInactive] then exit;
  fListaClientes:=TfListaClientes.Create(Application);
  Try
    varform := 'venda';
    codcli := 0;
    nomecli := '';
    fListaClientes.ShowModal;
    if (ds_Movimento.State in [dsBrowse]) then
      ds_Movimento.Edit;
    ds_MovimentoCODCLIENTE.AsInteger := codcli ;
    ds_MovimentoNOMECLIENTE.AsString := nomecli;
  Finally
   fListaClientes.ListaCliente.close;
   fListaClientes.Free;
  end;
end;

procedure TF_AUTOPECAS.btn_gravarClick(Sender: TObject);
begin
    // Verificar se é Orçamento, Orçamento não gera Venda só salvo o Movimento e
    // Movimento detalhe
    if (rg1.ItemIndex = 1) then // é Orçamento
       ds_movimentoCODNATUREZA.AsInteger := 16;

   //  Salvar Movimento
   if (ds_movimento.State in [dsInactive]) then
      Exit;
   //if (ds_movimento.State in [dsInsert, dsEdit]) then
   //   ds_movimentoCODMOVIMENTO.AsInteger := id_movimento;
   if (ds_movimento.State in [dsBrowse]) then
      ds_movimento.Edit;

   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_codpedido, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   ds_movimentoCODPEDIDO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
   dm.c_6_genid.Close;

   ds_movimento.ApplyUpdates(0);
   if (ds_movdet.State in [dsEdit]) then
     ds_movdet.ApplyUpdates(0);
  // é pedido salvo movimento e abro a tela para encerrar o pedido
  if (rg1.ItemIndex = 0) then // é Pedido
  if (pgc1.ActivePage = ts1) then
  begin
      if (not ds_venda.Active) then
        ds_venda.Open;
      if (d_venda.State in [dsInactive, dsBrowse]) then
        ds_venda.Append;
      pgc1.ActivePage := ts2;
      ds_vendaVALOR.Value := ds_movdettotal.Value;
      //ds_vendaVALOR.Value := ds_movdettotal.Value;
      ds_vendaVALOR_PAGAR.Value := ds_movdettotal.Value;
      ds_vendaMULTA_JUROS.Value := 0;
      ds_vendaDESCONTO.Value := 0;
      ds_vendaN_PARCELA.AsInteger := 1;
      ds_vendaENTRADA.Value := 0;
      ds_vendaDATAVENDA.AsDateTime := ds_movimentoDATAMOVIMENTO.AsDateTime;
      ds_vendaDATASISTEMA.AsDateTime := Now;
      Exit;
  end;

  if (rg1.ItemIndex = 0) then // é Pedido
  begin
    if d_venda.State in [dsInsert] then
    begin
      if (dbeSerie.Text = '') then
      begin
        MessageDlg('Informe uma Série.', mtError, [mbOK], 0);
        dbeSerie.SetFocus;
        exit;
      end;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      ds_vendaCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;

      strTit := IntToStr(ds_vendaNOTAFISCAL.AsInteger) + '-' + ds_vendaSERIE.AsString;
      //ds_vendaDATAVENCIMENTO.AsDateTime := Now + 30;
      //ds_vendaCODMOVIMENTO.AsInteger := id_movimento;
      ds_vendaCODCLIENTE.AsInteger := ds_movimentoCODCLIENTE.AsInteger;
      ds_vendaCODVENDEDOR.AsInteger := ds_movimentoCODVENDEDOR.AsInteger;
      //if cbb3.Text <> '1-A VISTA' then
      if (not dm.cdsPrazo.Locate('PARAMETRO', cbb3.Text, [loCaseinsensitive])) then
      begin
        MessageDlg('Escolha o prazo de pagamento.', mtError, [mbOK], 0);
        cbb3.SetFocus;
        exit;
      end;
      ds_vendaPRAZO.AsString := cbb3.Text;
      IF (ds_vendaCODUSUARIO.asinteger = 0) then
        ds_vendaCODUSUARIO.AsInteger := ds_vendaCODVENDEDOR.AsInteger;

      if (ds_vendaENTRADA.AsFloat > 0) then
      begin
        if (cbb4.Text = '') then
        begin
          MessageDlg('Informe o CAIXA.', mtError, [mbOK], 0);
          cbb4.SetFocus;
          exit;
        end;
        try
          if (StrToInt(DBSpinParc.Text) = 1) then
          begin
            diferenca := ds_vendaVALOR.AsFloat - ds_vendaDESCONTO.AsFloat;
            diferenca := diferenca - ds_vendaENTRADA.AsFloat;
            if (diferenca > 0.01) then
            begin
              MessageDlg('O sistema considera a parcela 1 como a entrada.', mtError, [mbOK], 0);
              DBSpinParc.SetFocus;
              exit;
            end;
          end;
        except
          MessageDlg('Informe um número para PARCELAS.', mtError, [mbOK], 0);
          DBSpinParc.SetFocus;
          exit;
        end;
      end;
    end;

    if d_venda.State in [dsEdit, dsInsert] then
    begin
      utilcrtitulo := Tutils.Create;
      ds_vendaFORMARECEBIMENTO.AsString := utilcrtitulo.pegaForma(cbb5.Text);

      if (dm.cds_7_contas.Locate('NOME', cbb4.Text, [loCaseInsensitive])) then
        ds_vendaCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger
      else begin
        if (ds_vendaENTRADA.AsFloat > 0) then
        begin
          MessageDlg('Caixa informado inválido.', mtError, [mbOK], 0);
          cbb4.SetFocus;
          exit;
        end;
      end;

      {Usado para bloquear alteração em RECEBIMENTO pelas triggers
       da notafiscal }
      //if (d_venda.State in [dsInsert, dsEdit]) then
      //if (ds_vendaVALOR.AsFloat <> vrr) then
      //  ds_vendaSTATUS1.AsString := 'B';
      ds_venda.ApplyUpdates(0);
      //Gravando o numero sequencial
      if not scds_serie_proc.Active then
      begin
         scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
         scds_serie_proc.Open;
      end;
      if (ds_vendaNOTAFISCAL.AsInteger > scds_serie_procULTIMO_NUMERO.AsInteger) then
      begin
        scds_serie_proc.Edit;
        scds_serie_procULTIMO_NUMERO.AsInteger := ds_vendaNOTAFISCAL.AsInteger;
        scds_serie_proc.ApplyUpdates(0);
      end;
      scds_serie_proc.Close;
    end;
  end;

end;

procedure TF_AUTOPECAS.BUSCA_PRAMETROS;
begin
    clienteConsumidor := 1;
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
      clienteConsumidor := StrToInt(dm.cds_parametroDADOS.AsString);
    dm.cds_parametro.Close;

    if (b_cliente.Active) then
      b_cliente.Close;
    b_cliente.Params[0].AsInteger := clienteConsumidor;
    b_cliente.Open;
    if (b_cliente.IsEmpty) then
    begin
        ShowMessage('Cliente configurado nos parametros não consta no cadastro de clientes.');
        exit;
    end
    else
    begin
       codcliente := b_clienteCODCLIENTE.AsInteger;
       nome_cliente := b_clienteNOMECLIENTE.AsString;
    end;

    // Busca na tabeça PARAMETRO a conta CAIXA para trabalhar no Terminal VENDA
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CAIXA';
    dm.cds_parametro.Open;
    // Buscar o número do título na tabela SéRIE
    if (sds_s.Active) then
      sds_s.Close;
    sds_s.CommandText := 'SELECT CODIGO FROM PLANO WHERE CONTA = ' + '''' + dm.cds_parametroDADOS.asString + '''';
    sds_s.open;
    caixa := sds_s.Fields[0].AsInteger;
    // Busca na tabeça PARAMETRO a SéRIE para trabalhar no Terminal VENDA
    serie := 'x';
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
    dm.cds_parametro.Open;
    if dm.cds_parametro.IsEmpty then  // Se não Existir Cadastro
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.asString := 'Número do Título de Venda para o Terminal';
      dm.cds_parametroPARAMETRO.asString := 'SERIETERMINAL';
      dm.cds_parametroDADOS.asString := 'T'; // T -> Terminal VENDA(CAIXA)
      dm.cds_parametroCONFIGURADO.asString := 'S';
      dm.cds_parametro.ApplyUpdates(0);
    end;
    // Buscar o número do título na tabela SéRIE
    if (sds_s.Active) then
      sds_s.Close;
    sds_s.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + '''' + dm.cds_parametroDADOS.asString + '''';
    sds_s.open;
    if (sds_s.IsEmpty) then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'T' + ''',' + '0)');
      Try
         dm.sqlsisAdimin.Commit(TD);
         serie := 'T';
         numTitulo := 0;
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
             [mbOk], 0);
      end;
    end
    else
    begin
      serie := sds_s.Fields[0].AsString;
      numTitulo := sds_s.Fields[1].AsInteger;
      strSql := 'UPDATE SERIES SET ULTIMO_NUMERO = ';
      strSql := strSql + IntToStr(numTitulo + 1);
      strSql := strSql + ' where SERIE = ';
      strSql := strSql + '''' + serie + '''';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
             [mbOk], 0);
      end;

    end;
end;

procedure TF_AUTOPECAS.ds_vendaNewRecord(DataSet: TDataSet);
begin
    ds_vendaCODMOVIMENTO.AsInteger := ds_movimentoCODMOVIMENTO.AsInteger;
    ds_vendaCODCLIENTE.AsInteger := ds_MovimentoCODCLIENTE.AsInteger;
    ds_vendaNOMECLIENTE.AsString := ds_MovimentoNOMECLIENTE.AsString;
    ds_vendaCODVENDEDOR.AsInteger := ds_MovimentoCODVENDEDOR.AsInteger;
    ds_vendaNOMEUSUARIO.AsString := ds_MovimentoNOMEUSUARIO.AsString;
    ds_vendaDATAVENDA.AsDateTime := Now;
    ds_vendaCODCCUSTO.AsInteger := ds_MovimentoCODALMOXARIFADO.AsInteger;
    ds_vendaCODUSUARIO.AsInteger := usulog;
    ds_vendaDATASISTEMA.AsDateTime := Now;
    ds_vendaDESCONTO.AsFloat := 0;
    ds_vendaMULTA_JUROS.AsFloat := 0;
    ds_vendaENTRADA.AsFloat := 0;
    ds_vendaVALOR_PAGAR.AsFloat := 0;
    ds_vendaAPAGAR.AsFloat := 0;
    ds_vendaN_PARCELA.AsInteger := 1;
    ds_vendaBANCO.AsInteger := 0;
    ds_vendaDATAVENCIMENTO.AsDateTime := ds_vendaDATAVENDA.AsDateTime  + 30;
    ds_vendaSTATUS.AsInteger:=0;

{  sqs_tit.Open;
  cdsVALOR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);
  cdsVALOR_PAGAR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);
  vrr := FloatToCurr(sqs_tit.Fields[0].AsFloat);
  sqs_tit.Close;}

end;

procedure TF_AUTOPECAS.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TF_AUTOPECAS.btn1Click(Sender: TObject);
begin
  procprod := 'PROC_PROD_COMPLETO';
  //fProcura_prodOficina.CheckBox1.Visible := False;
  //fProcura_prodOficina.RadioButton2.Visible := False;
  fProcura_prodOficina.Panel2.Visible := False;
  fProcura_prodOficina.Panel1.Visible := True;
  fProcura_prodOficina.ShowModal;
  edt_produto.Text := fProcura_prodOficina.cds_procCODPRO.AsString;
  edt_produto.SetFocus;
end;

procedure TF_AUTOPECAS.ExcluiItem1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     d_movdet.DataSet.Delete;
     (d_movdet.DataSet as TClientDataSet).ApplyUpdates(0);
     edt_produto.SetFocus;
  end
  else
    exit;
end;

procedure TF_AUTOPECAS.rocaPeloSimilar1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente Trocar esse item pelo similar?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     d_movdet.DataSet.Delete;
     (d_movdet.DataSet as TClientDataSet).ApplyUpdates(0);
     edt_produto.Clear;
     edt_produto.Text := ds_similarCODPROSIMILAR.AsString;
     BUSCA_PRODUTO;
     edt_produto.SetFocus;
  end
  else
    exit;
end;

procedure TF_AUTOPECAS.BUSCA_PRODUTO;
begin
  if (ds_movimento.State in [dsInactive]) then
     btn_incluir.Click;
  if (edt_produto.text = '') then
    exit;
  if (s_buscaPro.Active) then //Busco pelo Codigo de barra
      s_buscaPro.Close;
  s_buscaPro.Params[0].Clear;
  s_buscaPro.Params[1].Clear;
  s_buscaPro.Params[0].AsString := edt_produto.Text;
  s_buscaPro.Open;
  if (s_buscaPro.IsEmpty) then
  begin
      // if (MessageDlg('Produto não localizado pelo codigo de Barras,'+#13+#10+'   efetuar a busca pelo código do Produto ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNo, mrNone]) then
      // begin
      if (s_buscaPro.Active) then   //Busco pelo Codigo do Produto
          s_buscaPro.Close;
      s_buscaPro.Params[0].Clear;
      s_buscaPro.Params[1].Clear;
      s_buscaPro.Params[1].AsString := edt_produto.Text;
      s_buscaPro.Open;
      if (s_buscaPro.IsEmpty) then
      begin
        ShowMessage('Produto não localizado');
        edt_produto.SetFocus;
        Exit;
      end;
    //end;
  end;
  // Alimento a tabela Mivimento detalhe
  inseriMovDetalhe;
  edt_produto.Text := '';

end;

procedure TF_AUTOPECAS.ListaProdutos1Click(Sender: TObject);
begin
   btn1.Click;
end;

procedure TF_AUTOPECAS.btn12Click(Sender: TObject);
var
   XY: TPoint;
begin
     XY := Point(50, -10);
     XY := btn12.ClientToScreen(XY);
     pm2.Popup(XY.X, XY.Y + btn12.Height - 2);
end;

procedure TF_AUTOPECAS.rg1Click(Sender: TObject);
begin
  if (rg1.ItemIndex = 1) then
  begin
     ts1.TabVisible := True;
     ts2.TabVisible := False;
     //ts3.TabVisible := False;
     ts4.TabVisible := False;
  end
  else
  begin
     ts1.TabVisible := True;
     ts2.TabVisible := True;
     //ts3.TabVisible := True;
     ts4.TabVisible := False;
  end;

  if (ds_movimento.Active) then
   if (d_movimento.State in [dsBrowse]) then
      ds_movimento.Edit;
      
end;

procedure TF_AUTOPECAS.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_AUTOPECAS.ImprimirOramento1Click(Sender: TObject);
begin

  orcamento := 'sim';
  tipoimpressao := '';
  if (chk1.Checked = True) then
    tipoimpressao := 'txt';

  if (ds_Movimento.State in [dsInsert, dsEdit]) then
    btn_gravar.Click;
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '---------------------------------------------------------' ;
  Texto1 := DateTimeToStr(Now) + '               Cod. Orc.:  ' +
  IntToStr(ds_movimentoCODMOVIMENTO.AsInteger);
  Texto2 := '---------------------------------------------------------' ;
  Texto3 := 'Produto' ;
  Texto4 := 'Cod.Barra          UN       Qtde      V.Un.      V.Total ' ;
  Texto5 := DateTimeToStr(Now) + '              Total.: R$   ';
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  if (tipoimpressao = 'txt') then
  begin
    dlgOpen1.Execute;
    AssignFile(IMPRESSORA, dlgOpen1.FileName);
  end
  else
  begin
    AssignFile(IMPRESSORA,'LPT1:');
  end;
  //AssignFile(IMPRESSORA,'LPT1:');
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  Writeln(Impressora, cJustif, c17cpi, logradouro);
  Writeln(Impressora, cJustif, cep);
  Writeln(Impressora, cJustif, fone);
  Writeln(Impressora, cJustif , c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto1);
  Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c17cpi, texto3);
  Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  try
    ds_movdet.First;
    while not ds_movdet.Eof do
    begin
      ds_movdet.RecordCount;
      Writeln(Impressora, c17cpi + Format('%-40s',[ds_movdetPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[ds_movdetCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('     %-2s  ',[ds_movdetUN.Value]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[ds_movdetQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[ds_movdetPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('     %-6.2n',[ds_movdetVALTOTAL.value]));
      ds_movdet.next;
    end;
    {-----------------------------------------------------------}
    {-------------------Imprimi final do Pedido-----------------}
    total := ds_movdettotal.Value;
    Writeln(Impressora, c17cpi, texto);
    Write(Impressora, c17cpi, texto5);
    Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
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
  edt_produto.SetFocus;
end;

procedure TF_AUTOPECAS.ImprimirPedido1Click(Sender: TObject);
begin
  tipoimpressao := '';
  if (chk1.Checked = True) then
    tipoimpressao := 'txt';

  if (d_movimento.State in [dsInsert, dsEdit]) then
    btn_gravar.Click;
  if (tiporel = 'PEDIDO') then
    imprimePedido
  else
    imprimeCupom;
end;

procedure TF_AUTOPECAS.imprimeCupom;
begin
//  tipoimpressao := 'txt';
  //mostra veiculos do cliente
  if (ds_Veiculocli.Active) then
    ds_Veiculocli.Close;
  ds_Veiculocli.Params[0].Clear;
  ds_Veiculocli.Params[1].Clear;
  ds_Veiculocli.Params[2].Clear;
  ds_Veiculocli.Params[3].AsInteger := ds_MovimentoCOD_VEICULO.asInteger;
  ds_Veiculocli.Open;
  if (not ds_Veiculocli.IsEmpty) then
  begin
    modelo := ' - ' + ds_VeiculocliMARCA_MODELO.AsString;
    placa := 'Placa : ' + ds_VeiculocliPLACA.AsString + modelo;
  end;
  ds_Veiculocli.Close;

  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
   {----- aqui monto o endereço-----}
   logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
   cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
   ' - ' + dm.cds_empresaCEP.Value;
   fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
   ' / ' + dm.cds_empresaFONE_2.Value;
   Texto  := '---------------------------------------------------------' ;
   Texto1 := DateTimeToStr(Now) + '               Cod.:  ' +
      IntToStr(ds_vendaNOTAFISCAL.AsInteger) + ' - ' + ds_vendaSERIE.AsString;
   Texto2 := '---------------------------------------------------------' ;
   Texto3 := 'Produto' ;
   Texto4 := 'Cod.Barra          UN       Qtde      V.Un.      V.Total ' ;
   Texto5 := DateTimeToStr(Now) + '              Total.: R$   ';
   cliente := 'Cliente : ' + ds_MovimentoNOMECLIENTE.Value;
  {-------------------Imprimi Cabeçalho-----------------------}

  if (tipoimpressao = 'txt') then
  begin
    dlgOpen1.Execute;
    AssignFile(IMPRESSORA, dlgOpen1.FileName);
  end
  else
  begin
    AssignFile(IMPRESSORA,'LPT1:');
  end;
   Rewrite(IMPRESSORA);
   Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
   Writeln(Impressora, cJustif, c17cpi, logradouro);
   Writeln(Impressora, cJustif, cep);
   Writeln(Impressora, cJustif, fone);
   Writeln(Impressora, cJustif , c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
   Writeln(Impressora, c17cpi, cliente);
   Writeln(Impressora, cJustif, c17cpi, placa);
   Writeln(Impressora, c17cpi, texto);
   Writeln(Impressora, c17cpi, texto1);
   Writeln(Impressora, c17cpi, texto2);
   Writeln(Impressora, c17cpi, texto3);
   Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
   try
     ds_movdet.First;
     while not ds_movdet.Eof do
     begin
       ds_movdet.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[ds_movdetPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[ds_movdetCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('     %-2s  ',[ds_movdetUN.Value]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[ds_movdetQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[ds_movdetPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('     %-6.2n',[ds_movdetVALTOTAL.value]));
      ds_movdet.next;
     end;
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
     total := ds_movdettotal.Value;
     Writeln(Impressora, c17cpi, texto);
     Write(Impressora, c17cpi, texto5);
     Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
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
  edt_produto.SetFocus;
end;

procedure TF_AUTOPECAS.imprimePedido;
begin
  //Imprime Recibo
end;

procedure TF_AUTOPECAS.btn_procuraClick(Sender: TObject);
begin
    if (ds_cr.Active) then
      ds_cr.Close;
    if (ds_venda.Active) then
      ds_venda.Close;
    if (ds_movdet.Active) then
      ds_movdet.Close;
    if (ds_movimento.Active) then
      ds_movimento.Close;

    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.First;
    while not dm.cds_ccusto.Eof do
    begin
      fFiltroMovimento.ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
      dm.cds_ccusto.Next;
    end;
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
    dm.cds_parametro.Open;
    fFiltroMovimento.edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
    dm.cds_parametro.Close;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.BitBtn9.Caption := 'Ok';

    fFiltroMovimento.Edit3.Text := '3';
    fFiltroMovimento.Edit4.Text := 'VENDAS';
    fFiltroMovimento.Label10.Caption := 'Vendas';
    fFiltroMovimento.MMJPanel1.Background.EndColor := clTeal;
    fFiltroMovimento.MMJPanel2.Background.EndColor := clTeal;

    fFiltroMovimento.ShowModal;
    if ds_Movimento.Active then
      ds_movimento.Close;
    ds_movimento.Params[0].AsInteger:= fFiltroMovimento.cod_mov;
    ds_movimento.Open;
    medt2.Text := ds_movimentoPLACA.AsString;
    if ds_movdet.Active then
      ds_movdet.Close;
    ds_movdet.Params[0].Clear;
    ds_movdet.Params[1].AsInteger := ds_MovimentoCODMOVIMENTO.AsInteger;
    ds_movdet.Open;

    if (ds_similar.Active) then
        ds_similar.Close;
    ds_similar.Params[0].AsInteger := ds_movdetCODPRODUTO.AsInteger;
    ds_similar.Open;

   ts1.TabVisible := True;
   ts2.TabVisible := False;
   //ts3.TabVisible := False;
   ts4.TabVisible := False;
   rg1.ItemIndex := 1;
    if (ds_movimentoCODNATUREZA.AsInteger = 3) then
    begin
      if ds_venda.Active then
        ds_venda.Close;
      ds_venda.Params[0].Clear;
      ds_venda.Params[1].AsInteger := ds_MovimentoCODMOVIMENTO.AsInteger;
      ds_venda.Open;
      if (not ds_venda.IsEmpty) then
        cbb3.Text := ds_vendaPRAZO.AsString;
      if (ds_vendaFORMARECEBIMENTO.asString <> '') then
      begin
          utilcrtitulo := Tutils.Create;
          cbb5.ItemIndex := utilcrtitulo.retornaForma(ds_vendaFORMARECEBIMENTO.asString);
      end;
      if (not dm.cds_7_contas.Active) then
         dm.cds_7_contas.Open;
      if (dm.cds_7_contas.Locate('CODIGO', ds_vendaCAIXA.AsInteger, [loCaseInsensitive])) then
        cbb4.Text := dm.cds_7_contas.Fields[2].asString;

      if ds_cr.Active then
        ds_cr.Close;
      ds_cr.Params[0].AsInteger := ds_vendaCODVENDA.AsInteger;
      ds_cr.Open;

      ts1.TabVisible := True;
      ts2.TabVisible := True;
      //ts3.TabVisible := False;
      ts4.TabVisible := False;
      rg1.ItemIndex := 0;
    end;
      {
      //mostra veiculos do cliente
      if (ds_Veiculocli.Active) then
        ds_Veiculocli.Close;
      ds_Veiculocli.Params[0].Clear;
      ds_Veiculocli.Params[1].Clear;
      ds_Veiculocli.Params[2].Clear;
      ds_Veiculocli.Params[3].AsInteger := ds_MovimentoCOD_VEICULO.asInteger;
      ds_Veiculocli.Open;
      }
end;

procedure TF_AUTOPECAS.btn_cancelarClick(Sender: TObject);
begin
  d_venda.DataSet.Cancel;
  d_movdet.DataSet.Cancel;
  d_movimento.DataSet.Cancel;
end;

procedure TF_AUTOPECAS.btn_excluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     // Verificar se tem Recebimento Pago
     if (sTitulo.Active) then
       sTitulo.Close;
     sTitulo.Params[0].AsInteger := ds_vendaCODVENDA.AsInteger;
     sTitulo.Open;
     if (not sTitulo.IsEmpty) then
     begin
        MessageDlg('Existem Títulos já Recebidos, para excluir esse pedido '+#13+#10+'   primeiro mude o Status do Título para Pendente'+#13+#10+'         e depois execute a Exclusão novamente', mtWarning, [mbOK], 0);
        exit;
     end;
     // Excluindo Venda
     try
       d_venda.DataSet.Delete;
       (d_venda.DataSet as TClientDataSet).ApplyUpdates(0);
     Except
       ShowMessage('Erro ao excluir Venda');
       exit;
     end;
     // Excluindo Movimento
     try
       d_movimento.DataSet.Delete;
       (d_movimento.DataSet as TClientDataSet).ApplyUpdates(0);
     Except
       ShowMessage('Erro ao excluir Venda');
       exit;
     end;
  end
  else
    exit;
end;

procedure TF_AUTOPECAS.Boleto1Click(Sender: TObject);
begin
  {  if (ds_cr.Active) then
        ds_cr.Close;
    ds_cr.Params[0].AsInteger := scdsCp_procID_SOCIO.AsInteger;
    ds_cr.Open;
    while (not ds_cr.Eof) do
    begin
      F_Boletos.CRIA_BOLETO_MEMORIA;
    end;
    }
    F_Boletos := TF_Boletos.Create(Application);
    try
      F_Boletos.varLocal := 'Terminal';
      {if (F_Boletos.s_cliente.Active) then
         F_Boletos.s_cliente.Close;
      F_Boletos.s_cliente.Params[0].AsInteger := ds_movimentoCODCLIENTE.AsInteger;
      F_Boletos.s_cliente.Open;
       }
      if (F_Boletos.ds_cr.Active) then
         F_Boletos.ds_cr.Close;
      F_Boletos.ds_cr.Params[1].Clear;
      F_Boletos.ds_cr.Params[0].AsInteger := ds_vendaCODVENDA.AsInteger;
      F_Boletos.ds_cr.Open;

      F_Boletos.ShowModal;
    finally
      F_Boletos.Free;
    end;
end;

procedure TF_AUTOPECAS.d_vendaDataChange(Sender: TObject; Field: TField);
begin
    if (d_venda.State in [dsEdit]) then
    begin
      if (sTitulo.Active) then
        sTitulo.Close;
      sTitulo.Params[0].AsInteger := ds_vendaCODVENDA.AsInteger;
      sTitulo.Open;
      if (not sTitulo.IsEmpty) then
      begin
         MessageDlg('Existem Títulos já Recebidos, Alteração não Permitida', mtWarning, [mbOK], 0);
         exit;
      end;
      if (d_movimento.State in [dsBrowse]) then
         d_movimento.DataSet.Edit;
    end;
end;

procedure TF_AUTOPECAS.consulta_titulos;
begin
     if (sTitulo.Active) then
       sTitulo.Close;
     sTitulo.Params[0].AsInteger := ds_vendaCODVENDA.AsInteger;
     sTitulo.Open;
     if (not sTitulo.IsEmpty) then
     begin
        MessageDlg('Existem Títulos já Recebidos, Alteração não Permitida', mtWarning, [mbOK], 0);
        exit;
     end;

end;

procedure TF_AUTOPECAS.btnProdutoClick(Sender: TObject);
var codpro : String;
begin
  fProdutoCadastro:=TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.btnProcurar.Visible := False;
    if (dm.cds_produto.Active) then
      dm.cds_produto.close;
    dm.cds_produto.Params[0].AsInteger := ds_movdetCODPRODUTO.AsInteger;
    dm.cds_produto.Open;
    dm.cds_produto.Edit;
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.btnProcurar.Visible := True;
    fProdutoCadastro.Free;
  end;
end;

procedure TF_AUTOPECAS.medt1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
     if (ds_Veiculocli.Active) then
       ds_Veiculocli.Close;
     ds_Veiculocli.Params[0].Clear;
     ds_Veiculocli.Params[3].Clear;
     ds_Veiculocli.Params[1].AsInteger := ds_movimentoCODCLIENTE.AsInteger;
     ds_Veiculocli.Params[2].AsString := medt2.Text;
     ds_Veiculocli.Open;
     if (ds_movimento.State in [dsInsert, dsEdit]) then
     begin
       ds_MovimentoCOD_VEICULO.AsInteger := ds_VeiculocliCOD_VEICULO.AsInteger;
       ds_movimentoMARCA_MODELO.AsString := ds_VeiculocliMARCA_MODELO.AsString;
       ds_movimentoCHASSIS.AsString := ds_VeiculocliCHASSIS.AsString;
     end;
 end;
end;

procedure TF_AUTOPECAS.dbeSerieExit(Sender: TObject);
begin
  if d_venda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then
    begin
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      ds_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      ds_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
      //É nota fiscal ?
      {
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
        ds_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
      end;
      }
    end;
  end;
end;

procedure TF_AUTOPECAS.btnSerieClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
    begin
    if d_venda.State=dsBrowse then
     ds_venda.Edit;
     ds_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
     ds_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
   finally
    scds_serie_proc.Close;
    fProcurar.Free;
   end;
   //DBEdit2.SetFocus;
end;

procedure TF_AUTOPECAS.btn4Click(Sender: TObject);
var
   XY: TPoint;
begin
     XY := Point(50, -10);
     XY := btn4.ClientToScreen(XY);
     pm3.Popup(XY.X, XY.Y + btn4.Height - 2);
end;

procedure TF_AUTOPECAS.lbl3Click(Sender: TObject);
begin
  if (varform <> '') then
    varform := '';
  if (dm.cadastroClienteTipo = 'COMPLETO') then
  begin
    fClienteCadastro := TfClienteCadastro.Create(Application);
    try
      fClienteCadastro.cds_cli.Params[0].AsInteger := ds_movimentoCODCLIENTE.AsInteger;
      fClienteCadastro.cds_cli.Open;
      if fClienteCadastro.cdsEnderecoCli.Active then
        fClienteCadastro.cdsEnderecoCli.Close;
      fClienteCadastro.cdsEnderecoCli.Params[0].Clear;
      fClienteCadastro.cdsEnderecoCli.Params[1].AsInteger := ds_movimentoCODCLIENTE.AsInteger;
      fClienteCadastro.cdsEnderecoCli.Open;
      fClienteCadastro.ShowModal;
    finally
      fClienteCadastro.Free;
      varform := '';
    end;
  end;
  if (dm.cadastroClienteTipo = 'SIMPLES') then
  begin
    fCliente1 := TfCliente1.Create(Application);
    try
      fCliente1.ShowModal;
    finally
      fCliente1.Free;
      varform := '';
    end;
  end;
end;

procedure TF_AUTOPECAS.AbrirOS1Click(Sender: TObject);
begin
  F_FiltroOS := TF_FiltroOS.Create(Application);
  try
    F_FiltroOS.ShowModal;
  finally
    F_FiltroOS.Free;
  end;
end;

procedure TF_AUTOPECAS.AprovarOramento1Click(Sender: TObject);
var codosvar :integer;
begin
 {
  if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_OS, 1) AS INTEGER) AS CODOS FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  codosvar := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;


  strSql := 'INSERT OS(CODOS, CODCLIENTE, CODVEICULO, CODMOVIMENTO, ' +
  ' DATAMOVIMENTO, DATA_SISTEMA, STATUS, DATA_INI) VALUES (';

  strSql := strSql + IntToStr(codosvar) + ', ';
  strSql := strSql + IntToStr(ds_movimentoCODCLIENTE.AsInteger) + ', ';
  strSql := strSql + IntToStr(ds_movimentoCOD_VEICULO.AsInteger) + ', ';
  strSql := strSql + IntToStr(ds_movimentoCODMOVIMENTO.AsInteger) + ', ';
  strSql := strSql + QuotedStr(FormatDateTime('MM/dd/yyyy',ds_movimentoDATAMOVIMENTO.AsDateTime)) + ', ';
  strSql := strSql + QuotedStr(FormatDateTime('MM/dd/yyyy',NOW)) + ', ';
  strSql := strSql + QuotedStr('PENDENTE') + ', ';
  strSql := strSql + QuotedStr(FormatDateTime('MM/dd/yyyy',NOW)) + ')';

  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSql);
  dm.sqlsisAdimin.Commit(TD);
  }
end;

procedure TF_AUTOPECAS.buscaSimilar;
begin
  if (ds_similar.Active) then
     ds_similar.Close;
  ds_similar.Params[0].AsInteger := ds_movdetCODPRODUTO.AsInteger;
  ds_similar.Open;
end;

procedure TF_AUTOPECAS.btn6Click(Sender: TObject);
begin
  F_SIMILARES := TF_SIMILARES.Create(Application);
  try
    F_SIMILARES.ShowModal;
  finally
    F_SIMILARES.Free;
  end;
end;

procedure TF_AUTOPECAS.inseriMovDetalhe;
var
 //  FMov: TMovimento;
 ID_MOVDET :Integer;
 sql : string;
begin
   dm.sqlsisAdimin.StartTransaction(TD);

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
  sql := sql +  IntToStr(codMovSaida) + ', ' + IntToStr(1) + ', ';
  sql := sql +  QuotedStr(scds_produto_procUNIDADEMEDIDA.AsString) + ', ';
  DecimalSeparator := '.';
  sql := sql +  FloatToStr(scds_produto_procVALOR_PRAZO.AsFloat)  + ', ';
  sql := sql +  QuotedStr(scds_produto_procPRODUTO.AsString) + ', ';

  // if (tipo_busca = '3') then  // só preencho o campo Lote se o parametro usa lote for 3
  //   sql := sql + QuotedStr(codlote) + ')'
  // else
  sql := sql + 'null' + ')' ;

  dm.sqlsisAdimin.ExecuteDirect(sql);
  DecimalSeparator := ',';
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o Iten não foi gravada.', mtError,
         [mbOk], 0);
  end;

   if (ds_movdet.Active) then
       ds_movdet.Close;
   ds_movdet.Params[0].Clear;
   ds_movdet.Params[1].AsInteger := codMovSaida;
   ds_movdet.Open;

 { try
      dm.sqlsisAdimin.StartTransaction(TDA);
      FMov := TMovimento.Create;
      FMov.MovDetalhe.CodMov        := codMovSaida;
      FMov.MovDetalhe.CodProduto    := s_buscaProCODPRODUTO.AsInteger;
      FMov.MovDetalhe.Qtde          := 1;
      FMov.MovDetalhe.Lote          := '';
      //FMov.MovDetalhe.Baixa         := '1';
      FMov.MovDetalhe.Lote          := '';
      FMov.MovDetalhe.

      FMov.MovDetalhe.inserirMovDet;
      dm.sqlsisAdimin.Commit(TDA);
  finally
      FMov.Free;
  end;
  }
  { if (not ds_movdet.Active) then
       ds_movdet.Open;
    ds_movdet.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    ds_movdetCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    ds_movdetCODMOVIMENTO.AsInteger := ds_movimentoCODMOVIMENTO.AsInteger;
    ds_movdetCOD_BARRA.AsString := edt_produto.Text;
    ds_movdetCODPRODUTO.AsInteger := s_buscaProCODPRODUTO.AsInteger;
    ds_movdetCODPRO.AsString := s_buscaProCODPRO.AsString;
    ds_movdetPRODUTO.Value := s_buscaProPRODUTO.Value;
    ds_movdetDESCPRODUTO.Value := s_buscaProPRODUTO.Value;
    ds_movdetCOD_COMISSAO.AsInteger := s_buscaProCOD_COMISSAO.AsInteger;
    ds_movdetQTDE_PCT.AsFloat := s_buscaProQTDE_PCT.AsFloat;
    ds_movdetUN.AsString := s_buscaProUNIDADEMEDIDA.AsString;
//      ds_movdetLOCALIZACAO.AsString := s_buscaProLOCALIZACAO.AsString;
//      ds_movdetESTOQUEATUAL.AsFloat := s_buscaProESTOQUEATUAL.AsFloat;
    ds_movdetQUANTIDADE.AsFloat := 1;
    ds_movdetQTDE_ALT.AsFloat := 1;
    ds_movdetCODALMOXARIFADO.AsInteger := 1; //s_buscaProCODALMOXARIFADO.AsInteger;
//      ds_movdetALMOXARIFADO.AsString := s_buscaProALMOXARIFADO.AsString;
    ds_movdetICMS.AsFloat := s_buscaProICMS.AsFloat;
    ds_movdetPRECO.AsFloat := s_buscaProVALOR_PRAZO.AsFloat;
    ds_movdetVALTOTAL.Value := ds_movdetQUANTIDADE.AsFloat * ds_movdetPRECO.AsFloat;
    ds_movdet.Post;
   }
end;

procedure TF_AUTOPECAS.inseriMovimento;
var
  FMov: TMovimento;
begin
  // INSERIR MOVIMENTO
  try
      dm.sqlsisAdimin.StartTransaction(TDA);
      FMov := TMovimento.Create;
      FMov.CodMov      := 0;
      FMov.CodCCusto   := caixa;
      FMov.CodCliente  := clienteConsumidor;
      if (rg1.ItemIndex = 1) then
        FMov.CodNatureza := 16  // Orçamento
      else
        FMov.CodNatureza := 3; // Venda
      FMov.Status      := 0;
      FMov.CodUsuario  := 1;
      FMov.CodVendedor := 1;
      FMov.DataMov     := Now;
      //FMov.Obs         := cdsInventCODIVENTARIO.AsString;
      codMovSaida := FMov.inserirMovimento(0);
      dm.sqlsisAdimin.Commit(TDA);
  finally
      FMov.Free;
  end;
end;

function TF_AUTOPECAS.buscaProdLista(codBarra, ProdLista: String): Integer;
var varsql:string;
begin
  if (ProdLista = 'Prod') then
  begin
    varsql := 'select  prod.CODPRODUTO ' +
         ', prod.COD_BARRA '+
         ', prod.PRODUTO    '+
         ', prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT ' +
         ', prod.ICMS ' +
         ', prod.CODALMOXARIFADO ' +
         ', prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO ' +
         ', prod.VALORUNITARIOATUAL ' +
         ', prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO ' +
         ', prod.RATEIO ' +
         ', prod.TIPO ' +
         ', prod.LOCALIZACAO ' +
         ', prod.ESTOQUEATUAL ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' where ';
        if scds_produto_proc.Active then
          scds_produto_proc.Close;
        scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + geraCodBarra(codBarra,0) + '''';
        scds_produto_proc.Open;
        if scds_produto_proc.IsEmpty then
        begin
          scds_produto_proc.Close;
          scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + codBarra + '''';
          scds_produto_proc.Open;
        end;

        if scds_produto_proc.IsEmpty then
        begin
          scds_produto_proc.Close;
          scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + geraCodBarra(codBarra,1) + '''';
          scds_produto_proc.Open;
        end;

        if scds_produto_proc.IsEmpty then
        begin
          scds_produto_proc.Close;
          scds_produto_proc.CommandText := varsql + ' CODPRO = ' + QuotedStr(edt_produto.Text);
          scds_produto_proc.Open;
         // BuscaPeloCdigo1.Click;
          if sProcuraProd.Active then
            sProcuraProd.Close;
          sProcuraProd.Params[0].Clear;
          sProcuraProd.Params[1].Clear;
          sProcuraProd.Params[2].AsString := edt_produto.Text;
          sProcuraProd.Open;
          if sProcuraProd.IsEmpty then
            exit;
         // else
         //   inseriMovDetalhe;
        end;
      {  if (not scds_produto_proc.IsEmpty) then
        begin
          codproduto := scds_produto_procCODPRODUTO.AsInteger;
          if scds_produto_procQTDE_PCT.AsFloat >= 1 then
            precovenda := scds_produto_procVALOR_PRAZO.AsFloat / scds_produto_procQTDE_PCT.AsFloat
          else
            precovenda := scds_produto_procVALOR_PRAZO.AsFloat;
        end;
       }
  end;
  if (scds_produto_proc.IsEmpty) then
  begin
    result := 1;
    exit;
  end
  else
    result := 0;
end;

procedure TF_AUTOPECAS.buscaProduto;
var
 s:string;
begin
  if (edt_produto.Text = '') then
    exit;
  if (ds_Movimento.State in [dsInactive, dsBrowse]) then
    btn_incluir.Click;
//  else
//    ds_Mov_det.Append;
  s:='';
  if (buscaProdLista(edt_produto.Text, 'Prod') = 1) then
  begin
    //cds_mov_det.Cancel;
    edt_produto.SetFocus;
    exit;
  end;
  if (scds_produto_proc.IsEmpty) then
  begin
    // cds_mov_det.Cancel;
    edt_produto.SetFocus;
    exit;
  end;

  inseriMovDetalhe;

end;

function TF_AUTOPECAS.geraCodBarra(vlrBarra: String; i: integer): String;
var s: string;
   j: integer;
begin
  j := 0;
  //Verifico quantos digitos tem no código de barra
  IF (length(edt_produto.Text) >= 13) then
  begin
    for i := 1 to 13 do
    begin
      s:= s+ copy(edt_produto.text,I,1);
      j := i;
    end;
    result := s;
  end;
  if (j = 0) then
  IF (length(edt_produto.Text) < 10) then
  begin
    s:='';
    for i:=1 to 7 do
    begin
      s:= s+ copy(edt_produto.text,I,1);
      j := i;
    end;
    result := s + '00001';
  end;
  if (j = 1) then
  IF (length(edt_produto.Text) < 10) then
  begin
    s:='';
    for i:=1 to 13 do
    begin
      if (i > 7) then
        s:= s+ copy(edt_produto.text,I,1);
    end;
    result := '0000000' + s;
  end;

  IF (length(edt_produto.Text) = 10) then
  begin
    result := edt_produto.text
  end;

  IF (length(edt_produto.Text) = 11) then
  begin
    result := edt_produto.text
  end;
  IF (length(edt_produto.Text) = 12) then
  begin
    result := edt_produto.text
  end;

  IF (length(edt_produto.Text) >= 20) then
  begin
    s:='';
    for i := 1 to 7 do    //Pego apenas os 7 primeiros caracteres
    begin
      s:= s+ copy(edt_produto.text,I,1);
    end;
    result := s + '00001';
  end;

end;

procedure TF_AUTOPECAS.btn7Click(Sender: TObject);
begin
   fClienteVeiculo := TfClienteVeiculo.Create(Application);
   try
     //fClienteVeiculo.chassi := chassi;
     fClienteVeiculo.varPlaca := medt2.Text;
     // o cadastro do veículo não deve ter o cliente na OS terá;
     cod_cli := 1;//cds_MovimentoCODCLIENTE.AsInteger;
     fClienteVeiculo.ShowModal;
     medt2.Text := fClienteVeiculo.varPlaca;
    { if (ds_Veiculocli.Active) then
       ds_Veiculocli.Close;
     ds_Veiculocli.Params[1].Clear;
     ds_Veiculocli.Params[0].AsString := fClienteVeiculo.varPlaca;
     ds_Veiculocli.Open;
     }
     if (ds_movimento.State in [dsInsert, dsEdit]) then
     begin
       ds_MovimentoCOD_VEICULO.AsInteger := ds_VeiculocliCOD_VEICULO.AsInteger;
       ds_movimentoMARCA_MODELO.AsString := ds_VeiculocliMARCA_MODELO.AsString;
       ds_movimentoCHASSIS.AsString := ds_VeiculocliCHASSIS.AsString;
       { if (sdsVeiculoCli.Active) then
          sdsVeiculoCli.Close;
        sdsVeiculoCli.Params[0].AsInteger := cds_VeiculocliCOD_VEICULO.asinteger;
        sdsVeiculoCli.Open;
        if (not sdsVeiculoCli.IsEmpty) then
        begin
          dbeCliente.Text := IntToStr(sdsVeiculoCli.Fields[0].asInteger);
          DBEdit3.Text := sdsVeiculoCli.Fields[1].AsString;
          cds_MovimentoCODCLIENTE.AsInteger := sdsVeiculoCli.Fields[0].asInteger;
          cds_MovimentoNOMECLIENTE.AsString := sdsVeiculoCli.Fields[1].AsString;
          cds_MovimentoOBS.AsString := sdsVeiculoCli.Fields[2].AsString;
          prazo := sdsVeiculoCli.Fields[3].AsFloat;
          DBComboBox1.SetFocus;
        end
        else
          dbeCliente.SetFocus;
        }
     end;
   finally
     fClienteVeiculo.varplaca := '';
     fClienteVeiculo.Free;
   end;

end;

end.
