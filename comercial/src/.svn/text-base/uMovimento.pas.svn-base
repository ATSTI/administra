unit uMovimento;

interface

uses SysUtils, Dialogs, dbXpress, uMovimentoDetalhe;

type

  TMovimento = class(TObject)
  private
    function getCodMov     : Integer;
    function getCodPedido  : Integer;
    function getCodCliente : Integer;
    function getCodNatureza: Integer;
    function getStatus     : Integer;
    function getCodUsuario : Integer;
    function getCodVendedor: Integer;
    function getCodCCusto  : Integer;
    function getCodFornec  : Integer;
    function getControle   : String;
    function getDataMov    : TDateTime;
    function getDataEntrega: TDateTime;
    function getMovDetalhe : TMovimentoDetalhe;

    procedure setCodMov(const Value: Integer);
    procedure setCodPedido(const Value: Integer);
    procedure setCodCliente(const Value: Integer);
    procedure setCodNatureza(const Value: Integer);
    procedure setStatus(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setCodVendedor(const Value: Integer);
    procedure setCodCCusto(const Value: Integer);
    procedure setCodFornec(const Value: Integer);
    procedure setControle(const Value: String);
    procedure setDataMov(const Value: TDateTime);
    procedure setDataEntrega(const Value: TDateTime);
    procedure setMovDetalhe(const Value: TMovimentoDetalhe);
    function getObs: String;
    procedure setObs(const Value: String);
    function getCodOrigem: Integer;
    procedure setCodOrigem(const Value: Integer);
    function getTipoPedido: String;
    procedure setTipoPedido(const Value: String);

  protected
    //Atributos
    _codMov          : Integer;
    _codPedido       : Integer;
    _codCliente      : Integer;
    _codNatureza     : Integer;
    _status          : Integer;
    _codUsuario      : Integer;
    _codVendedor     : Integer;
    _codCCusto       : Integer;
    _codFornec       : Integer;
    _codOrigem       : Integer;
    _controle        : String;
    _obs             : String;
    _dataMov         : TDateTime;
    _dataEntrega     : TDateTime;
    _movDetalhe      : TMovimentoDetalhe;
    _TipoPedido      : String;
    function executaSql(strSql: String): Boolean;
  public
    property CodMov      : Integer read getCodMov write setCodMov;
    property CodPedido   : Integer read getCodPedido write setCodPedido;
    property CodCliente  : Integer read getCodCliente write setCodCliente;
    property CodNatureza : Integer read getCodNatureza write setCodNatureza;
    property Status      : Integer read getStatus write setStatus;
    property CodUsuario  : Integer read getCodUsuario write setCodUsuario;
    property CodVendedor : Integer read getCodVendedor write setCodVendedor;
    property CodCCusto   : Integer read getCodCCusto write setCodCCusto;
    property CodFornec   : Integer read getCodFornec write setCodFornec;
    property CodOrigem   : Integer read getCodOrigem write setCodOrigem;
    property Controle    : String  read getControle write setControle;
    property Obs         : String  read getObs write setObs;
    property DataMov     : TDateTime read getDataMov write setDataMov;
    property DataEntrega : TDateTime read getDataEntrega write setDataEntrega;
    property MovDetalhe  : TMovimentoDetalhe read getMovDetalhe write setMovDetalhe;
    property TipoPedido  : String  read getTipoPedido write setTipoPedido;
    //Metodos
    function inserirMovimento(CodMovI: Integer): Integer;
    function verMovimento(Controle: String; Campo: String; Tipo: String; codNat: Integer): Integer;
    function excluirMovimento(codMovE: Integer): Boolean;
    function alterarMovimento(codMovA: Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'MOVIMENTO';

implementation

uses SqlExpr, DB, UDm, DBClient;

{ TMovimento }

function TMovimento.alterarMovimento(codMovA: Integer): Boolean;
var sqlAltera : String;
begin
  sqlAltera := 'UPDATE MOVIMENTO SET ';
  sqlAltera := sqlAltera + '  DATAMOVIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataMov));
  sqlAltera := sqlAltera + ', CODCLIENTE    = ' + IntToStr(Self.CodCliente);
  sqlAltera := sqlAltera + ', STATUS        = ' + IntToStr(Self.Status);
  sqlAltera := sqlAltera + ', CODVENDEDOR   = ' + IntToStr(Self.CodVendedor);
  sqlAltera := sqlAltera + ', CONTROLE      = ' + QuotedStr(Self.Controle);
  sqlAltera := sqlAltera + ', OBS           = ' + QuotedStr(Self.Obs);
  sqlAltera := sqlAltera + ' WHERE CODMOVIMENTO = ' + IntToStr(codMovA);
  if (executaSql(sqlAltera)) then
    Result := True
  else
    Result := False;
end;

constructor TMovimento.Create;
begin
  _movDetalhe := TMovimentoDetalhe.Create;
end;

destructor TMovimento.Destroy;
begin
  _movDetalhe.Destroy;
  inherited;
end;

function TMovimento.excluirMovimento(codMovE: Integer): Boolean;
begin
  if (executaSql('DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = ' + IntToStr(codMovE))) then
    Result := True
  else
    Result := False;
end;

function TMovimento.executaSql(strSql: String): Boolean;
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

function TMovimento.getCodCCusto: Integer;
begin
  if (dm.usaCentroCusto = 'S') then
    Result := _codCCusto
  else
    Result := dm.CCustoPadrao;
end;

function TMovimento.getCodCliente: Integer;
begin
  Result := _codCliente;
end;

function TMovimento.getCodFornec: Integer;
begin
  Result := _codFornec;
end;

function TMovimento.getCodMov: Integer;
begin
  Result := _codMov;
end;

function TMovimento.getCodNatureza: Integer;
begin
  Result := _codNatureza;
end;

function TMovimento.getCodOrigem: Integer;
begin
  Result := _codOrigem;
end;

function TMovimento.getCodPedido: Integer;
begin
  Result := _codPedido;
end;

function TMovimento.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TMovimento.getCodVendedor: Integer;
begin
  Result := _codVendedor;
end;

function TMovimento.getControle: String;
begin
  Result := _controle;
end;

function TMovimento.getDataEntrega: TDateTime;
begin
  Result := _dataEntrega;
end;

function TMovimento.getDataMov: TDateTime;
begin
  Result := _dataMov;
end;

function TMovimento.getMovDetalhe: TMovimentoDetalhe;
begin
  Result := _movDetalhe;
end;

function TMovimento.getObs: String;
begin
  Result := _obs;
end;

function TMovimento.getStatus: Integer;
begin
  Result := _status;
end;

function TMovimento.getTipoPedido: String;
begin
  Result := _TipoPedido;
end;

function TMovimento.inserirMovimento(CodMovI: Integer): Integer;
var str: String;
begin
  // Inserindo o Movimento
  _codMov := CodMovI;
  if (Self.CodMov = 0) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    _codMov := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  str := 'INSERT INTO MOVIMENTO (CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE, ';
  str := str + 'CODNATUREZA, STATUS, CODUSUARIO, CODVENDEDOR, CODALMOXARIFADO, ';
  str := str + 'CODFORNECEDOR, DATA_SISTEMA, CONTROLE, CODPEDIDO, DATA_ENTREGA, ';
  str := str + 'OBS, CODORIGEM, TIPO_PEDIDO) VALUES (';
  str := str + IntToStr(Self.CodMov) + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataMov));
  str := str + ', ' + IntToStr(Self.CodCliente) + ', ' + IntToStr(Self.CodNatureza);
  str := str + ', ' + IntToStr(Self.Status) + ', ' + IntToStr(Self.CodUsuario);
  str := str + ', ' + IntToStr(Self.CodVendedor) + ', ' + IntToStr(Self.CodCCusto);
  str := str + ', ' + IntToStr(Self.CodFornec) + ', CURRENT_TIMESTAMP ';
  str := str + ', ' + QuotedStr(Self.Controle) + ', ' + IntToStr(Self.CodPedido);
  str := str + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataEntrega));
  str := str + ', ' + QuotedStr(Self.Obs);
  str := str + ', ' + IntToStr(Self.CodOrigem);
  str := str + ', ' + QuotedStr(Self.TipoPedido);
  str := str + ')';
  if (executaSql(str)) then
    Result := Self.CodMov
  else
    Result := 0;
