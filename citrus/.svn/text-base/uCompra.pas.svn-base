unit uCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, JvMaskEdit, Mask, JvExMask, JvToolEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvBaseEdits, fClassCitrus, uUtils, DBCtrls;

type
  TfCompra = class(TfPai_new)
    GroupBox2: TGroupBox;
    edCodigoProdutor: TEdit;
    Label1: TLabel;
    cbNomeProdutor: TJvDBSearchComboBox;
    Label2: TLabel;
    dtDataCompra: TJvDatePickerEdit;
    Label12: TLabel;
    dtDataPagFornecedor: TJvDatePickerEdit;
    Label13: TLabel;
    GroupBox4: TGroupBox;
    edCodigoColhedor: TEdit;
    cbNomeColhedor: TJvDBSearchComboBox;
    Label15: TLabel;
    dtPagColhedor: TJvDatePickerEdit;
    Label16: TLabel;
    Label17: TLabel;
    GroupBox5: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edCodFretista: TEdit;
    cbNomeFretista: TJvDBSearchComboBox;
    dtDataPagFrete: TJvDatePickerEdit;
    GroupBox6: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edCodCliente: TEdit;
    cbNomeCliente: TJvDBSearchComboBox;
    dtVenda: TJvDatePickerEdit;
    dtVencimentoV: TJvDatePickerEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    edCodigoProduto: TEdit;
    cbNomeProduto: TJvDBSearchComboBox;
    edQuantidadeCompra: TJvCalcEdit;
    edPrecoCompra: TJvCalcEdit;
    edTotalCompra: TJvCalcEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbNumeroCFO: TComboBox;
    dtEmissaoCFO: TJvMaskEdit;
    dtValidadeCFO: TJvMaskEdit;
    edQuantidadeCFO: TJvCalcEdit;
    Label26: TLabel;
    edQuantidadeV: TJvCalcEdit;
    Label27: TLabel;
    edPrecoV: TJvCalcEdit;
    Label28: TLabel;
    edPrecoVendaTotal: TJvCalcEdit;
    cbCentroCusto: TComboBox;
    cbComprador: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    Label11: TLabel;
    edPrecoColhedor: TJvCalcEdit;
    edVlrColhedor: TJvCalcEdit;
    Label18: TLabel;
    edVlrFrete: TJvCalcEdit;
    Label31: TLabel;
    BitBtn1: TBitBtn;
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCodigoProdutorEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodigoProdutorKeyPress(Sender: TObject; var Key: Char);
    procedure cbNomeProdutorChange(Sender: TObject);
    procedure cbNumeroCFOChange(Sender: TObject);
    procedure edCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure cbNomeProdutoChange(Sender: TObject);
    procedure cbCompradorChange(Sender: TObject);
    procedure cbNomeColhedorChange(Sender: TObject);
    procedure edCodigoColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure edCodFretistaKeyPress(Sender: TObject; var Key: Char);
    procedure cbNomeFretistaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoCompraExit(Sender: TObject);
    procedure cbNomeClienteChange(Sender: TObject);
    procedure edPrecoCompraKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure DtSrcDataChange(Sender: TObject; Field: TField);
    procedure edCodClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edQuantidadeVKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoVKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoVendaTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edVlrColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure edTotalCompraKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    contaDespesa: string;
    contaDespesaFrete: string;
    tipo: string;
  public
    grava: TCompras;
    { Public declarations }
  end;

var
  fCompra: TfCompra;

implementation

uses UDm, uDmCitrus, uFiltroMov_compra, uNotafiscal;

{$R *.dfm}

