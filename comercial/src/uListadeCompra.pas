unit uListadeCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, StdCtrls, Buttons,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, MMJPanel, Mask, DBCtrls,
  JvExMask, JvToolEdit, JvDBLookup, JvDBLookupComboEdit, Menus,
  rpcompobase, rpvclreport;

type
  TfListadeCompra = class(TForm)
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Edit5: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    dts1: TDataSource;
    sds2: TSQLDataSet;
    sds2CODIGO: TStringField;
    sds2DESCR: TStringField;
    sds2CODBARRA: TStringField;
    sds2CODPRODUTO: TIntegerField;
    sds2FORNECEDOR: TStringField;
    sds2GRUPO: TStringField;
    sds2SUBGRUPO: TStringField;
    sds2UNIDADE: TStringField;
    sds2PRECOLISTA: TFloatField;
    sds2MARGEM: TFloatField;
    sds2PRECOVENDA: TFloatField;
    sds2USAPRODUTO: TStringField;
    sds2CODLISTAPRECO: TIntegerField;
    sds1: TSQLDataSet;
    cds1: TClientDataSet;
    dsp1: TDataSetProvider;
    cds1CODLISTAPRECO: TIntegerField;
    cds1DESCR: TStringField;
    cds1APLIC: TStringField;
    cds1GRUPO: TStringField;
    cds1SUBGRUPO: TStringField;
    cds1FORNECEDOR: TStringField;
    cds1UNIDADE: TStringField;
    cds1PRECOLISTA: TFloatField;
    cds1PRECOVENDA: TFloatField;
    cds1MARGEM: TFloatField;
    cds1DATAATUALIZA: TDateField;
    cds1CODBARRA: TStringField;
    cds1CODIGO: TStringField;
    cds1PRO_COD: TStringField;
    cds1USAPRODUTO: TStringField;
    cds1CODPRODUTO: TIntegerField;
    sds1CODLISTAPRECO: TIntegerField;
    sds1DESCR: TStringField;
    sds1APLIC: TStringField;
    sds1GRUPO: TStringField;
    sds1SUBGRUPO: TStringField;
    sds1FORNECEDOR: TStringField;
    sds1UNIDADE: TStringField;
    sds1PRECOLISTA: TFloatField;
    sds1PRECOVENDA: TFloatField;
    sds1MARGEM: TFloatField;
    sds1DATAATUALIZA: TDateField;
    sds1CODBARRA: TStringField;
    sds1CODIGO: TStringField;
    sds1PRO_COD: TStringField;
    sds1USAPRODUTO: TStringField;
    sds1CODPRODUTO: TIntegerField;
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
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetRATEIO: TStringField;
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
    cds_Mov_detRATEIO: TStringField;
    cds_Mov_detTotalPedido: TAggregateField;
    ds_serv: TDataSource;
    DtSrc1: TDataSource;
    DtSrc: TDataSource;
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
    sds_MovimentoCONTROLE: TStringField;
    MMJPanel1: TMMJPanel;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnSair: TBitBtn;
    Panel1: TPanel;
    cdspro: TSQLDataSet;
    cdsproCODPRODUTO: TIntegerField;
    cdsproFAMILIA: TStringField;
    cdsproCATEGORIA: TStringField;
    cdsproMARCA: TStringField;
    cdsproUNIDADEMEDIDA: TStringField;
    cdsproDATAULTIMACOMPRA: TDateField;
    cdsproESTOQUEMAXIMO: TFloatField;
    cdsproESTOQUEATUAL: TFloatField;
    cdsproESTOQUEREPOSICAO: TFloatField;
    cdsproESTOQUEMINIMO: TFloatField;
    cdsproVALORUNITARIOATUAL: TFloatField;
    cdsproVALORUNITARIOANTERIOR: TFloatField;
    cdsproICMS: TFloatField;
    cdsproCODALMOXARIFADO: TIntegerField;
    cdsproIPI: TFloatField;
    cdsproCLASSIFIC_FISCAL: TStringField;
    cdsproCST: TStringField;
    cdsproBASE_ICMS: TFloatField;
    cdsproPRODUTO: TStringField;
    cdsproPRECOMEDIO: TBCDField;
    cdsproCOD_COMISSAO: TIntegerField;
    cdsproMARGEM_LUCRO: TFloatField;
    cdsproCOD_BARRA: TStringField;
    cdsproVALOR_PRAZO: TFloatField;
    cdsproTIPO: TStringField;
    cdsproCONTA_DESPESA: TStringField;
    cdsproCONTA_RECEITA: TStringField;
    cdsproCONTA_ESTOQUE: TStringField;
    cdsproRATEIO: TStringField;
    cdsproCODPRO: TStringField;
    cdsproQTDE_PCT: TFloatField;
    cdsproPESO_QTDE: TFloatField;
    cdsproDATACADASTRO: TSQLTimeStampField;
    cdsproMARGEM: TFloatField;
    cdsproPRO_COD: TStringField;
    cdsproDATAGRAV: TDateField;
    cdsproCODFORN: TStringField;
    cdsproFOTOPRODUTO: TStringField;
    cdsproUSA: TStringField;
    cdsproLOTES: TStringField;
    cdsproLOCALIZACAO: TStringField;
    Label3: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    sdsFor: TSQLDataSet;
    sdsForCODFORNECEDOR: TIntegerField;
    sdsForNOMEFORNECEDOR: TStringField;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    Procura: TMenuItem;
    Adiciona1: TMenuItem;
    Confirma1: TMenuItem;
    Exclui1: TMenuItem;
    dsp2: TDataSetProvider;
    cds2: TClientDataSet;
    cds2CODIGO: TStringField;
    cds2DESCR: TStringField;
    cds2CODBARRA: TStringField;
    cds2CODPRODUTO: TIntegerField;
    cds2FORNECEDOR: TStringField;
    cds2GRUPO: TStringField;
    cds2SUBGRUPO: TStringField;
    cds2UNIDADE: TStringField;
    cds2PRECOLISTA: TFloatField;
    cds2MARGEM: TFloatField;
    cds2PRECOVENDA: TFloatField;
    cds2USAPRODUTO: TStringField;
    cds2CODLISTAPRECO: TIntegerField;
    Importa1: TMenuItem;
    btnProcurar: TBitBtn;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    VCLReport1: TVCLReport;
    JvDBGrid3: TJvDBGrid;
    JvDBGrid4: TJvDBGrid;
    DataSource1: TDataSource;
    cds_Movimento1: TClientDataSet;
    dsp_Movimento1: TDataSetProvider;
    sds_Movimento1: TSQLDataSet;
    IntegerField6: TIntegerField;
    DateField2: TDateField;
    IntegerField7: TIntegerField;
    SmallintField7: TSmallintField;
    SmallintField8: TSmallintField;
    SmallintField9: TSmallintField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    SmallintField10: TSmallintField;
    IntegerField8: TIntegerField;
    StringField13: TStringField;
    IntegerField9: TIntegerField;
    SmallintField11: TSmallintField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField10: TIntegerField;
    SmallintField12: TSmallintField;
    StringField18: TStringField;
    sds_Mov_det1: TSQLDataSet;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField19: TStringField;
    StringField20: TStringField;
    FloatField4: TFloatField;
    StringField21: TStringField;
    SmallintField13: TSmallintField;
    IntegerField14: TIntegerField;
    StringField22: TStringField;
    FloatField5: TFloatField;
    IntegerField15: TIntegerField;
    StringField23: TStringField;
    StringField24: TStringField;
    FloatField6: TFloatField;
    StringField25: TStringField;
    DateField3: TDateField;
    DateField4: TDateField;
    StringField26: TStringField;
    dsp_Mov_det1: TDataSetProvider;
    DtSrc2: TDataSource;
    cds_Mov_det1: TClientDataSet;
    AggregateField1: TAggregateField;
    sds_Movimento2: TSQLDataSet;
    IntegerField21: TIntegerField;
    DateField7: TDateField;
    IntegerField22: TIntegerField;
    SmallintField15: TSmallintField;
    SmallintField16: TSmallintField;
    SmallintField17: TSmallintField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    SmallintField18: TSmallintField;
    IntegerField23: TIntegerField;
    StringField38: TStringField;
    IntegerField24: TIntegerField;
    SmallintField19: TSmallintField;
    SQLTimeStampField3: TSQLTimeStampField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    IntegerField25: TIntegerField;
    SmallintField20: TSmallintField;
    StringField43: TStringField;
    dsp_Movimento2: TDataSetProvider;
    cds_Movimento2: TClientDataSet;
    DataSource3: TDataSource;
    DtSrc3: TDataSource;
    cds_Mov_det2: TClientDataSet;
    AggregateField2: TAggregateField;
    dsp_Mov_det2: TDataSetProvider;
    sds_Mov_det2: TSQLDataSet;
    IntegerField36: TIntegerField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    StringField61: TStringField;
    StringField62: TStringField;
    FloatField22: TFloatField;
    StringField63: TStringField;
    SmallintField28: TSmallintField;
    IntegerField39: TIntegerField;
    StringField64: TStringField;
    FloatField23: TFloatField;
    IntegerField40: TIntegerField;
    StringField65: TStringField;
    StringField66: TStringField;
    FloatField24: TFloatField;
    StringField67: TStringField;
    DateField11: TDateField;
    DateField12: TDateField;
    StringField68: TStringField;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    cds_Mov_det1CODDETALHE: TIntegerField;
    cds_Mov_det1CODMOVIMENTO: TIntegerField;
    cds_Mov_det1CODPRODUTO: TIntegerField;
    cds_Mov_det1ICMS: TFloatField;
    cds_Mov_det1PRECO: TFloatField;
    cds_Mov_det1QUANTIDADE: TFloatField;
    cds_Mov_det1PRODUTO: TStringField;
    cds_Mov_det1UN: TStringField;
    cds_Mov_det1QTDE_ALT: TFloatField;
    cds_Mov_det1BAIXA: TStringField;
    cds_Mov_det1CONTROLE: TSmallintField;
    cds_Mov_det1CODALMOXARIFADO: TIntegerField;
    cds_Mov_det1ALMOXARIFADO: TStringField;
    cds_Mov_det1VALORUNITARIOATUAL: TFloatField;
    cds_Mov_det1COD_COMISSAO: TIntegerField;
    cds_Mov_det1CONTA_DESPESA: TStringField;
    cds_Mov_det1CODPRO: TStringField;
    cds_Mov_det1QTDE_PCT: TFloatField;
    cds_Mov_det1LOTE: TStringField;
    cds_Mov_det1DTAFAB: TDateField;
    cds_Mov_det1DTAVCTO: TDateField;
    cds_Mov_det1RATEIO: TStringField;
    cds_Movimento1CODMOVIMENTO: TIntegerField;
    cds_Movimento1DATAMOVIMENTO: TDateField;
    cds_Movimento1CODCLIENTE: TIntegerField;
    cds_Movimento1CODNATUREZA: TSmallintField;
    cds_Movimento1STATUS: TSmallintField;
    cds_Movimento1CODUSUARIO: TSmallintField;
    cds_Movimento1NOMECLIENTE: TStringField;
    cds_Movimento1DESCNATUREZA: TStringField;
    cds_Movimento1ALMOXARIFADO: TStringField;
    cds_Movimento1CODVENDEDOR: TSmallintField;
    cds_Movimento1CODALMOXARIFADO: TIntegerField;
    cds_Movimento1NOMEFORNECEDOR: TStringField;
    cds_Movimento1CODFORNECEDOR: TIntegerField;
    cds_Movimento1TIPOTITULO: TSmallintField;
    cds_Movimento1DATA_SISTEMA: TSQLTimeStampField;
    cds_Movimento1NOMEUSUARIO: TStringField;
    cds_Movimento1OBS: TStringField;
    cds_Movimento1PLACA: TStringField;
    cds_Movimento1MARCA_MODELO: TStringField;
    cds_Movimento1COD_VEICULO: TIntegerField;
    cds_Movimento1BAIXAMOVIMENTO: TSmallintField;
    cds_Movimento1CONTROLE: TStringField;
    cds_Mov_det2CODDETALHE: TIntegerField;
    cds_Mov_det2CODMOVIMENTO: TIntegerField;
    cds_Mov_det2CODPRODUTO: TIntegerField;
    cds_Mov_det2ICMS: TFloatField;
    cds_Mov_det2PRECO: TFloatField;
    cds_Mov_det2QUANTIDADE: TFloatField;
    cds_Mov_det2PRODUTO: TStringField;
    cds_Mov_det2UN: TStringField;
    cds_Mov_det2QTDE_ALT: TFloatField;
    cds_Mov_det2BAIXA: TStringField;
    cds_Mov_det2CONTROLE: TSmallintField;
    cds_Mov_det2CODALMOXARIFADO: TIntegerField;
    cds_Mov_det2ALMOXARIFADO: TStringField;
    cds_Mov_det2VALORUNITARIOATUAL: TFloatField;
    cds_Mov_det2COD_COMISSAO: TIntegerField;
    cds_Mov_det2CONTA_DESPESA: TStringField;
    cds_Mov_det2CODPRO: TStringField;
    cds_Mov_det2QTDE_PCT: TFloatField;
    cds_Mov_det2LOTE: TStringField;
    cds_Mov_det2DTAFAB: TDateField;
    cds_Mov_det2DTAVCTO: TDateField;
    cds_Mov_det2RATEIO: TStringField;
    cds_Movimento2CODMOVIMENTO: TIntegerField;
    cds_Movimento2DATAMOVIMENTO: TDateField;
    cds_Movimento2CODCLIENTE: TIntegerField;
    cds_Movimento2CODNATUREZA: TSmallintField;
    cds_Movimento2STATUS: TSmallintField;
    cds_Movimento2CODUSUARIO: TSmallintField;
    cds_Movimento2NOMECLIENTE: TStringField;
    cds_Movimento2DESCNATUREZA: TStringField;
    cds_Movimento2ALMOXARIFADO: TStringField;
    cds_Movimento2CODVENDEDOR: TSmallintField;
    cds_Movimento2CODALMOXARIFADO: TIntegerField;
    cds_Movimento2NOMEFORNECEDOR: TStringField;
    cds_Movimento2CODFORNECEDOR: TIntegerField;
    cds_Movimento2TIPOTITULO: TSmallintField;
    cds_Movimento2DATA_SISTEMA: TSQLTimeStampField;
    cds_Movimento2NOMEUSUARIO: TStringField;
    cds_Movimento2OBS: TStringField;
    cds_Movimento2PLACA: TStringField;
    cds_Movimento2MARCA_MODELO: TStringField;
    cds_Movimento2COD_VEICULO: TIntegerField;
    cds_Movimento2BAIXAMOVIMENTO: TSmallintField;
    cds_Movimento2CONTROLE: TStringField;
    cds_Mov_det1ValorTotal: TFloatField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    BitBtn13: TBitBtn;
    cds_Mov_det2ValorTotal: TFloatField;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtn9: TBitBtn;
    BitBtn12: TBitBtn;
    DataSource2: TDataSource;
    DataEdit: TJvDateEdit;
    Label1: TLabel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    Incluir1: TMenuItem;
    Sair1: TMenuItem;
    bSalvar: TBitBtn;
    bSalvar1: TBitBtn;
    bSalvar2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure cds_Mov_det1CalcFields(DataSet: TDataSet);
    procedure cds_Mov_det2CalcFields(DataSet: TDataSet);
    procedure cds_Movimento1NewRecord(DataSet: TDataSet);
    procedure cds_Mov_det1NewRecord(DataSet: TDataSet);
    procedure cds_Mov_det2NewRecord(DataSet: TDataSet);
    procedure cds_Movimento2NewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bSalvar1Click(Sender: TObject);
    procedure bSalvar2Click(Sender: TObject);
  private
    { Private declarations }
     procedure primeiraLista;
     procedure segundaLista;
     procedure terceiraLista;
  public
    { Public declarations }
    lista0 :string;
    lista1 :string;
    lista2 :string;
  end;

