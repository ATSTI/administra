unit uNotafc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, JvExStdCtrls, JvGroupBox, ComCtrls,
  JvExComCtrls, JvComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask,
  Buttons, ExtCtrls, MMJPanel, JvExMask, JvToolEdit, JvDBControls,
  JvCheckBox, DB, DBClient, JvMaskEdit, FMTBcd, SqlExpr, Menus, Provider, DBXpress;

type
  TfNotaFc = class(TForm)
    JvPageControl1: TJvPageControl;
    TabNF: TTabSheet;
    JvGroupBox1: TJvGroupBox;
    cbNatureza: TDBComboBox;
    JvGroupBox2: TJvGroupBox;
    cbCFOP: TDBComboBox;
    JvGroupBox3: TJvGroupBox;
    MMJPanel2: TMMJPanel;
    rg: TRadioGroup;
    DBText1: TDBText;
    JvGroupBox4: TJvGroupBox;
    DBText2: TDBText;
    JvGroupBox5: TJvGroupBox;
    cbCLiente: TDBComboBox;
    BitBtn1: TBitBtn;
    JvGroupBox6: TJvGroupBox;
    DBEdit1: TDBEdit;
    JvGroupBox7: TJvGroupBox;
    DBEdit2: TDBEdit;
    JvGroupBox8: TJvGroupBox;
    DBEdit3: TDBEdit;
    JvGroupBox9: TJvGroupBox;
    DBEdit4: TDBEdit;
    JvGroupBox10: TJvGroupBox;
    JvGroupBox11: TJvGroupBox;
    JvGroupBox12: TJvGroupBox;
    DBEdit5: TDBEdit;
    JvGroupBox13: TJvGroupBox;
    DBEdit6: TDBEdit;
    JvGroupBox14: TJvGroupBox;
    DBEdit7: TDBEdit;
    JvGroupBox15: TJvGroupBox;
    DBEdit8: TDBEdit;
    JvGroupBox16: TJvGroupBox;
    JvGroupBox28: TJvGroupBox;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    DBEdit33: TDBEdit;
    BitBtn3: TBitBtn;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    BitBtn4: TBitBtn;
    dbeSerie: TDBEdit;
    dbeUsuario: TDBEdit;
    DataSource1: TDataSource;
    JvDBGrid1: TJvDBGrid;
    BitBtn5: TBitBtn;
    DBEdit34: TDBEdit;
    TabSheet1: TTabSheet;
    JvGroupBox43: TJvGroupBox;
    cbCLiente1: TDBComboBox;
    BitBtn7: TBitBtn;
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
    JvGroupBox53: TJvGroupBox;
    DBEdit43: TDBEdit;
    Label1: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit44: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    JvGroupBox54: TJvGroupBox;
    DBEdit47: TDBEdit;
    BitBtn8: TBitBtn;
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
    sdsTotal: TSQLDataSet;
    localizaProduto: TSQLDataSet;
    localizaProdutoCODPRO: TStringField;
    localizaProdutoPRODUTO: TStringField;
    JvDBGrid2: TJvDBGrid;
    PopupMenu1: TPopupMenu;
    ExcluirItemNF1: TMenuItem;
    CheckBox1: TCheckBox;
    memo1: TMemo;
    sClasFiscal: TSQLDataSet;
    sClasFiscalCLASSIFICAO: TStringField;
    sClasFiscalCODIGO_REDUZ: TStringField;
    sClasFiscalDESCRICAO: TStringField;
    sClasFiscalTIPO_CLASSIFICA: TStringField;
    sClasFiscalICMS_SUBST: TFloatField;
    sClasFiscalICMS_SUBST_IC: TFloatField;
    sClasFiscalICMS_SUBST_IND: TFloatField;
    listaFornecedor: TSQLDataSet;
    listaFornecedorCODFORNECEDOR: TIntegerField;
    listaFornecedorRAZAOSOCIAL: TStringField;
    listaFornecedorCNPJ: TStringField;
    listaFornecedorINSCESTADUAL: TStringField;
    listaFornecedorPRAZOPAGAMENTO: TSmallintField;
    listaFornecedorLOGRADOURO: TStringField;
    listaFornecedorBAIRRO: TStringField;
    listaFornecedorCOMPLEMENTO: TStringField;
    listaFornecedorCIDADE: TStringField;
    listaFornecedorUF: TStringField;
    listaFornecedorCEP: TStringField;
    listaFornecedorTELEFONE: TStringField;
    listaFornecedorCODTRANSP: TIntegerField;
    btnNotaFiscal: TBitBtn;
    DBEdit50: TDBEdit;
    sCfop: TSQLDataSet;
    sCfopCFOP: TStringField;
    sCfopUF: TStringField;
    sCfopPESSOA: TStringField;
    sCfopDADOSADC1: TStringField;
    sCfopDADOSADC2: TStringField;
    sCfopDADOSADC3: TStringField;
    sCfopDADOSADC4: TStringField;
    sCfopDADOSADC5: TStringField;
    sCfopDADOSADC6: TStringField;
    sCfopNAOENVFATURA: TStringField;
    listaFornecedores: TSQLDataSet;
    listaFornecedoresCODFORNECEDOR: TIntegerField;
    listaFornecedoresRAZAOSOCIAL: TStringField;
    listaFornecedoresCNPJ: TStringField;
    listaFornecedoresINSCESTADUAL: TStringField;
    listaFornecedoresPRAZOPAGAMENTO: TSmallintField;
    listaFornecedoresCODTRANSP: TIntegerField;
    listaFornecedoresLOGRADOURO: TStringField;
    listaFornecedoresBAIRRO: TStringField;
    listaFornecedoresCOMPLEMENTO: TStringField;
    listaFornecedoresCIDADE: TStringField;
    listaFornecedoresUF: TStringField;
    listaFornecedoresCEP: TStringField;
    listaFornecedoresTELEFONE: TStringField;
    lblNaturezaOperacao: TLabel;
    btnDI: TBitBtn;
    PageControl1: TPageControl;
    tsTributos: TTabSheet;
    tsFrete: TTabSheet;
    tsDadosAdic: TTabSheet;
    GroupBox2: TGroupBox;
    DBEdit49: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    JvGroupBox29: TJvGroupBox;
    cbTransportadora: TDBComboBox;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    cboFrete: TComboBox;
    JvGroupBox30: TJvGroupBox;
    DBEdit20: TDBEdit;
    JvGroupBox31: TJvGroupBox;
    DBEdit21: TDBEdit;
    JvGroupBox32: TJvGroupBox;
    DBEdit22: TDBEdit;
    JvGroupBox36: TJvGroupBox;
    DBEdit26: TDBEdit;
    JvGroupBox35: TJvGroupBox;
    DBEdit25: TDBEdit;
    JvGroupBox34: TJvGroupBox;
    DBEdit24: TDBEdit;
    JvGroupBox33: TJvGroupBox;
    DBEdit23: TDBEdit;
    JvGroupBox37: TJvGroupBox;
    DBEdit27: TDBEdit;
    JvGroupBox38: TJvGroupBox;
    DBEdit28: TDBEdit;
    JvGroupBox39: TJvGroupBox;
    DBEdit29: TDBEdit;
    JvGroupBox40: TJvGroupBox;
    DBEdit30: TDBEdit;
    JvGroupBox41: TJvGroupBox;
    DBEdit31: TDBEdit;
    JvGroupBox42: TJvGroupBox;
    DBEdit32: TDBEdit;
    JvGroupBox18: TJvGroupBox;
    DBEdit10: TDBEdit;
    JvGroupBox19: TJvGroupBox;
    DBEdit11: TDBEdit;
    JvGroupBox20: TJvGroupBox;
    DBEdit12: TDBEdit;
    JvGroupBox21: TJvGroupBox;
    DBEdit13: TDBEdit;
    JvGroupBox26: TJvGroupBox;
    DBEdit18: TDBEdit;
    JvGroupBox57: TJvGroupBox;
    DBEdit57: TDBEdit;
    JvGroupBox58: TJvGroupBox;
    DBEdit58: TDBEdit;
    JvGroupBox59: TJvGroupBox;
    DBEdit59: TDBEdit;
    JvGroupBox60: TJvGroupBox;
    DBEdit60: TDBEdit;
    JvGroupBox61: TJvGroupBox;
    DBEdit61: TDBEdit;
    JvGroupBox23: TJvGroupBox;
    DBEdit15: TDBEdit;
    JvGroupBox55: TJvGroupBox;
    DBEdit51: TDBEdit;
    JvGroupBox25: TJvGroupBox;
    DBEdit17: TDBEdit;
    JvGroupBox24: TJvGroupBox;
    DBEdit16: TDBEdit;
    JvGroupBox17: TJvGroupBox;
    DBEdit9: TDBEdit;
    JvGroupBox56: TJvGroupBox;
    DBEdit48: TDBEdit;
    JvGroupBox22: TJvGroupBox;
    DBEdit14: TDBEdit;
    JvGroupBox27: TJvGroupBox;
    DBEdit19: TDBEdit;
    calcman: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCLienteChange(Sender: TObject);
    procedure cbNaturezaChange(Sender: TObject);
    procedure cbCFOPChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cbTransportadoraChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit11Change(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure cbCLiente1Change(Sender: TObject);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1ColExit(Sender: TObject);
    procedure JvDBGrid1EditChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure JvDBGrid2EditChange(Sender: TObject);
    procedure ExcluirItemNF1Click(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure cbCFOPExit(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure calcmanClick(Sender: TObject);
    procedure btnDIClick(Sender: TObject);
    procedure cboFreteChange(Sender: TObject);
  private
    codNat     : Integer;
    movEstoque : String;
    geraTitulo : String;
    { Private declarations }
    procedure incluiEntrada;
    procedure incluiSAida;
    procedure incluiMovimento;
    procedure incluiCompra;
    procedure incluiNotaFiscal;
    procedure buscaserieNF;
    procedure CarregaParametros;
    procedure gravamovimento;
    procedure gravamov_detalhe;
    procedure gravavenda;
    procedure alteraVlrVenda;
    procedure carregaNaturezaOperacao;
  public
      vrr : double;
      codMovFin, codVendaFin, codCliFin : integer;
      parametroNF: string;
    procedure gravanotafiscal;
    procedure calculaicms(Estado: String);
    procedure somavalores;
    procedure carregaDadosAdicionais;
    { Public declarations }
  end;

var
  fNotaFc: TfNotaFc;
  valorUnitario: Double;
  codmovdet, codserv, codmd, centro_receita, cod_nat, cod_vendedor_padrao: integer;
  natureza, contas_pendentes, nome_vendedor_padrao, valor_fatura, fatura_NF: string;
  // variaveis da venda finalizar
  prazo, valor: double;
  terminal, data_movimento, varcancela : string;
  codigo_cliente, codigo_moviemento : integer;
  diasAumenta : integer;
  DtaTemp : TDateTime;

implementation

uses UDm, UDMNF, sCtrlResize, uProcurar, uProcurar_nf, uClienteCadastro,
  ufprocura_prod, uftransp, uFiltroMovimento, unitExclusao, Math, uFiltroMov_compra, uFiltroMov_NFcompra,
  uNFeletronica, uDetalheNF, uDadosImportacao;

{$R *.dfm}

procedure TfNotaFc.FormCreate(Sender: TObject);
begin
  codMovFin := 0;
  codVendaFin := 0;
  parametroNF := '';

  // Usado na DNZ
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('PARAMETRO', 'NOTAFISCALDESATIVADO', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      dbEdit33.ReadOnly := True;
      parametroNF := 'S';
    end;

  //sCtrlResize.CtrlResize(TForm(fNotaFc));
  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaCFOP.Active) then
    dmnf.listaCFOP.Open;
    
  { // Trazer so o CFOP de "ENTRADAS"
    select DISTINCT c.CFCOD, c.CFNOME from CFOP c
     inner JOIN ESTADO_ICMS ei on ei.CFOP = c.CFCOD
     where exists (select 1 from NATUREZAOPERACAO noper
     where ((noper.CFOP_ESTADO = c.CFCOD)
        or (noper.CFOP_FORA_ESTADO = c.CFCOD)
        or (noper.CFOP_INTERNACIONAL = c.CFCOD))
       and (noper.TIPOMOVIMENTO = ????) }

  dmnf.listaCFOP.First;
  //cbCLiente.Clear;
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
     cbTransportadora.Items.Add(dmnf.listaTranspNOMETRANSP.AsString);
     dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;

end;

procedure TfNotaFc.btnIncluirClick(Sender: TObject);
var varsql: string;
begin
  codVendaFin := 0;
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'Nota Fiscal Compra';
  dm.cds_parametro.Open;

  if (dm.cds_parametro.IsEmpty) then
  begin
    varsql :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS) ' ;
    varsql := varsql + 'values (''Nota Fiscal Compra'',''S'',''20'')';
    dm.sqlsisAdimin.executedirect(varsql);
  end;

  incluiEntrada;
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.open;
  if (not dmnf.cds_nf1.Active) then
    dmnf.cds_nf1.open;
  if (not dmnf.cds_compra.Active) then
    dmnf.cds_compra.Open;
  if (not dmnf.cds_Mov_det.Active) then
    dmnf.cds_Mov_det.open;
  // Entrada ou Saida
  //if (rg.ItemIndex = 0) then // Entrada
   //  incluiEntrada
  //else  // saida
  if ((dmnf.cds_nf1.IsEmpty) and (codVendaFin > 0)) then
  begin
    if(sdsTotal.Active) then
      sdsTotal.close;
    sdsTotal.params[0].AsInteger := codMovFin;
    sdsTotal.open;
    incluiNotaFiscal;
    dmnf.cds_nf1VALOR_PRODUTO.AsFloat := sdsTotal.Fields[0].AsFloat;
    dmnf.cds_nf1VALOR_TOTAL_NOTA.AsFloat := dmnf.cds_nf1VALOR_PRODUTO.AsFloat +
       dmnf.cds_compraVALOR_ICMS.AsFloat + dmnf.cds_compraVALOR_FRETE.AsFloat +
       dmnf.cds_compraVALOR_SEGURO.AsFloat + dmnf.cds_compraOUTRAS_DESP.AsFloat;
    dmnf.cds_nf1VALOR_ICMS.AsFloat := dmnf.cds_compraVALOR_ICMS.AsFloat;
    if (dmnf.cds_nf1VALOR_ICMS.IsNull) then
      dmnf.cds_nf1VALOR_ICMS.AsFloat := 0;
    if (dmnf.cds_nf1VALOR_DESCONTO.IsNull) then
      dmnf.cds_nf1VALOR_DESCONTO.AsFloat := 0;
    dmnf.cds_nf1REDUZICMS.AsFloat;
    dmnf.cds_nf1VALOR_FRETE.AsFloat := dmnf.cds_compraVALOR_FRETE.AsFloat;
    dmnf.cds_nf1VALOR_SEGURO.AsFloat := dmnf.cds_compraVALOR_SEGURO.AsFloat;
    dmnf.cds_nf1OUTRAS_DESP.AsFloat := dmnf.cds_compraOUTRAS_DESP.AsFloat;
    dmnf.cds_nf1CODVENDA.AsInteger := codVendaFin;
    dmnf.cds_nf1CODCLIENTE.AsInteger := codCliFin;
    dmnf.cds_nf1FATURA.AsString := fatura_NF;
    if (listaFornecedores.Active) then
      listaFornecedores.Close;
    listaFornecedores.Params.ParamByName('pCodCli').AsInteger := codCliFin;
    listaFornecedores.Open;
    dmnf.cds_nf1CODCLIENTE.AsInteger := codCliFin;
    dmnf.cds_nf1NOMECLIENTE.AsString := listaFornecedoresRAZAOSOCIAL.AsString;
    dmnf.cds_nf1RAZAOSOCIAL.AsString := listaFornecedoresRAZAOSOCIAL.AsString;
    dmnf.cds_nf1CNPJCLI.AsString := listaFornecedoresCNPJ.AsString;
    dmnf.cds_nf1INSCCLI.AsString := listaFornecedoresINSCESTADUAL.AsString;
    dmnf.cds_nf1LOGRADOURO.AsString := listaFornecedoresLOGRADOURO.AsString;
    dmnf.cds_nf1CIDADECLI.AsString := listaFornecedoresCIDADE.AsString;
    dmnf.cds_nf1BAIRROCLI.AsString := listaFornecedoresBAIRRO.AsString;
    dmnf.cds_nf1CEPCLI.AsString := listaFornecedoresCEP.AsString;
    dmnf.cds_nf1FRETE.AsString := '2';
    dmnf.cds_nf1UFCLI.AsString := listaFornecedoresUF.AsString;
    dmnf.cds_nf1UF.AsString := listaFornecedoresUF.AsString;
    dmnf.cds_nf1TELEFONE.AsString := listaFornecedoresTELEFONE.AsString;
  // Calcula o peso
  if (dmnf.sqs_tit.Active) then
    dmnf.sqs_tit.Close;

   dmnf.sqs_tit.CommandText := 'SELECT SUM(m.QUANTIDADE * prod.PESO_QTDE) FROM MOVIMENTODETALHE m' +
                           ' inner join produtos prod on prod.codproduto = m.codproduto ' +
                           ' WHERE m.CODMOVIMENTO = ' +
                           IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
  dmnf.sqs_tit.Open;
  dmnf.cds_nf1PESOBRUTO.AsFloat := dmnf.sqs_tit.Fields[0].AsFloat;
  dmnf.cds_nf1PESOLIQUIDO.AsFloat := dmnf.sqs_tit.Fields[0].AsFloat;

  dmnf.sqs_tit.Close;

    prazo := listaFornecedoresPRAZOPAGAMENTO.AsFloat;
    if (listaFornecedoresCODTRANSP.AsInteger > 0 ) then
    begin
        if (proc_transp.Active) then
          proc_transp.Close;
        proc_transp.Params[0].AsInteger := listaFornecedoresCODTRANSP.AsInteger;
        proc_transp.Open;
        dmnf.cds_nf1CODTRANSP.AsInteger := proc_transpCODTRANSP.AsInteger;
        dmnf.cds_nf1NOMETRANSP.AsString := proc_transpNOMETRANSP.AsString;
        dmnf.cds_nf1UF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
        dmnf.cds_nf1FRETE.AsString := proc_transpFRETE.AsString;
        dmnf.cds_nf1UF_VEICULO_TRANSP.AsString := proc_transpUF_VEICULO_TRANSP.AsString;
        dmnf.cds_nf1CNPJ_CPF.AsString := proc_transpCNPJ_CPF.AsString;
        dmnf.cds_nf1END_TRANSP.AsString := proc_transpEND_TRANSP.AsString;
        dmnf.cds_nf1CIDADE_TRANSP.AsString := proc_transpCIDADE_TRANSP.AsString;
        dmnf.cds_nf1UF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
        dmnf.cds_nf1INSCRICAOESTADUAL.AsString := proc_transpINSCRICAOESTADUAL.AsString;
        dmnf.cds_nf1PLACATRANSP.AsString := proc_transpPLACATRANSP.AsString;
        dmnf.cds_nf1CORPONF1.AsString  := proc_transpCORPONF1.AsString;
        dmnf.cds_nf1CORPONF2.AsString  := proc_transpCORPONF2.AsString;
        dmnf.cds_nf1CORPONF3.AsString  := proc_transpCORPONF3.AsString;
        dmnf.cds_nf1CORPONF4.AsString  := proc_transpCORPONF4.AsString;
        proc_transp.Close;
    end;
    listaFornecedores.Close;
    btnGravar.click;
    if (dmnf.cds_mov_det.Active) then
      dmnf.cds_mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_mov_det.Params[1].AsInteger := codMovFin;
    dmnf.cds_mov_det.Open;
  end
  else begin
    // Pego os parametros para Lanç. Entrada
    CarregaParametros;
    incluiSAida;
  end;
end;

procedure TfNotaFc.BitBtn3Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dmnf.scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if (fProcurar.ShowModal=mrOk) then
    begin
     dmnf.cds_compra.Edit;
     dmnf.cds_nf1.Edit;
     dmnf.cds_compraSERIE.AsString       := dmnf.scds_serie_procSERIE.AsString;
     dmnf.cds_compraNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
     dmnf.cds_nf1NOTASERIE.AsInteger     := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
     dmnf.cds_nf1NotaFISCAL.AsInteger    := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
     dmnf.cds_nf1SERIE.AsString          := dmnf.scds_serie_procSERIE.AsString;
    end;
   finally
    fProcurar.Free;
   end;
   if (JvPageControl1.ActivePage = TabNF) then
     DBEdit2.SetFocus
   else
     DBEdit37.SetFocus;
end;

procedure TfNotaFc.incluiEntrada;
begin
  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaFornecedor.Active) then
    dmnf.listaFornecedor.Open;
  dmnf.listaFornecedor.First;
  cbCLiente.Clear;
  while not dmnf.listaFornecedor.Eof do
  begin
     cbCLiente.Items.Add(dmnf.listaFornecedorRAZAOSOCIAL.AsString);
     dmnf.listaFornecedor.Next;
  end;
  dmnf.listaFornecedor.Close;
  //*********************************
end;

procedure TfNotaFc.incluiSAida;
begin
  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaFornecedor.Active) then
    dmnf.listaFornecedor.Open;
  dmnf.listaFornecedor.First;
  cbCLiente.Clear;
  while not dmnf.listaFornecedor.Eof do
  begin
     cbCLiente.Items.Add(dmnf.listaFornecedorRAZAOSOCIAL.AsString);
     cbCLiente1.Items.Add(dmnf.listaFornecedorRAZAOSOCIAL.AsString);
     dmnf.listaFornecedor.Next;
  end;
  dmnf.listaFornecedor.Close;
  //Populo DBGrid com Produtos
  incluiMovimento;
  incluiCompra;
  incluiNotaFiscal;
end;

procedure TfNotaFc.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fNotaFc));
  JvPageControl1.ActivePage := TabNF;
  TabSheet1.TabVisible := False;

  if (DM.tipoCompra = 'DEVOLUCAO') then
  begin
    MMJPanel2.Background.EndColor := clOlive;
  end;
  if (DM.tipoCompra = 'COMPRA') then
  begin
    MMJPanel2.Background.EndColor := clTeal;
  end;

  if (codMovFin > 0) then
  begin
    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := codMovFin;
    dmnf.cds_Movimento.Open;

    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := codMovFin;
    dmnf.cds_Mov_det.Open;

    if (dmnf.cds_Mov_detPAGOU.AsString = 'M') then
      calcman.Checked := True;

    //mostra compra
    if (dmnf.cds_compra.Active) then
      dmnf.cds_compra.Close;
    dmnf.cds_compra.Params[0].Clear;
    dmnf.cds_compra.Params[1].AsInteger := codMovFin;
    dmnf.cds_compra.Open;
    if (not dmnf.cds_compra.IsEmpty) then
      codVendaFin := dmnf.cds_compraCODCOMPRA.AsInteger;
    //Mostra NF
    if (dmnf.cds_nf1.Active) then
      dmnf.cds_nf1.Close;
    dmnf.cds_nf1.Params[0].Clear;
    dmnf.cds_nf1.Params[1].AsInteger := codVendaFin;
    dmnf.cds_nf1.Open;

    if (not  dm.cds_empresa.Active) then
      dm.cds_empresa.open;
    if ((dmnf.cds_nf1.IsEmpty) and (codVendaFin > 0)) then
      btnIncluir.Click;
  end;
