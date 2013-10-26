unit uEstoqueTeste;

interface
uses TestFramework, uEstoque, Math;

type
  TEstoqueTeste = class(TTestCase)
  private
    FEstoque: TEstoque;
    pcusto, pTeste : Double;
    procedure TestSaidaVenda;
    procedure TestSaidaVendaMais;

  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestInserirPrimeiraEntradaSistema;
    procedure TestNovaEntradaNoMes;   // Segunda entrada no mesmo mes
    procedure TestNovaEntradaNoMes2;  // Terceira entrada no mesmo mes

    procedure TestInserirPrimeiraEntradaNovoMes; // Entrada em um novo mes, com estoque no mes anterior
    procedure TestInserirEntradaNoMesAnteriorNaoFechado; // Entrada no mes Anterior Nao Fechado, e que ja houve Movimento mes Posterior
    procedure TestInserirEntradaNoMesAnteriorFechado; // Entrada no mes Anterior que ja foi fechado
    procedure TestSaidaComSaldoNoMes;
    procedure TestSaidaComSaldoNoMes2;
    procedure TestNovaEntradaDepoisSaida;

    procedure TesteInsereSaida5Itens;
    
    procedure TestaCancelamentoEntrada;
    procedure TestaCancelamentoSaida;

    procedure TestSaidaSemTerSaldo;
    procedure TestSaidaSemSaldoNoMes;

end;

  const
    CCodProduto  = 2;
    CCentroCusto =  51;
    CLote        = '0';
    CMesAno      = '03/03/2012';
    CMesAnoAnterior = '01/02/2012';
    CMesAnoPosterior = '01/04/2012';
implementation

uses SysUtils, UDm;

{ TEstoqueTeste }

{ Testes
  Teste  Data      Mov.     Qtde(un)    Valor (R$)
     01  06/2011   Compra         20      R$  2,50
     02  06/2011   Compra         10      R$  4,00
     03  07/2011   Compra         40      R$  4,00
     04  05/2011   Compra         30      R$  9,00
     05  06/2011   Venda          20      R$  3,90
     06  06/2011   Venda          20      R$  2,40
 }

procedure TEstoqueTeste.SetUp;
begin
  inherited;
  FEstoque := TEstoque.Create;
end;

procedure TEstoqueTeste.TearDown;
begin
  FEstoque.Destroy;
  inherited;
end;

procedure TEstoqueTeste.TestInserirPrimeiraEntradaSistema;
begin
  FEstoque.QtdeCompra := 20;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoCompra  := 2.5;

  // Se ja houver este lançamneto Limpo a tabela
  dm.sqlsisAdimin.ExecuteDirect('DELETE FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
        //'  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +

  // Testa se esta Inserindo novo valor

  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat = 2.5 , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 20 , 'Quantidade Compra Errado.');
  check(dm.sqlBusca.FieldByName('PRECOCOMPRA').AsFloat = 2.5 , 'Preco de Compra Errado.');
end;



procedure TEstoqueTeste.TestNovaEntradaNoMes;
begin
  // Teste se esta Somando esta nova inclusão no item q ja existe
  FEstoque.QtdeCompra := 10;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoCompra := 4;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA , PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat = 3 , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 30 , 'Quantidade Compra Errado.');
  check(dm.sqlBusca.FieldByName('PRECOCOMPRA').AsFloat = 3 , 'Preco de Compra Errado.');
end;

procedure TEstoqueTeste.TestNovaEntradaNoMes2;
begin
  // Teste se esta Somando esta nova inclusão no item q ja existe
  FEstoque.QtdeCompra := 90;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoCompra := 5;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat = 4.5 , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 120 , 'Quantidade Compra Errado.');
  check(dm.sqlBusca.FieldByName('PRECOCOMPRA').AsFloat = 4.5 , 'Preco de Compra Errado.');
end;

procedure TEstoqueTeste.TestInserirPrimeiraEntradaNovoMes;
begin
  // Teste se esta Somando esta nova inclusão no item q ja existe
  FEstoque.QtdeCompra := 40;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAnoPosterior);
  FEstoque.PrecoCompra := 4;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  //DecimalSeparator := '.';
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 10000) / 10000;  // 4 Casas Decimais
  pTeste := StrToFloat('4,375');
  //DecimalSeparator := ',';
  check(pCusto = pTeste , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 40 , 'Quantidade Compra Errado.');
  check(dm.sqlBusca.FieldByName('PRECOCOMPRA').AsFloat = 4 , 'Preco de Compra Errado.');
