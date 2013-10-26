unit uITENS_NF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids, DBXpress;

type
  TfITENS_NF = class(TForm)
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    dbeCliente: TDBEdit;
    btnClienteProcura: TBitBtn;
    DBEdit3: TDBEdit;
    DtSrc: TDataSource;
    PopupMenu1: TPopupMenu;
    ConsultaEstoque1: TMenuItem;
    Salvarefechar1: TMenuItem;
    Novo1: TMenuItem;
    Cancela1: TMenuItem;
    Salva1: TMenuItem;
    finaliza1: TMenuItem;
    excluir1: TMenuItem;
    procurar1: TMenuItem;
    fechar1: TMenuItem;
    Orcamento1: TMenuItem;
    Label3: TLabel;
    dbeProduto: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit10Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fITENS_NF: TfITENS_NF;
  centro_receita, cod_nat, cod_vendedor_padrao, ent_sai: integer;
  natureza, contas_pendentes, nome_vendedor_padrao,serie: string;
  Incluirx, Alterarx, Excluirx, Cancelarx, Procurarx : String;  

implementation

uses uNotafiscal, UDm, uListaClientes, ufprocura_prod, uProcurar;

{$R *.dfm}

procedure TfITENS_NF.btnClienteProcuraClick(Sender: TObject);
begin
  if ((tipo_form <> 'COMPRA') and (tipo_form <> 'COMPRA_NF')) then
  begin
    fListaClientes:=TfListaClientes.Create(Application);
    try
      varform := 'venda';
      codcli := 0;
      nomecli := '';
      fListaClientes.ShowModal;
      if fListaClientes.cdsSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        dbeCliente.SetFocus;
      end;
        if dtSrc.State=dsBrowse then
          fnotafiscal.cds_nf.Edit;
        fnotafiscal.cds_nfCODCLIENTE.AsInteger := codcli;
        fnotafiscal.cds_nfNOMECLIENTE.AsString := nomecli;
    finally
     fListaClientes.cds.Close;
     fListaClientes.Free;
    end;
  end
  else begin
    fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.btnIncluir.Visible := True;
    try
      varForm1 := 'compra';
      cod_forn := 0;
      nome_forn := '';
      fProcurar.ShowModal;
      if dtSrc.State=dsBrowse then
        fnotafiscal.cds_nf.Edit;
      fnotafiscal.cds_nfCODCLIENTE.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
      fnotafiscal.cds_nfNOMECLIENTE.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    finally
      dm.scds_forn_proc.Close;
      fProcurar.Free;
    end;
  end;
end;

procedure TfITENS_NF.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfITENS_NF.DtSrcStateChange(Sender: TObject);
{begin
  if (dtSrc.State in [dsEdit]) then
  if (fnotafiscal.cds_nf.State in [dsBrowse, dsInactive]) then
    fnotafiscal.cds_nf.Edit;}
var icomp: integer;
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
 if Incluirx = 'S' then
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive]
 else
    btnIncluir.Enabled:= False;

 if Alterarx = 'S' then
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnGravar.Enabled:=False;

 if Cancelarx = 'S' then
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnCancelar.Enabled:=false;

 if Excluirx = 'S' then
  btnExcluir.Enabled := False
  //DtSrc.State in [dsBrowse]
 else
  btnExcluir.Enabled := false;

{ if Procurar = 'S' then
  btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive]
 else
  btnProcurar.Enabled := False;
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
 }
  for icomp:=0 to ComponentCount - 1 do
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit, dsBrowse];

  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    //btnIncluir.Visible := False;
    //btnexcluir.Visible := False;
    //btngravar.Visible := True;
    //btnCancelar.Visible := True;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    //btnIncluir.Visible := True;
    //btnexcluir.Visible := True;
    //btngravar.Visible := False;
    //btnCancelar.Visible := False;
  end;


end;

procedure TfITENS_NF.btnNovoClick(Sender: TObject);
begin
  try
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      fNotaFiscal.cds_Mov_detVALTOTAL.AsFloat :=
        fNotaFiscal.cds_Mov_detPRECO.AsFloat * fNotaFiscal.cds_Mov_detQUANTIDADE.AsFloat;
      DtSrc.DataSet.Post;
      DtSrc.DataSet.Append;
      dbeProduto.SetFocus;
    end;
    if DtSrc.State in [dsBrowse] then
    begin
      DtSrc.DataSet.Append;
      dbeProduto.SetFocus;
    end;
  except
    MessageDlg('Erro ao gravar !', mtError, [mbOK], 0);
  end;
