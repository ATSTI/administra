unit uProdutoProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfProdutoProc = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    edCod: TEdit;
    Label2: TLabel;
    edDesc: TEdit;
    sdsBuscaProd: TSQLDataSet;
    dspBuscaProd: TDataSetProvider;
    cdsBuscaProd: TClientDataSet;
    dsProdutoProc: TDataSource;
    cdsBuscaProdCODPRODUTO: TIntegerField;
    cdsBuscaProdCODPRO: TStringField;
    cdsBuscaProdPRODUTO: TStringField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    codProdProc: String;
    codProdutoProc : String;
    produtoDescProc: String;
    { Public declarations }
  end;

var
  fProdutoProc: TfProdutoProc;

implementation

uses uimporta_nfxml;

{$R *.dfm}

procedure TfProdutoProc.BitBtn1Click(Sender: TObject);
var strB: String;
begin
  strB := '';
  if (edCod.Text <> '') then
    strB := ' WHERE CODPRO LIKE ' + QuotedStr('%' + edCod.Text + '%');
  if (edDesc.Text <> '') then
  begin
    if (strB = '') then
      strB := ' WHERE PRODUTO LIKE ' + QuotedStr('%' + edDesc.Text + '%')
    else
      strB := ' AND PRODUTO LIKE ' + QuotedStr('%' + edDesc.Text + '%');
  end;
  if (cdsBuscaProd.Active) then
    cdsBuscaProd.Close;
  cdsBuscaProd.CommandText := 'SELECT CODPRODUTO, CODPRO, PRODUTO FROM PRODUTOS ' + strB;
  cdsBuscaProd.Open;
end;

procedure TfProdutoProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  codProdProc := cdsBuscaProdCODPRO.AsString;
  codProdutoProc := IntToStr(cdsBuscaProdCODPRODUTO.AsInteger);
  produtoDescProc := cdsBuscaProdPRODUTO.AsString;
end;

procedure TfProdutoProc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