end;

procedure TEstoqueTeste.TestInserirEntradaNoMesAnteriorNaoFechado;
begin
  // Testa uma Entrada no Mes Anterior onde existe lançamento em mes posterior
  FEstoque.QtdeCompra := 30;
  FEstoque.CodProduto := 50;
  FEstoque.Lote       := '0';
  FEstoque.CentroCusto := 0;
  FEstoque.MesAno      := StrToDate(CMesAnoAnterior);
  FEstoque.PrecoCompra := 9;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAnoPost)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 1000000) / 1000000;  // 4 Casas Decimais
  pTeste := StrToFloat('5,105263');

  check(pCusto = pTeste , 'Preco Custo Errado.');   // Preco de Custo do Ultimo Mes
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 40 , 'Quantidade Compra Errado.');  // Preco de Compra do Ultimo Mes que existe no sistema.

end;


procedure TEstoqueTeste.TestSaidaComSaldoNoMes;
begin
  // Teste uma Saida com Saldo No Mes
  FEstoque.QtdeVenda  := 20;
  FEstoque.PrecoVenda := 3.9;
  FEstoque.QtdeCompra := 0;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAnoPosterior);
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT SALDOESTOQUE, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 1000000) / 1000000;  // 4 Casas Decimais
  pTeste := StrToFloat('5,105263');

  check(pCusto = pTeste , 'Preco Custo Errado.');   // Preco de Custo do Ultimo Mes
  check(dm.sqlBusca.FieldByName('QTDEVENDA').AsFloat  = 20, 'Quantidade Venda Errado.');
  check(dm.sqlBusca.FieldByName('SALDOESTOQUE').AsFloat  = 170, 'Quantidade Estoque Errado.');

  //pCusto := trunc( * 10) / 10;
  pTeste := StrToFloat('3,9');
  check(dm.sqlBusca.FieldByName('PRECOVENDA').AsFloat = pTeste, 'Preço Venda Errado.');

end;

procedure TEstoqueTeste.TestSaidaComSaldoNoMes2;
begin
  // Teste uma Saida com Saldo No Mes
  FEstoque.QtdeVenda  := 60;
  FEstoque.PrecoVenda := 4.2;
  FEstoque.QtdeCompra := 0;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAnoPosterior);
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT SALDOESTOQUE, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 1000000) / 1000000;  // 4 Casas Decimais
  pTeste := StrToFloat('5,105263');

  check(pCusto = pTeste , 'Preco Custo Errado.');   // Preco de Custo do Ultimo Mes
  check(dm.sqlBusca.FieldByName('QTDEVENDA').AsFloat  = 80, 'Quantidade Venda Errado.');
  check(dm.sqlBusca.FieldByName('SALDOESTOQUE').AsFloat  = 110, 'Quantidade Estoque Errado.');

  //pCusto := trunc( * 10) / 10;
  pTeste := StrToFloat('4,125');
  check(dm.sqlBusca.FieldByName('PRECOVENDA').AsFloat = pTeste, 'Preço Venda Errado.');

end;

procedure TEstoqueTeste.TestNovaEntradaDepoisSaida;
begin
  // Teste se esta Somando esta nova inclusão no item q ja existe
  FEstoque.QtdeCompra := 40;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAnoPosterior);
  FEstoque.PrecoCompra := 3.4;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  //DecimalSeparator := '.';
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 10000) / 10000;  // 4 Casas Decimais
  pTeste := StrToFloat('4,6505');
  //DecimalSeparator := ',';
  check(pCusto = pTeste , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 80 , 'Quantidade Compra Errado.');
  pTeste := StrToFloat('3,7');
  check(dm.sqlBusca.FieldByName('PRECOCOMPRA').AsFloat = pTeste, 'Preço Venda Errado.');

end;



procedure TEstoqueTeste.TestSaidaSemSaldoNoMes;
begin
  check(False , 'Nao Validado.');
end;

procedure TEstoqueTeste.TestSaidaSemTerSaldo;
begin
  check(False , 'Nao Validado.');
end;

procedure TEstoqueTeste.TestInserirEntradaNoMesAnteriorFechado;
begin
  check(False , 'Nao Validado.');
end;


procedure TEstoqueTeste.TestSaidaVenda;
begin

end;

procedure TEstoqueTeste.TestSaidaVendaMais;
begin