end;

procedure TMovimento.setCodCCusto(const Value: Integer);
begin
  _codCCusto := Value;
end;

procedure TMovimento.setCodCliente(const Value: Integer);
begin
  _codCliente := Value;
end;

procedure TMovimento.setCodFornec(const Value: Integer);
begin
  _codFornec := Value;
end;

procedure TMovimento.setCodMov(const Value: Integer);
begin
  _codMov := Value;
end;

procedure TMovimento.setCodNatureza(const Value: Integer);
begin
  _codNatureza := Value;
end;

procedure TMovimento.setCodOrigem(const Value: Integer);
begin
  _codOrigem := Value;
end;

procedure TMovimento.setCodPedido(const Value: Integer);
begin
  _codPedido := Value;
end;

procedure TMovimento.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TMovimento.setCodVendedor(const Value: Integer);
begin
  _codVendedor := Value;
end;

procedure TMovimento.setControle(const Value: String);
begin
  _controle := Trim(Value);
end;

procedure TMovimento.setDataEntrega(const Value: TDateTime);
begin
  _dataEntrega := Value;
end;

procedure TMovimento.setDataMov(const Value: TDateTime);
begin
  _dataMov := Value;
end;

procedure TMovimento.setMovDetalhe(const Value: TMovimentoDetalhe);
begin
  _movDetalhe := Value;
