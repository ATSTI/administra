unit uResponsalvel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, DBCtrls, StdCtrls, Mask, Menus, XPMenu, DB, Buttons,
  ExtCtrls, MMJPanel;

type
  TfResponsalvel = class(TfPai_new)
    Label58: TLabel;
    DBEdit45: TDBEdit;
    Label59: TLabel;
    DBEdit46: TDBEdit;
    Label60: TLabel;
    DBEdit47: TDBEdit;
    Label61: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label62: TLabel;
    DBEdit50: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Label65: TLabel;
    DBEdit53: TDBEdit;
    Label66: TLabel;
    DBEdit54: TDBEdit;
    Label67: TLabel;
    DBEdit55: TDBEdit;
    Label68: TLabel;
    DBEdit56: TDBEdit;
    Label69: TLabel;
    DBEdit57: TDBEdit;
    Label70: TLabel;
    DBEdit59: TDBEdit;
    Label72: TLabel;
    DBEdit58: TDBEdit;
    Label71: TLabel;
    DBTextDestaque1: TDBText;
    DBTextDestaque: TDBText;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResponsalvel: TfResponsalvel;

implementation

uses UDm, uProcResponsavel;

{$R *.dfm}

procedure TfResponsalvel.btnIncluirClick(Sender: TObject);
begin
  inherited;
  //DBRadioGroup22.ItemIndex := 2;
  DBEdit46.SetFocus;
end;

procedure TfResponsalvel.btnGravarClick(Sender: TObject);
begin
  if (DM.cdsResponsavel.State in [dsInsert]) then
  begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RESPONSAVEL, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM.cdsResponsavelCOD_RESPONSAVEL.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    DM.cdsResponsavelTIPO_RESPONSAVEL.AsString := '2';
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure TfResponsalvel.FormShow(Sender: TObject);
begin
  inherited;
    if (DM.cdsResponsavel.Active) then
       DM.cdsResponsavel.Close;
    DM.cdsResponsavel.Params[0].AsInteger := fProcResponsavel.cdsResponsavelCOD_RESPONSAVEL.AsInteger;
    DM.cdsResponsavel.Open;
end;

end.