end;

procedure TfITENS_NF.BitBtn8Click(Sender: TObject);
 Var str_del: String;
   TD: TTransactionDesc;
begin
  if (fNotafiscal.cds_nf.State in [dsInsert]) then
  begin
    if (fNotafiscal.cds_Mov_det.State in [dsEdit, dsInsert]) then
    begin
      fNotaFiscal.cds_Mov_detVALTOTAL.AsFloat :=
        fNotaFiscal.cds_Mov_detPRECO.AsFloat * fNotaFiscal.cds_Mov_detQUANTIDADE.AsFloat;
      fNotafiscal.cds_Mov_det.Post;
    end;
    fNotaFiscal.cds_Mov_det.Delete;
    exit;
  end;
  str_del := 'DELETE FROM MOVIMENTONF WHERE CODMOVIMENTO = ';
  str_del := str_del + IntToStr(fNotaFiscal.cds_Mov_detCODMOVIMENTO.AsInteger);
  str_del := str_del + ' and CODPRODUTO = ' + IntToStr(fNotaFiscal.cds_Mov_detCODPRODUTO.AsInteger);
  if  MessageDlg('Confirma a exclusão do item ''' + fNotaFiscal.cds_Mov_detDESCPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    dm.sqlsisAdimin.ExecuteDirect(str_del);
    dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Produto/Serviço não excluído?', mtError,
         [mbOk], 0);
  end;
  {if fNotaFiscal.cds_Mov_det.State in [dsInsert, dsEdit, dsBrowse] then
  begin
    fNotaFiscal.cds_Mov_det.ApplyUpdates(0);
  end;}
  fNotaFiscal.cds_Mov_det.Close;
  fNotaFiscal.cds_Mov_det.Params[0].Clear;
  fNotaFiscal.cds_Mov_det.Params[1].AsInteger := fNotaFiscal.cds_nfNUMNF.AsInteger;
  fNotaFiscal.cds_Mov_det.Open;
  MessageDlg('Item excluído com sucesso ! Para atualizar a NOTA FISCAL, execute o Botão GRAVAR novamente, da NOTAFISCAL.', mtInformation, [mbOK], 0);
    if (fNotaFiscal.cds_nf.State in [dsBrowse, dsInactive]) then
      fNotaFiscal.cds_nf.Edit;
    fNotaFiscal.cds_nfVALOR_PRODUTO.AsFloat := total;
    if (fNotaFiscal.dbedit8.Text <> '') then
      total := total + StrToFloat(fNotaFiscal.dbedit8.Text);
    if (fNotaFiscal.dbedit10.Text <> '') then
      total := total + StrToFloat(fNotaFiscal.dbedit10.Text);
    if (fNotaFiscal.cds_nfBASE_ICMS_SUBST.AsFloat > 0) then
      total := total + fNotaFiscal.cds_nfBASE_ICMS_SUBST.AsFloat;
    if (fNotaFiscal.cds_nfVALOR_ICMS_SUBST.AsFloat > 0) then
      total := total + fNotaFiscal.cds_nfBASE_ICMS.AsFloat;
    if (fNotaFiscal.cds_nfVALOR_FRETE.AsFloat > 0) then
      total := total + fNotaFiscal.cds_nfVALOR_FRETE.AsFloat;
    if (fNotaFiscal.cds_nfVALOR_SEGURO.AsFloat > 0) then
      total := total + fNotaFiscal.cds_nfVALOR_SEGURO.AsFloat;
    if (fNotaFiscal.cds_nfOUTRAS_DESP.AsFloat > 0) then
      total := total + fNotaFiscal.cds_nfOUTRAS_DESP.AsFloat;
    if (fNotaFiscal.cds_nfVALOR_IPI.AsFloat > 0) then
      total := total + fNotaFiscal.cds_nfVALOR_IPI.AsFloat;
    fNotaFiscal.cds_nf.ApplyUpdates(0);

end;