end;

procedure TfNotaFc.incluiMovimento;
begin
  if DMNF.DtSrc.DataSet.State in [dsInactive] then
    DMNF.DtSrc.DataSet.Open;
  DMNF.DtSrc.DataSet.Append;
  DMNF.cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
  DMNF.cds_MovimentoDESCNATUREZA.AsString := natureza;
  DMNF.cds_MovimentoCODCLIENTE.AsInteger := 0;
  DMNF.cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
  DMNF.cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
  DMNF.cds_MovimentoCOD_VEICULO.AsInteger := 0;
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

procedure TfNotaFc.incluiNotaFiscal;
begin
  if (not dmnf.cds_nf1.Active) then
     dmnf.cds_nf1.Open;
  dmnf.cds_nf1.Append;
  dmnf.cds_nf1NOTASERIE.AsString := IntToStr(dmnf.cds_compraNOTAFISCAL.AsInteger);
end;

procedure TfNotaFc.incluiCompra;
begin
  if DMNF.DtSrc_Compra.DataSet.State in [dsInactive] then
  begin
    DMNF.DtSrc_Compra.DataSet.Active;
    DMNF.DtSrc_Compra.DataSet.Open;
    DMNF.DtSrc_Compra.DataSet.Insert;
    DMNF.DtSrc_Compra.DataSet.Append;
  end;

  if DMNF.DtSrc_Compra.DataSet.State in [dsBrowse] then
    DMNF.DtSrc_Compra.DataSet.Append;

  DMNF.cds_compraDATASISTEMA.AsDateTime := Now;
  DMNF.cds_compraDESCONTO.AsFloat := 0;
  DMNF.cds_compraMULTA_JUROS.AsFloat := 0;
  DMNF.cds_compraENTRADA.AsFloat := 0;
  DMNF.cds_compraVALOR_PAGAR.AsFloat := 0;
  DMNF.cds_compraAPAGAR.AsFloat := 0;
  DMNF.cds_compraN_PARCELA.AsInteger := 1;
  DMNF.cds_compraBANCO.AsInteger := 0;
  DMNF.cds_compraDATAcompra.AsDateTime := now;
  DMNF.cds_compraDATAVENCIMENTO.AsDateTime := now;
  DMNF.cds_compraSTATUS.AsInteger:=0;

  dbeSerie.Text := '';
  if (not Dm.parametro.Active) then
    dm.parametro.Open;
  if (dbeSerie.Text = '') then
  begin
    dm.parametro.Locate('PARAMETRO', 'SERIEPADRAO', [loCaseInsensitive]);
    dbeSerie.Text := dm.parametroDADOS.AsString;
  end;
  DMNF.cds_compraSERIE.AsString := dbeSerie.Text;
  { 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----}
  dbeUsuario.Text := IntToStr(cod_vendedor_padrao);
  //dbEdit68.Text := nome_vendedor_padrao;
  { ---- ********************************************************************* ----}
