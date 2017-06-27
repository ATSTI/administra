unit uNFCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCheckBox, ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvDBRadioPanel, FMTBcd, DB, Provider, DBClient, SqlExpr,
  JvEdit, JvDBSearchEdit, MMJPanel, Buttons, ComCtrls, Mask, DBCtrls,
  JvExMask, JvToolEdit, JvDBLookup, JvDBLookupComboEdit, Grids, DBGrids,
  rpcompobase, rpvclreport, Printers, JvCombobox, JvDBSearchComboBox,
  dxCore, dxButton, JvExDBGrids, JvDBGrid, Menus;

type
  TfNFCompra = class(TForm)
    PageControl1: TPageControl;
    tabitens: TTabSheet;
    tabnf: TTabSheet;
    Label3: TLabel;
    dbeProduto: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    Label18: TLabel;
    BitBtn2: TBitBtn;
    dbeSerie: TDBEdit;
    Label7: TLabel;
    btnSerie: TBitBtn;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    cbConta: TComboBox;
    Label17: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    GroupBox4: TGroupBox;
    DBEdit21: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label29: TLabel;
    Label30: TLabel;
    GroupBox5: TGroupBox;
    Label31: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn9: TBitBtn;
    tabFinanceiro: TTabSheet;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label19: TLabel;
    Label27: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit27: TDBEdit;
    BitBtn6: TBitBtn;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    BitBtn5: TBitBtn;
    RadioButton1: TRadioButton;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    GroupBox2: TGroupBox;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    dbeUsuario: TDBEdit;
    DBEdit68: TDBEdit;
    MMJPanel1: TMMJPanel;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    MMJPanel2: TMMJPanel;
    Label2: TLabel;
    dbeCliente: TDBEdit;
    DBEdit67: TDBEdit;
    BitBtn1: TBitBtn;
    cbFinanceiro: TJvCheckBox;
    cbEstoque: TJvCheckBox;
    MMJPanel3: TMMJPanel;
    btnCancelarNF: TBitBtn;
    btnExcluirNF: TBitBtn;
    btnGravarNF: TBitBtn;
    btnIncluirNF: TBitBtn;
    MMJPanel4: TMMJPanel;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    GroupBox7: TGroupBox;
    DBEdit53: TDBEdit;
    Label62: TLabel;
    BitBtn7: TBitBtn;
    DBEdit46: TDBEdit;
    GroupBox1: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit54: TDBEdit;
    Label56: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label57: TLabel;
    DBEdit49: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label60: TLabel;
    DBEdit52: TDBEdit;
    Label61: TLabel;
    DBEdit28: TDBEdit;
    btnImprimirNF: TBitBtn;
    TabFornecedor: TTabSheet;
    MMJPanel7: TMMJPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn30: TBitBtn;
    Panel1: TPanel;
    BitBtn11: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    VCLReport1: TVCLReport;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit96: TDBEdit;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    DBEdit97: TDBEdit;
    BitBtn22: TBitBtn;
    GroupBox9: TGroupBox;
    ComboBox5: TComboBox;
    JvDBGrid1: TJvDBGrid;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    sNF: TSQLDataSet;
    dNF: TDataSetProvider;
    cNF: TClientDataSet;
    sNFNOTAFISCAL: TIntegerField;
    cNFNOTAFISCAL: TIntegerField;
    sds_nf: TSQLDataSet;
    sds_nfNOTASERIE: TStringField;
    sds_nfNUMNF: TIntegerField;
    sds_nfNATUREZA: TSmallintField;
    sds_nfQUANTIDADE: TFloatField;
    sds_nfMARCA: TStringField;
    sds_nfESPECIE: TStringField;
    sds_nfDTAEMISSAO: TDateField;
    sds_nfDTASAIDA: TDateField;
    sds_nfUF: TStringField;
    sds_nfCODVENDA: TIntegerField;
    sds_nfCODTRANSP: TIntegerField;
    sds_nfNUMERO: TStringField;
    sds_nfDESCNATUREZA: TStringField;
    sds_nfNOTAFISCAL: TIntegerField;
    sds_nfHORASAIDA: TTimeField;
    sds_nfDATA_SISTEMA: TSQLTimeStampField;
    sds_nfBASE_ICMS: TFloatField;
    sds_nfVALOR_ICMS: TFloatField;
    sds_nfBASE_ICMS_SUBST: TFloatField;
    sds_nfVALOR_ICMS_SUBST: TFloatField;
    sds_nfVALOR_PRODUTO: TFloatField;
    sds_nfVALOR_FRETE: TFloatField;
    sds_nfVALOR_SEGURO: TFloatField;
    sds_nfOUTRAS_DESP: TFloatField;
    sds_nfVALOR_IPI: TFloatField;
    sds_nfVALOR_TOTAL_NOTA: TFloatField;
    sds_nfCORPONF1: TStringField;
    sds_nfCORPONF2: TStringField;
    sds_nfCORPONF3: TStringField;
    sds_nfCORPONF4: TStringField;
    sds_nfCORPONF5: TStringField;
    sds_nfCORPONF6: TStringField;
    sds_nfCFOP: TStringField;
    sds_nfCODCLIENTE: TIntegerField;
    sds_nfNOMECLIENTE: TStringField;
    sds_nfPESOBRUTO: TBCDField;
    sds_nfPESOLIQUIDO: TBCDField;
    sds_nfFATURA: TStringField;
    sds_nfICMS: TFloatField;
    sds_nfREDUZICMS: TFloatField;
    sds_nfNOMETRANSP: TStringField;
    sds_nfPLACATRANSP: TStringField;
    sds_nfCNPJ_CPF: TStringField;
    sds_nfEND_TRANSP: TStringField;
    sds_nfCIDADE_TRANSP: TStringField;
    sds_nfUF_VEICULO_TRANSP: TStringField;
    sds_nfUF_TRANSP: TStringField;
    sds_nfFRETE: TStringField;
    sds_nfINSCRICAOESTADUAL: TStringField;
    sds_nfRAZAOSOCIAL: TStringField;
    sds_nfCNPJCLI: TStringField;
    sds_nfINSCCLI: TStringField;
    sds_nfLOGRADOURO: TStringField;
    sds_nfBAIRROCLI: TStringField;
    sds_nfCOMPLEMENTO: TStringField;
    sds_nfCIDADECLI: TStringField;
    sds_nfUFCLI: TStringField;
    sds_nfCEPCLI: TStringField;
    sds_nfTELEFONE: TStringField;
    sds_nfSTATUS: TStringField;
    sds_nfIMPRESSA: TStringField;
    dsp_nf: TDataSetProvider;
    cds_nf: TClientDataSet;
    cds_nfNOTASERIE: TStringField;
    cds_nfNUMNF: TIntegerField;
    cds_nfNATUREZA: TSmallintField;
    cds_nfQUANTIDADE: TFloatField;
    cds_nfMARCA: TStringField;
    cds_nfESPECIE: TStringField;
    cds_nfDTAEMISSAO: TDateField;
    cds_nfDTASAIDA: TDateField;
    cds_nfUF: TStringField;
    cds_nfCODVENDA: TIntegerField;
    cds_nfCODTRANSP: TIntegerField;
    cds_nfNOMETRANSP: TStringField;
    cds_nfPLACATRANSP: TStringField;
    cds_nfCNPJ_CPF: TStringField;
    cds_nfEND_TRANSP: TStringField;
    cds_nfCIDADE_TRANSP: TStringField;
    cds_nfUF_VEICULO_TRANSP: TStringField;
    cds_nfUF_TRANSP: TStringField;
    cds_nfFRETE: TStringField;
    cds_nfINSCRICAOESTADUAL: TStringField;
    cds_nfNUMERO: TStringField;
    cds_nfDESCNATUREZA: TStringField;
    cds_nfNOTAFISCAL: TIntegerField;
    cds_nfHORASAIDA: TTimeField;
    cds_nfDATA_SISTEMA: TSQLTimeStampField;
    cds_nfBASE_ICMS: TFloatField;
    cds_nfVALOR_ICMS: TFloatField;
    cds_nfBASE_ICMS_SUBST: TFloatField;
    cds_nfVALOR_ICMS_SUBST: TFloatField;
    cds_nfVALOR_PRODUTO: TFloatField;
    cds_nfVALOR_FRETE: TFloatField;
    cds_nfVALOR_SEGURO: TFloatField;
    cds_nfOUTRAS_DESP: TFloatField;
    cds_nfVALOR_IPI: TFloatField;
    cds_nfVALOR_TOTAL_NOTA: TFloatField;
    cds_nfCORPONF1: TStringField;
    cds_nfCORPONF2: TStringField;
    cds_nfCORPONF3: TStringField;
    cds_nfCORPONF4: TStringField;
    cds_nfCORPONF5: TStringField;
    cds_nfCORPONF6: TStringField;
    cds_nfCFOP: TStringField;
    cds_nfCODCLIENTE: TIntegerField;
    cds_nfNOMECLIENTE: TStringField;
    cds_nfPESOBRUTO: TBCDField;
    cds_nfPESOLIQUIDO: TBCDField;
    cds_nfFATURA: TStringField;
    cds_nfICMS: TFloatField;
    cds_nfREDUZICMS: TFloatField;
    cds_nfRAZAOSOCIAL: TStringField;
    cds_nfCNPJCLI: TStringField;
    cds_nfINSCCLI: TStringField;
    cds_nfLOGRADOURO: TStringField;
    cds_nfBAIRROCLI: TStringField;
    cds_nfCOMPLEMENTO: TStringField;
    cds_nfCIDADECLI: TStringField;
    cds_nfUFCLI: TStringField;
    cds_nfCEPCLI: TStringField;
    cds_nfTELEFONE: TStringField;
    cds_nfSTATUS: TStringField;
    cds_nfIMPRESSA: TStringField;
    DtSrc_NF: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure buscaserieNF;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBLookupComboEdit4Change(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbFinanceiroClick(Sender: TObject);
    procedure btnIncluirNFClick(Sender: TObject);
    procedure btnCancelarNFClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnGravarNFClick(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure btnIncluirCliClick(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnExcluirCliClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarcliClick(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure BitBtn30Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure cds_nfNewRecord(DataSet: TDataSet);
    procedure DtSrc_NFStateChange(Sender: TObject);
  private
    { Private declarations }
    usalote, matPrima, inseridoMatPrima, tipoVenda, jaCarregados: string;
    procedure buscaServico();
    procedure baixamatprimas(tipomat: string; codmovt: integer);
    Procedure incluimovimentoC;
    Procedure incluimovdetC;
    Procedure incluinfC;
    procedure procfornecedor;
    procedure gravamovimentoC;
    procedure gravamov_detalheC;
    procedure calcula_icms(Estado: String);
    procedure createEntrada;
    procedure CarregaParametrosC;
    procedure incluiCompra;
    procedure gravaCompra;
  public
      vrr : double;
    { Public declarations }
  end;

var
  fNFCompra: TfNFCompra;
  //Variaveis da venda
  valorUnitario: Double;
  codmovdet, codserv, codmd, centro_receita, cod_nat, cod_vendedor_padrao, cod_cli : integer;
  natureza, contas_pendentes, nome_vendedor_padrao, valor_fatura, fatura_NF: string;
  // variaveis da venda finalizar
  prazo, valor: double;
  terminal, data_movimento, varcancela : string;
  codigo_cliente, codigo_moviemento : integer;
  diasAumenta : integer;
  DtaTemp : TDateTime;

implementation

uses UDm, UDMNF, sCtrlResize, uUtils, ufprocura_prod, uProcurar,
  uProcurar_nf, uEstado, uRegiaoCadastro, uFiltroMovimento, uImpr_Boleto,
  uFiltroMov_compra, uLotes;

{$R *.dfm}

procedure TfNFCompra.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fNFCompra));
  PageControl1.ActivePage := tabitens;
  TabFornecedor.TabVisible := False;
  tabnf.TabVisible := True;
  usaLote := 'N';
  jaCarregados := 'NAO';
  if (dm.emppadrao <> '') then
  begin
    ComboBox5.Text := dm.emppadrao;
    ComboBox5.Enabled := False;
  end;
  if (cbFinanceiro.Checked = True) then
    tabFinanceiro.TabVisible := True
  else
    tabFinanceiro.TabVisible := False;  
end;

procedure TfNFCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
    
 if fLotes.cdslotes.Active then
     fLotes.cdslotes.Close;
  {if (DMNF.cds_cli.State in [dsInsert, dsEdit]) then
      DMNF.cds_cli.Cancel;
  if (dmnf.cds_cli.Active) then
      dmnf.cds_cli.Close; }
  if (cds_nf.State in [dsInsert, dsEdit]) then
      cds_nf.Cancel;
  if (DMNF.cds_venda.State in [dsInsert, dsEdit]) then
      DMNF.cds_venda.Cancel;
  if (DMNF.cds_Mov_det.State in [dsInsert, dsEdit]) then
      DMNF.cds_Mov_det.Cancel;
  if (DMNF.cds_Movimento.State in [dsInsert, dsEdit]) then
      DMNF.cds_Movimento.Cancel;
  cds_nf.Close;
  DMNF.cds_venda.Close;
  DMNF.cds_Mov_det.Close;
  DMNF.cds_Movimento.Close;
end;

procedure TfNFCompra.btnIncluirClick(Sender: TObject);
begin
  if (cds_nf.Active) then
      cds_nf.Close;

  if (dmnf.cdsCompra.Active) then
      dmnf.cdsCompra.Close;
  // Pego os parametros para Lanç. Entrada
  if (jaCarregados <> 'SIM') then
    CarregaParametrosC;
  incluimovimentoC;
  BitBtn1.Click;
end;

procedure TfNFCompra.incluimovdetC;
begin

end;

procedure TfNFCompra.incluimovimentoC;
begin
  if DMNF.DtSrc.DataSet.State in [dsInactive] then
    DMNF.DtSrc.DataSet.Open;
  DMNF.DtSrc.DataSet.Append;
  DMNF.cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
  DMNF.cds_MovimentoDESCNATUREZA.AsString := natureza;
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
  // Insert na table Compra
  incluiCompra;

  //incluinf;
  BitBtn1.Enabled := true;
  btnProdutoProcura.Enabled := true;
  BitBtn2.Enabled := true;
end;

procedure TfNFCompra.incluinfC;
begin
  cds_nf.Append;
  DBEdit15.SetFocus;
end;

procedure TfNFCompra.btnNovoClick(Sender: TObject);
begin
  {if (matPrima = 'SIM') then
    inseridoMatPrima := 'SIM'; }
  if DMNF.DtSrc1.State in [dsInsert, dsEdit] then
  begin
    if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
      DMNF.cds_Movimento.Edit;
    DMNF.DtSrc1.DataSet.Post;
    // Esta Varíavel é pra não executar o insereMatPrima repetidas vezes
    {if (inseridoMatPrima = 'SIM') then
    if (matPrima = 'SIM') then
    begin
      insereMatPrima;
    end; }
    DMNF.DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;

  if DMNF.DtSrc1.State in [dsBrowse] then
  begin
   if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
    DMNF.cds_Movimento.Edit;
    DMNF.DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;

end;

procedure TfNFCompra.BitBtn8Click(Sender: TObject);
begin
  if DMNF.DtSrc.DataSet.State in [dsBrowse] then
     DMNF.DtSrc.DataSet.edit;

  if  MessageDlg('Confirma a exclusão do item ''' + DMNF.cds_Mov_detDESCPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
     DMNF.DtSrc1.DataSet.Delete;
end;

procedure TfNFCompra.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  inseridoMatPrima := 'NAO';
  codmovdet := 1999999;
  codserv := 1999999;
  codmd := 1999999;
  PageControl1.ActivePageIndex := 0;

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
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
  dm.cds_parametro.Close;
  utilcrtitulo.Free;
end;

procedure TfNFCompra.baixamatprimas(tipomat: string; codmovt: integer);
begin

end;

procedure TfNFCompra.buscaServico;
begin

end;

procedure TfNFCompra.dbeProdutoExit(Sender: TObject);
var sql, sql1: string;
begin
  if (DMNF.dtSrc1.State in [dsInsert, dsEdit]) then
  begin
    if (dbeProduto.Text = '') then
    begin
      exit;
    end;
    if DMNF.DtSrc1.DataSet.State in [dsInactive] then
      if dbeProduto.Text='' then exit;

    if DMNF.DtSrc1.DataSet.State in [dsBrowse] then
       DMNF.DtSrc1.DataSet.Edit;
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
      DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      DMNF.cds_Mov_detLOTE.AsString := DMNF.cds_MovimentoCONTROLE.AsString;
      DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
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
         DMNF.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         DMNF.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
      DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      // Inseri o Lote
      if dm.scds_produto_procLOTES.AsString = 'S' then
      begin
        if (DBComboBox1.Text = '') then
        begin
          MessageDlg('Insira o número do Lote no Campo Controle.', mtWarning, [mbOK], 0);
          DBComboBox1.SetFocus;
          Exit;
        end;
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        sql1 := 'SELECT lote.*, prod.PRODUTO, prod.CODPRO FROM LOTES lote, PRODUTOS prod WHERE prod.CODPRODUTO = lote.CODPRODUTO AND lote.CODPRODUTO = :PPROD and lote.ESTOQUE > 0.009';
        sql := ' and (lote.LOTE = ' + QuotedStr(DBComboBox1.Text) + ')';
        fLotes.cdslotes.CommandText := sql1 + sql;
        fLotes.cdslotes.Params[0].AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        var_F := 'formnfCompra';
        if fLotes.cdslotes.IsEmpty then
        begin
          fLotes.cdslotes.Append;
          fLotes.cdslotesCODPRODUTO.AsInteger := dmnf.cds_Mov_detCODPRODUTO.AsInteger;
          fLotes.cdslotesCODPRO.AsString := dmnf.cds_Mov_detCODPRO.AsString;
          fLotes.cdslotesPRODUTO.Value := dmnf.cds_Mov_detDESCPRODUTO.Value;
          //fLotes.cdslotesDATAFABRICACAO.AsDateTime := dmnf.cdsCompraDATACOMPRA.AsDateTime;
          //fLotes.cdslotesDATAVENCIMENTO.AsDateTime := dmnf.cdsCompraDATACOMPRA.AsDateTime;
          fLotes.cdslotesLOTE.AsString := dmnf.cds_MovimentoCONTROLE.AsString;
          fLotes.btnGravar.Click;
          dmnf.cds_Mov_detLOTE.AsString := fLotes.cdslotesLOTE.AsString;
          //dmnf.cds_Mov_detDTAFAB.AsDateTime := fLotes.cdslotesDATAFABRICACAO.AsDateTime;
          //dmnf.cds_Mov_detDTAVCTO.AsDateTime := fLotes.cdslotesDATAVENCIMENTO.AsDateTime;
        end;
      end;
  end;

end;

procedure TfNFCompra.buscaserieNF;
begin
  if DMNF.DtSrc.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then  begin
      if DMNF.scds_serie_proc.Active then
        DMNF.scds_serie_proc.Close;
      DMNF.scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
      DMNF.scds_serie_proc.Open;
      if DMNF.scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      DMNF.cds_vendaSERIE.AsString := DMNF.scds_serie_procSERIE.AsString;
      //É nota fiscal ?
      {if DMNF.scds_serie_procNOTAFISCAL.AsInteger=0 then
      begin
        //    btnImprimir.Enabled:=False;
        btnNotaFiscal.Enabled:=True;
        end
        else
        begin
        //    btnImprimir.Enabled:=True;
        btnNotaFiscal.Enabled:=False;
      end;}
      DMNF.cds_vendaNOTAFISCAL.AsInteger := DMNF.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;

end;

procedure TfNFCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (PageControl1.ActivePage = tabitens) then
 begin
   if (key = #13) then
   begin
      if DMNF.DtSrc1.DataSet.State in [dsInactive] then
        exit
      else
        if (dbeProduto.Text = '') then
        begin
           btnProdutoProcura.Click;
        end
        else
        begin
           key:= #0;
           SelectNext((Sender as TwinControl),True,True);
        end;
   end;
 end
 else
 begin
   if (key = #13) then
   begin
     key:= #0;
     SelectNext((Sender as TwinControl),True,True);
   end;
 end;
end;

procedure TfNFCompra.JvDBLookupComboEdit4Change(Sender: TObject);
begin
   dmnf.cds_MovimentoCODCLIENTE.AsInteger := dmnf.cClienteCODCLIENTE.AsInteger;
end;

procedure TfNFCompra.btnProdutoProcuraClick(Sender: TObject);
var sql, sql1: string;
begin
  if dmnf.DtSrc1.DataSet.State in [dsInactive] then
   exit;
  fProcura_prod.cbTipo.ItemIndex := 5;   
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel2.Visible := True;
  fProcura_prod.Panel1.Visible := False;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  var_F := 'formnfCompra';
  dmnf.cds_Mov_detLOTE.AsString := '';
  fProcura_prod.BitBtn1.Click;
  fProcura_prod.ShowModal;
  if (dmnf.cds_Mov_det.State in [dsInsert]) then
  begin
    if (dbeProduto.Text = '') then
    begin
      DMNF.cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
      DMNF.cds_Mov_detCODPRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      DMNF.cds_Mov_detLOTE.AsString := DBComboBox1.Text;
      DMNF.cds_Mov_detDESCPRODUTO.Value := fProcura_prod.cds_procPRODUTO.Value;
      DMNF.cds_Mov_detLOCALIZACAO.Value := fProcura_prod.cds_procLOCALIZACAO.Value;
      //DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := fProcura_prod.cds_procCOD_COMISSAO.AsInteger;
      DMNF.cds_Mov_detQTDE_PCT.AsFloat := fProcura_prod.cds_procQTDE_PCT.AsFloat;
      DMNF.cds_Mov_detUN.AsString := fProcura_prod.cds_procUNIDADEMEDIDA.AsString;
      DMNF.estoque := fProcura_prod.cds_procESTOQUEATUAL.AsFloat;
      DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
      DMNF.qtde := fProcura_prod.cds_procPESO_QTDE.AsFloat;
      DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
      DMNF.cds_Mov_detPRECOCUSTO.AsFloat := fProcura_prod.cds_procPRECOMEDIO.AsFloat;
      DMNF.cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
      valorUnitario := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
      DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := fProcura_prod.cds_procCODALMOXARIFADO.AsInteger;
      DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
      DMNF.cds_Mov_detICMS.AsFloat := fProcura_prod.cds_procICMS.AsFloat;
    end;
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      if (DBComboBox1.Text = '') then
      begin
        MessageDlg('Insira o número do Lote no Campo Controle.', mtWarning, [mbOK], 0);
        DBComboBox1.SetFocus;
        Exit;
      end;
      if fLotes.cdslotes.Active then
        fLotes.cdslotes.Close;
      sql1 := fLotes.sdslote.CommandText;
      sql := ' and (lote.LOTE = ' + QuotedStr(DBComboBox1.Text) + ')';
      fLotes.cdslotes.CommandText := sql1 + sql;
      fLotes.cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      fLotes.cdslotes.Open;
      var_F := 'formnfCompra';
      if fLotes.cdslotes.IsEmpty then
      begin
        fLotes.cdslotes.Append;
        fLotes.cdslotesCODPRODUTO.AsInteger := dmnf.cds_Mov_detCODPRODUTO.AsInteger;
        fLotes.cdslotesCODPRO.AsString := dmnf.cds_Mov_detCODPRO.AsString;
        fLotes.cdslotesPRODUTO.Value := dmnf.cds_Mov_detDESCPRODUTO.Value;
        //fLotes.cdslotesDATAFABRICACAO.AsDateTime := dmnf.cds_MovimentoDATAMOVIMENTO.AsDateTime;
        //fLotes.cdslotesDATAVENCIMENTO.AsDateTime := dmnf.cds_MovimentoDATAMOVIMENTO.AsDateTime;
        fLotes.cdslotesLOTE.AsString := dmnf.cds_MovimentoCONTROLE.AsString;
        fLotes.btnGravar.Click;
        dmnf.cds_Mov_detLOTE.AsString := fLotes.cdslotesLOTE.AsString;
        //dmnf.cds_Mov_detDTAFAB.AsDateTime := fLotes.cdslotesDATAFABRICACAO.AsDateTime;
        //dmnf.cds_Mov_detDTAVCTO.AsDateTime := fLotes.cdslotesDATAVENCIMENTO.AsDateTime;
      end;
    end;
    fLotes.cdslotes.CommandText := sql1;
  end;
end;

procedure TfNFCompra.BitBtn1Click(Sender: TObject);
begin
  procfornecedor;
  DBComboBox1.SetFocus;
end;

procedure TfNFCompra.procfornecedor;
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.varFormemUso := 'nfcompra';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.RadioGroup2.Visible := True;  
  fProcurar.btnIncluir.Visible := True;
  try
    fProcurar.ShowModal;
    if (dmnf.cds_Movimento.State = dsBrowse) then
      dmnf.cds_Movimento.Edit;
    prazo := dm.scds_forn_procPRAZOPAGAMENTO.AsFloat;
    dmnf.cds_MovimentoCODCLIENTE.AsInteger := 0;
    dmnf.cds_MovimentoNOMECLIENTE.AsString := 'Cliente Sistema';
    dmnf.cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dmnf.cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbeProduto.SetFocus;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
  {if (dm.moduloUsado = 'CITRUS') then
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
  end;}
end;

procedure TfNFCompra.btnGravarClick(Sender: TObject);
begin
  if (not cNF.Active) then
    cNf.Open;
  if (cNf.Locate('NOTAFISCAL', DBEdit2.Text, [loCaseInsensitive])) then
  begin
    MessageDlg('Já existe um Lançamento com esse Numero de NF...', mtWarning, [mbOK], 0);
    exit;
  end;
  if (dmnf.cds_Mov_detCODPRO.AsString <> '') then
   if (dmnf.cds_Mov_det.State in [dsInsert]) then
    dmnf.cds_Mov_det.post;

  if (dmnf.cds_Mov_detCODPRO.AsString = '') then
    if (dmnf.cds_Mov_det.State in [dsInsert]) then
      dmnf.cds_Mov_det.Cancel;

  // Grava o Movimento
  gravamovimentoC;
  // Grava o Movimento Detalhe
  gravamov_detalheC;
  // Salvar Compra

  if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
  begin
    gravaCompra;
    tabFinanceiro.Enabled := True;
  end;
  if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
       gravaCompra;

  //if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = False)) then

  //tabnf.Enabled := True;


end;

procedure TfNFCompra.gravamov_detalheC;
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
    dmnf.cds_Mov_det.ApplyUpdates(0);
end;

procedure TfNFCompra.gravamovimentoC;
begin
 if dmnf.cds_Movimento.State in [dsInsert] then
 begin
   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   dmnf.cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
   dm.c_6_genid.Close;
 end;
  //*******************************************************************************
  IF (dmnf.DtSrc.State in [dsInsert, dsEdit]) then
  begin
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.Locate('NOME',ComboBox5.Text, [loCaseInsensitive]);
    dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := dmnf.cds_ccustoCODIGO.AsInteger;
    if (DBComboBox1.Text <> '') then
      if  (dmnf.cds_movimentoCONTROLE.AsString <> DBComboBox1.Text) then
        dmnf.cds_MovimentoCONTROLE.AsString := DBComboBox1.Text;
    dmnf.cds_ccusto.Close;
  end;
  if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 4;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Compra';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 1;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Entrada';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = False)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 5;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'nf';
    end;

  dmnf.cds_Movimento.ApplyUpdates(0);
end;

procedure TfNFCompra.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfNFCompra.btnCancelarClick(Sender: TObject);
begin
    DMNF.cds_venda.Cancel;
    DMNF.cds_Mov_det.Cancel;
    DMNF.cds_Movimento.Cancel;
    DMNF.cds_venda.Close;
    DMNF.cds_Mov_det.Close;
    DMNF.cds_Movimento.Close;
end;

procedure TfNFCompra.cbFinanceiroClick(Sender: TObject);
begin
  if (cbFinanceiro.Checked = True) then
    tabFinanceiro.TabVisible := True
  else
    tabFinanceiro.TabVisible := False;
end;

procedure TfNFCompra.btnIncluirNFClick(Sender: TObject);
begin
  if (cbFinanceiro.Checked = True) then
    tabFinanceiro.TabVisible := True
  else
    tabFinanceiro.TabVisible := False;

  if (not cds_nf.Active) then
     cds_nf.Open;
  cds_nf.Append;
  DBEdit15.Text := DBEdit2.Text;
  DBEdit15.SetFocus;
end;

procedure TfNFCompra.btnCancelarNFClick(Sender: TObject);
begin
    cds_nf.Cancel;
end;

procedure TfNFCompra.DBEdit26Exit(Sender: TObject);
var vTextocfop : string;
begin
  if dmnf.scds.Active then
    dmnf.scds.Close;
  vTextocfop := dmnf.scds.CommandText;
  dmnf.scds.CommandText := 'SELECT CFCOD AS CFOP , CFNOME as NATUREZA FROM CFOP ' +
     ' where CFCOD = ''' + dbEdit26.Text + '''';
  dmnf.scds.Open;
  cds_nfDESCNATUREZA.AsString  := dmnf.scds.Fields[1].asString;
  dmnf.scds.Close;
  dmnf.scds.CommandText := vTextocfop;
end;

procedure TfNFCompra.BitBtn3Click(Sender: TObject);
begin
  if dmnf.scds.Active then
    dmnf.scds.Close;
  fProcurar:= TfProcurar.Create(self,dmnf.procCFOP);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.EvDBFind1.DataField := 'CFCOD';
  fProcurar.BtnProcurar.Click;
  if fProcurar.ShowModal=mrOk then
  begin
    if DtSrc_NF.State=dsBrowse then
      cds_nf.Edit;
    cds_nfCFOP.AsString := dmnf.procCFOPCFCOD.AsString;
    cds_nfDESCNATUREZA.AsString := dmnf.procCFOPCFNOME.AsString;
  end;
  finally
    dmnf.scds.Close;
    fProcurar.Free;
    DBEdit26.SetFocus;
  end;
end;

procedure TfNFCompra.BitBtn7Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_transp_proc);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMETRANSP';
  if fProcurar.ShowModal=mrOk then
  begin
    if DtSrc_NF.State=dsBrowse then
      cds_nf.Edit;
    cds_nfCODTRANSP.AsInteger := dm.scds_transp_procCODTRANSP.AsInteger;
    cds_nfNOMETRANSP.AsString := dm.scds_transp_procNOMETRANSP.AsString;
    cds_nfUF_TRANSP.AsString := dm.scds_transp_procUF_TRANSP.AsString;
    cds_nfFRETE.AsString := dm.scds_transp_procFRETE.AsString;
    cds_nfUF_VEICULO_TRANSP.AsString := dm.scds_transp_procUF_VEICULO_TRANSP.AsString;
    cds_nfCNPJ_CPF.AsString := dm.scds_transp_procCNPJ_CPF.AsString;
    cds_nfEND_TRANSP.AsString := dm.scds_transp_procEND_TRANSP.AsString;
    cds_nfCIDADE_TRANSP.AsString := dm.scds_transp_procCIDADE_TRANSP.AsString;
    cds_nfUF_TRANSP.AsString := dm.scds_transp_procUF_TRANSP.AsString;
    cds_nfINSCRICAOESTADUAL.AsString := dm.scds_transp_procINSCRICAOESTADUAL.AsString;
    cds_nfPLACATRANSP.AsString := dm.scds_transp_procPLACATRANSP.AsString;
    cds_nfCORPONF1.AsString  := dm.scds_transp_procCORPONF1.AsString;
    cds_nfCORPONF2.AsString  := dm.scds_transp_procCORPONF2.AsString;
    cds_nfCORPONF3.AsString  := dm.scds_transp_procCORPONF3.AsString;
    cds_nfCORPONF4.AsString  := dm.scds_transp_procCORPONF4.AsString;
  end;
  finally
    dm.scds_transp_proc.Close;
    fProcurar.Free;
    DBEdit56.SetFocus;
  end;

end;

procedure TfNFCompra.btnGravarNFClick(Sender: TObject);
begin
  decimalseparator := '.';
  //vValornf := cds_nfVALOR_PRODUTO.AsFloat;
  decimalseparator := ',';
  if (dbEdit15.text = '') then
  begin
    MessageDlg('Informe o Número da Nota Fiscal!',mtWarning, [mbOK], 0);
    dbedit1.SetFocus;
    exit;
  end;
  if (dbEdit26.text = '') then
  begin
    MessageDlg('Informe o CFOP!',mtWarning, [mbOK], 0);
    dbedit5.SetFocus;
    exit;
  end;
  if (cds_nfUF.AsString = '') then
  begin
    {** Abro o Cadastro do Clientes para adicionar o estado **}
  end;
  // salvo a Nota Fiscal
  if (DtSrc_NF.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_nfNUMNF.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  cds_nfNATUREZA.AsInteger := dmnf.cds_MovimentoCODNATUREZA.AsInteger;
  cds_nfDESCNATUREZA.AsString := dmnf.cds_MovimentoDESCNATUREZA.AsString;
  cds_nfCODCLIENTE.AsInteger := dmnf.cdsCompraCODFORNECEDOR.AsInteger;
  cds_nf.ApplyUpdates(0);
  // Calcula ICMS - IPI
  calcula_icms('OUTROS');
end;

procedure TfNFCompra.BitBtn34Click(Sender: TObject);
begin
  if not dmnf.DtSrcE.DataSet.Active then
     dmnf.DtSrcE.DataSet.open;
  dmnf.DtSrcE.DataSet.Append;
end;

procedure TfNFCompra.BitBtn35Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     if dmnf.proc_end.Active then
       dmnf.proc_end.Close;
     dmnf.proc_end.Params[0].AsInteger := dmnf.cds_cliCODCLIENTE.AsInteger;
     dmnf.proc_end.Open;
     if dmnf.proc_endCOUNT.AsInteger = 1 then
     begin
       MessageDlg('Não é possivel excluir esse endereço, você pode alterá-lo.. ', mtWarning, [mbOK], 0);
       exit;
     end;
     if (dmnf.cdsEnderecoCliTIPOEND.AsInteger = 0) then
     begin
       MessageDlg('Não é possivel excluir o endereço principal.', mtWarning, [mbOK], 0);
       exit;
     end;
     dmnf.DtSrcE.DataSet.Delete;
     (dmnf.DtSrcE.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfNFCompra.btnIncluirCliClick(Sender: TObject);
begin
    if (not dmnf.cds_cli.Active) then
        dmnf.cds_cli.Open;
    dmnf.cds_cli.Append;
    if dmnf.cdsEnderecoCli.Active then
       dmnf.cdsEnderecoCli.Close;
    dmnf.cdsEnderecoCli.Params[0].Clear;
    dmnf.cdsEnderecoCli.Params[1].Clear;
    dmnf.cds_cliCNPJ.EditMask := '000.000.000-00';
    dmnf.cds_cliTIPOFIRMA.AsInteger := 0;
    dmnf.cds_cliSEGMENTO.Value:=1;
    dmnf.cds_cliREGIAO.Value:=1;
    if (not dmnf.scds_usuario_proc.Active) then
       dmnf.scds_usuario_proc.Open;
    dmnf.scds_usuario_proc.Locate('CODUSUARIO','1', [loCaseInsensitive]);
    dmnf.cds_cliCODUSUARIO.Value := 1;
    dmnf.cds_cliNOMEUSUARIO.AsString := dmnf.scds_usuario_procNOMEUSUARIO.AsString;
    dmnf.scds_usuario_proc.Close;
    dmnf.cds_cliSTATUS.Value:=1;

    dmnf.cds_cliDATACADASTRO.Value:=Date;

    if not dmnf.cdsEnderecoCli.Active then
       dmnf.cdsEnderecoCli.open;
    dmnf.cdsEnderecoCli.Append;
    dmnf.cdsEnderecoCliUF.AsString := 'SP';
    dmnf.cdsEnderecoCliTIPOEND.AsInteger := 0;

end;

procedure TfNFCompra.BitBtn33Click(Sender: TObject);
begin
   fEstado:=TfEstado.Create(Application);
   try
     fEstado.showmodal;
   finally
    fEstado.Free;
   end;
end;

procedure TfNFCompra.BitBtn36Click(Sender: TObject);
begin
  fRegiaoCadastro := TfRegiaoCadastro.Create(Application);
  try
    fRegiaoCadastro.tipoRegiao := 'regiao';
    fRegiaoCadastro.ShowModal;
  finally
    fRegiaoCadastro.Free;
  end;
  if (dmnf.cdsRegiao.Active) then
      dmnf.cdsRegiao.Close;
  dmnf.cdsRegiao.Open;
end;

procedure TfNFCompra.BitBtn10Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.btnIncluir.Visible := True;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   if fProcurar.ShowModal=mrOk then
   begin
    if dmnf.DtSrc_cli.State=dsBrowse then
       dmnf.cds_cli.Edit;
    dmnf.cds_cliCODUSUARIO.AsInteger := dm.scds_usuario_procCODUSUARIO.AsInteger;
    dmnf.cds_cliNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
   end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfNFCompra.calcula_icms(Estado: String);
var str_sql: string;
begin
  Try
    if (dmnf.sds_calculo.Active) then
      dmnf.sds_calculo.Close;
    str_sql := 'EXECUTE PROCEDURE CALCULA_ICMS(';
    // NUMNF
    str_sql := str_sql + IntToStr(cds_nfNUMNF.asInteger);
    // UF
    str_sql := str_sql + ',''' + cds_nfUF.AsString + '''';
    // CFOP
    str_sql := str_sql + ',''' + cds_nfCFOP.AsString + '''';
    // Valor Frete
    DecimalSeparator := '.';
    str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_FRETE.AsFloat);
    // Valor Seguro
    str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_SEGURO.AsFloat);
    // Valor_Outros
    str_sql := str_sql + ',' + FloatToStr(cds_nfOUTRAS_DESP.AsFloat);
    // Total
    str_sql := str_sql + ',' + FloatToStr(cds_nfVALOR_PRODUTO.AsFloat);
    // Informado INDICES MANUALMENTE
    IF (DBEdit44.Text <> '') then
    begin
      str_sql := str_sql + ',''' + 'S' + '''';
      str_sql := str_sql + ',' + FloatToStr(cds_nfICMS.AsFloat);
      IF (DBEdit45.Text <> '') THEN
      str_sql := str_sql + ',' + FloatToStr(cds_nfREDUZICMS.AsFloat)
      else
      str_sql := str_sql + ', 0';
    end
    else
    begin
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
    MessageDlg('Erro no cálculo!', mtError, [mbOK], 0);
  end;
end;

procedure TfNFCompra.BitBtn5Click(Sender: TObject);
var nunf: integer;
begin
  if (DtSrc_NF.State in [dsEdit, dsInsert]) Then
  begin
    btnGravarNF.Click;
    exit;
  end;
  nunf := cds_nfNUMNF.AsInteger;
  // Calcula ICMS - IPI
  calcula_icms('OUTROS');
  // Abre a tabela Novamente.
  cds_nf.Close;
  cds_nf.Params[0].AsInteger := nunf;
  cds_nf.Open;
end;

procedure TfNFCompra.btnProcurarClick(Sender: TObject);
begin
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
        ffiltromov_compra.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
        dmnf.cds_ccusto.Next;
    end;
    dmnf.cds_ccusto.Close;
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
    begin
      fFiltroMov_compra.Edit3.Text := '4';
      fFiltroMov_compra.Edit4.Text := 'Compra';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
    begin
      fFiltroMov_compra.Edit3.Text := '1';
      fFiltroMov_compra.Edit4.Text := 'Entrada';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = False)) then
    begin
      fFiltroMov_compra.Edit3.Text := '5';
      fFiltroMov_compra.Edit4.Text := 'nf';
    end;
    //fFiltroMov_compra.BitBtn8.Enabled := False;
    fFiltroMov_compra.ShowModal;
    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := fFiltroMov_compra.varCodCompra;
    dmnf.cds_Movimento.Open;

    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cds_Mov_det.Open;

    BitBtn1.Enabled := true;
    btnProdutoProcura.Enabled := true;
    if (dmnf.cdsCompra.Active) then
      dmnf.cdsCompra.Close;
    dmnf.cdsCompra.Params[0].Clear;
    dmnf.cdsCompra.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.asInteger;
    dmnf.cdsCompra.Open;
    if (not dmnf.cdsCompra.IsEmpty) then
    begin
      if (cds_nf.Active) then
        cds_nf.Close;
      cds_nf.Params[0].Clear;
      cds_nf.Params[1].AsInteger := dmnf.cdsCompraCODCOMPRA.asInteger;
      if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
        cds_nf.Params[2].AsInteger := 1; //Entrada
      if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
        cds_nf.Params[2].AsInteger := 4;// Compra
      cds_nf.Open;
      if (cds_nf.IsEmpty) then
        cds_nf.Close;
      tabnf.Enabled := True;

      if (dmnf.cds_cp.Active) then
        dmnf.cds_cp.Close;
      dmnf.cds_cp.Params[0].AsInteger := dmnf.cdsCompraCODCOMPRA.AsInteger;
      dmnf.cds_cp.Open;
      if (dmnf.cds_cp.IsEmpty) then
        dmnf.cds_cp.Close
      else
        tabFinanceiro.Enabled := True;
    end
    else
      dmnf.cdsCompra.Close;

    if (DMNF.cds_MovimentoCODNATUREZA.AsInteger = 4) then
    begin
      cbFinanceiro.Checked := True;
      cbEstoque.Checked := True;
    end;

    if (DMNF.cds_MovimentoCODNATUREZA.AsInteger = 1) then
    begin
      cbFinanceiro.Checked := False;
      cbEstoque.Checked := True;
    end;

    if (DMNF.cds_MovimentoCODNATUREZA.AsInteger = 5) then
    begin
      cbFinanceiro.Checked := False;
      cbEstoque.Checked := False;
    end;
end;

procedure TfNFCompra.createEntrada;
begin

end;

procedure TfNFCompra.CarregaParametrosC;
begin
  centro_receita := 0;
  procprod := 'PROC_PROD_SIMPLES';
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  cod_vendedor_padrao := 1;
  nome_vendedor_padrao := '..';
  // Gera Financeiro e Baixa Estoque
  if ((cbFinanceiro.Checked) and (cbEstoque.Checked)) then
  begin
    if (dm.parametro.Locate('PARAMETRO','NATUREZACOMPRA',[loCaseInsensitive])) then
    begin
      Try
        cod_nat := strToint(dm.parametroDADOS.asString);
      except
        cod_nat := 4;
      end;
      natureza := dm.parametroD1.AsString;
    end;
  end;
  // Nao gera Financeiro e gera Entrada no Estoque
  if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked)) then
  begin
    if (dm.parametro.Locate('PARAMETRO','NATUREZAENTRADA',[loCaseInsensitive])) then
    begin
      Try
        cod_nat := strToint(dm.parametroDADOS.asString);
      except
        cod_nat := 1;
      end;
      natureza := dm.parametroD1.AsString;
    end;
  end;

  {------Pesquisando na tab Parametro se usa ANOTACOES ---}
  if (dm.parametro.Locate('PARAMETRO','ANOTACOESVENDAS', [loCaseInsensitive])) then
  begin
    DBComboBox1.Items.Clear;
    if (dm.parametroCONFIGURADO.AsString = 'N') then
      DBComboBox1.Enabled := False
    else begin
      DBComboBox1.Items.Add(dm.parametroD1.AsString);
      IF (dm.cds_parametroD2.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD2.AsString);
      IF (dm.cds_parametroD3.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD3.AsString);
      IF (dm.cds_parametroD3.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD3.AsString);
      IF (dm.cds_parametroD4.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD4.AsString);
      IF (dm.cds_parametroD5.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD5.AsString);
      IF (dm.cds_parametroD6.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD6.AsString);
      IF (dm.cds_parametroD7.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD7.AsString);
      IF (dm.cds_parametroD8.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD8.AsString);
      IF (dm.cds_parametroD9.AsString <> '') then
        DBComboBox1.Items.Add(dm.parametroD9.AsString);
    end;
  end
  else begin
    DBComboBox1.Enabled := True;
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    Label16.Caption := 'kg';
  end;
  GroupBox9.Caption := 'Local Compra';
  if (dm.parametro.Locate('PARAMETRO','CENTROCUSTO', [loCaseInsensitive])) then
  begin
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      ComboBox5.Enabled := True;
      //Vejo quais são as contas de Receitas para listar no lookupcombobox.
      if (dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Close;
      dmnf.cds_ccusto.Params[0].AsString := dm.parametroDADOS.AsString;
      dmnf.cds_ccusto.Open;
      // populo a combobox
      dmnf.cds_ccusto.First;
      while (not dmnf.cds_ccusto.Eof) do
      begin
        ComboBox5.Items.Add(dmnf.cds_ccustoNOME.AsString);
        dmnf.cds_ccusto.Next;
      end;
    end;
  end;
end;

procedure TfNFCompra.btnExcluirCliClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    dm.sqlsisAdimin.ExecuteDirect('delete from enderecocliente where codcliente='+
    intToStr(dmnf.cds_cliCODCLIENTE.asInteger));
    dmnf.DtSrc.DataSet.Delete;
    (dmnf.DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TfNFCompra.btnExcluirClick(Sender: TObject);
var
  codigomovimento : integer;
begin
  if MessageDlg('Deseja realmente excluir este registro ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    codigomovimento := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.DtSrc.DataSet.Delete;
    (dmnf.DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
  if dmnf.DtSrc1.DataSet.Active then
     dmnf.DtSrc1.DataSet.Close;
end;

procedure TfNFCompra.btnCancelarcliClick(Sender: TObject);
begin
  dmnf.cdsEnderecoCli.Cancel;
  if (dmnf.cds_cli.State in [dsInsert, dsEdit]) then
    dmnf.cds_cli.Cancel;
end;

procedure TfNFCompra.DBEdit30Exit(Sender: TObject);
begin
  if dmnf.DtSrc_cli.State=dsInsert then
     dmnf.cds_cliRAZAOSOCIAL.AsString := dmnf.cds_cliNOMECLIENTE.AsString;
end;

procedure TfNFCompra.BitBtn30Enter(Sender: TObject);
begin
  Panel1.Visible := True;
  Panel1.SetFocus;
end;

procedure TfNFCompra.BitBtn2Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  dm.scds_usuario_proc.Params[0].Clear;
  dm.scds_usuario_proc.Params[1].AsInteger := StrToInt(dbeUsuario.Text);
  dm.scds_usuario_proc.Params.ParamByName('pPerfil').AsString := 'COMPRADOR';
  dm.scds_usuario_proc.Params.ParamByName('pPerfil1').AsString := 'AMBOS';
  fProcurar.usuarioproc := 'COMPRADOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
    if fProcurar.ShowModal=mrOk then
    begin
      if dmnf.dtSrc.State=dsBrowse then
        dmnf.cds_Movimento.Edit;
      dmnf.cds_MovimentoCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
      dmnf.cds_MovimentoNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfNFCompra.BitBtn38Click(Sender: TObject);
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
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, logradouro,cep,fone, clientecupom, doccli : string;//Para recortar parte da descrição do produto,nome
  total : double;
begin
      // Imprimindo
      if (not dm.cds_empresa.Active) then
        dm.cds_empresa.Open;
      {----- aqui monto o endereço-----}
      logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
      cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
      ' - ' + dm.cds_empresaCEP.Value;
      fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
      ' / ' + dm.cds_empresaFONE_2.Value;
      {------------------------DADOS DO CLIENTE--------------------------}
      clientecupom := 'Cliente : ' + IntToStr(dmnf.cds_MovimentoCODCLIENTE.AsInteger) + ' - ' +
                      dmnf.cds_MovimentoNOMECLIENTE.AsString;
      doccli := 'CPF : ' + dmnf.cds_MovimentoCNPJ.AsString;
      Texto  := '-------------------------------------' ;
      Texto1 := DateTimeToStr(Now) + '  Titulo.:  ' +
      dmnf.scdsCr_procTITULO.AsString;
      Texto2 := '-------------------------------------' ;
      Texto4 := 'Podruto   UN  Qtde   V.Un.   V.Total ' ;
      Texto5 := DateTimeToStr(Now) + ' Total.: R$   ';
      {-----------------------------------------------------------}
      {-------------------Imprimi Cabeçalho-----------------------}
      AssignFile(IMPRESSORA,'COM1:');
      Rewrite(IMPRESSORA);
      Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
      Writeln(Impressora, cJustif, c17cpi, logradouro);
      Writeln(Impressora, cJustif, cep);
      Writeln(Impressora, cJustif, fone);
      Writeln(Impressora, cJustif , c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, cJustif, c17cpi, clientecupom);
      Writeln(Impressora, cJustif, c17cpi, doccli);
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, c17cpi, texto1);
      Writeln(Impressora, c17cpi, texto2);
      Writeln(Impressora, c17cpi, texto4);
      {-----------------------------------------------------------}
      {-------------------Imprimi itens do boleto-----------------}
      try
        dmnf.cds_Mov_det.First;
        while not dmnf.cds_Mov_det.Eof do
        begin
          dmnf.cds_Mov_det.RecordCount;
          texto3 := '';
          texto6 := '';
          texto6 := Format('%-4s',[dmnf.cds_Mov_detCODPRO.Value]);
          texto3 := texto3 + Format('          %-2s',[dmnf.cds_Mov_detUN.Value]);
          texto3 := texto3 + Format('    %-6.0n',[dmnf.cds_Mov_detQUANTIDADE.AsFloat]);
          texto3 := texto3 + Format('%-6.2n',[dmnf.cds_Mov_detPRECO.AsFloat]);
          texto3 := texto3 + Format('  %-6.2n',[dmnf.cds_Mov_detValorTotal.value]);
          //texto6 := texto6 + fVendas.cds_Mov_detDETALHE.Value;
          //texto6 := texto6 + Copy(dmnf.cds_Mov_detDETALHE.Value, 0, 30);
          Writeln(Impressora, c17cpi, texto6);
          Writeln(Impressora, c17cpi, texto3);//NOME DO PRODUTO
          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          dmnf.cds_Mov_det.next;
        end;
        texto3 := '';
        texto6 := '';
        {-----------------------------------------------------------}
        {-------------------Imprimi Cabeçalho-----------------------}
        Texto2 := '-------------------------------------' ;
        Texto3 := 'Vencimento  Status  Valor R$  ' ;
        Writeln(Impressora, c17cpi, texto2);
        Writeln(Impressora, c17cpi, texto3);
        {-----------------------------------------------------------}
        {-------------------Imprimi Parcelas -----------------------}
        dmnf.scdsCr_proc.First;
        while not dmnf.scdsCr_proc.Eof do
        begin
          texto3 := '';
          dmnf.scdsCr_proc.RecordCount;
          // imprime
          Texto3 := FormatDateTime('dd/mm/yyyy', dmnf.scdsCr_procDATAVENCIMENTO.Value);
          Texto3 := Texto3 + ' - '  + dmnf.scdsCr_procSTATUS.Value;
          if (dmnf.scdsCr_procSITUACAO.AsString = '7-') then
             Texto3 := Texto3 + ' - '  +
                    Format('%-6.2n',[dmnf.scdsCr_procVALORRECEBIDO.AsFloat])
          else
             Texto3 := Texto3 + ' - '  +
                    Format('%-6.2n',[dmnf.scdsCr_procVALORREC.AsFloat]);
          Writeln(Impressora, c17cpi, texto3);
          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          dmnf.scdsCr_proc.next;
        end;
        {-----------------------------------------------------------}
        {-------------------Imprimi final do Pedido-----------------}
        total := dmnf.cds_Mov_detTotalPedido.Value;
        Writeln(Impressora, c17cpi, texto);
        Write(Impressora, c17cpi, texto5);
        Writeln(Impressora, c17cpi + Format(' %-6.2n',[total]));
        texto3 := '';
        texto3 := 'Ass.:____________________________';
        Writeln(IMPRESSORA);
        Writeln(Impressora, c17cpi, texto3);
        // Pula linhas
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
      if (MessageDlg('Imprimir Carnê ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
          VCLReport1.FileName := str_relatorio + 'impr_carne.rep';
          VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
          VCLReport1.Report.Params.ParamByName('PVENDA').Value := dmnf.cds_vendaCODVENDA.AsInteger;
          VCLReport1.Execute;
      end;
end;

procedure TfNFCompra.BitBtn31Click(Sender: TObject);
begin
    VCLReport1.FileName := str_relatorio + 'impr_texto_nf.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PVENDA').Value := dmnf.cds_vendaCODVENDA.AsInteger;
    VCLReport1.Execute;
end;

procedure TfNFCompra.BitBtn11Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'orcamento_nf.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfNFCompra.BitBtn37Click(Sender: TObject);
begin
  {Usado para inserir Despesa de Frete se o sistema for usado para o Citrus}
  if (bitbtn37.Caption <> 'Frete') then
  begin
    fImpr_Boleto := TfImpr_Boleto.Create(Application);
    try
     fImpr_Boleto.ShowModal;
    finally
     fImpr_Boleto.Free;
    end;
  end
  else begin

  end;
end;

procedure TfNFCompra.Panel1Exit(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TfNFCompra.btnSerieClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dmnf.scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
    begin
    if dmnf.DtSrcVenda.State=dsBrowse then
     dmnf.cds_venda.Edit;
     dmnf.cds_vendaSERIE.AsString := dmnf.scds_serie_procSERIE.AsString;
     dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger;
     dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
   finally
    dmnf.scds_serie_proc.Close;
    fProcurar.Free;
   end;
    DBEdit2.SetFocus;
end;

procedure TfNFCompra.BitBtn4Click(Sender: TObject);
begin
  //Usa Lote ??
  {if (not dm.scds_produto_proc.Active) then
  begin
    dm.scds_produto_proc.Params[0].Clear;
    dm.scds_produto_proc.Params[1].Clear;
    dm.scds_produto_proc.Params[2].AsString:=dbeProduto.Text;
    dm.scds_produto_proc.Open;
  end;
  if dm.scds_produto_procLOTES.AsString = 'S' then
  begin
    fLotes := TfLotes.Create(Application);
    try
      if fLotes.cdslotes.Active then
        fLotes.cdslotes.Close;
      fLotes.cdslotes.Params[0].AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      fLotes.cdslotes.Open;
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
   }
end;

procedure TfNFCompra.PageControl1Change(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  if (PageControl1.ActivePage = tabnf) then
  begin
     if (DtSrc_NF.DataSet.State in [dsInactive]) then
     begin
       btnIncluirNF.Click;
       DBEdit15.Text := DBEdit2.Text;
       DBEdit21.Text := DBEdit38.Text;
       DBEdit21.Text := DBEdit43.Text;
     end
  end; 
  // Listo as Contas Caixa
  if (PageControl1.ActivePage = tabFinanceiro) then
  begin
    ComboBox1.Items.Clear;
    ComboBox4.Items.Clear;
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
      ComboBox4.Items.Add(dm.cds_7_contas.Fields[2].asString);
      dm.cds_7_contas.Next;
    end;
    utilcrtitulo := Tutils.Create;
    // Popula Status
    j := utilcrtitulo.Forma.Count;
    for i := 0 to j - 1 do
    begin
      combobox3.Items.Add(utilcrtitulo.Forma.Strings[i]);
    end;
  end;
end;

procedure TfNFCompra.incluiCompra;
begin
  if (DMNF.cdsCompra.State in [dsInactive]) then
  begin
    DMNF.cdsCompra.Open;
    DMNF.cdsCompra.Append;
  end;
  if DMNF.cdsCompra.State in [dsBrowse] then
    DMNF.cdsCompra.Append;

  DMNF.cdsCompraDATASISTEMA.AsDateTime := Now;
  DMNF.cdsCompraDESCONTO.AsFloat := 0;
  DMNF.cdsCompraMULTA_JUROS.AsFloat := 0;
  DMNF.cdsCompraENTRADA.AsFloat := 0;
  DMNF.cdsCompraVALOR_PAGAR.AsFloat := 0;
  DMNF.cdsCompraAPAGAR.AsFloat := 0;
  DMNF.cdsCompraN_PARCELA.AsInteger := 1;
  DMNF.cdsCompraBANCO.AsInteger := 0;
  DMNF.cdsCompraDATACOMPRA.AsDateTime := now;
  DMNF.cdsCompraDATAVENCIMENTO.AsDateTime := now;
  DMNF.cdsCompraSTATUS.AsInteger:=0;

  { 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----}
  dbeUsuario.Text := '1';
  dbEdit68.Text := '..';
  { ---- ********************************************************************* ----}
  dbeSerie.Text := '';

end;

procedure TfNFCompra.gravaCompra;
var  strSql, strTit, tipoMov: String;
     diferenca : double;
     utilcrtitulo : Tutils;
begin
  if (dmnf.cdsCompra.State in [dsInsert, dsEdit]) then
  begin
    if (dmnf.cdsCompra.State in [dsInsert]) then
    begin
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_COMPRA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        dmnf.cdsCompraCODCOMPRA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
    end;
    diferenca := 0;
    DMNF.cdsCompraCODFORNECEDOR.AsInteger := DMNF.cds_MovimentoCODFORNECEDOR.AsInteger;
    DMNF.cdsCompraCODCOMPRADOR.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    //DMNF.cdsCompraDATACOMPRA.AsDateTime := DMNF.cds_MovimentoDATAMOVIMENTO.AsDateTime;
    DMNF.cdsCompraCODCCUSTO.AsInteger := DMNF.cds_MovimentoCODALMOXARIFADO.AsInteger;
    dmnf.cdsCompraCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cdsCompraCODUSUARIO.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    dmnf.cdsCompraNOMEFORNECEDOR.AsString := dmnf.cds_MovimentoNOMEFORNECEDOR.AsString;
    dmnf.cdsCompraNOMEUSUARIO.AsString := dmnf.cds_MovimentoNOMEUSUARIO.AsString;
    dmnf.cdsCompraBANCO.AsInteger := 1;
    if (DBEdit2.Text = '') then
      dmnf.cdsCompraNOTAFISCAL.AsInteger := StrToInt(formatdatetime('yyyy',dmnf.cdsCompraDATACOMPRA.AsDateTime) + (IntToStr(dmnf.cdsCompraCODCOMPRA.AsInteger)));

    if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;

    if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;
    dmnf.sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) - ((QTDE_ALT/100)*(QUANTIDADE * PRECO))) FROM MOVIMENTODETALHE' +
                         ' WHERE CODMOVIMENTO = ' +
                         IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
    dmnf.sqs_tit.Open;
    dmnf.cdsCompraVALOR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
    dmnf.cdsCompraVALOR_PAGAR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
    vrr := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
    dmnf.sqs_tit.Close;

    if (dmnf.cdsCompraENTRADA.AsFloat > 0) then
    begin
      if (utilcrtitulo <> nil) then
        utilcrtitulo := Tutils.Create;
      dmnf.cdsCompraFORMAPAGAMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);
      utilcrtitulo.Free;
      if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
        dmnf.cdsCompraCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;

      if (cbConta.Text = '') then
      begin
        MessageDlg('Informe o CAIXA.', mtError, [mbOK], 0);
        cbConta.SetFocus;
        exit;
      end;
      try
        if (StrToInt(dbedit7.Text) = 1) then
        begin
          diferenca := dmnf.cdsCompraVALOR.AsFloat - dmnf.cdsCompraDESCONTO.AsFloat;
          diferenca := diferenca - dmnf.cdsCompraENTRADA.AsFloat;
          if (diferenca > 0.01) then
          begin
            MessageDlg('O sistema considera a parcela 1 como a entrada.', mtError, [mbOK], 0);
            dbedit7.SetFocus;
            exit;
          end;
        end;
      except
        MessageDlg('Informe um número para PARCELAS.', mtError, [mbOK], 0);
        dbedit7.SetFocus;
        exit;
      end;
    end;

    dmnf.cdsCompraVALOR.AsFloat := dmnf.cdsCompraVALOR.AsFloat +
      dmnf.cdsCompraVALOR_FRETE.AsFloat +
      dmnf.cdsCompraVALOR_SEGURO.AsFloat +
      dmnf.cdsCompraOUTRAS_DESP.AsFloat +
      dmnf.cdsCompraVALOR_IPI.AsFloat;
    dmnf.cdsCompraAPAGAR.AsFloat := dmnf.cdsCompraVALOR.AsFloat -
      dmnf.cdsCompraENTRADA.AsFloat + dmnf.cdsCompraMULTA_JUROS.AsFloat -
      dmnf.cdsCompraDESCONTO.AsFloat;
    dmnf.cdsCompra.ApplyUpdates(0);

    if (DMNF.cds_Mov_det.State in [dsEdit]) then
        DMNF.cds_Mov_det.ApplyUpdates(0);
    if (DMNF.cds_Movimento.State in [dsEdit]) then
        DMNF.cds_Movimento.ApplyUpdates(0);
  end;
end;

procedure TfNFCompra.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
     key:= #0;
     SelectNext((Sender as TwinControl),True,True);
   end;
end;

procedure TfNFCompra.DBComboBox1Exit(Sender: TObject);
begin
  DBComboBox1.Color := clWindow;
  if (DBComboBox1.Text <> '') then
    DBEdit2.Text := DBComboBox1.Text;
end;

procedure TfNFCompra.DBComboBox1Enter(Sender: TObject);
begin
    DBComboBox1.Color := clYellow;
end;

procedure TfNFCompra.cds_nfNewRecord(DataSet: TDataSet);
begin
   //cds_nfNUMNF.AsInteger := 1999999;
   cds_nfVALOR_ICMS.AsFloat := 0;
   cds_nfVALOR_ICMS_SUBST.AsFloat := 0;
   cds_nfVALOR_PRODUTO.AsFloat := 0;
   cds_nfVALOR_FRETE.AsFloat := 0;
   cds_nfVALOR_SEGURO.AsFloat := 0;
   cds_nfVALOR_IPI.AsFloat := 0;
   cds_nfOUTRAS_DESP.AsFloat := 0;
   cds_nfBASE_ICMS.AsFloat := 0;
   cds_nfBASE_ICMS_SUBST.AsFloat := 0;
   cds_nfVALOR_TOTAL_NOTA.AsFloat := 0;
   cds_nfNATUREZA.AsInteger := dmnf.cds_MovimentoCODNATUREZA.AsInteger;
   cds_nfDESCNATUREZA.AsString := dmnf.cds_MovimentoDESCNATUREZA.AsString;
   cds_nfCODVENDA.AsInteger := dmnf.cdsCompraCODCOMPRA.AsInteger;
   cds_nfNOTAFISCAL.AsInteger := dmnf.cdsCompraNOTAFISCAL.AsInteger;
   cds_nfNOTASERIE.AsString := IntToStr(dmnf.cdsCompraNOTAFISCAL.AsInteger);
   cds_nfDTAEMISSAO.AsDateTime := dmnf.cdsCompraDATACOMPRA.AsDateTime;
   cds_nfDTASAIDA.AsDateTime := dmnf.cdsCompraDATACOMPRA.AsDateTime;
   cds_nfVALOR_PRODUTO.AsFloat := dmnf.cdsCompraVALOR.AsFloat;//fNF.vrr;
   cds_nfVALOR_TOTAL_NOTA.AsFloat := dmnf.cdsCompraVALOR.AsFloat;
   cds_nfNOTASERIE.AsString := IntToStr(dmnf.cdsCompraNOTAFISCAL.AsInteger);
   cds_nfCODCLIENTE.AsInteger := dmnf.cdsCompraCODFORNECEDOR.AsInteger;
   cds_nfHORASAIDA.AsDateTime := time;
   cds_nfESPECIE.AsString := 'VOLUME';
end;

procedure TfNFCompra.DtSrc_NFStateChange(Sender: TObject);
begin
    btnIncluirNF.Enabled := DtSrc_NF.State in [dsBrowse,dsInactive];
    btnGravarNF.Enabled := DtSrc_NF.State in [dsInsert,dsEdit];
    btnCancelarNF.Enabled := DtSrc_NF.State in [dsInsert,dsEdit];
    btnExcluirNF.Enabled := DtSrc_NF.State in [dsBrowse];
    btnImprimirNF.Enabled := DtSrc_NF.State in [dsBrowse];

    if DtSrc_NF.State in [dsInsert, dsEdit] then
    begin
      btnIncluirNF.Visible := False;
      btnExcluirNF.Visible := False;
      btnGravarNF.Visible := True;
      btnGravarNF.Enabled := True;
      btnCancelarNF.Visible := True;
      btnCancelarNF.Enabled := True;
    end;

    if DtSrc_NF.State in [dsBrowse,dsInactive] then
    begin
      btnIncluirNF.Enabled := True;
      btnIncluirNF.Visible := True;
      btnExcluirNF.Visible := True;
      btnExcluirNF.Enabled := True;
      btnGravarNF.Visible := False;
      btnCancelarNF.Visible := False;
    end;

end;

end.
