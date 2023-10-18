unit ufMunicipios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, Provider, DBClient,
  FMTBcd, SqlExpr;

type
  TfBuscaMun = class(TForm)
    Label1: TLabel;
    edMun: TEdit;
    Label2: TLabel;
    edUF: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn9: TBitBtn;
    DataSource1: TDataSource;
    cds: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    varMun: String;
    varIBGE: String;
    varUF: String;
    { Public declarations }
  end;

var
  fBuscaMun: TfBuscaMun;

implementation

uses udm;

{$R *.dfm}

procedure TfBuscaMun.BitBtn1Click(Sender: TObject);
var str: String;
  str_where : String;
begin
  str := 'SELECT NM_LOCALIDADE , CD_IBGE, NM_MUNICIPIO, NM_TIPO_LOCALIDADE, CD_UF' +
    ' FROM TB_IBGE ';
  str_where := '';
  if (edMun.Text <> '') then
  begin
    str_where := ' WHERE NM_MUNICIPIO LIKE ' + QuotedStr('%'+edMun.Text+'%');
  end;
  if (edUF.Text <> '') then
  begin
    if str_where = '' then
      str_where := ' WHERE CD_UF = ' + QuotedStr(edUF.Text)
    else
      str_where := str_where + ' AND CD_UF = ' + QuotedStr(edUF.Text);
  end;

  if (cds.Active) then
    cds.Close;
  cds.CommandText := str + str_where +  ' ORDER BY NM_LOCALIDADE, CD_UF ';
  cds.Open;
  varMun := cds.Fields.Fields[0].AsString;
  varIBGE := cds.Fields.Fields[1].AsString;
  varUF := cds.Fields.Fields[4].AsString;  
end;

procedure TfBuscaMun.BitBtn9Click(Sender: TObject);
begin
  Close;
end;

procedure TfBuscaMun.FormShow(Sender: TObject);
begin
  DBGrid1.Columns[0].Title.Caption := 'Municipio';
  DBGrid1.Columns[1].Title.Caption := 'Estado';
  DBGrid1.Columns[2].Title.Caption := 'Cod. IBGE';
  DBGrid1.Columns[0].FieldName := 'NM_LOCALIDADE';
  DBGrid1.Columns[1].FieldName := 'CD_UF';
  DBGrid1.Columns[2].FieldName := 'CD_IBGE';
end;

procedure TfBuscaMun.DBGrid1DblClick(Sender: TObject);
begin
  varMun := cds.Fields.Fields[0].AsString;
  varIBGE := cds.Fields.Fields[1].AsString;
  varUF := cds.Fields.Fields[4].AsString;
  Close;
end;

procedure TfBuscaMun.DBGrid1CellClick(Column: TColumn);
begin
  varMun := cds.Fields.Fields[0].AsString;
  varIBGE := cds.Fields.Fields[1].AsString;
  varUF := cds.Fields.Fields[4].AsString;
end;

end.
