unit uTipoMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfTipoMovimento = class(TfPai_new)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoMovimento: TfTipoMovimento;

implementation

uses uDmTransp;

{$R *.dfm}

procedure TfTipoMovimento.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbEdit2.SetFocus;
end;

procedure TfTipoMovimento.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Visible) then
    btnGravar.SetFocus;
end;

procedure TfTipoMovimento.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dmTransp.c_6_genid.Active then
      dmTransp.c_6_genid.Close;
    dmTransp.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dmTransp.c_6_genid.Open;
    dmTransp.cdsTipoMovimentoCODDADOS.AsInteger := dmTransp.c_6_genid.fields[0].AsInteger;
    dmTransp.c_6_genid.Close;
    dmTransp.cdsTipoMovimentoUSO.asString := 'TIPOMOVIMENTO';
  end;
  inherited;
end;

procedure TfTipoMovimento.FormShow(Sender: TObject);
begin
  inherited;
  dtsrc.DataSet.Open;
end;

end.
