unit uCarretaTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfCarretaTipo = class(TfPai_new)
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCarretaTipo: TfCarretaTipo;

implementation

uses uDmTransp;

{$R *.dfm}

procedure TfCarretaTipo.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dmTransp.c_6_genid.Active then
      dmTransp.c_6_genid.Close;
    dmTransp.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dmTransp.c_6_genid.Open;
    dmTransp.cdsCarretaTipoCODDADOS.AsInteger := dmTransp.c_6_genid.fields[0].AsInteger;
    dmTransp.c_6_genid.Close;
    dmTransp.cdsCarretaTipoUSO.asString := 'CARRETATIPO';
  end;
  inherited;
end;

procedure TfCarretaTipo.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbEdit2.SetFocus;
end;

procedure TfCarretaTipo.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Visible) then
    btnGravar.SetFocus;
end;

procedure TfCarretaTipo.FormShow(Sender: TObject);
begin
  inherited;
  dtsrc.DataSet.Open;
end;

end.
