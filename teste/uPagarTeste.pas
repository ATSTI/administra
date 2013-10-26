unit uPagarTeste;

interface
uses TestFramework, uPagarCls;

type
  TPagTeste = class(TTestCase)
  private
    FPag: TPagarCls;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestPagInclusao;
    procedure TestPagBaixarTitulo;
    procedure TestPagExclusao;
end;

implementation

uses SysUtils, UDm, DateUtils;

{ TPagTeste }

procedure TPagTeste.SetUp;
begin
  inherited;
  FPag := TPagarCls.Create;
end;

procedure TPagTeste.TearDown;
begin
  FPag.Destroy;
  inherited;

end;

procedure TPagTeste.TestPagBaixarTitulo;
begin

end;

procedure TPagTeste.TestPagExclusao;
begin
 // Testa exclus�o
  FPag.excluiTitulo(68);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODPAGAMENTO ' +
    ' FROM PAGAMENTO ' +
    'WHERE CODPAGAMENTO  = ' + IntToStr(68));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'TITULO Exclu�do.')
  else
    check(1 = 2 , 'Titulo n�o Exclu�do.')
end;

procedure TPagTeste.TestPagInclusao;
var codPag, codCompra: Integer;
begin
 CodCompra       := 68;  // ESTE C�dito � necess�rio para Gerar um t�tulo para a Compra

 codPag := FPag.geraTitulo(0, codCompra);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODCompra' +
        '  FROM PAGAMENTO R ' +
        ' WHERE R.CODPAGAMENTO = ' + IntToStr(codPag));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CodCompra').AsInteger = codCompra , 'T�tulo N�o Gravado.');

end;

initialization
  RegisterTest('Pagarr/Teste', TPagTeste.Suite);


end.
