unit uPrazo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls, MMJPanel;

type
  TfPrazo = class(TfPai_new)
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrazo: TfPrazo;

implementation

uses UDm;

{$R *.dfm}

procedure TfPrazo.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfPrazo.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dm.cdsPrazoD9.AsString := '999';
end;

procedure TfPrazo.btnGravarClick(Sender: TObject);
begin
  if (dm.cdsPrazoVALOR.AsFloat > 0) then
    inherited
  else
    MessageDlg('É necessário preencher o número de parcelas.', mtError, [mbOK], 0);
  if (dm.cdsPrazoD9.AsString <> '999') then
    MessageDlg('O Parametro D9 é padrão "999"', mtError, [mbOK], 0);
end;

end.
