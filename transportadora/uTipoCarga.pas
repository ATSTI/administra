unit uTipoCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfTipoCarga = class(TfPai_new)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoCarga: TfTipoCarga;

implementation

uses uDmTransp;

{$R *.dfm}

procedure TfTipoCarga.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dmTransp.c_6_genid.Active then
      dmTransp.c_6_genid.Close;
    dmTransp.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dmTransp.c_6_genid.Open;
    dmTransp.cdsTipoCargaCODDADOS.AsInteger := dmTransp.c_6_genid.fields[0].AsInteger;
    dmTransp.c_6_genid.Close;
    dmTransp.cdsTipoCargaUSO.asString := 'TIPOCARGA';
  end;

  inherited;
end;

procedure TfTipoCarga.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Visible) then
    btnGravar.SetFocus;
end;

procedure TfTipoCarga.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbEdit2.SetFocus;
end;

procedure TfTipoCarga.FormShow(Sender: TObject);
begin
  inherited;
  dtsrc.DataSet.Open;
end;

end.