procedure TfITENS_NF.btnIncluirClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInactive, dsBrowse] then
  begin
    if (not DtSrc.DataSet.Active) then
    begin
      DtSrc.DataSet.Open;
    end;
    DtSrc.DataSet.Append;
      {if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ITENS_NF, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      fNotaFiscal.cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      fNotaFiscal.cds_Mov_detCODMOVIMENTO.AsInteger := fNotaFiscal.cds_nfNUMNF.AsInteger;
      dm.c_6_genid.Close;                                            }
    end;
    dbeCliente.SetFocus;
end;

procedure TfITENS_NF.btnCancelarClick(Sender: TObject);
begin
  if (DtSrc.DataSet.State in [dsEdit, dsInsert]) then
    DtSrc.DataSet.Cancel;
  if fnotafiscal.cds_Mov_det.Active then
    fnotafiscal.cds_Mov_det.Close;
end;

procedure TfITENS_NF.btnGravarClick(Sender: TObject);
var str_sql : String;
 TD: TTransactionDesc;
begin
  if fnotafiscal.cds_Mov_det.State in [dsInsert] then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      CODMOVNFI := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      if (tipo_form <> 'COMPRA_NF') then
      begin
        dm.sqlsisAdimin.ExecuteDirect('insert into movimento (codMovimento, ' +
        ' DataMovimento, CodCliente, codNatureza, status, codUsuario ' +
        ' ) values (' + IntToStr(codMovNFI) + ', ' + quotedStr(formatDateTime('mm/dd/yyyy', now)) +
        ', ' + dbeCliente.Text + ', 12, 0, 1)');

        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        CODVENDANFI := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        dm.sqlsisAdimin.ExecuteDirect('insert into VENDA (codMovimento, codVenda,' +
        ' DataVenda, dataVencimento, CodCliente, status, codUsuario, notaFiscal, serie ' +
        ' ) values (' + IntToStr(codMovNFI) + ', ' + IntToStr(codVendaNFI) + ', ' + quotedStr(formatDateTime('mm/dd/yyyy', now)) +
        ', ' + quotedStr(formatDateTime('mm/dd/yyyy', now)) + ', ' +
        dbeCliente.Text + ', 0, 1, ' + IntToStr(codigo) + ' , ' + QuotedStr('N') + ')');
      end;
      if (tipo_form = 'COMPRA_NF') then
      begin
        dm.sqlsisAdimin.ExecuteDirect('insert into movimento (codMovimento, ' +
        ' DataMovimento, codFornecedor, CodCliente, codNatureza, status, codUsuario ' +
        ' ) values (' + IntToStr(codMovNFI) + ', ' + quotedStr(formatDateTime('mm/dd/yyyy', now)) +
        ', ' + dbeCliente.Text + ', 0, 12, 0, 1)');

        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_COMPRA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        CODVENDANFI := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        dm.sqlsisAdimin.ExecuteDirect('insert into COMPRA (codMovimento, codCompra,' +
        ' DataCompra, dataVencimento, CodFornecedor, status, codUsuario, notaFiscal, serie ' +
        ' ) values (' + IntToStr(codMovNFI) + ', ' + IntToStr(codVendaNFI) + ', ' + quotedStr(formatDateTime('mm/dd/yyyy', now)) +
        ', ' + quotedStr(formatDateTime('mm/dd/yyyy', now)) + ', ' +
        dbeCliente.Text + ', 0, 1, ' + IntToStr(codigo) + ' , ' + QuotedStr('') + ')');
      end;

      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro na inclusão de itens NF.', mtError,
         [mbOk], 0);
    end;

    if fnotafiscal.cds_nf.State in [dsBrowse, dsInactive] then
      fnotafiscal.cds_nf.Edit;
    //copia dados da tabela transportadora
    if dm.scds_transp_proc.Active then
      dm.scds_transp_proc.Close;
    dm.scds_transp_proc.Params[0].Clear;
    dm.scds_transp_proc.Params[1].Clear;
    dm.scds_transp_proc.Params[2].AsInteger := StrToInt(dbeCliente.Text);
    dm.scds_transp_proc.Open;
    fNotaFiscal.cds_nfCODTRANSP.AsInteger:=dm.scds_transp_procCODTRANSP.AsInteger;
    fNotaFiscal.cds_nfNOMETRANSP.AsString:=dm.scds_transp_procNOMETRANSP.AsString;
    fNotaFiscal.cds_nfFRETE.AsString:=dm.scds_transp_procFRETE.AsString;
    fNotaFiscal.cds_nfPLACATRANSP.AsString:=dm.scds_transp_procPLACATRANSP.AsString;
    fNotaFiscal.cds_nfUF_VEICULO_TRANSP.AsString:=dm.scds_transp_procUF_VEICULO_TRANSP.AsString;
    fNotaFiscal.cds_nfCNPJ_CPF.AsString:=dm.scds_transp_procCNPJ_CPF.AsString;
    fNotaFiscal.cds_nfEND_TRANSP.AsString:=dm.scds_transp_procEND_TRANSP.AsString;
    fNotaFiscal.cds_nfCIDADE_TRANSP.AsString:=dm.scds_transp_procCIDADE_TRANSP.AsString;
    fNotaFiscal.cds_nfUF_TRANSP.AsString:=dm.scds_transp_procUF_TRANSP.AsString;
    fNotaFiscal.cds_nfINSCRICAOESTADUAL.AsString:=dm.scds_transp_procINSCRICAOESTADUAL.AsString;
    fNotaFiscal.cds_nfCORPONF1.AsString:=dm.scds_transp_procCORPONF1.AsString;
    fNotaFiscal.cds_nfCORPONF2.AsString:=dm.scds_transp_procCORPONF2.AsString;
    fNotaFiscal.cds_nfCORPONF3.AsString:=dm.scds_transp_procCORPONF3.AsString;
    fNotaFiscal.cds_nfCORPONF4.AsString:=dm.scds_transp_procCORPONF4.AsString;
    fNotaFiscal.cds_nfCORPONF5.AsString:=dm.scds_transp_procCORPONF5.AsString;
    fNotaFiscal.cds_nfCODVENDA.AsInteger := codVendaNFI;
    dm.scds_transp_proc.Close;
    fNotaFiscal.cds_Mov_detVALTOTAL.AsFloat := fNotaFiscal.cds_Mov_detPRECO.AsFloat * fNotaFiscal.cds_Mov_detQUANTIDADE.AsFloat;
  end;
  if (fNotaFiscal.cds_Mov_det.State in [dsEdit, dsInsert]) then
  begin
    if (fNotaFiscal.cds_Mov_detCODPRODUTO.IsNull) then
      fNotaFiscal.cds_mov_det.Cancel
    else
      fNotaFiscal.cds_Mov_det.Post;
    fNotaFiscal.mudou_produto := 'SIM';
  end;
