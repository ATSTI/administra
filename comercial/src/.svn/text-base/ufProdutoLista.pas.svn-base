unit ufProdutoLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls;

type
  TfProdutoLista = class(TfPai)
    sdsLista: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsLista: TClientDataSet;
    cdsListaDESCR: TStringField;
    cdsListaAPLIC: TStringField;
    cdsListaGRUPO: TStringField;
    cdsListaSUBGRUPO: TStringField;
    cdsListaFORNECEDOR: TStringField;
    cdsListaUNIDADE: TStringField;
    cdsListaPRECOLISTA: TFloatField;
    cdsListaPRECOVENDA: TFloatField;
    cdsListaMARGEM: TFloatField;
    cdsListaDATAATUALIZA: TDateField;
    cdsListaCODBARRA: TStringField;
    cdsListaCODIGO: TStringField;
    cdsListaUSAPRODUTO: TStringField;
    cdsListaCODPRODUTO: TIntegerField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdutoLista: TfProdutoLista;

implementation

uses UDm;

{$R *.dfm}

procedure TfProdutoLista.FormShow(Sender: TObject);
begin
  inherited;
  if (codprod <> '0') then
  begin
    cdsLista.Params[0].AsString := codprod;
    cdsLista.Open;
  end
  else
  begin
    cdsLista.Open;
    cdsLista.Append;
  end;  
end;

end.
