unit uSerieNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask, DBCtrls;

type
  TfSerieNF = class(TfPai)
    cdsSERIE: TStringField;
    cdsULTIMO_NUMERO: TIntegerField;
    cdsCODSERIE: TStringField;
    cdsNOTAFISCAL: TSmallintField;
    sdsSERIE: TStringField;
    sdsULTIMO_NUMERO: TIntegerField;
    sdsCODSERIE: TStringField;
    sdsNOTAFISCAL: TSmallintField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSerieNF: TfSerieNF;

implementation

uses UDm;

{$R *.dfm}

procedure TfSerieNF.btnIncluirClick(Sender: TObject);
begin
  inherited;
   DBEdit2.SetFocus;
end;

procedure TfSerieNF.FormShow(Sender: TObject);
begin
  inherited;
    Incluir := 'S';
  Excluir := 'S';
  Alterar := 'S';
  Cancelar := 'S';
  Procurar :=  'S';

  if not cds.Active then
    cds.Open;

end;

end.
