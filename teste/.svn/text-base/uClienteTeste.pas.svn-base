unit uClienteTeste;

interface
uses TestFramework, uCliente;

type
  TClienteTeste = class(TTestCase)
  private
    FCliente: TCliente;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestClienteInclusao;
    procedure TestClienteAlteracao;
    procedure TestEnderecoAlteracao;
    procedure TestClienteExclusao;
end;

  const
    CCodCli       = 950000;
    CCodEndereco  = 950000;

implementation

uses SysUtils, UDm, DateUtils;


{ TClienteTeste }

procedure TClienteTeste.SetUp;
begin
  inherited;
  FCliente := TCliente.Create;
end;

procedure TClienteTeste.TearDown;
begin
  FCliente.Destroy;
  inherited;
end;

procedure TClienteTeste.TestClienteAlteracao;
begin
  FCliente.verCliente(IntToStr(CCodCli),'CODCLIENTE', 'INTEGER');
  FCliente.NomeCliente := 'TESTE CLIENTE 1 PONTO 2';
  FCliente.Status      := 1;
  FCliente.TipoFirma   := 0;
  FCliente.Cnpj        := '115.555.999-02';
  FCliente.InscEstadual:= '54.987.987-EP';
  FCliente.alterarCliente(CCodCli);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMECLIENTE, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM CLIENTES C, ENDERECOCLIENTE CE ' +
        'WHERE C.CODCLIENTE = CE.CODCLIENTE ' +
        '  AND C.CODCLIENTE = ' + IntToStr(FCliente.CodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('NOMECLIENTE').AsString = FCliente.NomeCliente , 'Nome Cliente Errado.');
  check(dm.sqlBusca.FieldByName('CNPJ').AsString        = FCliente.Cnpj , 'CNPJ/CPF Errado.');
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FCliente.InscEstadual , 'Insc. Estadual Errado.');

end;

procedure TClienteTeste.TestClienteExclusao;
begin
  // Testa exclusão
  FCliente.excluirCliente(CCodCli);
  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODCLIENTE ' +
    ' FROM CLIENTES ' +
    'WHERE CODCLIENTE  = ' + IntToStr(CCodCli));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'Cliente Excluído.')
  else
    check(1 = 2 , 'Cliente não Excluído.')

end;

