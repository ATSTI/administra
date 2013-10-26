unit uTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, SqlExpr, Provider, DBLocal, DBLocalS, DBClient, Grids, DBGrids,
  Mask, DBCtrls, Printers, rpcompobase, rpvclreport, DBXpress;


//const
     { Nome e versao do programa basico de teste }
     {Atualizado da Versão 1.0.0.4
     Nome Atualizado, retirado o nome Compact e inserido o nome IM113I}
{     VERSAO = 'v1.0';
     TITULO = 'Diebold Procomp -  IM113I DELPHI - DLL MECAFW32 - ';
     ABRIR_GAVETA = chr(27)+'p0'+chr(12)+chr(48);

     MECAF_DLL      = 'MECAFW32.DLL';  // Nome da DLL que será utilizada

     MAXTAM_BUFFER  = 15000;          //  Tamanho maximo do buffer de edição
 }
type

  //  Buffer_Dados = Array [0..MAXTAM_BUFFER] of Char;

    TfTerminal = class(TfPai)
    DBEdit1: TDBEdit;
    Label4: TLabel;
    dbeProduto: TEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    Label14: TLabel;
    DBGrid3: TDBGrid;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    BitBtn9: TBitBtn;
    BitBtn5: TBitBtn;
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
    dsp_Movimento: TDataSetProvider;
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
    scds_movimento_proc: TSQLClientDataSet;
    scds_movimento_procCODMOVIMENTO: TIntegerField;
    scds_movimento_procDATAMOVIMENTO: TDateField;
    scds_movimento_procCODCLIENTE: TIntegerField;
    scds_movimento_procNOMECLIENTE: TStringField;
    scds_Mov_Det_proc: TSQLClientDataSet;
    scds_Mov_Det_procCODPRODUTO: TIntegerField;
    scds_Mov_Det_procPRODUTO: TStringField;
    scds_Mov_Det_procPRECO: TFloatField;
    scds_Mov_Det_procQUANTIDADE: TFloatField;
    scds_Mov_Det_procCODMOVIMENTO: TIntegerField;
    scds_Mov_Det_procCODDETALHE: TIntegerField;
    scds_Mov_Det_procQTDE_ALT: TFloatField;
    scds_Mov_Det_procVALTOTAL: TFloatField;
    scds_Mov_Det_procVALORTOT: TFloatField;
    scds_Mov_Det_procTotalPedido: TAggregateField;
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
    sds_s: TSQLDataSet;
    sds_v: TSQLDataSet;
    sds_vCODVENDA: TIntegerField;
    sds_vCODMOVIMENTO: TIntegerField;
    sds_vCODCLIENTE: TIntegerField;
    sds_vDATAVENDA: TDateField;
    sds_vDATAVENCIMENTO: TDateField;
    sds_vNUMEROBORDERO: TIntegerField;
    sds_vBANCO: TSmallintField;
    sds_vCODVENDEDOR: TSmallintField;
    sds_vSTATUS: TSmallintField;
    sds_vCODUSUARIO: TSmallintField;
    sds_vDATASISTEMA: TDateField;
    sds_vVALOR: TFloatField;
    sds_vNOTAFISCAL: TIntegerField;
    sds_vSERIE: TStringField;
    sds_vDESCONTO: TFloatField;
    sds_vCODCCUSTO: TSmallintField;
    sds_vN_PARCELA: TSmallintField;
    sds_vOPERACAO: TStringField;
    sds_vFORMARECEBIMENTO: TStringField;
    sds_vN_DOCUMENTO: TStringField;
    sds_vCAIXA: TSmallintField;
    sds_vMULTA_JUROS: TFloatField;
    sds_vAPAGAR: TFloatField;
    sds_vVALOR_PAGAR: TFloatField;
    sds_vENTRADA: TFloatField;
    sds_vN_BOLETO: TStringField;
    sds_vSTATUS1: TStringField;
    sds_vCONTROLE: TStringField;
    sds_vOBS: TStringField;
    sds_uso: TSQLClientDataSet;
    sds_usoDESCRICAO: TStringField;
    DataSource1: TDataSource;
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
    dsp_cr: TDataSetProvider;
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
    sdsLista: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsLista: TClientDataSet;
    cdsListaCODPRODUTO: TIntegerField;
    cdsListaUSAPRODUTO: TStringField;
    cdsListaDESCR: TStringField;
    cdsListaFORNECEDOR: TStringField;
    cdsListaPRECOVENDA: TFloatField;
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
    dsLista: TDataSource;
    BitBtn7: TBitBtn;
    btnImprimir: TBitBtn;
    BitBtn4: TBitBtn;
    Label17: TLabel;
    Oramento1: TMenuItem;
    Pedido1: TMenuItem;
    Alterar1: TMenuItem;
    BuscaCliente1: TMenuItem;
    BuscaProduto1: TMenuItem;
    AlterarQtde1: TMenuItem;
    ExcluirProduto1: TMenuItem;
    IncluirNovoProduto1: TMenuItem;
    voltapprodutoanterior1: TMenuItem;
    Vaipproximoproduto1: TMenuItem;
    BuscaPeloCdigo1: TMenuItem;
    Ajuda1: TMenuItem;
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
    BuscarLista1: TMenuItem;
    rep: TVCLReport;
    cdsListaCODBARRA: TStringField;
    cdsListaPRECOLISTA: TFloatField;
    cdsListaCODIGO: TStringField;
    BitBtn6: TBitBtn;
    MaskEdit1: TMaskEdit;
    Label18: TLabel;
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
    DataSource2: TDataSource;
    AdItensnoCadastro1: TMenuItem;
    Edicao: TMemo;
    Aviso: TLabel;
    BitBtn8: TBitBtn;
    CadastroProduto1: TMenuItem;
    sdsListaCODPRODUTO: TIntegerField;
    sdsListaCODIGO: TStringField;
    sdsListaDESCR: TStringField;
    sdsListaFORNECEDOR: TStringField;
    sdsListaPRECOVENDA: TFloatField;
    sdsListaPRECOLISTA: TFloatField;
    sdsListaUSAPRODUTO: TStringField;
    sdsListaCODBARRA: TStringField;
    BitBtn10: TBitBtn;
    sdsListaCODLISTAPRECO: TIntegerField;
    cdsListaCODLISTAPRECO: TIntegerField;
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
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure voltapprodutoanterior1Click(Sender: TObject);
    procedure Vaipproximoproduto1Click(Sender: TObject);
    procedure BuscaPeloCdigo1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure cds_vendaBeforePost(DataSet: TDataSet);
    procedure cds_vendaCalcFields(DataSet: TDataSet);
    procedure cds_vendaNewRecord(DataSet: TDataSet);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_MovimentoBeforePost(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure BuscarLista1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AlterarQtde1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure AdItensnoCadastro1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn10Click(Sender: TObject);
  private
    procedure gerarVendaeCr();
    { Private declarations }
  public
    { Public declarations }
    function buscaProdLista(codBarra, ProdLista:String): Integer;
    function geraCodBarra(vlrBarra: String; i :integer): String;
    procedure buscaProduto;
    procedure imprimeCupom;
    procedure imprimePedido;
  end;

var
  fTerminal: TfTerminal;
  centro_receita, cod_nat, cod_vendedor_padrao, COD_VENDA: integer;
  natureza, contas_pendentes, nome_vendedor_padrao, orcamento: string;
  codproduto, codcliente, codnatureza, codalmoxarif: integer;
  usaprecolista, tiporel: string;
  precovenda : double;

implementation

uses UDm, ufprocura_prod, ufDlgLogin, uListaClientes, uFiltroMovimento,
  uCheques_bol, uVendaFinalizar, uComercial, ufTeclasAtalho,
  uClienteVeiculo, uProdutoCadastro, sCtrlResize;

{$R *.dfm}

procedure TfTerminal.btnIncluirClick(Sender: TObject);
begin
  if cds_Movimento.Active then
    cds_Movimento.Close;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;

  inherited;
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

procedure TfTerminal.FormCreate(Sender: TObject);
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(fTerminal));
  codmovdet := 1999999;
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

  {------Aqui entro com o produto selecionado no form fProcura_prod------}
  if fProcura_prod.cds_proc.Active then
  begin
    btnIncluir.Click;
    cds_Mov_detCODPRODUTO.AsInteger:=fProcura_prod.cds_procCODPRODUTO.AsInteger;
    cds_Mov_detPRODUTO.Value:=fProcura_prod.cds_procPRODUTO.Value;
   // cds_Mov_detCOD_COMISSAO.AsInteger:=fProcura_prod.cds_procCOD_COMISSAO.AsInteger;
    cds_Mov_detQTDE_PCT.AsFloat:=fProcura_prod.cds_procQTDE_PCT.AsFloat;
    cds_Mov_detUN.AsString:=fProcura_prod.cds_procUNIDADEMEDIDA.AsString;
    cds_Mov_detLOCALIZACAO.AsString:=fProcura_prod.cds_procLOCALIZACAO.AsString;
    cds_Mov_detESTOQUEATUAL.AsFloat:=fProcura_prod.cds_procESTOQUEATUAL.AsFloat;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    cds_Mov_detQTDE_ALT.AsFloat := 1;
    if fProcura_prod.cds_procQTDE_PCT.AsFloat >= 1 then
       cds_Mov_detPRECO.AsFloat:=
       fProcura_prod.cds_procPRECO_VENDA.AsFloat / fProcura_prod.cds_procQTDE_PCT.AsFloat
    else
       cds_Mov_detPRECO.AsFloat:=
       fProcura_prod.cds_procPRECO_VENDA.AsFloat;
       cds_Mov_detValorTotal.AsFloat := cds_Mov_detPRECO.AsFloat *
       cds_Mov_detQUANTIDADE.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger:=fProcura_prod.cds_procCODALMOXARIFADO.AsInteger;
   //    cds_Mov_detALMOXARIFADO.AsString := fProcura_prod.cds_procALMOXARIFADO.AsString;
    cds_Mov_detICMS.AsFloat := fProcura_prod.cds_procICMS.AsFloat;
    if fProcura_prod.cds_proc.Active then
      fProcura_prod.cds_proc.Close;
    cds_Mov_det.Post;
    if sds_uso.Active then
      sds_uso.Close;
    sds_uso.Params[0].AsInteger:=cds_Mov_detCODPRODUTO.AsInteger;
    sds_uso.Open;
    cds_Mov_det.Append;
    dbeProduto.SetFocus;
  end;
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
  begin
    Label18.Visible := True;
    MaskEdit1.Visible := True;
    BitBtn6.Visible := True;
  end;

