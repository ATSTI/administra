unit uReceberTeste;

interface
uses TestFramework, uReceberCls;

type
  TRecTeste = class(TTestCase)
  private
    FRec: TReceberCls;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestRecInclusao;
    procedure TestRecAlteracao;
    procedure TestRecExclusao;
    procedure TestRecBaixaTitulo;
end;

  {const
    CCodCli       = 950000;}


implementation

uses SysUtils, UDm, DateUtils;


{ TClienteTeste }

procedure TRecTeste.SetUp;
begin
  inherited;
  FRec := TReceberCls.Create;
end;

procedure TRecTeste.TearDown;
begin
  FRec.Destroy;
  inherited;
end;

procedure TRecTeste.TestRecAlteracao;
begin
 { FRec.verRec(IntToStr(CCodCli),'CODVenda', 'INTEGER');
  FVenda.NomeVenda := 'TESTE Venda 1 PONTO 2';
  FVenda.Status      := 1;
  FVenda.TipoFirma   := 0;
  FVenda.Cnpj        := '115.555.999-02';
  FVenda.InscEstadual:= '54.987.987-EP';
  FVenda.alterarVenda(CCodCli);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT NOMEVenda, RAZAOSOCIAL, CNPJ, INSCESTADUAL,' +
        'LOGRADOURO, BAIRRO, CIDADE, CD_IBGE, CEP, E_MAIL ' +
        ' FROM VendaS C, ENDERECOVenda CE ' +
        'WHERE C.CODVenda = CE.CODVenda ' +
        '  AND C.CODVenda = ' + IntToStr(FVenda.CodCli));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('NOMEVenda').AsString = FVenda.NomeVenda , 'Nome Venda Errado.');
  check(dm.sqlBusca.FieldByName('CNPJ').AsString        = FVenda.Cnpj , 'CNPJ/CPF Errado.');
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FVenda.InscEstadual , 'Insc. Estadual Errado.');}

end;

procedure TRecTeste.TestRecBaixaTitulo;

begin


 FRec.baixaTitulo (0,0,0,0,0, StrToDate('12/05/11'),StrToDate('12/05/11'),StrToDate('12/05/11') ,'1','0',0,1000025, '5-',0);

 dm.sqlBusca.Close;
 dm.sqlBusca.SQL.Clear;
 dm.sqlBusca.SQL.Add(' SELECT TITULO ' +
    ' FROM RECEBIMENTO ' +
    ' WHERE STATUS =  ' + QuotedStr('5-'));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
     check(1 = 1 , 'TITULO Baixado.')
  else
     check(1 = 2 , 'TITULO não Baixado.')


end;

procedure TRecTeste.TestRecExclusao;
begin
  // Testa exclusão
  FRec.excluiTitulo(2940);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda ' +
    ' FROM RECEBIMENTO ' +
    'WHERE CODVENDA  = ' + IntToStr(2940));

  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
    check(1 = 1 , 'TITULO Excluído.')
  else
    check(1 = 2 , 'Titulo não Excluído.')

end;

procedure TRecTeste.TestRecInclusao;
var codRec, codVenda: Integer;
begin
  CodVenda       := 2940;  // ESTE Códito é necessário para Gerar um título para a Venda

  codRec := FRec.geraTitulo(0, codVenda);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda' +
        '  FROM RECEBIMENTO R ' +
        ' WHERE R.CODRECEBIMENTO = ' + IntToStr(codRec));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CodVenda').AsInteger = codVenda , 'Título Não Gravado.');
end;


initialization
  RegisterTest('Receber/Teste', TRecTeste.Suite);

end.
