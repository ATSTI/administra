unit uNotaf1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, JvExStdCtrls, JvGroupBox, ComCtrls,
  JvExComCtrls, JvComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask,
  Buttons, ExtCtrls, MMJPanel, JvExMask, JvToolEdit, JvDBControls,
  JvCheckBox, DB, DBClient, JvMaskEdit, FMTBcd, SqlExpr, Menus;

type
  TfNotaf1 = class(TForm)
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
    JvGroupBox17: TJvGroupBox;
    DBEdit9: TDBEdit;
    JvGroupBox18: TJvGroupBox;
    DBEdit10: TDBEdit;
    JvGroupBox19: TJvGroupBox;
    DBEdit11: TDBEdit;
    JvGroupBox20: TJvGroupBox;
    DBEdit12: TDBEdit;
    JvGroupBox21: TJvGroupBox;
    DBEdit13: TDBEdit;
    JvGroupBox22: TJvGroupBox;
    DBEdit14: TDBEdit;
    JvGroupBox23: TJvGroupBox;
    DBEdit15: TDBEdit;
    JvGroupBox24: TJvGroupBox;
    DBEdit16: TDBEdit;
    JvGroupBox25: TJvGroupBox;
    DBEdit17: TDBEdit;
    JvGroupBox26: TJvGroupBox;
    DBEdit18: TDBEdit;
    JvGroupBox27: TJvGroupBox;
    DBEdit19: TDBEdit;
    JvGroupBox28: TJvGroupBox;
    JvGroupBox29: TJvGroupBox;
    cbTransportadora: TDBComboBox;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit54: TDBEdit;
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
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
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
    GroupBox6: TGroupBox;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit33: TDBEdit;
    BitBtn3: TBitBtn;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    BitBtn4: TBitBtn;
    cbFinanceiro: TJvCheckBox;
    cbEstoque: TJvCheckBox;
    dbeUsuario: TDBEdit;
    DataSource1: TDataSource;
    JvDBGrid1: TJvDBGrid;
    BitBtn5: TBitBtn;
    DBEdit34: TDBEdit;
    BitBtn6: TBitBtn;
    TabSheet1: TTabSheet;
    RadioGroup1: TRadioGroup;
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
    Label26: TLabel;
    Label36: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    BitBtn9: TBitBtn;
    localizaProduto: TSQLDataSet;
    localizaProdutoCODPRO: TStringField;
    localizaProdutoPRODUTO: TStringField;
    JvDBGrid2: TJvDBGrid;
    BitBtn10: TBitBtn;
    PopupMenu1: TPopupMenu;
    ExcluirItemNF1: TMenuItem;
    dbeSerie: TDBEdit;
    btnNotaFiscal: TBitBtn;
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
    procedure RadioGroup1Click(Sender: TObject);
    procedure cbCLiente1Change(Sender: TObject);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1ColExit(Sender: TObject);
    procedure JvDBGrid1EditChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure JvDBGrid2EditChange(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ExcluirItemNF1Click(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
  private
    { Private declarations }
    procedure incluiEntrada;
    procedure incluiMovimento;
    procedure incluiVenda;
    procedure incluiNotaFiscal;
    procedure buscaserieNF;
    procedure CarregaParametros;
    procedure gravamovimento;
    procedure gravamov_detalhe;
    procedure gravavenda;
   // procedure alteraVlrVenda;
  public
      vrr : double;
      codMovFin, codVendaFin, codCliFin : integer;
      parametroNF , tipoCompra: string;
    procedure gravanotafiscal;
    procedure calculaicms(Estado: String);
    procedure somavalores;
    { Public declarations }
  end;

var
  fNotaf1: TfNotaf1;
  valorUnitario: Double;
  codmovdet, codserv, codmd, centro_receita, cod_nat, cod_vendedor_padrao, cod_cli, estoq : integer;
  natureza, contas_pendentes, nome_vendedor_padrao, valor_fatura, fatura_NF: string;
  // variaveis da venda finalizar
  prazo, valor: double;
  terminal, data_movimento, varcancela : string;
  codigo_cliente, codigo_moviemento : integer;
  diasAumenta : integer;
  DtaTemp : TDateTime;
  TipoNF : string;

implementation

uses UDm, UDMNF, sCtrlResize, uProcurar, uProcurar_nf, uClienteCadastro,
  ufprocura_prod, uftransp, uFiltroMovimento, unitExclusao, Math,
  uFornecedorCadastro, uFiltroMov_compra, uFiltroMov_NFcompra,
  uNFeletronica;

{$R *.dfm}

procedure TfNotaf1.FormCreate(Sender: TObject);
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

  //sCtrlResize.CtrlResize(TForm(fNotaf));
  //Populo combobox CFOP
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
     cbTransportadora.Items.Add(dmnf.listaTranspNOMETRANSP.AsString);
     dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;
end;

procedure TfNotaf1.btnIncluirClick(Sender: TObject);
begin
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.open;
  CarregaParametros;
  incluiEntrada;
end;

procedure TfNotaf1.BitBtn3Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dmnf.scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if (fProcurar.ShowModal=mrOk) then
    begin
     dmnf.cdsCompraSERIE.AsString := dmnf.scds_serie_procSERIE.AsString;
     dmnf.cdsCompraNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger + 1;
     dmnf.cds_nf1NOTASERIE.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger + 1;
     dmnf.cds_nf1NOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger + 1;
    end;
   finally
    dmnf.scds_serie_proc.Close;
    fProcurar.Free;
   end;
   if (JvPageControl1.ActivePage = TabNF) then
     DBEdit2.SetFocus
   else
     DBEdit37.SetFocus;
end;

procedure TfNotaf1.incluiEntrada;
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
  incluiMovimento;
  incluiVenda;  
  incluiNotaFiscal;
end;

procedure TfNotaf1.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fNotaf1));
  JvPageControl1.ActivePage := TabNF;
  TabSheet1.TabVisible := False;

  if (codMovFin > 0) then
  begin
    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := codMovFin;
    dmnf.cds_Movimento.Open;

    if (dmnf.cds_MovimentoCODNATUREZA.AsInteger = 20) then
    begin
      cbFinanceiro.Checked := False;
      cbEstoque.Checked := False;
    end;
    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := codMovFin;
    dmnf.cds_Mov_det.Open;

   //Rotina usada só pra nf venda
  {  if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
    dmnf.cds_venda.Params[0].Clear;
    dmnf.cds_venda.Params[1].AsInteger := codMovFin;
    dmnf.cds_venda.Open;
    if (not dmnf.cds_venda.IsEmpty) then
      codVendaFin := dmnf.cds_vendaCODVENDA.AsInteger;
    //Mostra NF
    if (dmnf.cds_nf.Active) then
      dmnf.cds_nf.Close;
    dmnf.cds_nf.Params[0].Clear;
    dmnf.cds_nf.Params[1].AsInteger := codVendaFin;
    dmnf.cds_nf.Open;
    if (dmnf.cds_nfSTATUS.AsString = 'S') then
      RadioGroup1.ItemIndex := 0
    else
      RadioGroup1.ItemIndex := 1;
    }
    if (not  dm.cds_empresa.Active) then
      dm.cds_empresa.open;
    if ((dmnf.cds_nf.IsEmpty) and (codVendaFin > 0)) then
      btnIncluir.Click;
  end;
