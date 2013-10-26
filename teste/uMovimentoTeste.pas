unit uMovimentoTeste;

interface
uses TestFramework, uMovimento;

type
  TMovimentoTeste = class(TTestCase)
  private
    codMovInserido: Integer;

    FMov: TMovimento;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestMovimentoInclusao;
    procedure TestMovimentoAlteracao;
    procedure TestMovimentoExclusao;
end;

  const
    CCodMov       = 950000;
    CCodProduto   = 50;
    CCentroCusto  =  0;
    CLote         = '0';
    CDataMov      = '01/08/2011';
    CCodCliente   = 1;
    CCodFornec    = 1;

implementation

uses SysUtils, UDm;


{ TMovimentoTeste }

procedure TMovimentoTeste.SetUp;
begin
  inherited;
  FMov := TMovimento.Create;
end;

procedure TMovimentoTeste.TearDown;
begin
  FMov.Destroy;
  inherited;
end;

procedure TMovimentoTeste.TestMovimentoAlteracao;
var dta1 , dta2 : TDateTime;
begin
  // Testa Alteracao da Data
  dta1         := StrToDate('08/10/2011');
  FMov.DataMov := dta1;
  FMov.alterarMovimento(CCodMov);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT DATAMOVIMENTO ' +
        ' FROM MOVIMENTO ' +
        'WHERE CODMOVIMENTO = ' + IntToStr(CCodMov));
  dm.sqlBusca.Open;
  dta2 := dm.sqlBusca.FieldByName('DATAMOVIMENTO').AsDateTime;
  check(dta1 = dta2, 'Movimento não alterado sucesso.');
end;

procedure TMovimentoTeste.TestMovimentoExclusao;
begin
  // Testa exclusão
  FMov.excluirMovimento(CCodMov);
  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO ' +
    ' FROM MOVIMENTO ' +
    'WHERE CODMOVIMENTO  = ' + IntToStr(CCodMov));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'Movimento Excluído.')
  else
    check(1 = 2 , 'Movimento não Excluído.')
end;

procedure TMovimentoTeste.TestMovimentoInclusao;
begin
  // Testa se esta incluindo
  FMov.CodCliente  := CCodCliente;
  FMov.DataMov     := StrToDate(CDataMov);
  FMov.CodNatureza := 3;  // Vemda
  FMov.CodUsuario  := 1;
  FMov.CodVendedor := 1;
  FMov.CodMov      := CCodMov;
  codMovInserido := FMov.inserirMovimento(0);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO ' +
        ' FROM MOVIMENTO ' +
        'WHERE CODMOVIMENTO = ' + IntToStr(codMovInserido));
  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 2 , 'Movimento não Inserido.')
  else
    check(1 = 1 , 'Movimento Inserido.')
end;

initialization
  RegisterTest('Movimento/Teste', TMovimentoTeste.Suite);

end.
