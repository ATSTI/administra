unit uCompraSolicitacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, FMTBcd, SqlExpr, DBClient, Provider, dateUtils;

type
  TfSolicitacaoCompra = class(TfPai_new)
    sq: TSQLQuery;
    sdsSolic: TSQLDataSet;
    dspSolic: TDataSetProvider;
    cdsSolic: TClientDataSet;
    cdsSolicSOLIC_CODIGO: TIntegerField;
    cdsSolicSOLIC_DATA: TDateField;
    cdsSolicSOLIC_PRODUTO: TStringField;
    cdsSolicSOLIC_QUANTIDADE: TFloatField;
    cdsSolicSOLIC_SOLICITANTE: TStringField;
    cdsSolicSOLIC_SITUACAO: TStringField;
    cdsSolicSOLIC_APROVACAO: TStringField;
    cdsSolicSOLIC_DATAAPROV: TDateField;
    cdsSolicSOLIC_DESCRICAO: TStringField;
    cdsSolicSOLIC_TIPO: TStringField;
    dsSolic: TDataSource;
    sqBusca: TSQLQuery;
    cdsSolicSOLIC_DTNECESSIT: TDateField;
    grp1: TGroupBox;
    dbEdit1: TDBEdit;
    dbEdit2: TDBEdit;
    btn1: TBitBtn;
    edtUnidade: TEdit;
    grp2: TGroupBox;
    dbEdit4: TDBEdit;
    dbEdit5: TEdit;
    grp3: TGroupBox;
    dbEdit3: TDBEdit;
    grp4: TGroupBox;
    dbEdit6: TDBEdit;
    sqlProc: TSQLQuery;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    cdsSolicSOLIC_OBSERVACAO: TStringField;
    procedure dbEdit4Exit(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsSolicNewRecord(DataSet: TDataSet);
    procedure dsSolicStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    respAprovacao: String;
    { Public declarations }
  end;

var
  fSolicitacaoCompra: TfSolicitacaoCompra;

implementation

uses uCompraSolicProc, uProdutoProc, UDm, uAtsAdmin;

{$R *.dfm}

procedure TfSolicitacaoCompra.dbEdit4Exit(Sender: TObject);
begin
  sqBusca.Close;
  sqBusca.SQL.Clear;
  sqBusca.SQL.Add('SELECT a.UCUSERNAME FROM UCTABUSERS a WHERE a.UCLOGIN =  ' +
    QuotedStr(dbEdit4.Text));
  sqBusca.Open;
  if (not sqBusca.IsEmpty) then
    dbEdit5.Text := sqBusca.Fields[0].AsString;
end;

procedure TfSolicitacaoCompra.btnProcurarClick(Sender: TObject);
begin
 // inherited;
 fCompraSolicProc := TfCompraSolicProc.Create(Application);
 try
   fCompraSolicProc.ShowModal;
 finally
   fCompraSolicProc.Free;
 end;

  //if (dmcompra.
end;

procedure TfSolicitacaoCompra.btn1Click(Sender: TObject);
begin
  inherited;
 fProdutoProc := TfProdutoProc.Create(Application);
 try
   fProdutoProc.ShowModal;
   if (cdsSolic.State in [dsEdit, dsInsert]) then
   begin
     cdsSolicSOLIC_PRODUTO.AsString   := fProdutoProc.cds.Fields[0].AsString;
     cdsSolicSOLIC_DESCRICAO.AsString := fProdutoProc.cds.Fields[1].AsString;
     cdsSolicSOLIC_TIPO.AsString      := fProdutoProc.cds.Fields[2].AsString;
     edtUnidade.Text                  := fProdutoProc.cds.Fields[3].AsString;
//     cdsSolicSOLIC_DTNECESSIT.AsDateTime := today + sqlProc.Fields[4].AsInteger;
   end;
  finally
    fProdutoProc.Free;
  end;
end;

procedure TfSolicitacaoCompra.btnGravarClick(Sender: TObject);
begin
  if (dbEdit1.Text = '')  then
  begin
    MessageDlg('Insira o produto da necessidade.', mtWarning, [mbOK], 0);
    exit;
  end
  else if ((dbEdit6.Text = null) or (dbEdit6.Text = '  /  /  ') or (dbEdit6.Text = '__/__/__')) then
  begin
    MessageDlg('Data da necessidade é obrigatório.', mtWarning, [mbOK], 0);
    exit;
  end
  else if (dbEdit3.Text = '')  then
  begin
    MessageDlg('Quantidade da necessidade é obrigatório.', mtWarning, [mbOK], 0);
    exit;
  end
  else if (DBEdit7.Text = '')  then
  begin
    MessageDlg('Observação da necessidade é obrigatório.', mtWarning, [mbOK], 0);
    exit;
  end
  else
  begin
    if (sq.Active) then
      sq.Close;
    sq.SQL.Clear;
    sq.SQL.Add('SELECT MAX(SOLIC_CODIGO) FROM COMPRA_SOLIC');
    sq.Open;
    cdsSolicSOLIC_CODIGO.AsInteger := sq.Fields[0].AsInteger + 1;
  inherited;
  end;
end;

procedure TfSolicitacaoCompra.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (not cdsSolic.Active) then
    cdsSolic.Open;
  dbEdit1.SetFocus;
end;

procedure TfSolicitacaoCompra.cdsSolicNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSolicSOLIC_CODIGO.AsInteger      := 1;
  cdsSolicSOLIC_DATA.AsDateTime       := now;
  cdsSolicSOLIC_SOLICITANTE.AsString  := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin; // Usuario que gerou a solicitacao.
  cdsSolicSOLIC_SITUACAO.AsString     := 'P';
  cdsSolicSOLIC_APROVACAO.AsString    := respAprovacao;
  dbEdit4.Text                        := respAprovacao;
end;

procedure TfSolicitacaoCompra.dsSolicStateChange(Sender: TObject);
begin
  inherited;
  if (dsSolic.State in [dsEdit, dsInsert]) then
  begin
    DBEdit1.Enabled := True;
    DBEdit1.Color   := clWhite;
    DBEdit2.Enabled := True;
    DBEdit2.Color   := clWhite;
    DBEdit3.Enabled := True;
    DBEdit3.Color   := clWhite;
    DBEdit4.Enabled := True;
    DBEdit4.Color   := clWhite;
  end
  else begin
    DBEdit1.Enabled := False;
    DBEdit1.Color   := clSilver;
    DBEdit2.Enabled := False;
    DBEdit2.Color   := clSilver;
    DBEdit3.Enabled := False;
    DBEdit3.Color   := clSilver;
    DBEdit4.Enabled := False;
    DBEdit4.Color   := clSilver;
  end;
end;

procedure TfSolicitacaoCompra.FormShow(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled := False;
  DBEdit1.Color   := clSilver;
  DBEdit2.Enabled := False;
  DBEdit2.Color   := clSilver;
  DBEdit3.Enabled := False;
  DBEdit3.Color   := clSilver;
  DBEdit4.Enabled := False;
  DBEdit4.Color   := clSilver;
  dbEdit5.Enabled := False;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMPRA'; // Busca o Resp. pela Aprovacao Solicitacao.
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    respAprovacao := dm.cds_parametroD2.AsString;

end;

procedure TfSolicitacaoCompra.FormCreate(Sender: TObject);
begin
  //inherited;
  // Sem inherit
end;

procedure TfSolicitacaoCompra.dbEdit1Exit(Sender: TObject);
begin
  //inherited;
  if (dbEdit1.Text <> '')then
  begin
    if (sqlProc.Active) then
      sqlProc.Close;
    sqlProc.SQL.Clear;
    sqlProc.SQL.Add('SELECT * FROM COMPRA_ITENS WHERE CODIGO LIKE ' +
      QuotedStr(dbEdit1.Text));
    sqlProc.Open;

    if (sqlProc.IsEmpty) then
    begin
      MessageDlg('Código não cadastrado.', mtWarning, [mbOK], 0);
      exit;
    end;
    if (cdsSolic.State in [dsEdit, dsInsert]) then
    begin
      //cdsSolicSOLIC_PRODUTO.AsString   := sqlProc.Fields[0].AsString;
      cdsSolicSOLIC_DESCRICAO.AsString    := sqlProc.Fields[1].AsString;
      cdsSolicSOLIC_TIPO.AsString         := sqlProc.Fields[2].AsString;
      edtUnidade.Text                     := sqlProc.Fields[3].AsString;
      cdsSolicSOLIC_DTNECESSIT.AsDateTime := today + sqlProc.Fields[4].AsInteger;
    end;
  end;
end;

end.
