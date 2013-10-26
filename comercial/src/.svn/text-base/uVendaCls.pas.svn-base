unit uVendaCls;

interface

uses SysUtils, Dialogs, dbXpress, dateUtils;

type

  TVendaCls = class(TObject)
  private
    function getApagar: Double;
    function getCaixa: Integer;
    function getCodCCusto: Integer;
    function getCodCliente: Integer;
    function getCodMov: Integer;
    function getCodUsuario: Integer;
    function getCodVenda: Integer;
    function getCodVendedor: Integer;
    function getDataVcto: TDateTime;
    function getDataVenda: TDateTime;
    function getDesconto: Double;
    function getEntrada: Double;
    function getFormaRec: String;
    function getFrete: Double;
    function getIcms: Double;
    function getIpi: Double;
    function getMultaJuros: Double;
    function getNDoc: String;
    function getNotaFiscal: Integer;
    function getNParcela: Integer;
    function getObs: String;
    function getOutrosVlr: Double;
    function getPercentDesc: Double;
    function getSeguro: Double;
    function getSerie: String;
    function getStatus: Integer;
    function getValor: Double;
    function getValorPagar: Double;
    procedure setApagar(const Value: Double);
    procedure setCaixa(const Value: Integer);
    procedure setCodCCusto(const Value: Integer);
    procedure setCodCliente(const Value: Integer);
    procedure setCodMov(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setCodVenda(const Value: Integer);
    procedure setCodVendedor(const Value: Integer);
    procedure setDataVcto(const Value: TDateTime);
    procedure setDataVenda(const Value: TDateTime);
    procedure setDesconto(const Value: Double);
    procedure setEntrada(const Value: Double);
    procedure setFormaRec(const Value: String);
    procedure setFrete(const Value: Double);
    procedure setIcms(const Value: Double);
    procedure setIpi(const Value: Double);
    procedure setMultaJuros(const Value: Double);
    procedure setNDoc(const Value: String);
    procedure setNotaFiscal(const Value: Integer);
    procedure setNParcela(const Value: Integer);
    procedure setObs(const Value: String);
    procedure setOutrosVlr(const Value: Double);
    procedure setPercentDesc(const Value: Double);
    procedure setSeguro(const Value: Double);
    procedure setSerie(const Value: String);
    procedure setStatus(const Value: Integer);
    procedure setValor(const Value: Double);
    procedure setValorPagar(const Value: Double);
    function getPrazo: String;
    procedure setPrazo(const Value: String);
    function getValorCaixinha: Double;
    function getValorRateio: Double;
    procedure setValorCaixinha(const Value: Double);
    procedure setValorRateio(const Value: Double);
    function getValorComissao: Double;
    procedure setValorComissao(const Value: Double);
  protected
    //Atributos
    _codVenda     : Integer;
    _codMov       : Integer;
    _codCliente   : Integer;
    _codUsuario   : Integer;
    _codVendedor  : Integer;
    _codCCusto    : Integer;
    _notaFiscal   : Integer;
    _status       : Integer;
    _caixa        : Integer;
    _nParcela     : Integer;
    _dataVenda    : TDateTime;
    _dataVcto     : TDateTime;
    _valor        : Double;
    _desconto     : Double;
    _multaJuros   : Double;
    _aPagar       : Double;
    _valorPagar   : Double;
    _entrada      : Double;
    _icms         : Double;
    _frete        : Double;
    _seguro       : Double;
    _outrosVlr    : Double;
    _ipi          : Double;
    _percentDesc  : Double;
    _serie        : String;
    _prazo        : String;
    _formaRec     : String;
    _nDoc         : String;
    _obs          : String;
    _ValorCaixinha  : Double;
    _ValorRateio  : Double;
    _ValorComissao : Double;

    function executaSql(strSql: String): Boolean;
  public
    property CodVenda    : Integer read getCodVenda write setCodVenda;
    property CodMov      : Integer read getCodMov write setCodMov;
    property CodCliente  : Integer read getCodCliente write setCodCliente;
    property CodUsuario  : Integer read getCodUsuario write setCodUsuario;
    property CodVendedor : Integer read getCodVendedor write setCodVendedor;
    property CodCCusto   : Integer read getCodCCusto write setCodCCusto;
    property NotaFiscal  : Integer read getNotaFiscal write setNotaFiscal;
    property Status      : Integer read getStatus write setStatus;
    property Caixa       : Integer read getCaixa write setCaixa;
    property NParcela    : Integer read getNParcela write setNParcela;

    property DataVenda   : TDateTime read getDataVenda write setDataVenda;
    property DataVcto    : TDateTime read getDataVcto write setDataVcto;

    property Valor       : Double read getValor write setValor;
    property Desconto    : Double read getDesconto write setDesconto;
    property MultaJuros  : Double read getMultaJuros write setMultaJuros;
    property Apagar      : Double read getApagar write setApagar;
    property ValorPagar  : Double read getValorPagar write setValorPagar;
    property Entrada     : Double read getEntrada write setEntrada;
    property Icms        : Double read getIcms write setIcms;
    property Frete       : Double read getFrete write setFrete;
    property Seguro      : Double read getSeguro write setSeguro;
    property OutrosVlr   : Double read getOutrosVlr write setOutrosVlr;
    property Ipi         : Double read getIpi write setIpi;
    property PercentDesc : Double read getPercentDesc write setPercentDesc;

    property Serie       : String read getSerie  write setSerie;
    property Prazo       : String read getPrazo  write setPrazo;
    property FormaRec    : String read getFormaRec  write setFormaRec;
    property NDoc        : String read getNDoc  write setNDoc;
    property Obs         : String read getObs  write setObs;
    property ValorCaixinha  : Double read getValorCaixinha write setValorCaixinha;
    property ValorRateio    : Double read getValorRateio write setValorRateio;
    property ValorComissao  : Double read getValorComissao write setValorComissao;


    //Metodos
    function inserirVenda(CodVendaI: Integer): Integer;
    function verVenda(Controle: String; Campo: String; Tipo: String; codNat: Integer): Integer;
    function excluirVenda(codVendaE: Integer): Boolean;
    function cancelarVenda(codVendaC: Integer; codMovC: Integer; dataV: TDateTime): Boolean;
    function alterarVenda(codVendaA: Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'VENDA';

implementation

uses SqlExpr, DB, UDm, DBClient, uEstoque;

{ TVendaCls }

function TVendaCls.alterarVenda(codVendaA: Integer): Boolean;
begin
  // Alterar Venda
  Result := False;
end;

function TVendaCls.cancelarVenda(codVendaC: Integer; codMovC: Integer; dataV: TDateTime): Boolean;
Var fEst: TEstoque;
begin
  Try
    fEst := TEstoque.Create;
  // COLOCAR AQUI ROTINA PRA VER SE O TITULO PODE SE CANCELADO

  // Cancelar Venda
  if (executaSql('UPDATE MOVIMENTO SET CODNATUREZA = 14, STATUS = 2 ' +
    'WHERE CODMOVIMENTO = ' + IntToStr(codMovC))) then
  begin
    Try
      executaSql('UPDATE RECEBIMENTO SET STATUS = ' + QuotedStr('14') +
        ' WHERE CODVENDA = ' + IntToStr(codVendaC));
      //dmnf.cancelaEstoque(codMovC, dataV, 'VENDA');

      //FEst.EstornaEstoque('VENDA', codMovC, dataV);
      Result := True
    Except
      Result := False;
    end;
  end
  else
    Result := False;

  Finally
    FEst.Free;
  end;
end;

constructor TVendaCls.Create;
begin

end;

destructor TVendaCls.Destroy;
begin

  inherited;
end;

function TVendaCls.excluirVenda(codVendaE: Integer): Boolean;
begin
  // Excluir Venda
  if (executaSql('DELETE FROM VENDA WHERE CODVENDA = ' + IntToStr(codVendaE))) then
    Result := True
  else
    Result := False;
end;

function TVendaCls.executaSql(strSql: String): Boolean;
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

function TVendaCls.getApagar: Double;
begin
  Result := _aPagar;
end;

function TVendaCls.getCaixa: Integer;
begin
  Result := _caixa;
end;

function TVendaCls.getCodCCusto: Integer;
begin
  if (dm.usaCentroCusto = 'S') then
    Result := _codCCusto
  else
    Result := dm.CCustoPadrao;
end;

function TVendaCls.getCodCliente: Integer;
begin
  Result := _codCliente;
end;

function TVendaCls.getCodMov: Integer;
begin
  Result := _codMov;
end;

function TVendaCls.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TVendaCls.getCodVenda: Integer;
begin
  Result := _codVenda;
end;

function TVendaCls.getCodVendedor: Integer;
begin
  Result := _codVendedor;
end;

function TVendaCls.getDataVcto: TDateTime;
begin
  Result := _dataVcto;
end;

function TVendaCls.getDataVenda: TDateTime;
begin
  Result := _dataVenda;
end;

function TVendaCls.getDesconto: Double;
begin
  Result := _desconto;
end;

function TVendaCls.getEntrada: Double;
begin
  Result := _entrada;
end;

function TVendaCls.getFormaRec: String;
begin
  Result := Trim(_formaRec);
end;

function TVendaCls.getFrete: Double;
begin
  Result := _frete;
end;

function TVendaCls.getIcms: Double;
begin
  Result := _icms;
end;

function TVendaCls.getIpi: Double;
begin
  Result := _ipi;
end;

function TVendaCls.getMultaJuros: Double;
begin
  Result := _multaJuros;
end;

function TVendaCls.getNDoc: String;
begin
  Result := Trim(_nDoc);
end;

function TVendaCls.getNotaFiscal: Integer;
begin
  Result := _NotaFiscal;
end;

function TVendaCls.getNParcela: Integer;
begin
  Result := _nParcela;
end;

function TVendaCls.getObs: String;
begin
  Result := Trim(_obs);
end;

function TVendaCls.getOutrosVlr: Double;
begin
  Result := _outrosVlr;
end;

function TVendaCls.getPercentDesc: Double;
begin
  Result := _percentDesc;
end;

function TVendaCls.getPrazo: String;
begin
  Result := Trim(_prazo);
end;

function TVendaCls.getSeguro: Double;
begin
  Result := _seguro;
end;

function TVendaCls.getSerie: String;
begin
  Result := Trim(_serie);
end;

function TVendaCls.getStatus: Integer;
begin
  Result := _status;
end;

function TVendaCls.getValor: Double;
begin
  Result := _valor;
end;

function TVendaCls.getValorCaixinha: Double;
begin
  Result := _ValorCaixinha;
end;

function TVendaCls.getValorComissao: Double;
begin
  Result := _ValorComissao;
end;

function TVendaCls.getValorPagar: Double;
begin
  Result := _valorPagar;
end;

function TVendaCls.getValorRateio: Double;
begin
  Result := _ValorRateio;
end;

function TVendaCls.inserirVenda(CodVendaI: Integer): Integer;
var str: String;
    sqlBuscaV : TSqlQuery;
begin
  // Verifica se ja existe venda, se sim, pega o codigo da venda e sai fora
  if (CodVendaI = 0) then
  begin
    Try
      sqlBuscaV :=  TSqlQuery.Create(nil);
      sqlBuscaV.SQLConnection := dm.sqlsisAdimin;
      str := 'SELECT CODVENDA ' +
        '       FROM VENDA ' +
        '      WHERE CODMOVIMENTO = ' + InttoStr(Self.CodMov);
      sqlBuscaV.SQL.Add(str);
      sqlBuscaV.Open;
      if (not sqlBuscaV.isEmpty) then
      begin
        result := sqlBuscaV.Fields[0].AsInteger;
        exit;
      end;
    finally
      sqlBuscaV.Free;
    end;
  end;
  str := '';
  // Inserir Venda
  _codVenda := CodVendaI;
  if (Self.CodVenda = 0) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    _codVenda := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  DecimalSeparator := '.';
  str := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO, ';
  str := str + 'BANCO, CODVENDEDOR, STATUS, CODUSUARIO, DATASISTEMA, VALOR, ';
  str := str + 'NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, FORMARECEBIMENTO, ';
  str := str + 'N_DOCUMENTO, CAIXA, MULTA_JUROS, APAGAR, VALOR_PAGAR, ENTRADA, ';
  str := str + 'OBS, VALOR_ICMS, VALOR_FRETE, VALOR_SEGURO, OUTRAS_DESP, ';
  str := str + 'VALOR_IPI, PRAZO, PORCENTAGENDESC, CAIXINHA, RATEIO, COMISSAO) VALUES (';
  str := str + IntToStr(Self.CodVenda)    + ', ' + IntToStr(Self.CodMov)       + ', ';
  str := str + IntToStr(Self.CodCliente)  + ', ';
  str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataVenda))          + ', ';
  str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataVcto))           + ', ';
  str := str + '0, ';  // Banco
  str := str + IntToStr(Self.CodVendedor) + ' ,' + IntToStr(Self.Status)       + ', ';
  str := str + IntToStr(Self.CodUsuario)  + ' ,';
  str := str + QuotedStr(FormatDateTime('mm/dd/yyyy', Today))                  + ', ';
  str := str + FloatToStr(Self.Valor)     + ', ';
  str := str + IntToStr(Self.NotaFiscal)  + ', ' + QuotedStr(Self.Serie)       + ', ';
  str := str + FloatToStr(Self.Desconto)  + ', ';
  str := str + IntToStr(Self.CodCCusto)   + ', ' + IntToStr(Self.NParcela)     + ', ';
  str := str + QuotedStr(Self.FormaRec)   + ', ' + QuotedStr(Self.NDoc)        + ', ';
  str := str + IntToStr(Self.Caixa)       + ', ' + FloatToStr(Self.MultaJuros) + ', ';
  str := str + FloatToStr(Self.Apagar)    + ', ' + FloatToStr(Self.ValorPagar) + ', ';
  str := str + FloatToStr(Self.Entrada)   + ', ';
  str := str + QuotedStr(Self.Obs)        + ', ' + FloatToStr(Self.Icms)       + ', ';
  str := str + FloatToStr(Self.Frete)     + ', ' + FloatToStr(Self.Seguro)     + ', ';
  str := str + FloatToStr(Self.OutrosVlr) + ', ' + FloatToStr(Self.Ipi)        + ', ';
  str := str + QuotedStr(Self.Prazo)      + ', ' + FloatToStr(Self.PercentDesc)+ ',';
  str := str + FloatToStr(Self.ValorCaixinha)     + ', ';
  str := str + FloatToStr(Self.ValorRateio)     + ',';
  str := str + FloatToStr(Self.ValorComissao)     + ')';

  DecimalSeparator := '.';

  if (executaSql(str)) then
    Result := Self.CodVenda
  else
    Result := 0;
