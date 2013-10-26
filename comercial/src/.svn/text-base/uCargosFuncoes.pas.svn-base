unit uCargosFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  Buttons, ExtCtrls, MMJPanel;

type
  TfCargosFuncoes = class(TfPai)
    sCargo: TSQLDataSet;
    dCargos: TDataSetProvider;
    cCargo: TClientDataSet;
    cCargoCOD_CARGOSFUNCOES: TIntegerField;
    cCargoDESCRICAO: TStringField;
    sCargoCOD_CARGOSFUNCOES: TIntegerField;
    sCargoDESCRICAO: TStringField;
    JvDBGrid1: TJvDBGrid;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCargosFuncoes: TfCargosFuncoes;

implementation

uses UDm;

{$R *.dfm}

procedure TfCargosFuncoes.btnGravarClick(Sender: TObject);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_cargos, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cCargoCOD_CARGOSFUNCOES.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfCargosFuncoes.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfCargosFuncoes.FormShow(Sender: TObject);
begin
  inherited;
  if (not cCargo.Active) then
     cCargo.Open;
end;

procedure TfCargosFuncoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  DM.v_CodFuncao   := cCargoCOD_CARGOSFUNCOES.AsInteger;
  DM.v_CargoFuncao := cCargoDESCRICAO.AsString;
  if (cCargo.Active) then
     cCargo.Close;
end;

procedure TfCargosFuncoes.FormCreate(Sender: TObject);
begin
//  inherited;

end;

end.
