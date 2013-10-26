unit uFiltroDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  DBClient, Provider, SqlExpr;

type
  TfFiltroDep = class(TForm)
    sqlCa: TSQLDataSet;
    sqlCaID: TIntegerField;
    sqlCaCODDEP: TStringField;
    sqlCaDESCR: TStringField;
    sqlCaOBS: TStringField;
    dspCA: TDataSetProvider;
    cdsCa: TClientDataSet;
    cdsCaID: TIntegerField;
    cdsCaCODDEP: TStringField;
    cdsCaDESCR: TStringField;
    cdsCaOBS: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltroDep: TfFiltroDep;

implementation

uses UDm, uCorreio;

{$R *.dfm}

procedure TfFiltroDep.BitBtn1Click(Sender: TObject);
begin
  if(fCorreio.DtSrc.DataSet.State in [dsInsert,dsEdit,dsBrowse]) then
  begin
    fCorreio.DBEdit4.Text := cdsCaCODDEP.Text;
    fCorreio.Edit2.Text := cdsCaDESCR.Text;

  end;
  fFiltroDep.Close;
end;

procedure TfFiltroDep.FormShow(Sender: TObject);
begin
  if(cdsCa.Active)then
  cdsCa.Close;
  cdsCa.Open;
end;

procedure TfFiltroDep.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

end.
