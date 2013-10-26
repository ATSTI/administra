unit uCadDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Mask, DBCtrls, SqlExpr, Provider, DBClient, Grids,
  DBGrids;

type
  TfCadDep = class(TfPai_new)
    cdsCa: TClientDataSet;
    dspCA: TDataSetProvider;
    sqlCa: TSQLDataSet;
    sqlCaID: TIntegerField;
    sqlCaCODDEP: TStringField;
    sqlCaDESCR: TStringField;
    sqlCaOBS: TStringField;
    cdsCaID: TIntegerField;
    cdsCaCODDEP: TStringField;
    cdsCaDESCR: TStringField;
    cdsCaOBS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadDep: TfCadDep;

implementation

uses UDm;

{$R *.dfm}

procedure TfCadDep.btnGravarClick(Sender: TObject);
begin
    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CADDEP, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cdsCaID.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
    end;
  inherited;

end;

procedure TfCadDep.FormShow(Sender: TObject);
begin
 // inherited;
 if(cdsCa.Active)then
 cdsCa.Close;
 cdsCa.Open;
 btnProcurar.Visible := False;

 
end;

procedure TfCadDep.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfCadDep.btnExcluirClick(Sender: TObject);
begin
//  inherited;

end;

procedure TfCadDep.btnProcurarClick(Sender: TObject);
begin
  inherited;   //

end;

end.
