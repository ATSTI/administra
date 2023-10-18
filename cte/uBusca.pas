unit uBusca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDMCTe, Data.DB, Vcl.Grids, Vcl.DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.Provider,
  Datasnap.DBClient, Vcl.StdCtrls, Frm_Demo_ACBrCTe;

type
  TfBusca = class(TForm)
    cdsBuscaCli: TClientDataSet;
    dspBuscaCli: TDataSetProvider;
    dsBuscaCli: TDataSource;
    zqBuscaCli: TZQuery;
    zqBuscaCliCODCLIENTE: TIntegerField;
    zqBuscaCliNOMECLIENTE: TWideStringField;
    zqBuscaCliRAZAOSOCIAL: TWideStringField;
    cdsBuscaCliCODCLIENTE: TIntegerField;
    cdsBuscaCliNOMECLIENTE: TWideStringField;
    cdsBuscaCliRAZAOSOCIAL: TWideStringField;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBusca: TfBusca;

implementation

{$R *.dfm}

procedure TfBusca.Button1Click(Sender: TObject);
begin
 // Frm_Demo_ACBrCTe.edtDestBusca.text := cdsc
end;

procedure TfBusca.FormShow(Sender: TObject);
begin
  if (cdsBuscaCli.Active)then
    cdsBuscaCli.Close;
  //cdsNF.Params[0].AsInteger := val_genCte;
  cdsBuscaCli.Open;
end;

end.