var
  fListadeCompra: TfListadeCompra;
  valorUnitario: Double;
  jlc, est_compralc : integer;
  modolc, strb :string;
  strc :integer;

implementation

uses UDm, uFiltroMov_compra;

{$R *.dfm}

procedure TfListadeCompra.BitBtn1Click(Sender: TObject);
begin
  if ((Edit4.Text = '') and (Edit5.Text = '')) then
  begin
    MessageDlg('Informe o campo para pesquisa.', mtWarning, [mbOK], 0);
    exit;
  end;  
  screen.Cursor := crHourGlass;
  IF (Edit4.Text <> '') then
  begin
    strb := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
    strb := strb + ' SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, ';
    strb := strb + ' PRECOVENDA, USAPRODUTO, CODLISTAPRECO FROM LISTAPRECO WHERE CODIGO = ';
    strb := strb + '''' + edit4.Text + '''';
  end;
  IF (Edit5.Text <> '') then
  begin
    strb := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
    strb := strb + ' SUBGRUPO, UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO';
    strb := strb + ' FROM LISTAPRECO WHERE UDF_COLLATEBR(DESCR) containing ';
    strb := strb + '''' + edit5.Text + '''';
  end;
  //faz a busca pelo codigo de barra
 { IF (Edit6.Text <> '') then
  begin
    strb := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO, SUBGRUPO';
    strb := strb + ' , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO ';
    strb := strb + ' FROM LISTAPRECO WHERE CODBARRA = ';
    strb := strb + '''' + edit6.Text + '''';
  end; }

  if (sds2.Active) then
    sds2.Close;
  sds2.CommandText := strb;
  sds2.Open;
  if (not sds2.IsEmpty) then
    strc := sds2CODPRODUTO.AsInteger;

  if (cds1.Active) then
    cds1.Close;
  cds1.Params[1].Clear;
  cds1.Params[0].AsInteger := strc;
  cds1.Open;

  if (cds1.IsEmpty) then
  begin
    if (cds1.Active) then
      cds1.Close;
    cds1.Params[0].Clear;
    cds1.Params[1].AsString := Edit4.Text;
    cds1.Open;
    if (cdsPro.Active) then
      cdsPro.Close;
    cdsPro.Params[0].Clear;
    cdsPro.Params[1].AsString := Edit4.Text;
    cdsPro.Open;
    if (not cdsPro.IsEmpty) then
      strc := cdsproCODPRODUTO.AsInteger;
    cdsPro.Close;
  end;
  if (cds1.IsEmpty) then
     MessageDlg('Produto não encontrado', mtWarning, [mbOK], 0);


  screen.Cursor := crDefault;
