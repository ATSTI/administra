unit uPlanoFaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids, Mask, DBCtrls, uPai;

type
  TfPlanoFaixa = class(TfPai)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPlanoFaixa: TfPlanoFaixa;
  faixa : string;
implementation

uses UDmSaude, uDm;

{$R *.dfm}

procedure TfPlanoFaixa.btnGravarClick(Sender: TObject);
begin
  if (DMSaude.cdsFaixa.State in [dsInsert]) then
    begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FAIXAETARIA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsFaixaCODFAIXA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;

  inherited;

end;

procedure TfPlanoFaixa.btnIncluirClick(Sender: TObject);
begin
  DBEdit6.SetFocus;
  inherited;
  DMSaude.cdsFaixaUSO.AsString := faixa;
end;

end.
