unit uVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, ComCtrls, DBCtrls,
  Mask, DBLocal, DBLocalS, rpcompobase, rpvclreport, DBXpress, UCHist_Base,
  UCHistDataset, JvExDBGrids, JvDBGrid, JvExStdCtrls, JvRadioButton,
  JvCombobox, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvDBControls, comobj , uVendaCls;

type
  TfVendas = class(TfPai)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    dbeCliente: TDBEdit;
    btnClienteProcura: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
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
    cds_Mov_detTotalPedido: TAggregateField;
    DtSrc1: TDataSource;
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
    DataSource1: TDataSource;
    dtProduto: TDataSource;
    DataSource2: TDataSource;
    GroupBox5: TGroupBox;
    ds_ccusto: TDataSource;
    MaskEdit1: TMaskEdit;
    BitBtn9: TBitBtn;
    VCLReport1: TVCLReport;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    Label14: TLabel;
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
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    Finalizar1: TMenuItem;
    ComboBox1: TComboBox;
    MMJPanel3: TMMJPanel;
    Label15: TLabel;
    ExcluiProduto1: TMenuItem;
    IncluiProduto1: TMenuItem;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    ComboBox2: TComboBox;
    Label17: TLabel;
    sds_Mov_DetCODIGO: TStringField;
    cds_Mov_detCODIGO: TStringField;
    Oramento1: TMenuItem;
    Label19: TLabel;
    sdslote: TSQLDataSet;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    Label20: TLabel;
    DBComboBox1: TDBComboBox;
    sds_proc: TSQLDataSet;
    sds_procCODPRODUTO: TIntegerField;
    sds_procTIPO: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    PageControl1: TPageControl;
    Itens: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    dbeProduto: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit6: TDBEdit;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsDetalhe: TSQLDataSet;
    dspDetalhe: TDataSetProvider;
    cdsDetalhe: TClientDataSet;
    sds_Mov_DetLOTES: TStringField;
    cds_Mov_detLOTES: TStringField;
    cdsLotesMem: TClientDataSet;
    cdsLotesMemCODPRO: TStringField;
    cdsLotesMemLOTE: TStringField;
    cdsLotesMemESTOQUE: TFloatField;
    cdsLotesMem2: TClientDataSet;
    cdsLotesMem2CODPRO: TStringField;
    cdsLotesMem2LOTE: TStringField;
    cdsLotesMem2ESTOQUE: TFloatField;
    sdsDetalheCODPRODMP: TIntegerField;
    sdsDetalheSUM: TFloatField;
    cdsDetalheCODPRODMP: TIntegerField;
    cdsDetalheSUM: TFloatField;
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
    sdsCODPRODUTO: TIntegerField;
    cdsCODPRODUTO: TIntegerField;
    sdsDetalheUSAPRECO: TStringField;
    cdsDetalheUSAPRECO: TStringField;
    BitBtn4: TBitBtn;
    sdsLoteRepetido: TSQLDataSet;
    Label10: TLabel;
    sdsVeiculoCli: TSQLDataSet;
    sds_MovimentoCNPJ: TStringField;
    cds_MovimentoCNPJ: TStringField;
    sMatPrima: TSQLDataSet;
    dMatPrima: TDataSetProvider;
    cMatPrima: TClientDataSet;
    sMatPrimaCODMAT: TIntegerField;
    sMatPrimaCODPRODUTO: TIntegerField;
    sMatPrimaCODPRODMP: TIntegerField;
    sMatPrimaQTDEUSADA: TFloatField;
    sMatPrimaTIPOUSO: TStringField;
    sMatPrimaUSAPRECO: TStringField;
    sMatPrimaESTOQUEATUAL: TFloatField;
    cMatPrimaCODMAT: TIntegerField;
    cMatPrimaCODPRODUTO: TIntegerField;
    cMatPrimaCODPRODMP: TIntegerField;
    cMatPrimaQTDEUSADA: TFloatField;
    cMatPrimaTIPOUSO: TStringField;
    cMatPrimaUSAPRECO: TStringField;
    cMatPrimaESTOQUEATUAL: TFloatField;
    sMatPrimaCODPRO: TStringField;
    sMatPrimaUNIDADEMEDIDA: TStringField;
    sMatPrimaPRODUTO: TStringField;
    cMatPrimaCODPRO: TStringField;
    cMatPrimaUNIDADEMEDIDA: TStringField;
    cMatPrimaPRODUTO: TStringField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    sMatPrimaPRECOMEDIO: TBCDField;
    cMatPrimaPRECOMEDIO: TBCDField;
    sdsEstoque: TSQLDataSet;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    cdsEstoqueCOD: TIntegerField;
    cdsEstoqueCODPROD: TStringField;
    cdsEstoqueSUM: TFloatField;
    cdsETotal: TClientDataSet;
    sdsETotal: TSQLDataSet;
    dspETotal: TDataSetProvider;
    cdsETotalCODPRODUTO: TIntegerField;
    cdsETotalQUANTIDADE: TFloatField;
    cdsETotalPRECO: TFloatField;
    UCHist_DataSetMov: TUCHist_DataSet;
    UCControlHistoricoVenda: TUCControlHistorico;
    UCHist_DataSetMovDet: TUCHist_DataSet;
    DBEdit1: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    btVendedor: TBitBtn;
    sds_Mov_DetDESCPRODUTO: TStringField;
    cds_Mov_detDESCPRODUTO: TStringField;
    sds_Mov_DetPESO_QTDE: TFloatField;
    cds_Mov_detPESO_QTDE: TFloatField;
    DBEdit17: TDBEdit;
    sPrazo: TSQLDataSet;
    sPrazoPRAZORECEBIMENTO: TSmallintField;
    sPermissao: TSQLDataSet;
    sPermissaoUCUSERNAME: TStringField;
    sPermissaoUCLOGIN: TStringField;
    sPermissaoUCPROFILE: TIntegerField;
    cdslista: TClientDataSet;
    cdslistaUNIDADE: TStringField;
    cdslistaPRECOLISTA: TFloatField;
    cdslistaCODIGO: TStringField;
    cdslistaCODPRODUTO: TIntegerField;
    cdslistaCODFORNECEDOR: TIntegerField;
    cdslistaPRODUTO: TStringField;
    dsplista: TDataSetProvider;
    sdslista: TSQLDataSet;
    sdslistaUNIDADE: TStringField;
    sdslistaPRECOLISTA: TFloatField;
    sdslistaCODIGO: TStringField;
    sdslistaCODPRODUTO: TIntegerField;
    sdslistaCODFORNECEDOR: TIntegerField;
    sdslistaPRODUTO: TStringField;
    SP_LIMITE: TSQLStoredProc;
    edChassi: TEdit;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoOBSCLI: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoOBSCLI: TStringField;
    BitBtn7: TBitBtn;
    Orcamento: TTabSheet;
    RadioPedido: TJvRadioButton;
    cbPrazo: TJvComboBox;
    Label13: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    RadioOrcamento: TJvRadioButton;
    Label24: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    sds_MovimentoPRAZO_ENT: TIntegerField;
    sds_MovimentoVAL_PROP: TDateField;
    sds_MovimentoFORMA_PAG: TStringField;
    sds_MovimentoVALOR_FRETE: TFloatField;
    cds_MovimentoPRAZO_ENT: TIntegerField;
    cds_MovimentoVAL_PROP: TDateField;
    cds_MovimentoFORMA_PAG: TStringField;
    cds_MovimentoVALOR_FRETE: TFloatField;
    DBEdit14: TDBEdit;
    DBEdit18: TDBEdit;
    Btn: TBitBtn;
    s_jorvic: TSQLDataSet;
    ds_jorvic: TDataSetProvider;
    cds_j: TClientDataSet;
    s_jorvicRAZAOSOCIAL: TStringField;
    s_jorvicCNPJ: TStringField;
    s_jorvicLOGRADOURO: TStringField;
    s_jorvicCIDADE: TStringField;
    s_jorvicBAIRRO: TStringField;
    s_jorvicUF: TStringField;
    s_jorvicCEP: TStringField;
    s_jorvicDDD: TStringField;
    s_jorvicTELEFONE: TStringField;
    s_jorvicDADOSADICIONAIS: TStringField;
    s_jorvicNUMERO: TStringField;
    s_jorvicDATAMOVIMENTO: TDateField;
    s_jorvicCODMOVIMENTO: TIntegerField;
    cds_jRAZAOSOCIAL: TStringField;
    cds_jCNPJ: TStringField;
    cds_jLOGRADOURO: TStringField;
    cds_jCIDADE: TStringField;
    cds_jBAIRRO: TStringField;
    cds_jUF: TStringField;
    cds_jCEP: TStringField;
    cds_jDDD: TStringField;
    cds_jTELEFONE: TStringField;
    cds_jDADOSADICIONAIS: TStringField;
    cds_jNUMERO: TStringField;
    cds_jDATAMOVIMENTO: TDateField;
    cds_jCODMOVIMENTO: TIntegerField;
    btnTransp: TBitBtn;
    cbTransportadora: TComboBox;
    Label25: TLabel;
    cbTpTransp: TComboBox;
    Label26: TLabel;
    sds_MovimentoCODTRANSP: TIntegerField;
    sds_MovimentoTPFRETE: TStringField;
    cds_MovimentoCODTRANSP: TIntegerField;
    cds_MovimentoTPFRETE: TStringField;
    Edit1: TEdit;
    Label27: TLabel;
    sds_MovimentoCODPEDIDO: TIntegerField;
    cds_MovimentoCODPEDIDO: TIntegerField;
    sqlCusto: TSQLQuery;
    sds_Mov_DetSTATUS: TStringField;
    cds_Mov_detSTATUS: TStringField;
    sds_Mov_DetVALOR_DESCONTO: TFloatField;
    cds_Mov_detVALOR_DESCONTO: TFloatField;
    dbedtVALOR_DESCONTO: TDBEdit;
    lbl1: TLabel;
    DBEdit19: TDBEdit;
    Label28: TLabel;
    sds_Mov_DetOBS: TStringField;
    cds_Mov_detOBS: TStringField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    sdsloteCODPRO: TStringField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRODUTO: TStringField;
    cdslotesCODPRO: TStringField;
    sdslotePRECO: TFloatField;
    cdslotesPRECO: TFloatField;
    Label29: TLabel;
    edCfop: TEdit;
    sds_Mov_DetCFOP: TStringField;
    cds_Mov_detCFOP: TStringField;
    sqlBCfop: TSQLQuery;
    sds_Mov_DetVALOR_ICMS: TFloatField;
    sds_Mov_DetPIPI: TFloatField;
    sds_Mov_DetVIPI: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetCSOSN: TStringField;
    sds_Mov_DetNITEMPED: TIntegerField;
    sds_Mov_DetPEDIDO: TStringField;
    sds_Mov_DetCST: TStringField;
    sds_Mov_DetVLR_BASE: TFloatField;
    sds_Mov_DetVLR_BASEICMS: TFloatField;
    sds_Mov_DetFRETE: TFloatField;
    sds_Mov_DetICMS_SUBST: TFloatField;
    sds_Mov_DetICMS_SUBSTD: TFloatField;
    sds_Mov_DetVALOR_SEGURO: TFloatField;
    sds_Mov_DetVALOR_OUTROS: TFloatField;
    sds_Mov_DetNCM: TStringField;
    sds_Mov_DetII: TFloatField;
    sds_Mov_DetBCII: TFloatField;
    sds_Mov_DetCSTIPI: TStringField;
    sds_Mov_DetCSTPIS: TStringField;
    sds_Mov_DetCSTCOFINS: TStringField;
    cds_Mov_detVALOR_ICMS: TFloatField;
    cds_Mov_detPIPI: TFloatField;
    cds_Mov_detVIPI: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detCSOSN: TStringField;
    cds_Mov_detNITEMPED: TIntegerField;
    cds_Mov_detPEDIDO: TStringField;
    cds_Mov_detCST: TStringField;
    cds_Mov_detVLR_BASE: TFloatField;
    cds_Mov_detVLR_BASEICMS: TFloatField;
    cds_Mov_detFRETE: TFloatField;
    cds_Mov_detICMS_SUBST: TFloatField;
    cds_Mov_detICMS_SUBSTD: TFloatField;
    cds_Mov_detVALOR_SEGURO: TFloatField;
    cds_Mov_detVALOR_OUTROS: TFloatField;
    cds_Mov_detNCM: TStringField;
    cds_Mov_detII: TFloatField;
    cds_Mov_detBCII: TFloatField;
    cds_Mov_detCSTIPI: TStringField;
    cds_Mov_detCSTPIS: TStringField;
    cds_Mov_detCSTCOFINS: TStringField;
    GroupBox6: TGroupBox;
    DBEdit20: TDBEdit;
    sds_MovimentoDESCONTO: TFloatField;
    cds_MovimentoDESCONTO: TFloatField;
    sds_Mov_DetFRETE_BC: TStringField;
    cds_Mov_detFRETE_BC: TStringField;
    sds_Mov_DetVALOR_PIS: TFloatField;
    sds_Mov_DetVALOR_COFINS: TFloatField;
    cds_Mov_detVALOR_PIS: TFloatField;
    cds_Mov_detVALOR_COFINS: TFloatField;
    pnRelatorio: TPanel;
    btnOrcWord: TBitBtn;
    btnEstoqueVenda: TBitBtn;
    btnEstoqueMatPrima: TBitBtn;
    Label30: TLabel;
    lblEstoque: TLabel;
    rocarProduto1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit15Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure c_8_servNewRecord(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure DtSrc1DataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure cds_MovimentoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure c_8_servReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBEdit6Exit(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnOrcWordClick(Sender: TObject);
    procedure edChassiExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RadioPedidoClick(Sender: TObject);
    procedure RadioOrcamentoClick(Sender: TObject);
    procedure cbPrazoChange(Sender: TObject);
    procedure BtnClick(Sender: TObject);
    procedure cbPrazoClick(Sender: TObject);
    procedure cbTpTranspChange(Sender: TObject);
    procedure cbTransportadoraChange(Sender: TObject);
    procedure btnTranspClick(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure dbedtVALOR_DESCONTOExit(Sender: TObject);
    procedure edCfopExit(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure btnEstoqueVendaClick(Sender: TObject);
    procedure btnEstoqueMatPrimaClick(Sender: TObject);
    procedure rocarProduto1Click(Sender: TObject);
  private
    { Private declarations }
    procurouProd : String;
    modo :string;
    procedure Margem_Confere;
    procedure insereMatPrima;
    procedure PesquisaProdutos;
  public
    codFiscalClienteVenda: String;
    ufClienteVenda: String;  
    conta_local, usalote, matPrima, inseridoMatPrima, vendaexiste, usaprecolistavenda, CODIGOPRODUTO, margemVenda, estoque_negativo : string; //, tipoVenda
    estoque, qtde, mVendaPermi , desconto , prazoCliente , imex : Double;         // mVendaPermi = Margem de venda minima permitida
    procedure buscaServico();
    procedure baixamatprimas(tipomat: string; codmovt: integer);
    procedure existevenda;
    procedure precolista;
    procedure buscaCfop(codCli: Integer);    
    { Public declarations }
  end;

var
  fVendas: TfVendas;
  valorUnitario: Double;
  codmovdet, codserv,codmd,centro_receita, cod_nat, cod_vendedor_padrao, cod_cli : integer;
  natureza, contas_pendentes, nome_vendedor_padrao, ccpadrao, chassi, obrigatorio, valida: string;

implementation

uses UDm, ufprocura_prod, uComercial, uMostra_Contas, uListaClientes,
  uVendaFinalizar, uFiltroMovimento, uClienteVeiculo, uProdutoLote,
  uProcurar, uLotes, uVendaLoteLancao, ufDlgLogin, sCtrlResize,
  uProcurar_nf, UDMNF, uAtsAdmin, Math, uFiltroEstoque, uUtils, uftransp,
  uEstoque, uClienteCadastro, uProdutoCadastro, uDetalhe, uEstado,
  uCliente1, uTroca;

{$R *.dfm}

procedure TfVendas.FormCreate(Sender: TObject);
begin
  //inherited;
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fVendas));

  inseridoMatPrima := 'NAO';
  codmovdet := 1999999;
  codserv := 1999999;
  codmd := 1999999;
  PageControl1.ActivePageIndex := 0;
  centro_receita := 0;
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
  {------Pesquisando na tab Parametro se usa Mostrar Contas Pendentes ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTAS PENDENTES';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    contas_pendentes := 'SIM';
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    ComboBox1.Enabled := True;
  {------Pesquisando na tab Parametro se Margem Venda para P. Venda ---------}
  margemVenda := 'NAO';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'MARGEMVENDA';
  dm.cds_parametro.Open;
  if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
  begin
    margemVenda := 'SIM'; //dm.cds_parametroDADOS.AsString;
    mVendaPermi := dm.cds_parametroD1.AsFloat;
  end;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      if (dm.cds_parametroD1.AsString <> '') then
        centro_receita := strToint(dm.cds_parametroD1.AsString);
      if (dm.cds_parametroD1.AsString = 'SIM') then
        obrigatorio := dm.cds_parametroD1.AsString;
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
    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if cds_ccusto.Active then
      cds_ccusto.Close;
    cds_ccusto.Params[0].AsString := conta_local;
    cds_ccusto.Open;
    // populo a combobox
    cds_ccusto.First;
    while not cds_ccusto.Eof do
    begin
      ComboBox1.Items.Add(cds_ccustoNOME.AsString);
      cds_ccusto.Next;
    end;
    cds_ccusto.Locate('CODIGO',centro_receita, [loCaseInsensitive]);
    ccpadrao := cds_ccustoNOME.AsString;

  {------Pesquisando na tab Parametro se usa Comissão por Venda---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMISSAO VENDA';
  dm.cds_parametro.Open;
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
      if not dm.cds_parametro.IsEmpty then
      begin
        ComboBox2.Visible := true;
        Label17.Visible := True;
        if cds_cm.Active then
           cds_cm.Close;
        cds_cm.Params[0].Clear;
        cds_cm.Params[1].AsInteger := 9999999;
        cds_cm.Open;
        cds_cm.First;
       // populo a combobox
        while not cds_cm.Eof do
        begin
          ComboBox2.Items.Add(cds_cmCODIGO.AsString);
          cds_cm.Next;
        end;
      end;
  end;
  {------Pesquisando na tab Parametro se usa Comissão por produto---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMISSAO PRODUTO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
  begin
     DBEdit7.Visible := False;
     //label4.Caption := 'CM';
     {if cds_cm.Active then
        cds_cm.Close;
     cds_cm.Params[0].Clear;
     cds_cm.Params[1].AsInteger := 9999999;
     cds_cm.Open;}
  end;

  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
  dm.cds_parametro.Open;
  cod_nat := strToint(dm.cds_parametroDADOS.asString);
  natureza := dm.cds_parametroD1.AsString;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'SIM' then
  begin
    GroupBox5.Visible := True;
  end;

  {------Pesquisando na tab Parametro se usa ANOTACOES ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ANOTACOESVENDAS';
  dm.cds_parametro.Open;
  IF (not dm.cds_parametro.IsEmpty) then
  begin
    if (dm.cds_parametroCONFIGURADO.AsString = 'N') then
      DBComboBox1.Enabled := False
    else begin
      DBComboBox1.Items.Add(dm.cds_parametroD1.AsString);
      IF (dm.cds_parametroD2.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD2.AsString);
      IF (dm.cds_parametroD3.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD3.AsString);
      IF (dm.cds_parametroD3.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD3.AsString);
      IF (dm.cds_parametroD4.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD4.AsString);
      IF (dm.cds_parametroD5.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD5.AsString);
      IF (dm.cds_parametroD6.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD6.AsString);
      IF (dm.cds_parametroD7.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD7.AsString);
      IF (dm.cds_parametroD8.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD8.AsString);
      IF (dm.cds_parametroD9.AsString <> '') then
        DBComboBox1.Items.Add(dm.cds_parametroD9.AsString);
    end;
  end
  else begin
    DBComboBox1.Enabled := False;
  end;
  if (dm.moduloUsado = 'AUTOMOTIVA') then
  begin
    Itens.Caption := 'Peças/Serviços';
    //bitbtn4.Enabled := False;
    Label4.Caption := 'Com.';
    Label20.Caption := 'Kilometragem';
    Label11.Caption := 'Colab./Técnico';
    BitBtn3.Enabled := False;
    fVendas.Caption := 'Ordem de Serviços e Vendas de Peças';
    Label15.Caption := 'Lançamento de Ordem de Serviços e Vendas de Peças';
    GroupBox2.Caption := 'Local OS';
    GroupBox3.Caption := 'Data';
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    Label16.Caption := 'kg';
    Label8.Caption := 'Refugo';    
  end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'MATERIAPRIMA';
  dm.cds_parametro.Open;
  if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
  begin
    matPrima := 'SIM';
    inseridoMatPrima := 'SIM';
  end
  else
    matPrima := 'NAO';
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTAPRECO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if dm.cds_parametroCONFIGURADO.AsString = 'S' then
       usaprecolistavenda := 'S';
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

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
     estoque_negativo := 'FALSO'
  else
     estoque_negativo := 'TRUE';

end;

procedure TfVendas.btnIncluirClick(Sender: TObject);
begin
  procurouProd := 'N';
  desconto := 0;
  DecimalSeparator := ',';  
  //usaprecolistavenda := '';
  modo := 'INSERIR';
  if cds_Movimento.Active then
    cds_Movimento.Close;

  inherited;
  if (cdsEstoque.Active) then
    cdsEstoque.Close;
  if (cdsETotal.Active) then
    cdsETotal.Close;
  cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
  cds_MovimentoDESCNATUREZA.AsString := natureza;

  if (DM.tipoVenda = 'DEVOLUCAO') then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := 10;
    cds_MovimentoDESCNATUREZA.AsString := 'Devolucao Vendas';
  end;

  cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
  cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
  cds_MovimentoCOD_VEICULO.AsInteger := 0;

  ComboBox1.Text := ccpadrao;
  MaskEdit1.Text := '';

  if cds_Mov_det.Active then
    cds_Mov_det.Close;

  if c_8_serv.Active then
    c_8_serv.Close;

  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  dbeCliente.Text := '';
  if (dm.moduloUsado <> 'AUTOMOTIVA') then
    dbeCliente.SetFocus;

  if DtSrc1.DataSet.State in [dsInactive] then
  begin
    DtSrc1.DataSet.Open;
    DtSrc1.DataSet.Append;
  end;
  if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;
  btnClienteProcura.Enabled := true;
  btnProdutoProcura.Enabled := true;
  BitBtn5.Enabled := true;

  if (dm.moduloUsado = 'AUTOMOTIVA') then
  begin
    Label10.Caption := '...';
    MaskEdit1.SetFocus;
  end;
  cds_MovimentoVALOR_FRETE.AsFloat := 0;

end;

procedure TfVendas.FormShow(Sender: TObject);
begin
  inherited;
  pnRelatorio.Visible := False;
  DecimalSeparator := ',';
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  usaLote := 'N';
  if (DM.tipoVenda = 'DEVOLUCAO') then
  begin
    MMJPanel1.Background.EndColor := clNavy;
    MMJPanel3.Background.EndColor := clNavy;
    Label15.Caption := 'Devolução Vendas';
  end
  else begin
    MMJPanel1.Background.StartColor := dm.corStart;
    MMJPanel1.Background.EndColor := dm.corEnd;
    MMJPanel3.Background.EndColor := dm.corStart;
    MMJPanel3.Background.StartColor := dm.corEnd;
    Label15.Caption := 'Vendas';
  end;
  if (dm.emppadrao <> '') then
  begin
    ComboBox1.Text := dm.emppadrao;
    ComboBox1.Enabled := False;
  end;

  if (not dm.parametro.Active) then
    dm.parametro.Open;

  if (dm.parametro.locate('DADOS', 'PRAZO', [loCaseInsensitive])) then
  begin
    if (dm.parametroCONFIGURADO.AsString = 'S') then
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
  end;

  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ALTDESCPRECO';
  dm.cds_parametro.Open;
  if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
  begin
    DBEdit10.ReadOnly := True;
    DBEdit17.ReadOnly := True;
  end;

  RadioOrcamento.Checked  := True;
{  Orcamento.Visible := True;
  Orcamento.Enabled := True;
  RadioButton1.Checked :=True;}
  PageControl1.TabIndex := 0;
end;

procedure TfVendas.dbeClienteExit(Sender: TObject);
var usu_n, usu_s : string;
  utilcrtitulo : Tutils;
begin
  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    if (dbeCliente.Text = '') then
    begin
      exit;
    end;
    if dm.scds_cliente_proc.Active then
    dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);

    dm.scds_cliente_proc.Open;
    if dm.scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    if dm.scds_cliente_procBLOQUEIO.AsString = 'S' then
    begin
      //if(DM.scds_cliente_procOBS.AsString) then
      if Dm.cds_parametro.Active then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'BLOQUEIOPERSONALIZADO';
      dm.cds_parametro.Open;
      if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      begin
        MessageDlg(DM.scds_cliente_procOBS.AsString , mtError, [mbOK], 0);
        usu_n := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
        usu_s := fAtsAdmin.UserControlComercial.CurrentUser.Password;
        utilcrtitulo := Tutils.Create;
        if (utilcrtitulo.verificapermissao = False) then
        begin
          cds_Movimento.Cancel;
          Exit;
        end;
      end
      else
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
        cds_Movimento.Cancel;
        exit;
      end;
      //dbeCliente.SetFocus;
    end;
    if ( cds_Movimento.State in [dsBrowse]) then
      cds_Movimento.Edit;
    cds_MovimentoCODCLIENTE.AsInteger := dm.scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoNOMECLIENTE.AsString := dm.scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCODVENDEDOR.AsInteger := dm.scds_cliente_procCODUSUARIO.AsInteger;
    cds_MovimentoNOMEUSUARIO.AsString := dm.scds_cliente_procNOMEUSUARIO.AsString;
    cds_MovimentoOBSCLI.AsString := dm.scds_cliente_procOBS.AsString;
    prazoCliente := dm.scds_cliente_procPRAZORECEBIMENTO.AsFloat;
    //desconto := dm.scds_cliente_procDESCONTO.AsFloat;
    cds_MovimentoDESCONTO.AsFloat := dm.scds_cliente_procDESCONTO.AsFloat;
    if ( cds_Mov_det.State in [dsBrowse]) then
      cds_Mov_det.Edit;
    //cds_Mov_detQTDE_ALT.AsFloat:= desconto ;
    cds_Mov_detQTDE_ALT.AsFloat:= dm.scds_cliente_procDESCONTO.AsFloat;

    buscaCfop(dm.scds_cliente_procCODCLIENTE.AsInteger);

    dm.scds_cliente_proc.Close;

    //mostra veiculos do cliente
    {if cds_Veiculocli.Active then
      cds_Veiculocli.Close;
    cds_Veiculocli.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
    cds_Veiculocli.Open;}

    if (ComboBox1.Enabled = true) then
      ComboBox1.SetFocus
    else
      dbEdit2.SetFocus;
  end
  else
  if dbeCliente.Field.OldValue<>dbeCliente.Field.NewValue then
  begin
    if dm.scds_cliente_proc.Active then
    dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCliente.Text);
    dm.scds_cliente_proc.Open;
    if dm.scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    if dm.scds_cliente_procSTATUS.AsInteger = 2 then
    begin
      MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
      dbeCliente.SetFocus;
      exit;
    end;

    dm.codcli := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    cds_MovimentoCODCLIENTE.AsInteger := dm.scds_cliente_procCODCLIENTE.AsInteger;
    cds_MovimentoNOMECLIENTE.AsString := dm.scds_cliente_procNOMECLIENTE.AsString;
    cds_MovimentoCODVENDEDOR.AsInteger := dm.scds_cliente_procCODUSUARIO.AsInteger;
    cds_MovimentoNOMEUSUARIO.AsString := dm.scds_cliente_procNOMEUSUARIO.AsString;
    dm.scds_cliente_proc.Close;

    //mostra veiculos do cliente
    {if cds_Veiculocli.Active then
      cds_Veiculocli.Close;
    cds_Veiculocli.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
    cds_Veiculocli.Open;}

    if (ComboBox1.Enabled = true) then
      ComboBox1.SetFocus
    else
      dbEdit2.SetFocus;
  end;

  if contas_pendentes = 'SIM' then
  begin
    //**********************************************************
    // abre tabela e mostra se a contas pendentes
    if fMostra_Contas.ClientDataSet1.Active then
      fMostra_Contas.ClientDataSet1.Close;
    fMostra_Contas.ClientDataSet1.Params[0].AsDate := Now;
    fMostra_Contas.ClientDataSet1.Params[1].AsInteger :=
      cds_MovimentoCODCLIENTE.AsInteger;
    fMostra_Contas.ClientDataSet1.Open;
    if not fMostra_Contas.ClientDataSet1.IsEmpty then
       fMostra_Contas.ShowModal;
  end;
  if (dbeCliente.Text <> '') then
    fProcura_prod.codcli := cds_MovimentoCODCLIENTE.AsInteger;

  //buscaCfop(dm.codcli);
  if (not (dtSrc1.State in [dsInsert]) ) then
  begin
    cds_Mov_det.First;
    while not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      cds_Mov_detCFOP.AsString := edCfop.Text;
      cds_Mov_det.Next;
    end;
    cds_Mov_det.Edit;
  end
  else
    cds_Mov_detCFOP.AsString := edCfop.Text;
end;

procedure TfVendas.dbeProdutoExit(Sender: TObject);
begin
  if (procurouProd = 'N') then
  begin
    if (dtSrc1.State in [dsInsert, dsEdit]) then
    begin
      PesquisaProdutos;
    end;
  end
  else
    procurouProd := 'N';
end;

procedure TfVendas.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  var_F := 'venda';
  if DtSrc1.DataSet.State in [dsInactive] then
   exit;
  {if (dm.moduloUsado = 'AUTOMOTIVAXXXXXX') then
  begin
    //fProcura_prodOficina.cbTipo.ItemIndex := 4;
    fProcura_prodOficina.btnIncluir.Visible := true;
    if (procprod <> 'PROC_PROD_COMPLETO') then
    begin
      fProcura_prodOficina.Panel1.Visible := false;
      fProcura_prodOficina.Panel2.Visible := true;
      //fProcura_prodOficina.CheckBox1.Checked := True;
      fProcura_prodOficina.BitBtn1.Click;
    end
    else begin
      fProcura_prodOficina.Panel2.Visible := false;
      fProcura_prodOficina.Panel1.Visible := true;
      //fProcura_prodOficina.CheckBox1.Checked := False;
      if (fProcura_prodOficina.cds_proc.Active) then
        fProcura_prodOficina.cds_proc.Close;
    end;
    varonde := 'compra';
    var_F := 'venda';
    cds_Mov_detLOTE.AsString := '';
    //fProcura_prodOficina.codcli := cds_MovimentoCODCLIENTE.AsInteger;
    fProcura_prodOficina.ShowModal;

    if (procprod = 'PROC_PROD_COMPLETO') then
    begin
      if (cds_Mov_det.State in [dsInsert, dsEdit]) then
      begin
        cds_Mov_detCODPRO.AsString := fProcura_prodOficina.cds_procCODPRO.AsString;
        cds_Mov_detCODPRODUTO.asInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
        cds_Mov_detDESCPRODUTO.asString := fProcura_prodOficina.cds_procPRODUTO.AsString;
        cds_Mov_detPRECO.AsFloat := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
        if ( fProcura_prodOficina.cds_procQTDE_PCT.AsFloat < 1) then
          cds_Mov_detQUANTIDADE.AsFloat := 1
        else
          cds_Mov_detQUANTIDADE.AsFloat := fProcura_prodOficina.cds_procQTDE_PCT.AsFloat;
        qtde := fProcura_prodOficina.cds_procPESO_QTDE.AsFloat;
        cds_Mov_detPRECOCUSTO.AsFloat := fProcura_prodOficina.cds_procPRECOMEDIO.AsFloat;
        estoque := fProcura_prodOficina.cds_procESTOQUEATUAL.AsFloat;
      end;
    end;
    // Usa Lote
    if (fProcura_prodOficina.cds_procLOTES.AsString <> 'S') then
    begin
      usaLote := 'S';
      if (fProcura_prodOficina.cds_proc.Active) then
        fProcura_prodOficina.cds_proc.Close;
      if cds_Mov_det.State in [dsInsert] then
        DBEdit9.SetFocus;
      if cds_Mov_det.State in [dsBrowse] then
      begin
        //cds_Mov_det.Edit;
        DBEdit17.SetFocus;
        //btnNovo.SetFocus;
        //if DBEdit17.Text <> '' then
        //DBEdit17.SetFocus;
      end;
    end
    else begin
      Bitbtn4.SetFocus;
    end;
  end
  else begin }
    fProcura_prod.cbTipo.ItemIndex := 4;
    fProcura_prod.btnIncluir.Visible := true;
    if (procprod <> 'PROC_PROD_COMPLETO') then
    begin
      fProcura_prod.Panel1.Visible := false;
      fProcura_prod.Panel2.Visible := true;
      //fProcura_prod.CheckBox1.Checked := True;
      fProcura_prod.BitBtn1.Click;
    end
    else begin
      fProcura_prod.Panel2.Visible := false;
      fProcura_prod.Panel1.Visible := true;
      //fProcura_prod.CheckBox1.Checked := False;
      if (fProcura_prod.cds_proc.Active) then
        fProcura_prod.cds_proc.Close;
    end;
    varonde := 'compra';
    var_F := 'venda';
    cds_Mov_detLOTE.AsString := '';
    fProcura_prod.codcli := cds_MovimentoCODCLIENTE.AsInteger;
    fProcura_prod.ShowModal;

    if (procprod = 'PROC_PROD_COMPLETO') then
    begin
      if (cds_Mov_det.State in [dsInsert, dsEdit]) then
      begin
        cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
        cds_Mov_detCODPRODUTO.asInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
        cds_Mov_detDESCPRODUTO.asString := fProcura_prod.cds_procPRODUTO.AsString;
        cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
        if ( fProcura_prod.cds_procQTDE_PCT.AsFloat < 1) then
          cds_Mov_detQUANTIDADE.AsFloat := 1
        else
          cds_Mov_detQUANTIDADE.AsFloat := fProcura_prod.cds_procQTDE_PCT.AsFloat;
        qtde := fProcura_prod.cds_procPESO_QTDE.AsFloat;
        cds_Mov_detPRECOCUSTO.AsFloat := fProcura_prod.cds_procPRECOMEDIO.AsFloat;
        estoque := fProcura_prod.cds_procESTOQUEATUAL.AsFloat;
      end;
    end;
    lblEstoque.Caption := FloatToStr(fProcura_prod.cds_procESTOQUEATUAL.asfloat);
    // Usa Lote
    if (fProcura_prod.cds_procLOTES.AsString <> 'S') then
    begin
      usaLote := 'S';
      if (fProcura_prod.cds_proc.Active) then
        fProcura_prod.cds_proc.Close;
      if cds_Mov_det.State in [dsInsert] then
        DBEdit9.SetFocus;
      if cds_Mov_det.State in [dsBrowse] then
      begin
        //cds_Mov_det.Edit;
        DBEdit17.SetFocus;
        //btnNovo.SetFocus;
        //if DBEdit17.Text <> '' then
        //DBEdit17.SetFocus;
      end;
    end
    else begin
      Bitbtn4.SetFocus;
    end;

 // end;
end;

procedure TfVendas.btnNovoClick(Sender: TObject);
begin
  procurouProd := 'N';
  if (modo = 'FINALIZADO') then
  begin
    if (dm.blVendaFin = 'S') then
    begin
      MessageDlg('Pedido já finalizado, alteração não permitida.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;

  inherited;
  if (matPrima = 'SIM') then
    inseridoMatPrima := 'SIM';
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
    if (cds_Mov_detCFOP.AsString = '') then
    begin
      if (edCfop.Text = '') then
        buscaCfop(cds_MovimentoCODCLIENTE.AsInteger);
      cds_Mov_detCFOP.AsString := edCfop.Text;
    end;  
    {IF (DBEdit17.Text <> '') then
      cds_Mov_detPRODUTO.AsString := DBEDit17.Text;}
    if cds_Movimento.State in [dsBrowse, dsInactive] then
      cds_Movimento.Edit;
    DtSrc1.DataSet.Post;
    {if ds_serv.State in [dsInsert, dsEdit] then
    begin
      if cds_Movimento.State in [dsBrowse, dsInactive] then
        cds_Movimento.Edit;
      c_8_servPRECO.AsFloat := cds_Mov_detPRECO.AsFloat;
      c_8_servDESCRICAO.AsString := DBEdit17.Text;
      c_8_serv.Post;
    end;}
    // Esta Varíavel é pra não executar o insereMatPrima repetidas vezes
    if (inseridoMatPrima = 'SIM') then
    if (matPrima = 'SIM') then
    begin
      insereMatPrima;
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
  if (pagecontrol1.ActivePageIndex = 1) then
    pagecontrol1.ActivePageIndex := 0;
  {if DbEdit17.Enabled = True then
     DbEdit17.Enabled := false;}
end;

procedure TfVendas.BitBtn8Click(Sender: TObject);
begin
  if (modo = 'FINALIZADO') then
  begin
    if (dm.blVendaFin = 'S') then
    begin
      MessageDlg('Pedido já finalizado, exclusão não permitida.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;

  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;

  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detDESCPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) <> mrYes then exit;
     DtSrc1.DataSet.Delete;
end;

procedure TfVendas.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  inherited;
  valor := 0;
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
    if (cds_Mov_detQTDE_ALT.Value > 0) then
    begin
      if (cds_Mov_detVLR_BASE.AsFloat > 0) then
      begin
        cds_Mov_detValorTotal.Value := cds_Mov_detVLR_BASE.Value * cds_Mov_detQUANTIDADE.Value;
      end
      else begin
        cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
        //valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
        if (dm.vendaDec > 0) then
        begin
          valor := SimpleRoundTo(cds_Mov_detPRECO.Value * (cds_Mov_detQTDE_ALT.Value/100) , ((-1) * dm.vendaDec));
          cds_Mov_detValorTotal.Value := SimpleRoundTo(((cds_Mov_detPRECO.Value - valor) * cds_Mov_detQUANTIDADE.Value), ((-1) * dm.vendaDec));
        end
        else
          cds_Mov_detValorTotal.Value := (cds_Mov_detPRECO.Value - valor) * cds_Mov_detQUANTIDADE.Value;
      end;
    end
    else
      cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
  end;
end;

procedure TfVendas.cds_Mov_detNewRecord(DataSet: TDataSet);
var cfopProd: String;
begin
  inherited;
  if (codmd >= 1999999) then
    codmd := codmd + 1;
  cds_mov_detCODDETALHE.AsInteger := codmd;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_Mov_detVALOR_DESCONTO.AsFloat := 0;
  cds_Mov_detQTDE_ALT.AsFloat:= cds_MovimentoDESCONTO.AsFloat;
  cds_Mov_detFRETE.AsFloat := 0;
  cds_Mov_detVALOR_SEGURO.AsFloat := 0;
  cds_Mov_detVALOR_OUTROS.AsFloat := 0;
  cds_Mov_detLOTE.AsString := '0';
  cds_mov_detCFOP.asString := edCfop.text;
end;

procedure TfVendas.BitBtn4Click(Sender: TObject);
begin
  inherited;
  //Usa Lote ??
  if (not dm.scds_produto_proc.Active) then
  begin
    dm.scds_produto_proc.Params[0].Clear;
    //dm.scds_produto_proc.Params[1].Clear;
    dm.scds_produto_proc.Params[1].AsString:=dbeProduto.Text;
    dm.scds_produto_proc.Open;
  end;
  if dm.scds_produto_procLOTES.AsString = 'S' then
  begin
    fLotes := TfLotes.Create(Application);
    try
      fLotes.codProdutoLt := dm.scds_produto_procCODPRODUTO.AsInteger;
      fLotes.codCCustoLt :=  cds_MovimentoCODALMOXARIFADO.AsInteger;
      var_F := 'venda';
      fLotes.btnProdutoProcura.Enabled := False;
      fLotes.btnIncluir.Enabled := False;
      fLotes.btnGravar.Enabled := False;
      fLotes.btnExcluir.Enabled := False;
      fLotes.btnCancelar.Enabled := False;
      fLotes.btnProcurar.Enabled := False;
      fLotes.ShowModal;
    finally
      fLotes.Free;
    end;
  end;
  dm.scds_produto_proc.Close;
  if (DBEdit17.Text <> '') then
    DBEdit17.SetFocus
  else
    dbEdit9.SetFocus;
end;

procedure TfVendas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DtSrc1.DataSet.Cancel;
//  DtSrc1.DataSet.Close;
  ds_serv.DataSet.Cancel;
//  ds_serv.DataSet.Close;
//  cds_Mov_det.Params[0].Clear;
//  cds_Mov_det.Params[1].Clear;
//  DtSrc.DataSet.Close;
  if cds_prod.Active then
    cds_prod.Close;
end;

procedure TfVendas.btnExcluirClick(Sender: TObject);
var     usu_n, usu_s : string;
        utilcrtitulo : Tutils;
begin
  usu_n := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
  usu_s := fAtsAdmin.UserControlComercial.CurrentUser.Password;
  if (modo = 'FINALIZADO') then
  begin
    if (dm.blVendaFin = 'S') then
    begin
      MessageDlg('Pedido já finalizado, exclusão não permitida.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  usuautorizacao := 0;
  //CRIA O UTILS E VERIFICA SE O USUARIO TEM PERMISSÃO
  utilcrtitulo := Tutils.Create;
  if (utilcrtitulo.verificapermissao = False) then
  begin
    if (cds_MovimentoSTATUS.AsInteger <> 2) then
    begin
      if MessageDlg('Deseja Cancelar esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        //inherited;
        try
          existevenda;
          if (vendaexiste = 'SIM') then
          begin
            fVendaFinalizar.cds.Delete;
            fVendaFinalizar.cds.ApplyUpdates(0);
            fVendaFinalizar.cds.Close;
          end;
          cds_Movimento.Edit;
          cds_MovimentoSTATUS.AsInteger := 2;
          cds_Movimento.ApplyUpdates(0);
          if DtSrc1.DataSet.Active then
            DtSrc1.DataSet.Close;
          DtSrc.DataSet.Close;
        Except
          MessageDlg('Erro ao cancelar o Movimento', mtWarning, [mbOK], 0);
          exit;
        end;
      end
      else
        MessageDlg('Movimento Não Cancelado.', mtWarning, [mbOK], 0);
    end;
  end
  else
  if MessageDlg('Deseja realmente Excluir esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    try
      existevenda;
      if (vendaexiste = 'SIM') then
      begin
        fVendaFinalizar.cds.Delete;
        fVendaFinalizar.cds.ApplyUpdates(0);
        fVendaFinalizar.cds.Close;
      end;
        DtSrc.DataSet.Delete;
        (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
        if DtSrc1.DataSet.Active then
          DtSrc1.DataSet.Close;
        DtSrc.DataSet.Close;
        ShowMessage('Pedido/Orçamento Excluido com Suscesso');
     Except
      MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  dm.cds_parametro.Close;
  fAtsAdmin.UserControlComercial.VerificaLogin(usu_n,usu_s);
end;

procedure TfVendas.btnGravarClick(Sender: TObject);
begin
  // Se Venda ja Finalizada não permite alteração sem excluir a Finalizacao
  // Isto é necessario para não atrapalhar o estoque
  if ((cds_MovimentoCODMOVIMENTO.AsInteger < 1999999) or (cds_MovimentoCODMOVIMENTO.AsInteger > 1999999)) then
  begin
    if dm.scds_venda_proc.Active then
      dm.scds_venda_proc.Close;
    dm.scds_venda_proc.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    dm.scds_venda_proc.Open;
    if (not dm.scds_venda_proc.IsEmpty) then
    begin
      MessageDlg('Venda finalizada, não é possivel executar a alteração.', mtWarning, [mbOk], 0);
      exit;
    end;
  end;  
   valida := 'S';
   //VERIFICA SE VENDEDOR ESTÁ PREENCHIDO
   if(DBEdit15.Text <> '') then
   begin
   if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
   dm.scds_usuario_proc.Params[0].Clear;
   dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(DBEdit15.Text);
   dm.scds_usuario_proc.Params.ParamByName('pPerfil').AsString := 'VENDEDOR';
   dm.scds_usuario_proc.Params.ParamByName('pPerfil1').AsString := 'AMBOS';
   dm.scds_usuario_proc.Open;
   if dm.scds_usuario_proc.IsEmpty then begin
     MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
     [mbOk], 0);
     btVendedor.Click;
     exit;
   end;
   end;


   if ( ((ComboBox1.Text = '') or (ComboBox1.Text = null)) and (obrigatorio = 'SIM') )then
    MessageDlg('Centro de Custo Obrigatório', mtError, [mbOK], 0)
   else
   begin
     if (cds_Movimento.State in [dsEdit]) then
     begin
       if (modo = 'FINALIZADO') then
       begin
         if (dm.blVendaFin = 'S') then
         begin
           MessageDlg('Pedido já finalizado, alteração não permitida.', mtWarning, [mbOK], 0);
           cds_Movimento.Cancel;
           cds_Mov_det.Cancel;
           exit;
         end;
       end;
     end;
     if (cds_Mov_det.State in [dsInsert, dsEdit]) then
     begin
       if (dbeProduto.Text <> '') then
       begin
          // Esta Varíavel é pra não executar o insereMatPrima repetidas vezes
          if (inseridoMatPrima = 'SIM') then
          if (matPrima = 'SIM') then
          begin
            insereMatPrima;
          end;
       end;
       if (dbeProduto.Text = '') then
         cds_mov_det.Cancel;
     end;

     if cds_Movimento.State in [dsInsert] then
     begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
     end;
      //*******************************************************************************
      //   essa parte é para cadastro de Veículo
      if (dm.moduloUsado = 'AUTOMOTIVA') then
      begin
        if ((maskEdit1.Text = '   -    ') and (cds_MovimentoNOMECLIENTE.AsString <> 'CONSUMIDOR') ) then
        begin
          MessageDlg('Preenchimento da placa é Obrigatório', mtWarning, [mbOK], 0);
          Exit;
        end
        else
        begin
          if (cds_Veiculocli.Active) then
            cds_Veiculocli.Close;
          cds_Veiculocli.Params[1].Clear;
          cds_Veiculocli.Params[0].AsString := MaskEdit1.Text;
          cds_Veiculocli.Open;
          if (cds_Veiculocli.IsEmpty) then
          begin
            // o cadastro do veículo não deve ter o cliente na OS terá;
            cod_cli := 1; //cds_MovimentoCODCLIENTE.AsInteger;
            fClienteVeiculo.varPlaca := MaskEdit1.Text;
            BitBtn9.Click;
          end;
          cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
          cds_Veiculocli.Close;
        end;
          // Busca o cad. veiculo pelo chassi
        if ((maskEdit1.Text = '   -    ') and (EdChassi.Text <> '')) then
        begin
          if (cds_Veiculocli.Active) then
            cds_Veiculocli.Close;
          cds_Veiculocli.Params[1].Clear;
          cds_Veiculocli.Params[0].Clear;
          cds_Veiculocli.Params[2].AsString := edChassi.Text;
          cds_Veiculocli.Open;
          if (cds_Veiculocli.IsEmpty) then
          begin
            // o cadastro do veículo não deve ter o cliente na OS terá;
            cod_cli := 1; //cds_MovimentoCODCLIENTE.AsInteger;
            chassi := EdChassi.Text;
            BitBtn9.Click;
          end;
          cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
          cds_Veiculocli.Close;
          if ((DBComboBox1.Text = '') and (cds_MovimentoNOMECLIENTE.AsString <> 'CONSUMIDOR')) then
          begin
            MessageDlg('Preenchimento da KM é Obrigatório', mtWarning, [mbOK], 0);
            Exit;
          end

        end;

      end;

      //*******************************************************************************

      IF (DtSrc.State in [dsInsert, dsEdit]) then
      begin
        cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
        cds_MovimentoCODALMOXARIFADO.AsString := cds_ccustoCODIGO.AsString;
        if (DBComboBox1.Text <> '') then
          if  (cds_MovimentoCONTROLE.AsString <> DBComboBox1.Text) then
            cds_movimentoControle.AsString := DBComboBox1.Text;
      end;
      if (RadioPedido.Checked = True) then
        cds_MovimentoSTATUS.AsInteger := 1; // 1 = Pedido
      // salvo o Movimento
      if(cds_MovimentoCODPEDIDO.IsNull) then
        cds_MovimentoCODPEDIDO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      inherited;

      {if (cds_Mov_det.State in [dsEdit, dsInsert]) then
      begin
        IF (DBEdit17.Text <> '') then
          cds_Mov_detPRODUTO.AsString := DBEDit17.Text;
        cds_mov_det.Post;
      end;}
      //********************************************************************************
      // aqui corrijo o codigo do movimento na tabela mov_detalhe
      //  if (cds_Mov_detCODMOVIMENTO.AsInteger >= 1999999) then
      //  begin
        cds_Mov_det.First;
        While not cds_Mov_det.Eof do
        begin
          if (cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
          begin
            if (dm.validaCfop(edCFOP.Text) = False) then
            begin
              MessageDlg('CFOP não cadastrado em CFOP-Estado.', mtWarning, [mbOK], 0);
              exit;
            end;
            cds_Mov_det.Edit;
            cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
            IF (cds_Mov_detQTDE_ALT.IsNull) then
               cds_Mov_detQTDE_ALT.AsFloat := 0;
            if dm.c_6_genid.Active then
              dm.c_6_genid.Close;
            dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
            dm.c_6_genid.Open;
            codmovdet := dm.c_6_genid.Fields[0].AsInteger;
            if ComboBox2.Text <> '' then
            begin
               if not(cds_cm.Active)then
                 cds_cm.Open;

               cds_cm.Locate('CODIGO', ComboBox2.Text,[loPartialKey]);
               cds_Mov_detCOD_COMISSAO.AsInteger := cds_cmCOD_COMISSAO.AsInteger;
               cds_Mov_detCODIGO.AsString := cds_cmCODIGO.AsString;
            end;
            if (c_8_serv.Active) then
            begin
              if (c_8_serv.Locate('CODMOVIMENTO', cds_Mov_detCODDETALHE.AsInteger, [loCaseInsensitive])) then
              begin
                if (c_8_serv.State in [dsBrowse]) then
                  c_8_serv.Edit;
                c_8_servCODMOVIMENTO.asInteger := codmovdet;
                if dm.c_6_genid.Active then
                  dm.c_6_genid.Close;
                dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOV_DET_SERV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
                dm.c_6_genid.Open;
                c_8_servCODDETALHE_SERV.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
                dm.c_6_genid.Close;
                c_8_servPRECO.AsFloat := cds_Mov_detPRECO.AsFloat;
                c_8_serv.post;
              end;
            end;
            cds_Mov_detCODDETALHE.AsInteger := codmovdet;
            if (margemVenda = 'SIM') then
              Margem_Confere;
            if (valida = 'N') then
              Exit;
            cds_Mov_det.post;
          end;
          if (margemVenda = 'SIM') then
            Margem_Confere;
          if (valida= 'N') then
          begin
            cds_Movimento.Edit;
            Exit;
          end;
          cds_Mov_det.Next;
        end;
    //  end;
      IF (ComboBox2.Text <> cds_Mov_detCODIGO.AsString) then
      begin
        cds_Mov_det.First;
        While not cds_Mov_det.Eof do
        begin
          cds_Mov_det.Edit;
          if ComboBox2.Text <> '' then
          begin
             if (not cds_cm.Active) then
                cds_cm.Open;
             cds_cm.Locate('CODIGO', ComboBox2.Text,[loPartialKey]);
             cds_Mov_detCOD_COMISSAO.AsInteger := cds_cmCOD_COMISSAO.AsInteger;
             cds_Mov_detCODIGO.AsString := cds_cmCODIGO.AsString;
          end;
          cds_Mov_det.Post;
          cds_Mov_det.Next;
        end;
      end;
      cds_Mov_det.ApplyUpdates(0);
      if (c_8_serv.Active) then
      begin
        c_8_serv.ApplyUpdates(0);
      end; 
      // Coloquei este cancel aqui pq , no dtsrc1 coloquei um código
      // pra mudar o dtsrt para edit quando mudo o dtsrc1
      DtSrc.DataSet.Cancel;

      // atualizo o Lote - Está sendo Feito pela Trigger LOTE_SAIDA
    end;
   cds_mov_det.Close; // Fecho e abro novamente, para carregar os impostos
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_Mov_det.Open;
end;

procedure TfVendas.BitBtn9Click(Sender: TObject);
begin
  inherited;
   fClienteVeiculo := TfClienteVeiculo.Create(Application);
   try
     fClienteVeiculo.chassi := chassi;
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
        if (sdsVeiculoCli.Active) then
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
          prazoCliente := sdsVeiculoCli.Fields[3].AsFloat;
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

procedure TfVendas.BitBtn5Click(Sender: TObject);
begin
  inherited;
//**********************************************************
// abre tabela e mostra se a contas pendentes
  if fMostra_Contas.ClientDataSet1.Active then
    fMostra_Contas.ClientDataSet1.Close;
  fMostra_Contas.ClientDataSet1.Params[0].AsDate := Now;
  fMostra_Contas.ClientDataSet1.Params[1].AsInteger :=
    cds_MovimentoCODCLIENTE.AsInteger;
  fMostra_Contas.ClientDataSet1.Open;
  if not fMostra_Contas.ClientDataSet1.IsEmpty then
    fMostra_Contas.ShowModal;
end;

procedure TfVendas.btnClienteProcuraClick(Sender: TObject);
var usu_n, usu_s : string;
  utilcrtitulo : Tutils;
begin
  if (dtsrc.State in [dsBrowse]) then
  begin
    if dm.scds_venda_proc.Active then
      dm.scds_venda_proc.Close;
    dm.scds_venda_proc.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    dm.scds_venda_proc.Open;
    if (dm.scds_venda_proc.IsEmpty) then
      cds_Movimento.Edit;
  End;

  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
  desconto := 0;
  inherited;
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
      if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        //if(DM.scds_cliente_procOBS.AsString) then
        if Dm.cds_parametro.Active then
          dm.cds_parametro.Close;
        dm.cds_parametro.Params[0].AsString := 'BLOQUEIOPERSONALIZADO';
        dm.cds_parametro.Open;
        if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
        begin
          MessageDlg(dmnf.scds_cli_procOBS.AsString , mtError, [mbOK], 0);
          usu_n := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
          usu_s := fAtsAdmin.UserControlComercial.CurrentUser.Password;
          utilcrtitulo := Tutils.Create;
          if (utilcrtitulo.verificapermissao = False) then
          begin
            MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
            cds_Movimento.Cancel;
            Exit;
          end;
        end
        else
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
          cds_Movimento.Cancel;
          exit;
        end;
      //dbeCliente.SetFocus;
      end;
    prazoCliente := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
    //imex  := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
//    if DtSrc1.State in [dsBrowse] then
    buscaCfop(dm.codcli);
    cds_Mov_det.First;
    while not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      cds_Mov_detCFOP.AsString := edCfop.Text;
      cds_Mov_det.Next;
    end;
    cds_MovimentoDESCONTO.AsFloat := DMNF.scds_cli_procDESCONTO.AsFloat;
    cds_Mov_det.Edit;
    if (cds_Mov_detQTDE_ALT.AsFloat <= 0) then
      cds_Mov_detQTDE_ALT.AsFloat:= cds_MovimentoDESCONTO.AsFloat; ;
    cds_MovimentoCODVENDEDOR.AsInteger := dmnf.scds_cli_procCODUSUARIO.AsInteger;
    cds_MovimentoNOMEUSUARIO.AsString := dmnf.scds_cli_procNOMEUSUARIO.AsString;

  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
  fProcura_prod.codcli := dm.codcli;
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTAPRECO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
      if dm.cds_parametroCONFIGURADO.AsString = 'S' then
         usaprecolistavenda := 'S';
  end;

  if dtSrc.State=dsBrowse then
    cds_Movimento.Edit;
  cds_MovimentoCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
  cds_MovimentoNOMECLIENTE.AsString := dm.varNomeCliente;//fListaClientes.cdsNOMECLIENTE.AsString;

    if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_cliente_proc.Open;
    cds_MovimentoOBSCLI.AsString := dm.scds_cliente_procOBS.AsString;
    dm.scds_cliente_proc.Close;

  if (ComboBox1.Enabled = true) then
    ComboBox1.SetFocus
  else
    dbeProduto.SetFocus;
  end;
end;

procedure TfVendas.BitBtn1Click(Sender: TObject);
var LIMITECOMPRA: String;
    Compra: Double;
begin
  inherited;
  if (cds_MovimentoSTATUS.AsInteger = 2) then
  begin
    MessageDlg('Pedido/Venda Cancelado', mtWarning, [mbOK], 0);
    exit;
  end;

  compra := StrToFloat(cds_Mov_detTotalPedido.AsString);

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD6.AsString = 'USALIMITE') then
  begin

  SP_LIMITE.Close;
  SP_LIMITE.Params[0].AsInteger := StrToInt(dbeCliente.Text);
  SP_LIMITE.Params[1].AsFloat := Compra;
  SP_LIMITE.ExecProc;
  LIMITECOMPRA := SP_LIMITE.Params[2].AsString;
  end;
  if (LIMITECOMPRA = 'N') then
    begin
    MessageDlg('Limite de compra deste cliente exedido.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (prazoCliente = 0) then
  begin
    if (sPrazo.Active) then
        sPrazo.Close;
    sPrazo.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
    sPrazo.Open;
    if ( not sPrazo.IsEmpty) then
      prazoCliente := sPrazoPRAZORECEBIMENTO.AsFloat;
    sPrazo.Close;
  end;

  if (sdsLoteRepetido.Active) then
    sdsLoteRepetido.Close;
  sdsLoteRepetido.Params[0].AsInteger := cds_Mov_detCODMOVIMENTO.AsInteger;
  sdsLoteRepetido.Open;
  if (not sdsLoteRepetido.IsEmpty) then
     MessageDlg('Existe produto com o mesmo Lote em 2 linhas diferentes, isto pode gerar problema.', mtInformation, [mbOK], 0);
  sdsLoteRepetido.Close;

 if DtSrc.DataSet.State in [dsInsert, dsEdit] then
    btnGravar.Click;

 terminal := '';

 if DtSrc.DataSet.State in [dsInsert, dsEdit, dsBrowse] then
   fVendaFinalizar.ShowModal
 else
   Exit;
end;

procedure TfVendas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  //cds_MovimentoSTATUS.AsInteger := 1; // 1 = Pedido
  VCLReport1.FileName := str_relatorio + 'orcamento.rep';
  VCLReport1.Title    := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfVendas.btnProcurarClick(Sender: TObject);
begin
  inherited;
  RadioPedido.Checked := False;
  if btnProcurar.Enabled = False then
  begin
    exit;
  end;

  fFiltroMovimento.Edit3.Text := '3';

  if (not cds_ccusto.Active) then
      cds_ccusto.Open;
  cds_ccusto.First;
  fFiltroMovimento.ComboBox1.Clear;
  while not cds_ccusto.Eof do
  begin
    fFiltroMovimento.ComboBox1.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;
  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
  if dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
  dm.cds_parametro.Open;
  fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
  fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
  dm.cds_parametro.Close;
  fFiltroMovimento.BitBtn8.Enabled := False;
  //      fFiltroMovimento.BitBtn9.Caption := 'Ok';

  if (DM.tipoVenda = 'DEVOLUCAO') then
  begin
    fFiltroMovimento.Edit3.Text := '10';
    fFiltroMovimento.Edit4.Text := 'Devolução';
    fFiltroMovimento.Label10.Caption := 'Devolução Vendas';
    fFiltroMovimento.MMJPanel1.Background.EndColor := clNavy;
    fFiltroMovimento.MMJPanel2.Background.EndColor := clNavy;
  end;
  if (DM.tipoVenda = 'VENDA') then
  begin
    fFiltroMovimento.Edit3.Text := '3';
    fFiltroMovimento.Edit4.Text := 'Pesquisa Vendas / Orçamentos';
    fFiltroMovimento.Label10.Caption := 'Pesquisa Vendas / Orçamentos';
  end;
  var_F := 'venda';
  fFiltroMovimento.ShowModal;
  var_F := '';

  if cds_Movimento.IsEmpty then
    exit;

  buscaCfop(cds_MovimentoCODCLIENTE.AsInteger);

  if (not cds_ccusto.Active) then
    cds_ccusto.Open;
  cds_ccusto.Locate('CODIGO',cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive]);
  ComboBox1.Text := cds_ccustoNOME.AsString;

  cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_Mov_det.Open;

    modo := 'EDITAR';
    if ( not cds_Mov_detBAIXA.IsNull ) then
      modo := 'FINALIZADO';

     if (sds_proc.Active) then
        sds_proc.Close;
     sds_proc.Params[0].AsInteger := fVendas.cds_Mov_detCODPRODUTO.AsInteger;
     sds_proc.Open;
     {if (sds_procTIPO.AsString = 'SERV') then
     begin
        c_8_serv.Close;
        c_8_serv.Params[0].AsInteger := cds_Mov_detCODDETALHE.AsInteger;
        c_8_serv.Open;
        dbEdit17.Text := c_8_servDESCRICAO.AsString;
        sds_proc.Close;
     end;}
    ComboBox2.Text := cds_Mov_detCODIGO.AsString;
    // cds_Movimento.Edit;
    MaskEdit1.Text := '';
    //mostra veiculos do cliente
    if (cds_Veiculocli.Active) then
      cds_Veiculocli.Close;
    cds_Veiculocli.Params[0].Clear;
    cds_Veiculocli.Params[1].AsInteger := cds_MovimentoCOD_VEICULO.asInteger;
    cds_Veiculocli.Open;
    if (not cds_Veiculocli.IsEmpty) then
    begin
      MaskEdit1.Text := cds_VeiculocliPLACA.AsString;
      Label10.Caption := cds_VeiculocliMARCA_MODELO.AsString;
    end;
    cds_Veiculocli.Close;

    {------Pesquisando na tab Parametro se usa Comissão por Venda---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'COMISSAO VENDA';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      ComboBox2.Visible := true;
      Label17.Visible := True;
      if (not cds_cm.Active) then
        cds_cm.Open;
      cds_cm.Locate('COD_COMISSAO', cds_Mov_detCOD_COMISSAO.AsInteger,[loPartialKey]);
      ComboBox2.Text := cds_Mov_detCODIGO.AsString;
     end;
    btnClienteProcura.Enabled := true;
    btnProdutoProcura.Enabled := true;
    BitBtn5.Enabled := true;
    if (cds_MovimentoSTATUS.AsInteger = 1) then
    begin
     RadioPedido.Checked := True;
     RadioOrcamento.Checked := False;
    end
    else
    begin
     RadioOrcamento.Checked := True;
     RadioPedido.Checked  := False;
    end;

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

     cbPrazo.Text := cds_MovimentoFORMA_PAG.AsString;

     //CARREGA TIPO DO FRETE
     if (cds_MovimentoTPFRETE.AsString <> '') then
       cbTpTransp.ItemIndex := StrToInt(cds_MovimentoTPFRETE.AsString)
     else
       cbTpTransp.ItemIndex := -1;
end;

procedure TfVendas.DtSrcStateChange(Sender: TObject);
begin
  inherited;
 if Alterar = 'S' then
  BitBtn1.Enabled:=DtSrc.State in [dsInsert,dsEdit,dsBrowse]
 else
  BitBtn1.Enabled:=False;
 BitBtn2.Enabled:=DtSrc.State in [dsEdit,dsBrowse];
 Btn.Enabled :=DtSrc.State in [dsEdit,dsBrowse];
 //if (DtSrc.State in [dsEdit,dsBrowse]) then
 // DtSrc1.Edit;
end;

procedure TfVendas.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
  inherited;
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger:=usulog;
    cds_MovimentoCODVENDEDOR.Value := cod_vendedor_padrao;
    cds_MovimentoNOMEUSUARIO.Value := nome_vendedor_padrao;
//    cds_MovimentoCODCLIENTE.AsInteger := 0;
end;

procedure TfVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if cds_Movimento.Active then
    cds_Movimento.Close;
  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  if c_8_serv.Active then
    c_8_serv.Close;
  if cds_prod.Active then
    cds_prod.Close;
  if cds_Veiculocli.Active then
    cds_Veiculocli.Close;
  if cds_cm.Active then
    cds_cm.Close;
  if (dm.scds_produto_proc.Active) then
  begin
    dm.scds_produto_proc.Close;
    dm.scds_produto_proc.CommandText := 'select CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA, QTDE_PCT' +
    ', ICMS, CODALMOXARIFADO, PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL ' +
    ', PRECO_VENDA AS VALOR_PRAZO, TIPO, ESTOQUEATUAL, LOCALIZACAO ' +
    ', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO, PESO_QTDE, COD_COMISSAO' +
    ', RATEIO, conta_despesa , IPI , OBS, ORIGEM, NCM  '  +
    ' from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' + QuotedStr('TODOSGRUPOS') +
    ', ' + QuotedStr('TODOSSUBGRUPOS') + ' ,' + QuotedStr('TODASMARCAS') +
    ', ' + QuotedStr('TODASAPLICACOES') + ', 0)';
  end;
  //dm.EstoqueAtualiza;
end;

procedure TfVendas.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit15.Text = '') then exit;
  if dtsrc.State = dsInsert then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(DBEdit15.Text);
    dm.scds_usuario_proc.Params[2].AsString:= 'AMBOS';
    dm.scds_usuario_proc.Params[3].AsString:= 'VEND';
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btVendedor.Click;
      exit;
    end;
    cds_MovimentoCODVENDEDOR.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cds_MovimentoNOMEUSUARIO.AsString:=dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end
  else
  if DBEdit15.Field.OldValue<>DBEdit15.Field.NewValue then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(DBEdit15.Text);
    dm.scds_usuario_proc.Params[2].AsString:= 'AMBOS';
    dm.scds_usuario_proc.Params[3].AsString:= 'VEND';    
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btVendedor.Click;
      exit;
    end;
    cds_MovimentoCODVENDEDOR.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cds_MovimentoNOMEUSUARIO.AsString:=dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end;


end;

procedure TfVendas.SpeedButton1Click(Sender: TObject);
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
     cds_Movimento.Edit;
     cds_MovimentoCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
     cds_MovimentoNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfVendas.DBEdit9Exit(Sender: TObject);
begin
  inherited;
{   if (cds_mov_det.State in [dsEdit, dsInsert]) then
   if cds_Mov_detLOTE.AsString <> '' then
   begin
       if cdslotes.Active then
          cdslotes.Close;
       cdsLotes.Params[0].AsInteger := cds_Mov_detCODPRODUTO.AsInteger;
       cdslotes.Open;
       total := cdslotesESTOQUE.Value - cds_Mov_detQUANTIDADE.Value;

       if (total < (-0.00099999999999999999999)) then
       begin
         MessageDlg('Estoque insuficiente para essa venda', mtWarning, [mbOK], 0);
         cdslotes.Close;
         DBEdit9.Text := '';
         DBEdit9.SetFocus;
         exit;
       end;

      if (dm.moduloUsado = 'CITRUS') then
      begin
        //DecimalSeparator := '.';
        //cds_Mov_detCOD_COMISSAO.AsInteger := StrToInt(FloatToStr(cdslotesPRECO.AsFloat));
        DecimalSeparator := ',';
      end;
       cdslotes.Close;
   end;
  if (cds_mov_det.State in [dsEdit, dsInsert]) then
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cds_Mov_detQTDE_ALT.AsFloat = 0) then
      cds_Mov_detQTDE_ALT.AsFloat := cds_Mov_detQUANTIDADE.AsFloat * qtde;
  end;
  }
end;

procedure TfVendas.ComboBox2Change(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsbrowse, dsinactive]) then
    cds_Movimento.Edit;
end;

procedure TfVendas.DBEdit17Exit(Sender: TObject);
begin
  inherited;
  {if (not c_8_serv.Active) then
    c_8_serv.Open;
  if (c_8_serv.State in [dsBrowse, dsInactive]) then
  begin
    c_8_serv.Append;
  end;
  c_8_servDESCRICAO.AsString := DBEdit17.Text;
  DBEdit9.SetFocus;}
end;

procedure TfVendas.DtSrc1StateChange(Sender: TObject);
begin
  inherited;
 if (DtSrc1.DataSet.State in [dsInsert, dsEdit]) then
   btnProdutoProcura.Enabled := True
 else
   btnProdutoProcura.Enabled := False;
end;

procedure TfVendas.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  //buscaServico;
end;

procedure TfVendas.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  //buscaServico;
end;

procedure TfVendas.c_8_servNewRecord(DataSet: TDataSet);

begin
  inherited;
  {if (codserv >= 1999999) then
    codserv := codserv + 1;
  c_8_servCODDETALHE_SERV.AsInteger := codserv;
  c_8_servCODMOVIMENTO.AsInteger := cds_Mov_detCODDETALHE.asinteger;}
end;

procedure TfVendas.buscaServico;
begin
  {c_8_serv.Close;
  c_8_serv.Params[0].AsInteger := cds_Mov_detCODDETALHE.AsInteger;
  c_8_serv.Open;
  if (not c_8_serv.IsEmpty) then
    DBEdit17.Text := c_8_servDESCRICAO.AsString
  else
     DBEdit17.Text := '';
  sds_proc.Close;}
end;

procedure TfVendas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  {buscaServico;}
end;

procedure TfVendas.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  {buscaServico;}
end;

procedure TfVendas.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
 if Key in ['.'] then Key := ',';
end;

procedure TfVendas.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja Incluir nos Itens abaixo,'+#13+#10+' os itens '+#13+#10+
    ' relacionados aos produtos abaixo ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    baixamatprimas('BAIXACONJUNTA', cds_MovimentoCODMOVIMENTO.AsInteger);
  end;
end;

procedure TfVendas.DtSrc1DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (DtSrc1.State in [dsEdit]) then
    if (DtSrc.State in [dsBrowse, dsInactive]) then
       cds_Movimento.Edit;
end;

procedure TfVendas.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  // Se usa Lotes no cadastro de Produto então abre form.
  if (cds_Mov_detLOTES.AsString = 'S') then
  begin
    fVendaLoteLancao := TfVendaLoteLancao.Create(Application);
    try
      fVendaLoteLancao.Edit1.Text := cds_Mov_detLOTE.AsString;
      fVendaLoteLancao.ShowModal;
      if (fVendaLoteLancao.grava = 'sim') then
      begin
        //verificar se existe o estoque do lote lançado
        if (cdslotes.Active) then
          cdslotes.Close;
        cdslotes.Params[0].Clear;
        cdslotes.Params[1].AsString := fVendaLoteLancao.lote;
        cdslotes.Params[2].AsInteger := cds_Mov_detCODPRODUTO.AsInteger;
        cdslotes.Open;
        if (cdslotesESTOQUE.AsFloat < cds_Mov_detQUANTIDADE.AsFloat) then
        begin
          MessageDlg('Estoque insuficiente para este lote.', mtWarning, [mbOK], 0);
        end
      end;
    finally
      fVendaLoteLancao.Free;
    end;
  end;
end;

procedure TfVendas.baixamatprimas(tipomat: string; codmovt: integer);
var tot, toti, estoque: double;
  contalinha1, cod_cli, cod_mov, cod_ven :integer;
  dt_mov: TDateTime;
  cliente, vendedor, teveLancamento: string;
  TD: TTransactionDesc;
  FEstoque : TEstoque;
  FVen : TVendaCls;
begin
  teveLancamento := 'NAO';
  // Baixa as materias primas
  if (not cdsLotesMem.Active) then
    cdsLotesMem.open;
  // Limpo o cds.
  while (not cdsLotesMem.Eof) do
  begin
    cdsLotesMem.Delete;
  end;
  tot := 0;
  toti := 0;
  estoque := 0;
  if (cdsDetalhe.Active) then
      cdsDetalhe.Close;
  cdsDetalhe.Params[0].AsInteger := codmovt;
  cdsDetalhe.Params[1].AsString := tipomat;
  cdsDetalhe.Open;
  {** se não estiver vazio procuro pela matéria prima}
  if (not cdsDetalhe.IsEmpty) then
  begin
    cdsDetalhe.First;
    codigo_cliente :=  cds_MovimentoCODCLIENTE.AsInteger;
    data_movimento :=  DateToStr(cds_MovimentoDATAMOVIMENTO.AsDateTime);
    while not cdsDetalhe.Eof do
    begin
      if (cds.Active) then
        cds.Close;
      cds.Params[0].AsInteger := cdsDetalheCODPRODMP.AsInteger;
      //cds.Params[1].AsString := tipomat;
      cds.Open;
      if (not cds.IsEmpty) then
      begin
        {** adiciono um novo movimento}
        cds.First;
        while not cds.Eof do
        begin
          {================================================================= }
          {Buscar na tabela LOTE se usar o Lote mais velho que tenha estoque }
          {================================================================= }
          if (cdsUSALOTE.AsString = 'S') then
          begin
            if (cdslotes.Active) then           /// foi alterado o cdslotes para cliente Guiomar
              cdslotes.Close;
            cdslotes.Params[0].AsInteger := cdsCODPRODUTO.AsInteger;
            cdslotes.Open;
            //if (cdslotesESTOQUE.AsFloat >= (cdsDetalheQUANTIDADE.AsFloat * cdsQTDEUSADA.AsFloat)) then
            //begin
            //  estoque := (cdsDetalheSUM.AsFloat);
            //end
            //else begin
            estoque := cdslotesESTOQUE.AsFloat;
            //end;
          end
          else
          begin
            //estoque := cdsDetalheSUM.AsFloat;
            estoque := cdslotesESTOQUE.AsFloat;
          end;
          {================================================================= }
          { Fim do lançamento do LOTE                                        }
          {================================================================= }
          {Enquanto o 'Estoque' for > 0 , ir inserindo o item }
          tot := (cdsDetalheSUM.AsFloat);
          While (Estoque > 0.00099999999999) do
          begin
            {Gravo os itens no CDS VIRTUAL para ver se este item já foi lançado em }
            { outro item, este mesmo lote }
            if (cdsLotesMem.Locate('CODPRO;LOTE', VarArrayOf([cdsCODPRO.AsString, cdslotesLOTE.AsString]), [loCaseInsensitive])) then
            begin
              cdsLotesMem.Edit;
              if ((cdsLotesMemESTOQUE.AsFloat - tot) <= 0) then
              begin
                cdsLotes.Next;
                if (cdsLotesMem.Locate('CODPRO;LOTE', VarArrayOf([cdsCODPRO.AsString, cdslotesLOTE.AsString]), [loCaseInsensitive])) then
                begin
                  cdsLotesMem.Edit;
                end
                else begin
                   cdsLotesMem.Append;
                   cdsLotesMemCODPRO.AsString := cdsCODPRO.AsString;
                   cdsLotesMemLOTE.AsString := cdslotesLOTE.AsString;
                   cdsLotesMemESTOQUE.AsFloat := cdslotesESTOQUE.AsFloat - tot;
                end;
              end
              else
                cdsLotesMemESTOQUE.AsFloat := cdsLotesMemESTOQUE.AsFloat - estoque;
            end
            else begin
              cdsLotesMem.Append;
              cdsLotesMemCODPRO.AsString := cdsCODPRO.AsString;
              cdsLotesMemLOTE.AsString := cdslotesLOTE.AsString;
              cdsLotesMemESTOQUE.AsFloat := cdslotesESTOQUE.AsFloat - tot;
            end;
            cdsLotesMem.Post;
            if (cds_Mov_det.State in [dsBrowse]) then
               btnNovo.Click;
            teveLancamento := 'SIM';
            {** aqui pego as Materias primas e lanço na movimento detalhe}
            cds_Mov_detCODPRODUTO.AsInteger := cdsCODPRODUTO.AsInteger;
            cds_Mov_detDESCPRODUTO.AsString := cdsPRODUTO.AsString;
            if (tot <= estoque) then
              cds_Mov_detQUANTIDADE.AsFloat := tot //Estoque;
            else
              cds_Mov_detQUANTIDADE.AsFloat := Estoque;
            cds_Mov_detDESCPRODUTO.AsString := cdsPRODUTO.AsString;
            cds_Mov_detCODPRO.AsString := cdsCODPRO.AsString;
            cds_Mov_detUN.AsString := cdsUNIDADEMEDIDA.AsString;
            if (cdsUSALOTE.AsString = 'S') then
            begin
               cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
               cds_Mov_detLOTES.AsString := 'S';
               cds_Mov_detPRECO.AsFloat := cdslotesPRECO.AsFloat
            end
            else begin
              if (cdsDetalheUSAPRECO.AsString = 'PRECOVENDA') THEN
                cds_Mov_detPRECO.AsFloat := cdsVALOR_PRAZO.AsFloat
              else if (cdsDetalheUSAPRECO.AsString = 'PRECOCOMPRA') THEN
                cds_Mov_detPRECO.AsFloat := cdsVALORUNITARIOATUAL.AsFloat
              else
                cds_Mov_detPRECO.AsFloat := 0;
            end;
            if (cds_Mov_det.State in [dsInsert]) then
              cds_Mov_det.Post;
            if ((Estoque + 0.000999) >= (cdsDetalheSUM.AsFloat)) then
              Estoque := 0
            else begin
              tot := tot - estoque;
              { Se cair aqui é pq usa lote e o primeiro Lote tem estoque menor q o lançado }
              { Não estou parando o lançamento caso não tenha mais lotes }
              cdsLotes.Next;
              if (cdslotesESTOQUE.AsFloat >= tot) then
              begin
                estoque := tot;
              end
              else begin
                estoque := cdslotesESTOQUE.AsFloat;
              end;

            end;
            if (cdsLotes.Eof) then
              estoque := 0;
          end; // Fecha o While do Estoque > 0
          {*****************************************************************}
          { Rotina Não usa Lote :  Não usa Lote , então faz a Rotina abaixo }
          if (cdsUSALOTE.AsString <> 'S') then
          begin
            if (cds_Mov_det.State in [dsBrowse]) then
               btnNovo.Click;
            teveLancamento := 'SIM';
            {** aqui pego as Materias primas e lanço na movimento detalhe}
            cds_Mov_detCODPRODUTO.AsInteger := cdsCODPRODUTO.AsInteger;
            cds_Mov_detDESCPRODUTO.AsString := cdsPRODUTO.AsString;
            cds_Mov_detQUANTIDADE.AsFloat := tot; //Qtde Usada;
            cds_Mov_detCODPRO.AsString := cdsCODPRO.AsString;
            cds_Mov_detUN.AsString := cdsUNIDADEMEDIDA.AsString;
            if (cdsDetalheUSAPRECO.AsString = 'PRECOVENDA') THEN
              cds_Mov_detPRECO.AsFloat := cdsVALOR_PRAZO.AsFloat
            else if (cdsDetalheUSAPRECO.AsString = 'PRECOCOMPRA') THEN
              cds_Mov_detPRECO.AsFloat := cdsVALORUNITARIOATUAL.AsFloat
            else
              cds_Mov_detPRECO.AsFloat := 0;
            if (cds_Mov_det.State in [dsInsert]) then
              cds_Mov_det.Post;
          end;
          { Fim da Rotina Não usa Lote                                      }
          {*****************************************************************}
          cds.Next;
         end;
      end; //Fecho While
      cdsDetalhe.Next;
    end;
    if (cdsLotes.Active) then
      cdslotes.Close;
    cod_Mov := cds_MovimentoCODMOVIMENTO.AsInteger;
    if (cds_Movimento.State in [dsInsert, dsEdit]) then
      btnGravar.Click;
    //codigo_moviemento := cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsLotesMem.Close;
  end;
  if ((teveLancamento = 'SIM') and (tipomat = 'BAIXAAUTOMATICA')) then
  begin
    try
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET BAIXA = ' +
        QuotedStr('1') + ' WHERE CODMOVIMENTO = ' +
        IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger));

      // Gerando a Venda
      Try
        fven := TVendaCls.Create;
        fven.CodMov               := cod_Mov;
        fven.DataVenda            := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        fven.DataVcto             := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        fven.Serie                := 'O';
        fven.NotaFiscal           := cod_Mov;
        fven.CodCliente           := cds_MovimentoCODCLIENTE.AsInteger;
        fven.CodVendedor          := cds_MovimentoCODVENDEDOR.AsInteger;
        fven.CodCCusto            := cds_MovimentoCODALMOXARIFADO.AsInteger;
        fven.ValorPagar           := 0;
        fven.NParcela             := 1;
        fven.inserirVenda(0);
      Finally
        fVen.Free;
      end;
      dmnf.baixaEstoque(cds_MovimentoCODMOVIMENTO.AsInteger, cds_MovimentoDATAMOVIMENTO.AsDateTime, 'VENDA');

      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  end;

  fVendas.SetFocus;
  MessageDlg('Itens Materia Prima Inseridos com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfVendas.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (cds_Mov_detPRECO.AsFloat = 0) then
  if (cds_Mov_detQUANTIDADE.AsFloat > 0) then
    cds_Mov_detPRECO.AsFloat := cds_Mov_detValorTotal.asfloat/cds_Mov_detQUANTIDADE.AsFloat;
end;

procedure TfVendas.MaskEdit1Exit(Sender: TObject);
begin
  inherited;
  if (MaskEdit1.Text = '   -    ') then
  begin
    dbeCliente.SetFocus;
    exit;
  end;
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  if (dtsrc.State in [dsBrowse, dsInactive]) then
    exit;
  // Traz o Véiculo
  if (cds_Veiculocli.Active) then
    cds_Veiculocli.Close;
  cds_Veiculocli.Params[1].Clear;
  cds_Veiculocli.Params[2].Clear;
  cds_Veiculocli.Params[0].AsString := MaskEdit1.Text;
  cds_Veiculocli.Open;
  if (cds_Veiculocli.IsEmpty) then
  begin
    cod_cli := 1; //cds_MovimentoCODCLIENTE.AsInteger;
    BitBtn9.Click;
    dbeCliente.SetFocus;
  end
  else begin
    Label10.Caption := cds_VeiculocliMARCA_MODELO.AsString;
    cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
    if (sdsVeiculoCli.Active) then
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
      prazoCliente := sdsVeiculoCli.Fields[3].AsFloat;
      DBComboBox1.SetFocus;
    end;
  end;
end;


procedure TfVendas.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
  dbeProduto.SetFocus;
end;

procedure TfVendas.dbeProdutoKeyPress(Sender: TObject; var Key: Char);
var sql: String;
begin
  if (key = #13) then
  begin
    if (DtSrc1.DataSet.State in [dsInsert, dsEdit]) then
    begin
      if (dbeProduto.Text = '') then
      begin
        btnProdutoProcura.Click;
        procurouProd := 'S';
        exit;
      end
      else
      begin
        procurouProd := 'S';
        PesquisaProdutos;
        //BitBtn4.TabStop := False;
        //if (usalote = 'S') then
        //  BitBtn4.TabStop := True;
      end;
    end;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendas.dbeClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (dtsrc.State in [dsInsert]) then
    begin
      if (dbeCliente.Text = '') then
      begin
        btnClienteProcura.Click;
        if (ComboBox1.Enabled = true) then
          ComboBox1.SetFocus
        else
          dbeProduto.SetFocus;
      end;
    end;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfVendas.insereMatPrima;
var estoqueNecessario, prVenda, estoqueAtual: double;
begin
  // Abro um CDS com o total do estoque
  if (cdsEstoque.Active) then
    cdsEstoque.Close;
  begin
    cdsEstoque.Params.ParamByName('pData1').AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
    cdsEstoque.Params.ParamByName('prod').AsInteger := cds_mov_detCodProduto.AsInteger;
    cdsEstoque.Open;
    if (cdsEstoque.IsEmpty) then
    begin
      MessageDlg('Estoque de Produtos insuficiente, faltou ' +
        FloatToStr(estoqueNecessario) + ' itens.', mtWarning, [mbOK], 0);
      exit;
    end;
    cdsETotal.Params[0].AsInteger := 0;
    cdsETotal.Open;
    While not cdsEstoque.Eof do
    begin
      cdsETotal.Append;
      cdsETotalCODPRODUTO.AsInteger := cdsEstoqueCOD.AsInteger;
      cdsETotalQUANTIDADE.AsFloat := cdsEstoqueSUM.AsFloat;
      cdsETotal.Post;
      cdsEstoque.Next;
    end;
  end;
  if (cdsETotal.Locate('CODPRODUTO', cds_mov_detCodProduto.AsInteger, [loPartialKey])) then
  begin
    estoque := cdsETotalQUANTIDADE.AsFloat;
    estoqueAtual := estoque;
  end
  else
    estoque := 0;
  inseridoMatPrima := 'SIM';
  // Verifico se o item tem estoque, se tiver não precisa retirar da materia prima
  if (cds_Mov_detQUANTIDADE.AsFloat <= (estoque + 0.001)) then
  begin
    if (cdsETotal.State in [dsBrowse]) then
      cdsETotal.Edit;
    cdsETotalQuantidade.AsFloat := estoque - cds_Mov_detQUANTIDADE.AsFloat;
    cdsETotal.Post;
    inseridoMatPrima := 'NAO';
    exit;
  end
  else begin // Não tem estoque , então vejo quanto preciso de materia prima
    cds_Mov_det.Edit;
    estoqueNecessario := cds_Mov_detQUANTIDADE.AsFloat - estoque;
    estoqueAtual := estoqueAtual - estoque;
    prVenda := cds_Mov_detPRECO.AsFloat;
    cds_Mov_detQUANTIDADE.AsFloat := estoque;
    if (cdsETotal.State in [dsBrowse]) then
      cdsETotal.Edit;
    cdsETotalQuantidade.AsFloat := 0;
    cdsETotal.Post;
  end;
  // Busco pela Materia Prima se não tiver estoque
  if (not cMatPrima.Active) then
    cMatPrima.Open;
  // Filtro as Materias Primas referente ao produto Informado
  cMatPrima.Filtered := False;
  cMatPrima.Filter := 'CODPRODUTO=' + IntToStr(cds_Mov_detCODPRODUTO.AsInteger);
  cMatPrima.Filtered := True;
  // Pego a Materia Prima
  if (cdsETotal.Locate('CODPRODUTO', cMatPrimaCODPRODMP.AsInteger, [loPartialKey])) then
  begin
    estoque := cdsETotalQuantidade.AsFloat;
    estoqueAtual := estoque;
  end;
  While (not cMatPrima.eof) do
  begin
    if (cdsETotalCodProduto.AsInteger <> cMatPrimaCODPRODMP.AsInteger) then
    begin
      if (cdsETotal.Locate('CODPRODUTO', cMatPrimaCODPRODMP.AsInteger, [loPartialKey])) then
      begin
        estoque := cdsETotalQuantidade.AsFloat;
        estoqueAtual := estoque;
      end;
    end;
    if (estoqueNecessario < 0.001) then
      exit;
    // Se MatPrima filtrada tiver estoque insere
    if (estoque > 0) then
    begin
      if (DtSrc1.DataSet.State in [dsInsert, dsEdit]) then
        DtSrc1.DataSet.Post;
      DtSrc1.DataSet.Append;
      {** aqui pego as Materias primas e lanço na movimento detalhe}
      cds_Mov_detCODPRODUTO.AsInteger := cMatPrimaCODPRODMP.AsInteger;
      cds_Mov_detDESCPRODUTO.AsString := cMatPrimaPRODUTO.AsString;
      if (estoqueNecessario <= (estoqueAtual + 0.001)) then
      begin
        cds_Mov_detQUANTIDADE.AsFloat := estoqueNecessario;
        estoqueNecessario := 0;
        estoqueAtual := estoqueAtual - estoqueNecessario;
        if (cdsETotal.State in [dsBrowse]) then
          cdsETotal.Edit;
        cdsETotalQuantidade.AsFloat := estoque - cds_Mov_detQUANTIDADE.AsFloat;
        cdsETotal.Post;
      end
      else begin
        cds_Mov_detQUANTIDADE.AsFloat := estoqueAtual;
        estoqueNecessario := estoqueNecessario - estoqueAtual;
        estoqueAtual := 0;
        if (cdsETotal.State in [dsBrowse]) then
          cdsETotal.Edit;
        cdsETotalQuantidade.AsFloat := 0;
        cdsETotal.Post;
        MessageDlg('Estoque de Produtos insuficiente, faltou ' +
        FloatToStr(estoqueNecessario) + ' itens.', mtWarning, [mbOK], 0);
      end;
      cds_Mov_detDESCPRODUTO.AsString := cMatPrimaPRODUTO.AsString;
      cds_Mov_detCODPRO.AsString := cMatPrimaCODPRO.AsString;
      cds_Mov_detUN.AsString := cMatPrimaUNIDADEMEDIDA.AsString;
      cds_Mov_detPRECO.AsFloat := prVenda;
      cds_Mov_detPRECOCUSTO.AsFloat := cMatPrimaPRECOMEDIO.AsFloat;
      if (cds_Mov_det.State in [dsInsert]) then
        cds_Mov_det.Post;
    end;
    cMatPrima.Next;
  end;
end;

procedure TfVendas.cds_MovimentoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfVendas.cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro.' + #10#13 + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfVendas.c_8_servReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Erro para gravar descrição do Serviço.' + #10#13 + E.Message, mtWarning, [mbOK], 0);
end;

procedure TfVendas.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cds_Mov_detQUANTIDADE.AsFloat = 0) then
    if (qtde > 0) then
      cds_Mov_detQUANTIDADE.AsFloat := cds_Mov_detQTDE_ALT.AsFloat/qtde;
  end;

end;

procedure TfVendas.JvDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  buscaServico;
  lblEstoque.Caption := '..';
end;

procedure TfVendas.JvDBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  buscaServico;
end;

procedure TfVendas.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  // Se usa Lotes no cadastro de Produto então abre form.
  {if (cds_Mov_detLOTES.AsString = 'S') then
  begin
    fVendaLoteLancao := TfVendaLoteLancao.Create(Application);
    try
      fVendaLoteLancao.Edit1.Text := cds_Mov_detLOTE.AsString;
      fVendaLoteLancao.ShowModal;
      if (fVendaLoteLancao.grava = 'sim') then
      begin
        //verificar se existe o estoque do lote lançado
        if (cdslotes.Active) then
          cdslotes.Close;
        cdslotes.Params[0].Clear;
        cdslotes.Params[1].AsString := fVendaLoteLancao.lote;
        cdslotes.Params[2].AsInteger := cds_Mov_detCODPRODUTO.AsInteger;
        cdslotes.Open;
        if (cdslotesESTOQUE.AsFloat < cds_Mov_detQUANTIDADE.AsFloat) then
        begin
          MessageDlg('Estoque insuficiente para este lote.', mtWarning, [mbOK], 0);
        end
      end;
    finally
      fVendaLoteLancao.Free;
    end;
  end;
  }

  fDetalhe := TfDetalhe.Create(Application);
  try
    //fDetalhe.detcodMovimento := cds_Mov_detCODDETALHE.AsInteger;
    fDetalhe.ShowModal;
  finally
    fDetalhe.Free;
  end;

end;

procedure TfVendas.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  buscaServico;
end;

procedure TfVendas.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  buscaServico;
end;

procedure TfVendas.JvDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  buscaServico;
end;

procedure TfVendas.JvDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  buscaServico;
end;

procedure TfVendas.btnOrcWordClick(Sender: TObject);
var
WinWord, Docs, Doc: Variant;
caminho : String;
begin
  pnRelatorio.Visible := False;
  cds_j.Close;
  cds_j.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_j.Open;

    // Cria objeto principal de controle
    WinWord := CreateOleObject('Word.Application');
    // Mostra o Word
    WinWord.Visible := true;
    // Pega uma interface para o objeto que manipula documentos
    Docs := WinWord.Documents;
    // Abre um Documento

    caminho := ExtractFilePath(Application.ExeName);

    Doc := Docs.Open( caminho + '\doc.doc') ;

    // Substitui texto via "name parameters"
    Doc.Content.Find.Execute(FindText := '<CLI.RAZAOSOCIAL>', ReplaceWith := cds_jRAZAOSOCIAL.AsString);
    Doc.Content.Find.Execute(FindText := '<CLI.CNPJ>', ReplaceWith := cds_jCNPJ.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.LOGRADOURO>', ReplaceWith := cds_jLOGRADOURO.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.CIDADE>', ReplaceWith := cds_jCIDADE.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.BAIRRO>', ReplaceWith := cds_jBAIRRO.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.UF>', ReplaceWith := cds_jUF.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.CEP>', ReplaceWith := cds_jCEP.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.DDD>', ReplaceWith := cds_jDDD.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.TELEFONE>', ReplaceWith := cds_jTELEFONE.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.DADOSADICIONAIS>', ReplaceWith := cds_jDADOSADICIONAIS.AsString);
    Doc.Content.Find.Execute(FindText := '<ENDE.NUMERO>', ReplaceWith := cds_jNUMERO.AsString);

    // Grava documento


    Doc.SaveAs( caminho + cds_jRAZAOSOCIAL.AsString + '.doc');
    // Imprime
    //Doc.PrintOut(false);
    // Fecha o Word
    //WinWord.Quit;
{
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
     cds_Movimento.Edit;
     cds_MovimentoCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
     cds_MovimentoNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end; }
end;

procedure TfVendas.existevenda;
begin
    if (fVendaFinalizar.cds.Active) then
    fVendaFinalizar.cds.Close;
    fVendaFinalizar.cds.Params[0].Clear;
    fVendaFinalizar.cds.Params[1].AsInteger:= fVendas.cds_MovimentoCODMOVIMENTO.AsInteger;
    fVendaFinalizar.cds.Open;
    if (not fVendaFinalizar.cds.IsEmpty) then
      vendaexiste := 'SIM'
    else
      vendaexiste := 'NAO';
end;

procedure TfVendas.precolista;
begin
   if (cdslista.Active) then
     cdslista.Close;
   cdslista.Params[0].AsString := cds_MovimentoCODCLIENTE.AsString;
   cdslista.Params[1].AsString := CODIGOPRODUTO;
   cdslista.Open;
   if (not cdslista.IsEmpty) then
   begin
     cds_Mov_detCODPRODUTO.AsInteger := cdslistaCODPRODUTO.AsInteger;
      cds_Mov_detDESCPRODUTO.Value := cdslistaPRODUTO.Value;
     cds_Mov_detCODPRO.AsString := cdslistaCODIGO.AsString;
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


      if (estoque_negativo = 'TRUE') then // não permito venda com saldo negativo
        if (dm.scds_produto_procESTOQUEATUAL.Value <= 0) then
        begin
           ShowMessage('Produto com saldo negativo !');
           dbeProduto.Clear;
           DBEdit17.Clear;
           if (dm.scds_produto_proc.Active) then
             dm.scds_produto_proc.Close;
           Exit;
        end;

      cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
      cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
      cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
      if (cds_Mov_detQUANTIDADE.AsFloat < 1) then
        cds_Mov_detQUANTIDADE.AsFloat := 1;
      qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
      if(cds_MovimentoDesconto.asFloat > 0 ) then
        cds_Mov_detQTDE_ALT.AsFloat := cds_MovimentoDesconto.asFloat
      else
        cds_Mov_detQTDE_ALT.AsFloat := 0;
      cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
      if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
         cds_Mov_detPRECO.AsFloat :=
         dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
      cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
   end;
end;


procedure TfVendas.edChassiExit(Sender: TObject);
begin
  inherited;
  if (edChassi.Text = '') then
  begin
    dbeCliente.SetFocus;
    exit;
  end;
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  if (dtsrc.State in [dsBrowse, dsInactive]) then
    exit;
  // Traz o Véiculo
  if (cds_Veiculocli.Active) then
    cds_Veiculocli.Close;
  cds_Veiculocli.Params[1].Clear;
  cds_Veiculocli.Params[0].Clear;
  cds_Veiculocli.Params[2].AsString := edChassi.Text;
  cds_Veiculocli.Open;
  if (cds_Veiculocli.IsEmpty) then
  begin
    cod_cli := 1; //cds_MovimentoCODCLIENTE.AsInteger;
    BitBtn9.Click;
    chassi := EdChassi.Text;
    dbeCliente.SetFocus;
  end
  else begin
    Label10.Caption := cds_VeiculocliMARCA_MODELO.AsString;
    cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
    if (sdsVeiculoCli.Active) then
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
      prazoCliente := sdsVeiculoCli.Fields[3].AsFloat;
      DBComboBox1.SetFocus;
    end;
  end;

end;

procedure TfVendas.BitBtn7Click(Sender: TObject);
begin
 fFiltroEstoque := TfFiltroEstoque.Create(Application);
 try
   fFiltroEstoque.Edit3.Text := dbeProduto.EditText;
   fFiltroEstoque.ComboBox1.Text := ComboBox1.Text;
   fFiltroEstoque.ShowModal;

 finally
   fFiltroEstoque.Free;
 end;
end;

procedure TfVendas.RadioPedidoClick(Sender: TObject);
begin
  RadioOrcamento.Checked := False;
  {Orcamento.Visible := False;
  Orcamento.Enabled := False;}
  if (DtSrc.State in [dsBrowse]) then
    cds_Movimento.Edit;
  if (DtSrc1.State in [dsBrowse]) then
    cds_Mov_det.Edit;
end;

procedure TfVendas.RadioOrcamentoClick(Sender: TObject);
begin
  RadioPedido.Checked  := False;
  {Orcamento.Visible := True;
  Orcamento.Enabled := True;}
  if (DtSrc.State in [dsBrowse]) then
    cds_Movimento.Edit;
  if (DtSrc1.State in [dsBrowse]) then
    cds_Mov_det.Edit;
end;

procedure TfVendas.cbPrazoChange(Sender: TObject);
begin
  cds_MovimentoFORMA_PAG.AsString := cbPrazo.Text;
  if (DtSrc.State in [dsBrowse]) then
    cds_Movimento.Edit;
  if (DtSrc1.State in [dsBrowse]) then
    cds_Mov_det.Edit;
end;

procedure TfVendas.BtnClick(Sender: TObject);
begin
  // rel
  if (pnRelatorio.Visible = True) then
    pnRelatorio.Visible := False
  else
    pnRelatorio.Visible := True;
end;

procedure TfVendas.cbPrazoClick(Sender: TObject);
begin
  if (DtSrc.State in [dsBrowse]) then
    cds_Movimento.Edit;
  if (DtSrc1.State in [dsBrowse]) then
    cds_Mov_det.Edit;
end;

procedure TfVendas.cbTransportadoraChange(Sender: TObject);
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

procedure TfVendas.cbTpTranspChange(Sender: TObject);
begin
  if (cds_Movimento.state in [dsBrowse]) then
   cds_Mov_det.Edit;
  if (cds_Movimento.State in [dsinsert, dsEdit]) then
      cds_MovimentoTPFRETE.AsString :=  IntToStr(cbTpTransp.ItemIndex);
end;

procedure TfVendas.btnTranspClick(Sender: TObject);
begin
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

procedure TfVendas.Margem_Confere;
var pCusto, margem: Double;
begin
    {
    if(imex = 99) then
      exit
    else
    }
    pCusto := 0;
      if (sqlCusto.Active) then
        sqlCusto.Close;
      sqlCusto.SQL.Clear;
      sqlCusto.SQL.Add('SELECT FIRST 1 COALESCE(P.PRECOMEDIO, 0) PRECOMEDIO, ' +
        ' COALESCE(P.VALORUNITARIOATUAL, 0) PRECOCOMPRA, ' +
        ' COALESCE(P.VALORMINIMO, 0) VALORMINIMO' +
        ' FROM PRODUTOS P ' +
        ' left outer join MOVIMENTODETALHE M on m.CODPRODUTO = p.CODPRODUTO ' +
        ' WHERE m.CODPRODUTO   = ' + InttoStr(cds_Mov_detCODPRODUTO.AsInteger) +
        //'   AND m.baixa      = 0 ' +
        ' order by m.CODDETALHE desc');
      sqlCusto.Open;
      //if (sqlCusto.FieldByName('VLR_BASE').AsFloat > 0) then
      //  pCusto := sqlCusto.FieldByName('VLR_BASE').AsFloat;
      pCusto := sqlCusto.FieldByName('PRECOMEDIO').AsFloat;
      if (pcusto = 0) then
        pCusto := sqlCusto.FieldByName('PRECOCOMPRA').AsFloat;
      if (pCusto > 0) then
      begin
        margem := cds_Mov_detPRECO.AsFloat / pCusto;
        margem := 100*(margem - 1);
        if (margem < mVendaPermi) then
        begin
          MessageDlg('Margem de Venda abaixo do permitido. ' + #13+#10 + ' Item: ' + cds_Mov_detCODPRO.AsString +
          ' - MV: ' + FormatFloat('##0.00',margem) + '% - PC: ' + FormatFloat('#,##0.00', pCusto), mtWarning, [mbOK], 0);
          valida := 'N';
        end;
      end;
      // AVALIANDO PRECO MINIMO
      if (cds_Mov_detPRECO.AsFloat < sqlCusto.FieldByName('VALORMINIMO').AsFloat) then
      begin
          MessageDlg('Valor da venda abaixo do permitido. ' + #13+#10 + ' Item: ' +
            cds_Mov_detCODPRO.AsString, mtWarning, [mbOK], 0);
          valida := 'N';
      end;
end;

procedure TfVendas.GroupBox1Click(Sender: TObject);
begin
  inherited;
  if (dbeCliente.Text = '') then
    exit;

  if (dm.cadastroClienteTipo = 'COMPLETO') then
  begin
    fClienteCadastro := TfClienteCadastro.Create(Application);
    try
      fClienteCadastro.cds_cli.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
      fClienteCadastro.cds_cli.Open;
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
      fCliente1.cds_cli.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
      fCliente1.cds_cli.Open;
      if fCliente1.cds_CliEnd.Active then
        fCliente1.cds_CliEnd.Close;
      fCliente1.cds_CliEnd.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
      fCliente1.cds_CliEnd.Open;
      fCliente1.ShowModal;
    finally
      fCliente1.Free;
      varform := '';
    end;
  end;
end;

procedure TfVendas.Label3Click(Sender: TObject);
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

procedure TfVendas.dbedtVALOR_DESCONTOExit(Sender: TObject);
begin
  inherited;
  //
  if((cds_Mov_detValorTotal.AsFloat > 0 )  and (cds_Mov_detVALOR_DESCONTO.AsFloat > 0)) then
  cds_Mov_detQTDE_ALT.AsFloat := ( (cds_Mov_detVALOR_DESCONTO.AsFloat * cds_Mov_detQUANTIDADE.AsFloat) / (cds_Mov_detPRECO.AsFloat * cds_Mov_detQUANTIDADE.AsFloat)) *100;
end;

procedure TfVendas.buscaCfop(codCli: Integer);
var strCfop: String;
begin
  if (sqlBCfop.Active) then
    sqlBCfop.Close;

  sqlBCfop.SQL.clear;
  strCfop := 'select c.CFOP, ec.UF, c.CODFISCAL from clientes c , enderecocliente ec ' +
    'where c.codcliente = ec.codcliente ' +
    '  and ec.tipoend   = 0 ' +
    '  and c.codcliente = ' + IntTostr(codCli);

  sqlBCfop.SQL.Add(strCfop);
  sqlBCfop.Open;

  ufClienteVenda := sqlBCfop.FieldByName('UF').AsString;
  codFiscalClienteVenda := sqlBCfop.FieldByName('CODFISCAL').AsString;

  if (dm.ufPadrao = sqlBCfop.Fields[1].AsString) then
  begin
    if (sqlBCfop.Fields[0].AsString = '') then
      edCfop.Text := dm.cfopSaida
    else
      edCfop.Text := sqlBCfop.Fields[0].AsString;
  end
  else if (dm.ufPadrao <> sqlBCfop.Fields[1].AsString) then
  begin
    if (sqlBCfop.Fields[0].AsString = '') then
      edCfop.Text := dm.cfopSaidaF
    else
      edCfop.Text := sqlBCfop.Fields[0].AsString;
  end;
  if (dm.validaCfop(edCFOP.Text) = False) then
  begin
    MessageDlg('CFOP não cadastrado em CFOP-Estado.', mtWarning, [mbOK], 0);
  end;
end;

procedure TfVendas.edCfopExit(Sender: TObject);
begin
  inherited;
  if (dm.validaCfop(edCFOP.Text) = False) then
  begin
    MessageDlg('CFOP não cadastrado em CFOP-Estado.', mtWarning, [mbOK], 0);
  end;
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

procedure TfVendas.Label29Click(Sender: TObject);
begin
  fEstado := TfEstado.Create(Application);
  try
    fEstado.sqlCfop := 'select esta.CODESTADO, esta.CFOP ' +
      ' ,esta.UF, esta.ICMS ,esta.REDUCAO, cfo.CFNOME ' +
      ' ,esta.IPI, esta.CSTIPI, esta.ICMS_SUBSTRIB, esta.ICMS_SUBSTRIB_IC ' +
      ' ,esta.ICMS_SUBSTRIB_IND, esta.CST , esta.PIS , esta.COFINS' +
      ' ,esta.CSTPIS , esta.CSTCOFINS, esta.DADOSADC1, esta.DADOSADC2' +
      ' ,esta.DADOSADC3, esta.DADOSADC4, esta.DADOSADC5, esta.DADOSADC6' +
      ' ,esta.NAOENVFATURA, esta.CSOSN, esta.CODFISCAL' +
      ' FROM ESTADO_ICMS esta ' +
      ' left outer join CFOP cfo on cfo.CFCOD = esta.CFOP ' +
      ' where esta.CFOP = ' + QuotedStr(edCfop.text) +
      ' order by esta.CFOP';
    fEstado.ShowModal;
  finally
    fEstado.Free;
  end;
end;

procedure TfVendas.btnEstoqueVendaClick(Sender: TObject);
begin
  inherited;
  pnRelatorio.Visible := False;
  VCLReport1.FileName := str_relatorio + 'pedidoestoque.rep';
  VCLReport1.Title    := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfVendas.btnEstoqueMatPrimaClick(Sender: TObject);
begin
  inherited;
  pnRelatorio.Visible := False;
  VCLReport1.FileName := str_relatorio + 'pedidomatprima.rep';
  VCLReport1.Title    := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfVendas.PesquisaProdutos;
var sql: String;
begin
  cds_mov_detCFOP.asString := edCfop.text;
  if (usaprecolistavenda = 'S') then
  begin
    varonde := 'Lista';
    CODIGOPRODUTO := dbeProduto.Text;
    precolista;
    exit;
  end;
  if (dm.codBarra = 'N') then
  begin
    if (dtSrc1.State in [dsInsert, dsEdit]) then
    begin
      varonde := 'compra';
      var_F := 'venda';
      if (dbeProduto.Text = '') then
        exit;

      if DtSrc1.DataSet.State in [dsInactive] then
        if dbeProduto.Text='' then
          exit;

      if DtSrc1.DataSet.State in [dsBrowse] then
         DtSrc1.DataSet.Edit;
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      sql := ' select CODPRODUTO' +
        ', CODPRO , PRODUTO, UNIDADEMEDIDA, QTDE_PCT, ICMS, CODALMOXARIFADO' +
        ', PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL, PRECO_VENDA AS VALOR_PRAZO' +
        ', TIPO, ESTOQUEATUAL, LOCALIZACAO, LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO,' +
        ' PESO_QTDE, COD_COMISSAO, RATEIO, conta_despesa , IPI, OBS, ORIGEM, NCM ' +
        ' from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' +
        QuotedStr('TODOSGRUPOS') + ', ' + QuotedStr('TODOSSUBGRUPOS') + ',' +
        QuotedStr('TODASMARCAS') + ', ' + QuotedStr('TODASAPLICACOES') + ', ';
      if (dbeCliente.Text = '') then
        sql := sql + '0)'
      else
        sql := sql + dbeCliente.Text + ')';

      dm.scds_produto_proc.CommandText := sql;
      dm.scds_produto_proc.Params[0].AsInteger := 0;
      dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnProdutoProcura.Click;
        exit;
      end;

      if (estoque_negativo = 'TRUE') then // não permito venda com saldo negativo
        if (dm.scds_produto_procESTOQUEATUAL.Value <= 0) then
        begin
           ShowMessage('Produto com saldo negativo !');
           dbeProduto.Clear;
           DBEdit17.Clear;
           if (dm.scds_produto_proc.Active) then
             dm.scds_produto_proc.Close;
           Exit;
        end;
      dm.origemProdutoCfop := 0;
      if (not dm.scds_produto_proc.fieldByName('ORIGEM').IsNull) then
        dm.origemProdutoCfop := StrToInt(dm.scds_produto_proc.fieldByName('ORIGEM').asString);
      cds_mov_detCFOP.asString := dm.pesquisaCfopAUsar(dm.scds_produto_procCODPRODUTO.AsInteger,
        ufClienteVenda, codFiscalClienteVenda, dm.origemProdutoCfop, dm.scds_produto_procNCM.AsString, 'Saida');
      if (cds_mov_detCFOP.asString = '') then
        cds_mov_detCFOP.asString := edCfop.text;
      lblEstoque.Caption := FloatToStr(dm.scds_produto_procESTOQUEATUAL.asfloat);
      cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
      cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      cds_Mov_detOBS.AsString := dm.scds_produto_procOBS.asString;
      if ( cds_Mov_detQTDE_PCT.AsFloat < 1) then
        cds_Mov_detQTDE_PCT.AsFloat := 1;
      cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
      if ( cds_Mov_detQUANTIDADE.AsFloat < 1) then
        cds_Mov_detQUANTIDADE.AsFloat := 1;
      qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
      if(cds_MovimentoDesconto.asFloat > 0 ) then
        cds_Mov_detQTDE_ALT.AsFloat := cds_MovimentoDesconto.asFloat;
      cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
      cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat ;
      cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
      cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;

      //Usa Lote ??
      if (dm.scds_produto_procLOTES.AsString <> 'S') then
      begin
        usaLote := 'S';
        dm.scds_produto_proc.Close;
        if dbeProduto.Text = '' then
           dbeProduto.SetFocus;
        if DBEdit17.Text <> '' then
         DBEdit17.SetFocus;
      end
      else
        Bitbtn4.SetFocus;
    end;
  end
  else
  begin
    if (DtSrc1.DataSet.State in [dsInsert]) then
    begin
      if (dbeProduto.Text = '') then
      begin
        btnProdutoProcura.Click;
        exit;
      end
      else
      begin
        if (dm.codBarra = 'S') then // usa codigo de barra
        begin
          // busca pelo código de barra
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          sql := 'select CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA, QTDE_PCT' +
             ', ICMS, CODALMOXARIFADO, PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL ' +
             ', PRECO_VENDA AS VALOR_PRAZO, TIPO, ESTOQUEATUAL, LOCALIZACAO ' +
             ', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO, PESO_QTDE, COD_COMISSAO' +
             ', RATEIO, conta_despesa , IPI, OBS, ORIGEM, NCM '  +
             ' from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' + QuotedStr('TODOSGRUPOS') +
             ', ' + QuotedStr('TODOSSUBGRUPOS') + ' ,' + QuotedStr('TODASMARCAS') +
             ', ' + QuotedStr('TODASAPLICACOES') + ', ' ;
          if (dbeCliente.Text = '') then
            sql := sql + '0)'
          else
            sql := sql + dbeCliente.Text + ')';
          dm.scds_produto_proc.CommandText := sql + ' WHERE COD_BARRA = ' +
            QuotedStr(dbeProduto.Text) + ' or CODPRO = ' + QuotedStr(dbeProduto.Text);
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
             MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
            btnProdutoProcura.Click;
            exit;
          end;
        end
        else begin
          // busca pelo código de barra
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
             MessageDlg('Código não cadastrado, deseja cadastra-lo ?', mtWarning,
            [mbOk], 0);
            btnProdutoProcura.Click;
            exit;
          end;
        end;
        dm.origemProdutoCfop := 0;
        if (not dm.scds_produto_proc.fieldByName('ORIGEM').IsNull) then
          dm.origemProdutoCfop := StrToInt(dm.scds_produto_proc.fieldByName('ORIGEM').asString);

        cds_mov_detCFOP.asString := dm.pesquisaCfopAUsar(cds_Mov_detCODPRODUTO.AsInteger,
          ufClienteVenda, codFiscalClienteVenda, dm.origemProdutoCfop, cds_Mov_detNCM.AsString, 'Saida');
        if (cds_mov_detCFOP.asString = '') then
          cds_mov_detCFOP.asString := edCfop.text;

        if (estoque_negativo = 'TRUE') then // não permito venda com saldo negativo
          if (dm.scds_produto_procESTOQUEATUAL.Value <= 0) then
          begin
             ShowMessage('Produto com saldo negativo !');
             dbeProduto.Clear;
             DBEdit17.Clear;
             if (dm.scds_produto_proc.Active) then
              dm.scds_produto_proc.Close;
             Exit;
          end;
        cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
        cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
        cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
        cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
        if ( cds_Mov_detQTDE_PCT.AsFloat < 1) then
          cds_Mov_detQTDE_PCT.AsFloat := 1;
        cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
        estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
        if ( cds_Mov_detQUANTIDADE.AsFloat < 1) then
          cds_Mov_detQUANTIDADE.AsFloat := 1;
        qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
        if(cds_MovimentoDesconto.asFloat > 0 ) then
          cds_Mov_detQTDE_ALT.AsFloat := cds_MovimentoDesconto.asFloat;
        cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
        if dm.scds_produto_procQTDE_PCT.AsFloat > 1 then
           cds_Mov_detPRECO.AsFloat :=
           dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
        else
          cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
        valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
        cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
        cds_Mov_detALMOXARIFADO.AsString := '';
        cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      end;
    end;
  end;
end;

procedure TfVendas.rocarProduto1Click(Sender: TObject);
begin
  if (cds_Mov_detBAIXA.AsString = '1') then
  begin
    fTroca := TfTroca.Create(Application);
    try
      fTroca.codMovTroca := cds_MovimentoCODMOVIMENTO.AsInteger;
      fTroca.codProdATrocar := cds_Mov_detCODPRODUTO.AsInteger;
      fTroca.produtoATrocar := cds_Mov_detCODPRO.AsString + '-' + cds_Mov_detDESCPRODUTO.AsString;
      fTroca.valorATrocar := cds_Mov_detVALTOTAL.AsFloat;
      fTroca.codCCustoTroca := cds_MovimentoCODALMOXARIFADO.AsInteger;
      fTroca.codDetTroca := cds_Mov_detCODDETALHE.AsInteger;
      fTroca.ShowModal;
    finally
      fTroca.Free;
    end;
  end;
end;

end.