end;

procedure TfITENS_NF.btnExcluirClick(Sender: TObject);
//var
//  str_del :string;
begin
{  str_del := 'DELETE FROM ITENS_TRANSP WHERE NUMNF = ';
  str_del := str_del + IntToStr(DM.cds_nfNUMNF.AsInteger);
  if  MessageDlg('Confirma a exclusão dos itens ?',
    mtConfirmation, [mbYes, mbNo],0,mbYes) = mrNo then exit;
    dm.scSge.ExecuteDirect(str_del);
  if DMCadastro.cds_itens.State in [dsInsert, dsEdit, dsBrowse] then
  begin
    DMCadastro.cds_itens.ApplyUpdates(0);
    dm.scSge.ExecuteDirect(str_del);
  end; }
end;

procedure TfITENS_NF.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfITENS_NF.dbeProdutoExit(Sender: TObject);
begin
  if (dbeProduto.Text = '') then exit;
  varonde := 'itens';
  var_F := 'venda';
 { if fnotafiscal.cds_Mov_det.State in [dsInsert] then
      if dbeProduto.Text='' then
        btnProdutoProcura.Click;}

  if fnotafiscal.cds_Mov_det.State in [dsInactive] then
    if dbeProduto.Text='' then exit;
  if dbeProduto.Field.OldValue<>dbeProduto.Field.NewValue then
  begin
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
    fnotafiscal.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
    fnotafiscal.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
    fnotafiscal.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
    fnotafiscal.cds_Mov_detQUANTIDADE.AsFloat := 1;
    if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
       fnotafiscal.cds_Mov_detPRECO.AsFloat :=
       dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
    else
       fnotafiscal.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
    fnotafiscal.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
    dm.scds_produto_proc.Close;
  end;

end;