end;

procedure TfTerminal.FormShow(Sender: TObject);
begin
 // inherited;
 dbeProduto.SetFocus;
end;

procedure TfTerminal.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if DtSrc.DataSet.State in [dsInactive] then exit;
  fListaClientes:=TfListaClientes.Create(Application);
  Try
    varform := 'venda';
    codcli := 0;
    nomecli := '';
    fListaClientes.ShowModal;
    if (cds_Movimento.State in [dsBrowse]) then
      cds_Movimento.Edit;
    cds_MovimentoCODCLIENTE.AsInteger := codcli ;
    cds_MovimentoNOMECLIENTE.AsString := nomecli;
  Finally
   fListaClientes.ListaCliente.close;
   fListaClientes.Free;
  end;
end;

procedure TfTerminal.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;
//  fProcura_prod.ShowModal;
  if fProcura_prod.ShowModal = mrOk then
  begin
    if dtSrc.State=dsBrowse then
     cds_Mov_det.Edit;
     cds_Mov_detCODPRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
     cds_Mov_detCOD_BARRA.AsString := fProcura_prod.cds_procCOD_BARRA.AsString;
     cds_Mov_detPRODUTO.AsString := fProcura_prod.cds_procPRODUTO.AsString;
     cds_Mov_detUN.AsString := fProcura_prod.cds_procUNIDADEMEDIDA.AsString;
     cds_Mov_detQUANTIDADE.AsFloat := 1;
     cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