end;

procedure TfNotaf1.incluiMovimento;
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
end;

procedure TfNotaf1.incluiNotaFiscal;
begin
  if (not dmnf.cds_nf1.Active) then
     dmnf.cds_nf1.Open;
  dmnf.cds_nf1.Append;
  //DMNF.cds_nf1NOTASERIE.AsString := IntToStr(DMNF.cds_vendaNOTAFISCAL.AsInteger);
end;

procedure TfNotaf1.incluiVenda;
begin
  if DMNF.dtSrcCompra.DataSet.State in [dsInactive] then
  begin
    DMNF.dtSrcCompra.DataSet.Open;
    DMNF.dtSrcCompra.DataSet.Append;
  end;
  if DMNF.dtSrcCompra.DataSet.State in [dsBrowse] then
    DMNF.dtSrcCompra.DataSet.Append;

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
  DMNF.cdsCompraCODCOMPRADOR.AsInteger := 1;
  DMNF.cdsCompraCODUSUARIO.AsInteger := 1;

  dbeSerie.Text := '';
  if (not Dm.parametro.Active) then
    dm.parametro.Open;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (dm.parametro.Locate('PARAMETRO', 'SERIENF', [loCaseInsensitive])) then
       dbeSerie.Text := dm.parametroDADOS.AsString;
  end;
  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (dm.parametro.Locate('PARAMETRO', 'SERIENFSERV', [loCaseInsensitive])) then
      dbeSerie.Text := dm.parametroDADOS.AsString;
  end;
  if (dbeSerie.Text = '') then
  begin
    dm.parametro.Locate('PARAMETRO', 'SERIEPADRAO', [loCaseInsensitive]);
    dbeSerie.Text := dm.parametroDADOS.AsString;
  end;
  DMNF.cdsCompraSERIE.AsString := dbeSerie.Text;
  dbeUsuario.Text := IntToStr(cod_vendedor_padrao);
  buscaserieNF;   

