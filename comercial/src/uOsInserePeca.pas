unit uOsInserePeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvMemo, Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, dbXpress;

type
  TfOsInserePeca = class(TfPai_new)
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    edServico: TJvMemo;
    edQtdeServ: TJvCalcEdit;
    edPrecoServ: TJvCalcEdit;
    edDescServ: TJvCalcEdit;
    edDescVlrServ: TJvCalcEdit;
    edTotalServ: TJvCalcEdit;
    edProduto: TEdit;
    BitBtn3: TBitBtn;
    edProdDescr: TEdit;
    lblServico: TLabel;
    sdsPecas1: TSQLDataSet;
    dspPecas1: TDataSetProvider;
    cdsPecas1: TClientDataSet;
    cdsPecas1ID_OS_DET: TIntegerField;
    cdsPecas1ID_OS: TIntegerField;
    cdsPecas1DESCRICAO_SERV: TStringField;
    cdsPecas1RESPONSAVEL: TStringField;
    cdsPecas1STATUS: TStringField;
    cdsPecas1TIPO: TStringField;
    cdsPecas1QTDE: TFloatField;
    cdsPecas1PRECO: TFloatField;
    cdsPecas1DESCONTO: TFloatField;
    cdsPecas1VALORTOTAL: TFloatField;
    cdsPecas1CODPRODUTO: TIntegerField;
    cdsPecas1CODPRO: TStringField;
    cdsPecas1STATUSDESC: TStringField;
    cdsPecas1ID_OSDET_SERV: TIntegerField;
    cdsPecas1VlrTotal: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edDescVlrServExit(Sender: TObject);
    procedure edDescServExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edProdutoKeyPress(Sender: TObject; var Key: Char);
  private
    procedure LimpaCamposPeca();
    { Private declarations }
  public
    codProdutoPeca: Integer;  
    { Public declarations }
  end;

var
  fOsInserePeca: TfOsInserePeca;

implementation

uses uOs, uProcurar, UDm, uProcura_prodOficina, sCtrlResize;

{$R *.dfm}

procedure TfOsInserePeca.FormCreate(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fOsInserePeca));
end;

procedure TfOsInserePeca.FormShow(Sender: TObject);
begin
  LimpaCamposPeca;
  lblServico.Caption := fOs.ServDescricao;
  if (fOs.cdsPecas.State in [dsEdit]) then
  begin
    edServico.Lines.Add(fOs.cdsPecasDESCRICAO_SERV.AsString);
    edProduto.Text      := fOs.cdsPecasCODPRO.AsString;
    edProdDescr.Text    := fOs.cdsPecasDESCRICAO_SERV.AsString;
    codProdutoPeca      := fOs.cdsPecasCODPRODUTO.asInteger;
    edQtdeServ.Value    := fOs.cdsPecasQTDE.AsFloat;
    edPrecoServ.Value   := fOs.cdsPecasPRECO.AsFloat;
    edDescVlrServ.Value := fOs.cdsPecasDESCONTO.AsFloat;
    edTotalServ.Value   := fOs.cdsPecasVALORTOTAL.AsFloat;
  end;
  if (fOs.cdsPecas.State in [dsInsert, dsEdit]) then
  begin
    btnIncluir.Visible := False;
    btnGravar.Visible := True;
    edProduto.Enabled     := fOs.cdsPecas.State in [dsEdit, dsInsert];
    edServico.Enabled     := fOs.cdsPecas.State in [dsEdit, dsInsert];
    edQtdeServ.Enabled    := fOs.cdsPecas.State in [dsEdit, dsInsert];
    edPrecoServ.Enabled   := fOs.cdsPecas.State in [dsEdit, dsInsert];
    edDescServ.Enabled    := fOs.cdsPecas.State in [dsEdit, dsInsert];
    edDescVlrServ.Enabled := fOs.cdsPecas.State in [dsEdit, dsInsert];
    btnIncluir.Visible    := fOs.cdsPecas.State in [dsBrowse, dsInactive];
    btnGravar.Visible     := fOs.cdsPecas.State in [dsEdit, dsInsert];
    btnExcluir.Visible    := fOs.cdsPecas.State in [dsBrowse, dsInactive];
    btnCancelar.Visible   := fOs.cdsPecas.State in [dsEdit, dsInsert];
  end;
end;

procedure TfOsInserePeca.LimpaCamposPeca;
begin
  edServico.Lines.Clear;
  edQtdeServ.Value    := 0;
  edPrecoServ.Value   := 0;
  edDescServ.Value    := 0;
  edDescVlrServ.Value := 0;
  edTotalServ.Value   := 0;
  edProduto.Text      := '';
  edProdDescr.Text    := '';
