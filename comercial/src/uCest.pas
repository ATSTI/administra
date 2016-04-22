unit uCest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, DBClient, Provider, DB, SqlExpr, StdCtrls,
  Mask, DBCtrls, Menus, XPMenu, Buttons, ExtCtrls, MMJPanel, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfCest = class(TfPai_new)
    sdsCest: TSQLDataSet;
    dspCEST: TDataSetProvider;
    cdsCEST: TClientDataSet;
    Label2: TLabel;
    sdsCestCEST: TStringField;
    sdsCestNCM: TStringField;
    sdsCestDESCRICAO: TStringField;
    cdsCESTCEST: TStringField;
    cdsCESTNCM: TStringField;
    cdsCESTDESCRICAO: TStringField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    btnProcCest: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure btnProcCestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    vrCest: String;
    { Public declarations }
  end;

var
  fCest: TfCest;

implementation

{$R *.dfm}

procedure TfCest.btnProcCestClick(Sender: TObject);
var stra: string;
begin
  inherited;
  if (dbEdit1.Text = '') then
  begin
    cdsCEST.Cancel;
    cdsCEST.Filtered := False;
    exit;
  end;
  stra := dbEdit1.Text;
  cdsCEST.Cancel;
  if (cdsCEST.Filtered = True) then
    cdsCEST.Filtered := False;
  cdsCEST.Filter := 'CEST = ''' + stra + '*''';
  if (stra <> '') then
    cdsCEST.Filtered := True
  else
    cdsCEST.Filtered := False;
end;

procedure TfCest.FormCreate(Sender: TObject);
begin
  inherited;
  vrCest := '';
  if not cdsCest.Active then
    cdsCest.Open;
end;

procedure TfCest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vrCest := cdsCESTCest.AsString;
  if cdsCest.Active then
    cdsCest.Close;
end;

procedure TfCest.FormShow(Sender: TObject);
begin
  inherited;
  dbedit1.Enabled := True;
  dbedit2.Enabled := True;
  if (vrCest <> '') then
  begin
    dbEdit1.Text := vrCest;
    btnProcCest.Click;
  end;
end;

end.
