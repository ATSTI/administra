unit uProdutoProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Menus, XPMenu, DB, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid;

type
  TfProdutoProc = class(TfPai_new)
    edCod: TEdit;
    edProd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    JvDBGrid1: TJvDBGrid;
    cdsCODIGO: TStringField;
    cdsITEM: TStringField;
    cdsTIPO: TStringField;
    cdsUNIDADE: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdutoProc: TfProdutoProc;

implementation

uses UDm;

{$R *.dfm}

procedure TfProdutoProc.btnProcurarClick(Sender: TObject);
var str, str1: String ;
begin
  str1 := '';
  str :=  'select * from COMPRA_ITENS ';
  if (edCod.Text <> '') then
  begin
    str1 := ' WHERE CODIGO LIKE  ' +  QuotedStr(edCod.Text + '%') ;
  end;
  if (edProd.Text <> '') then
  begin
    if  (str1 <> '') then
      str1 := str1 + ' AND ITEM LIKE  ' +  QuotedStr(edProd.Text + '%')
    else
      str1 := ' WHERE ITEM LIKE  ' +  QuotedStr(edProd.Text + '%');
  end;
  if (cds.Active) then
    cds.Close;

  cds.CommandText := str + str1;
  cds.Open;
end;

procedure TfProdutoProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;

end;

procedure TfProdutoProc.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfProdutoProc.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