end;

procedure TfNotaf1.buscaserieNF;
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
      DMNF.cdsCompraSERIE.AsString := DMNF.scds_serie_procSERIE.AsString;
      DMNF.cdsCompraNOTAFISCAL.AsInteger := DMNF.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end; 
end;

procedure TfNotaf1.CarregaParametros;
begin
  centro_receita := 0;
  procprod := 'PROC_PROD_SIMPLES';
  if (not dm.parametro.Active) then
    dm.parametro.Open;

    if (dm.parametro.Locate('PARAMETRO','CENTRO RECEITA PADRAO', [loCaseInsensitive])) then
    begin
      Try
        centro_receita := strToint(dm.parametroDADOS.AsString);
      except
        centro_receita := 0;
      end;
    end;

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

end;

procedure TfNotaf1.cbCLienteChange(Sender: TObject);
begin
 if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  if (cbCLiente.Text <> '') then
  begin
    DMNF.listaFornecedor.Open;
    DMNF.listaFornecedor.Locate('RAZAOSOCIAL',cbCLiente.Text,[loCaseInsensitive]);
    dmnf.cds_MovimentoCODFORNECEDOR.AsInteger := DMNF.listaFornecedorCODFORNECEDOR.AsInteger;
    dmnf.cds_MovimentoCODCLIENTE.AsInteger := 0;
    DMNF.cds_nf1CODCLIENTE.AsInteger := DMNF.listaFornecedorCODFORNECEDOR.AsInteger;
    DMNF.cds_nf1CNPJCLI.AsString := DMNF.listaFornecedorCNPJ.AsString;
    DMNF.cds_nf1INSCCLI.AsString := DMNF.listaFornecedorINSCESTADUAL.AsString;
    DMNF.cds_nf1LOGRADOURO.AsString := DMNF.listaFornecedorLOGRADOURO.AsString;
    DMNF.cds_nf1CIDADECLI.AsString := DMNF.listaFornecedorCIDADE.AsString;
    DMNF.cds_nf1BAIRROCLI.AsString := DMNF.listaFornecedorBAIRRO.AsString;
    DMNF.cds_nf1CEPCLI.AsString := DMNF.listaFornecedorCEP.AsString;
    DMNF.cds_nf1UFCLI.AsString := DMNF.listaFornecedorUF.AsString;
    DMNF.cds_nf1TELEFONE.AsString := DMNF.listaFornecedorTELEFONE.AsString;
    prazo := dmnf.listaFornecedorPRAZOPAGAMENTO.AsFloat;
  end;