end;

procedure TVendaCls.setApagar(const Value: Double);
begin
  _aPagar := Value;
end;

procedure TVendaCls.setCaixa(const Value: Integer);
begin
  _caixa := Value;
end;

procedure TVendaCls.setCodCCusto(const Value: Integer);
begin
  _codCCusto := Value;
end;

procedure TVendaCls.setCodCliente(const Value: Integer);
begin
  _codCliente := Value;
end;

procedure TVendaCls.setCodMov(const Value: Integer);
begin
  _codMov := Value;
end;

procedure TVendaCls.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TVendaCls.setCodVenda(const Value: Integer);
begin
  _codVenda := Value;
end;

procedure TVendaCls.setCodVendedor(const Value: Integer);
begin
  _codVendedor := Value;
end;

procedure TVendaCls.setDataVcto(const Value: TDateTime);
begin
  _dataVcto := Value;
end;

procedure TVendaCls.setDataVenda(const Value: TDateTime);
begin
  _dataVenda := Value;
end;

procedure TVendaCls.setDesconto(const Value: Double);
begin
  _desconto := Value;
end;

procedure TVendaCls.setEntrada(const Value: Double);
begin
  _entrada := Value;
end;

procedure TVendaCls.setFormaRec(const Value: String);
begin
  _formaRec := Value;
