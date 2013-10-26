unit uFiltroSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, DBClient,
  Provider, SqlExpr, Buttons;

type
  TfFiltroSetor = class(TForm)
    sqlCa: TSQLDataSet;
    sqlCaID: TIntegerField;
    sqlCaCODSEC: TStringField;
    sqlCaDESCR: TStringField;
    dspCa: TDataSetProvider;
    cdsCa: TClientDataSet;
    cdsCaID: TIntegerField;
    cdsCaCODSEC: TStringField;
    cdsCaDESCR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltroSetor: TfFiltroSetor;

implementation

uses uCorreio;

{$R *.dfm}

procedure TfFiltroSetor.FormShow(Sender: TObject);
begin
  if(cdsCa.Active)then
  cdsCa.Close;
  cdsCa.Open;
end;

procedure TfFiltroSetor.BitBtn1Click(Sender: TObject);
begin
  if(fCorreio.DtSrc.DataSet.State in [dsInsert,dsEdit,dsBrowse]) then
  begin
    fCorreio.DBEdit5.Text := cdsCaCODSEC.Text;
    fCorreio.Edit3.Text := cdsCaDESCR.Text;

  end;
  fFiltroSetor.Close;
end;

procedure TfFiltroSetor.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

end.