//   buscaserieNF;

end;

procedure TfNotaFc.buscaserieNF;
begin
  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
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
      if DMNF.scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        //btnSerie.Click;
        exit;
      end;
      DMNF.cds_compraSERIE.AsString := DMNF.scds_serie_procSERIE.AsString;
      DMNF.cds_compraNOTAFISCAL.AsInteger := DMNF.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;
end;

procedure TfNotaFc.CarregaParametros;
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
  {------Pesquisando na tab Parametro se usa Comissão por compra---------}
   { if (dm.parametro.Locate('PARAMETRO','COMISSAO compra',[loCaseInsensitive])) then
    begin
      if dm.parametroCONFIGURADO.AsString = 'S' then
      begin
        ComboBox2.Visible := true;
        ComboBox2.Items.Clear;
        Label17.Visible := True;
        if DMNF.cds_cm.Active then
           DMNF.cds_cm.Close;
        DMNF.cds_cm.Params[0].Clear;
        DMNF.cds_cm.Params[1].AsInteger := 9999999;
        DMNF.cds_cm.Open;
        DMNF.cds_cm.First;
        // populo a combobox
        while not DMNF.cds_cm.Eof do
        begin
          ComboBox2.Items.Add(DMNF.cds_cmCODIGO.AsString);
          DMNF.cds_cm.Next;
        end;
      end;
    end;
    }
  {------Pesquisando na tab Parametro se usa Comissão por produto---------}
   { if (dm.parametro.Locate('PARAMETRO','COMISSAO PRODUTO', [loCaseInsensitive])) then
    begin
      if dm.parametroDADOS.AsString = 'S' then
      begin
        label4.Caption := 'CM';
        if DMNF.cds_cm.Active then
          DMNF.cds_cm.Close;
        DMNF.cds_cm.Params[0].Clear;
        DMNF.cds_cm.Params[1].AsInteger := 9999999;
        DMNF.cds_cm.Open;
      end;
    end;
    }
  {------Pesquisando na tab Parametro Código e Nome da Natureza da compra/Compra--------}
    if (dm.parametro.Locate('PARAMETRO','NATUREZANFCOMPRA',[loCaseInsensitive])) then
    begin
      Try
        cod_nat := strToint(dm.parametroDADOS.asString);
      except
        cod_nat := 20;
      end;
      natureza := dm.parametroD1.AsString;
    end;