procedure TfCompra.btnGravarClick(Sender: TObject);
begin
  //inherited;
  grava.CodProdutor := edCodigoProdutor.Text;
  grava.DataCompra := dtDataCompra.Date;
  dmCitrus.cdsProduto.Locate('CODPRO', edCodigoProduto.Text, [loPartialKey]);
  grava.CodProduto := IntToStr(dmCitrus.cdsProdutoCODPRODUTO.asInteger);
  grava.Quantidade := edQuantidadeCompra.Value;
  grava.ValorCx := edPrecoCompra.Value;
  grava.DataVencimento := dtDataPagFornecedor.Date;
  //Fazer a busca pelo CDS,conforme seleção na ComboBox
  if (not dm.cds_usuario_cadastro.Active) then
    dm.cds_usuario_cadastro.Open;
  dm.cds_usuario_cadastro.Locate('NOMEUSUARIO', cbComprador.Text, [loCaseInsensitive]);
  grava.CodComprador := dm.cds_usuario_cadastroCODUSUARIO.AsInteger;
  //Fazer a busca pelo CDS,conforme seleção na ComboBox
  if (not dm.cds_ccusto.Active) then
    dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME',cbCentroCusto.Text, [loCaseInsensitive]);
  grava.CentroResultado := dm.cds_ccustoCODIGO.AsInteger;
  //CFO
  grava.CFO := cbNumeroCFO.Text;
  //-----------------
  grava.CodColhedor := edCodigoColhedor.Text;
  grava.ContaDespesa := contaDespesa;
  grava.DataPagColhedor := dtPagColhedor.Date;
  grava.VlrColhedor := edVlrColhedor.Value;
  //-----------------
  grava.DataVenda := dtVenda.Date;
  grava.DataVencimentoV := dtVencimentoV.Date;
  grava.QtdeVenda := edQuantidadeV.Value;
  grava.VlrVenda := edPrecoV.Value;
  grava.CodCliente := edCodCliente.Text;
  //-----------------
  grava.CodFretista := edCodFretista.Text;
  grava.VlrFrete := edVlrFrete.Value;
  grava.DataPagFrete := dtDataPagFrete.Date;
  grava.ContaDespesaFrete := contaDespesaFrete;
  //-----------------
  if (tipo = 'novo') then
  begin
    grava.InsereCompra;
    grava.InsereDespesa;
    grava.InsereVenda;
    grava.InsereDespesaFrete;
  end;
  if (tipo = 'altera') then
  begin
    grava.AlteraCompra;
    grava.AlteraDespesa;
    grava.AlteraVenda;
    grava.AlteraDespesaFrete;
  end;
  //-----------------
  grava.Destroy;
  dtsrc.DataSet.Cancel;
end;

procedure TfCompra.btnIncluirClick(Sender: TObject);
begin
  inherited;
  tipo := 'novo';
  cbNomeProdutor.Text := '';
  cbNomeProduto.Text := '';
  cbNomeCliente.Text := '';
  cbNomeFretista.Text := '';
  cbNomeColhedor.Text := '';
end;

