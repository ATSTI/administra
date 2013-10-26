unit uCompraSolicitacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, FMTBcd, SqlExpr;

type
  TfSolicitacaoCompra = class(TfPai_new)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    edRespAprovacao: TEdit;
    sq: TSQLQuery;
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSolicitacaoCompra: TfSolicitacaoCompra;

implementation

uses uDmCompra, uCompraSolicProc, uProdutoProc, UDm;

{$R *.dfm}

procedure TfSolicitacaoCompra.DBEdit4Exit(Sender: TObject);
begin
  //dm.sqBusca
  edRespAprovacao.Text := 'Responsavel';
end;

procedure TfSolicitacaoCompra.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fCompraSolicProc.ShowModal;
  //if (dmcompra.
end;

procedure TfSolicitacaoCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProdutoProc.ShowModal;
  if (dmCompra.cdsSolic.State in [dsEdit, dsInsert]) then
  begin
    dmCompra.cdsSolicSOLIC_PRODUTO.AsString   := fProdutoProc.cds.Fields[0].AsString;
    dmCompra.cdsSolicSOLIC_DESCRICAO.AsString := fProdutoProc.cds.Fields[1].AsString;
  end;
end;

procedure TfSolicitacaoCompra.btnGravarClick(Sender: TObject);
begin
  if (sq.Active) then
    sq.Close;
  sq.SQL.Clear;  
  sq.SQL.Add('SELECT MAX(SOLIC_CODIGO) FROM COMPRA_SOLIC');
  sq.Open;
  dmCompra.cdsSolicSOLIC_CODIGO.AsInteger := sq.Fields[0].AsInteger + 1;
  inherited;
end;

procedure TfSolicitacaoCompra.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (not dmcompra.cdsSolic.Active) then
    dmcompra.cdsSolic.Open;
end;

end.