end;

procedure TfNotaFc.cbCLienteChange(Sender: TObject);
begin
 if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  if (cbCLiente.Text <> '') then
  begin
    if (listaFornecedor.Active) then
      listaFornecedor.Close;
    listaFornecedor.Params[0].AsString := cbCLiente.Text;
    listaFornecedor.Open;
    if (dmnf.cds_Movimento.State in [dsBrowse]) then
      dmnf.cds_Movimento.Edit;
    dmnf.cds_nf1CODCLIENTE.AsInteger := listaFornecedorCODFORNECEDOR.AsInteger;
    dmnf.cds_MovimentoCODFORNECEDOR.AsInteger := listaFornecedorCODFORNECEDOR.AsInteger;
    //dmnf.cds_compraCODFornecedor.AsInteger := listaFornecedorCODFORNECEDOR.AsInteger;;
    dmnf.cds_nf1CNPJCLI.AsString := listaFornecedorCNPJ.AsString;
    dmnf.cds_nf1INSCCLI.AsString := listaFornecedorINSCESTADUAL.AsString;
    dmnf.cds_nf1LOGRADOURO.AsString := listaFornecedorLOGRADOURO.AsString;
    dmnf.cds_nf1CIDADECLI.AsString := listaFornecedorCIDADE.AsString;
    dmnf.cds_nf1BAIRROCLI.AsString := listaFornecedorBAIRRO.AsString;
    dmnf.cds_nf1CEPCLI.AsString := listaFornecedorCEP.AsString;
    dmnf.cds_nf1UFCLI.AsString := listaFornecedorUF.AsString;
    dmnf.cds_nf1TELEFONE.AsString := listaFornecedorTELEFONE.AsString;
    prazo := listaFornecedorPRAZOPAGAMENTO.AsFloat;

    if (listaFornecedorCODTRANSP.AsInteger > 0 ) then
    begin
      if (proc_transp.Active) then
        proc_transp.Close;
      proc_transp.Params[0].AsInteger := listaFornecedorCODTRANSP.AsInteger;
      proc_transp.Open;
      dmnf.cds_nf1CODTRANSP.AsInteger := proc_transpCODTRANSP.AsInteger;
      dmnf.cds_nf1NOMETRANSP.AsString := proc_transpNOMETRANSP.AsString;
      dmnf.cds_nf1UF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
      dmnf.cds_nf1FRETE.AsString := proc_transpFRETE.AsString;
      dmnf.cds_nf1UF_VEICULO_TRANSP.AsString := proc_transpUF_VEICULO_TRANSP.AsString;
      dmnf.cds_nf1CNPJ_CPF.AsString := proc_transpCNPJ_CPF.AsString;
      dmnf.cds_nf1END_TRANSP.AsString := proc_transpEND_TRANSP.AsString;
      dmnf.cds_nf1CIDADE_TRANSP.AsString := proc_transpCIDADE_TRANSP.AsString;
      dmnf.cds_nf1UF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
      dmnf.cds_nf1INSCRICAOESTADUAL.AsString := proc_transpINSCRICAOESTADUAL.AsString;
      dmnf.cds_nf1PLACATRANSP.AsString := proc_transpPLACATRANSP.AsString;
      dmnf.cds_nf1CORPONF1.AsString  := proc_transpCORPONF1.AsString;
      dmnf.cds_nf1CORPONF2.AsString  := proc_transpCORPONF2.AsString;
      dmnf.cds_nf1CORPONF3.AsString  := proc_transpCORPONF3.AsString;
      dmnf.cds_nf1CORPONF4.AsString  := proc_transpCORPONF4.AsString;
      proc_transp.Close;
    end;

    listaFornecedor.Close;
  end;
end;

procedure TfNotaFc.cbNaturezaChange(Sender: TObject);
begin
  if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFNOME',cbNatureza.Text,[loCaseInsensitive]);
    dmnf.cds_nf1CFOP.AsString := DMNF.listaCFOPCFCOD.AsString;
    DMNF.listaCFOP.Close;
  end;
  carregaNaturezaOperacao;
end;