end;

procedure TfOsInserePeca.btnGravarClick(Sender: TObject);
var str: string;
  I : Integer;
  //TD: TTransactionDesc;
begin
  //TD.TransactionID := 1;
  //TD.IsolationLevel := xilREADCOMMITTED;
  str := '';//edProdDescr.Text;
  for I := 0 to edServico.Lines.Count -1 do
    str := str + edServico.Lines[I] + #13#10;

  fOs.cdsPecasDESCRICAO_SERV.AsString := str;
  fOs.cdsPecasCODPRO.AsString         := edProduto.Text;
  fOs.cdsPecasCODPRODUTO.asInteger    := codProdutoPeca;
  fOs.cdsPecasSTATUS.AsString         := fOs.statusOs;
  fOs.cdsPecasDESCRICAO_SERV.AsString := edProdDescr.Text;
  fOs.cdsPecasTIPO.AsString           := 'P';
  fOs.cdsPecasQTDE.AsFloat            := edQtdeServ.Value;
  fOs.cdsPecasPRECO.AsFloat           := edPrecoServ.Value;
  fOs.cdsPecasDESCONTO.AsFloat        := edDescVlrServ.Value;
  //cdsPecasDESCPERCENT.AsFloat     := edDesc.Value;

  fOs.cdsPecas.Post;
  btnGravar.Visible := False;
  btnIncluir.Visible := True;
  //cdsPecas.ApplyUpdates(0);
  {Try
    dm.sqlsisAdimin.StartTransaction(TD);
    fOs.FOsCls.osDet.CodOsP   := fOs.codigoOs;
    if ((cdsPecasTIPO.AsString = 'P') and (cdsPecasID_OS_DET.AsInteger > 90000000)) then
    begin
      fOs.FOsCls.osDet.CodDet   := 0;
      fOs.FOsCls.osDet.Status   := fOs.statusOs;
      fOs.FOsCls.osDet.Tipo     := 'P';
    end;
    DecimalSeparator := '.';
    fOs.FOsCls.osDet.CodProduto := cdsPecasCODPRODUTO.AsInteger;
    fOs.FOsCls.osDet.Descricao := cdsPecasDESCRICAO_SERV.AsString;
    fOs.FOsCls.osDet.Qtde      := cdsPecasQTDE.AsFloat;
    fOs.FOsCls.osDet.Preco     := cdsPecasPRECO.AsFloat;
    fOs.FOsCls.osDet.Desconto  := cdsPecasDESCONTO.AsFloat;
    fOs.FOSCls.osDet.CodOsServ := cdsPecasID_OSDET_SERV.AsInteger;
    DecimalSeparator := ',';
    if ((cdsPecasTIPO.AsString = 'P') and (cdsPecasID_OS_DET.AsInteger > 90000000)) then
    begin
      if ((fOs.FOsCls.osDet.IncluirOsDet(0) = 0)) then
      begin
        ShowMessage('Erro na Inclusao Os Detalhe');
        Exit;
      end;
    end
    else begin
      fOs.FOsCls.osDet.alterarOsDet(cdsPecasID_OS.AsInteger);
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
  fOs.abrirPecas; }

end;

procedure TfOsInserePeca.edDescVlrServExit(Sender: TObject);
begin
  if ((edDescVlrServ.Value > 0) and (edDescServ.Value = 0) and (edPrecoServ.Value > 0)) then
  begin
    edDescServ.Value  := (edDescVlrServ.Value / edPrecoServ.Value) * 100;
    edTotalServ.Value := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;
  btnGravar.SetFocus;
end;

procedure TfOsInserePeca.edDescServExit(Sender: TObject);
begin
  if (edDescServ.Value > 0) then
  begin
    edDescVlrServ.Value := (edPrecoServ.Value * edQtdeServ.Value)* (edDescServ.Value / 100);
    edTotalServ.Value   := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;
end;

procedure TfOsInserePeca.btnIncluirClick(Sender: TObject);
begin
  edServico.Lines.Clear;
  edProduto.Text        := '';
  edQtdeServ.Value      := 0;
  edPrecoServ.Value     := 0;
  edDescVlrServ.Value   := 0;
  edTotalServ.Value     := 0;

  fOs.numOsDet := fOs.numOsDet + 1;

  fOs.cdsPecas.Append;
  fOs.cdsPecasID_OS.AsInteger         := fOs.cdsServicoID_OS.AsInteger;
  fOs.cdsPecasID_OS_DET.AsInteger     := fOs.numOsDet;
  fOs.cdsPecasID_OSDET_SERV.AsInteger := fOs.cdsServicoID_OS_DET.AsInteger;
  fOs.cdsPecasTIPO.AsString           := 'P';
  edProduto.SetFocus;