procedure TfITENS_NF.btnProdutoProcuraClick(Sender: TObject);
begin
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  varonde := 'itens';
  var_F := 'itens';
  fProcura_prod.cbTipo.ItemIndex := 4;
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel1.Visible := false;
  fProcura_prod.Panel2.Visible := true;
  fProcura_prod.BitBtn1.Click;
  fProcura_prod.ShowModal;

  if dtSrc.State=dsBrowse then
   fnotafiscal.cds_Mov_det.Edit;

  fnotafiscal.cds_Mov_detCODPRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
  fnotafiscal.cds_Mov_detDESCPRODUTO.AsString := fProcura_prod.cds_procPRODUTO.AsString;
  fnotafiscal.cds_Mov_detUN.AsString := fProcura_prod.cds_procUNIDADEMEDIDA.AsString;
  fnotafiscal.cds_Mov_detQUANTIDADE.AsFloat := 1;
  fnotafiscal.cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;

end;

procedure TfITENS_NF.dbeClienteExit(Sender: TObject);
begin
  if ((tipo_form <> 'COMPRA') and (tipo_form <> 'COMPRA_NF')) then
  begin
    if dbeCliente.Text='' then exit;
    if dtsrc.State = dsInsert then
    begin
      if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
      dm.scds_cliente_proc.Params[0].Clear;
      dm.scds_cliente_proc.Params[1].Clear;
      dm.scds_cliente_proc.Params[2].Clear;
      dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCliente.Text);
      dm.scds_cliente_proc.Open;
      if dm.scds_cliente_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnClienteProcura.Click;
        exit;
      end;
      DBEdit3.Text := dm.scds_cliente_procNOMECLIENTE.AsString;
      dm.scds_cliente_proc.Close;
      dbeProduto.SetFocus;
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
      DBEdit3.Text := dm.scds_cliente_procNOMECLIENTE.AsString;
      dm.scds_cliente_proc.Close;
      dbeProduto.SetFocus;
    end;
  end
  else begin
    if dbeCliente.Text='' then exit;
    if dtsrc.State = dsInsert then
    begin
      if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
      dm.scds_forn_proc.Params[0].Clear;
      dm.scds_forn_proc.Params[1].Clear;
      dm.scds_forn_proc.Params[2].Clear;
      dm.scds_forn_proc.Params[2].AsInteger := StrToInt(dbeCliente.Text);
      dm.scds_forn_proc.Open;
      if dm.scds_forn_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnClienteProcura.Click;
        exit;
      end;
      DBEdit3.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
      dm.scds_forn_proc.Close;
      dbeProduto.SetFocus;
    end
  end;
end;

procedure TfITENS_NF.FormShow(Sender: TObject);
begin
 Incluirx  := 'S';
 Cancelarx := 'S';
 Alterarx := 'S';

 if fnotafiscal.cds_Mov_det.Active then
   fnotafiscal.cds_Mov_det.Close;
 fnotafiscal.cds_Mov_det.Params[0].Clear;
 fnotafiscal.cds_Mov_det.Params[1].AsInteger := fnotafiscal.codDet;
 fnotafiscal.cds_Mov_det.Open;
 if ((tipo_form = 'COMPRA') or (tipo_form = 'COMPRA_NF')) then
   GroupBox1.Caption := 'Fornecedor';
end;

procedure TfITENS_NF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (fNotaFiscal.cds_Mov_det.IsEmpty) then
   exit;
 if (fnotafiscal.cds_Mov_det.Active) then
 begin
   if fNotaFiscal.cds_nf.State in [dsBrowse] then
     fNotaFiscal.cds_nf.Edit;
   fNotaFiscal.cds_nfVALOR_TOTAL_NOTA.AsFloat := fNotaFiscal.cds_mov_dettotalpedido.Value;
   fNotaFiscal.cds_nfVALOR_PRODUTO.Value := fNotaFiscal.cds_mov_dettotalpedido.Value;
 end;
end;

procedure TfITENS_NF.DBEdit10Exit(Sender: TObject);
begin
    if (fNotafiscal.cds_Mov_det.State in [dsEdit, dsInsert]) then
    begin
      fNotaFiscal.cds_Mov_detVALTOTAL.AsFloat :=
        fNotaFiscal.cds_Mov_detPRECO.AsFloat * fNotaFiscal.cds_Mov_detQUANTIDADE.AsFloat;
    end;
end;

end.