procedure TfNotaFc.cbCFOPChange(Sender: TObject);
begin
  if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFCOD',cbCFOP.Text,[loCaseInsensitive]);
    dmnf.cds_nf1DESCNATUREZA.AsString := DMNF.listaCFOPCFNOME.AsString;
    DMNF.listaCFOP.Close;
  end;
  carregaDadosAdicionais;
  carregaNaturezaOperacao;
end;

procedure TfNotaFc.btnSairClick(Sender: TObject);
begin
  dm.cds_empresa.Close;
  close;
end;

procedure TfNotaFc.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfNotaFc.BitBtn1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
  fProcurar.RadioGroup2.Visible := True;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    varForm1 := 'compra';
    cod_forn := 0;
    nome_Forn := '';
   fProcurar.ShowModal;
   if DMNF.DtSrc_NF1.State=dsBrowse then
     DMNF.DtSrc_NF1.Edit;
   DMNF.cds_nf1CODCLIENTE.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
   DMNF.cds_nf1RAZAOSOCIAL.AsString := dm.scds_forn_procRAZAOSOCIAL.AsString;
   finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
   end;
//  end;
    if (listaFornecedor.Active) then
      listaFornecedor.Close;
    listaFornecedor.Params[0].AsString := cbCLiente.Text;
    listaFornecedor.Open;
    dmnf.cds_nf1CODCLIENTE.AsInteger := listaFornecedorCODFORNECEDOR.AsInteger;
    dmnf.cds_MovimentoCODFORNECEDOR.AsInteger := listaFornecedorCODFORNECEDOR.AsInteger;
    dmnf.cds_nf1CNPJCLI.AsString := listaFornecedorCNPJ.AsString;
    dmnf.cds_nf1INSCCLI.AsString := listaFornecedorINSCESTADUAL.AsString;
    dmnf.cds_nf1LOGRADOURO.AsString := listaFornecedorLOGRADOURO.AsString;
    dmnf.cds_nf1CIDADECLI.AsString := listaFornecedorCIDADE.AsString;
    dmnf.cds_nf1BAIRROCLI.AsString := listaFornecedorBAIRRO.AsString;
    dmnf.cds_nf1CEPCLI.AsString := listaFornecedorCEP.AsString;
    dmnf.cds_nf1UFCLI.AsString := listaFornecedorUF.AsString;
    dmnf.cds_nf1TELEFONE.AsString := listaFornecedorTELEFONE.AsString;
    prazo := listaFornecedorPRAZOPAGAMENTO.AsFloat;
end;

procedure TfNotaFc.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
// cbCFOPChange(Sender);
end;

procedure TfNotaFc.btnCancelarClick(Sender: TObject);
begin
    DMNF.cds_nf1.Cancel;
    dmnf.cds_compra.Cancel;
    DMNF.cds_Mov_det.Cancel;
    DMNF.cds_Movimento.Cancel;
    {DMNF.cds_nf1.Close;
    dmnf.cds_compra.Close;
    DMNF.cds_Mov_det.Close;
    DMNF.cds_Movimento.Close;}
end;

procedure TfNotaFc.BitBtn5Click(Sender: TObject);
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

procedure TfNotaFc.cbTransportadoraChange(Sender: TObject);
begin
 if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  if (cbTransportadora.Text <> '') then
  begin
     DMNF.listaTransp.Open;
     DMNF.listaTransp.Locate('FANTASIA',cbTransportadora.Text,[loCaseInsensitive]);
     dmnf.cds_nf1PLACATRANSP.AsString := DMNF.listaTranspPLACATRANSP.AsString;
     dmnf.cds_nf1UF_VEICULO_TRANSP.AsString := DMNF.listaTranspUF_VEICULO_TRANSP.AsString;
     dmnf.cds_nf1CNPJ_CPF.AsString := DMNF.listaTranspCNPJ_CPF.AsString;
     dmnf.cds_nf1END_TRANSP.AsString := DMNF.listaTranspEND_TRANSP.AsString;
     dmnf.cds_nf1CIDADE_TRANSP.AsString := DMNF.listaTranspCIDADE_TRANSP.AsString;
     dmnf.cds_nf1UF_TRANSP.AsString := DMNF.listaTranspUF_TRANSP.AsString;
     DMNF.listaTransp.Close;
  end;
end;

procedure TfNotaFc.BitBtn2Click(Sender: TObject);
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

procedure TfNotaFc.btnGravarClick(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
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
    end
    else
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET PAGOU = NULL ' +
        ' WHERE CODMOVIMENTO = ' + InttoStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

  if (dmnf.cds_nf1NOTASERIE.AsString = '0') then
  begin
    MessageDlg('Informe o número da Nota.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (calcman.Checked = True) then
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
  if (DMNF.DtSrc_Compra.State in [dsInsert, dsEdit]) then
    gravavenda;
  //Salvo Nota Fiscal
  if (DMNF.DtSrc_NF1.State in [dsInsert, dsEdit]) then
    gravanotafiscal;

  if (movEstoque = 'S') then
  begin
    Try
      dmnf.baixaEstoque(dmnf.cds_compraCODMOVIMENTO.AsInteger, dmnf.cds_compraDATACOMPRA.AsDateTime, 'ENTRADA');
    Except
      MessageDlg('Processo de Baixa no Estoque não realizado CORRETAMENTE.', mtWarning, [mbOK], 0);
    end;
  end;

  dmnf.cds_Mov_det.close;
  dmnf.cds_Mov_det.Params[0].Clear;
  dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_compraCODMOVIMENTO.AsInteger;
  dmnf.cds_Mov_det.Open;

  if (calcman.Checked = True) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    cm := 'ALTER TRIGGER CALCULA_ICMS_ST ACTIVE;';
    dm.sqlsisAdimin.ExecuteDirect(cm);
    dm.sqlsisAdimin.Commit(TD);
  end;
end;

procedure TfNotaFc.gravamov_detalhe;
begin
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
           dmnf.cds_Mov_detCODPRODUTO.AsInteger := 1;
        dmnf.cds_Mov_detCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
        IF (dmnf.cds_Mov_detQTDE_ALT.IsNull) then
           dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        codmovdet := dm.c_6_genid.Fields[0].AsInteger;
        {if ComboBox2.Text <> '' then
        begin
           dmnf.cds_cm.Locate('CODIGO', ComboBox2.Text,[loPartialKey]);
           dmnf.cds_Mov_detCOD_COMISSAO.AsInteger := dmnf.cds_cmCOD_COMISSAO.AsInteger;
           //dmnf.cds_Mov_detCODIGO.AsString := dmnf.cds_cmCODIGO.AsString;
        end;}
        dmnf.cds_Mov_detCODDETALHE.AsInteger := codmovdet;
        dmnf.cds_Mov_det.post;
      end;
      dmnf.cds_Mov_det.Next;
    end;
    dmnf.cds_Mov_det.ApplyUpdates(0);
end;

procedure TfNotaFc.gravamovimento;
begin
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
        dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := strToint(dm.cds_parametroDADOS.AsString);

      dm.cds_parametro.Close;
      DMNF.cds_MovimentoCODNATUREZA.AsInteger := 20;
      DMNF.cds_MovimentoDESCNATUREZA.AsString := 'NOTA FISCAL COMPRA';
     //*******************************************************************************
   end;
   dmnf.cds_Movimento.ApplyUpdates(0);
end;

procedure TfNotaFc.gravavenda;
//var  strSql, strTit,tipoMov: String;
//     diferenca : double;
begin
  if (DBEdit33.Text = '0') then
  begin
    MessageDlg('Informe o n. da Nota Fiscal', mtError, [mbOK], 0);
    DBEdit33.SetFocus;
    exit;
  end;
    dmnf.cds_compraNOTAFISCAL.AsInteger := StrToint(dmnf.cds_nf1NOTASERIE.AsString);
    dmnf.cds_compraCODFORNECEDOR.AsInteger := DMNF.cds_MovimentoCODFORNECEDOR.AsInteger;
    dmnf.cds_compraCODUSUARIO.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    dmnf.cds_compraCODCOMPRADOR.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    dmnf.cds_compraDATACOMPRA.AsDateTime := DMNF.cds_MovimentoDATAMOVIMENTO.AsDateTime;
    dmnf.cds_compraCODCCUSTO.AsInteger := DMNF.cds_MovimentoCODALMOXARIFADO.AsInteger;
    dmnf.cds_compraCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cds_compraCODUSUARIO.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    dmnf.cds_compraNOTAFISCAL.AsInteger := StrToInt(dmnf.cds_nf1NOTASERIE.asString);
    dmnf.cds_compraBANCO.AsInteger := 0;

 {   if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;

   if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;
   dmnf.sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) - ((QTDE_ALT/100)*(QUANTIDADE * PRECO))) FROM MOVIMENTODETALHE' +
                           ' WHERE CODMOVIMENTO = ' +
                           IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
  dmnf.sqs_tit.Open;
  if (geraTitulo = 'S') then
  begin
    dmnf.cds_compraVALOR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
    dmnf.cds_compraVALOR_PAGAR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  end
  else begin
    dmnf.cds_compraVALOR.AsCurrency       := 0;
    dmnf.cds_compraVALOR_PAGAR.AsCurrency := 0;
  end;

  vrr := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  dmnf.sqs_tit.Close;}

  if (codVendaFin = 0) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_COMPRA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cds_compraCODCOMPRA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
