unit uProcuraCBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls, DB,
  SqlExpr, Provider, DBClient, rpcompobase, rpvclreport, XPMenu, dxCore,
  dxButton, EDBFind;

type
  TfProcuraCBR = class(TForm)
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    DataSource1: TDataSource;
    sds: TSQLDataSet;
    cdsID_CBR: TIntegerField;
    cdsDATABAIXA: TDateField;
    cdsNOMECBR: TStringField;
    cdsOBS: TGraphicField;
    sdsID_CBR: TIntegerField;
    sdsDATABAIXA: TDateField;
    sdsNOMECBR: TStringField;
    sdsOBS: TGraphicField;
    Panel1: TPanel;
    Panel2: TPanel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    EvDBFind1: TEvDBFind;
    Label1: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    XPMenu1: TXPMenu;
    CheckBox1: TCheckBox;
    VCLReport1: TVCLReport;
    procedure FormShow(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcuraCBR: TfProcuraCBR;

implementation

uses UDM;

{$R *.dfm}

procedure TfProcuraCBR.FormShow(Sender: TObject);
begin
  if (not cds.Active) then
    cds.Open;
end;

procedure TfProcuraCBR.dxButton2Click(Sender: TObject);
begin
  close;
end;

end.
