unit uOsDetalheClasse;

interface

uses  SysUtils, Dialogs, dbXpress, SqlExpr;

Type
  TOsDetalheClasse = class(TObject)
  private
    function getCodDet: Integer;
    function getCodOs : Integer;
    function getCodUsuario: Integer;
    function getStatus: String;
    function executaSql(strSql: String): Boolean;
    function getDescricao: String;
    function getPreco: Double;
    function getQtde: Double;
    function getServExecutado: String;
    procedure setCodDet(const Value: Integer);
    procedure setCodOs(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setStatus(const Value: String);
    procedure setDescricao(const Value: String);
    procedure setPreco(const Value: Double);
    procedure setQtde(const Value: Double);
    procedure setServExecutado(const Value: String);
    function getDesconto: Double;
    procedure setDesconto(const Value: Double);
    function getTipo: String;
    procedure setTipo(const Value: String);
    function getCodOsServ: Integer;
    function getCodProduto: Integer;
    procedure setCodOsServ(const Value: Integer);
    procedure setCodProduto(const Value: Integer);
  protected
    //Atributos
    _codOsP     : Integer;
    _codDet     : Integer;
    _codOsServ  : Integer;
    _codUsuario : Integer;
    _codProduto : Integer;
    _status     : String;
    _descricao  : String;
    _preco      : Double;
    _qtde       : Double;
    _desconto   : Double;
    _tipo       : String;
  public
    property CodOsP        : Integer read getCodOs write setCodOs;
    property CodDet        : Integer read getCodDet write setCodDet;
    property CodOsServ     : Integer read getCodOsServ write setCodOsServ;
    property CodUsuario    : Integer read getCodUsuario write setCodUsuario;
    property CodProduto    : Integer read getCodProduto write setCodProduto;
    property Status        : String read getStatus write setStatus;
    property Tipo          : String read getTipo write setTipo;
    property Descricao     : String read getDescricao write setDescricao;
    property ServExecutado : String read getServExecutado write setServExecutado;
    property Qtde          : Double read getQtde write setQtde;
    property Preco         : Double read getPreco write setPreco;
    property Desconto      : Double read getDesconto write setDesconto;

    function IncluirOsDet(codOsDetI: Integer): Integer;
    function alterarOsDet(codOsDetA: Integer): Boolean;
    function alterarOsDetS(codOsS: Integer; codOsDetS: Integer; StatusOsDet: String): Boolean;
    function excluirOsDet(codMovDetE: Integer): Boolean;

    procedure ListaOs(DataIni: TdateTime; DataFim: TDateTime; codCliente: Integer);

  end;

implementation

uses UDm;

{ TOsDetalheClasse }

function TOsDetalheClasse.alterarOsDet(codOsDetA: Integer): Boolean;
var sqlAltera: String;
begin
  // Alteracao
  try
    DecimalSeparator := '.';
    sqlAltera := 'UPDATE OS_DET SET ';
    sqlAltera := sqlAltera + ' CODUSUARIO      = ' + IntToStr(Self.codUsuario) + ', ';
    sqlAltera := sqlAltera + ' DESCRICAO_SERV  = ' + QuotedStr(Self.Descricao) + ', ';
    //sqlAltera := sqlAltera + ' SERV_EXECUTADO  = ' + QuotedStr(Self.ServExecutado) + ', ';
    sqlAltera := sqlAltera + ' STATUS          = ' + QuotedStr(Self.status) + ', ';
    DecimalSeparator := '.';
    sqlAltera := sqlAltera + ' QTDE            = ' + FloatToStr(Self.Qtde) + ', ';
    sqlAltera := sqlAltera + ' PRECO           = ' + FloatToStr(Self.Preco);
    DecimalSeparator := ',';
    sqlAltera := sqlAltera + ' WHERE ID_OS_DET = ' + IntToStr(codOsDetA);
    executaSql(sqlAltera);
    Result := True;
    DecimalSeparator := ',';
  except
    Result := False;
    DecimalSeparator := ',';
  end;
end;

function TOsDetalheClasse.alterarOsDetS(codOsS: Integer; codOsDetS: Integer;
  StatusOsDet: String): Boolean;
var sqlAlteraSt: String;
    sqlBuscaS: TSqlQuery;
begin
  Result := False;
  sqlAlteraSt := 'UPDATE OS_DET SET STATUS = ';
  sqlAlteraSt := sqlAlteraSt + QuotedStr(StatusOsDet);

  sqlAlteraSt := sqlAlteraSt + ' WHERE ID_OS_DET  = ' + IntToStr(CodOsDetS);

  if (executaSql(sqlAlteraSt)) then
  begin
    Result := True;
    // Se todos Status forem 'F' ou 'A' entao altero o Status da OS para 'F' ou 'A' tbem
    Try
      sqlBuscaS := TSqlQuery.Create(nil);
      sqlBuscaS.SQLConnection := dm.sqlsisAdimin;
      sqlBuscaS.sql.Clear;
      sqlBuscaS.sql.Add('SELECT COUNT(ID_OS) FROM OS_DET WHERE ID_OS = ' +
        IntToStr(CodOsS) + ' AND STATUS <> ' + QuotedStr(StatusOSDet));
      sqlBuscaS.Open;
      if (sqlBuscaS.RecordCount = 0) then
      begin
        // Todos Status estao iguais, então altera o Status da OS
        Result := False;
        sqlAlteraSt := 'UPDATE OS SET STATUS = ';
        sqlAlteraSt := sqlAlteraSt + QuotedStr(StatusOsDet);
        sqlAlteraSt := sqlAlteraSt + ' WHERE CODOS  = ' + IntToStr(codOsS);
        Result := False;
        if (executaSql(sqlAlteraSt)) then
          Result := True;
      end;
    Finally
      sqlBuscaS.Destroy;
    end;

  end;
end;

function TOsDetalheClasse.excluirOsDet(codMovDetE: Integer): Boolean;
var sqlExclui: String;
begin
  // Exclusao
  {
    So e permitido excluir OS  PENDENTE
  }
  Result := False;
  sqlExclui := 'DELETE FROM OS_DET ';
  sqlExclui := sqlExclui + ' WHERE ID_OS_DET  = ' + IntToStr(Self.CodDet);
  sqlExclui := sqlExclui + '   AND STATUS     = ' + QuotedStr('P');

  if (executaSql(sqlExclui)) then
    Result := True;

end;

function TOsDetalheClasse.executaSql(strSql: String): Boolean;
var ErrorCode: Integer;
begin
  ErrorCode := dm.sqlsisAdimin.ExecuteDirect(strSql);
  if ErrorCode = 0 then
  begin
    Result := True;
  end;

  if ErrorCode <> 0 then
  begin
    Result := False;
    raise Exception.Create( 'Error: code = ' + IntToStr( ErrorCode ) )
  end;
end;

function TOsDetalheClasse.getCodDet: Integer;
begin
  Result := _codDet;
end;

function TOsDetalheClasse.getCodOs: Integer;
begin
  Result := _codOsP;
end;


function TOsDetalheClasse.getCodOsServ: Integer;
begin
  Result := _codOsServ;
end;

function TOsDetalheClasse.getCodProduto: Integer;
begin
  Result := _codProduto;
end;

function TOsDetalheClasse.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TOsDetalheClasse.getDesconto: Double;
begin
  Result := _desconto;
end;

function TOsDetalheClasse.getDescricao: String;
begin
  Result := Trim(_descricao);
end;

function TOsDetalheClasse.getPreco: Double;
begin
  Result := _preco;
end;

function TOsDetalheClasse.getQtde: Double;
begin
  Result := _qtde;
end;

function TOsDetalheClasse.getServExecutado: String;
begin

end;

function TOsDetalheClasse.getStatus: String;
begin
  Result := Trim(_status);
end;

function TOsDetalheClasse.getTipo: String;
begin
  Result := Trim(_tipo);
end;

function TOsDetalheClasse.IncluirOsDet(codOsDetI: Integer): Integer;
var sqlInsere: String;
    sqlBuscaI: TSqlQuery;
begin
  // Inclusao
  try
    _codDet := codOsDetI;
    if (Self.CodDet = 0) then
    begin
      Try
        sqlBuscai := TSqlQuery.Create(nil);
        sqlBuscai.SQLConnection := dm.sqlsisAdimin;
        sqlBuscai.sql.Clear;
        sqlBuscai.sql.Add('SELECT CAST(GEN_ID(GEN_OSDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE');
        sqlBuscai.Open;
        _codDet := sqlBuscai.Fields[0].AsInteger;
      Finally
        sqlBuscai.Destroy;
      end;
    end;
    sqlInsere := 'INSERT INTO OS_DET(ID_OS_DET, ID_OS, CODUSUARIO, CODPRODUTO, '+
      ' DESCRICAO_SERV, STATUS, QTDE, PRECO, TIPO, DESCONTO, ' +
      ' ID_OSDET_SERV) VALUES (';
    sqlInsere := sqlInsere + IntToStr(Self.CodDet) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.CodOsP) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.codUsuario) + ', ';
    sqlInsere := sqlInsere + IntToStr(Self.codProduto) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.Descricao) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.status) + ', ';
    DecimalSeparator := '.';
    sqlInsere := sqlInsere + FloatToStr(Self.Qtde) + ', ';
    sqlInsere := sqlInsere + FloatToStr(Self.Preco) + ', ';
    sqlInsere := sqlInsere + QuotedStr(Self.Tipo) + ', ';
    sqlInsere := sqlInsere + FloatToStr(Self.Desconto) + ', ';
    DecimalSeparator := ',';    
    if (Self.CodOsServ > 90000000) then
      sqlInsere := sqlInsere + IntToStr(Self.CodDet) + ')'
    else
      sqlInsere := sqlInsere + IntToStr(Self.CodOsServ) + ')';
    executaSql(sqlInsere);
    Result := Self.CodDet;
  except
    Result := 0;
  end;