//   cds_Mov_detCOD_COMISSAO.AsInteger:=fProcura_prod.cds_procCOD_COMISSAO.AsInteger;
     cds_Mov_detQTDE_PCT.AsFloat:=fProcura_prod.cds_procQTDE_PCT.AsFloat;
     cds_Mov_detUN.AsString:=scds_produto_procUNIDADEMEDIDA.AsString;
     cds_Mov_detLOCALIZACAO.AsString:=fProcura_prod.cds_procLOCALIZACAO.AsString;
     cds_Mov_detESTOQUEATUAL.AsFloat:=fProcura_prod.cds_procESTOQUEATUAL.AsFloat;
     cds_Mov_detQUANTIDADE.AsFloat := 1;
     cds_Mov_detQTDE_ALT.AsFloat := 1;
    if fProcura_prod.cds_procQTDE_PCT.AsFloat >= 1 then
       cds_Mov_detPRECO.AsFloat:=
       fProcura_prod.cds_procPRECO_VENDA.AsFloat / fProcura_prod.cds_procQTDE_PCT.AsFloat
    else
       cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
    cds_Mov_detVALTOTAL.AsFloat := cds_Mov_detPRECO.AsFloat * cds_Mov_detQUANTIDADE.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger:=fProcura_prod.cds_procCODALMOXARIFADO.AsInteger;
    cds_Mov_detICMS.AsFloat := fProcura_prod.cds_procICMS.AsFloat;
  end;
   if fProcura_prod.cds_procCODPRODUTO.IsNull then
   begin
    dbeProduto.Text := '';
    cds_Mov_det.Cancel;
   end
   else
   begin
    cds_Mov_det.Post;
    if sds_uso.Active then
      sds_uso.Close;
    sds_uso.Params[0].AsInteger:=cds_Mov_detCODPRODUTO.AsInteger;
    sds_uso.Open;
  //  cds_Mov_det.Append;
    dbeProduto.Text := '';
    dbeProduto.SetFocus;
   end;
   fProcura_prod.cds_proc.Close;
   dbeProduto.SetFocus;

end;

procedure TfTerminal.BitBtn3Click(Sender: TObject);
begin
  //inserir na tabela produto.
  cdsLista.Edit;
  cdsListaUSAPRODUTO.asString := 'SIM';
  cdsLista.ApplyUpdates(0);
  cds_Mov_det.Cancel;
  //buscaProduto;
  dbeProduto.SetFocus;
end;

procedure TfTerminal.BitBtn9Click(Sender: TObject);
begin
  inherited;
   if DtSrc1.DataSet.State in [dsInactive] then
      exit;
     if DtSrc1.DataSet.State in [dsBrowse] then
        DtSrc.DataSet.Edit;
        DtSrc1.DataSet.Delete;
//       (DtSrc1.DataSet as TClientDataSet).Post;
end;

procedure TfTerminal.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if DtSrc1.DataSet.State in [dsInactive] then exit;
    if DtSrc1.DataSet.State in [dsBrowse] then
      BitBtn4.Click;
  dbeProduto.SetFocus;
end;

procedure TfTerminal.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DtSrc1.DataSet.State in [dsBrowse] then
    DtSrc1.DataSet.edit;
   cds_Mov_detVALTOTAL.AsFloat := cds_Mov_detPRECO.AsFloat *
   cds_Mov_detQUANTIDADE.AsFloat;
   cds_Mov_det.Post;
end;

procedure TfTerminal.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if DtSrc1.DataSet.State in [dsBrowse] then
    DtSrc1.DataSet.edit;
   cds_Mov_detVALTOTAL.AsFloat := cds_Mov_detPRECO.AsFloat *
   cds_Mov_detQUANTIDADE.AsFloat;
   cds_Mov_det.Post;
   dbeProduto.SetFocus;
end;

procedure TfTerminal.gerarVendaeCr;
var
   strSql, strTit, serie: String;
   numTitulo, caixa: Integer;
   total : double;
   TD: TTransactionDesc;