procedure TfCompra.btnProcurarClick(Sender: TObject);
var codMov: string;
begin
  inherited;
  tipo := 'altera';
  Application.CreateForm(TfFiltroMov_compra, fFiltroMov_compra);
  Try
    fFiltroMov_compra.ShowModal;
    codMov := IntToStr(fFiltroMov_compra.cds_cnsCODMOVIMENTO.AsInteger);
    grava.CodMovimento := codMov;
    dm.cds_ccusto.Locate('CODIGO',fFiltroMov_compra.cds_cnsCODALMOXARIFADO.asInteger, [loPartialKey]);
    cbCentroCusto.Text := dm.cds_ccustoNOME.AsString;
    dm.cds_usuario_cadastro.Locate('CODUSUARIO',fFiltroMov_compra.cds_cnsCODCOMPRADOR.AsInteger ,[loPArtialKey]);
    cbComprador.Text := dm.cds_usuario_cadastroNOMEUSUARIO.asString;
    dmCitrus.cdsProdutor.locate('CODFORNECEDOR',fFiltroMov_compra.cds_cnsCODFORNECEDOR.ASInteger,[loPartialKey]);
    edCodigoProdutor.Text := intToStr(dmCitrus.cdsProdutorCODFORNECEDOR.asInteger);
    dtDataCompra.Date := fFiltroMov_compra.cds_cnsDATACOMPRA.asDateTime;
    dtDataPagFornecedor.Date := fFiltroMov_compra.cds_cnsDATAVENCIMENTO.asDateTime;
    cbNumeroCFO.Text := fFiltroMov_compra.cds_cnsN_BOLETO.ASString;
    // Produto #################################################################
    if (dmCitrus.sdsBusca.active) then
      dmCitrus.sdsBusca.Close;
    dmCitrus.sdsBusca.commandText := 'SELECT m.CODPRODUTO, p.PRODUTO, m.PRECO, ' +
    ' m.QUANTIDADE, m.VALTOTAL , p.CODPRO FROM MOVIMENTODETALHE m , PRODUTOS p ' +
    ' WHERE p.CODPRODUTO = m.CODPRODUTO AND m.CODMOVIMENTO = ' + codMov;
    dmCitrus.sdsBusca.open;
    edCodigoProduto.Text := (dmCitrus.sdsBusca.Fields[5].AsString);
    cbNomeProduto.Text := dmCitrus.sdsBusca.Fields[1].AsString;
    edQuantidadeCompra.Value := dmCitrus.sdsBusca.Fields[3].AsFloat;
    edPrecoCompra.Value := dmCitrus.sdsBusca.Fields[2].AsFloat;
    edTotalCompra.Value := dmCitrus.sdsBusca.Fields[4].AsFloat;
    // Colhedor ################################################################
    if (dmCitrus.sdsBusca.active) then
      dmCitrus.sdsBusca.Close;
    dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
    ' p.CODFORNECEDOR, f.NOMEFORNECEDOR from PAGAMENTO p, FORNECEDOR f' +
    ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
    QuotedStr(codMov + '-C');
    dmCitrus.sdsBusca.open;
    edCodigoColhedor.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
    cbNomeColhedor.Text := dmCitrus.sdsBusca.Fields[3].AsString;
    dtPagColhedor.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
    edVlrColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
    if (dmCitrus.sdsBusca.Fields[1].AsFloat > 0) then
      edPrecoColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat/
      edQuantidadeCompra.Value
    else
      edPrecoColhedor.Value := 0;
    // FRETE ###################################################################
    if (dmCitrus.sdsBusca.active) then
      dmCitrus.sdsBusca.Close;
    dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
    ' p.CODFORNECEDOR, f.NOMEFORNECEDOR from PAGAMENTO p, FORNECEDOR f' +
    ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
    QuotedStr(codMov + '-F');
    dmCitrus.sdsBusca.open;
    edCodFretista.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
    cbNomeFretista.Text := dmCitrus.sdsBusca.Fields[3].AsString;
    dtDataPagFrete.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
    edVlrFrete.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
    // VENDA ###################################################################
    if (dmCitrus.sdsBusca.active) then
      dmCitrus.sdsBusca.Close;
    dmCitrus.sdsBusca.commandText := 'SELECT v.DATAVENCIMENTO, v.VALOR, ' +
    ' m.CODCLIENTE, c.NOMECLIENTE, d.PRECO, d.QUANTIDADE, v.DATAVENDA, v.CODVENDA ' +
    ' from VENDA v, MOVIMENTODETALHE d, CLIENTES c, MOVIMENTO m ' +
    ' WHERE m.CODMOVIMENTO = v.CODMOVIMENTO and d.CODMOVIMENTO = v.CODMOVIMENTO' +
    ' and c.CODCLIENTE = v.CODCLIENTE AND v.NOTAFISCAL = ' + codMov +
    ' and v.SERIE = ' + QuotedStr('V');
    dmCitrus.sdsBusca.open;
    grava.CodVenda := dmCitrus.sdsBusca.Fields[7].AsInteger;
    grava.CodCliente := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
    edCodCliente.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
    cbNomeCliente.Text := dmCitrus.sdsBusca.Fields[3].AsString;
    dtVenda.Date := dmCitrus.sdsBusca.Fields[6].AsDateTime;
    dtVencimentoV.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
    edPrecoV.Value := dmCitrus.sdsBusca.Fields[4].AsFloat;
    edPrecoVendaTotal.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
    edQuantidadeV.Value := dmCitrus.sdsBusca.Fields[5].AsFloat;
    dmCitrus.sdsBusca.Close;
  finally
    fFiltroMov_compra.Free;
  end;
end;

