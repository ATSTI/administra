unit uCadSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Mask, DBCtrls, SqlExpr, Provider, DBClient, Grids,
  DBGrids;

type
  TfCadSetor = class(TfPai_new)
    cdsCa: TClientDataSet;
    dspCa: TDataSetProvider;
    sqlCa: TSQLDataSet;
    sqlCaID: TIntegerField;
    sqlCaCODSEC: TStringField;
    sqlCaDESCR: TStringField;
    cdsCaID: TIntegerField;
    cdsCaCODSEC: TStringField;
    cdsCaDESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadSetor: TfCadSetor;

implementation

uses UDm;

{$R *.dfm}

procedure TfCadSetor.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfCadSetor.btnGravarClick(Sender: TObject);
begin
    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CADSEC, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      fCadSetor.cdsCaID.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
    end;

  inherited;

end;

procedure TfCadSetor.FormShow(Sender: TObject);
begin
  inherited;
  if(cdsCa.Active)then
  cdsCa.Close;
  cdsCa.Open;
  btnProcurar.Visible := False;
  btnExcluir.Visible := False;    //
end;

procedure TfCadSetor.btnExcluirClick(Sender: TObject);
begin
//  inherited;

end;

end.