end;




procedure TEstoqueTeste.TestaCancelamentoEntrada;
begin
  // Entrada de Materiais
  FEstoque.QtdeCompra := 100;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAnoPosterior);
  FEstoque.PrecoCompra := 5;
  FEstoque.inserirMes;

  // Cancelando ou Excluindo a Entrada Acima
  FEstoque.QtdeCompra := (-1) * 100;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAnoPosterior);
  FEstoque.PrecoCompra := 5;
  FEstoque.inserirMes;


  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(FEstoque.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  //DecimalSeparator := '.';
  pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 10000) / 10000;  // 4 Casas Decimais
  pTeste := StrToFloat('4,6505');
  //DecimalSeparator := ',';
  check(pCusto = pTeste , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDECOMPRA').AsFloat = 80 , 'Quantidade Compra Errado.');
  pTeste := StrToFloat('3,7');
  pCusto := dm.sqlBusca.FieldByName('PRECOCOMPRA').AsFloat;
  pCusto := trunc((pCusto-pTeste)*1000);
  CheckEquals(pCusto, 0, 'Preço Compra Errado.');
end;

procedure TEstoqueTeste.TestaCancelamentoSaida;
begin
  // Cancelando ou Excluindo a Entrada Acima
  FEstoque.QtdeVenda := (-1) * 100;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.Status      := '0';
  FEstoque.inserirMes;

  // Cancelando ou Excluindo a Entrada Acima
  FEstoque.QtdeVenda := (-1) * 100;
  FEstoque.CodProduto := 3;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.inserirMes;

  // Cancelando ou Excluindo a Entrada Acima
  FEstoque.QtdeVenda := (-1) * 100;
  FEstoque.CodProduto := 4;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.inserirMes;

  // Cancelando ou Excluindo a Entrada Acima
  FEstoque.QtdeVenda := (-1) * 100;
  FEstoque.CodProduto := 5;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.inserirMes;

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  {dm.sqlBusca.SQL.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, PRECOCOMPRA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  IN (' + IntToStr(FEstoque.CodProduto) + '3,4,5)' +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));  }
  dm.sqlBusca.SQL.Add('SELECT SUM(QTDESAIDA) AS QTDESAIDA ' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  IN (' + IntToStr(FEstoque.CodProduto) + '3,4,5)' +
        '  AND LOTE        = ' + QuotedStr(FEstoque.Lote) +
        '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FEstoque.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(FEstoque.CentroCusto));
  dm.sqlBusca.Open;
  //DecimalSeparator := '.';
  {pCusto := Trunc(dm.sqlBusca.FieldByName('PRECOCUSTO').AsFloat * 10000) / 10000;  // 4 Casas Decimais
  pTeste := StrToFloat('4,6505');
  //DecimalSeparator := ',';
  check(pCusto = pTeste , 'Preco Custo Errado.');
  check(dm.sqlBusca.FieldByName('QTDEVENDA').AsFloat = 80 , 'Quantidade Venda Errado.');
  pTeste := StrToFloat('4,125');
  pCusto := dm.sqlBusca.FieldByName('PRECOVENDA').AsFloat;
  pCusto := trunc((pCusto-pTeste)*1000);
  CheckEquals(pCusto, 0, 'Preço Venda Errado.');  }
  check(dm.sqlBusca.FieldByName('QTDESAIDA').AsInteger = 0 , 'Baixa não cancelada Totalmente..');
end;

procedure TEstoqueTeste.TesteInsereSaida5Itens;
begin
  // Saida de Materiais
  FEstoque.QtdeVenda  := 100;
  FEstoque.CodProduto := CCodProduto;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.Status      := '0';
  FEstoque.inserirMes;

  FEstoque.QtdeVenda  := 100;
  FEstoque.CodProduto := 3;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.Status      := '0';
  FEstoque.inserirMes;

  FEstoque.QtdeVenda  := 100;
  FEstoque.CodProduto := 4;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.Status      := '0';
  FEstoque.inserirMes;

  FEstoque.QtdeVenda  := 100;
  FEstoque.CodProduto := 5;
  FEstoque.Lote       := CLote;
  FEstoque.CentroCusto := CCentroCusto;
  FEstoque.MesAno      := StrToDate(CMesAno);
  FEstoque.PrecoVenda  := 5;
  FEstoque.inserirMes;

end;

initialization
  RegisterTest('Estoque/Teste', TEstoqueTeste.Suite);

end.