procedure TClienteTeste.TestClienteInclusao;
begin
  FCliente.CodCli      := CCodCli;
  FCliente.NomeCliente := 'TESTE CLIENTE 1';
  FCliente.Status      := 1;
  FCliente.TipoFirma   := 0;
  FCliente.Cnpj        := '115.555.999-01';
  FCliente.InscEstadual:= '54.987.987-SP';
  FCliente.DataCadastro:= Today;
  FCliente.CodUsuario  := 1;

  // Endereco Principal
  FCliente.Endereco.CodCli      := CCodCli;
  FCliente.Endereco.CodEndereco := CCodEndereco;
  FCliente.Endereco.TipoEndereco:= 0;
  FCliente.Endereco.Logradouro  := 'RUA SAO JOSE DO PASSA QUATRO';
  FCliente.Endereco.Numero      := '345';
  FCliente.Endereco.Bairro      := 'BAIRRO DO PICARAI';
  FCliente.Endereco.Cidade      := 'SANTO ANTONIO DA PIMENTA';
  FCliente.Endereco.Uf          := 'SP';
  FCliente.Endereco.Cep         := '34567-321';
  FCliente.Endereco.DDD1        := '19';
  FCliente.Endereco.Fone1       := '6589-9871';
  FCliente.Endereco.Email       := 'testecliente@clienteteste.com.br';
  FCliente.Endereco.CodIbge     := '889789870';
  FCliente.inserirCliente;
  FCliente.Endereco.inserirEndereco;

  // Endereco Cobranca
  FCliente.Endereco.CodCli      := CCodCli;
  FCliente.Endereco.CodEndereco := CCodEndereco+1;
  FCliente.Endereco.TipoEndereco:= 1;
  FCliente.Endereco.Logradouro  := 'RUA XV DE NOVEMBRO';
  FCliente.Endereco.Numero      := '1345';
  FCliente.Endereco.Bairro      := 'CENTRO';
  FCliente.Endereco.Cidade      := 'SÃO PAULO';
  FCliente.Endereco.Uf          := 'SP';
  FCliente.Endereco.Cep         := '34567-321';
  FCliente.Endereco.DDD1        := '19';
  FCliente.Endereco.Fone1       := '6589-9871';
  FCliente.Endereco.Email       := 'financeiro@clienteteste.com.br';
  FCliente.Endereco.CodIbge     := '889789870';
  FCliente.Endereco.inserirEndereco;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMECLIENTE, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM CLIENTES C, ENDERECOCLIENTE CE ' +
        'WHERE C.CODCLIENTE = CE.CODCLIENTE ' +
        '  AND C.CODCLIENTE = ' + IntToStr(FCliente.CodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('NOMECLIENTE').AsString = FCliente.NomeCliente , 'Nome Cliente Errado.');
  check(dm.sqlBusca.FieldByName('RAZAOSOCIAL').AsString = FCliente.NomeCliente , 'Razao Social Errado.');
  check(dm.sqlBusca.FieldByName('CNPJ').AsString        = FCliente.Cnpj , 'CNPJ/CPF Errado.');
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FCliente.InscEstadual , 'Insc. Estadual Errado.');
  check(dm.sqlBusca.FieldByName('CIDADE').AsString      = 'SANTO ANTONIO DA PIMENTA' , 'Cidade Errado.');
  check(dm.sqlBusca.FieldByName('CD_IBGE').AsString     = FCliente.Endereco.CodIbge , 'Codigo IBGE Errado.');
  check(dm.sqlBusca.FieldByName('E_MAIL').AsString      = 'testecliente@clienteteste.com.br' , 'Email Endereco Cobrança Errado.');

  dm.sqlBusca.Next;
  check(dm.sqlBusca.FieldByName('CIDADE').AsString      = 'SÃO PAULO' , 'Cidade Endereco Cobrança Errado.');
  check(dm.sqlBusca.FieldByName('E_MAIL').AsString      = 'financeiro@clienteteste.com.br' , 'Email Endereco Cobrança Errado.');

end;


procedure TClienteTeste.TestEnderecoAlteracao;
begin
  FCliente.Endereco.verEndereco(IntToStr(CCodEndereco),'CODENDERECO', 'INTEGER');
  FCliente.Endereco.Logradouro  := 'RUA SAO JOSE DO PASSA QUATRO 2';
  FCliente.Endereco.Numero      := '3450';
  FCliente.Endereco.Bairro      := 'BAIRRO DO PICARAI II';
  FCliente.Endereco.Cidade      := 'SANTO ANTONIO DA PIMENTA 2';
  FCliente.Endereco.Uf          := 'MG';
  FCliente.Endereco.Fone1       := '6000-1234';
  FCliente.Endereco.Email       := 'testecliente@c.com.br';
  FCliente.Endereco.alterarEndereco(CCodEndereco);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMECLIENTE, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM CLIENTES C, ENDERECOCLIENTE CE ' +
        'WHERE C.CODCLIENTE = CE.CODCLIENTE ' +
        '  AND C.CODCLIENTE = ' + IntToStr(CCodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CIDADE').AsString      = 'SANTO ANTONIO DA PIMENTA 2' , 'Cidade Errado.');
  check(dm.sqlBusca.FieldByName('CD_IBGE').AsString     = FCliente.Endereco.CodIbge , 'Codigo IBGE Errado.');
  check(dm.sqlBusca.FieldByName('E_MAIL').AsString      = 'testecliente@c.com.br' , 'Email Endereco Cobrança Errado.');
end;

initialization
  RegisterTest('Cliente-Endereco/Teste', TClienteTeste.Suite);

end.