procedure TfCompra.FormCreate(Sender: TObject);
var conta_local: String;
begin
  inherited;
  // Inicializo a Classe TCompras(fClassCitrus).
  grava := TCompras.Create;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ContaDespesaColheita';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('Conta de Despesas de Colheita não cadastrado ' + #10#13 +
      'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaColheita',mtInformation,[mbOk],0);
  end
  else
    contaDespesa := dm.cds_parametroDADOS.AsString;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ContaDespesaFrete';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('Conta de Despesas de Frete não cadastrado ' + #10#13 +
      'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaFrete',mtInformation,[mbOk],0);
  end
  else
    contaDespesaFrete := dm.cds_parametroDADOS.AsString;

  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  // populo a combobox
  DM.cds_ccusto.First;
  while not DM.cds_ccusto.Eof do
  begin
    cbCentroCusto.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;

  // Comprador
  if dm.cds_usuario_cadastro.Active then
    dm.cds_usuario_cadastro.Close;
  dm.cds_usuario_cadastro.CommandText := 'SELECT * FROM USUARIO WHERE PERFIL = ' +
    QuotedStr('Compra');
  dm.cds_usuario_cadastro.Open;
  // populo a combobox
  Dm.cds_usuario_cadastro.First;
  while not Dm.cds_usuario_cadastro.Eof do
  begin
    cbComprador.Items.Add(dm.cds_usuario_cadastroNOMEUSUARIO.AsString);
    DM.cds_usuario_cadastro.Next;
  end;

end;

procedure TfCompra.edCodigoProdutorEnter(Sender: TObject);
begin
  //inherited;
end;

procedure TfCompra.FormShow(Sender: TObject);
var icomp: integer;
begin
  inherited;
  for icomp:=0 to ComponentCount - 1 do
  begin
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := False;
   if Components[icomp] is TComboBox then
      (Components[icomp] as TComboBox).Enabled := False;
   if Components[icomp] is TJvCalcEdit then
      (Components[icomp] as TJvCalcEdit).Enabled := False;
   if Components[icomp] is TJvDbSearchComboBox then
      (Components[icomp] as TJvDbSearchComboBox).Enabled := False;
  end;
  if (not dmCitrus.cdsProdutor.Active) then
    dmCitrus.cdsProdutor.Open;
  cbNomeProdutor.Text := '';
  if (not dmCitrus.cdsProduto.Active) then
    dmCitrus.cdsProduto.Open;
  cbNomeProduto.Text := '';
  if (not dmCitrus.cdsCliente.Active) then
    dmCitrus.cdsCliente.Open;
  cbNomeCliente.Text := '';
  if (not dmCitrus.cdsColhedor.Active) then
    dmCitrus.cdsColhedor.Open;
  cbNomeColhedor.Text := '';
  if (not dmCitrus.cdsFretista.Active) then
    dmCitrus.cdsFretista.Open;
  cbNomeFretista.Text := '';

end;

