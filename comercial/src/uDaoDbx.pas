unit uDaoDbx;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  uDaoU, UDm, unitComercial, SqlExpr,Contnrs;

type
  TDaoDbx = class;
  TNotaFiscalDbx = class;

  TDaoDbx = class(TInterfacedObject, IDao)
  private
    SqlQuery: TSqlQuery;
  protected
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GeraId(NomeGenerator: string): Integer;
  end;

  TNotaFiscalDbx = class(TDaoDbx, INotaFiscalDao)
  public
    procedure Excluir(const obj: TNotaFiscal);
    function Recuperar(id: Integer): TNotaFiscal;
    procedure Salvar(obj: TNotaFiscal);
    function ListarTodasNotas: TObjectList;
  end;

implementation

{ TNotaFiscalDbx }

procedure TNotaFiscalDbx.Excluir(const obj: TNotaFiscal);
var
  sql: string;
begin
  sql := 'DELETE FROM NOTAFISCAL WHERE NUMNF = ' + IntToStr(obj.NumeroNF);
  try
    dm.sqlsisAdimin.ExecuteDirect(sql);
  except
  on e:Exception do
    raise exception.Create('Falha ao excluir Nota Fiscal' + #13#10 + 'Mensagem original: '+e.Message);
  end;
end;

function TNotaFiscalDbx.ListarTodasNotas: TObjectList;
var
  notaFiscal: TNotaFiscal;
  ListaNotas: TObjectList;
  SqlQuery: TSQLQuery;
begin
  SqlQuery.Close;
  SqlQuery.SQL.Clear;
  SqlQuery.SQL.Add('SELECT NUMNF, NOTASERIE, DTAEMISSAO');
  SqlQuery.SQL.Add('VALOR_TOTAL_NOTA');

  SqlQuery.SQL.Add('FROM NOTAFISCAL');
  //SqlQuery.SQL.Add('WHERE NUMNF = 1 AND ((VENDIDO IS NULL) OR (VENDIDO = 0))');

  try
    try
      SqlQuery.Open;
      if SqlQuery.IsEmpty then
         ListaNotas := nil
      else
      begin
      ListaNotas := TObjectList.Create;
      while not SqlQuery.Eof do
      begin
        notaFiscal := TNotaFiscal.Create;
        notaFiscal.NumeroNF := SqlQuery.FieldByName('NUMNF').AsInteger;
        notaFiscal.NotaSerie := SqlQuery.FieldByName('NOTASERIE').asString;
        notaFiscal.DataEmissao := SqlQuery.FieldByName('DTAEMISSAO').asDateTime;
        notaFiscal.ValorTotalNF := SqlQuery.FieldByName('VALOR_TOTAL_NOTA').AsFloat;
        ListaNotas.Add(notaFiscal);
        SqlQuery.Next;
      end;
      end;
    except
    on e:exception do
    begin
      ShowMessage('Falha ao recuperar Nota Fiscal'+ #13+
                  'Mesagem original: '+ e.Message);
      ListaNotas := nil;
    end;
    end;
  finally
    SqlQuery.Close;
    result := ListaNotas;
  end;


end;

function TNotaFiscalDbx.Recuperar(id: Integer): TNotaFiscal;
var
  notaFiscal: TNotaFiscal;
  sqlQueryOutros: TSQLQuery;
begin
  SqlQuery.Close;
  SqlQuery.SQL.Clear;
  SqlQuery.SQL.Add('SELECT NUMNF, NOTASERIE, DTAEMISSAO');
  SqlQuery.SQL.Add('VALOR_TOTAL_NOTA');

  SqlQuery.SQL.Add('FROM NOTAFISCAL');
  SqlQuery.SQL.Add('WHERE NUMNF = ' + IntToStr(id));

  try
    try
      SqlQuery.Open;
      if SqlQuery.IsEmpty then
         notaFiscal := nil
      else
      begin
        notaFiscal := TNotaFiscal.Create;
        notaFiscal.NumeroNF := SqlQuery.FieldByName('NUMNF').AsInteger;
        notaFiscal.NotaSerie := SqlQuery.FieldByName('NOTASERIE').asString;
        notaFiscal.DataEmissao := SqlQuery.FieldByName('DTAEMISSAO').asDateTime;
        notaFiscal.ValorTotalNF := SqlQuery.FieldByName('VALOR_TOTAL_NOTA').AsFloat;
      end;
    except
    on e:exception do
    begin
      ShowMessage('Falha ao recuperar Nota Fiscal'+ #13+
                  'Mesagem original: '+ e.Message);
      notaFiscal := nil;
    end;
    end;
  finally
    SqlQuery.Close;
    result := notaFiscal;
  end;

end;

procedure TNotaFiscalDbx.Salvar(obj: TNotaFiscal);
begin

end;

{ TDaoDbx }

procedure TDaoDbx.AfterConstruction;
begin
  SqlQuery := TSqlQuery.Create(nil);
  SqlQuery.SQLConnection := dm.sqlsisAdimin;
end;

procedure TDaoDbx.BeforeDestruction;
begin
  SqlQuery.Close;
  FreeAndNil(SqlQuery);
end;

function TDaoDbx.GeraId(NomeGenerator: string): Integer;
var
  lquery: TSQLQuery;
begin
  result := 0;
  lquery := TSQLQuery.Create(nil);
  lquery.SQLConnection := dm.sqlsisAdimin;
  lquery.SQL.Add('SELECT GEN_ID('+ NomeGenerator +',1) AS ID FROM RDB$DATABASE');
  try
    try
      lquery.Open;
      result := lquery.FieldByName('ID').asInteger;
    except
    on e: exception do
      ShowMessage('Generator inexistente: ' + NomeGenerator);
    end;
  finally
    lquery.Close;
    FreeAndNil(lquery);
  end;

end;

end.