//if (geraTitulo = 'S') then
//  alteraVlrVenda;

  {dmnf.cds_compraVALOR.AsFloat := dmnf.cds_compraVALOR.AsFloat +
    dmnf.cds_compraVALOR_FRETE.AsFloat +
    dmnf.cds_compraVALOR_SEGURO.AsFloat +
    dmnf.cds_compraOUTRAS_DESP.AsFloat +
    dmnf.cds_compraVALOR_IPI.AsFloat;
  dmnf.cds_compraAPAGAR.AsFloat := dmnf.cds_compraVALOR.AsFloat -
    dmnf.cds_compraENTRADA.AsFloat + dmnf.cds_compraMULTA_JUROS.AsFloat -
    dmnf.cds_compraDESCONTO.AsFloat;}

  dmnf.cds_compra.ApplyUpdates(0);

  if not dmnf.scds_serie_proc.Active then
  begin
     dmnf.scds_serie_proc.Params[0].AsString := dbeSerie.Text;
     dmnf.scds_serie_proc.Open;
  end;
  if (not dmnf.scds_serie_proc.IsEmpty) then
  if (dmnf.cds_compraNOTAFISCAL.AsInteger > dmnf.scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    dmnf.scds_serie_proc.Edit;
    dmnf.scds_serie_procULTIMO_NUMERO.AsInteger := dmnf.cds_compraNOTAFISCAL.AsInteger;
    dmnf.scds_serie_proc.ApplyUpdates(0);
  end;
  dmnf.scds_serie_proc.Close;
end;

procedure TfNotaFc.BitBtn4Click(Sender: TObject);
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
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nf1NUMNF.AsInteger;
    if (CheckBox1.Checked = True) then
      dmnf.repdm.Report.Params[1].Value := memo1.Text;
    dmnf.repdm.Execute;
  except
    // deu erro na impressão então para aqui.
  end;
  if (dmnf.cds_nf1.State in [dsBrowse]) then
    dmnf.cds_nf1.Edit;
  dmnf.cds_nf1IMPRESSA.AsString := 'S';
  dmnf.cds_nf1.ApplyUpdates(0);
end;

procedure TfNotaFc.btnProcurarClick(Sender: TObject);
var varsql:string;
begin
 	fFiltroMov_NFcompra := TfFiltroMov_NFcompra.Create(Application);
	try
    if (not dmnf.cds_ccusto.Active) then
      dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
      fFiltroMov_NFcompra.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
      dmnf.cds_ccusto.Next;
    end;

     if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
     dm.cds_parametro.Params[0].AsString := 'NATUREZANFCOMPRA';
     dm.cds_parametro.Open;

     if (dm.cds_parametro.IsEmpty) then
     begin
       varsql :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS) ' ;
       varsql := varsql + 'values (''NATUREZANFCOMPRA'',''S'',''20'')';
       dm.sqlsisAdimin.executedirect(varsql);
     end;
     fFiltroMov_NFcompra.Edit3.Text := dm.cds_parametroDADOS.AsString;
     fFiltroMov_NFcompra.Edit4.Text := dm.cds_parametroD1.AsString;
     dm.cds_parametro.Close;

     fFiltroMov_NFcompra.ShowModal;

     dmnf.cds_Movimento.Close;
     dmnf.cds_Movimento.Params[0].AsInteger := fFiltroMov_NFcompra.cod_mov;
     dmnf.cds_Movimento.Open;

     dmnf.cds_Mov_det.Close;
     dmnf.cds_Mov_det.Params[0].Clear;
     dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
     dmnf.cds_Mov_det.Open;

     if (dmnf.cds_Mov_detPAGOU.AsString = 'M') then
       calcman.Checked := True;

      //mostra venda
     if (dmnf.cds_Compra.Active) then
       dmnf.cds_Compra.Close;
     dmnf.cds_Compra.Params[0].Clear;
     dmnf.cds_Compra.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.asInteger;
     dmnf.cds_Compra.Open;

     //Mostra NF
     if (dmnf.cds_nf1.Active) then
       dmnf.cds_nf1.Close;
     dmnf.cds_nf1.Params[0].Clear;
     dmnf.cds_nf1.Params[1].AsInteger := dmnf.cds_CompraCODCOMPRA.asInteger;
     dmnf.cds_nf1.Open;

     if (not  dm.cds_empresa.Active) then
       dm.cds_empresa.open;

     codVendaFin := dmnf.cds_compraCODCOMPRA.AsInteger;       
	finally
		fFiltroMov_NFcompra.Free;
	end;
end;

