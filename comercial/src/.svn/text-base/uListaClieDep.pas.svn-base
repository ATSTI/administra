unit uListaClieDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, EDBFind, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TfListaClieDep = class(TForm)
    EvDBFind1: TEvDBFind;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    EvDBFind2: TEvDBFind;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaClieDep: TfListaClieDep;

implementation
uses UDmSaude;
{$R *.dfm}

procedure TfListaClieDep.FormShow(Sender: TObject);
begin
   if(DMSaude.cdsCliente.Active) then
    DMSaude.cdsCliente.Close;
     DMSaude.cdsCliente.Params[0].AsInteger := DMSaude.procgrupoCODCLIENTE.AsInteger;
     DMSaude.cdsCliente.Open;
end;

procedure TfListaClieDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMSaude.cdsCliente.Close;
end;

end.