end;

procedure TVendaCls.setFrete(const Value: Double);
begin
  _frete := Value;
end;

procedure TVendaCls.setIcms(const Value: Double);
begin
  _icms := Value;
end;

procedure TVendaCls.setIpi(const Value: Double);
begin
  _ipi := Value;
end;

procedure TVendaCls.setMultaJuros(const Value: Double);
begin
  _multaJuros := Value;
end;

procedure TVendaCls.setNDoc(const Value: String);
begin
  _nDoc := Value;
end;

procedure TVendaCls.setNotaFiscal(const Value: Integer);
begin
  _notaFiscal := Value;
end;

procedure TVendaCls.setNParcela(const Value: Integer);
begin
  _nParcela := Value;
end;

procedure TVendaCls.setObs(const Value: String);
begin
  _obs := Value;
end;

procedure TVendaCls.setOutrosVlr(const Value: Double);
begin
  _outrosVlr := Value;
end;

procedure TVendaCls.setPercentDesc(const Value: Double);
begin
  _percentDesc := Value;
end;

procedure TVendaCls.setPrazo(const Value: String);
begin
  _prazo := Value;
end;

procedure TVendaCls.setSeguro(const Value: Double);
begin
  _seguro := Value;
end;

procedure TVendaCls.setSerie(const Value: String);
begin
  _serie := Value;
end;

procedure TVendaCls.setStatus(const Value: Integer);
begin
  _status := Value;
end;

procedure TVendaCls.setValor(const Value: Double);
begin
  _valor := Value;
end;

procedure TVendaCls.setValorCaixinha(const Value: Double);
begin
  _ValorCaixinha := Value;
end;

procedure TVendaCls.setValorComissao(const Value: Double);
begin
 _ValorComissao := Value;
end;

procedure TVendaCls.setValorPagar(const Value: Double);
begin
  _valorPagar := Value;
end;

procedure TVendaCls.setValorRateio(const Value: Double);
begin
  _ValorRateio := Value;
end;

function TVendaCls.verVenda(Controle, Campo, Tipo: String;
  codNat: Integer): Integer;
begin
  // Ver Venda
  Result := 0;
end;

end.
