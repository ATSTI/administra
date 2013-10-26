unit uTipoCobertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfTipoCobertura = class(TfPai_new)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoCobertura: TfTipoCobertura;

implementation

uses uDmTransp;

{$R *.dfm}

procedure TfTipoCobertura.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbEdit2.SetFocus;
end;

procedure TfTipoCobertura.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dmTransp.c_6_genid.Active then
      dmTransp.c_6_genid.Close;
    dmTransp.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dmTransp.c_6_genid.Open;
    dmTransp.cdsTipoCoberturaCODDADOS.AsInteger := dmTransp.c_6_genid.fields[0].AsInteger;
    dmTransp.c_6_genid.Close;
    dmTransp.cdsTipoCoberturaUSO.asString := 'TIPOCOBERTURA';
  end;

  inherited;
end;

procedure TfTipoCobertura.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Visible) then
    btnGravar.SetFocus;
end;

procedure TfTipoCobertura.FormShow(Sender: TObject);
begin
  inherited;
  dtsrc.DataSet.Open;
end;

end.