end;

procedure TfListadeCompra.BitBtn2Click(Sender: TObject);
var
  codigoProduto : integer;
begin

  if (DataEdit.Text = '  /  /    ') then
  begin
    MessageDlg('Informe o campo Data Movimento', mtWarning, [mbOK], 0);
    exit;
  end;

  {** Aqui monto a primeira Lista *******************************************}
    if (lista0 = '') then
    begin
        lista0 := cds1FORNECEDOR.AsString;
        label9.Caption := lista0;
        primeiraLista;
        exit;
    end
    else
    begin
       if (lista0 = cds1FORNECEDOR.AsString) then
       begin
         primeiraLista;
         exit;
       end;
    end;

  {** Aqui monto a Segunda Lista *******************************************}
    if (lista1 = '') then
    begin
        lista1 := cds1FORNECEDOR.AsString;
        label10.Caption := lista1;
        segundaLista;
        exit;
    end
    else
    begin
       if (lista1 = cds1FORNECEDOR.AsString) then
       begin
         segundaLista;
         exit;
       end;
    end;

  {** Aqui monto a Terceira Lista *******************************************}
    if (lista2 = '') then
    begin
        lista2 := cds1FORNECEDOR.AsString;
        label11.Caption := lista2;
        terceiraLista;
        exit;
    end
    else
    begin
       if (lista2 = cds1FORNECEDOR.AsString) then
       begin
         terceiraLista;
         exit;
       end;
    end;