end;

procedure TfNotaf1.cbNaturezaChange(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFNOME',cbNatureza.Text,[loCaseInsensitive]);
    DMNF.cds_nf1CFOP.AsString := DMNF.listaCFOPCFCOD.AsString;
    DMNF.listaCFOP.Close;
  end;
end;

procedure TfNotaf1.cbCFOPChange(Sender: TObject);
begin
  if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFCOD',cbCFOP.Text,[loCaseInsensitive]);
    DMNF.cds_nf1DESCNATUREZA.AsString := DMNF.listaCFOPCFNOME.AsString;
    DMNF.listaCFOP.Close;
  end;
end;

procedure TfNotaf1.btnSairClick(Sender: TObject);
begin
  dm.cds_empresa.Close;
  close;
end;

procedure TfNotaf1.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfNotaf1.BitBtn1Click(Sender: TObject);
begin
    fFornecedorCadastro:=TfFornecedorCadastro.Create(Application);
    try
      fFornecedorCadastro.ShowModal;
    finally
      fClienteCadastro.free;
    end;
    if (not dmnf.listaFornecedor.Active) then
      dmnf.listaFornecedor.Open;
    dmnf.listaFornecedor.First;
    cbCLiente.Items.Clear;
    while not dmnf.listaFornecedor.Eof do
    begin
       cbCLiente.Items.Add(dmnf.listaFornecedorRAZAOSOCIAL.AsString);
       dmnf.listaFornecedor.Next;
    end;
    dmnf.listaFornecedor.Close;
    cbCLiente.Text := DM.varNomeCliente;
end;

procedure TfNotaf1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfNotaf1.btnCancelarClick(Sender: TObject);
begin
    DMNF.cds_nf1.Cancel;
    //DMNF.cds_venda.Cancel;
    DMNF.cds_Mov_det.Cancel;
    DMNF.cds_Movimento.Cancel;
    {DMNF.cds_nf.Close;
    DMNF.cds_venda.Close;
    DMNF.cds_Mov_det.Close;
    DMNF.cds_Movimento.Close;}
end;

procedure TfNotaf1.BitBtn5Click(Sender: TObject);
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

procedure TfNotaf1.cbTransportadoraChange(Sender: TObject);
begin
 if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  if (cbTransportadora.Text <> '') then
  begin
     DMNF.listaTransp.Open;
     DMNF.listaTransp.Locate('NOMETRANSP',cbTransportadora.Text,[loCaseInsensitive]);
     DMNF.cds_nf1PLACATRANSP.AsString := DMNF.listaTranspPLACATRANSP.AsString;
     DMNF.cds_nf1UF_VEICULO_TRANSP.AsString := DMNF.listaTranspUF_VEICULO_TRANSP.AsString;
     DMNF.cds_nf1CNPJ_CPF.AsString := DMNF.listaTranspCNPJ_CPF.AsString;
     DMNF.cds_nf1END_TRANSP.AsString := DMNF.listaTranspEND_TRANSP.AsString;
     DMNF.cds_nf1CIDADE_TRANSP.AsString := DMNF.listaTranspCIDADE_TRANSP.AsString;
     DMNF.cds_nf1UF_TRANSP.AsString := DMNF.listaTranspUF_TRANSP.AsString;
     DMNF.cds_nf1INSCRICAOESTADUAL.AsString := DMNF.listaTranspINSCRICAOESTADUAL.AsString;
     DMNF.cds_nf1CORPONF1.AsString := DMNF.listaTranspCORPONF1.AsString;
     DMNF.cds_nf1CORPONF2.AsString := DMNF.listaTranspCORPONF2.AsString;
     DMNF.cds_nf1CORPONF3.AsString := DMNF.listaTranspCORPONF3.AsString;
     DMNF.cds_nf1CORPONF4.AsString := DMNF.listaTranspCORPONF4.AsString;
     DMNF.cds_nf1CORPONF5.AsString := DMNF.listaTranspCORPONF5.AsString;
     DMNF.cds_nf1CORPONF6.AsString := DMNF.listaTranspCORPONF6.AsString;
     DMNF.listaTransp.Close;
  end;
end;

procedure TfNotaf1.BitBtn2Click(Sender: TObject);
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

procedure TfNotaf1.btnGravarClick(Sender: TObject);
begin
  if (DBEdit33.Text = '') then
  begin
    MessageDlg('Informe o n. da Nota Fiscal', mtError, [mbOK], 0);
    DBEdit33.SetFocus;
    exit;
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
 //if (cbFinanceiro.Checked) then  -- Neste caso usa a tabela venda ,
 //  -- pois, a natureza q está nota é gravado não gera financeiro
 if (DMNF.dtSrcCompra.State in [dsInsert, dsEdit]) then
   gravavenda;// Gravo dados na tabela compra...
 //Salvo Nota Fiscal
 if (DMNF.DtSrc_NF1.State in [dsInsert, dsEdit]) then
   gravanotafiscal;
end;

procedure TfNotaf1.gravamov_detalhe;
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
        if (cbEstoque.Checked = False) then
          dmnf.cds_Mov_detBAIXA.AsString := '2';
        dmnf.cds_Mov_det.post;
      end;
      dmnf.cds_Mov_det.Next;
    end;
    dmnf.cds_Mov_det.ApplyUpdates(0);
end;

procedure TfNotaf1.gravamovimento;
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
    dmnf.cds_MovimentoDATAMOVIMENTO.AsDateTime := dmnf.cds_nf1DTAEMISSAO.AsDateTime;

    if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 4;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'COMPRA';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 1;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Entrada';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = False)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 20;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Nota Fiscal Compra';
    end;

   end;
  //*******************************************************************************
   dmnf.cds_Movimento.ApplyUpdates(0);
end;

procedure TfNotaf1.gravavenda;
{var // strSql, strTit, tipoMov: String;
     diferenca : double;}
begin
    DMNF.cdsCompraCODFORNECEDOR.AsInteger := DMNF.cds_MovimentoCODFORNECEDOR.AsInteger;
    DMNF.cdsCompraCODCOMPRADOR.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    DMNF.cdsCompraDATACOMPRA.AsDateTime := DMNF.cds_MovimentoDATAMOVIMENTO.AsDateTime;
    DMNF.cdsCompraCODCCUSTO.AsInteger := DMNF.cds_MovimentoCODALMOXARIFADO.AsInteger;
    dmnf.cdsCompraCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cdsCompraCODUSUARIO.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    dmnf.cdsCompraBANCO.AsInteger := 1;
    DMNF.cdsCompraNOTAFISCAL.AsInteger := StrToint(DBEdit33.Text);

    if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;

   if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;
   dmnf.sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) - ((QTDE_ALT/100)*(QUANTIDADE * PRECO))) FROM MOVIMENTODETALHE' +
                           ' WHERE CODMOVIMENTO = ' +
                           IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
   dmnf.sqs_tit.Open;
   // if (parametroNF <> 'S') then
   // begin
    dmnf.cdsCompraVALOR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
    dmnf.cdsCompraVALOR_PAGAR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
   // end;
  vrr := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  dmnf.sqs_tit.Close;

  if (dmnf.cdsCompra.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_COMPRA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cdsCompraCODCOMPRA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  //if (parametroNF <> 'S') then
  //  alteraVlrVenda;

  dmnf.cdsCompra.ApplyUpdates(0);
  //***************************************
  if not dmnf.scds_serie_proc.Active then
  begin
     dmnf.scds_serie_proc.Params[0].AsString := dbeSerie.Text;
     dmnf.scds_serie_proc.Open;
  end;
  if (not dmnf.scds_serie_proc.IsEmpty) then
  if (dmnf.cds_nf1NOTAFISCAL.AsInteger > dmnf.scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    dmnf.scds_serie_proc.Edit;
    dmnf.scds_serie_procULTIMO_NUMERO.AsInteger := dmnf.cdsCompraNOTAFISCAL.AsInteger;
    dmnf.scds_serie_proc.ApplyUpdates(0);
  end;
  dmnf.scds_serie_proc.Close;

end;

procedure TfNotaf1.BitBtn4Click(Sender: TObject);
begin
  try
    dmnf.repdm.FileName := str_relatorio + 'nf_fornecedor.rep';
    dmnf.repdm.Title := dmnf.repdm.FileName;
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nf1NUMNF.AsInteger;
    dmnf.repdm.Execute;
  except
    // deu erro na impressão então para aqui.
  end;
  if (dmnf.cds_nf1.State in [dsBrowse]) then
    dmnf.cds_nf1.Edit;
  dmnf.cds_nf1IMPRESSA.AsString := 'S';
  dmnf.cds_nf1.ApplyUpdates(0);
end;

procedure TfNotaf1.btnProcurarClick(Sender: TObject);
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
     {if (tipoCompra = 'DEVOLUCAO') then
     begin
       ffiltromov_NFcompra.Edit3.Text := '9';
       ffiltromov_NFcompra.Edit4.Text := 'Devolução';
       //ffiltromov_compra.Label9.Caption := 'Devolução Compras';
       ffiltromov_NFcompra.Label10.Caption := 'Devolução Compras';
       ffiltromov_NFcompra.MMJPanel1.Background.EndColor := clOlive;
       ffiltromov_NFcompra.MMJPanel2.Background.EndColor := clOlive;
     end;}

     fFiltroMov_NFcompra.ShowModal;

     {if (dmnf.cds_nf1.Active) then
       dmnf.cds_nf1.Close;
     dmnf.cds_nf1.Params[0].Clear;
     dmnf.cds_nf1.Params[1].AsInteger := dmnf.cds_nf1NUMNF.AsInteger ;
     dmnf.cds_nf1.Open;}

     dmnf.cds_Movimento.Close;
     dmnf.cds_Movimento.Params[0].AsInteger := fFiltroMov_NFcompra.cod_mov;
     dmnf.cds_Movimento.Open;

     if (dmnf.cds_MovimentoCODNATUREZA.AsInteger = 20) then
     begin
       cbFinanceiro.Checked := False;
       cbEstoque.Checked := False;
     end;

     dmnf.cds_Mov_det.Close;
     dmnf.cds_Mov_det.Params[0].Clear;
     dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
     dmnf.cds_Mov_det.Open;

      //mostra venda
     if (dmnf.cdsCompra.Active) then
       dmnf.cdsCompra.Close;
     dmnf.cdsCompra.Params[0].Clear;
     dmnf.cdsCompra.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.asInteger;
     dmnf.cdsCompra.Open;

     //Mostra NF
     if (dmnf.cds_nf1.Active) then
       dmnf.cds_nf1.Close;
     dmnf.cds_nf1.Params[0].Clear;
     dmnf.cds_nf1.Params[1].AsInteger := dmnf.cdsCompraCODCOMPRA.asInteger;
     dmnf.cds_nf1.Open;
     if (dmnf.cds_nf1STATUS.AsString = 'S') then
       RadioGroup1.ItemIndex := 0
     else
       RadioGroup1.ItemIndex := 1;

     if (not  dm.cds_empresa.Active) then
       dm.cds_empresa.open;
	finally
		fFiltroMov_NFcompra.Free;
	end;
end;

procedure TfNotaf1.gravanotafiscal;
var nfnum : integer;
begin
 nfnum := 0;
 // Gravo a NF
 if (RadioGroup1.ItemIndex = 1) then
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
  end;
  dmnf.cds_nf1CODVENDA.AsInteger := dmnf.cdsCompraCODCOMPRA.AsInteger;
  dmnf.cds_nf1NATUREZA.AsInteger := dmnf.cds_MovimentoCODNATUREZA.AsInteger;
  dmnf.cds_nf1SERIE.AsString := dbeSerie.Text;
  {if (nfnum = 0) then
    nfnum := dmnf.cds_nf1NUMNF.AsInteger;}
 // if (parametroNF <> 'S') then
 //   alteraVlrVenda;
{  if (RadioGroup1.ItemIndex = 0) then
    dmnf.cds_nf1STATUS.AsString := 'S';
}
  dmnf.cds_nf1.ApplyUpdates(0);
  // Calcula ICMS - IPI
  //if (codVendaFin = 0) then
 // calculaicms(dmnf.cds_nf1UF.AsString);
 { dmnf.cds_nf1.close;
  dmnf.cds_nf1.Params[0].AsInteger := nfnum;
  dmnf.cds_nf1.open;}
end;

procedure TfNotaf1.calculaicms(Estado: String);
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

procedure TfNotaf1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DMNF.cds_nf1.State in [dsInsert, dsEdit]) then
      DMNF.cds_nf1.Cancel;
  //if (DMNF.cds_venda.State in [dsInsert, dsEdit]) then
   //   DMNF.cds_venda.Cancel;
  if (DMNF.cds_Mov_det.State in [dsInsert, dsEdit]) then
      DMNF.cds_Mov_det.Cancel;
  if (DMNF.cds_Movimento.State in [dsInsert, dsEdit]) then
      DMNF.cds_Movimento.Cancel;
  DMNF.cds_nf1.Close;
  //DMNF.cds_venda.Close;
  DMNF.cds_Mov_det.Close;
  DMNF.cds_Movimento.Close;
end;

procedure TfNotaf1.somavalores;
var
  varTotalnota : double;
begin
     varTotalnota := 0;
//     dmnf.cds_nfVALOR_ICMS.Value +
     varTotalnota :=  dmnf.cds_nf1VALOR_FRETE.Value
                    + dmnf.cds_nf1VALOR_SEGURO.Value + dmnf.cds_nf1OUTRAS_DESP.Value
                    + dmnf.cds_nf1VALOR_IPI.Value;
     if (varTotalnota <> dmnf.cds_nf1VALOR_TOTAL_NOTA.value) then
         dmnf.cds_nf1VALOR_TOTAL_NOTA.value := dmnf.cds_nf1VALOR_PRODUTO.value + varTotalnota;
end;

procedure TfNotaf1.DBEdit11Change(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsInsert, dsEdit]) then
    somavalores;
