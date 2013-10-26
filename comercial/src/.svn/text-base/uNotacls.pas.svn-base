unit uNotacls;

interface

uses SysUtils, Dialogs, dbXpress, uMovimento, uVendaCls;

type
  TNotaFiscal = class(TObject)
  private
    movimento : TMovimento;
    venda     : TVendaCls;
  protected
    //Atributos
    {_codMov          : Integer;
    _codVenda        : Integer;
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
    function executaSql(strSql: String): Boolean;}
  public
    {property CodMov      : Integer read getCodMov write setCodMov;
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
    property TipoPedido  : String  read getTipoPedido write setTipoPedido;}
    //Metodos
    function inserirMovimento(CodMovNF: Integer): Integer;
    function inserirVenda(CodMovNFv: Integer): Integer;
    function inserirNf(codMovNFnf: Integer): Boolean;
    function excluirNF(codNF: Integer): Boolean;
    function cancelarNF(codNF: Integer): Boolean;

    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'NOTAFISCAL';

implementation

{ TNotaFiscal }

function TNotaFiscal.cancelarNF(codNF: Integer): Boolean;
begin
  // Ao Cancelar a NF tbém cancelar o Movimento de Compra ou Venda;
end;

constructor TNotaFiscal.Create;
begin
  movimento := TMovimento.Create;
  venda     := TVendaCls.Create;
end;

destructor TNotaFiscal.Destroy;
begin
  venda.Destroy;
  movimento.Destroy;
  inherited;
end;

function TNotaFiscal.excluirNF(codNF: Integer): Boolean;
begin

end;

function TNotaFiscal.inserirMovimento(CodMovNF: Integer): Integer;
begin

end;

function TNotaFiscal.inserirNf(codMovNFnf: Integer): Boolean;
begin

end;

function TNotaFiscal.inserirVenda(CodMovNFv: Integer): Integer;
begin

end;

end.