end;

procedure TfListadeCompra.btnIncluirClick(Sender: TObject);
begin
  lista0 := '';
  lista1 := '';
  lista2 := '';
  jlc := 1;
  modolc := 'incluir';
  // 1º Gride
  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;
  cds_MovimentoCODNATUREZA.AsInteger := 4;
  cds_MovimentoDESCNATUREZA.AsString := 'Compra';
  cds_MovimentoCODUSUARIO.AsInteger := 1;
  cds_MovimentoNOMEUSUARIO.AsString := 'x';
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
  //************************************************************
  // 2º Gride
  if cds_Mov_det1.Active then
    cds_Mov_det1.Close;
  cds_Mov_det1.Params[0].Clear;
  cds_Mov_det1.Params[1].Clear;
  if not DataSource1.DataSet.Active then
     DataSource1.DataSet.open;
  DataSource1.DataSet.Append;
  cds_Movimento1CODNATUREZA.AsInteger := 4;
  cds_Movimento1DESCNATUREZA.AsString := 'Compra';
  cds_Movimento1CODUSUARIO.AsInteger := 1;
  cds_Movimento1NOMEUSUARIO.AsString := 'x';
  if cds_Mov_det1.Active then
    cds_Mov_det1.Close;
  if c_8_serv.Active then
    c_8_serv.Close;
  cds_Mov_det1.Params[0].Clear;
  cds_Mov_det1.Params[1].Clear;
  if DtSrc2.DataSet.State in [dsInactive] then
  begin
    DtSrc2.DataSet.Open;
    DtSrc2.DataSet.Append;
  end;
  if DtSrc2.DataSet.State in [dsBrowse] then
      DtSrc2.DataSet.Append;

  //************************************************************
  // 3º Gride
  if cds_Mov_det2.Active then
    cds_Mov_det2.Close;
  cds_Mov_det2.Params[0].Clear;
  cds_Mov_det2.Params[1].Clear;
  if not DataSource3.DataSet.Active then
     DataSource3.DataSet.open;
  DataSource3.DataSet.Append;
  cds_Movimento2CODNATUREZA.AsInteger := 4;
  cds_Movimento2DESCNATUREZA.AsString := 'Compra';
  cds_Movimento2CODUSUARIO.AsInteger := 1;
  cds_Movimento2NOMEUSUARIO.AsString := 'x';
  if cds_Mov_det2.Active then
    cds_Mov_det2.Close;
  if c_8_serv.Active then
    c_8_serv.Close;
  cds_Mov_det2.Params[0].Clear;
  cds_Mov_det2.Params[1].Clear;
  if DtSrc3.DataSet.State in [dsInactive] then
  begin
    DtSrc3.DataSet.Open;
    DtSrc3.DataSet.Append;
  end;
  if DtSrc3.DataSet.State in [dsBrowse] then
      DtSrc3.DataSet.Append;
  DataEdit.Text := DateToStr(Now);
  edit4.setfocus;
end;

procedure TfListadeCompra.DtSrcStateChange(Sender: TObject);
begin

  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

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

procedure TfListadeCompra.FormShow(Sender: TObject);
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       DM.videoW := dm.UsuarioP1.AsString;
       DM.videoH := dm.UsuarioP2.AsString;
  end;
  if DM.videoW = '800' then
    Position := poDesigned;
  if (DM.videoW <> 'widescreen') then
  begin
   if  (DM.videoW <> '') then
   begin
     ScreenWidth := StrToInt(DM.videoW);
     ScreenHeight := StrToInt(DM.videoH);
     scaled := true;
     if (screen.width <> ScreenWidth) then
     begin
       height := longint(height) * longint(screen.height) DIV ScreenHeight;
       width := longint(width) * longint(screen.width) DIV ScreenWidth;
       scaleBy(screen.width, ScreenWidth);
     end;
   end;
  end;

end;

procedure TfListadeCompra.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
     if DtSrc1.DataSet.Active then
       DtSrc1.DataSet.Close;
  end;
end;