begin
   total := 0;
   numTitulo := 0;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
  // Verifico se a venda já foi SALVA
  if (cds_venda.Active) then
    cds_venda.Close;
  cds_venda.Params[1].AsInteger := fFiltroMovimento.cod_mov;
  cds_venda.Open;
  if (cds_venda.IsEmpty) then
  begin
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
    if dm.cds_parametro.IsEmpty then
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
    else begin
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
    // Verificando se existe título com esse número
    strTit := IntToStr(numTitulo) + '-' + serie;
    strSql := 'SELECT TITULO FROM RECEBIMENTO where TITULO = ' ;
    strSql := strSql + '''' + strTit + '''';
    if sds_s.Active then
      sds_s.Close;
    sds_s.CommandText := strSql;
    sds_s.Open;
    if not sds_s.IsEmpty then
    begin
      strSql := 'SELECT TITULO FROM RECEBIMENTO where CODRECEBIMENTO = ' +
         ' (select MAX(CODRECEBIMENTO) from recebimento)';
         if sds_s.Active then
           sds_s.Close;
         sds_s.CommandText := strSql;
         sds_s.Open;
         MessageDlg('Número do Título repetido, último nº : ''' + sds_s.Fields[0].AsSTring + '''',
         mtWarning, [mbOK], 0);
         exit;
    end;
    if ComboBox1.Text = 'À VISTA' then
    begin

      Try
        {---*********************************************************************---}
        {---                Inserindo dados na tabela VENDA                      ---}
        {---*********************************************************************---}
        if (dm.c_6_genid.Active) then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;

        strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
        strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
        strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
        strSql := strSql + ',FORMARECEBIMENTO, ENTRADA ';
        strSql := strSql + ') VALUES (';
        strSql := strSql + IntToStr(COD_VENDA);
        strSql := strSql + ',' + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
        strSql := strSql + ',' + IntToStr(cds_MovimentoCODCLIENTE.AsInteger);
        strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ',1'; //Banco
        strSql := strSql + ',1'; //CodVendedos
        strSql := strSql + ',0'; //status
        strSql := strSql + ',1'; //codusuario
        if (DBEdit9.Text <> '') then
        try
          total := StrToFloat(DBEdit9.Text);
        except
          // Valor total inválido.
          MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
          exit;
        end;
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + ',' + FloatToStr(total); //valor
        strSql := strSql + ',' + IntToStr(numTitulo); //notafiscal
        strSql := strSql + ',''' + serie + ''''; //serie
        strSql := strSql + ',0'; //desconto
        strSql := strSql + ',' + IntToStr(cds_MovimentoCODALMOXARIFADO.AsInteger);//CODCUSTO
        strSql := strSql + ',1';
        strSql := strSql + ',''0''';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + ',' + FloatToStr(total);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
               [mbOk], 0);
        end;


        DecimalSeparator := ',';
        ThousandSeparator := '.';
        {---*********************************************************************---}
        {---              Atualiza campos na tabela RECEBIMENTO                  ---}
        {---*********************************************************************---}
        strSql := 'UPDATE RECEBIMENTO SET DATARECEBIMENTO = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', CAIXA = ' + IntToStr(caixa);
        strSql := strSql + ', DATABAIXA = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', JUROS = 0';
        strSql := strSql + ', VALOR_RESTO = ';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        DecimalSeparator := ',';
        ThousandSeparator := '.';
        strSql := strSql + ' where CODVENDA = ';
        strSql := strSql + IntToStr(COD_VENDA);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
               [mbOk], 0);
        end;

      except
        MessageDlg('Erro ao gravar a venda.', mtError, [mbOK], 0);
      end;
    end;
  end
  // Já está gravada a Venda , é só atualizar
  else begin
    { -- Incluir aqui rotina de UPDATE na tabela venda --}
        strSql := 'UPDATE VENDA SET DATAVENDA = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', DATAVENCIMENTO = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', VALOR = ';
        if (DBEdit9.Text <> '') then
        try
          total := StrToFloat(DBEdit9.Text);
        except
          // Valor total inválido.
          MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
          exit;
        end;
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        strSql := strSql + ', N_PARCELA = ';
        strSql := strSql + '1';
        strSql := strSql + ', ENTRADA = ';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        strSql := strSql + ' where CODVENDA = ';
        strSql := strSql + IntToStr(COD_VENDA);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
               [mbOk], 0);
           DecimalSeparator := ',';
           ThousandSeparator := '.';
        end;
        DecimalSeparator := ',';
        ThousandSeparator := '.';

        {---*********************************************************************---}
        {---              Atualiza campos na tabela RECEBIMENTO                  ---}
        {---*********************************************************************---}
        strSql := 'UPDATE RECEBIMENTO SET DATARECEBIMENTO = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', DATABAIXA = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', VALOR_RESTO = 0';
        strSql := strSql + ', VALORRECEBIDO = ';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        DecimalSeparator := ',';
        ThousandSeparator := '.';
        strSql := strSql + ', STATUS = ';
        strSql := strSql + '''7-''';
        strSql := strSql + ' where CODVENDA = ';
        strSql := strSql + IntToStr(COD_VENDA);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
               [mbOk], 0);
           DecimalSeparator := ',';
           ThousandSeparator := '.';
        end;
  end;
  btnImprimir.Click;
end;

function TfTerminal.buscaProdLista(codBarra, ProdLista: String): Integer;
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
          BuscaPeloCdigo1.Click;
        end;

        if (not scds_produto_proc.IsEmpty) then
        begin
          codproduto := scds_produto_procCODPRODUTO.AsInteger;
          if scds_produto_procQTDE_PCT.AsFloat >= 1 then
            precovenda := scds_produto_procVALOR_PRAZO.AsFloat / scds_produto_procQTDE_PCT.AsFloat
          else
            precovenda := scds_produto_procVALOR_PRAZO.AsFloat;
        end;

        if (usaprecolista = 'SIM') then
        begin
          if (not scds_produto_proc.IsEmpty) then //adicionei em 08/11/2006 Edson
          begin
            if (cdsLista.Active) then
              cdsLista.Close;
            cdsLista.CommandText := 'select CODPRODUTO, CODLISTAPRECO, CODIGO, DESCR, FORNECEDOR, PRECOLISTA, PRECOVENDA,'+
              ' USAPRODUTO, CODBARRA from LISTAPRECO where CODPRODUTO =:CODBARRA';
            cdsLista.Params[0].AsInteger := scds_produto_procCODPRODUTO.ASInteger;
            cdsLista.Open;
          end;
          if (cdsLista.IsEmpty) then
          begin
            cdsLista.Close;
            cdsLista.Params[0].AsString := codBarra;
            cdsLista.Open;
          end;
          if (cdsLista.IsEmpty) then
          begin
            cdsLista.Close;
            cdsLista.Params[0].AsString := geraCodBarra(codBarra,1);
            cdsLista.Open;
          end;
          if (cdsLista.IsEmpty) then
          begin
            if (scds_produto_proc.IsEmpty) then // Se o produto foi cadastrado ele não existe na lista
            begin
              result := 1;
              exit;
            end
            else begin
              result := 0;
              exit;
            end;
          end;
          if (cdsLista.Locate('CODBARRA', codbarra, [loCaseInsensitive])) then
            precovenda := cdsListaPRECOVENDA.AsFloat;
        end;
  end
  else begin
        if (codproduto = 0) then
        begin
          if (cdsLista.Active) then
            cdsLista.Close;
          cdsLista.CommandText := 'select CODPRODUTO, CODIGO, DESCR, FORNECEDOR, PRECOLISTA, PRECOVENDA,'+
            ' USAPRODUTO, CODBARRA from LISTAPRECO where CODBARRA = :CODBARRA';
          cdsLista.Params[0].AsString := geraCodBarra(codBarra,0);
          cdsLista.Open;
          if (cdsLista.IsEmpty) then
          begin
            cdsLista.Close;
            cdsLista.Params[0].AsString := codBarra;
            cdsLista.Open;
          end;
          if (cdsLista.IsEmpty) then
          begin
            cdsLista.Close;
            cdsLista.Params[0].AsString := geraCodBarra(codBarra,1);
            cdsLista.Open;
          end;
          if (cdsLista.IsEmpty) then
          begin
            result := 1;
            exit;
          end;
        end
        else
        begin
           if (cdslista.Active) then
             cdslista.Close;
           cdslista.CommandText := 'select CODPRODUTO, CODIGO, DESCR, FORNECEDOR, PRECOLISTA, ' +
             'PRECOVENDA, USAPRODUTO, codBARRA from LISTAPRECO where CODPRODUTO  = ' +
             IntToStr(codproduto);
           cdslista.Open;
        end;
    // end;
  end;

  if (scds_produto_proc.IsEmpty) then
  begin
    result := 1;
    exit;
  end
  else
    result := 0;
