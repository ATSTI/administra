unit uUnidadeMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls, MMJPanel, FMTBcd,
  DBClient, Provider, SqlExpr;

type
  TfUnidadeMedida = class(TfPai_new)
    gridUn: TJvDBUltimGrid;
    sqlUn: TSQLQuery;
    dspUn: TDataSetProvider;
    cdsUn: TClientDataSet;
    cdsUnCODUN: TStringField;
    cdsUnDESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUnidadeMedida: TfUnidadeMedida;

implementation

uses UDm;

{$R *.dfm}

procedure TfUnidadeMedida.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfUnidadeMedida.FormShow(Sender: TObject);
begin
  inherited;
  if (DtSrc.DataSet.Active = False) then
    DtSrc.DataSet.Open;
end;

end.
