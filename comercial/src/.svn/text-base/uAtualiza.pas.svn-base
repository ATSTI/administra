unit uAtualiza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  StdCtrls, Buttons;

type
  TfAtualiza = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    sdsSCRIPT: TStringField;
    sdsDATASCRIPT: TDateField;
    sdsPARAQSERVE: TStringField;
    sdsVERSAO: TStringField;
    sdsINSERIDO: TStringField;
    sdsCODATUALIZA: TIntegerField;
    cdsSCRIPT: TStringField;
    cdsDATASCRIPT: TDateField;
    cdsPARAQSERVE: TStringField;
    cdsVERSAO: TStringField;
    cdsINSERIDO: TStringField;
    cdsCODATUALIZA: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAtualiza: TfAtualiza;

implementation

uses UDm;

{$R *.dfm}

procedure TfAtualiza.BitBtn1Click(Sender: TObject);
begin
  if (not cds.Active) then
  begin
    cds.First;
    while cds.Eof do
    begin
      if (cdsINSERIDO.AsString <> 'S') then
      begin
        dm.sqlsisAdimin.
      end;
      cds.Next;
    end;
  end;
end;

end.