end;

procedure TfNotaf1.btnExcluirClick(Sender: TObject);
begin
  formExclusao := TformExclusao.Create(Application);
  try
     formExclusao.ShowModal;
  finally
     formExclusao.Free;
  end;
end;

procedure TfNotaf1.BitBtn6Click(Sender: TObject);
begin
 {   dmnf.repdm.FileName := str_relatorio + 'nf_new_serv.rep';
    dmnf.repdm.Title := dmnf.repdm.FileName;
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nf1NUMNF.AsInteger;
    dmnf.repdm.Execute;}
end;

procedure TfNotaf1.RadioGroup1Click(Sender: TObject);
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

procedure TfNotaf1.cbCLiente1Change(Sender: TObject);
begin
 if (dmnf.cds_nf1.State in [dsinsert, dsEdit]) then
  if (cbCLiente1.Text <> '') then
  begin
    DMNF.listaCliente.Open;
    DMNF.listaCliente.Locate('RAZAOSOCIAL',cbCLiente1.Text,[loCaseInsensitive]);
    DMNF.cds_nf1CODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_MovimentoCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    //dmnf.cds_vendaCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;;
    dmnf.cds_nf1CODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    DMNF.cds_nf1CNPJCLI.AsString := DMNF.listaClienteCNPJ.AsString;
    DMNF.cds_nf1INSCCLI.AsString := DMNF.listaClienteINSCESTADUAL.AsString;
    DMNF.cds_nf1LOGRADOURO.AsString := DMNF.listaClienteLOGRADOURO.AsString;
    DMNF.cds_nf1CIDADECLI.AsString := DMNF.listaClienteCIDADE.AsString;
    DMNF.cds_nf1BAIRROCLI.AsString := DMNF.listaClienteBAIRRO.AsString;
    DMNF.cds_nf1CEPCLI.AsString := DMNF.listaClienteCEP.AsString;
    DMNF.cds_nf1UFCLI.AsString := DMNF.listaClienteUF.AsString;
    DMNF.cds_nf1TELEFONE.AsString := DMNF.listaClienteTELEFONE.AsString;
    prazo := dmnf.listaClientePRAZORECEBIMENTO.AsFloat;
    DMNF.listaCliente.Close;
  end;
