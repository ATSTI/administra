unit uSerie;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls;

Type
  TSerie = class(TObject)
  private
    sql:string;
    procedure criaSerie(const Value: string);
    function pegaSerie: string;
    procedure BuscaSerieRecebimento(Serie: string);
    procedure BuscaSerieSerie;
  public
    property Serie: string read pegaSerie write criaSerie;
  end;
implementation

uses UDm;

{ TSerie }

procedure TSerie.BuscaSerieRecebimento(Serie: string);
var sqlQuery: TSqlQuery;
begin
  {sql := 'Select MAX(NOTAFISCAL) from VENDA where SERIE = ' + QuotedStr(Serie);
  sqlQuery := TSqlQuery.Create(Self);
  sqlQuery.SQLConnection := dm.sqlsisAdimin;
  sqlQuery.Text := sql;
  sqlQuery.Open;}
end;

procedure TSerie.BuscaSerieSerie;
begin

end;

procedure TSerie.criaSerie(const Value: string);
begin

end;

function TSerie.pegaSerie: string;
begin

end;

end.
 