end;

procedure TMovimento.setObs(const Value: String);
begin
  _obs := Value;
end;

procedure TMovimento.setStatus(const Value: Integer);
begin
  _status := Value;
end;

procedure TMovimento.setTipoPedido(const Value: String);
begin
  _TipoPedido := Value;
end;

function TMovimento.verMovimento(Controle: String; Campo: String; Tipo: String; codNat: Integer): Integer;
begin
  Try
    Result := 0;

    With dm.cdsBusca do begin
      Close;
      CommandText := 'SELECT * FROM MOVIMENTO';
      if (Tipo = 'INTEGER') then
      begin
        CommandText := CommandText + ' WHERE ' + Campo + ' = ' + Controle;
      end;
      if (Tipo = 'STRING') then
      begin
        CommandText := CommandText + ' WHERE ' + Campo + ' = ' + QuotedStr(Controle);
      end;

      CommandText := CommandText + '   AND CODNATUREZA  = ' + IntToStr(codNat);
      Open;
    end;

    if (dm.cdsBusca.RecordCount > 0) then
    begin
      Self.CodMov        := dm.cdsBusca.FieldByName('CODMOVIMENTO').AsInteger;
      Self.CodPedido     := dm.cdsBusca.FieldByName('CODPEDIDO').AsInteger;
      Self.CodCliente    := dm.cdsBusca.FieldByName('CODCLIENTE').AsInteger;
      Self.CodFornec     := dm.cdsBusca.FieldByName('CODFORNECEDOR').AsInteger;
      Self.CodUsuario    := dm.cdsBusca.FieldByName('CODUSUARIO').AsInteger;
      Self.CodVendedor   := dm.cdsBusca.FieldByName('CODVENDEDOR').AsInteger;
      Self.CodNatureza   := dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger;
      Self.Status        := dm.cdsBusca.FieldByName('STATUS').AsInteger;
      Self.CodCCusto     := dm.cdsBusca.FieldByName('CODALMOXARIFADO').AsInteger;
      Self.Controle      := dm.cdsBusca.FieldByName('CONTROLE').AsString;
      Self.DataMov       := dm.cdsBusca.FieldByName('DATAMOVIMENTO').AsDateTime;
      Result := Self.CodMov;
    end
    else
      //ShowMessage('Registro não encontrado');
      Result := 0;
  Except
    on E : Exception do
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
  end;
end;

end.
