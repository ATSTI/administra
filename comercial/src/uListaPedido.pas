unit uListaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, FMTBcd, DBClient, Provider,
  SqlExpr;

type
  TfListaPedido = class(TForm)
    DBGrid1: TDBGrid;
    dsPedido: TDataSource;
    sqlPedido: TSQLQuery;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoCODMOVIMENTO: TIntegerField;
    cdsPedidoSTATUS: TSmallintField;
    cdsPedidoCODPEDIDO: TIntegerField;
    cdsPedidoDATAMOVIMENTO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaPedido: TfListaPedido;

implementation

uses UDm;

{$R *.dfm}

end.