end;

function TfTerminal.geraCodBarra(vlrBarra: String; i: integer): String;
var s: string;
   j: integer;
begin
  j := 0;
  //Verifico quantos digitos tem no código de barra
  IF (length(dbeProduto.Text) >= 13) then
  begin
    for i := 1 to 13 do
    begin
      s:= s+ copy(dbeProduto.text,I,1);
      j := i;
    end;
    result := s;
  end;
  if (j = 0) then
  IF (length(dbeProduto.Text) < 10) then
  begin
    s:='';
    for i:=1 to 7 do
    begin
      s:= s+ copy(dbeProduto.text,I,1);
      j := i;
    end;
    result := s + '00001';
  end;
  if (j = 1) then
  IF (length(dbeProduto.Text) < 10) then
  begin
    s:='';
    for i:=1 to 13 do
    begin
      if (i > 7) then
        s:= s+ copy(dbeProduto.text,I,1);
    end;
    result := '0000000' + s;
  end;

  IF (length(dbeProduto.Text) = 10) then
  begin
    result := dbeProduto.text
  end;

  IF (length(dbeProduto.Text) = 11) then
  begin
    result := dbeProduto.text
  end;
  IF (length(dbeProduto.Text) = 12) then
  begin
    result := dbeProduto.text
  end;

  IF (length(dbeProduto.Text) >= 20) then
  begin
    s:='';
    for i := 1 to 7 do    //Pego apenas os 7 primeiros caracteres
    begin
      s:= s+ copy(dbeProduto.text,I,1);
    end;
    result := s + '00001';
  end;

end;

procedure TfTerminal.btnProcurarClick(Sender: TObject);
begin
  inherited;
    fFiltroMovimento:=TfFiltroMovimento.Create(Application);
    try
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
      fFiltroMovimento.ShowModal;
      if cds_Movimento.Active then
        cds_movimento.Close;
      cds_movimento.Params[0].AsInteger:= fFiltroMovimento.cod_mov;
      cds_movimento.Open;
      if cds_Mov_det.Active then
        cds_Mov_det.Close;
      cds_Mov_det.Params[0].Clear;
      cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      cds_Mov_det.Open;
      if cds_venda.Active then
        cds_venda.Close;
      cds_venda.Params[0].Clear;
      cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      cds_venda.Open;
      COD_VENDA := cds_vendaCODVENDA.AsInteger;
      cds_venda.Close;

      //mostra veiculos do cliente
      if (cds_Veiculocli.Active) then
        cds_Veiculocli.Close;
      cds_Veiculocli.Params[0].Clear;
      cds_Veiculocli.Params[1].Clear;
      cds_Veiculocli.Params[2].Clear;
      cds_Veiculocli.Params[3].AsInteger := cds_MovimentoCOD_VEICULO.asInteger;
      cds_Veiculocli.Open;
      if (not cds_Veiculocli.IsEmpty) then
        MaskEdit1.Text := cds_VeiculocliPLACA.AsString
      else
        MaskEdit1.Text := '   -    ';

      cds_Veiculocli.Close;

    finally
      fFiltroMovimento.Free;
      BitBtn2.SetFocus;
    end;
     BitBtn7.Enabled := true;
     BitBtn4.Enabled := true;
     btnImprimir.Enabled := True;
end;

procedure TfTerminal.BitBtn7Click(Sender: TObject);
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
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total : double;

