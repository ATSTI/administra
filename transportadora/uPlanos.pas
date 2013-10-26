unit uPlanos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DBCtrls, Grids, DBGrids, StdCtrls, Mask, DB, Menus,
  XPMenu, Buttons, ExtCtrls, MMJPanel;

type
  TfPlanos = class(TfPai)
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPlanos: TfPlanos;

implementation

uses UDm;

{$R *.dfm}

procedure TfPlanos.FormShow(Sender: TObject);
begin
  inherited;
  if (not dm.cdsFaixa.Active) then
    dm.cdsFaixa.Open;
end;

procedure TfPlanos.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfPlanos.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (dm.cdsFaixa.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FAIXAETARIA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cdsFaixaCODFAIXA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  //DBEdit4.SetFocus;
end;

end.