procedure TfListadeCompra.btnCancelarClick(Sender: TObject);
begin
  DtSrc1.DataSet.Cancel;
  DtSrc1.DataSet.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  DtSrc.DataSet.Close;

  DtSrc2.DataSet.Cancel;
  DtSrc2.DataSet.Close;
  cds_Mov_det1.Params[0].Clear;
  cds_Mov_det1.Params[1].Clear;
  DataSource1.DataSet.Close;

  DtSrc3.DataSet.Cancel;
  DtSrc3.DataSet.Close;
  cds_Mov_det2.Params[0].Clear;
  cds_Mov_det2.Params[1].Clear;
  DataSource3.DataSet.Close;

  if cds1.Active then
    cds1.Close;
end;

procedure TfListadeCompra.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfListadeCompra.BitBtn3Click(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;
  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
     DtSrc1.DataSet.Delete;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit7.Text := '';
  Edit8.Text := '';
end;

procedure TfListadeCompra.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 2;
    cds_MovimentoCODUSUARIO.AsInteger := usulog;
    cds_MovimentoCODVENDEDOR.Value:=usulog;
    cds_MovimentoCODCLIENTE.AsInteger := 0;
end;

procedure TfListadeCompra.cds_Mov_detCalcFields(DataSet: TDataSet);
begin
  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfListadeCompra.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
end;

procedure TfListadeCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
   if (Edit4.Text <> '') then
     BitBtn1.Click;
 end;
end;

procedure TfListadeCompra.btnGravarClick(Sender: TObject);
begin
  modolc := 'gravar';
  if (lista0 <> '') then
  begin
       if cds_Movimento.State in [dsBrowse] then
          cds_Movimento.Edit;
       if (not sdsFor.Active) then
           sdsFor.Open;
       if (sdsFor.Locate('NOMEFORNECEDOR', lista0, [loCaseInsensitive])) then
          cds_MovimentoCODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
       sdsFor.Close;
       cds_MovimentoDATAMOVIMENTO.Value := StrToDateTime(DataEdit.Text);
       //Salvo o Movimento
       DtSrc.DataSet.Post;
       (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
       cds_Mov_det.ApplyUpdates(0);
  end;

  if (lista1 <> '') then
  begin
       if cds_Movimento1.State in [dsBrowse] then
          cds_Movimento1.Edit;
       if (not sdsFor.Active) then
           sdsFor.Open;
       if (sdsFor.Locate('NOMEFORNECEDOR', lista1, [loCaseInsensitive])) then
          cds_Movimento1CODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
       sdsFor.Close;
       cds_Movimento1DATAMOVIMENTO.Value := StrToDateTime(DataEdit.Text);
       //Salvo o Movimento
       DataSource1.DataSet.Post;
       (DataSource1.DataSet as TClientDataset).ApplyUpdates(0);
       cds_Mov_det1.ApplyUpdates(0);
  end;

  if (lista2 <> '') then
  begin
       if cds_Movimento2.State in [dsBrowse] then
          cds_Movimento2.Edit;
       if (not sdsFor.Active) then
           sdsFor.Open;
       if (sdsFor.Locate('NOMEFORNECEDOR', lista2, [loCaseInsensitive])) then
          cds_Movimento2CODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
       sdsFor.Close;
       cds_Movimento2DATAMOVIMENTO.Value := StrToDateTime(DataEdit.Text);
       //Salvo o Movimento
       DataSource3.DataSet.Post;
       (DataSource3.DataSet as TClientDataset).ApplyUpdates(0);
       cds_Mov_det2.ApplyUpdates(0);
  end;

end;


procedure TfListadeCompra.BitBtn4Click(Sender: TObject);
begin
  if (not cds1.IsEmpty) then
  begin
    if (cds1USAPRODUTO.asString = 'SIM') then
    begin
       cds1.Edit;
       cds1USAPRODUTO.asString := 'NAO';
       cds1.ApplyUpdates(0);
    end;
    cds1.Edit;
    cds1USAPRODUTO.asString := 'SIM';
    cds1.ApplyUpdates(0);
  end;
  BitBtn1.Click;
end;

procedure TfListadeCompra.btnProcurarClick(Sender: TObject);
begin

    ffiltromov_compra:=TfFiltroMov_compra.Create(Application);
    try
      cds_ccusto.Open;
      cds_ccusto.First;
      while not cds_ccusto.Eof do
      begin
        ffiltromov_compra.ComboBox1.Items.Add(cds_ccustoNOME.AsString);
        cds_ccusto.Next;
      end;
      cds_ccusto.Close;
      fFiltroMov_compra.Edit3.Text := '4';
      fFiltroMov_compra.Edit4.Text := 'Compra';
      fFiltroMov_compra.codigo := 'LISTACOMPRA';
      //fFiltroMov_compra.rgStatus.ItemIndex := 2;
      fFiltroMov_compra.ShowModal;
    finally
      fFiltroMov_compra.Free;
    end;


end;

procedure TfListadeCompra.BitBtn5Click(Sender: TObject);
begin
  if (DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  Edit7.SetFocus;
end;

procedure TfListadeCompra.BitBtn6Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'listadecompras.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfListadeCompra.cds_Mov_det1CalcFields(DataSet: TDataSet);
begin
  cds_Mov_det1ValorTotal.Value := cds_Mov_det1PRECO.Value * cds_Mov_det1QUANTIDADE.Value;
end;

procedure TfListadeCompra.cds_Mov_det2CalcFields(DataSet: TDataSet);
begin
  cds_Mov_det2ValorTotal.Value := cds_Mov_det2PRECO.Value * cds_Mov_det2QUANTIDADE.Value;
end;

procedure TfListadeCompra.cds_Movimento1NewRecord(DataSet: TDataSet);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_Movimento1CODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    //cds_Movimento1CODMOVIMENTO.asInteger := 1999999;
    cds_Movimento1DATAMOVIMENTO.Value := Date;
    cds_Movimento1DATA_SISTEMA.AsDateTime := Now;
    cds_Movimento1STATUS.Value := 2;
    cds_Movimento1CODUSUARIO.AsInteger := usulog;
    cds_Movimento1CODVENDEDOR.Value:=usulog;
    cds_Movimento1CODCLIENTE.AsInteger := 0;
end;

procedure TfListadeCompra.cds_Mov_det1NewRecord(DataSet: TDataSet);
begin
{  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (cds_Mov_det1CODMOVIMENTO.AsInteger <> 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_mov_det1CODDETALHE.AsInteger := codmovdet;
  cds_Mov_det1CODMOVIMENTO.AsInteger:=cds_Movimento1CODMOVIMENTO.AsInteger;
 }
  cds_Mov_det1CODMOVIMENTO.AsInteger := cds_Movimento1CODMOVIMENTO.AsInteger;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_Mov_det1CODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
end;

procedure TfListadeCompra.cds_Mov_det2NewRecord(DataSet: TDataSet);
begin
{  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (cds_Mov_det2CODMOVIMENTO.AsInteger <> 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_mov_det2CODDETALHE.AsInteger := codmovdet;
  cds_Mov_det2CODMOVIMENTO.AsInteger:=cds_Movimento1CODMOVIMENTO.AsInteger;
 }
  cds_Mov_det2CODMOVIMENTO.AsInteger := cds_Movimento2CODMOVIMENTO.AsInteger;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_Mov_det2CODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
end;

procedure TfListadeCompra.cds_Movimento2NewRecord(DataSet: TDataSet);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_Movimento2CODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    //cds_Movimento2CODMOVIMENTO.asInteger := 1999999;
    cds_Movimento2DATAMOVIMENTO.Value := Date;
    cds_Movimento2DATA_SISTEMA.AsDateTime := Now;
    cds_Movimento2STATUS.Value := 2;
    cds_Movimento2CODUSUARIO.AsInteger := usulog;
    cds_Movimento2CODVENDEDOR.Value:=usulog;
    cds_Movimento2CODCLIENTE.AsInteger := 0;
end;

procedure TfListadeCompra.SpeedButton1Click(Sender: TObject);
begin
  lista0 := '';
  label9.Caption := '';
end;

procedure TfListadeCompra.SpeedButton2Click(Sender: TObject);
begin
  lista1 := '';
  label10.Caption := '';
end;

procedure TfListadeCompra.SpeedButton3Click(Sender: TObject);
begin
  lista2 := '';
  label11.Caption := '';
end;

procedure TfListadeCompra.BitBtn9Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'listadecompras.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := cds_Movimento1CODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfListadeCompra.BitBtn12Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'listadecompras.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := cds_Movimento2CODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfListadeCompra.BitBtn7Click(Sender: TObject);
begin
  if DataSource1.DataSet.State in [dsBrowse] then
     DataSource1.DataSet.edit;
  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_det1PRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
     DtSrc2.DataSet.Delete;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit7.Text := '';
  Edit8.Text := '';
end;

procedure TfListadeCompra.BitBtn10Click(Sender: TObject);
begin
  if DataSource3.DataSet.State in [dsBrowse] then
     DataSource3.DataSet.edit;
  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_det2PRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
     DtSrc3.DataSet.Delete;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit7.Text := '';
  Edit8.Text := '';
end;

procedure TfListadeCompra.BitBtn8Click(Sender: TObject);
begin
  if (DataSource1.DataSet.State in [dsBrowse]) then
    DataSource1.DataSet.Edit;
  Edit7.SetFocus;
end;

procedure TfListadeCompra.BitBtn11Click(Sender: TObject);
begin
  if (DataSource3.DataSet.State in [dsBrowse]) then
    DataSource3.DataSet.Edit;
  Edit7.SetFocus;
end;

procedure TfListadeCompra.BitBtn13Click(Sender: TObject);
begin
   if (lista0 = cds1FORNECEDOR.AsString) then
   begin
       bSalvar.Click;
       cds_Mov_det.Edit;
       cds_Mov_detQUANTIDADE.Value := StrToFloat(Edit7.Text);
       cds_Mov_det.ApplyUpdates(0);
   end;
   if (lista1 = cds1FORNECEDOR.AsString) then
   begin
       bSalvar1.Click;
       cds_Mov_det1.Edit;
       cds_Mov_det1QUANTIDADE.Value := StrToFloat(Edit7.Text);
       cds_Mov_det1.ApplyUpdates(0);
   end;
   if (lista2 = cds1FORNECEDOR.AsString) then
   begin
       bSalvar2.Click;
       cds_Mov_det2.Edit;
       cds_Mov_det2QUANTIDADE.Value := StrToFloat(Edit7.Text);
       cds_Mov_det2.ApplyUpdates(0);
   end;
   Edit4.SetFocus;
end;

procedure TfListadeCompra.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit1.Text := cds_Mov_detCODPRO.AsString;
  Edit2.Text := cds_Mov_detPRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_detQUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_detPRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit1.Text := cds_Mov_detCODPRO.AsString;
  Edit2.Text := cds_Mov_detPRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_detQUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_detPRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit1.Text := cds_Mov_detCODPRO.AsString;
  Edit2.Text := cds_Mov_detPRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_detQUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_detPRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit1.Text := cds_Mov_det1CODPRO.AsString;
  Edit2.Text := cds_Mov_det1PRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_det1QUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_det1PRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit1.Text := cds_Mov_det1CODPRO.AsString;
  Edit2.Text := cds_Mov_det1PRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_det1QUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_det1PRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit1.Text := cds_Mov_det1CODPRO.AsString;
  Edit2.Text := cds_Mov_det1PRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_det1QUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_det1PRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit1.Text := cds_Mov_det1CODPRO.AsString;
  Edit2.Text := cds_Mov_det1PRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_det1QUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_det1PRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit1.Text := cds_Mov_det2CODPRO.AsString;
  Edit2.Text := cds_Mov_det2PRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_det2QUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_det2PRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit1.Text := cds_Mov_det2CODPRO.AsString;
  Edit2.Text := cds_Mov_det2PRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_det2QUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_det2PRECO.AsFloat);
end;

procedure TfListadeCompra.JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit1.Text := cds_Mov_det2CODPRO.AsString;
  Edit2.Text := cds_Mov_det2PRODUTO.AsString;
  Edit7.Text := FloatToStr(cds_Mov_det2QUANTIDADE.AsFloat);
  Edit8.Text := FloatToStr(cds_Mov_det2PRECO.AsFloat);
end;

procedure TfListadeCompra.primeiraLista;
begin
        if DtSrc1.State in [dsInsert, dsEdit] then
        begin
          if cds_Movimento.State in [dsBrowse, dsInactive] then
            cds_Movimento.Edit;
          sdsFor.Open;
          DtSrc1.DataSet.Append;
          //insere os itens
          if (cdspro.Active) then
            cdspro.Close;
          cdspro.Params[1].clear;
          cdspro.Params[0].AsInteger := strc;
          cdspro.Open;
          if (cdsproCODPRODUTO.IsNull) then
          begin
            MessageDlg('Produto não consta no Cadastro', mtWarning, [mbOK], 0);
            exit;
          end;
          cds_Mov_detCODPRODUTO.AsInteger := cdsproCODPRODUTO.AsInteger;
          cds_Mov_detCODPRO.AsString := cdsproCODPRO.AsString;
          cds_Mov_detPRODUTO.AsString := cdsproPRODUTO.AsString;
          cds_Mov_detUN.AsString := cdsproUNIDADEMEDIDA.AsString;
          cds_Mov_detQUANTIDADE.AsFloat := 1;
          cds_Mov_detPRECO.AsFloat := cds1PRECOLISTA.AsFloat;
          Edit1.Text := cdsproCODPRO.AsString;
          Edit2.Text := cdsproPRODUTO.AsString;
          Edit8.Text := FloatToStr(cds1PRECOLISTA.AsFloat);
          Edit7.SetFocus;
        end;
        if DtSrc1.State in [dsBrowse] then
        begin
         if cds_Movimento.State in [dsBrowse, dsInactive] then
          cds_Movimento.Edit;
          sdsFor.Open;
          if (sdsFor.Locate('NOMEFORNECEDOR', lista0, [loCaseInsensitive])) then
             cds_MovimentoCODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
          sdsFor.Close;
          DtSrc1.DataSet.Append;
          //insere os itens
          if (cdspro.Active) then
            cdspro.Close;
          cdspro.Params[1].clear;
          cdspro.Params[0].AsInteger := strc;
          cdspro.Open;
          if (cdsproCODPRODUTO.IsNull) then
          begin
            MessageDlg('Produto não consta no Cadastro', mtWarning, [mbOK], 0);
            exit;
          end;
          //insere os itens
          if (cdspro.Active) then
            cdspro.Close;
          cdspro.Params[1].clear;
          cdspro.Params[0].AsInteger := strc;
          cdspro.Open;
          cds_Mov_detCODPRODUTO.AsInteger := cdsproCODPRODUTO.AsInteger;
          cds_Mov_detCODPRO.AsString := cdsproCODPRO.AsString;
          cds_Mov_detPRODUTO.AsString := cdsproPRODUTO.AsString;
          cds_Mov_detUN.AsString := cdsproUNIDADEMEDIDA.AsString;
          cds_Mov_detQUANTIDADE.AsFloat := 1;
          cds_Mov_detPRECO.AsFloat := cds1PRECOLISTA.AsFloat;
          Edit1.Text := cdsproCODPRO.AsString;
          Edit2.Text := cdsproPRODUTO.AsString;
          Edit8.Text := FloatToStr(cds1PRECOLISTA.AsFloat);
          Edit7.Text := '1';
          Edit7.SetFocus;
        end;
end;

procedure TfListadeCompra.segundaLista;
begin
        if DtSrc2.State in [dsInsert, dsEdit] then
        begin
          if cds_Movimento1.State in [dsBrowse, dsInactive] then
            cds_Movimento1.Edit;
          sdsFor.Open;
          DtSrc2.DataSet.Append;
          //insere os itens
          if (cdspro.Active) then
            cdspro.Close;
          cdspro.Params[1].clear;
          cdspro.Params[0].AsInteger := strc;
          cdspro.Open;
          if (cdsproCODPRODUTO.IsNull) then
          begin
            MessageDlg('Produto não consta no Cadastro', mtWarning, [mbOK], 0);
            exit;
          end;
          cds_Mov_det1CODPRODUTO.AsInteger := cdsproCODPRODUTO.AsInteger;
          cds_Mov_det1CODPRO.AsString := cdsproCODPRO.AsString;
          cds_Mov_det1PRODUTO.AsString := cdsproPRODUTO.AsString;
          cds_Mov_det1UN.AsString := cdsproUNIDADEMEDIDA.AsString;
          cds_Mov_det1QUANTIDADE.AsFloat := 1;
          cds_Mov_det1PRECO.AsFloat := cds1PRECOLISTA.AsFloat;
          Edit1.Text := cdsproCODPRO.AsString;
          Edit2.Text := cdsproPRODUTO.AsString;
          Edit8.Text := FloatToStr(cds1PRECOLISTA.AsFloat);
          Edit7.SetFocus;
        end;
        if DtSrc2.State in [dsBrowse] then
        begin
         if cds_Movimento1.State in [dsBrowse, dsInactive] then
          cds_Movimento1.Edit;
          sdsFor.Open;
          if (sdsFor.Locate('NOMEFORNECEDOR', lista0, [loCaseInsensitive])) then
             cds_Movimento1CODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
          sdsFor.Close;
          DtSrc2.DataSet.Append;
          //insere os itens
          if (cdspro.Active) then
            cdspro.Close;
          cdspro.Params[1].clear;
          cdspro.Params[0].AsInteger := strc;
          cdspro.Open;
          if (cdsproCODPRODUTO.IsNull) then
          begin
            MessageDlg('Produto não consta no Cadastro', mtWarning, [mbOK], 0);
            exit;
          end;
          cds_Mov_det1CODPRODUTO.AsInteger := cdsproCODPRODUTO.AsInteger;
          cds_Mov_det1CODPRO.AsString := cdsproCODPRO.AsString;
          cds_Mov_det1PRODUTO.AsString := cdsproPRODUTO.AsString;
          cds_Mov_det1UN.AsString := cdsproUNIDADEMEDIDA.AsString;
          cds_Mov_det1QUANTIDADE.AsFloat := 1;
          cds_Mov_det1PRECO.AsFloat := cds1PRECOLISTA.AsFloat;
          Edit1.Text := cdsproCODPRO.AsString;
          Edit2.Text := cdsproPRODUTO.AsString;
          Edit8.Text := FloatToStr(cds1PRECOLISTA.AsFloat);
          Edit7.Text := '1';
          Edit7.SetFocus;
        end;

end;

procedure TfListadeCompra.terceiraLista;
begin
        if DtSrc3.State in [dsInsert, dsEdit] then
        begin
          if cds_Movimento2.State in [dsBrowse, dsInactive] then
            cds_Movimento2.Edit;
          sdsFor.Open;
          DtSrc3.DataSet.Append;
          //insere os itens
          if (cdspro.Active) then
            cdspro.Close;
          cdspro.Params[1].clear;
          cdspro.Params[0].AsInteger := strc;
          cdspro.Open;

          if (cdsproCODPRODUTO.IsNull) then
          begin
            MessageDlg('Produto não consta no Cadastro', mtWarning, [mbOK], 0);
            exit;
          end;
          cds_Mov_det2CODPRODUTO.AsInteger := cdsproCODPRODUTO.AsInteger;
          cds_Mov_det2CODPRO.AsString := cdsproCODPRO.AsString;
          cds_Mov_det2PRODUTO.AsString := cdsproPRODUTO.AsString;
          cds_Mov_det2UN.AsString := cdsproUNIDADEMEDIDA.AsString;
          cds_Mov_det2QUANTIDADE.AsFloat := 1;
          cds_Mov_det2PRECO.AsFloat := cds1PRECOLISTA.AsFloat;
          Edit1.Text := cdsproCODPRO.AsString;
          Edit2.Text := cdsproPRODUTO.AsString;
          Edit8.Text := FloatToStr(cds1PRECOLISTA.AsFloat);
          Edit7.SetFocus;
        end;
        if DtSrc3.State in [dsBrowse] then
        begin
         if cds_Movimento2.State in [dsBrowse, dsInactive] then
          cds_Movimento2.Edit;
          sdsFor.Open;
          if (sdsFor.Locate('NOMEFORNECEDOR', lista0, [loCaseInsensitive])) then
             cds_Movimento2CODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
          sdsFor.Close;
          DtSrc3.DataSet.Append;
          //insere os itens
          if (cdspro.Active) then
            cdspro.Close;
          cdspro.Params[1].clear;
          cdspro.Params[0].AsInteger := strc;
          cdspro.Open;
          if (cdsproCODPRODUTO.IsNull) then
          begin
            MessageDlg('Produto não consta no Cadastro', mtWarning, [mbOK], 0);
            exit;
          end;
          cds_Mov_det2CODPRODUTO.AsInteger := cdsproCODPRODUTO.AsInteger;
          cds_Mov_det2CODPRO.AsString := cdsproCODPRO.AsString;
          cds_Mov_det2PRODUTO.AsString := cdsproPRODUTO.AsString;
          cds_Mov_det2UN.AsString := cdsproUNIDADEMEDIDA.AsString;
          cds_Mov_det2QUANTIDADE.AsFloat := 1;
          cds_Mov_det2PRECO.AsFloat := cds1PRECOLISTA.AsFloat;
          Edit1.Text := cdsproCODPRO.AsString;
          Edit2.Text := cdsproPRODUTO.AsString;
          Edit8.Text := FloatToStr(cds1PRECOLISTA.AsFloat);
          Edit7.Text := '1';
          Edit7.SetFocus;
        end;

end;

procedure TfListadeCompra.BitBtn14Click(Sender: TObject);
begin
  lista0 := '';
  label9.Caption := '';
end;

procedure TfListadeCompra.BitBtn15Click(Sender: TObject);
begin
  lista1 := '';
  label10.Caption := '';
end;


procedure TfListadeCompra.BitBtn16Click(Sender: TObject);
begin
  lista2 := '';
  label11.Caption := '';
end;

procedure TfListadeCompra.FormCreate(Sender: TObject);
begin
//  codmovdet := 1999999;
 // codmd := 1999999;
end;

procedure TfListadeCompra.bSalvarClick(Sender: TObject);
begin
       if cds_Movimento.State in [dsBrowse] then
          cds_Movimento.Edit;
       if (not sdsFor.Active) then
           sdsFor.Open;
       if (sdsFor.Locate('NOMEFORNECEDOR', lista0, [loCaseInsensitive])) then
          cds_MovimentoCODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
       sdsFor.Close;
       cds_MovimentoDATAMOVIMENTO.Value := StrToDateTime(DataEdit.Text);
       //Salvo o Movimento
       DtSrc.DataSet.Post;
       (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
       cds_Mov_det.ApplyUpdates(0);
end;

procedure TfListadeCompra.bSalvar1Click(Sender: TObject);
begin
       if cds_Movimento1.State in [dsBrowse] then
          cds_Movimento1.Edit;
       if (not sdsFor.Active) then
           sdsFor.Open;
       if (sdsFor.Locate('NOMEFORNECEDOR', lista1, [loCaseInsensitive])) then
          cds_Movimento1CODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
       sdsFor.Close;
       cds_Movimento1DATAMOVIMENTO.Value := StrToDateTime(DataEdit.Text);
       //Salvo o Movimento
       DataSource1.DataSet.Post;
       (DataSource1.DataSet as TClientDataset).ApplyUpdates(0);
       cds_Mov_det1.ApplyUpdates(0);
end;

procedure TfListadeCompra.bSalvar2Click(Sender: TObject);
begin
      if cds_Movimento2.State in [dsBrowse] then
          cds_Movimento2.Edit;
       if (not sdsFor.Active) then
           sdsFor.Open;
       if (sdsFor.Locate('NOMEFORNECEDOR', lista2, [loCaseInsensitive])) then
          cds_Movimento2CODFORNECEDOR.AsInteger := sdsForCODFORNECEDOR.asInteger;
       sdsFor.Close;
       cds_Movimento2DATAMOVIMENTO.Value := StrToDateTime(DataEdit.Text);
       //Salvo o Movimento
       DataSource3.DataSet.Post;
       (DataSource3.DataSet as TClientDataset).ApplyUpdates(0);
       cds_Mov_det2.ApplyUpdates(0);
end;

end.