begin
  orcamento := 'sim';
  if (cds_Movimento.State in [dsInsert, dsEdit]) then
    btnGravar.Click;
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
  IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  Texto2 := '---------------------------------------------------------' ;
  Texto3 := 'Produto' ;
  Texto4 := 'Cod.Barra          UN       Qtde      V.Un.      V.Total ' ;
  Texto5 := DateTimeToStr(Now) + '              Total.: R$   ';
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  AssignFile(IMPRESSORA,'LPT1:');
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
    cds_Mov_det.First;
    while not cds_Mov_det.Eof do
    begin
      cds_Mov_det.RecordCount;
      Writeln(Impressora, c17cpi + Format('%-40s',[cds_Mov_detPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[cds_Mov_detCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('     %-2s  ',[cds_Mov_detUN.Value]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[cds_Mov_detQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[cds_Mov_detPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('     %-6.2n',[cds_Mov_detVALTOTAL.value]));
      with Printer.Canvas do
      begin
        Font.Name := 'Courier New';
        Font.Size := 4;
      end;
      cds_Mov_det.next;
    end;
    {-----------------------------------------------------------}
    {-------------------Imprimi final do Pedido-----------------}
    total := cds_Mov_detTotalPedido.Value;
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
  dbeProduto.SetFocus;
end;

procedure TfTerminal.btnImprimirClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert, dsEdit]) then
    btnGravar.Click;
  if (tiporel = 'PEDIDO') then
    imprimePedido
  else
    imprimeCupom;
end;

procedure TfTerminal.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if dtsrc.DataSet.State in [dsBrowse] then
  begin
     DtSrc.DataSet.Edit;
     DtSrc1.DataSet.Edit;
     DBGrid1.SetFocus;
  end;
end;

procedure TfTerminal.btnGravarClick(Sender: TObject);
begin
  if ComboBox1.Text = 'À PRAZO' then
  begin
      if DBEdit4.Text = 'CONSUMIDOR' then
     begin
       MessageDlg('Para efetuar uma venda à prazo, é preciso antes informar o  '+#13+#10+'cliente.', mtWarning, [mbOK], 0);
       exit;
     end;
  end;
  inherited;
  fFiltroMovimento.cod_mov := cds_MovimentoCODMOVIMENTO.AsInteger;
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

  {---------------------------------------------------------------------------}
  {--------Se estiver alterando o pedido mudo o titulo para pendente----------}
  if (orcamento <> 'sim') then
  begin
    if (cds_venda.Active) then
      cds_venda.Close;
    cds_venda.Params[1].AsInteger := fFiltroMovimento.cod_mov;
    cds_venda.Open;
    if (not cds_venda.IsEmpty) then
    begin
      if (cds_cr.Active) then
        cds_cr.Close;
      cds_cr.Params[0].AsInteger := cds_vendaCODVENDA.AsInteger;
      cds_cr.Open;
      cds_cr.Edit;
      cds_crSTATUS.AsString := '5-';
      cds_cr.ApplyUpdates(0);
      cds_cr.Close;
    end;
    cds_venda.Close;
    {---------------------------------------------------------------------------}
    cds_Mov_det.ApplyUpdates(0);
    if ComboBox1.Text = 'À VISTA' then
    begin
      // Se foi uma inclusão depois da venda gravada, então, deve
      // ser feito apenas um update na tabela VENDA (verificado isso
      // na Procedure abaixo;
      gerarVendaeCr;
      cds_Movimento.Close;
      cds_Mov_det.Close;
      sds_uso.Close;
      dbeProduto.SetFocus;
    end;
    if ComboBox1.Text = 'À PRAZO' then
    begin
      //*******************************************************************************
      //   essa parte é para cadastro de Veículo
      if (MaskEdit1.Text <> '   -    ') then
      begin
        if (cds_Veiculocli.Active) then
          cds_Veiculocli.Close;
        cds_Veiculocli.Params[0].Clear;
        cds_Veiculocli.Params[1].AsInteger := cod_cli;
        cds_Veiculocli.Params[2].AsString := MaskEdit1.Text;
        cds_Veiculocli.Open;
        if (cds_Veiculocli.IsEmpty) then
        begin
          cod_cli := cds_MovimentoCODCLIENTE.AsInteger;
          fClienteVeiculo.varPlaca := MaskEdit1.Text;
        end;
        cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
        cds_Veiculocli.Close;
      end;
      //*******************************************************************************
      fVendaFinalizar:=TfVendaFinalizar.Create(Application);
      fCheques_bol := TfCheques_bol.Create(Application);
      try
        terminal := '0';
        fVendaFinalizar.ShowModal;
      finally
        fCheques_bol.Free;
        fVendaFinalizar.Free;
 //    dm.cds_Movimento.Close;
      end;
    end;
  end
  else
    cds_Mov_det.ApplyUpdates(0);
  orcamento := 'nao';
  if (cdsLista.Active) then
    cdsLista.Close;
  cdsLista.Params[0].Clear;  
  dbeProduto.SetFocus;
end;

procedure TfTerminal.btnExcluirClick(Sender: TObject);
begin
  inherited;
   dbeProduto.SetFocus;
end;

procedure TfTerminal.btnCancelarClick(Sender: TObject);
begin
  if DtSrc1.DataSet.State in [dsInsert, dsEdit] then
  begin
    DtSrc1.DataSet.Cancel;
    DtSrc1.DataSet.Close;
    DataSource1.DataSet.Close;
  end;
  DtSrc.DataSet.Cancel;
  DtSrc.DataSet.Close;
  dbeProduto.Text := '';
  dbeProduto.SetFocus;

end;

procedure TfTerminal.voltapprodutoanterior1Click(Sender: TObject);
begin
  inherited;
   DtSrc1.DataSet.Prior;
end;

procedure TfTerminal.Vaipproximoproduto1Click(Sender: TObject);
begin
  inherited;
  DtSrc1.DataSet.Next;
end;

procedure TfTerminal.BuscaPeloCdigo1Click(Sender: TObject);
begin
  inherited;
   if dbeProduto.Text='' then exit;
    if cds_Movimento.State in [dsInactive, dsBrowse] then
      btnIncluir.Click
    else
      cds_Mov_det.Append;

     if (cdsLista.Active) then
      cdsLista.Close;
    cdsLista.CommandText := 'select CODPRODUTO, CODLISTAPRECO,CODIGO, DESCR, FORNECEDOR, PRECOLISTA, PRECOVENDA,'+
      ' USAPRODUTO, CODBARRA from LISTAPRECO where CODIGO = :CODBARRA';
    cdsLista.Params[0].AsString := dbeProduto.Text;
    cdsLista.Open;
      
    if sProcuraProd.Active then
      sProcuraProd.Close;
    sProcuraProd.Params[0].Clear;
    sProcuraProd.Params[1].Clear;
    sProcuraProd.Params[2].AsString:=dbeProduto.Text;
    sProcuraProd.Open;

    if sProcuraProd.IsEmpty then
    begin
      cds_Mov_det.Cancel;
      exit;
    end;

    cds_Mov_detCODPRODUTO.AsInteger:=sProcuraProdCODPRODUTO.AsInteger;
    codproduto := sProcuraProdCODPRODUTO.AsInteger;
    cds_Mov_detPRODUTO.Value:=sProcuraProdPRODUTO.Value;
    cds_Mov_detCOD_COMISSAO.AsInteger:=sProcuraProdCOD_COMISSAO.AsInteger;
    cds_Mov_detQTDE_PCT.AsFloat:=sProcuraProdQTDE_PCT.AsFloat;
    cds_Mov_detUN.AsString:=sProcuraProdUNIDADEMEDIDA.AsString;
    cds_Mov_detLOCALIZACAO.AsString:=sProcuraProdLOCALIZACAO.AsString;
    //cds_Mov_detESTOQUEATUAL.AsFloat:=sProcuraProdESTOQUEATUAL.AsFloat;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    cds_Mov_detQTDE_ALT.AsFloat := 1;
    if sProcuraProdQTDE_PCT.AsFloat >= 1 then
       precovenda := sProcuraProdVALOR_PRAZO.AsFloat /
         sProcuraProdQTDE_PCT.AsFloat
    else
       precovenda := sProcuraProdVALOR_PRAZO.AsFloat;
    cds_Mov_detPRECO.AsFloat := precovenda;
    if (cds_Mov_detQUANTIDADE.AsFloat > 0) then
      cds_Mov_detVALTOTAL.AsFloat := precovenda * cds_Mov_detQUANTIDADE.AsFloat
    else
    begin
      cds_Mov_detVALTOTAL.AsFloat := precovenda * 1;
      cds_Mov_detQUANTIDADE.AsFloat := 1;
    end;
    cds_Mov_detCODALMOXARIFADO.AsInteger :=  sProcuraProdCODALMOXARIFADO.AsInteger;
    cds_Mov_detALMOXARIFADO.AsString := sProcuraProdALMOXARIFADO.AsString;
    cds_Mov_detICMS.AsFloat := sProcuraProdICMS.AsFloat;
    sProcuraProd.Close;
    cds_Mov_det.Post;
    if sds_uso.Active then
      sds_uso.Close;
    sds_uso.Params[0].AsInteger:=cds_Mov_detCODPRODUTO.AsInteger;
    sds_uso.Open;
    BitBtn7.Enabled := true;
    BitBtn4.Enabled := true;
    btnImprimir.Enabled := True;
    dbeProduto.Text := '';
    dbeProduto.SetFocus;
end;

procedure TfTerminal.Ajuda1Click(Sender: TObject);
begin
  inherited;
 fTeclasdeAtalho:=TfTeclasdeAtalho.Create(Application);
 try
   fTeclasdeAtalho.ShowModal;
 finally
   fTeclasdeAtalho.Free;
   dbeProduto.SetFocus;
 end;
end;

procedure TfTerminal.cds_vendaBeforePost(DataSet: TDataSet);
begin
  inherited;
    if cds_vendaSTATUS1.AsString = '0' then
      cds_vendaSTATUS.AsInteger := 0;
    if cds_vendaSTATUS1.AsString = '1' then
      cds_vendaSTATUS.AsInteger := 1;
    if cds_vendaSTATUS1.AsString = '2' then
      cds_vendaSTATUS.AsInteger := 2;
end;

procedure TfTerminal.cds_vendaCalcFields(DataSet: TDataSet);
begin
  inherited;
  cds_vendadiferenca.AsFloat := cds_vendaENTRADA.AsFloat - cds_vendaAPAGAR.AsFloat;
end;

procedure TfTerminal.cds_vendaNewRecord(DataSet: TDataSet);
begin
  inherited;
{    if (dm.c_6_genid.Active) then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
    cds_vendaCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    cds_vendaCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_vendaCODCLIENTE.AsInteger:=cds_MovimentoCODCLIENTE.AsInteger;
    cds_vendaNOMECLIENTE.AsString:=cds_MovimentoNOMECLIENTE.AsString;
    cds_vendaCODVENDEDOR.AsInteger:=cds_MovimentoCODVENDEDOR.AsInteger;
    cds_vendaNOMEUSUARIO.AsString:=cds_MovimentoNOMEUSUARIO.AsString;
    cds_vendaCODUSUARIO.AsInteger:=usulog;
    cds_vendaDATASISTEMA.AsDateTime:=Now;
    cds_vendaDATAVENDA.AsDateTime:=cds_MovimentoDATAMOVIMENTO.AsDateTime;
    cds_vendaDESCONTO.AsFloat := 0;
    cds_vendaMULTA_JUROS.AsFloat := 0;
    cds_vendaENTRADA.AsFloat := 0;
    cds_vendaVALOR_PAGAR.AsFloat := 0;
    cds_vendaAPAGAR.AsFloat := 0;
    cds_vendaN_PARCELA.AsInteger := 1;
    cds_vendaCODCCUSTO.AsInteger := cds_MovimentoCODALMOXARIFADO.AsInteger;
    if DM.scds_cliente_proc.Active then
       DM.scds_cliente_proc.Close;
     DM.scds_cliente_proc.Params[0].Clear;
     DM.scds_cliente_proc.Params[1].Clear;
     DM.scds_cliente_proc.Params[2].AsInteger:=cds_vendaCODCLIENTE.AsInteger;
     DM.scds_cliente_proc.Open;
     if not DM.scds_cliente_procCODBANCO.IsNull then
            cds_vendaBANCO.AsInteger:=DM.scds_cliente_procCODBANCO.AsInteger;
     cds_vendaDATAVENCIMENTO.AsDateTime:=cds_vendaDATAVENDA.AsDateTime +
       DM.scds_cliente_procPRAZORECEBIMENTO.AsFloat;
     dm.scds_cliente_proc.Close;
    if DM.scds_banco_proc.Active then
       DM.scds_banco_proc.Close;
       DM.scds_banco_proc.Params[0].AsSmallInt:=cds_vendaBANCO.Value;
       DM.scds_banco_proc.Open;
       cds_vendaBANCO_1.AsString:=DM.scds_banco_procBANCO.AsString;
       DM.scds_banco_proc.Close;
       cds_vendaSTATUS.AsInteger:=0;
     if DM.scds_Mov_Det_proc.Active then
       DM.scds_Mov_Det_proc.Close;
     DM.scds_Mov_Det_proc.Params[0].AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
     DM.scds_Mov_Det_proc.Open;
     cds_vendaVALOR.AsCurrency:=FloatToCurr(DM.scds_Mov_Det_procTotalPedido.Value);
 }    
end;

procedure TfTerminal.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
  inherited;
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger:=usulog;
    cds_MovimentoCODVENDEDOR.Value:=usulog;
    cds_MovimentoCODCLIENTE.AsInteger := codcliente;
    cds_MovimentoCODALMOXARIFADO.AsInteger := 1; 
end;

procedure TfTerminal.cds_MovimentoBeforePost(DataSet: TDataSet);
begin
  inherited;
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

procedure TfTerminal.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TfTerminal.buscaProduto;
 var
 s:string;
begin
  inherited;
  if (dbeProduto.Text = '') then
    exit;
  if (cds_Movimento.State in [dsInactive, dsBrowse]) then
    btnIncluir.Click
  else
    cds_Mov_det.Append;
  s:='';
  if (buscaProdLista(dbeproduto.Text, 'Prod') = 1) then
  begin
    cds_mov_det.Cancel;
    dbeproduto.SetFocus;
    exit;
  end;
  if (scds_produto_proc.IsEmpty) then
  begin
    cds_mov_det.Cancel;
    dbeproduto.SetFocus;
    exit;
  end;
  cds_Mov_detCOD_BARRA.AsString := dbeProduto.Text;
  cds_Mov_detCODPRODUTO.AsInteger:=scds_produto_procCODPRODUTO.AsInteger;
  cds_Mov_detPRODUTO.Value:=scds_produto_procPRODUTO.Value;
  cds_Mov_detCOD_COMISSAO.AsInteger:=scds_produto_procCOD_COMISSAO.AsInteger;
  cds_Mov_detQTDE_PCT.AsFloat:=scds_produto_procQTDE_PCT.AsFloat;
  cds_Mov_detUN.AsString:=scds_produto_procUNIDADEMEDIDA.AsString;
  cds_Mov_detLOCALIZACAO.AsString:=scds_produto_procLOCALIZACAO.AsString;
  cds_Mov_detESTOQUEATUAL.AsFloat:=scds_produto_procESTOQUEATUAL.AsFloat;
  cds_Mov_detQUANTIDADE.AsFloat := 1;
  cds_Mov_detQTDE_ALT.AsFloat := 1;
  cds_Mov_detVALTOTAL.AsFloat := precovenda * cds_Mov_detQUANTIDADE.AsFloat;
  cds_Mov_detCODALMOXARIFADO.AsInteger:=scds_produto_procCODALMOXARIFADO.AsInteger;
  cds_Mov_detALMOXARIFADO.AsString := scds_produto_procALMOXARIFADO.AsString;
  cds_Mov_detICMS.AsFloat := scds_produto_procICMS.AsFloat;
  cds_Mov_detPRECO.AsFloat := precovenda;
  scds_produto_proc.Close;
  cds_Mov_det.Post;
  if sds_uso.Active then
    sds_uso.Close;
  sds_uso.Params[0].AsInteger:=cds_Mov_detCODPRODUTO.AsInteger;
  sds_uso.Open;
  dbeProduto.Text := '';
  dbeProduto.SetFocus;
  BitBtn7.Enabled := true;
  BitBtn4.Enabled := true;
  btnImprimir.Enabled := True;
end;

procedure TfTerminal.BuscarLista1Click(Sender: TObject);
begin
  inherited;
  // Buscar Produtos na Lista
  buscaProdLista(dbeproduto.Text, 'Lista');
end;

procedure TfTerminal.imprimeCupom;
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
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  modelo, placa, cliente :string;
  total : double;
begin
  inherited;

      //mostra veiculos do cliente
      if (cds_Veiculocli.Active) then
        cds_Veiculocli.Close;
      cds_Veiculocli.Params[0].Clear;
      cds_Veiculocli.Params[1].Clear;
      cds_Veiculocli.Params[2].Clear;
      cds_Veiculocli.Params[3].AsInteger := cds_MovimentoCOD_VEICULO.asInteger;
      cds_Veiculocli.Open;
      if (not cds_Veiculocli.IsEmpty) then
      begin
        modelo := ' - ' + cds_VeiculocliMARCA_MODELO.AsString;
        placa := 'Placa : ' + cds_VeiculocliPLACA.AsString + modelo;
      end;
      cds_Veiculocli.Close;

     cds_venda.Close;
     cds_venda.Params[0].AsInteger := COD_VENDA;
     cds_venda.Open;
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
        IntToStr(cds_vendaNOTAFISCAL.AsInteger) + ' - '
           + cds_vendaSERIE.AsString;
     Texto2 := '---------------------------------------------------------' ;
     Texto3 := 'Produto' ;
     Texto4 := 'Cod.Barra          UN       Qtde      V.Un.      V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '              Total.: R$   ';
     cliente := 'Cliente : ' + cds_MovimentoNOMECLIENTE.Value;
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
     AssignFile(IMPRESSORA,'LPT1:');
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
     cds_Mov_det.First;
     while not cds_Mov_det.Eof do
     begin
       cds_Mov_det.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[cds_Mov_detPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[cds_Mov_detCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('     %-2s  ',[cds_Mov_detUN.Value]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[cds_Mov_detQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[cds_Mov_detPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('     %-6.2n',[cds_Mov_detVALTOTAL.value]));
      with Printer.Canvas do
      begin
       Font.Name := 'Courier New';
       Font.Size := 4;
      end;
      cds_Mov_det.next;
     end;
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
     total := cds_Mov_detTotalPedido.Value;
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
  dbeProduto.SetFocus;
end;

procedure TfTerminal.imprimePedido;
begin
  // Imprime Pedido
  Rep.FileName := str_relatorio + 'impr_texto.rep';
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('PVENDA').Value := COD_VENDA;
  Rep.Execute;
end;

procedure TfTerminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (cds_Mov_det.Active) then
    cds_mov_det.Close;
  cds_mov_det.Params[0].Clear;
  cds_mov_det.Params[1].Clear;
  if (cdsLista.Active) then
    cdsLista.Close;
  cdsLista.Params[0].Clear;      
end;

procedure TfTerminal.AlterarQtde1Click(Sender: TObject);
begin
  inherited;
//  DtSrc1.DataSet.Prior;
  dbedit2.SetFocus;
end;

procedure TfTerminal.BitBtn6Click(Sender: TObject);
begin
  inherited;
   fClienteVeiculo := TfClienteVeiculo.Create(Application);
   try
     fClienteVeiculo.varPlaca := MaskEdit1.Text;
     cod_cli := 1;
     fClienteVeiculo.ShowModal;
   finally
     fClienteVeiculo.Free;
     fClienteVeiculo.varPlaca := '';
   end;
end;

procedure TfTerminal.AdItensnoCadastro1Click(Sender: TObject);
begin
  inherited;
  BitBtn3.Click;
end;

procedure TfTerminal.BitBtn8Click(Sender: TObject);
begin
  inherited;
  IF (codproduto <> 0) then
  begin
    fProdutoCadastro:=TfProdutoCadastro.Create(Application);
    try
     fProdutoCadastro.btnProcurar.Visible := False;
     if (dm.cds_produto.Active) then
       dm.cds_produto.close;
     dm.cds_produto.Params[0].AsInteger := codproduto;
     dm.cds_produto.Open;
     fProdutoCadastro.ShowModal;
    finally
      fProdutoCadastro.btnProcurar.Visible := True;
      fProdutoCadastro.Free;
      dbeProduto.SetFocus;
    end;
  end;
end;

procedure TfTerminal.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Excluir := 'S';
  Alterar := 'S';
  Cancelar := 'S';
  inherited;

end;

procedure TfTerminal.dbeProdutoKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
  if (dbeProduto.text = '') then
    exit;
    codproduto := 0;
    buscaProduto;
 end;
end;

procedure TfTerminal.BitBtn10Click(Sender: TObject);
begin
  inherited;
     dsLista.DataSet.Delete;
     (dsLista.DataSet as TClientDataSet).ApplyUpdates(0);
end;

end.