procedure TfNotaFc.gravanotafiscal;
var nfnum : integer;
begin
 nfnum := 0;
 // Gravo a NF
  if (cbCFOP.text = '') then
  begin
    MessageDlg('Informe o CFOP!',mtWarning, [mbOK], 0);
    dbedit5.SetFocus;
    exit;
  end;
  if (dmnf.cds_nf1UF.AsString = '') then
  begin
    {** Abro o Cadastro do Clientes para adicionar o estado **}
  end;
  // salvo a Nota Fiscal
  if (dmnf.DtSrc_NF1.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cds_nf1NUMNF.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    nfnum := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    dmnf.cds_nf1CODVENDA.AsInteger := dmnf.cds_compraCODCOMPRA.AsInteger;
  end;
  if (nfnum = 0) then
    nfnum := dmnf.cds_nf1NUMNF.AsInteger;
//  if (parametroNF <> 'S') then
//    alteraVlrVenda;
  dmnf.cds_nf1.ApplyUpdates(0);
  // Calcula ICMS - IPI
  if (not calcman.Checked) then
    calculaicms(dmnf.cds_nf1UF.AsString);
  DMNF.cds_Mov_det.Refresh;
  dmnf.cds_nf1.close;
  dmnf.cds_nf1.Params[0].AsInteger := nfnum;
  dmnf.cds_nf1.Params[1].Clear;
  dmnf.cds_nf1.open;
  dmnf.cds_nf1.Refresh;
  dmnf.cds_Mov_det.Open;
  dmnf.cds_compra.Close;
  dmnf.cds_compra.Params[0].AsInteger := dmnf.cds_nf1CODVENDA.AsInteger;
  dmnf.cds_compra.Open;
end;

procedure TfNotaFc.calculaicms(Estado: String);
var str_sql: string;
begin
  Try
    if (dmnf.sds_calculo.Active) then
      dmnf.sds_calculo.Close;
    str_sql := 'EXECUTE PROCEDURE CALCULA_ICMS(';
    // NUMNF
    str_sql := str_sql + IntToStr(dmnf.cds_nf1NUMNF.asInteger);
    // UF
    str_sql := str_sql + ',''' + dmnf.cds_nf1UFCLI.AsString + '''';
    // CFOP
    str_sql := str_sql + ',''' + dmnf.cds_nf1CFOP.AsString + '''';
    // Valor Frete
    DecimalSeparator := '.';
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nf1VALOR_FRETE.AsFloat);
    // Valor Seguro
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nf1VALOR_SEGURO.AsFloat);
    // Valor_Outros
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nf1OUTRAS_DESP.AsFloat);
    // Total
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nf1VALOR_PRODUTO.AsFloat);
    if (Estado = 'OUTROS') then
    begin
      str_sql := str_sql + ',''' + 'S' + '''';
      str_sql := str_sql + ', ' + FloatToStr(dmnf.cds_nf1ICMS.AsFloat);
      str_sql := str_sql + ', ' + FloatToStr(dmnf.cds_nf1REDUZICMS.AsFloat);
    end
    else begin
      str_sql := str_sql + ',''' + 'N' + '''';
      str_sql := str_sql + ', 0';
      str_sql := str_sql + ', 0';
    end;
   // end;
    str_sql := str_sql + ')';
    DecimalSeparator := ',';
    dmnf.sds_calculo.CommandText := str_sql;
    dmnf.sds_calculo.ExecSQL();
  except
    DecimalSeparator := ',';
    MessageDlg('Erro no cálculo!', mtError, [mbOK], 0);
  end;

end;

procedure TfNotaFc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dmnf.cds_nf1.State in [dsInsert, dsEdit]) then
      dmnf.cds_nf1.Cancel;
  if (dmnf.cds_compra.State in [dsInsert, dsEdit]) then
      dmnf.cds_compra.Cancel;
  if (DMNF.cds_Mov_det.State in [dsInsert, dsEdit]) then
      DMNF.cds_Mov_det.Cancel;
  if (DMNF.cds_Movimento.State in [dsInsert, dsEdit]) then
      DMNF.cds_Movimento.Cancel;
  dmnf.cds_nf1.Close;
  dmnf.cds_compra.Close;
  DMNF.cds_Mov_det.Close;
  DMNF.cds_Movimento.Close;
end;

procedure TfNotaFc.somavalores;
var
  varTotalnota : double;
begin
  if(not calcman.Checked)then
  begin
     varTotalnota :=  dmnf.cds_nf1VALOR_FRETE.Value
                    + dmnf.cds_nf1VALOR_SEGURO.Value + dmnf.cds_nf1OUTRAS_DESP.Value
                    + dmnf.cds_nf1VALOR_IPI.Value - dmnf.cds_nf1VALOR_DESCONTO.Value;
     if (varTotalnota <> dmnf.cds_nf1VALOR_TOTAL_NOTA.value) then
         dmnf.cds_nf1VALOR_TOTAL_NOTA.value := dmnf.cds_nf1VALOR_PRODUTO.value + varTotalnota;
  end;         
end;

procedure TfNotaFc.DBEdit11Change(Sender: TObject);
begin
  if (dmnf.cds_nf1.State in [dsInsert, dsEdit]) then
    somavalores;
end;

procedure TfNotaFc.btnExcluirClick(Sender: TObject);
begin
  formExclusao := TformExclusao.Create(Application);
  try
     formExclusao.ShowModal;
  finally
     formExclusao.Free;
  end;
end;

procedure TfNotaFc.BitBtn6Click(Sender: TObject);
begin
    dmnf.repdm.FileName := str_relatorio + 'nf_new_serv.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nf1NUMNF.AsInteger;
    dmnf.repdm.Execute;
end;

procedure TfNotaFc.cbCLiente1Change(Sender: TObject);
begin
 if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  if (cbCLiente1.Text <> '') then
  begin
    DMNF.listaFornecedor.Open;
    DMNF.listaFornecedor.Locate('RAZAOSOCIAL',cbCLiente1.Text,[loCaseInsensitive]);
    dmnf.cds_nf1CODCLIENTE.AsInteger := DMNF.listaFornecedorCODFORNECEDOR.AsInteger;
    dmnf.cds_MovimentoCODFORNECEDOR.AsInteger := DMNF.listaFornecedorCODFORNECEDOR.AsInteger;
    //dmnf.cds_compraCODFORNECEDOR.AsInteger := DMNF.listaFornecedorCODFORNECEDOR.AsInteger;;
    dmnf.cds_nf1CODCLIENTE.AsInteger := DMNF.listaFornecedorCODFORNECEDOR.AsInteger;
    dmnf.cds_nf1CNPJCLI.AsString := DMNF.listaFornecedorCNPJ.AsString;
    dmnf.cds_nf1INSCCLI.AsString := DMNF.listaFornecedorINSCESTADUAL.AsString;
    dmnf.cds_nf1LOGRADOURO.AsString := DMNF.listaFornecedorLOGRADOURO.AsString;
    dmnf.cds_nf1CIDADECLI.AsString := DMNF.listaFornecedorCIDADE.AsString;
    dmnf.cds_nf1BAIRROCLI.AsString := DMNF.listaFornecedorBAIRRO.AsString;
    dmnf.cds_nf1CEPCLI.AsString := DMNF.listaFornecedorCEP.AsString;
    dmnf.cds_nf1UFCLI.AsString := DMNF.listaFornecedorUF.AsString;
    dmnf.cds_nf1TELEFONE.AsString := DMNF.listaFornecedorTELEFONE.AsString;
    prazo := dmnf.listaFornecedorPRAZOPAGAMENTO.AsFloat;
    DMNF.listaFornecedor.Close;
  end;
end;

procedure TfNotaFc.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
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

procedure TfNotaFc.JvDBGrid1ColExit(Sender: TObject);
begin
{  if (JvDBGrid2.SelectedIndex = 1) then
  begin
   if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
   begin
     if (dmnf.cds_Mov_det.State in [dsBrowse]) then
       dmnf.cds_Mov_det.Edit;
     DMNF.listaProduto.open;
     if (DMNF.listaProduto.Locate('PRODUTO',dmnf.cds_Mov_detDESCPRODUTO.AsString,[loCaseInsensitive])) then
     begin
       dmnf.cds_Mov_detCODPRO.AsString := DMNF.listaProdutoCODPRO.AsString;
       DMNF.cds_Mov_detPRODUTO.Value := DMNF.listaProdutoPRODUTO.Value;
       // DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
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
           DMNF.cds_Mov_detPRECO.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat / DMNF.listaProdutoQTDE_PCT.AsFloat
        else
           DMNF.cds_Mov_detPRECO.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
        valorUnitario := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
        DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := DMNF.listaProdutoCODALMOXARIFADO.AsInteger;
        DMNF.cds_Mov_detALMOXARIFADO.AsString := DMNF.listaProdutoALMOXARIFADO.AsString;
        DMNF.cds_Mov_detICMS.AsFloat := DMNF.listaProdutoICMS.AsFloat;
     end
     else
       DMNF.cds_Mov_detCODPRODUTO.AsInteger := 1;
   end;
  end;}

    // está posicionado no campo Descrição do Produto

end;

procedure TfNotaFc.JvDBGrid1EditChange(Sender: TObject);
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

procedure TfNotaFc.alteraVlrVenda;
begin
  if (dmnf.cds_compra.state in [dsBrowse]) then
    dmnf.cds_compra.Edit;
  if (dmnf.cds_compraVALOR_ICMS.AsFloat <> dmnf.cds_nf1VALOR_ICMS.AsFloat) then
  begin
    dmnf.cds_compraVALOR_ICMS.AsFloat := dmnf.cds_nf1VALOR_ICMS.AsFloat
  end;
  if (dmnf.cds_compraVALOR_FRETE.AsFloat <> dmnf.cds_nf1VALOR_FRETE.AsFloat) then
  begin
    dmnf.cds_compraVALOR_FRETE.AsFloat := dmnf.cds_nf1VALOR_FRETE.AsFloat
  end;
  if (dmnf.cds_compraVALOR_SEGURO.AsFloat <> dmnf.cds_nf1VALOR_SEGURO.AsFloat) then
  begin
    dmnf.cds_compraVALOR_SEGURO.AsFloat := dmnf.cds_nf1VALOR_SEGURO.AsFloat
  end;
  if (dmnf.cds_compraOUTRAS_DESP.AsFloat <> dmnf.cds_nf1OUTRAS_DESP.AsFloat) then
  begin
    dmnf.cds_compraOUTRAS_DESP.AsFloat := dmnf.cds_nf1OUTRAS_DESP.AsFloat
  end;
  if (dmnf.cds_nf1VALOR_TOTAL_NOTA.AsFloat <> dmnf.cds_compraVALOR.AsFloat) then
    dmnf.cds_compraVALOR.AsFloat := dmnf.cds_nf1VALOR_TOTAL_NOTA.AsFloat;
  if (dmnf.cds_compra.State in [dsEdit, dsInsert]) then
    dmnf.cds_compra.ApplyUpdates(0);
end;

procedure TfNotaFc.BitBtn9Click(Sender: TObject);
var nunf: integer;
begin
  if (dmnf.cds_nf1.State in [dsEdit, dsInsert]) Then
  begin
    btnGravar.Click;
    exit;
  end;
  nunf := dmnf.cds_nf1NUMNF.AsInteger;
  // Calcula ICMS - IPI
  if( not calcman.Checked) then
    calculaicms('OUTROS');
  // Abre a tabela Novamente.
  dmnf.cds_nf1.Close;
  dmnf.cds_nf1.Params[0].AsInteger := nunf;
  dmnf.cds_nf1.Open;
end;

procedure TfNotaFc.JvDBGrid2EditChange(Sender: TObject);
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

procedure TfNotaFc.ExcluirItemNF1Click(Sender: TObject);
begin
 if  DMNF.DtSrc1.DataSet.State in [dsBrowse] then
 begin
   if DMNF.DtSrc.DataSet.State in [dsBrowse] then
     DMNF.DtSrc.DataSet.edit;
   if  MessageDlg('Confirma a exclusão do item ''' + DMNF.cds_Mov_detDESCPRODUTO.AsString + '''?', mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
   Begin
     if (dmnf.cds_nf1.State in [dsBrowse]) then
        dmnf.cds_nf1.Edit;
     dmnf.cds_nf1VALOR_PRODUTO.Value := dmnf.cds_nf1VALOR_PRODUTO.Value - DMNF.cds_Mov_detValorTotal.Value;
     //dmnf.cds_nf1VALOR_TOTAL_NOTA.Value := dmnf.cds_nf1VALOR_TOTAL_NOTA.Value - DMNF.cds_Mov_detValorTotal.Value;
     DMNF.DtSrc1.DataSet.Delete;
     if DMNF.DtSrc.DataSet.State in [dsBrowse] then
       DMNF.DtSrc.DataSet.edit;
     btnGravar.Click;
     if (dmnf.cds_nf1.State in [dsEdit]) then
     dmnf.cds_nf1.ApplyUpdates(0);
   end;
 end;
end;

procedure TfNotaFc.btnNotaFiscalClick(Sender: TObject);
begin
    fNFeletronica.PageControl1.ActivePage := fNFeletronica.NFe;
    fNFeletronica.cbTipoNota.ItemIndex := 0;
    fNFeletronica.ShowModal;
end;

Procedure TfNotaFc.carregaDadosAdicionais;
Begin
  //lblFatura.Caption := sCfopNAOENVFATURA.AsString;
  if (dmnf.cds_nf1.State in [dsEdit]) then
  begin
    if( (not DMNF.cds_nf1CFOP.IsNull)  or (dmnf.cds_nf1CFOP.AsString <> '') )then
    begin
      if( (not DMNF.cds_nf1UFCLI.IsNull)  or (DMNF.cds_nf1UFCLI.AsString <> '') )then
      begin
        if (sCFOP.Active) then
          sCFOP.Close;
        sCFOP.Params[1].asString :=  cbCFOP.Text;
        sCFOP.Params[0].asString :=  DBEdit7.Text;
        sCFOP.Params[2].asString :=  'J';
        sCFOP.Open;
        If ((sCfopDADOSADC1.AsString = '') or (not sCFOPDADOSADC1.IsNull) )then
          DMNF.cds_nf1CORPONF1.AsString := sCFOPDADOSADC1.AsString;
        If ((sCFOPDADOSADC2.AsString = '') or (not sCFOPDADOSADC2.IsNull) )then
          DMNF.cds_nf1CORPONF2.AsString := sCFOPDADOSADC2.AsString;
        If ((sCFOPDADOSADC3.AsString = '') or (not sCFOPDADOSADC3.IsNull) )then
          DMNF.cds_nf1CORPONF3.AsString := sCFOPDADOSADC3.AsString;
        If ((sCFOPDADOSADC4.AsString = '') or (not sCFOPDADOSADC4.IsNull) )then
          DMNF.cds_nf1CORPONF4.AsString := sCFOPDADOSADC4.AsString;
        If ((sCFOPDADOSADC5.AsString = '') or (not sCFOPDADOSADC5.IsNull) )then
          DMNF.cds_nf1CORPONF5.AsString := sCFOPDADOSADC5.AsString;
        If ((sCFOPDADOSADC6.AsString = '') or (not sCFOPDADOSADC6.IsNull) )then
          DMNF.cds_nf1CORPONF6.AsString := sCFOPDADOSADC6.AsString;
      end;
    end;
  end;
End;

procedure TfNotaFc.cbCFOPExit(Sender: TObject);
begin
  cbCFOPChange(Sender);
  SelectNext((Sender as TwinControl),True,True);
end;

procedure TfNotaFc.JvDBGrid1DblClick(Sender: TObject);
begin
  fDetalheNF := TfDetalheNF.Create(Application);
  try
    fDetalheNF.ShowModal;
  finally
    fDetalheNF.Free;
  end;
end;

procedure TfNotaFc.calcmanClick(Sender: TObject);
begin
 if DMNF.DtSrc_NF1.State in [dsBrowse] then
      DMNF.DtSrc_NF1.DataSet.Edit;
end;

procedure TfNotaFc.carregaNaturezaOperacao;
var sqlSql: String;
begin
  if (dm.sqlNatureza.Active) then
    dm.sqlNatureza.Close;
  sqlSql := dm.sqlNatureza.SQL.GetText;
  dm.sqlNatureza.SQL.Clear;
  dm.sqlNatureza.SQL.Add('SELECT NOPER.* FROM NATUREZAOPERACAO NOPER, ESTADO_ICMS ICMS '+
    ' WHERE (noper.CFOP_ESTADO = icms.CFOP) ' +
    '    or (noper.CFOP_FORA_ESTADO = icms.CFOP)' +
    '    or (noper.CFOP_INTERNACIONAL = icms.CFOP)' +
    '   and ((NOPER.CODNATUREZA = :pNat) or (:pNat = 0))');
  dm.sqlNatureza.ParamByName('pNat').AsInteger := 0;
  dm.sqlNatureza.Open;
  movEstoque := 'N';
  geraTitulo := 'N';
  lblNaturezaOperacao.Caption := '';
  if (not dm.sqlNatureza.IsEmpty) then
  begin
    if (dm.sqlNaturezaBAIXAMOVIMENTO.AsInteger = 0) then
      movEstoque := 'S';
    codNat     := dm.sqlNaturezaCODNATUREZA.AsInteger;
    if (dm.sqlNaturezaGERATITULO.AsInteger = 0) then
      geraTitulo := 'S';
    lblNaturezaOperacao.Caption := dm.sqlNaturezaDESCNATUREZA.AsString;
  end;
end;

procedure TfNotaFc.btnDIClick(Sender: TObject);
begin
  if dmnf.cds_Movimento.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Grave as modificações primeiro.', mtWarning, [mbOK], 0);
    Exit;
  end;
  fDadosImportacao := TfDadosImportacao.Create(Application);
  try
    fDadosImportacao.notaSerieDi       := dmnf.cds_nf1NOTASERIE.AsString;
    fDadosImportacao.codMovimentoDi    := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    fDadosImportacao.codExportadorDi   := dmnf.cds_nf1CODCLIENTE.AsInteger;
    fDadosImportacao.cdsDI.CommandText := 'SELECT DI_CODDI, DI_NUMDI, DI_DATA, ' +
    ' DI_LOCALDESEMB, DI_UFDESEMB, DI_DATADESEMB, DI_CODEXPORTADOR, ' +
    ' NOTASERIE, CODMOVIMENTO ' +
    '  FROM DECLARACAOIMPORTACAO ' +
    ' WHERE NOTASERIE = ' + QuotedStr(dmnf.cds_nf1NOTASERIE.AsString);
    fDadosImportacao.cdsDI.Open;
    fDadosImportacao.ShowModal;
  finally
    fDadosImportacao.Free;
  end;
end;

procedure TfNotaFc.cboFreteChange(Sender: TObject);
begin
 if DMNF.DtSrc_NF1.State in [dsBrowse] then
      DMNF.DtSrc_NF1.DataSet.Edit;
    DMNF.cds_nf1FRETE.AsString := IntToStr(cboFrete.ItemIndex);
end;

end.
