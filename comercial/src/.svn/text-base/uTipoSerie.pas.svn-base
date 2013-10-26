unit uTipoSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfTipoSerie = class(TfPai_new)
    Label7: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBEditTipoSerie: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoSerie: TfTipoSerie;

implementation

uses UDm;

{$R *.dfm}

procedure TfTipoSerie.FormShow(Sender: TObject);
begin
  inherited;
   if (not Dm.TableTipoSerie.Active) then
      Dm.TableTipoSerie.Open;
   dm.TableTipoSerie.Last;
end;

procedure TfTipoSerie.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEditTipoSerie.SetFocus;
end;

end.
