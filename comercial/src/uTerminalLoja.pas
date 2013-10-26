unit uTerminalLoja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvSpin, StdCtrls, Buttons, Mask, DBCtrls, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, MMJPanel, FMTBcd, DB, DBClient,
  Provider, SqlExpr, DBLocal, DBLocalS, rpcompobase, rpvclreport, Menus;

type
  TfTerminalLoja = class(TForm)
    MMJPanel2: TMMJPanel;
    Label3: TLabel;
    Label4: TLabel;
    dbeProduto: TEdit;
    MMJPanel1: TMMJPanel;
    Panel1: TPanel;
    dbeSerie: TDBEdit;
    Label7: TLabel;
    btnSerie: TBitBtn;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    Label1: TLabel;
    JvSpinEdit1: TJvSpinEdit;
    DBEdit7: TDBEdit;
    btnClienteProcura: TBitBtn;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    Panel2: TPanel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    RadioGroup1: TRadioGroup;
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
    DtSrc: TDataSource;
    DtSrc1: TDataSource;
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
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detTotalPedido: TAggregateField;
    dsp_Mov_det: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
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
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
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
    cds_venda: TClientDataSet;
    cds_vendaCODMOVIMENTO: TIntegerField;
    cds_vendaCODCLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaNOMECLIENTE: TStringField;
    cds_vendaNOMEUSUARIO: TStringField;
    cds_vendaBANCO_1: TStringField;
    cds_vendaCODVENDA: TIntegerField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaFORMARECEBIMENTO: TStringField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaCONTROLE: TStringField;
    cds_vendaOBS: TStringField;
    cds_vendadiferenca: TFloatField;
    dsp_venda: TDataSetProvider;
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
    sds_vendaOBS: TStringField;
    sdsVeiculoCli: TSQLDataSet;
    MaskEdit1: TMaskEdit;
    Label18: TLabel;
    BitBtn2: TBitBtn;
    btnIncluir: TBitBtn;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    ds_serv: TDataSource;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    BitBtn3: TBitBtn;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    btnGravar: TBitBtn;
    BitBtn4: TBitBtn;
    btnProcurar: TBitBtn;
    DtSrcVenda: TDataSource;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    dbeUsuario: TDBEdit;
    dbeCliente: TDBEdit;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    cbConta: TComboBox;
    Label21: TLabel;
    sqs_tit: TSQLDataSet;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_DESP: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_DESP: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
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
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procTIT: TStringField;
    scdsCr_procSITUACAO: TStringField;
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
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1DP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    sUsuario: TSQLDataSet;
    sUsuarioCODUSUARIO: TSmallintField;
    sUsuarioNOMEUSUARIO: TStringField;
    sUsuarioSTATUS: TSmallintField;
    sUsuarioPERFIL: TStringField;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Finalizar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    Oramento1: TMenuItem;
    VCLReport1: TVCLReport;
    Panel3: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    GroupBox1: TGroupBox;
    DbEdit17: TEdit;
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_MovimentoBeforePost(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure cds_vendaBeforePost(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbEdit17Exit(Sender: TObject);
    procedure c_8_servNewRecord(DataSet: TDataSet);
    procedure c_8_servReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
     codproduto : integer;
     cod_nat : integer;
     natureza : string;
     cod_vendedor_padrao : integer;
     nome_vendedor_padrao : string;
     codcliente : integer;
     precovenda : double;
     centro_receita : integer;
     codalmoxarif: integer;
     tiporel: string;
     servico : string;
     codserv : integer;
     cod_mov : integer;
     codrec  : integer;
     Cod_orig : Integer;
     tipo_origem : string;
     cod_cli_forn : Integer;
     c_f : string;
     procedure gerarVendaeCr();
  public
    { Public declarations }
     estoque : double;
     function buscaProdLista(codBarra, ProdLista:String): Integer;
     procedure buscaProduto;
     procedure imprimeCupom;
     procedure imprimePedido;
     procedure inserevenda;     
   end;

var
  fTerminalLoja: TfTerminalLoja;
  {centro_receita, cod_vendedor_padrao, COD_VENDA: integer;
  natureza, contas_pendentes, nome_vendedor_padrao, orcamento: string;
  codproduto, codcliente, codnatureza, codalmoxarif: integer;
  usaprecolista, tiporel: string;
  precovenda : double;}

implementation

uses UDm, uUtils, ufprocura_prod, uProcurar;

{$R *.dfm}

{ TfTerminalLoja }

procedure TfTerminalLoja.buscaProduto;
 var
 s:string;
begin
  if (dbeProduto.Text = '') then
    exit;
  if (cds_Movimento.State in [dsInactive, dsBrowse]) then
    btnIncluir.Click
  else
    cds_Mov_det.Append;
  s:='';

  if (buscaProdLista(dbeproduto.Text, 'Prod') = 1) then
  begin
    MessageDlg('Produto não encontrado', mtWarning, [mbOK], 0);
    BitBtn3.Click;
    {cds_mov_det.Cancel;
    dbeproduto.SetFocus;
    exit;}
  end
  else
  begin
      cds_Mov_detCODPRODUTO.AsInteger:=scds_produto_procCODPRODUTO.AsInteger;
      cds_Mov_detCODPRO.AsString:= dbeProduto.Text;
      cds_Mov_detCOD_BARRA.AsString := dbeProduto.Text;
      cds_Mov_detPRODUTO.Value:=scds_produto_procPRODUTO.Value;
      cds_Mov_detCOD_COMISSAO.AsInteger:=scds_produto_procCOD_COMISSAO.AsInteger;
      cds_Mov_detQTDE_PCT.AsFloat:=scds_produto_procQTDE_PCT.AsFloat;
      cds_Mov_detUN.AsString:=scds_produto_procUNIDADEMEDIDA.AsString;
      cds_Mov_detLOCALIZACAO.AsString:=scds_produto_procLOCALIZACAO.AsString;
      cds_Mov_detESTOQUEATUAL.AsFloat:=scds_produto_procESTOQUEATUAL.AsFloat;
      cds_Mov_detQUANTIDADE.AsFloat := 1;
      cds_Mov_detQTDE_ALT.AsFloat := 0;
      cds_Mov_detVALTOTAL.AsFloat := precovenda * cds_Mov_detQUANTIDADE.AsFloat;
      cds_Mov_detCODALMOXARIFADO.AsInteger:=scds_produto_procCODALMOXARIFADO.AsInteger;
      cds_Mov_detALMOXARIFADO.AsString := scds_produto_procALMOXARIFADO.AsString;
      cds_Mov_detICMS.AsFloat := scds_produto_procICMS.AsFloat;
      cds_Mov_detPRECO.AsFloat := precovenda;
      // É serviço ???
      if (scds_produto_procTIPO.AsString = 'SERV') then
      begin
        servico := 'SIM';
        GroupBox1.Visible := True;
        if (not ds_serv.DataSet.Active) then
        begin
          c_8_serv.params[0].asInteger := cds_Mov_detCODDETALHE.Asinteger;
          ds_serv.DataSet.Open;
        end;
          ds_serv.DataSet.Append;
          c_8_servCODMOVIMENTO.AsInteger := cds_Mov_detCODDETALHE.Asinteger;
          c_8_servDESCRICAO.AsString := scds_produto_procPRODUTO.AsString;
          DbEdit17.Enabled := True;
          DbEdit17.Text := scds_produto_procPRODUTO.AsString;
      end;
      cds_Mov_det.Post;
      scds_produto_proc.Close;
      dbeProduto.Text := '';
      if (servico = 'SIM') then
        DbEdit17.SetFocus
      else
        dbeProduto.SetFocus;
      servico := '';
  end;

end;

procedure TfTerminalLoja.gerarVendaeCr;
begin

end;

procedure TfTerminalLoja.imprimeCupom;
begin

end;

procedure TfTerminalLoja.imprimePedido;
begin

end;

procedure TfTerminalLoja.dbeProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
  if (dbeProduto.text = '') then
    exit;
    codproduto := 0;
    buscaProduto;
 end;
end;

procedure TfTerminalLoja.btnIncluirClick(Sender: TObject);
begin
  if cds_Movimento.Active then
    cds_Movimento.Close;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;


  if c_8_serv.Active then
    c_8_serv.Close;
      
  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;

  if DtSrc.DataSet.State in [dsInsert] then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
    cds_MovimentoDESCNATUREZA.AsString := natureza;
    cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
    cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
    cds_MovimentoCODCLIENTE.AsInteger := 1;
    cds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
    cds_MovimentoNewRecord(DtSrc.DataSet);
    cds_Movimento.Edit;
  end;

  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if DtSrc1.DataSet.State in [dsInactive] then
    begin
      DtSrc1.DataSet.Open;
      DtSrc1.DataSet.Append;
    end;
    if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;
  end;
  dbeProduto.SetFocus;

end;

function TfTerminalLoja.buscaProdLista(codBarra,  ProdLista: String): Integer;
var varsql:string;
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

  if scds_produto_proc.IsEmpty then
    scds_produto_proc.Close;
  if (RadioGroup1.ItemIndex = 1) then
    scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + dbeProduto.Text + ''''
  else
    scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + dbeProduto.Text + '''';
  scds_produto_proc.Open;

  if (not scds_produto_proc.IsEmpty) then
  begin
    codproduto := scds_produto_procCODPRODUTO.AsInteger;
    if scds_produto_procQTDE_PCT.AsFloat >= 1 then
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat / scds_produto_procQTDE_PCT.AsFloat
    else
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat;
  end;

  if (scds_produto_proc.IsEmpty) then
    result := 1
  else
    result := 0;

end;

procedure TfTerminalLoja.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger := 1;//usulog;
    cds_MovimentoCODVENDEDOR.Value := 1; //usulog;
    cds_MovimentoCODCLIENTE.AsInteger := 1;
    cds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
    cds_MovimentoCODALMOXARIFADO.AsInteger := 1;
end;

procedure TfTerminalLoja.cds_MovimentoBeforePost(DataSet: TDataSet);
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
end;

procedure TfTerminalLoja.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
   if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TfTerminalLoja.cds_vendaBeforePost(DataSet: TDataSet);
begin
    if cds_vendaSTATUS1.AsString = '0' then
      cds_vendaSTATUS.AsInteger := 0;
    if cds_vendaSTATUS1.AsString = '1' then
      cds_vendaSTATUS.AsInteger := 1;
    if cds_vendaSTATUS1.AsString = '2' then
      cds_vendaSTATUS.AsInteger := 2;
end;

procedure TfTerminalLoja.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TfTerminalLoja.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin

 { if (dm.sResolucao.Active) then
     dm.sResolucao.Close;
  dm.sResolucao.Params[0].AsString := MICRO;
  dm.sResolucao.Open;
  if (dm.sResolucao.IsEmpty) then
  begin
       videoW := '800';
       videoH := '600';
  end
  else
  begin
       videoW := dm.sResolucaoMODULO.AsString;
       videoH := dm.sResolucaoUSUARIO.AsString;
  end;   }

{  videoW := '800';
  videoH := '600';
  if videoW = '800' then
    Position := poDesigned
  else
    Position := poDesktopCenter;

  if (videoW <> 'widescreen') then
  begin
   if  (videoW <> '') then
   begin
     ScreenWidth := StrToInt(videoW);
     ScreenHeight := StrToInt(videoH);
     scaled := true;
     if (screen.width <> ScreenWidth) then
     begin
       height := longint(height) * longint(screen.height) DIV ScreenHeight;
       width := longint(width) * longint(screen.width) DIV ScreenWidth;
       scaleBy(screen.width, ScreenWidth);
     end;
   end;  
  end; }



  codmovdet := 1999999;
  codserv := 1999999;
  //codmd := 1999999;
  centro_receita := 0;
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

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'SIM' then
  begin
    Label18.Visible := True;
    MaskEdit1.Visible := True;
    BitBtn2.Visible := True;
  end;

  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

end;

procedure TfTerminalLoja.FormShow(Sender: TObject);
begin
 dbeProduto.SetFocus;
end;

procedure TfTerminalLoja.DbEdit17Exit(Sender: TObject);
begin
    if (DBEdit17.Text <> '') then
    begin
      if (cds_Mov_det.State in [dsBrowse]) then
         cds_Mov_det.Edit;
       cds_Mov_detPRODUTO.AsString := DBEDit17.Text;
       DtSrc1.DataSet.Post;
    end;

    if ds_serv.State in [dsInsert, dsEdit] then
    begin
      if cds_Movimento.State in [dsBrowse, dsInactive] then
        cds_Movimento.Edit;
      c_8_servPRECO.AsFloat := cds_Mov_detPRECO.AsFloat;
      c_8_servDESCRICAO.AsString := DBEdit17.Text;
      c_8_serv.Post;
      DBEdit17.Text := '';
      GroupBox1.Visible := False;
    end;
    
end;

procedure TfTerminalLoja.c_8_servNewRecord(DataSet: TDataSet);
begin
  if (codserv >= 1999999) then
    codserv := codserv + 1;
  c_8_servCODDETALHE_SERV.AsInteger := codserv;
  c_8_servCODMOVIMENTO.AsInteger := cds_Mov_detCODDETALHE.asinteger;
end;

procedure TfTerminalLoja.c_8_servReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  MessageDlg('Erro para gravar descrição do Serviço.' + #10#13 + E.Message, mtWarning, [mbOK], 0);
end;

procedure TfTerminalLoja.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  valor := 0;
  if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfTerminalLoja.cds_Mov_detReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro.' + #10#13 + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfTerminalLoja.BitBtn3Click(Sender: TObject);
begin
  if DtSrc1.DataSet.State in [dsInactive] then
   exit;
  //fProcura_prod.btnIncluir.Visible := true;
  //PROC_PROD_RESUMIDO
    fProcura_prod.Panel2.Visible := True;
    fProcura_prod.Panel1.Visible := False;
    if (not fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Open;

  //varonde := 'compra';
  var_F := 'terminalloja';
  //cds_Mov_detLOTE.AsString := '';
  fProcura_prod.ShowModal;

  {if (procprod = 'PROC_PROD_COMPLETO') then
  begin
    cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
    cds_Mov_detCODPRODUTO.asInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
    cds_mov_detPRODUTO.asString := fProcura_prod.cds_procPRODUTO.AsString;
    cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
    cds_Mov_detQTDE_ALT.AsFloat := 0;
    cds_Mov_detPRECOCUSTO.AsFloat := fProcura_prod.cds_procPRECOMEDIO.AsFloat;
    estoque := fProcura_prod.cds_procESTOQUEATUAL.AsFloat;
  end; }

  // É serviço ???
  if (fProcura_prod.cds_procTIPO.AsString = 'SERV') then
  begin
    // PageControl1.ActivePageIndex := 1;
    if (not ds_serv.DataSet.Active) then
    begin
      c_8_serv.params[0].asInteger := cds_Mov_detCODDETALHE.asinteger;
      ds_serv.DataSet.Open;
    end;
      ds_serv.DataSet.Append;
      c_8_servCODMOVIMENTO.AsInteger := cds_Mov_detCODDETALHE.Asinteger;
      c_8_servDESCRICAO.AsString := fProcura_prod.cds_procPRODUTO.AsString;
      DbEdit17.Enabled := True;
      DbEdit17.Text := fProcura_prod.cds_procPRODUTO.AsString;
  end;

end;

procedure TfTerminalLoja.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfTerminalLoja.btnGravarClick(Sender: TObject);
begin

  // Salvo o Movimento
  cds_Movimento.ApplyUpdates(0);
  cod_mov := cds_MovimentoCODMOVIMENTO.AsInteger;
  // Corrijo o codigo da movimento detalhe(tabela)
  if (cds_Mov_detCODMOVIMENTO.AsInteger = 1999999) then
  begin
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      IF (cds_Mov_detQTDE_ALT.IsNull) then
         cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_det.Post;
      cds_Mov_det.Next;
    end;
  end;
  // Salvo a movimento detalhe
  cds_Mov_det.ApplyUpdates(0);

  Panel1.Visible := True;

  inserevenda;
  //cds_vendadiferenca.Value := 0;

end;

procedure TfTerminalLoja.DBEdit6Exit(Sender: TObject);
begin
   cds_vendaVALOR_PAGAR.AsFloat := cds_vendaVALOR.AsFloat - cds_vendaDESCONTO.AsFloat +
     cds_vendaMULTA_JUROS.AsFloat;
end;

procedure TfTerminalLoja.DBEdit10Exit(Sender: TObject);
begin
   cds_vendaVALOR_PAGAR.AsFloat := cds_vendaVALOR.AsFloat - cds_vendaDESCONTO.AsFloat +
     cds_vendaMULTA_JUROS.AsFloat;
end;

procedure TfTerminalLoja.DBEdit12Exit(Sender: TObject);
begin
 if cds_vendaENTRADA.AsFloat > 0 then
  cds_vendadiferenca.AsFloat := cds_vendaVALOR_PAGAR.AsFloat - cds_vendaENTRADA.AsFloat;
end;

procedure TfTerminalLoja.BitBtn4Click(Sender: TObject);
var  strSql, strTit: String;
     diferencaValor : double;
     utilcrtitulo : Tutils;
begin
  strSql := '';
  strTit := '';
  if DtSrcVenda.State in [dsInsert] then
  begin
    IF (cds_vendaCODUSUARIO.asinteger = 0) then
      cds_vendaCODUSUARIO.AsInteger := cds_vendaCODVENDEDOR.AsInteger;

    if (cds_vendaENTRADA.AsFloat > 0) then
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
          diferencaValor := cds_vendaVALOR.AsFloat - cds_vendaDESCONTO.AsFloat;
          diferencaValor := diferencaValor - cds_vendaENTRADA.AsFloat;
          if (diferencaValor > 0.01) then
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

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_vendaCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    //if varcancela = 'varcancela' then
      // exit;

    cds_vendaCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    strTit := IntToStr(cds_vendaNOTAFISCAL.AsInteger) + '-' + cds_vendaSERIE.AsString;
    strSql := 'SELECT TITULO FROM RECEBIMENTO where TITULO = ' ;
    strSql := strSql + '''' + strTit + '''';

    if sqs_tit.Active then
      sqs_tit.Close;
    sqs_tit.CommandText := strSql;
    sqs_tit.Open;

    if not sqs_tit.IsEmpty then
    begin
       strSql := 'SELECT TITULO FROM RECEBIMENTO where CODRECEBIMENTO = ' +
       ' (select MAX(CODRECEBIMENTO) from recebimento)';
       if sqs_tit.Active then
         sqs_tit.Close;
       sqs_tit.CommandText := strSql;
       sqs_tit.Open;
       MessageDlg('Número do Título repetido, último nº : ''' + sqs_tit.Fields[0].AsSTring + '''',
       mtWarning, [mbOK], 0);
       DBEdit2.SetFocus;
       exit;
    end;
  end;

  //A lançamento do cr tem que ser antes de salvar á venda
  //pois, caso o título já tenha sido baixado não é permitido alterar a venda.
  //Gerando o contas a receber
  //  gerar_cr; **************** 22/10/03
  if DtSrcVenda.State in [dsEdit, dsInsert] then
  begin
    utilcrtitulo := Tutils.Create;
    cds_vendaFORMARECEBIMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);
    if (not dm.cds_7_contas.Active) then
        dm.cds_7_contas.Open;
    if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
      cds_vendaCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;

    cds_vendaVALOR.AsFloat := cds_vendaVALOR.AsFloat + cds_vendaVALOR_FRETE.AsFloat +
        cds_vendaVALOR_SEGURO.AsFloat + cds_vendaOUTRAS_DESP.AsFloat +
            cds_vendaVALOR_IPI.AsFloat;
    cds_vendaAPAGAR.AsFloat := cds_vendaVALOR.AsFloat -
      cds_vendaENTRADA.AsFloat + cds_vendaMULTA_JUROS.AsFloat -
        cds_vendaDESCONTO.AsFloat;

    {Usado para bloquear alteração em RECEBIMENTO pelas triggers
     da notafiscal }
    {if (cds_venda.State in [dsInsert, dsEdit]) then
    if (cds_vendaVALOR.AsFloat <> vrr) then
      cds_vendaSTATUS1.AsString := 'B';
     }
    cds_venda.ApplyUpdates(0);
  end;

  //Gravando o numero sequencial
  if not scds_serie_proc.Active then
  begin
     scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
     scds_serie_proc.Open;
  end;
  if (cds_vendaNOTAFISCAL.AsInteger > scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    scds_serie_proc.Edit;
    scds_serie_procULTIMO_NUMERO.AsInteger := cds_vendaNOTAFISCAL.AsInteger;
    scds_serie_proc.ApplyUpdates(0);
  end;
  scds_serie_proc.Close;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cds_vendaCODVENDA.AsInteger;
  scdsCr_proc.Open;
  codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
  Cod_orig := cds_vendaCODVENDA.AsInteger;
  tipo_origem := 'VENDA';
  cod_cli_forn := cds_vendaCODCLIENTE.AsInteger;
  c_f := 'C'; // C=Cliente
  //if DtSrcVenda.State in [dsInsert, dsEdit] then
    // btnGravar.Click;
  // Imprimir
    
end;

procedure TfTerminalLoja.dbeSerieExit(Sender: TObject);
begin
  if DtSrcVenda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then
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
      cds_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      cds_vendaNOTAFISCAL.AsInteger :=  scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;

end;

procedure TfTerminalLoja.btnSerieClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
    begin
    if dtSrcVenda.State=dsBrowse then
     cds_venda.Edit;
     cds_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
     cds_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger;
     cds_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
   finally
    scds_serie_proc.Close;
    fProcurar.Free;
   end;
    DBEdit2.SetFocus;
end;

procedure TfTerminalLoja.inserevenda;
begin
  if (not cds_venda.Active) then
      cds_venda.Open;
  cds_venda.Append;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;
  cds_vendaSERIE.AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  {if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    dbeUsuario.Text := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;}

  if (sUsuario.Active) then
      sUsuario.Close;
  sUsuario.Params[0].AsInteger := usulog;
  sUsuario.Open;
  cds_vendaCODUSUARIO.AsInteger := usulog;
  cds_vendaCODVENDEDOR.AsInteger := usulog;
  cds_vendaNOMEUSUARIO.AsString := sUsuarioNOMEUSUARIO.AsString;
  sUsuario.Close;

  if DtSrcVenda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then
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
      cds_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      cds_vendaNOTAFISCAL.AsInteger :=  scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;
  cds_vendaDATAVENDA.AsDateTime := Now;
  cds_vendaDATAVENCIMENTO.AsDateTime := Now;
  cds_vendaDATASISTEMA.AsDateTime := Now;
  cds_vendaENTRADA.Value := cds_Mov_detTotalPedido.Value;
  cds_vendaMULTA_JUROS.Value := 0;
  cds_vendaDESCONTO.Value := 0;
  cds_vendaVALOR_PAGAR.Value := cds_Mov_detTotalPedido.Value;
  cds_vendadiferenca.Value := 0;
  cds_vendaCODCLIENTE.AsInteger := 1;
  cds_vendaNOMECLIENTE.AsString := 'CONSUMIDOR';
  cds_vendaN_PARCELA.Value := 1;
  DBEdit13.SetFocus;

end;

procedure TfTerminalLoja.DBEdit13Exit(Sender: TObject);
begin
 if cds_vendaENTRADA.AsFloat > 0 then
  cds_vendadiferenca.AsFloat := cds_vendaENTRADA.AsFloat - cds_vendaVALOR_PAGAR.AsFloat;
end;

procedure TfTerminalLoja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if (dm.cds_7_contas.Active) then
        dm.cds_7_contas.Close;
end;

procedure TfTerminalLoja.DtSrcStateChange(Sender: TObject);
begin
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
  btnProcurar.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnCancelar.Visible := True;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;

end;

procedure TfTerminalLoja.btnImprimirClick(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'orcamento.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

end.