end;

procedure TfNotaf1.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
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

procedure TfNotaf1.JvDBGrid1ColExit(Sender: TObject);
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

procedure TfNotaf1.JvDBGrid1EditChange(Sender: TObject);
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

{procedure TfNotaf1.alteraVlrVenda;
begin
  if (dmnf.cds_venda.state in [dsBrowse]) then
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
end;}

procedure TfNotaf1.BitBtn9Click(Sender: TObject);
var nunf: integer;
begin
  if (dmnf.cds_nf1.State in [dsEdit, dsInsert]) Then
  begin
    btnGravar.Click;
    exit;
  end;
  nunf := DMNF.cds_nf1NUMNF.AsInteger;
  // Calcula ICMS - IPI
  calculaicms('OUTROS');
  // Abre a tabela Novamente.
  dmnf.cds_nf1.Close;
  dmnf.cds_nf1.Params[0].AsInteger := nunf;
  dmnf.cds_nf1.Open;
end;

procedure TfNotaf1.JvDBGrid2EditChange(Sender: TObject);
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

procedure TfNotaf1.BitBtn10Click(Sender: TObject);
begin
  try
    dmnf.repdm.FileName := str_relatorio + 'nf_transporte.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    dmnf.repdm.Execute;
  except
    // deu erro na impressão então para aqui.
  end;
  if (dmnf.cds_nf1.State in [dsBrowse]) then
    dmnf.cds_nf1.Edit;
  dmnf.cds_nf1IMPRESSA.AsString := 'S';
  dmnf.cds_nf1.ApplyUpdates(0);
