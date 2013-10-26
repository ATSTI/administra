unit uUsuarioCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls,
  Mask, DBClient, Provider, SqlExpr, Menus, XPMenu, Buttons, MMJPanel;

type
  TfUsuarioCadastro = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBGrid1: TDBGrid;
    cdsCODUSUARIO: TSmallintField;
    cdsNOMEUSUARIO: TStringField;
    cdsSTATUS: TSmallintField;
    cdsPERFIL: TStringField;
    sdsCODUSUARIO: TSmallintField;
    sdsNOMEUSUARIO: TStringField;
    sdsSTATUS: TSmallintField;
    sdsPERFIL: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUsuarioCadastro: TfUsuarioCadastro;

implementation

uses UDm;

{$R *.dfm}

procedure TfUsuarioCadastro.FormShow(Sender: TObject);
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

procedure TfUsuarioCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.