end;

procedure TOsDetalheClasse.ListaOs(DataIni, DataFim: TDateTime;
  codCliente: Integer);
begin
  // Lista
end;

procedure TOsDetalheClasse.setCodDet(const Value: Integer);
begin
  _codDet := Value;
end;

procedure TOsDetalheClasse.setCodOs(const Value: Integer);
begin
  _codOsP := Value;
end;

procedure TOsDetalheClasse.setCodOsServ(const Value: Integer);
begin
  _codOsServ := Value;
end;

procedure TOsDetalheClasse.setCodProduto(const Value: Integer);
begin
  _codProduto := Value;
end;

procedure TOsDetalheClasse.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TOsDetalheClasse.setDesconto(const Value: Double);
begin
  _desconto := Value;
end;

procedure TOsDetalheClasse.setDescricao(const Value: String);
begin
  _descricao := Value;
end;

procedure TOsDetalheClasse.setPreco(const Value: Double);
begin
  _preco := Value;
end;

procedure TOsDetalheClasse.setQtde(const Value: Double);
begin
  _qtde := Value;
end;

procedure TOsDetalheClasse.setServExecutado(const Value: String);
begin

end;

procedure TOsDetalheClasse.setStatus(const Value: String);
begin
  _status := Value;
end;

procedure TOsDetalheClasse.setTipo(const Value: String);
begin
  _tipo := Value;
end;

end.