procedure TfCompra.edCodigoProdutorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if  (key = #13) then
  begin
  if (edCodigoProdutor.Text <> '') then
    if (not dmCitrus.cdsProdutor.Locate('CODFORNECEDOR', StrToInt(edCodigoProdutor.Text), [loPartialKey])) then
    begin
       MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
       cbNomeProdutor.Text := '';
    end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompra.cbNomeProdutorChange(Sender: TObject);
begin
  inherited;
  edCodigoProdutor.Text := IntToStr(dmCitrus.cdsProdutorCODFORNECEDOR.AsInteger);
  if (dmCitrus.cdsCFO.Active) then
    dmCitrus.cdsCFO.Close;
  dmCitrus.cdsCFO.Params.ParamByName('pCodProdutor').asInteger := dmCitrus.cdsProdutorCODFORNECEDOR.AsInteger;
  dmCitrus.cdsCFO.Open;
  cbNumeroCFO.Items.Clear;
  While not dmCitrus.cdsCFO.eof do
  begin
    cbNumeroCFO.Items.Add(dmCitrus.cdsCFOLOTE.ASString);
    dmCitrus.cdsCFO.Next;
  end;

end;

procedure TfCompra.cbNumeroCFOChange(Sender: TObject);
begin
  inherited;
  if (cbNumeroCFO.Text <> '') then
  begin
    edQuantidadeCFO.Value := dmCitrus.cdsCFOEstoque.asFloat;
    dtEmissaoCFO.Text := FormatDateTime('dd/mm/yyyy',dmCitrus.cdsCFODATAFABRICACAO.asDateTime);
    dtValidadeCFO.Text := FormatDateTime('dd/mm/yyyy',dmCitrus.cdsCFODATAVENCIMENTO.asDateTime);
  end;
end;

procedure TfCompra.edCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if  (key = #13) then
  begin
  if (edCodigoProduto.Text <> '') then
    if (not dmCitrus.cdsProduto.Locate('CODPRO', edCodigoProduto.Text, [loPartialKey])) then
    begin
       MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
       cbNomeProduto.Text := '';
    end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.cbNomeProdutoChange(Sender: TObject);
begin
  inherited;
  edCodigoProduto.Text := dmCitrus.cdsProdutoCODPRO.AsString;
end;

procedure TfCompra.cbCompradorChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_usuario_cadastro.Active) then
    dm.cds_usuario_cadastro.Locate('NOMEUSUARIO', cbComprador.Text, [loCaseInsensitive]);
end;

procedure TfCompra.cbNomeColhedorChange(Sender: TObject);
begin
  inherited;
  edCodigoColhedor.Text := IntToStr(dmCitrus.cdsColhedorCODFORNECEDOR.asInteger);
end;

procedure TfCompra.edCodigoColhedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if  (key = #13) then
  begin
  if (edCodigoColhedor.Text <> '') then
    if (not dmCitrus.cdsColhedor.Locate('CODFORNECEDOR', edCodigoColhedor.Text, [loPartialKey])) then
    begin
       MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
       cbNomeColhedor.Text := '';
    end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.edCodFretistaKeyPress(Sender: TObject; var Key: Char);
begin
  if  (key = #13) then
  begin
  if (edCodFretista.Text <> '') then
    if (not dmCitrus.cdsFretista.Locate('CODFORNECEDOR', edCodFretista.Text, [loPartialKey])) then
    begin
       MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
       cbNomeProduto.Text := '';
    end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;


end;

procedure TfCompra.cbNomeFretistaChange(Sender: TObject);
begin
  inherited;
  edCodFretista.Text := intToStr(dmCitrus.cdsFretistaCODFORNECEDOR.asinteger);
end;

procedure TfCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.edPrecoCompraExit(Sender: TObject);
begin
  //  inherited;
end;

procedure TfCompra.cbNomeClienteChange(Sender: TObject);
begin
  inherited;
  edCodCliente.Text := intToStr(dmCitrus.cdsClienteCODCLIENTE.asinteger);
end;

procedure TfCompra.edPrecoCompraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    if (edPrecoCompra.Value > 0) then
      edTotalCompra.Value := edPrecoCompra.Value * edQuantidadeCompra.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompra.edPrecoColhedorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    if (edPrecoColhedor.Value > 0) then
      edVlrColhedor.Value := edPrecoColhedor.Value * edQuantidadeCompra.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.DtSrcDataChange(Sender: TObject; Field: TField);
var icomp: integer;
begin
  inherited;
  for icomp:=0 to ComponentCount - 1 do
  begin
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
   if Components[icomp] is TComboBox then
      (Components[icomp] as TComboBox).Enabled := DtSrc.State in [dsInsert,dsEdit];
   if Components[icomp] is TJvCalcEdit then
      (Components[icomp] as TJvCalcEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
   if Components[icomp] is TJvDbSearchComboBox then
      (Components[icomp] as TJvDbSearchComboBox).Enabled := DtSrc.State in [dsInsert,dsEdit];
  end;
end;

procedure TfCompra.edCodClienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
  if (edCodCliente.Text <> '') then
    if (not dmCitrus.cdsCliente.Locate('CODCLIENTE', edCodCliente.Text, [loPartialKey])) then
    begin
       MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
       cbNomeCliente.Text := '';
    end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.edQuantidadeVKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.edPrecoVKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    if (edPrecoV.Value > 0) then
      edPrecoVendaTotal.Value := edPrecoV.Value * edQuantidadeV.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.edPrecoVendaTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    if (edPrecoV.Value = 0) then
      edPrecoV.Value := edPrecoVendaTotal.Value/edQuantidadeV.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.edVlrColhedorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    if (edPrecoColhedor.Value = 0) then
      edPrecoColhedor.Value := edVlrColhedor.Value/edQuantidadeCompra.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.edTotalCompraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    if (edPrecoCompra.Value = 0) then
      edPrecoCompra.Value := edTotalCompra.Value / edQuantidadeCompra.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  grava.Destroy;
end;

procedure TfCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfnotafiscal, fnotafiscal);
  Try
    fNotaFiscal.codigo_NF := grava.CodVenda;
    fNotaFiscal.codcli := StrToInt(grava.CodCliente);
    fNotaFiscal.ShowModal;
  finally
    fNotaFiscal.Free;
  end;
end;

end.