end;

procedure TfNotaf1.ExcluirItemNF1Click(Sender: TObject);
begin
 if  DMNF.DtSrc1.DataSet.State in [dsBrowse] then
 begin
   if DMNF.DtSrc.DataSet.State in [dsBrowse] then
     DMNF.DtSrc.DataSet.edit;
   if  MessageDlg('Confirma a exclusão do item ''' + DMNF.cds_Mov_detDESCPRODUTO.AsString + '''?', mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
   Begin
     if (DMNF.cds_nf1.State in [dsBrowse]) then
        DMNF.cds_nf1.Edit;
     DMNF.cds_nf1VALOR_PRODUTO.Value := DMNF.cds_nf1VALOR_PRODUTO.Value - DMNF.cds_Mov_detValorTotal.Value;
     DMNF.cds_nf1VALOR_TOTAL_NOTA.Value := DMNF.cds_nf1VALOR_TOTAL_NOTA.Value - DMNF.cds_Mov_detValorTotal.Value;
     DMNF.DtSrc1.DataSet.Delete;
     if DMNF.DtSrc.DataSet.State in [dsBrowse] then
       DMNF.DtSrc.DataSet.edit;
     btnGravar.Click;
     if (DMNF.cds_nf1.State in [dsEdit]) then
     DMNF.cds_nf1.ApplyUpdates(0);
   end;
 end;
end;

procedure TfNotaf1.btnNotaFiscalClick(Sender: TObject);
begin
    fNFeletronica.cbTipoNota.ItemIndex := 0;
    fNFeletronica.ShowModal;
end;

end.