end;

procedure TfOsInserePeca.BitBtn3Click(Sender: TObject);
begin
  //fProcura_prodOficina.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prodOficina.Panel1.Visible := false;
    fProcura_prodOficina.Panel2.Visible := true;
    fProcura_prodOficina.BitBtn1.Click;
  end
  else begin
    fProcura_prodOficina.Panel2.Visible := false;
    fProcura_prodOficina.Panel1.Visible := true;
    if (fProcura_prodOficina.cds_proc.Active) then
      fProcura_prodOficina.cds_proc.Close;
  end;
  varonde := 'os';
  var_F := 'os';
  fProcura_prodOficina.ShowModal;
  if(btnGravar.Visible) then
  begin
    edProduto.Text    := fProcura_prodOficina.cds_procCODPRO.AsString;
    edProdDescr.Text  := fProcura_prodOficina.cds_procPRODUTO.AsString;
    edPrecoServ.Value := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
    codProdutoPeca    := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
    edQtdeServ.Text   := '1';
    if (fOs.cdsPecas.State = dsBrowse) then
      fOs.cdsPecas.Edit;
    fOs.cdsPecasCODPRODUTO.AsInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
    fOs.cdsPecasQTDE.AsFloat         := 1;
    fOs.cdsPecasPRECO.AsFloat        := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
    edQtdeServ.SetFocus;
  end;
end;

procedure TfOsInserePeca.edProdutoExit(Sender: TObject);
begin
  if (edProduto.Text = '') then exit;

  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := edProduto.Text;
  dm.scds_produto_proc.Open;
  if (dm.scds_produto_proc.IsEmpty) then
  begin
    MessageDlg('Código não cadastrado.', mtWarning,
    [mbOk], 0);
    exit;
  end;

  edProduto.Text    := dm.scds_produto_procCODPRO.AsString;
  edProdDescr.Text  := dm.scds_produto_procPRODUTO.AsString;
  edPrecoServ.Value := dm.scds_produto_procVALOR_PRAZO.AsFloat;
  codProdutoPeca    := dm.scds_produto_procCODPRODUTO.AsInteger;
  edQtdeServ.Text   := '1';  
  if (fOs.cdsPecas.State = dsBrowse) then
    fOs.cdsPecas.Edit;
  fOs.cdsPecasCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
  fOs.cdsPecasQTDE.AsFloat         := 1;
  fOs.cdsPecasPRECO.AsFloat        := dm.scds_produto_procVALOR_PRAZO.AsFloat;
  edQtdeServ.SetFocus;  
end;

procedure TfOsInserePeca.btnSairClick(Sender: TObject);
begin
  //inherited;
  Close;
end;

procedure TfOsInserePeca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
end;

procedure TfOsInserePeca.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  edProduto.Enabled     := fOs.cdsPecas.State in [dsEdit, dsInsert];
  edServico.Enabled     := fOs.cdsPecas.State in [dsEdit, dsInsert];
  edQtdeServ.Enabled    := fOs.cdsPecas.State in [dsEdit, dsInsert];
  edPrecoServ.Enabled   := fOs.cdsPecas.State in [dsEdit, dsInsert];
  edDescServ.Enabled    := fOs.cdsPecas.State in [dsEdit, dsInsert];
  edDescVlrServ.Enabled := fOs.cdsPecas.State in [dsEdit, dsInsert];
  btnIncluir.Visible    := fOs.cdsPecas.State in [dsBrowse, dsInactive];
  btnGravar.Visible     := fOs.cdsPecas.State in [dsEdit, dsInsert];
  btnExcluir.Visible    := fOs.cdsPecas.State in [dsBrowse, dsInactive];
  btnCancelar.Visible   := fOs.cdsPecas.State in [dsEdit, dsInsert];

end;

procedure TfOsInserePeca.btnCancelarClick(Sender: TObject);
begin
  //inherited;
  fOs.cdsPecas.Cancel;
end;

procedure TfOsInserePeca.edProdutoKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   if (edProduto.Text = '') then
      bitBtn3.Click
   else begin
     key:= #0;
     SelectNext((Sender as TwinControl),True,True);
   end;  
 end;

end;

end.
