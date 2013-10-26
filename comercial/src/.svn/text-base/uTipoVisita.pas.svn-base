unit uTipoVisita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB, Menus,
  XPMenu, Buttons, ExtCtrls, MMJPanel;

type
  TfTipoVisita = class(TfPai)
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoVisita: TfTipoVisita;

implementation

uses UDm;

{$R *.dfm}

procedure TfTipoVisita.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfTipoVisita.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  btnGravar.SetFocus;
end;

procedure TfTipoVisita.btnGravarClick(Sender: TObject);
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_tipovisitas, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  DM.cdsTipoVisitaCODTIPOVISITA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
  inherited;

end;

procedure TfTipoVisita.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfTipoVisita.btnSairClick(Sender: TObject);
begin
//  inherited;
  close;
end;

procedure TfTipoVisita.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsTipoVisita.Open;
end;

procedure TfTipoVisita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.cdsTipoVisita.Close;
  inherited;

end;

end.
