unit uNotaf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, JvExStdCtrls, JvGroupBox, ComCtrls,
  JvExComCtrls, JvComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask,
  Buttons, ExtCtrls, MMJPanel, JvExMask, JvToolEdit, JvDBControls,
  JvCheckBox, DB, DBClient, JvMaskEdit, FMTBcd, SqlExpr, Menus, Provider, DBXpress,
  DBLocal, DBLocalS, uVendaCls, umovimento;

type
  TfNotaf = class(TForm)
    MMJPanel2: TMMJPanel;
    rg: TRadioGroup;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnImpNF: TBitBtn;
    dbeSerie: TDBEdit;
    dbeUsuario: TDBEdit;
    DataSource1: TDataSource;
    BitBtn5: TBitBtn;
    btnImpServ: TBitBtn;
    RadioGroup1: TRadioGroup;
    proc_transp: TSQLDataSet;
    proc_transpCODTRANSP: TIntegerField;
    proc_transpNOMETRANSP: TStringField;
    proc_transpPLACATRANSP: TStringField;
    proc_transpCNPJ_CPF: TStringField;
    proc_transpEND_TRANSP: TStringField;
    proc_transpCIDADE_TRANSP: TStringField;
    proc_transpUF_VEICULO_TRANSP: TStringField;
    proc_transpUF_TRANSP: TStringField;
    proc_transpFRETE: TStringField;
    proc_transpINSCRICAOESTADUAL: TStringField;
    proc_transpCORPONF1: TStringField;
    proc_transpCORPONF2: TStringField;
    proc_transpCORPONF3: TStringField;
    proc_transpCORPONF4: TStringField;
    proc_transpCORPONF5: TStringField;
    proc_transpCORPONF6: TStringField;
    proc_transpFONE: TStringField;
    proc_transpFONE2: TStringField;
    proc_transpFAX: TStringField;
    proc_transpCONTATO: TStringField;
    proc_transpBAIRRO: TStringField;
    proc_transpCEP: TStringField;
    listaCliente1: TSQLDataSet;
    listaCliente1CODCLIENTE: TIntegerField;
    listaCliente1NOMECLIENTE: TStringField;
    listaCliente1RAZAOSOCIAL: TStringField;
    listaCliente1CNPJ: TStringField;
    listaCliente1INSCESTADUAL: TStringField;
    listaCliente1LOGRADOURO: TStringField;
    listaCliente1BAIRRO: TStringField;
    listaCliente1COMPLEMENTO: TStringField;
    listaCliente1CIDADE: TStringField;
    listaCliente1UF: TStringField;
    listaCliente1CEP: TStringField;
    listaCliente1TELEFONE: TStringField;
    listaCliente1PRAZORECEBIMENTO: TSmallintField;
    listaCliente1COD_TRANPORTADORA: TIntegerField;
    sdsTotal: TSQLDataSet;
    localizaProduto: TSQLDataSet;
    localizaProdutoCODPRO: TStringField;
    localizaProdutoPRODUTO: TStringField;
    btnGuia: TBitBtn;
    PopupMenu1: TPopupMenu;
    ExcluirItemNF1: TMenuItem;
    CheckBox1: TCheckBox;
    sClasFiscal: TSQLDataSet;
    sClasFiscalCLASSIFICAO: TStringField;
    sClasFiscalCODIGO_REDUZ: TStringField;
    sClasFiscalDESCRICAO: TStringField;
    sClasFiscalTIPO_CLASSIFICA: TStringField;
    sClasFiscalICMS_SUBST: TFloatField;
    sClasFiscalICMS_SUBST_IC: TFloatField;
    sClasFiscalICMS_SUBST_IND: TFloatField;
    btnNotaFiscal: TBitBtn;
    sdsNotaMae: TSQLDataSet;
    sdsNotaMaeNOTASERIE: TStringField;
    sdsNotaMaeNUMNF: TIntegerField;
    sdsNotaMaeNATUREZA: TSmallintField;
    sdsNotaMaeQUANTIDADE: TFloatField;
    sdsNotaMaeMARCA: TStringField;
    sdsNotaMaePESOBRUTO: TBCDField;
    sdsNotaMaePESOLIQUIDO: TBCDField;
    sdsNotaMaeESPECIE: TStringField;
    sdsNotaMaeDTAEMISSAO: TDateField;
    sdsNotaMaeDTASAIDA: TDateField;
    sdsNotaMaeUF: TStringField;
    sdsNotaMaeCODVENDA: TIntegerField;
    sdsNotaMaeCODTRANSP: TIntegerField;
    sdsNotaMaeNUMERO: TStringField;
    sdsNotaMaeNOTAFISCAL: TIntegerField;
    sdsNotaMaeHORASAIDA: TTimeField;
    sdsNotaMaeDATA_SISTEMA: TSQLTimeStampField;
    sdsNotaMaeBASE_ICMS: TFloatField;
    sdsNotaMaeVALOR_ICMS: TFloatField;
    sdsNotaMaeBASE_ICMS_SUBST: TFloatField;
    sdsNotaMaeVALOR_ICMS_SUBST: TFloatField;
    sdsNotaMaeVALOR_PRODUTO: TFloatField;
    sdsNotaMaeVALOR_FRETE: TFloatField;
    sdsNotaMaeVALOR_SEGURO: TFloatField;
    sdsNotaMaeOUTRAS_DESP: TFloatField;
    sdsNotaMaeVALOR_IPI: TFloatField;
    sdsNotaMaeVALOR_TOTAL_NOTA: TFloatField;
    sdsNotaMaeCORPONF1: TStringField;
    sdsNotaMaeCORPONF2: TStringField;
    sdsNotaMaeCORPONF3: TStringField;
    sdsNotaMaeCORPONF4: TStringField;
    sdsNotaMaeCORPONF5: TStringField;
    sdsNotaMaeCORPONF6: TStringField;
    sdsNotaMaeCFOP: TStringField;
    sdsNotaMaeCODCLIENTE: TIntegerField;
    sdsNotaMaeFATURA: TStringField;
    sdsNotaMaeICMS: TFloatField;
    sdsNotaMaeREDUZICMS: TFloatField;
    sdsNotaMaeNOMETRANSP: TStringField;
    sdsNotaMaePLACATRANSP: TStringField;
    sdsNotaMaeCNPJ_CPF: TStringField;
    sdsNotaMaeEND_TRANSP: TStringField;
    sdsNotaMaeCIDADE_TRANSP: TStringField;
    sdsNotaMaeUF_VEICULO_TRANSP: TStringField;
    sdsNotaMaeUF_TRANSP: TStringField;
    sdsNotaMaeFRETE: TStringField;
    sdsNotaMaeINSCRICAOESTADUAL: TStringField;
    sdsNotaMaeSTATUS: TStringField;
    sdsNotaMaeVLRTOTALEXP: TFloatField;
    sdsNotaMaeIMPRESSA: TStringField;
    sdsNotaMaeSERIE: TStringField;
    sdsNotaMaeSELECIONOU: TStringField;
    sdsNotaMaeID_GUIA: TIntegerField;
    sdsNotaMaePROTOCOLOENV: TStringField;
    sdsNotaMaeNUMRECIBO: TStringField;
    sdsNotaMaePROTOCOLOCANC: TStringField;
    sdsNotaMaeNOTAMAE: TIntegerField;                           
    sdsNotaMaePESOREMESSA: TBCDField;
    dspNotaMae: TDataSetProvider;
    cdsNotaMae: TClientDataSet;
    cdsNotaMaeNOTASERIE: TStringField;
    cdsNotaMaeNUMNF: TIntegerField;
    cdsNotaMaeNATUREZA: TSmallintField;
    cdsNotaMaeQUANTIDADE: TFloatField;
    cdsNotaMaeMARCA: TStringField;
    cdsNotaMaePESOBRUTO: TBCDField;
    cdsNotaMaePESOLIQUIDO: TBCDField;
    cdsNotaMaeESPECIE: TStringField;
    cdsNotaMaeDTAEMISSAO: TDateField;
    cdsNotaMaeDTASAIDA: TDateField;
    cdsNotaMaeUF: TStringField;
    cdsNotaMaeCODVENDA: TIntegerField;
    cdsNotaMaeCODTRANSP: TIntegerField;
    cdsNotaMaeNUMERO: TStringField;
    cdsNotaMaeNOTAFISCAL: TIntegerField;
    cdsNotaMaeHORASAIDA: TTimeField;
    cdsNotaMaeDATA_SISTEMA: TSQLTimeStampField;
    cdsNotaMaeBASE_ICMS: TFloatField;
    cdsNotaMaeVALOR_ICMS: TFloatField;
    cdsNotaMaeBASE_ICMS_SUBST: TFloatField;
    cdsNotaMaeVALOR_ICMS_SUBST: TFloatField;
    cdsNotaMaeVALOR_PRODUTO: TFloatField;
    cdsNotaMaeVALOR_FRETE: TFloatField;
    cdsNotaMaeVALOR_SEGURO: TFloatField;
    cdsNotaMaeOUTRAS_DESP: TFloatField;
    cdsNotaMaeVALOR_IPI: TFloatField;
    cdsNotaMaeVALOR_TOTAL_NOTA: TFloatField;
    cdsNotaMaeCORPONF1: TStringField;
    cdsNotaMaeCORPONF2: TStringField;
    cdsNotaMaeCORPONF3: TStringField;
    cdsNotaMaeCORPONF4: TStringField;
    cdsNotaMaeCORPONF5: TStringField;
    cdsNotaMaeCORPONF6: TStringField;
    cdsNotaMaeCFOP: TStringField;
    cdsNotaMaeCODCLIENTE: TIntegerField;
    cdsNotaMaeFATURA: TStringField;
    cdsNotaMaeICMS: TFloatField;
    cdsNotaMaeREDUZICMS: TFloatField;
    cdsNotaMaeNOMETRANSP: TStringField;
    cdsNotaMaePLACATRANSP: TStringField;
    cdsNotaMaeCNPJ_CPF: TStringField;
    cdsNotaMaeEND_TRANSP: TStringField;
    cdsNotaMaeCIDADE_TRANSP: TStringField;
    cdsNotaMaeUF_VEICULO_TRANSP: TStringField;
    cdsNotaMaeUF_TRANSP: TStringField;
    cdsNotaMaeFRETE: TStringField;
    cdsNotaMaeINSCRICAOESTADUAL: TStringField;
    cdsNotaMaeSTATUS: TStringField;
    cdsNotaMaeVLRTOTALEXP: TFloatField;
    cdsNotaMaeIMPRESSA: TStringField;
    cdsNotaMaeSERIE: TStringField;
    cdsNotaMaeSELECIONOU: TStringField;
    cdsNotaMaeID_GUIA: TIntegerField;
    cdsNotaMaePROTOCOLOENV: TStringField;
    cdsNotaMaeNUMRECIBO: TStringField;
    cdsNotaMaePROTOCOLOCANC: TStringField;
    cdsNotaMaeNOTAMAE: TIntegerField;
    cdsNotaMaePESOREMESSA: TBCDField;
    JvPageControl1: TJvPageControl;
    TabNF: TTabSheet;
    JvGroupBox1: TJvGroupBox;
    cbNatureza: TDBComboBox;
    JvGroupBox2: TJvGroupBox;
    cbCFOP: TDBComboBox;
    btnRemessa: TButton;
    JvGroupBox3: TJvGroupBox;
    DBText1: TDBText;
    JvGroupBox4: TJvGroupBox;
    DBText2: TDBText;
    JvGroupBox5: TJvGroupBox;
    cbCLiente: TDBComboBox;
    btnProcCli: TBitBtn;
    JvGroupBox6: TJvGroupBox;
    DBEdit1: TDBEdit;
    JvGroupBox7: TJvGroupBox;
    DBEdit2: TDBEdit;
    JvGroupBox8: TJvGroupBox;
    DBEdit3: TDBEdit;
    JvGroupBox9: TJvGroupBox;
    DBEdit4: TDBEdit;
    JvGroupBox10: TJvGroupBox;
    JvDBDateEdit1: TJvDBDateEdit;
    JvGroupBox11: TJvGroupBox;
    JvDBDateEdit2: TJvDBDateEdit;
    JvGroupBox12: TJvGroupBox;
    DBEdit5: TDBEdit;
    JvGroupBox13: TJvGroupBox;
    DBEdit6: TDBEdit;
    JvGroupBox14: TJvGroupBox;
    DBEdit7: TDBEdit;
    JvGroupBox15: TJvGroupBox;
    DBEdit8: TDBEdit;
    JvGroupBox16: TJvGroupBox;
    DBEdit34: TDBEdit;
    JvGroupBox28: TJvGroupBox;
    DBEdit33: TDBEdit;
    btnSerie: TBitBtn;
    memo1: TMemo;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvGroupBox43: TJvGroupBox;
    cbCLiente1: TDBComboBox;
    btnProcCli2: TBitBtn;
    JvGroupBox44: TJvGroupBox;
    DBEdit35: TDBEdit;
    JvGroupBox45: TJvGroupBox;
    DBEdit36: TDBEdit;
    JvGroupBox46: TJvGroupBox;
    DBEdit37: TDBEdit;
    JvGroupBox47: TJvGroupBox;
    DBEdit38: TDBEdit;
    JvGroupBox48: TJvGroupBox;
    DBEdit39: TDBEdit;
    JvGroupBox49: TJvGroupBox;
    DBEdit40: TDBEdit;
    JvGroupBox50: TJvGroupBox;
    DBEdit41: TDBEdit;
    JvGroupBox51: TJvGroupBox;
    DBEdit42: TDBEdit;
    JvGroupBox52: TJvGroupBox;
    JvDBDateEdit3: TJvDBDateEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit44: TDBEdit;
    JvGroupBox54: TJvGroupBox;
    DBEdit47: TDBEdit;
    btnSerie2: TBitBtn;
    JvDBGrid2: TJvDBGrid;
    sCfop: TSQLDataSet;
    sCfopCFOP: TStringField;
    sCfopUF: TStringField;
    sCfopDADOSADC1: TStringField;
    sCfopDADOSADC2: TStringField;
    sCfopDADOSADC3: TStringField;
    sCfopDADOSADC4: TStringField;
    sCfopDADOSADC5: TStringField;
    sCfopDADOSADC6: TStringField;
    lblFatura: TLabel;
    sCfopNAOENVFATURA: TStringField;
    sqlValida: TSQLQuery;
    ChkComp: TCheckBox;
    GroupBox2: TGroupBox;
    DBEdit9: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit48: TDBEdit;
    listaCliente1CODFISCAL: TStringField;
    sCfopCODFISCAL: TStringField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    btnCr: TBitBtn;
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
    SQLDataSet1FORMARECEBIMENTO: TStringField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    DataSetProvider1: TDataSetProvider;
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
    scdsCr_procFORMARECEBIMENTO: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    ds_Cr: TDataSource;
    PageControl2: TPageControl;
    tsTrib: TTabSheet;
    JvGroupBox18: TJvGroupBox;
    DBEdit10: TDBEdit;
    JvGroupBox19: TJvGroupBox;
    DBEdit11: TDBEdit;
    JvGroupBox55: TJvGroupBox;
    DBEdit50: TDBEdit;
    JvGroupBox23: TJvGroupBox;
    DBEdit15: TDBEdit;
    JvGroupBox20: TJvGroupBox;
    DBEdit12: TDBEdit;
    JvGroupBox21: TJvGroupBox;
    DBEdit13: TDBEdit;
    JvGroupBox26: TJvGroupBox;
    DBEdit18: TDBEdit;
    JvGroupBox22: TJvGroupBox;
    DBEdit14: TDBEdit;
    JvGroupBox27: TJvGroupBox;
    DBEdit19: TDBEdit;
    JvGroupBox25: TJvGroupBox;
    DBEdit17: TDBEdit;
    JvGroupBox24: TJvGroupBox;
    DBEdit16: TDBEdit;
    tsTransp: TTabSheet;
    JvGroupBox29: TJvGroupBox;
    cbTransportadora: TDBComboBox;
    btnProcTransp: TBitBtn;
    GroupBox1: TGroupBox;
    cboFrete: TComboBox;
    JvGroupBox30: TJvGroupBox;
    DBEdit20: TDBEdit;
    JvGroupBox31: TJvGroupBox;
    DBEdit21: TDBEdit;
    JvGroupBox32: TJvGroupBox;
    DBEdit22: TDBEdit;
    JvGroupBox33: TJvGroupBox;
    DBEdit23: TDBEdit;
    JvGroupBox34: TJvGroupBox;
    DBEdit24: TDBEdit;
    JvGroupBox35: TJvGroupBox;
    DBEdit25: TDBEdit;
    JvGroupBox36: TJvGroupBox;
    DBEdit26: TDBEdit;
    JvGroupBox42: TJvGroupBox;
    DBEdit32: TDBEdit;
    JvGroupBox41: TJvGroupBox;
    DBEdit31: TDBEdit;
    JvGroupBox40: TJvGroupBox;
    DBEdit30: TDBEdit;
    JvGroupBox39: TJvGroupBox;
    DBEdit29: TDBEdit;
    JvGroupBox38: TJvGroupBox;
    DBEdit28: TDBEdit;
    JvGroupBox37: TJvGroupBox;
    DBEdit27: TDBEdit;
    tsDadosAdic: TTabSheet;
    GroupBox6: TGroupBox;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66NAO_USO_MAIS_USO_EM_CODPEDIDOCOMPRA: TDBEdit;
    JvGroupBox17: TJvGroupBox;
    DBEdit49: TDBEdit;
    JvGroupBox53: TJvGroupBox;
    DBEdit51: TDBEdit;
    JvGroupBox56: TJvGroupBox;
    DBEdit52: TDBEdit;
    JvGroupBox57: TJvGroupBox;
    DBEdit53: TDBEdit;
    JvGroupBox58: TJvGroupBox;
    DBEdit54: TDBEdit;
    JvGroupBox59: TJvGroupBox;
    DBEdit55: TDBEdit;
    calcman: TCheckBox;
    sqlBSerie: TSQLQuery;
    sdsCFOP: TSQLDataSet;
    sdsCFOPCFCOD: TStringField;
    sdsCFOPCFNOME: TStringField;
    sdsCFOPCFNOTA: TMemoField;
    sdsCFOPTIPOMOVIMENTO: TStringField;
    sdsCFOPFRETEBC: TStringField;
    sdsCFOPIPIBC: TStringField;
    sdsCFOPTOTTRIB: TStringField;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    Memo2: TMemo;
    edtNFRef: TEdit;
    Label5: TLabel;
    DBEdit56: TDBEdit;
    listaCliente1TIPOFIRMA: TSmallintField;
    listaCliente1TEM_IE: TStringField;
    sdsCFOPIND_PRES: TIntegerField;
    GroupBox3: TGroupBox;
    edFinNFe: TEdit;
    edIndFinal: TEdit;
    edIndPres: TEdit;
    edIndIeDest: TEdit;
    edDestinoOper: TEdit;
    edTipo: TEdit;
    listaCliente1NAOCONTRIBUINTE: TStringField;
    cbFinanceiro: TJvCheckBox;
    cbEstoque: TJvCheckBox;
    btnDuplicar: TBitBtn;
    sql_serie_nf: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCLienteChange(Sender: TObject);
    procedure cbNaturezaChange(Sender: TObject);
    procedure cbCFOPChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnProcCliClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cbTransportadoraChange(Sender: TObject);
    procedure btnProcTranspClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnImpNFClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit11Change(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnImpServClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure cbCLiente1Change(Sender: TObject);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1EditChange(Sender: TObject);
    //procedure BitBtn9Click(Sender: TObject);
    procedure JvDBGrid2EditChange(Sender: TObject);
    procedure btnGuiaClick(Sender: TObject);
    procedure ExcluirItemNF1Click(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure btnRemessaClick(Sender: TObject);
    procedure ChkCompClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure cboFreteChange(Sender: TObject);
    procedure btnCrClick(Sender: TObject);
    procedure edtNFRefExit(Sender: TObject);
    procedure edtNFRefClick(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure JvDBDateEdit1Change(Sender: TObject);
  private
    TD: TTransactionDesc;
    cod_natNotaf: Integer;
    statusNF: String;
    { Private declarations }
    procedure carregaDadosAdicionais(motivo:String);
    procedure incluiSAida;
    procedure incluiMovimento;
    procedure incluiVenda;
    procedure incluiNotaFiscal;
    procedure buscaserieNF;
    procedure CarregaParametros;
    procedure gravamovimento;
    procedure gravavenda;
    procedure alteraVlrVenda;
    procedure gravamov_detalhe;
    procedure gravanotafiscal;
    procedure gravarDadosNFe310;
    procedure carregarEmissao;
    procedure carregarNFg;
  public
    nfe_ccusto_emp_nome: String;
    nfe_ccusto_empresa: Integer;
    vrr : double;
    codMovFin, codVendaFin, codCliFin : integer;
    parametroNF: string;
    procedure calculaicms(Estado: String);
    procedure somavalores;
    procedure ativaCalc;
    procedure inativaCalc;
    procedure gravaSerie(numero: Integer);
  end;

var
  fNotaf: TfNotaf;
  valorUnitario: Double;
  codmovdet, codserv, codmd, centro_receita, cod_vendedor_padrao: integer;
  natureza, contas_pendentes, nome_vendedor_padrao, valor_fatura, fatura_NF: string;
  // variaveis da venda finalizar
  prazo, valor: double;
  terminal, data_movimento, varcancela : string;
  codigo_cliente, codigo_moviemento : integer;
  diasAumenta : integer;
  DtaTemp : TDateTime;

implementation

uses UDm, UDMNF, sCtrlResize, uProcurar, uProcurar_nf, uClienteCadastro,
  ufprocura_prod, uftransp, uFiltroMovimento, unitExclusao, Math,
  uNFeletronica, uNotafRemessa, uComplementar, uDetalheNF, StrUtils,
  ufCrAltera;

{$R *.dfm}

procedure TfNotaf.FormCreate(Sender: TObject);
begin
  codMovFin := 0;
  codVendaFin := 0;
  parametroNF := '';
  nfe_ccusto_empresa := 0;
  // Usado na DNZ
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('PARAMETRO', 'NOTAFISCALDESATIVADO', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      dbEdit33.ReadOnly := True;
      parametroNF := 'S';
    end;

  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaCFOP.Active) then
    dmnf.listaCFOP.Open;
  dmnf.listaCFOP.First;
  cbCLiente.Clear;
  while not dmnf.listaCFOP.Eof do
  begin
     cbNatureza.Items.Add(dmnf.listaCFOPCFNOME.AsString);
     cbCFOP.Items.Add(dmnf.listaCFOPCFCOD.AsString);
     dmnf.listaCFOP.Next;
  end;
  dmnf.listaCFOP.Close;
  //Populo Dbgrid Coluna descrição do Produto
  if (not dmnf.listaProduto.Active) then
    dmnf.listaProduto.Open;
  dmnf.listaProduto.First;
  while not dmnf.listaProduto.Eof do
  begin
     JvDBGrid1.Columns[1].PickList.Add(dmnf.listaProdutoPRODUTO.AsString);
     JvDBGrid2.Columns[1].PickList.Add(dmnf.listaProdutoPRODUTO.AsString);
     dmnf.listaProduto.Next;
  end;
  dmnf.listaProduto.Close;
  //Populo combobox Transportadora
  if (not dmnf.listaTransp.Active) then
    dmnf.listaTransp.Open;
  dmnf.listaTransp.First;
  while not dmnf.listaTransp.Eof do
  begin
    if (dmnf.listaTranspFANTASIA.AsString <> '') then
       cbTransportadora.Items.Add(dmnf.listaTranspFANTASIA.AsString)
    else
      cbTransportadora.Items.Add(dmnf.listaTranspNOMETRANSP.AsString);
    dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;
end;

procedure TfNotaf.btnIncluirClick(Sender: TObject);
var numNf: String;
  e_multi: String;
begin
  statusNF := 'NOVO';
  e_multi := 'NAO';
  if (nfe_ccusto_empresa > 0) then
  begin
    if (dm.cdsBusca.Active) then
      dm.cdsBusca.Close;
    dm.cdsBusca.CommandText := 'SELECT SERIE, ULTIMO_NUMERO ' +
      ', CODSERIE ' +
      ', NOTAFISCAL' +
      ', ICMS_DESTACADO ' +
      ', MODELO FROM SERIES WHERE CODSERIE = ' +
      IntToStr(dmnf.cds_empresaCODIGO.AsInteger);
    dm.cdsBusca.Open;
    if (not dm.cdsBusca.IsEmpty) then
    begin
      e_multi := 'SIM';
      dbeSerie.Text := dm.cdsBusca.fieldByName('SERIE').AsString;
      numNf := IntToStr(dm.cdsBusca.fieldByName('ULTIMO_NUMERO').AsInteger + 1);
    end;
  end;
  if (e_multi = 'NAO') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'SERIENFE';
    dm.cds_parametro.Open;
    if (dmnf.scds_serienfe.Active) then
      dmnf.scds_serienfe.Close;
    dmnf.scds_serienfe.Params[0].AsString := dm.cds_parametroD1.AsString;
    dmnf.scds_serienfe.Open;

    if (dm.cds_parametroCONFIGURADO.AsString = 'N') then
    begin
      dbeSerie.Text := dm.cds_parametroD1.AsString;
      numNf := IntToStr(dmnf.scds_serienfeNOTASERIE.AsInteger + 1);
      //gravaSerie(StrToInt(numNf));
    end
    else begin
      dbeSerie.Text := dm.cds_parametroD1.AsString;
      numNf := IntToStr(dmnf.scds_serienfeNOTASERIE.AsInteger + 1);
      //numNf := IntToStr(DMNF.cds_vendaNOTAFISCAL.AsInteger);
    end;
  end;
  if (not dmnf.cds_empresa.Active) then
    dmnf.cds_empresa.open;
  if ((dmnf.cds_nf.IsEmpty) and (codVendaFin > 0)) then
  begin
    if(sdsTotal.Active) then
      sdsTotal.close;
    sdsTotal.params[0].AsInteger := codMovFin;
    sdsTotal.open;
    incluiNotaFiscal;
    if (nfe_ccusto_empresa > 0) then
      dmnf.cds_nfCCUSTO.AsInteger := nfe_ccusto_empresa;
    dmnf.cds_nfSERIE.AsString := dbeSerie.Text;
    dmnf.cds_nfNOTASERIE.AsString := numNf;
    dmnf.cds_nfVALOR_PRODUTO.AsFloat := sdsTotal.Fields[0].AsFloat;
    dmnf.cds_nfVALOR_TOTAL_NOTA.AsFloat := dmnf.cds_nfVALOR_PRODUTO.AsFloat +
       dmnf.cds_vendaVALOR_ICMS.AsFloat + dmnf.cds_vendaVALOR_FRETE.AsFloat +
       dmnf.cds_vendaVALOR_SEGURO.AsFloat + dmnf.cds_vendaOUTRAS_DESP.AsFloat;
    dmnf.cds_nfVALOR_ICMS.AsFloat := dmnf.cds_vendaVALOR_ICMS.AsFloat;
    if (dmnf.cds_nfVALOR_ICMS.IsNull) then
      dmnf.cds_nfVALOR_ICMS.AsFloat := 0;
    dmnf.cds_nfREDUZICMS.AsFloat;
    dmnf.cds_nfVALOR_FRETE.AsFloat := dmnf.cds_vendaVALOR_FRETE.AsFloat;
    dmnf.cds_nfVALOR_SEGURO.AsFloat := dmnf.cds_vendaVALOR_SEGURO.AsFloat;
    dmnf.cds_nfOUTRAS_DESP.AsFloat := dmnf.cds_vendaOUTRAS_DESP.AsFloat;
    dmnf.cds_nfCODVENDA.AsInteger := codVendaFin;
    dmnf.cds_nfCODCLIENTE.AsInteger := codCliFin;
    dmnf.cds_nfFATURA.AsString := fatura_NF;
    if (listaCliente1.Active) then
      listaCliente1.Close;
    listaCliente1.Params.ParamByName('pCodCli').AsInteger := codCliFin;
    listaCliente1.Open;
    dmnf.cds_nfCODCLIENTE.AsInteger := codCliFin;
    dmnf.cds_nfNOMECLIENTE.AsString := listaCliente1RAZAOSOCIAL.AsString;
    dmnf.cds_nfRAZAOSOCIAL.AsString := listaCliente1RAZAOSOCIAL.AsString;
    DMNF.cds_nfCNPJCLI.AsString := listaCliente1CNPJ.AsString;
    DMNF.cds_nfINSCCLI.AsString := listaCliente1INSCESTADUAL.AsString;
    DMNF.cds_nfLOGRADOURO.AsString := listaCliente1LOGRADOURO.AsString;
    DMNF.cds_nfCIDADECLI.AsString := listaCliente1CIDADE.AsString;
    DMNF.cds_nfBAIRROCLI.AsString := listaCliente1BAIRRO.AsString;
    DMNF.cds_nfCEPCLI.AsString := listaCliente1CEP.AsString;
    DMNF.cds_nfFRETE.AsString := '2';
    DMNF.cds_nfUFCLI.AsString := listaCliente1UF.AsString;
    DMNF.cds_nfUF.AsString := listaCliente1UF.AsString;
    DMNF.cds_nfTELEFONE.AsString := listaCliente1TELEFONE.AsString;
    DMNF.cds_nfNOTAMAE.AsInteger := Null;
    dmnf.cds_nfINDPAG.AsInteger := 2;
  // Calcula o peso
  if (dmnf.sqs_tit.Active) then
    dmnf.sqs_tit.Close;

   dmnf.sqs_tit.CommandText := 'SELECT SUM(m.QUANTIDADE * prod.PESO_QTDE) FROM MOVIMENTODETALHE m' +
                           ' inner join produtos prod on prod.codproduto = m.codproduto ' +
                           ' WHERE m.CODMOVIMENTO = ' +
                           IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
  dmnf.sqs_tit.Open;
  dmnf.cds_nfPESOBRUTO.AsFloat := dmnf.sqs_tit.Fields[0].AsFloat;
  dmnf.cds_nfPESOLIQUIDO.AsFloat := dmnf.sqs_tit.Fields[0].AsFloat;

  dmnf.sqs_tit.Close;


    prazo := listaCliente1PRAZORECEBIMENTO.AsFloat;
    if (listaCliente1COD_TRANPORTADORA.AsInteger > 0 ) then
    begin
        if (proc_transp.Active) then
          proc_transp.Close;
        proc_transp.Params[0].AsInteger := listaCliente1COD_TRANPORTADORA.AsInteger;
        proc_transp.Open;
        dmnf.cds_nfCODTRANSP.AsInteger := proc_transpCODTRANSP.AsInteger;
        dmnf.cds_nfNOMETRANSP.AsString := proc_transpNOMETRANSP.AsString;
        dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
        dmnf.cds_nfFRETE.AsString := proc_transpFRETE.AsString;
        dmnf.cds_nfUF_VEICULO_TRANSP.AsString := proc_transpUF_VEICULO_TRANSP.AsString;
        dmnf.cds_nfCNPJ_CPF.AsString := proc_transpCNPJ_CPF.AsString;
        dmnf.cds_nfEND_TRANSP.AsString := proc_transpEND_TRANSP.AsString;
        dmnf.cds_nfCIDADE_TRANSP.AsString := proc_transpCIDADE_TRANSP.AsString;
        dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
        dmnf.cds_nfINSCRICAOESTADUAL.AsString := proc_transpINSCRICAOESTADUAL.AsString;
        dmnf.cds_nfPLACATRANSP.AsString := proc_transpPLACATRANSP.AsString;
        dmnf.cds_nfCORPONF1.AsString  := proc_transpCORPONF1.AsString;
        dmnf.cds_nfCORPONF2.AsString  := proc_transpCORPONF2.AsString;
        dmnf.cds_nfCORPONF3.AsString  := proc_transpCORPONF3.AsString;
        dmnf.cds_nfCORPONF4.AsString  := proc_transpCORPONF4.AsString;
        proc_transp.Close;
    end;
    listaCliente1.Close;
    btnGravar.click;
    if (dmnf.cds_mov_det.Active) then
      dmnf.cds_mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_mov_det.Params[1].AsInteger := codMovFin;
    dmnf.cds_mov_det.Open;
  end
  else
  begin
    // Pego os parametros para Lanç. Entrada
    CarregaParametros;
    incluiSAida;
    dmnf.cds_nfSERIE.AsString := dbeSerie.Text;
    dmnf.cds_nfNOTASERIE.AsString := numNf;
  end;
end;

procedure TfNotaf.btnSerieClick(Sender: TObject);
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFE';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    fProcurar:= TfProcurar.Create(self,dmnf.scds_serie_proc);
    fProcurar.BtnProcurar.Click;
    try
      fProcurar.EvDBFind1.DataField := 'SERIE';
      if (fProcurar.ShowModal=mrOk) then
      begin
       dmnf.cds_venda.Edit;
       dmnf.cds_vendaSERIE.AsString := dmnf.scds_serie_procSERIE.AsString;
       dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
       dmnf.cds_nfSERIE.AsString := dmnf.scds_serie_procSERIE.AsString;
       dmnf.cds_nfNOTASERIE.AsInteger := dmnf.cds_vendaNOTAFISCAL.AsInteger;
       dmnf.cds_nfNOTAFISCAL.AsInteger := dmnf.cds_vendaNOTAFISCAL.AsInteger;
      end;
    finally
      dmnf.scds_serie_proc.Close;
      fProcurar.Free;
    end;
    if (JvPageControl1.ActivePage = TabNF) then
      DBEdit2.SetFocus
    else
      DBEdit37.SetFocus;
  end
  else
  begin
    if (not dmnf.scds_serienfe.Active) then
      dmnf.scds_serienfe.Close;
    dmnf.scds_serienfe.Params[0].AsString := dm.cds_parametroD1.AsString;
    dmnf.scds_serienfe.Open;
    dmnf.cds_venda.Edit;
    dmnf.cds_vendaSERIE.AsString := dm.cds_parametroD1.AsString;
    dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serienfeNOTASERIE.AsInteger+1;
    dmnf.cds_nfSERIE.AsString := dm.cds_parametroD1.AsString;
    dmnf.cds_nfNOTASERIE.AsInteger := dmnf.cds_vendaNOTAFISCAL.AsInteger;
    dmnf.cds_nfNOTAFISCAL.AsInteger := dmnf.cds_vendaNOTAFISCAL.AsInteger;
  end;
end;

procedure TfNotaf.incluiSAida;
begin
  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaCliente.Active) then
    dmnf.listaCliente.Open;
  dmnf.listaCliente.First;
  cbCLiente.Clear;
  while not dmnf.listaCliente.Eof do
  begin
     cbCLiente.Items.Add(dmnf.listaClienteNOMECLIENTE.AsString);
     cbCLiente1.Items.Add(dmnf.listaClienteNOMECLIENTE.AsString);
     dmnf.listaCliente.Next;
  end;
  dmnf.listaCliente.Close;
  //Populo DBGrid com Produtos
  incluiMovimento;
  incluiVenda;
  if (nfe_ccusto_empresa > 0) then
  begin
    if (dm.cdsBusca.Active) then
      dm.cdsBusca.Close;
    dm.cdsBusca.CommandText := 'SELECT SERIE, ULTIMO_NUMERO ' +
      ', CODSERIE ' +
      ', NOTAFISCAL' +
      ', ICMS_DESTACADO ' +
      ', MODELO FROM SERIES WHERE CODSERIE = ' +
      IntToStr(dmnf.cds_empresaCODIGO.AsInteger);
    dm.cdsBusca.Open;
    if (not dm.cdsBusca.IsEmpty) then
    begin
      dbeSerie.Text := dm.cdsBusca.fieldByName('SERIE').AsString;
      //dmnf.cds_vendaNOTAFISCAL := dm.cdsBusca.fieldByName('ULTIMO_NUMERO').AsInteger + 1;
    end;
  end;

  incluiNotaFiscal;
  if (RadioGroup1.ItemIndex = 0) then
    cbCLiente1.SetFocus;
end;

procedure TfNotaf.FormShow(Sender: TObject);
begin
  statusNF := 'EDICAO';
  DecimalSeparator := ',';
  //  if (DM.videoW <> '1920') then
  sCtrlResize.CtrlResize(TForm(fNotaf));
  JvPageControl1.ActivePage := TabNF;
  TabSheet1.TabVisible := False;

  if (DM.tipoVenda = 'DEVOLUCAO') then
  begin
    MMJPanel2.Background.StartColor := clNavy;
    MMJPanel2.Background.EndColor := clNavy;
    //cbEstoque.Font.Color := clWhite;
    //cbEstoque.Color := clNavy;
    //cbFinanceiro.Font.Color := clWhite;
    //cbFinanceiro.Color := clNavy;
    Caption := 'Nota Fiscal de Devolução';
  end
  else begin
    MMJPanel2.Background.StartColor := clTeal;
    MMJPanel2.Background.EndColor := clTeal;
    //cbEstoque.Font.Color := clWindowText;
    //cbEstoque.Color := clTeal;
    //cbFinanceiro.Font.Color := clWindowText;
    //cbFinanceiro.Color := clTeal;
    Caption := 'Nota Fiscal';
  end;
  fNotaF.Caption := '';
  if (nfe_ccusto_empresa > 0) then
  begin
    if (dmnf.cds_empresa.active) then
      dmnf.cds_empresa.close;
    dmnf.cds_empresa.Params[0].AsInteger := nfe_ccusto_empresa;
    dmnf.cds_empresa.open;
    fnotaF.Caption := dmnf.cds_empresaNOME.AsString;
  end;
  carregarNFg;
end;

procedure TfNotaf.incluiMovimento;
begin

  if DMNF.DtSrc.DataSet.Active then
    DMNF.DtSrc.DataSet.Close;
  DMNF.cds_Movimento.Params[0].Clear;
  DMNF.DtSrc.DataSet.Open;
  DMNF.DtSrc.DataSet.Append;
  DMNF.cds_MovimentoCODNATUREZA.AsInteger := cod_natNotaF;
  DMNF.cds_MovimentoDESCNATUREZA.AsString := natureza;
  DMNF.cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
  DMNF.cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
  DMNF.cds_MovimentoCOD_VEICULO.AsInteger := 0;
  dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := 0;
  if (nfe_ccusto_empresa > 0) then
    dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := nfe_ccusto_empresa;

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
end;

procedure TfNotaf.incluiNotaFiscal;
begin
  if (dmnf.cds_nf.Active) then
    dmnf.cds_nf.Close;
  DMNF.cds_nf.Params[0].Clear;
  DMNF.cds_nf.Params[1].Clear;
  dmnf.cds_nf.Open;
  dmnf.cds_nf.Append;
end;

procedure TfNotaf.incluiVenda;
begin
  if DMNF.DtSrcVenda.DataSet.Active then
    DMNF.DtSrcVenda.DataSet.Close;

  DMNF.cds_venda.Params[0].Clear;
  DMNF.cds_venda.Params[1].Clear;
  DMNF.DtSrcVenda.DataSet.Open;
  DMNF.DtSrcVenda.DataSet.Append;
  if (nfe_ccusto_empresa > 0) then
    dmnf.cds_vendaCODCCUSTO.AsInteger := nfe_ccusto_empresa;

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
  DMNF.cds_vendaDESCONTO.AsFloat := 0;

  if (nfe_ccusto_empresa = 0) then
  begin
    if (not Dm.parametro.Active) then
      dm.parametro.Open;
    if (RadioGroup1.ItemIndex = 1) then
    begin
      if (dm.parametro.Locate('PARAMETRO', 'SERIENFE', [loCaseInsensitive])) then
         dbeSerie.Text := dm.parametroD1.AsString;
    end;
    if (RadioGroup1.ItemIndex = 0) then
    begin
      if (dm.parametro.Locate('PARAMETRO', 'SERIENFSERV', [loCaseInsensitive])) then
      begin
        dbeSerie.Text := dm.parametroDADOS.AsString;
        buscaserieNF;
      end;
    end;
  end;  
  if (dbeSerie.Text = '') then
  begin
    dm.parametro.Locate('PARAMETRO', 'SERIEPADRAO', [loCaseInsensitive]);
    dbeSerie.Text := dm.parametroDADOS.AsString;
    buscaserieNF;
  end;
  DMNF.cds_vendaSERIE.AsString := dbeSerie.Text;
  // 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----
  dbeUsuario.Text := IntToStr(cod_vendedor_padrao);
  //dbEdit68.Text := nome_vendedor_padrao;
  // ---- ********************************************************************* ----
end;

procedure TfNotaf.buscaserieNF;
begin
  //------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;

  if DMNF.DtSrc.State in [dsInsert,dsEdit] then
  begin
    if (dbeSerie.Text = '') then exit;
    if (dbeSerie.Field.OldValue <> dbeSerie.Field.NewValue) then
    begin
      if DMNF.scds_serie_proc.Active then
        DMNF.scds_serie_proc.Close;
      DMNF.scds_serie_proc.Params[0].AsString := dbeSerie.Text;
      DMNF.scds_serie_proc.Open;
      if DMNF.scds_serie_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        exit;
      end;
      DMNF.cds_vendaSERIE.AsString := DMNF.scds_serie_procSERIE.AsString;
      DMNF.cds_vendaNOTAFISCAL.AsInteger := DMNF.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;
end;

procedure TfNotaf.CarregaParametros;
begin
  centro_receita := 0;
  procprod := 'PROC_PROD_SIMPLES';
  if (not dm.parametro.Active) then
    dm.parametro.Open;

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
    cod_vendedor_padrao := 1;
    nome_vendedor_padrao := '..'
  end;
  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda/Compra--------}
    if (dm.parametro.Locate('PARAMETRO','NATUREZANF',[loCaseInsensitive])) then
    begin
      Try
        cod_natNotaf := strToint(dm.parametroDADOS.asString);
      except
        cod_natNotaf := 15;
      end;
      natureza := dm.parametroD1.AsString;
    end;
end;

procedure TfNotaf.cbCLienteChange(Sender: TObject);
begin
 if (dmnf.cds_nf.State in [dsBrowse]) then
  dmnf.cds_nf.edit;
 if (dmnf.cds_Movimento.State in [dsBrowse]) then
  dmnf.cds_Movimento.edit;
 if (dmnf.cds_venda.State in [dsBrowse]) then
  dmnf.cds_venda.edit;
 if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  if (cbCLiente.Text <> '') then
  begin
    DMNF.listaCliente.Open;
    DMNF.listaCliente.Locate('NOMECLIENTE',cbCLiente.Text,[loCaseInsensitive]);
    DMNF.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_MovimentoCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_vendaCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;;
    dmnf.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    DMNF.cds_nfCNPJCLI.AsString := DMNF.listaClienteCNPJ.AsString;
    DMNF.cds_nfINSCCLI.AsString := DMNF.listaClienteINSCESTADUAL.AsString;
    DMNF.cds_nfLOGRADOURO.AsString := DMNF.listaClienteLOGRADOURO.AsString;
    DMNF.cds_nfCIDADECLI.AsString := DMNF.listaClienteCIDADE.AsString;
    DMNF.cds_nfBAIRROCLI.AsString := DMNF.listaClienteBAIRRO.AsString;
    DMNF.cds_nfCEPCLI.AsString := DMNF.listaClienteCEP.AsString;
    DMNF.cds_nfUFCLI.AsString := DMNF.listaClienteUF.AsString;
    DMNF.cds_nfTELEFONE.AsString := DMNF.listaClienteTELEFONE.AsString;
    prazo := dmnf.listaClientePRAZORECEBIMENTO.AsFloat;
    dm.ufPadrao := DMNF.listaClienteUF.AsString;
    dm.vTipoFiscal := dmnf.listaClienteCODFISCAL.AsString;

    if (DMNF.listaClienteCOD_TRANPORTADORA.AsInteger > 0 ) then
    begin
      if (proc_transp.Active) then
        proc_transp.Close;
      proc_transp.Params[0].AsInteger := DMNF.listaClienteCOD_TRANPORTADORA.AsInteger;
      proc_transp.Open;
      dmnf.cds_nfCODTRANSP.AsInteger := proc_transpCODTRANSP.AsInteger;
      dmnf.cds_nfNOMETRANSP.AsString := proc_transpNOMETRANSP.AsString;
      dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
      dmnf.cds_nfFRETE.AsString := proc_transpFRETE.AsString;
      dmnf.cds_nfUF_VEICULO_TRANSP.AsString := proc_transpUF_VEICULO_TRANSP.AsString;
      dmnf.cds_nfCNPJ_CPF.AsString := proc_transpCNPJ_CPF.AsString;
      dmnf.cds_nfEND_TRANSP.AsString := proc_transpEND_TRANSP.AsString;
      dmnf.cds_nfCIDADE_TRANSP.AsString := proc_transpCIDADE_TRANSP.AsString;
      dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
      dmnf.cds_nfINSCRICAOESTADUAL.AsString := proc_transpINSCRICAOESTADUAL.AsString;
      dmnf.cds_nfPLACATRANSP.AsString := proc_transpPLACATRANSP.AsString;
      dmnf.cds_nfCORPONF1.AsString  := proc_transpCORPONF1.AsString;
      dmnf.cds_nfCORPONF2.AsString  := proc_transpCORPONF2.AsString;
      dmnf.cds_nfCORPONF3.AsString  := proc_transpCORPONF3.AsString;
      dmnf.cds_nfCORPONF4.AsString  := proc_transpCORPONF4.AsString;
      proc_transp.Close;
    end;

    DMNF.listaCliente.Close;
  end;
end;

procedure TfNotaf.cbNaturezaChange(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFNOME',cbNatureza.Text,[loCaseInsensitive]);
    DMNF.cds_nfCFOP.AsString := DMNF.listaCFOPCFCOD.AsString;
    DMNF.listaCFOP.Close;
  end;
end;

procedure TfNotaf.cbCFOPChange(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFCOD',cbCFOP.Text,[loCaseInsensitive]);
    DMNF.cds_nfDESCNATUREZA.AsString := DMNF.listaCFOPCFNOME.AsString;
    DMNF.listaCFOP.Close;
  end;
  if ((cbCFOP.Text = '5116') or (cbCFOP.Text = '6116')) then
    btnRemessa.Enabled := True
  else
  begin
    dmnf.cds_nfNOTAMAE.AsInteger := 0;
    btnRemessa.Enabled := False;
  end;
  carregaDadosAdicionais('Trocou');
end;

procedure TfNotaf.btnSairClick(Sender: TObject);
begin
  dmnf.cds_empresa.Close;
  close;
end;

procedure TfNotaf.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
var
 nomepro, codigopro : string;
begin
   if (key = #13) then
    if (DMNF.dtSrc1.State in [dsInsert, dsEdit]) then
    begin
       if (JvDBGrid1.SelectedIndex = 0) then
       begin
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := dmnf.cds_Mov_detCODPRO.AsString;
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
            MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
            exit;
          end;
          DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
          DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
          DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
          DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
          DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
          DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
          DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
          DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
          DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
          DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
          DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
          if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
             DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat / DM.scds_produto_procQTDE_PCT.AsFloat
          else
             DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat;
          valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
          DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
          DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
          DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
          if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
              DMNF.cds_Movimento.Edit;
          DMNF.DtSrc1.DataSet.Post;
          //DMNF.DtSrc1.DataSet.Append;
          //key:= #0;
          JvDBGrid1.SelectedIndex := 4;
       end;
       if (JvDBGrid1.SelectedIndex = 1) then
       begin
          nomepro := JvDBGrid1.SelectedField.Text;
         if (nomepro <> '') then
         begin
            if not localizaProduto.Active then
               localizaProduto.Open;
            localizaProduto.Locate('PRODUTO', nomepro, [loCaseInsensitive]);
            localizaProduto.Open;
            codigopro := localizaProdutoCODPRO.AsString;
            if dm.scds_produto_proc.Active then
              dm.scds_produto_proc.Close;
            dm.scds_produto_proc.Params[0].AsInteger := 0;
            dm.scds_produto_proc.Params[1].AsString := codigopro;
            dm.scds_produto_proc.Open;
            if dm.scds_produto_proc.IsEmpty then
            begin
              MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
              [mbOk], 0);
              exit;
            end;
            DMNF.cds_Mov_detCODPRO.Value := dm.scds_produto_procCODPRO.Value;
            DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
            DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
            DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
            DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
            DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
            DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
            DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
            DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
            DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
            DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
            DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
            if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat / DM.scds_produto_procQTDE_PCT.AsFloat
            else
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat;
            valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
            DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
            DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
            DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
            if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
                DMNF.cds_Movimento.Edit;
            DMNF.DtSrc1.DataSet.Post;
            //DMNF.DtSrc1.DataSet.Append;
            //key:= #0;
            JvDBGrid1.SelectedIndex := 4;
         end;
       end;
       if ((JvDBGrid1.SelectedIndex = 3) or (JvDBGrid1.SelectedIndex = 4)) then
         if (dmnf.cds_Mov_det.State in [dsInsert, dsEdit]) then
           dmnf.cds_Mov_det.Post;
     end;
   if (key = #13) then
     if (JvDBGrid1.SelectedIndex = 5) then
     begin
       if (dmnf.cds_Mov_det.State in [dsInsert, dsEdit]) then
         dmnf.cds_Mov_det.Post;
       dmnf.cds_Mov_det.Append;
       JvDBGrid1.SelectedIndex := 0;
     end;
end;

procedure TfNotaf.btnProcCliClick(Sender: TObject);
begin
    fClienteCadastro:=TfClienteCadastro.Create(Application);
    try
      if ( fClienteCadastro.cds_cli.Active) then
        fClienteCadastro.cds_cli.Close;
      fClienteCadastro.cds_cli.Params[0].AsInteger := DMNF.cds_nfCODCLIENTE.AsInteger;
      fClienteCadastro.cds_cli.Open;
      if ( fClienteCadastro.cdsEnderecoCli.Active) then
        fClienteCadastro.cdsEnderecoCli.Close;
      fClienteCadastro.cdsEnderecoCli.Params[0].Clear;
      fClienteCadastro.cdsEnderecoCli.Params[1].AsInteger := DMNF.cds_nfCODCLIENTE.AsInteger;
      fClienteCadastro.cdsEnderecoCli.Open;

      fClienteCadastro.ShowModal;
    finally
      fClienteCadastro.free;
    end;
    if (not dmnf.listaCliente.Active) then
      dmnf.listaCliente.Open;
    dmnf.listaCliente.First;
    cbCLiente.Items.Clear;
    while not dmnf.listaCliente.Eof do
    begin
       cbCLiente.Items.Add(dmnf.listaClienteRAZAOSOCIAL.AsString);
       dmnf.listaCliente.Next;
    end;
    dmnf.listaCliente.Close;
    cbCLiente.Text := DM.varNomeCliente;
end;

procedure TfNotaf.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfNotaf.btnCancelarClick(Sender: TObject);
begin
  DMNF.cds_nf.Cancel;
  DMNF.cds_venda.Cancel;
  DMNF.cds_Mov_det.Cancel;
  DMNF.cds_Movimento.Cancel;
  dmnf.cds_empresa.cancel;
  if(DMNF.cds_nfNUMNF.AsInteger = 0) then
  begin
    DMNF.cds_nf.Close;
    DMNF.cds_venda.Close;
    DMNF.cds_Mov_det.Close;
    DMNF.cds_Movimento.Close;
  end;
end;

procedure TfNotaf.BitBtn5Click(Sender: TObject);
begin
  if dmnf.DtSrc1.DataSet.State in [dsInactive] then
   exit;
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel2.Visible := True;
  fProcura_prod.Panel1.Visible := False;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  var_F := 'formnotaf';
  dmnf.cds_Mov_detLOTE.AsString := '';
  fProcura_prod.BitBtn1.Click;
  fProcura_prod.ShowModal;
end;

procedure TfNotaf.cbTransportadoraChange(Sender: TObject);
begin
 if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  if (cbTransportadora.Text <> '') then
  begin
     DMNF.listaTransp.Open;
     if (not DMNF.listaTransp.Locate('FANTASIA',cbTransportadora.Text,[loCaseInsensitive])) then
       DMNF.listaTransp.Locate('NOMETRANSP',cbTransportadora.Text,[loCaseInsensitive]);
     DMNF.cds_nfPLACATRANSP.AsString := DMNF.listaTranspPLACATRANSP.AsString;
     DMNF.cds_nfUF_VEICULO_TRANSP.AsString := DMNF.listaTranspUF_VEICULO_TRANSP.AsString;
     DMNF.cds_nfCNPJ_CPF.AsString := DMNF.listaTranspCNPJ_CPF.AsString;
     DMNF.cds_nfEND_TRANSP.AsString := DMNF.listaTranspEND_TRANSP.AsString;
     DMNF.cds_nfCIDADE_TRANSP.AsString := DMNF.listaTranspCIDADE_TRANSP.AsString;
     DMNF.cds_nfUF_TRANSP.AsString := DMNF.listaTranspUF_TRANSP.AsString;
     DMNF.cds_nfINSCRICAOESTADUAL.AsString := DMNF.listaTranspINSCRICAOESTADUAL.AsString;
     DMNF.cds_nfCODTRANSP.AsInteger  := dmnf.listaTranspCODTRANSP.AsInteger;
     {DMNF.cds_nfCORPONF1.AsString := DMNF.listaTranspCORPONF1.AsString;
     DMNF.cds_nfCORPONF2.AsString := DMNF.listaTranspCORPONF2.AsString;
     DMNF.cds_nfCORPONF3.AsString := DMNF.listaTranspCORPONF3.AsString;
     DMNF.cds_nfCORPONF4.AsString := DMNF.listaTranspCORPONF4.AsString;
     DMNF.cds_nfCORPONF5.AsString := DMNF.listaTranspCORPONF5.AsString;
     DMNF.cds_nfCORPONF6.AsString := DMNF.listaTranspCORPONF6.AsString;}
     DMNF.listaTransp.Close;
  end;
end;

procedure TfNotaf.btnProcTranspClick(Sender: TObject);
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
     cbTransportadora.Items.Add(dmnf.listaTranspFANTASIA.AsString);
     dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;
end;

procedure TfNotaf.btnGravarClick(Sender: TObject);
var nfe : string;
    numnf, codm, codv : Integer;
begin
  if DMNF.DtSrc_NF.State in [dsBrowse] then
    DMNF.DtSrc_NF.DataSet.Edit;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (calcman.Checked) then
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET PAGOU = ' +
        QuotedStr('M') + ' WHERE CODMOVIMENTO = ' + InttoStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER FRETE_NF INACTIVE;');

    end
    else
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET PAGOU = NULL ' +
        ' WHERE CODMOVIMENTO = ' + InttoStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER FRETE_NF ACTIVE;');
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

  if (sqlValida.Active) then
    sqlValida.Close;

  sqlValida.SQL.Clear;
  sqlValida.SQL.Add('SELECT a.CODESTADO FROM ESTADO_ICMS a ' +
    ' WHERE TRIM(a.CFOP) = ' + QuotedStr(dmnf.cds_nfCFOP.AsString) +
    '   AND TRIM(a.UF) = ' + QuotedStr(DBEdit7.Text));
  sqlValida.Open;

  if (sqlValida.IsEmpty) then
  begin
    if (sqlValida.Active) then
      sqlValida.Close;

    sqlValida.SQL.Clear;
    sqlValida.SQL.Add('SELECT a.CFOP FROM CLASSIFICACAOFISCALNCM a ' +
      ' WHERE TRIM(a.CFOP) = ' + QuotedStr(dmnf.cds_nfCFOP.AsString) +
      '   AND TRIM(a.UF) = ' + QuotedStr(DBEdit7.Text));
    sqlValida.Open;
    if (sqlValida.IsEmpty) then
    begin
      MessageDlg('Não existe cadastro deste CFOP para este UF.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  if (calcman.Checked = True) then
    inativaCalc;

  //GRAVAR COM TRANSAÇÃO -- colocar a transacao em cada coisa 07/11/2014
  try
    if (dmnf.cds_Mov_detCODPRO.AsString <> '') then
      if (dmnf.cds_Mov_det.State in [dsInsert]) then
         dmnf.cds_Mov_det.Post;
    // Grava o Movimento
    if (DMNF.DtSrc.State in [dsInsert, dsEdit]) then
     gravamovimento;
    // Grava o Movimento Detalhe
    if (DMNF.DtSrc1.State in [dsInsert, dsEdit, dsBrowse]) then
     gravamov_detalhe;
    // Salvar Venda
    //if (cbFinanceiro.Checked) then  -- Neste caso usa a tabela venda ,
    //  -- pois, a natureza q está nota é gravado não gera financeiro
    if (DMNF.DtSrcVenda.State in [dsInsert, dsEdit]) then
    begin
     gravavenda;
    end;
    //Salvo Nota Fiscal
    if (DMNF.DtSrc_NF.State in [dsEdit, dsInsert]) then
    begin
     carregaDadosAdicionais('Inserindo');
     gravanotafiscal;
    end;
    if (dmnf.cds_MovimentoCONTROLE.AsString <> '') then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        nfe := 'update movimento set nfe = ' + QuotedStr(dmnf.cds_nfNOTASERIE.AsString + '-' + dmnf.cds_nfSERIE.AsString) + ' where CODMOVIMENTO = ' +  dmnf.cds_MovimentoCONTROLE.AsString;
        dm.sqlsisAdimin.ExecuteDirect(nfe);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;
    end;

    // o bloco abaixo estava no grava Venda -- 04/06/2014
    if (statusNF = 'NOVO') then
      gravaSerie(dmnf.cds_vendaNOTAFISCAL.AsInteger);
    if (scdsCr_proc.Active) then
      scdsCr_proc.Close;
    scdsCr_proc.Params[0].AsInteger := dmnf.cds_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;

    //dmnf.cds_Mov_det.Refresh;
    numnf := DMNF.cds_nfNUMNF.AsInteger;
    codv := DMNF.cds_nfCODVENDA.AsInteger;
    codm := DMNF.cds_vendaCODMOVIMENTO.AsInteger;

    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
    dmnf.cds_venda.Params[0].AsInteger := codv;
    dmnf.cds_venda.Params[1].AsInteger := codm;
    dmnf.cds_venda.Open;

    if (dmnf.cds_nf.Active) then
      dmnf.cds_nf.Close;
    dmnf.cds_nf.Params[0].AsInteger := numnf;
    dmnf.cds_nf.Params[1].AsInteger := codv;
    dmnf.cds_nf.Open;

    carregarEmissao;
    
    if (dmnf.cds_Movimento.Active) then
      dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := codm;
    dmnf.cds_Movimento.Open;

    if (dmnf.cds_mov_det.Active) then
      dmnf.cds_mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_mov_det.Params[1].AsInteger := codm;
    dmnf.cds_mov_det.Open;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

 if (calcman.Checked = True) then
  ativaCalc;
end;

procedure TfNotaf.gravamov_detalhe;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (dmnf.cds_Mov_det.State in [dsEdit, dsInsert]) then
    dmnf.cds_mov_det.Post;
  //********************************************************************************
  // aqui corrijo o codigo do movimento na tabela mov_detalhe
  dmnf.cds_Mov_det.First;
  While not dmnf.cds_Mov_det.Eof do
  begin
    if (dmnf.cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
    begin
      dmnf.cds_Mov_det.Edit;
      if dmnf.cds_Mov_detCODPRODUTO.IsNull then
      begin
        dmnf.cds_Mov_det.Cancel;
        exit;
        //dmnf.cds_Mov_detCODPRODUTO.AsInteger := 1;
      end;
      dmnf.cds_Mov_detCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
      IF (dmnf.cds_Mov_detQTDE_ALT.IsNull) then
         dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dmnf.cds_Mov_detCODDETALHE.AsInteger := codmovdet;
      if (cbEstoque.Checked = False) then
        dmnf.cds_Mov_detBAIXA.AsString := '2';
      dmnf.cds_Mov_det.post;
    end;
    dmnf.cds_Mov_det.Next;
  end;

  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dmnf.cds_Mov_det.ApplyUpdates(0);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      // excluo o movimento gravado
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = '+
        IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
    end;
  end;
end;

procedure TfNotaf.gravamovimento;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if dmnf.cds_Movimento.State in [dsInsert] then
  begin
     if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
     dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
     dm.c_6_genid.Open;
     dmnf.cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
     dm.c_6_genid.Close;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
      if (dmnf.cds_MovimentoCODALMOXARIFADO.asInteger = 0) then
        dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := strToint(dm.cds_parametroDADOS.AsString);

    dm.cds_parametro.Close;
    dmnf.cds_MovimentoDATAMOVIMENTO.AsDateTime := dmnf.cds_nfDTAEMISSAO.AsDateTime;

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
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'NF';
    end;

   end;
  //*******************************************************************************
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dmnf.cds_MovimentoDATAMOVIMENTO.AsDateTime := dmnf.cds_nfDTAEMISSAO.AsDateTime;
    dmnf.cds_Movimento.ApplyUpdates(0);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

procedure TfNotaf.gravavenda;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  if (DBEdit33.Text = '') then
  begin
    MessageDlg('Informe o n. da Nota Fiscal', mtError, [mbOK], 0);
    DBEdit33.SetFocus;
    exit;
  end;

    DMNF.cds_vendaNOTAFISCAL.AsInteger := StrToint(DMNF.cds_nfNOTASERIE.AsString);
    DMNF.cds_vendaCODCLIENTE.AsInteger := DMNF.cds_MovimentoCODCLIENTE.AsInteger;
    DMNF.cds_vendaCODVENDEDOR.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    DMNF.cds_vendaDATAVENDA.AsDateTime := DMNF.cds_nfDTAEMISSAO.AsDateTime;
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
  if (parametroNF <> 'S') then
  begin
    dmnf.cds_vendaVALOR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
    dmnf.cds_vendaVALOR_PAGAR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  end;
  vrr := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  dmnf.sqs_tit.Close;

  if (dmnf.cds_venda.State in [dsInsert]) then
  //if (codVendaFin = 0) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cds_vendaCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  if (parametroNF <> 'S') then
    alteraVlrVenda;

  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dmnf.cds_venda.ApplyUpdates(0);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      // deu erro excluo o movimento gravado
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = '+
        IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
    end;
  end;

end;

procedure TfNotaf.btnImpNFClick(Sender: TObject);
begin
  if (CheckBox1.Checked = True) then
  begin
     DMNF.cds_Mov_det.First;
     memo1.Lines.Clear;
     while not DMNF.cds_Mov_det.Eof do
     begin
       if (sClasFiscal.Active) then
          sClasFiscal.Close;
       sClasFiscal.Params[0].AsString := DMNF.cds_Mov_detCLASSIFIC_FISCAL.AsString;
       sClasFiscal.Open;
       if (not sClasFiscal.IsEmpty) then
          memo1.Lines.Add(sClasFiscalCLASSIFICAO.AsString + '-' + sClasFiscalDESCRICAO.AsString);
       DMNF.cds_Mov_det.Next;
     end;
     DMNF.cds_Mov_det.First;
  end;
  try
    dmnf.repdm.FileName := str_relatorio + 'nf_new.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    if (CheckBox1.Checked = True) then
      dmnf.repdm.Report.Params[1].Value := memo1.Text;
    dmnf.repdm.Execute;
  except
    // deu erro na impressão então para aqui.
  end;
  if (dmnf.cds_nf.State in [dsBrowse]) then
    dmnf.cds_nf.Edit;
  dmnf.cds_nfIMPRESSA.AsString := 'S';
  dmnf.cds_nf.ApplyUpdates(0);
end;

procedure TfNotaf.btnProcurarClick(Sender: TObject);
var varsql:string;
begin
    if (not dmnf.listaCliente.Active) then
      dmnf.listaCliente.Open;
    dmnf.listaCliente.First;
    cbCLiente.Clear;
    while not dmnf.listaCliente.Eof do
    begin
       cbCLiente.Items.Add(dmnf.listaClienteRAZAOSOCIAL.AsString);
       cbCLiente1.Items.Add(dmnf.listaClienteRAZAOSOCIAL.AsString);
       dmnf.listaCliente.Next;
    end;

    if (nfe_ccusto_empresa = 0) then
    begin
      if (not dmnf.cds_ccusto.Active) then
      begin
        dmnf.cds_ccusto.Params[0].AsString := dm.dmCentroReceita;
          dmnf.cds_ccusto.Open;
      end;
      dmnf.cds_ccusto.First;
      fFiltroMovimento.ComboBox1.Items.Clear;      
      while not dmnf.cds_ccusto.Eof do
      begin
        fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
        dmnf.cds_ccusto.Next;
      end;
    end
    else begin
      fFiltroMovimento.ComboBox1.Items.Clear;
      fFiltroMovimento.fnf_ccusto := nfe_ccusto_emp_nome;
      fFiltroMovimento.ComboBox1.Items.Add(nfe_ccusto_emp_nome);
    end;
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZANF';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      varsql :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS) ' ;
      varsql := varsql + 'values (''NATUREZANF'',''S'',''12'')';
      dm.sqlsisAdimin.executedirect(varsql);
    end;

    dm.tipoVenda := 'NF';
    fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
    if (dm.cds_parametroD1.AsString <> '') then
      fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString
    else
      fFiltroMovimento.Edit4.Text := 'NOTA FISCAL';
    dm.cds_parametro.Close;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.ShowModal;

    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    dmnf.cds_Movimento.Open;

    if (dmnf.cds_MovimentoCODNATUREZA.AsInteger = 12) then
    begin
       cbFinanceiro.Checked := False;
       cbEstoque.Checked := False;
    end;

    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cds_Mov_det.Open;

     if (dmnf.cds_Mov_detPAGOU.AsString = 'M') then
       calcman.Checked := True;

    //mostra venda
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
    dmnf.cds_venda.Params[0].Clear;
    dmnf.cds_venda.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.asInteger;
    dmnf.cds_venda.Open;
    //Mostra NF
    if (dmnf.cds_nf.Active) then
      dmnf.cds_nf.Close;
    dmnf.cds_nf.Params[0].Clear;
    dmnf.cds_nf.Params[1].AsInteger := dmnf.cds_vendaCODVENDA.asInteger;
    dmnf.cds_nf.Open;

    carregarEmissao;

    if (dmnf.cds_nfSTATUS.AsString = 'S') then
       RadioGroup1.ItemIndex := 0
    else
       RadioGroup1.ItemIndex := 1;

    if (DMNF.cds_nfFRETE.AsString <>  '') then
      cboFrete.ItemIndex := StrToInt(DMNF.cds_nfFRETE.AsString);

    if (not  dmnf.cds_empresa.Active) then
      dmnf.cds_empresa.open;
  //if(not dmnf.cds_nfIDCOMPLEMENTAR.IsNull) then
    if(dmnf.cds_nfNFE_FINNFE.AsString = 'fnComplementar') then
      ChkComp.Checked := True;
end;

procedure TfNotaf.gravanotafiscal;
var  pesoremessa, entrega: Double;
   var varsql:string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  // Gravo a NF
  if (RadioGroup1.ItemIndex = 1) then
  if (cbCFOP.text = '') then
  begin
    MessageDlg('Informe o CFOP!',mtWarning, [mbOK], 0);
    dbedit5.SetFocus;
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
  dmnf.cds_nfCODVENDA.AsInteger := dmnf.cds_vendaCODVENDA.AsInteger;
  dmnf.cds_nfCCUSTO.AsInteger := dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger;


  if (parametroNF <> 'S') then
    alteraVlrVenda;
  if (RadioGroup1.ItemIndex = 0) then
    dmnf.cds_nfSTATUS.AsString := 'S';
  if ((dmnf.cds_nfCFOP.AsString = '6922') or (dmnf.cds_nfCFOP.AsString = '5922')) then
    try
      dmnf.cds_nfPESOREMESSA.AsBCD := dmnf.cds_nfPESOLIQUIDO.AsBCD;
    except
      MessageDlg('Preencha o campo PESO LIQUIDO.', mtWarning, [mbOK], 0);
    end;
  if (not calcman.Checked) then
    dmnf.cds_nfVALOR_TOTAL_NOTA.value := dmnf.cds_nfVALOR_PRODUTO.value + dmnf.cds_nfVALOR_FRETE.Value +
  dmnf.cds_nfVALOR_SEGURO.Value + dmnf.cds_nfOUTRAS_DESP.Value + dmnf.cds_nfVALOR_IPI.Value;
  if ((dmnf.cds_nfCFOP.AsString = '5116') or (dmnf.cds_nfCFOP.AsString = '5116')) then
  begin
    if (cdsNotaMae.Active) then
      cdsNotaMae.Close;
    cdsNotaMae.Params[0].AsInteger := dmnf.cds_nfNOTAMAE.AsInteger;
    if (dmnf.cds_nfNOTAMAE.AsInteger <> 0) then
    begin
      cdsNotaMae.Open;
      cdsNotaMae.Edit;
      pesoremessa := BcdToDouble(cdsNotaMaePESOREMESSA.AsBCD);
      entrega := BcdToDouble(dmnf.cds_nfPESOLIQUIDO.AsBCD);
      cdsNotaMaePESOREMESSA.AsBCD := DoubleToBcd(pesoremessa - entrega);

      dm.sqlsisAdimin.StartTransaction(TD);
      try
        cdsNotaMae.ApplyUpdates(0);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;
    end;
  end;
  if (not calcman.Checked) then
    dmnf.cds_nfVALOR_TOTAL_NOTA.AsFloat := dmnf.cds_nfVALOR_PRODUTO.AsFloat + dmnf.cds_nfVALOR_ICMS_SUBST.AsFloat + dmnf.cds_nfVALOR_IPI.AsFloat + dmnf.cds_nfVALOR_FRETE.AsFloat - dmnf.cds_nfVALOR_DESCONTO.AsFloat;

  gravarDadosNFe310;
  if ((ChkComp.Checked) or (dmnf.cds_nfNFE_FINNFE.AsString  = 'fnComplementar')  or (dmnf.cds_nfNFE_FINNFE.AsString  = 'fnDevolucao')) then
  begin
    if ((dmnf.cds_nfIDCOMPLEMENTAR.IsNull) or (dmnf.cds_nfIDCOMPLEMENTAR.AsString = '')) then
    begin
      MessageDlg('Informe o Documento de Referencia, na ABA Documento Fiscal Referenciado.', mtWarning, [mbOK], 0);
    end;

    {fComplementar := TfComplementar.Create(Application);
    try
      fComplementar.ShowModal;
    finally
      fComplementar.Free;
    end;}
  end;
  //else begin
  //  if(not dmnf.cds_nfIDCOMPLEMENTAR.IsNull) then
  //    dmnf.cds_nfIDCOMPLEMENTAR.AsString := '';
  //end;

  if (dmnf.cds_nfCODTRANSP.IsNull) then
  begin
    if (cbTransportadora.Text <> '') then
    begin
      DMNF.listaTransp.Open;
      DMNF.listaTransp.Locate('FANTASIA',cbTransportadora.Text,[loCaseInsensitive]);
      DMNF.cds_nfPLACATRANSP.AsString := DMNF.listaTranspPLACATRANSP.AsString;
      DMNF.cds_nfUF_VEICULO_TRANSP.AsString := DMNF.listaTranspUF_VEICULO_TRANSP.AsString;
      DMNF.cds_nfCNPJ_CPF.AsString := DMNF.listaTranspCNPJ_CPF.AsString;
      DMNF.cds_nfEND_TRANSP.AsString := DMNF.listaTranspEND_TRANSP.AsString;
      DMNF.cds_nfCIDADE_TRANSP.AsString := DMNF.listaTranspCIDADE_TRANSP.AsString;
      DMNF.cds_nfUF_TRANSP.AsString := DMNF.listaTranspUF_TRANSP.AsString;
      DMNF.cds_nfINSCRICAOESTADUAL.AsString := DMNF.listaTranspINSCRICAOESTADUAL.AsString;
      DMNF.cds_nfCODTRANSP.AsInteger  := dmnf.listaTranspCODTRANSP.AsInteger;
    end;
  end;

  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dmnf.cds_nf.ApplyUpdates(0);
    dm.sqlsisAdimin.Commit(TD);

  except
    on E : Exception do
    begin
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}

      // excluo o movimento e venda gravado

      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VENDA WHERE CODVENDA = '+
        IntToStr(dmnf.cds_vendaCODVENDA.AsInteger));

      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = '+
        IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
    end;
  end;
  //if (JvDBDateEdit1.Date <> DMNF.cds_nfDTAEMISSAO.AsDateTime) then
  //begin

  if (edtNFRef.Text <> '') then
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      varsql := 'UPDATE NOTAFISCAL SET IDCOMPLEMENTAR = ' +
        QuotedStr(Copy(edtNFRef.Text,0,44)) + ' WHERE NUMNF = ' + IntToStr(dmnf.cds_nfNUMNF.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(varsql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;

  end;

  if (not calcman.Checked) then
    calculaicms(dmnf.cds_nfUF.AsString);
end;

procedure TfNotaf.calculaicms(Estado: String);
var str_sql: string;
begin
  if (calcman.Checked = False) then
  begin
  Try
    if (dmnf.sds_calculo.Active) then
      dmnf.sds_calculo.Close;
    DecimalSeparator := '.';
    str_sql := 'EXECUTE PROCEDURE CALCULA_ICMS(';
    str_sql := str_sql + IntToStr(dmnf.cds_nfNUMNF.asInteger);    // NUMNF
    str_sql := str_sql + ',''' + dmnf.cds_nfUFCLI.AsString + '''';    // UF
    str_sql := str_sql + ',''' + dmnf.cds_nfCFOP.AsString + '''';    // CFOP
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_FRETE.AsFloat);    // Valor Frete
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_SEGURO.AsFloat);    // Valor Seguro
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfOUTRAS_DESP.AsFloat);    // Valor_Outros
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_PRODUTO.AsFloat);    // Total
    if (Estado = 'OUTROS') then
    begin
      str_sql := str_sql + ',''' + 'S' + '''';
      str_sql := str_sql + ', ' + FloatToStr(dmnf.cds_nfICMS.AsFloat);
      str_sql := str_sql + ', ' + FloatToStr(dmnf.cds_nfREDUZICMS.AsFloat);
    end
    else begin
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
    //MessageDlg('Erro no cálculo!', mtError, [mbOK], 0);
  end;
  end;
end;

procedure TfNotaf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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

procedure TfNotaf.somavalores;
var  varTotalnota : double;
begin
     varTotalnota :=  dmnf.cds_nfVALOR_FRETE.Value + dmnf.cds_nfVALOR_SEGURO.Value +
     dmnf.cds_nfOUTRAS_DESP.Value + dmnf.cds_nfVALOR_IPI.Value;
     if (varTotalnota <> dmnf.cds_nfVALOR_TOTAL_NOTA.value) then
         dmnf.cds_nfVALOR_TOTAL_NOTA.value := dmnf.cds_nfVALOR_PRODUTO.value + varTotalnota;
end;

procedure TfNotaf.DBEdit11Change(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsInsert, dsEdit]) then
    somavalores;
end;

procedure TfNotaf.btnExcluirClick(Sender: TObject);
begin
  formExclusao := TformExclusao.Create(Application);
  try
     formExclusao.ShowModal;
  finally
     formExclusao.Free;
  end;
end;

procedure TfNotaf.btnImpServClick(Sender: TObject);
begin
    dmnf.repdm.FileName := str_relatorio + 'nf_new_serv.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    dmnf.repdm.Execute;
end;

procedure TfNotaf.RadioGroup1Click(Sender: TObject);
begin
    if (RadioGroup1.ItemIndex = 0) then
    begin
      TabSheet1.TabVisible := True;
      TabNF.TabVisible := False;
    end
    else
    begin
      TabSheet1.TabVisible := False;
      TabNF.TabVisible := True;
    end;

end;

procedure TfNotaf.cbCLiente1Change(Sender: TObject);
begin
 if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  if (cbCLiente1.Text <> '') then
  begin
    DMNF.listaCliente.Open;
    DMNF.listaCliente.Locate('RAZAOSOCIAL',cbCLiente1.Text,[loCaseInsensitive]);
    DMNF.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_MovimentoCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_vendaCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;;
    dmnf.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    DMNF.cds_nfCNPJCLI.AsString := DMNF.listaClienteCNPJ.AsString;
    DMNF.cds_nfINSCCLI.AsString := DMNF.listaClienteINSCESTADUAL.AsString;
    DMNF.cds_nfLOGRADOURO.AsString := DMNF.listaClienteLOGRADOURO.AsString;
    DMNF.cds_nfCIDADECLI.AsString := DMNF.listaClienteCIDADE.AsString;
    DMNF.cds_nfBAIRROCLI.AsString := DMNF.listaClienteBAIRRO.AsString;
    DMNF.cds_nfCEPCLI.AsString := DMNF.listaClienteCEP.AsString;
    DMNF.cds_nfUFCLI.AsString := DMNF.listaClienteUF.AsString;
    DMNF.cds_nfTELEFONE.AsString := DMNF.listaClienteTELEFONE.AsString;
    prazo := dmnf.listaClientePRAZORECEBIMENTO.AsFloat;
    DMNF.listaCliente.Close;
  end;
end;

procedure TfNotaf.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
var
 nomepro, codigopro : string;
begin
   if (key = #13) then
    if (DMNF.dtSrc1.State in [dsInsert, dsEdit]) then
    begin
       if (JvDBGrid2.SelectedIndex = 0) then
       begin
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := dmnf.cds_Mov_detCODPRO.AsString;
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
            MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
            exit;
          end;
          DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
          DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
          DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
          DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
          DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
          DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
          DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
          DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
          DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
          DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
          DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
          if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
             DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat / DM.scds_produto_procQTDE_PCT.AsFloat
          else
             DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat;
          valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
          DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
          DMNF.cds_Mov_detALMOXARIFADO.AsString := '';
          DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
          if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
              DMNF.cds_Movimento.Edit;
          DMNF.DtSrc1.DataSet.Post;
          //DMNF.DtSrc1.DataSet.Append;
          //key:= #0;
          JvDBGrid2.SelectedIndex := 3;
       end;
       if (JvDBGrid2.SelectedIndex = 1) then
       begin
          nomepro := JvDBGrid2.SelectedField.Text;
         if (nomepro <> '') then
         begin
            if not localizaProduto.Active then
               localizaProduto.Open;
            localizaProduto.Locate('PRODUTO', nomepro, [loCaseInsensitive]);
            localizaProduto.Open;
            codigopro := localizaProdutoCODPRO.AsString;
            if dm.scds_produto_proc.Active then
              dm.scds_produto_proc.Close;
            dm.scds_produto_proc.Params[0].AsInteger := 0;
            dm.scds_produto_proc.Params[1].AsString := codigopro;
            dm.scds_produto_proc.Open;
            if dm.scds_produto_proc.IsEmpty then
            begin
              MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
              [mbOk], 0);
              exit;
            end;
            DMNF.cds_Mov_detCODPRO.Value := dm.scds_produto_procCODPRO.Value;
            DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
            DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
            DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
            DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
            DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
            DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
            DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
            DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
            DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
            DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
            DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
            if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat / DM.scds_produto_procQTDE_PCT.AsFloat
            else
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat;
            valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
            DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
            DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
            DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
            if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
                DMNF.cds_Movimento.Edit;
            DMNF.DtSrc1.DataSet.Post;
            //DMNF.DtSrc1.DataSet.Append;
            //key:= #0;
            JvDBGrid2.SelectedIndex := 3;
         end;
       end;
       if ((JvDBGrid2.SelectedIndex = 3) or (JvDBGrid2.SelectedIndex = 4)) then
         if (dmnf.cds_Mov_det.State in [dsInsert, dsEdit]) then
           dmnf.cds_Mov_det.Post;

       if (JvDBGrid2.SelectedIndex = 5) then
       begin
         if (dmnf.cds_Mov_det.State in [dsInsert, dsEdit]) then
           dmnf.cds_Mov_det.Post;
         dmnf.cds_Mov_det.Append;
         JvDBGrid2.SelectedIndex := 0;
       end;
     end;
end;

procedure TfNotaf.JvDBGrid1EditChange(Sender: TObject);
begin
    if (JvDBGrid1.SelectedIndex = 1) then
    begin
      if (dmnf.cds_Mov_detCODPRO.AsString = '') then
      begin
       if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
       begin
         if (dmnf.cds_Mov_det.State in [dsBrowse]) then
           dmnf.cds_Mov_det.Edit;
         DMNF.listaProduto.open;
         if (DMNF.listaProduto.Locate('PRODUTO',dmnf.cds_Mov_detDESCPRODUTO.AsString,[loCaseInsensitive])) then
         begin
           dmnf.cds_Mov_detCODPRO.AsString := DMNF.listaProdutoCODPRO.AsString;
           DMNF.cds_Mov_detDESCPRODUTO.Value := DMNF.listaProdutoPRODUTO.Value;
            DMNF.cds_Mov_detCODPRODUTO.AsInteger := DMNF.listaProdutoCODPRODUTO.AsInteger;
            DMNF.cds_Mov_detLOCALIZACAO.Value := DMNF.listaProdutoLOCALIZACAO.Value;
            DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := DMNF.listaProdutoCOD_COMISSAO.AsInteger;
            DMNF.cds_Mov_detQTDE_PCT.AsFloat := DMNF.listaProdutoQTDE_PCT.AsFloat;
            DMNF.cds_Mov_detUN.AsString := DMNF.listaProdutoUNIDADEMEDIDA.AsString;
            DMNF.estoque := DMNF.listaProdutoESTOQUEATUAL.AsFloat;
            DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
            DMNF.qtde := DMNF.listaProdutoPESO_QTDE.AsFloat;
            DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
            DMNF.cds_Mov_detPRECOCUSTO.AsFloat := DMNF.listaProdutoPRECOMEDIO.AsFloat;
            if DMNF.listaProdutoQTDE_PCT.AsFloat >= 1 then
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat / DMNF.listaProdutoQTDE_PCT.AsFloat
            else
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
            valorUnitario := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
            DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := DMNF.listaProdutoCODALMOXARIFADO.AsInteger;
            DMNF.cds_Mov_detALMOXARIFADO.AsString := DMNF.listaProdutoALMOXARIFADO.AsString;
            DMNF.cds_Mov_detICMS.AsFloat := DMNF.listaProdutoICMS.AsFloat;
         end
         else
           DMNF.cds_Mov_detCODPRODUTO.AsInteger := 1;
       end;
      end;
    end;
    if ((JvDBGrid1.SelectedIndex = 5) or (JvDBGrid1.SelectedIndex = 6)) then
    begin
      if (dmnf.cds_Mov_detCODPRO.AsString <> '') then
      begin
        if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
        begin
          if (dmnf.cds_Mov_det.State in [dsBrowse]) then
            dmnf.cds_Mov_det.Edit;
            DMNF.cds_Mov_detPRECO.AsFloat := DMNF.cds_Mov_detVLR_BASE.AsFloat;
        end;
      end;
    end;

    if (dmNf.cds_Mov_det.state in [dsEdit, dsInsert]) then
    if (DMNF.cds_Mov_detPRECO.AsFloat <> dmnf.cds_Mov_detVLR_BASE.asFloat) then
      DMNF.cds_Mov_detPRECO.AsFloat := dmnf.cds_Mov_detVLR_BASE.asFloat;

end;

procedure TfNotaf.alteraVlrVenda;
begin
  if (dmnf.cds_venda.state in [dsBrowse, dsInactive]) then
    dmnf.cds_venda.Edit;
  if (dmnf.cds_vendaVALOR_ICMS.AsFloat <> dmnf.cds_nfVALOR_ICMS.AsFloat) then
  begin
    dmnf.cds_vendaVALOR_ICMS.AsFloat := dmnf.cds_nfVALOR_ICMS.AsFloat
  end;
  if (dmnf.cds_vendaVALOR_FRETE.AsFloat <> dmnf.cds_nfVALOR_FRETE.AsFloat) then
  begin
    dmnf.cds_vendaVALOR_FRETE.AsFloat := dmnf.cds_nfVALOR_FRETE.AsFloat
  end;
  if (dmnf.cds_vendaVALOR_SEGURO.AsFloat <> dmnf.cds_nfVALOR_SEGURO.AsFloat) then
  begin
    dmnf.cds_vendaVALOR_SEGURO.AsFloat := dmnf.cds_nfVALOR_SEGURO.AsFloat
  end;
  if (dmnf.cds_vendaOUTRAS_DESP.AsFloat <> dmnf.cds_nfOUTRAS_DESP.AsFloat) then
  begin
    dmnf.cds_vendaOUTRAS_DESP.AsFloat := dmnf.cds_nfOUTRAS_DESP.AsFloat
  end;
  if (dmnf.cds_nfVALOR_TOTAL_NOTA.AsFloat <> dmnf.cds_vendaVALOR.AsFloat) then
    dmnf.cds_vendaVALOR.AsFloat := dmnf.cds_nfVALOR_TOTAL_NOTA.AsFloat;
  if (dmnf.cds_venda.State in [dsEdit, dsInsert]) then
    dmnf.cds_venda.ApplyUpdates(0);
end;

procedure TfNotaf.JvDBGrid2EditChange(Sender: TObject);
begin
    if (JvDBGrid2.SelectedIndex = 1) then
    begin
      if (dmnf.cds_Mov_detCODPRO.AsString = '') then
      begin
       if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
       begin
         if (dmnf.cds_Mov_det.State in [dsBrowse]) then
           dmnf.cds_Mov_det.Edit;
         DMNF.listaProduto.open;
         if (DMNF.listaProduto.Locate('PRODUTO',dmnf.cds_Mov_detDESCPRODUTO.AsString,[loCaseInsensitive])) then
         begin
           dmnf.cds_Mov_detCODPRO.AsString := DMNF.listaProdutoCODPRO.AsString;
           DMNF.cds_Mov_detDESCPRODUTO.Value := DMNF.listaProdutoPRODUTO.Value;
            DMNF.cds_Mov_detCODPRODUTO.AsInteger := DMNF.listaProdutoCODPRODUTO.AsInteger;
            DMNF.cds_Mov_detLOCALIZACAO.Value := DMNF.listaProdutoLOCALIZACAO.Value;
            DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := DMNF.listaProdutoCOD_COMISSAO.AsInteger;
            DMNF.cds_Mov_detQTDE_PCT.AsFloat := DMNF.listaProdutoQTDE_PCT.AsFloat;
            DMNF.cds_Mov_detUN.AsString := DMNF.listaProdutoUNIDADEMEDIDA.AsString;
            DMNF.estoque := DMNF.listaProdutoESTOQUEATUAL.AsFloat;
            DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
            DMNF.qtde := DMNF.listaProdutoPESO_QTDE.AsFloat;
            DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
            DMNF.cds_Mov_detPRECOCUSTO.AsFloat := DMNF.listaProdutoPRECOMEDIO.AsFloat;
            if DMNF.listaProdutoQTDE_PCT.AsFloat >= 1 then
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat / DMNF.listaProdutoQTDE_PCT.AsFloat
            else
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
            valorUnitario := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
            DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := DMNF.listaProdutoCODALMOXARIFADO.AsInteger;
            DMNF.cds_Mov_detALMOXARIFADO.AsString := DMNF.listaProdutoALMOXARIFADO.AsString;
            DMNF.cds_Mov_detICMS.AsFloat := DMNF.listaProdutoICMS.AsFloat;
         end
         else
           DMNF.cds_Mov_detCODPRODUTO.AsInteger := 1;
         //JvDBGrid2.SelectedIndex := 3;
       end;
      end;
    end;
    if ((JvDBGrid2.SelectedIndex = 5) or (JvDBGrid2.SelectedIndex = 6)) then
    begin
      if (dmnf.cds_Mov_detCODPRO.AsString <> '') then
      begin
        if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
        begin
          if (dmnf.cds_Mov_det.State in [dsBrowse]) then
            dmnf.cds_Mov_det.Edit;
            DMNF.cds_Mov_detPRECO.AsFloat := DMNF.cds_Mov_detVLR_BASE.AsFloat;
        end;
      end;
    end;
    if (dmNf.cds_Mov_det.state in [dsEdit, dsInsert]) then
    if (DMNF.cds_Mov_detPRECO.AsFloat <> dmnf.cds_Mov_detVLR_BASE.asFloat) then
      DMNF.cds_Mov_detPRECO.AsFloat := dmnf.cds_Mov_detVLR_BASE.asFloat;
end;

procedure TfNotaf.btnGuiaClick(Sender: TObject);
begin
  try
    dmnf.repdm.FileName := str_relatorio + 'nf_transporte.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    dmnf.repdm.Execute;
  except
    // deu erro na impressão então para aqui.
  end;
  if (dmnf.cds_nf.State in [dsBrowse]) then
    dmnf.cds_nf.Edit;
  dmnf.cds_nfIMPRESSA.AsString := 'S';
  dmnf.cds_nf.ApplyUpdates(0);
end;

procedure TfNotaf.ExcluirItemNF1Click(Sender: TObject);
begin
 if  DMNF.DtSrc1.DataSet.State in [dsBrowse] then
 begin
   if DMNF.DtSrc.DataSet.State in [dsBrowse] then
     DMNF.DtSrc.DataSet.edit;
   if  MessageDlg('Confirma a exclusão do item ''' + DMNF.cds_Mov_detDESCPRODUTO.AsString + '''?', mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
   Begin
     if (DMNF.cds_nf.State in [dsBrowse]) then
        DMNF.cds_nf.Edit;
     DMNF.cds_nfVALOR_PRODUTO.Value := DMNF.cds_nfVALOR_PRODUTO.Value - DMNF.cds_Mov_detValorTotal.Value;
     DMNF.cds_nfVALOR_TOTAL_NOTA.Value := DMNF.cds_nfVALOR_TOTAL_NOTA.Value - DMNF.cds_Mov_detValorTotal.Value;
     DMNF.DtSrc1.DataSet.Delete;
     if DMNF.DtSrc.DataSet.State in [dsBrowse] then
       DMNF.DtSrc.DataSet.edit;
     btnGravar.Click;
     if (DMNF.cds_nf.State in [dsEdit]) then
     DMNF.cds_nf.ApplyUpdates(0);
   end;
 end;
end;

procedure TfNotaf.btnNotaFiscalClick(Sender: TObject);
begin
  fNFeletronica.PageControl1.ActivePage := fNFeletronica.NFe;
  fNFeletronica.cbTipoNota.ItemIndex := 1;
  fNFeletronica.ComboBox1.Text := nfe_ccusto_emp_nome;
  fNFeletronica.ShowModal;
end;

procedure TfNotaf.btnRemessaClick(Sender: TObject);
begin
  fNotafRemessa := TfNotafRemessa.Create(Application);
  try
    fNotafRemessa.ShowModal;
  finally
    fNotafRemessa.Free;
  end;
end;

Procedure TfNotaf.carregaDadosAdicionais(motivo:String);
Begin
  if ((DMNF.DtSrc_NF.State in [dsInsert]) or (motivo = 'Trocou')) then
  begin
    if( (not DMNF.cds_nfCFOP.IsNull)  or (DMNF.cds_nfCFOP.AsString <> '') )then
    begin
      if( (not DMNF.cds_nfUFCLI.IsNull)  or (DMNF.cds_nfUFCLI.AsString <> '') )then
      begin
        if (sCFOP.Active) then
          sCFOP.Close;
        sCFOP.Params[1].asString :=  cbCFOP.Text;
        sCFOP.Params[0].asString :=  DBEdit7.Text;
        if (listaCliente1.Active) then
          listaCliente1.Close;
        listaCliente1.Params.ParamByName('pCodCli').AsInteger := DMNF.cds_nfCODCLIENTE.AsInteger;
        listaCliente1.Open;
          sCFOP.Params[2].asString :=  listaCliente1CODFISCAL.AsString;
        sCFOP.Open;
        If ((sCFOPDADOSADC1.AsString <> '') or (not sCFOPDADOSADC1.IsNull) )then
        begin
          DMNF.cds_nfCORPONF1.AsString := sCFOPDADOSADC1.AsString;
        //If ((sCFOPDADOSADC2.AsString <> '') and (not sCFOPDADOSADC2.IsNull) )then
          DMNF.cds_nfCORPONF2.AsString := sCFOPDADOSADC2.AsString;
        //If ((sCFOPDADOSADC3.AsString <> '') and (not sCFOPDADOSADC3.IsNull) )then
          DMNF.cds_nfCORPONF3.AsString := sCFOPDADOSADC3.AsString;
        //If ((sCFOPDADOSADC4.AsString <> '') and (not sCFOPDADOSADC4.IsNull) )then
          DMNF.cds_nfCORPONF4.AsString := sCFOPDADOSADC4.AsString;
        //If ((sCFOPDADOSADC5.AsString <> '') and (not sCFOPDADOSADC5.IsNull) )then
          DMNF.cds_nfCORPONF5.AsString := sCFOPDADOSADC5.AsString;
        //If ((sCFOPDADOSADC6.AsString <> '') and (not sCFOPDADOSADC6.IsNull) )then
          DMNF.cds_nfCORPONF6.AsString := sCFOPDADOSADC6.AsString;
        end;  
      end;
    end;
  end;
End;

procedure TfNotaf.ChkCompClick(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsBrowse]) then
   dmnf.cds_nf.Edit;
end;

procedure TfNotaf.JvDBGrid1DblClick(Sender: TObject);
begin
  fDetalheNF := TfDetalheNF.Create(Application);
  try
    //fDetalheNF.tipoFiscalNota := dmnf.cds_nf
    //fDetalheNF.UFNota :=
    var_F := 'formnf';
    dm.cfopSaida := cbCFOP.Text;
    fDetalheNF.ShowModal;
  finally
    fDetalheNF.Free;
  end;
end;

procedure Tfnotaf.ativaCalc;
var  cm : string;
begin
    cm := 'ALTER TRIGGER CALCULA_ICMS_ST ACTIVE;';
    try
      begin
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(cm);
        dm.sqlsisAdimin.Commit(TD);
      end;
      Except
      begin
        MessageDlg('Erro ao executar calculo Manual.', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
end;

procedure Tfnotaf.inativaCalc;
var  cm : string;
begin
    cm := 'ALTER TRIGGER CALCULA_ICMS_ST INACTIVE;';
    try
      begin
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(cm);
        dm.sqlsisAdimin.Commit(TD);
      end;
      Except
      begin
        MessageDlg('Erro ao executar calculo Manual.', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
end;

procedure TfNotaf.cboFreteChange(Sender: TObject);
begin
 if DMNF.DtSrc_NF.State in [dsBrowse] then
      DMNF.DtSrc_NF.DataSet.Edit;
    DMNF.cds_nfFRETE.AsString := IntToStr(cboFrete.ItemIndex);
end;

procedure TfNotaf.btnCrClick(Sender: TObject);
begin
  fCrAltera := TfCrAltera.Create(Application);
  try
    fCrAltera.ntitulo := scdsCr_procTITULO.AsString;
    fCrAltera.codcliente := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.demissao := scdsCr_procEMISSAO.AsDateTime;


    if (fCrAltera.cds.Active) then
      fCrAltera.cds.Close;
    fCrAltera.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds.Open;

    if (fCrAltera.cds1.Active) then
      fCrAltera.cds1.Close;
    fCrAltera.cds1.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds1.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds1.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds1.Open;

    fCrAltera.Label1.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.Label2.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.ShowModal;
    scdsCr_proc.Close;
    scdsCr_proc.Open;
  finally
    fCrAltera.Free;
  end;

end;

procedure TfNotaf.gravaSerie(numero: Integer);
var strS: String;
  ultimoNumUsado: Integer;
begin
  if not dmnf.scds_serie_proc.Active then
  begin
    dmnf.scds_serie_proc.Params[0].AsString := Trim(dbeSerie.Text);
    dmnf.scds_serie_proc.Open;
  end;
  if (not dmnf.scds_serie_proc.IsEmpty) then
  begin
    strS := 'SELECT MAX(CAST(NOTASERIE AS INTEGER)) NUMNF FROM NOTAFISCAL ' +
            ' where SERIE = ' + QuotedStr(trim(dbeSerie.Text));
    if (sqlBSerie.Active) then
      sqlBSerie.Close;
    sqlBSerie.SQL.Clear;
    sqlBSerie.SQL.Add(strS);
    sqlBSerie.Open;
    ultimoNumUsado := sqlBSerie.fieldByName('NUMNF').AsInteger;
    if ((ultimoNumUsado + 1) < numero) then
    begin
      MessageDlg('O último número de nota emitido foi : ' + IntToSTr(ultimoNumUsado) +
      '. Verifique se a númeração está correta antes de continuar', mtWarning, [mbOK], 0);
    end;
    if (numero > dmnf.scds_serie_procULTIMO_NUMERO.AsInteger) then
    begin
      //dmnf.scds_serie_proc.Edit;
      //dmnf.scds_serie_procULTIMO_NUMERO.AsInteger := numero;
      //dmnf.scds_serie_proc.ApplyUpdates(0);
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        strS := 'update SERIES set ULTIMO_NUMERO = ' + IntToStr(numero) +
           ' where SERIE = ' +  QuotedStr(trim(dbeSerie.Text));
        dm.sqlsisAdimin.ExecuteDirect(strS);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;
    end;
    dmnf.scds_serie_proc.Close;
  end;

end;

procedure TfNotaf.gravarDadosNFe310;
var tipoNota :Char;
begin
  if (sdsCFOP.Active) then
    sdsCFOP.Close;
  sdsCFOP.Params[0].AsString := dmnf.cds_nfCFOP.asString;
  sdsCFOP.Open;
  dmnf.cds_nfNFE_FINNFE.AsString := 'fnNormal';
  //(pcNao, pcPresencial, pcInternet, pcTeleatendimento, pcEntregaDomicilio, pcOutros)
  Case sdsCFOPIND_PRES.AsInteger of
    0: dmnf.cds_nfNFE_INDPRES.AsString := 'pcNao';
    1: dmnf.cds_nfNFE_INDPRES.AsString := 'pcPresencial';
    2: dmnf.cds_nfNFE_INDPRES.AsString := 'pcInternet';
    3: dmnf.cds_nfNFE_INDPRES.AsString := 'pcTeleatendimento';
    4: dmnf.cds_nfNFE_INDPRES.AsString := 'pcEntregaDomicilio';
    5: dmnf.cds_nfNFE_INDPRES.AsString := 'pcOutros';
  end;
  //if (sdsCFOP.RecordCount > 0) then
  //begin
  dmnf.cds_nfNFE_FINNFE.AsString := 'fnNormal';
  if (sdsCFOP.FieldByName('TIPOMOVIMENTO').AsString = 'D') then
    dmnf.cds_nfNFE_FINNFE.AsString := 'fnDevolucao';
  if (sdsCFOP.FieldByName('TIPOMOVIMENTO').AsString = 'R') then
    dmnf.cds_nfNFE_FINNFE.AsString := 'fnAjuste';
  if (ChkComp.Checked) then
    dmnf.cds_nfNFE_FINNFE.AsString := 'fnComplementar';
  //end;
  dmnf.cds_nfNFE_MODELO.AsString       := 'moNFe';
  dmnf.cds_nfNFE_VERSAO.AsString       := 've310';

  if (dmnf.cds_nfCFOP.AsString <>  '') then
    tipoNota := trim(dmnf.cds_nfCFOP.AsString)[1]
  else
    tipoNota := '5';

  if (tipoNota in ['1','2','3']) then
  begin
    dmnf.cds_nfNFE_TIPO.AsString := 'tnEntrada';
  end;
  if (tipoNota in ['5','6','7']) then
  begin
    dmnf.cds_nfNFE_TIPO.AsString := 'tnSaida';
  end;

  if (tipoNota in ['1','5']) then
    dmnf.cds_nfNFE_DESTOPERACAO.AsString := 'doInterna';
  if (tipoNota in ['2','6']) then
    dmnf.cds_nfNFE_DESTOPERACAO.AsString := 'doInterestadual';
  if (tipoNota in ['3', '7']) then
    dmnf.cds_nfNFE_DESTOPERACAO.AsString := 'doExterior';

  dmnf.cds_nfNFE_FORMATODANFE.AsString   := 'tiRetrato';
  dmnf.cds_nfNFE_TIPOEMISSAO.AsString    := 'teNormal';

  //TpcnindIEDest = (inContribuinte, inIsento, inNaoContribuinte);
  {dmnf.cds_nfNFE_INDPRES.AsString := 'inContribuinte';
  if (dmnf.cds_nfINSCRICAOESTADUAL.AsString = 'ISENTO') then
    dmnf.cds_nfNFE_INDPRES.AsString := 'inIsento';
  if (dmnf.cds_nfINSCRICAOESTADUAL.AsString = '') then
    dmnf.cds_nfNFE_INDPRES.AsString := 'inNaoContribuinte';

  if (dmnf.cds_nfINSCRICAOESTADUAL.AsString = '') then
    dmnf.cds_nfNFE_INDPRES.AsString := 'inNaoContribuinte';}

  if (listaCliente1.Active) then
    listaCliente1.Close;
  listaCliente1.Params.ParamByName('pCodCli').AsInteger := DMNF.cds_nfCODCLIENTE.AsInteger;
  listaCliente1.Open;
  if (listaCliente1NAOCONTRIBUINTE.AsString = 'S') then
  begin
    dmnf.cds_nfIND_IEDEST.AsString := 'inNaoContribuinte';
  end
  else begin
    dmnf.cds_nfIND_IEDEST.AsString := 'inContribuinte';
  end;
  if (dmnf.cds_nfINSCRICAOESTADUAL.AsString = 'ISENTO') then
    dmnf.cds_nfIND_IEDEST.AsString := 'inIsento';

  //TpcnConsumidorFinal = (cfNao, cfConsumidorFinal);
  dmnf.cds_nfNFE_INDFINAL.AsString := 'cfNao';
  if (dmnf.cds_nfCODFISCAL.AsString = '9') then
    dmnf.cds_nfNFE_INDFINAL.AsString := 'cfConsumidorFinal';
end;

procedure TfNotaf.edtNFRefExit(Sender: TObject);
begin
  if (edtNFRef.Text <> '') then
  begin
    if (dmnf.cds_nf.State in [dsBrowse]) then
      dmnf.cds_nf.Edit;
    dmnf.cds_nfIDCOMPLEMENTAR.AsString := edtNFRef.Text;
  end;  
end;

procedure TfNotaf.edtNFRefClick(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsBrowse]) then
    dmnf.cds_nf.Edit;
end;

procedure TfNotaf.carregarEmissao;
begin
  edFinNFe.Text := dmnf.cds_nfNFE_FINNFE.AsString;
  edIndFinal.Text := dmnf.cds_nfNFE_INDFINAL.AsString;
  edIndPres.Text := dmnf.cds_nfNFE_INDPRES.AsString;
  edIndIeDest.Text := dmnf.cds_nfIND_IEDEST.AsString;
  edDestinoOper.Text := dmnf.cds_nfNFE_DESTOPERACAO.AsString;
  edTipo.Text := dmnf.cds_nfNFE_TIPO.AsString;
end;

procedure TfNotaf.btnDuplicarClick(Sender: TObject);
var   //FMov : TMovimento;
      //fven : TVendaCls;
   //codMov  : Integer;
   s_nf_d  : Integer;
      TDA  : TTransactionDesc;
   str_sql : String;
begin
  TDA.TransactionID  := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;

  //try
    {
    FMov := TMovimento.Create;
    fven := TVendaCls.Create;
    Try
      dm.sqlsisAdimin.StartTransaction(TDA);

      FMov.CodMov      := 0;
      FMov.CodCCusto   := dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger;
      FMov.CodCliente   := dmnf.cds_MovimentoCODCLIENTE.AsInteger;
      FMov.CodNatureza := dmnf.cds_MovimentoCODNATUREZA.AsInteger;
      FMov.Status      := dmnf.cds_MovimentoSTATUS.AsInteger;
      FMov.CodUsuario  := usulog;
      FMov.CodVendedor := dmnf.cds_MovimentoCODVENDEDOR.AsInteger;
      FMov.DataMov     := dmnf.cds_MovimentoDATAMOVIMENTO.AsDateTime ;

      FMov.Obs         := dmnf.cds_MovimentoOBS.AsString;
      Fmov.CodPedido   := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
      codMov           := FMov.inserirMovimento(0);

      While not dmnf.cds_Mov_det.Eof do
      begin
        FMov.MovDetalhe.CodMov        := codMov;
        FMov.MovDetalhe.CodProduto    := dmnf.cds_Mov_detCODPRODUTO.AsInteger;
        Fmov.MovDetalhe.Descricao     := dmnf.cds_Mov_detDESCPRODUTO.AsString;
        FMov.MovDetalhe.Qtde          := dmnf.cds_Mov_detQUANTIDADE.AsFloat;
        FMov.MovDetalhe.Lote          := dmnf.cds_Mov_detLOTE.AsString;
        Fmov.MovDetalhe.Preco         := dmnf.cds_Mov_detPRECO.AsFloat;
        Fmov.MovDetalhe.Un            := dmnf.cds_Mov_detUN.AsString;
        Fmov.MovDetalhe.Desconto      := dmnf.cds_Mov_detQTDE_ALT.AsFloat;
        Fmov.MovDetalhe.Cfop          := dmnf.cds_Mov_detCFOP.AsString;
        Fmov.MovDetalhe.Frete         := dmnf.cds_Mov_detFRETE.AsFloat;
        FMov.MovDetalhe.inserirMovDet;
        dmnf.cds_Mov_det.Next;
      end;
      }
      str_sql := 'select CODSERIE, SERIE, ULTIMO_NUMERO, NOTAFISCAL ' +
        '  from SERIES ' +
        ' where SERIE = ' + QuotedStr(trim(dmnf.cds_vendaSERIE.AsString));
      dbeSerie.Text := dmnf.cds_vendaSERIE.AsString;
      if (nfe_ccusto_empresa > 0) then
      begin
        str_sql := str_sql + ' AND CODSERIE = ' + QuotedStr(dmnf.cds_empresaCODIGO.AsString);
      end;
      sql_serie_nf.SQL.Clear;
      sql_serie_nf.SQL.Add(str_sql);
      sql_serie_nf.Open;
      s_nf_d := sql_serie_nf.Fields[2].AsInteger + 1;
      sql_serie_nf.Close;
      {
      fven.CodMov               := codMov;
      fven.DataVenda            := dmnf.cds_vendaDATAVENDA.AsDateTime;
      fven.DataVcto             := dmnf.cds_vendaDATAVENCIMENTO.AsDateTime;
      fven.Serie                := dmnf.cds_vendaSERIE.AsString;
      fven.NotaFiscal           := s_nf_d;
      fven.CodCliente           := dmnf.cds_vendaCODCLIENTE.AsInteger;
      fven.CodVendedor          := dmnf.cds_vendaCODVENDEDOR.AsInteger;
      fven.CodCCusto            := dmnf.cds_vendaCODCCUSTO.AsInteger;
      fven.ValorPagar           := dmnf.cds_vendaVALOR_PAGAR.AsFloat;
      fven.NParcela             := dmnf.cds_vendaN_PARCELA.AsInteger;
      fven.inserirVenda(0);
      //dm.sqlsisAdimin.Commit(TDA);

      //dm.sqlsisAdimin.StartTransaction(TD);
      try
      }
     dm.sqlsisAdimin.StartTransaction(TDA);
     try
        str_sql := 'EXECUTE PROCEDURE GERA_NF_VENDA(';
        str_sql := str_sql + IntToStr(dmnf.cds_vendaCODCLIENTE.AsInteger);
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dmnf.cds_vendaDATAVENDA.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dmnf.cds_vendaDATAVENCIMENTO.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(dmnf.cds_vendaSERIE.AsString);
        str_sql := str_sql + ', ' + QuotedStr(IntToStr(s_nf_d));
        str_sql := str_sql + ', ' + IntToStr(dmnf.cds_vendaCODMOVIMENTO.AsInteger);
        str_sql := str_sql + ', ' + IntToStr(dmnf.cds_MovimentoCODNATUREZA.AsInteger) + ')';
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        //dm.sqlsisAdimin.ExecuteDirect('update movimento set nfe = ' +
        //  QuotedStr(inttostr(s_nf_d) + '-' +
        //    dmnf.cds_vendaSERIE.AsString) +
        //  ' where CODMOVIMENTO = ' +  IntToStr(codMov));
        dm.sqlsisAdimin.Commit(TDA);

        gravaSerie(s_nf_d);
 
        sql_serie_nf.SQL.Clear;
        sql_serie_nf.SQL.Add('select CODMOVIMENTO ' +
          '  from VENDA ' +
          ' where SERIE = ' + QuotedStr(dmnf.cds_vendaSERIE.AsString) +
          '   and NOTAFISCAL = ' + IntToStr(s_nf_d));
        sql_serie_nf.Open;
        codMovFin := sql_serie_nf.Fields[0].AsInteger;
        sql_serie_nf.Close;

        dm.sqlsisAdimin.StartTransaction(TDA);
        dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTO SET CONTROLE = NULL ' +
          ' , NFE = ' + QuotedStr(IntToStr(s_nf_d) +
          '-' + dmnf.cds_vendaSERIE.AsString) + 
          ' WHERE CODMOVIMENTO = ' + IntToStr(codMovFin));
        dm.sqlsisAdimin.Commit(TDA);

        carregarNFg;

     { except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TDA);
          Exit;
        end;
      end;
     }

      MessageDlg('NF duplicada com sucesso.', mtInformation,[mbOk], 0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;
  {
  finally
    FMov.Free;
    fVen.Free;
  end;
   }
  btnProcurar.Enabled := True;
end;

procedure TfNotaf.carregarNFg;
begin

  if (codMovFin > 0) then
  begin
    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := codMovFin;
    dmnf.cds_Movimento.Open;

    if (dmnf.cds_MovimentoCODNATUREZA.AsInteger = 12) then
    begin
      cbFinanceiro.Checked := False;
      cbEstoque.Checked := False;
    end;
    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := codMovFin;
    dmnf.cds_Mov_det.Open;

    if (dmnf.cds_Mov_detPAGOU.AsString = 'M') then
      calcman.Checked := True;

    //mostra venda
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
    dmnf.cds_venda.Params[0].Clear;
    dmnf.cds_venda.Params[1].AsInteger := codMovFin;
    dmnf.cds_venda.Open;
    if (not dmnf.cds_venda.IsEmpty) then
      codVendaFin := dmnf.cds_vendaCODVENDA.AsInteger;

    if (scdsCr_proc.Active) then
      scdsCr_proc.Close;

    scdsCr_proc.Params[0].AsInteger := dmnf.cds_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;

    //Mostra NF
    if (dmnf.cds_nf.Active) then
      dmnf.cds_nf.Close;
    dmnf.cds_nf.Params[0].Clear;
    dmnf.cds_nf.Params[1].Clear;
    dmnf.cds_nf.Params[1].AsInteger := codVendaFin;
    dmnf.cds_nf.Open;

    carregarEmissao;

    if (dmnf.cds_nfNFE_FINNFE.IsNull) then
    begin
      dmnf.cds_nf.Edit;
      gravarDadosNFe310;
      btnGravar.Click;
    end;

    if (dmnf.cds_nfIDCOMPLEMENTAR.AsString <> '') then
      edtNFRef.Text := dmnf.cds_nfIDCOMPLEMENTAR.AsString;

    if (dmnf.cds_nfSTATUS.AsString = 'S') then
      RadioGroup1.ItemIndex := 0
    else
      RadioGroup1.ItemIndex := 1;

    if (DMNF.cds_nfFRETE.AsString <>  '') then
      cboFrete.ItemIndex := StrToInt(DMNF.cds_nfFRETE.AsString);

    if (not dmnf.cds_empresa.Active) then
      dmnf.cds_empresa.open;
    if ((dmnf.cds_nf.IsEmpty) and (codVendaFin > 0)) then
    begin
      if (dmnf.cds_nfNOTASERIE.AsString = '') then
        btnIncluir.Click;
    end;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'DATANF';
    dm.cds_parametro.Open;

    if (DM.cds_parametroCONFIGURADO.AsString = 'S') then
      if not ( FormatDateTime('dd/mm/yyyy\',DMNF.cds_nfDTAEMISSAO.AsDateTime) = FormatDateTime('dd/mm/yyyy\',now)) then
        MessageDlg('Data da Nota Fiscal difere da atual.', mtInformation, [mbOK], 0);
  end;

end;

procedure TfNotaf.JvDBDateEdit1Change(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsEdit]) then
  begin
    if (dmnf.cds_Movimento.State in [dsBrowse]) then
      dmnf.cds_Movimento.edit;
    if (dmnf.cds_venda.State in [dsBrowse]) then
      dmnf.cds_venda.edit;
  end;    
end;

end.
