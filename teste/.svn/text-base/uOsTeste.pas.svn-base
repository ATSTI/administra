unit uOsTeste;

interface
uses TestFramework, uOsClasse, DBXpress, Dialogs;

type
  TOsTeste = class(TTestCase)
  private
    FOsCls: TOsClasse;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestOsInclusao;
    procedure TestOsAlteracao;
    procedure TestOsExclusao;
end;

  {const
    CCodCli       = 950000;
    CCodEndereco  = 950000;}

implementation

uses SysUtils, UDm, DateUtils;


{ TClienteTeste }

procedure TOsTeste.SetUp;
begin
  inherited;
  FOsCls := TOsClasse.Create;
end;

procedure TOsTeste.TearDown;
begin
  FOsCls.Destroy;
  inherited;
end;

procedure TOsTeste.TestOsAlteracao;
begin
  {FCompra.verCompra(IntToStr(CCodCli),'CODCompra', 'INTEGER');
  FCompra.NomeCompra := 'TESTE Compra 1 PONTO 2';
  FCompra.Status      := 1;
  FCompra.TipoFirma   := 0;
  FCompra.Cnpj        := '115.555.999-02';
  FCompra.InscEstadual:= '54.987.987-EP';
  FCompra.alterarCompra(CCodCli);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMECompra, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM CompraS C, ENDERECOCompra CE ' +
        'WHERE C.CODCompra = CE.CODCompra ' +
        '  AND C.CODCompra = ' + IntToStr(FCompra.CodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('NOMECompra').AsString = FCompra.NomeCompra , 'Nome Compra Errado.');
  check(dm.sqlBusca.FieldByName('CNPJ').AsString        = FCompra.Cnpj , 'CNPJ/CPF Errado.');
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FCompra.InscEstadual , 'Insc. Estadual Errado.');
   }
end;

procedure TOsTeste.TestOsExclusao;
begin
  // Testa exclusão
  FOsCls.excluirOs(50);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO ' +
    ' FROM OS ' +
    'WHERE CODMOVIMENTO  = ' + IntToStr(50));;

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'TITULO Excluído.')
  else
    check(1 = 2 , 'Titulo não Excluído.')
end;

procedure TOsTeste.TestOsInclusao;
var codigoOs, codOsServ: Integer;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    FOsCls.codCliente := 98;
    FOsCls.codOs      := 0;
    FOsCls.codVeiculo := 'EEE-0000';
    FOsCls.codUsuario := 1;
    FOsCls.dataOs     := StrToDate('08/09/2011');
    FOsCls.dataInicio := StrToDate('08/09/2011');
    FOsCls.dataFim    := StrToDate('08/09/2011');
    FOsCls.status := 'P';
    FOsCls.km         := 45001;

    CodigoOs := FOsCls.IncluirOs(0);

    FOsCls.osDet.CodOsP   := CodigoOs;
    FOsCls.osDet.CodDet   := 0;
    FOsCls.osDet.Status   := 'O';
    FOsCls.osDet.Tipo     := 'S';
    FOsCls.osDet.Descricao:= 'TESTE DE SERVICO DESCRITO';
    FOsCls.osDet.Qtde     := 1;
    FOsCls.osDet.Preco    := 20;
    FOsCls.osDet.Desconto := 0;
    FOSCls.osDet.CodOsServ := 0;
    codOsServ              := FOsCls.osDet.IncluirOsDet(0);
    if (codOsServ = 0) then
      ShowMessage('Erro na Inclusao  Os Detalhe.');

    FOsCls.osDet.CodOsP   := CodigoOs;
    FOsCls.osDet.CodDet   := 0;
    FOsCls.osDet.Status   := 'O';
    FOsCls.osDet.Tipo     := 'P';
    FOsCls.osDet.Descricao:= 'NOME DA PECA   DIFITADA';
    FOsCls.osDet.Qtde     := 1;
    FOsCls.osDet.Preco    := 10;
    FOsCls.osDet.Desconto := 0;
    FOSCls.osDet.CodOsServ := codOsServ;
    if (FOsCls.osDet.IncluirOsDet(0) = 0) then
      ShowMessage('Erro na Inclusao Os Detalhe');

    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODOS' +
        '  FROM OS ' +
        ' WHERE CODOS = ' + IntToStr(codigoOs));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CODOS').AsInteger = codigoOs , 'OS Não Gravada.');
end;


initialization
  RegisterTest('Os/Teste', TOsTeste.Suite);

end.
