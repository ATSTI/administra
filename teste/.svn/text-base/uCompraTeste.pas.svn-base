unit uCompraTeste;

interface
uses TestFramework, uCompraCls;

type
  TCompraTeste = class(TTestCase)
  private
    codMovEntrada : Integer;
    FCompra: TCompraCls;
    function EstoqueSaldo(CodProduto: Integer; CodAlmox: Integer; CodLote: String; mesAno: TDateTime):Double;
    function EstoqueQtdeCompra(CodProduto: Integer; CodAlmox: Integer; CodLote: String; mesAno: TDateTime):Double;

  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestCompraInclusao;
    procedure TestCompraAlteracao;
    procedure TestCompraExclusao;
end;

  {const
    CCodCli       = 950000;
    CCodEndereco  = 950000;}

implementation

uses SysUtils, UDm, DateUtils, uEstoque, uMovimento;


{ TClienteTeste }


function TCompraTeste.EstoqueQtdeCompra(CodProduto: Integer; CodAlmox: Integer; CodLote: String; mesAno: TDateTime): Double;
begin
  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT QTDECOMPRA ' +
        '  FROM ESTOQUEMES ' +
        ' WHERE CODPRODUTO  = ' + IntToStr(CodProduto) +
        '   AND LOTE        = ' + QuotedStr(CodLote)   +
        '   AND CENTROCUSTO = ' + IntToStr(codAlmox)   +
        '   AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MesAno)));
  dm.sqlBusca.Open;
  Result := dm.sqlBusca.Fields[0].AsFloat;
end;

function TCompraTeste.EstoqueSaldo(CodProduto: Integer; CodAlmox: Integer; CodLote: String; mesAno: TDateTime): Double;
begin
  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT SALDOESTOQUE ' +
        '  FROM ESTOQUEMES ' +
        ' WHERE CODPRODUTO  = ' + IntToStr(CodProduto) +
        '   AND LOTE        = ' + QuotedStr(CodLote)   +
        '   AND CENTROCUSTO = ' + IntToStr(codAlmox)   +
        '   AND MESANO      <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MesAno)) +
        ' ORDER BY MESANO DESC');
  dm.sqlBusca.Open;
  Result := dm.sqlBusca.Fields[0].AsFloat;
end;


procedure TCompraTeste.SetUp;
begin
  inherited;
  FCompra := TCompraCls.Create;
end;

procedure TCompraTeste.TearDown;
begin
  FCompra.Destroy;
  inherited;
end;

procedure TCompraTeste.TestCompraAlteracao;
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

procedure TCompraTeste.TestCompraExclusao;
var FMov: TMovimento;
    FEst: TEstoque;
  QtdeCompra1, Saldo1 :Double;
  QtdeCompra2, Saldo2 :Double;
  QtdeCompra3, Saldo3 :Double;
  QCompra, QSaldo :Double;
  DataTeste: TDateTime;
begin
  
  Try
    FMov := TMovimento.Create;
    FEst := TEstoque.Create;

    FEst.MesAno := Today;
    DataTeste := FEst.MesAno;

    QtdeCompra1 := EstoqueQtdeCompra(6, 51, '0', DataTeste);
    Saldo1      := EstoqueSaldo(6, 51, '0', DataTeste);
    QtdeCompra2 := EstoqueQtdeCompra(10, 51, '0', DataTeste);
    Saldo2      := EstoqueSaldo(10, 51, '0', DataTeste);
    QtdeCompra3 := EstoqueQtdeCompra(20, 51, '0', DataTeste);
    Saldo3      := EstoqueSaldo(20, 51, '0', DataTeste);


    FMov.CodMov      := 0;
    FMov.CodCCusto   := 51;
    FMov.CodCliente  := 0;
    FMov.CodFornec   := 0;
    FMov.CodNatureza := 4;
    FMov.Status      := 0;
    FMov.CodUsuario  := 1;
    FMov.CodVendedor := 1;
    FMov.DataMov     := Today;
    codMovEntrada    := FMov.inserirMovimento(0);

    FMov.MovDetalhe.CodMov        := codMovEntrada;
    FMov.MovDetalhe.CodProduto    := 6;
    FMov.MovDetalhe.Qtde          := 100;
    FMov.MovDetalhe.Lote          := '0';
    FMov.MovDetalhe.Baixa         := '0';
    FMov.MovDetalhe.inserirMovDet;

    FMov.MovDetalhe.CodMov        := codMovEntrada;
    FMov.MovDetalhe.CodProduto    := 10;
    FMov.MovDetalhe.Qtde          := 200;
    FMov.MovDetalhe.Lote          := '0';
    FMov.MovDetalhe.Baixa         := '0';
    FMov.MovDetalhe.inserirMovDet;

    FMov.MovDetalhe.CodMov        := codMovEntrada;
    FMov.MovDetalhe.CodProduto    := 20;
    FMov.MovDetalhe.Qtde          := 300;
    FMov.MovDetalhe.Lote          := '0';
    FMov.MovDetalhe.Baixa         := '0';
    FMov.MovDetalhe.inserirMovDet;

    FMov.MovDetalhe.CodMov        := codMovEntrada;
    FMov.MovDetalhe.CodProduto    := 25;
    FMov.MovDetalhe.Qtde          := 1;
    FMov.MovDetalhe.Lote          := '0';
    FMov.MovDetalhe.Baixa         := '0';
    FMov.MovDetalhe.inserirMovDet;

    fCompra.CodMov               := codMovEntrada;
    fCompra.DataCompra           := Today;
    fCompra.DataVcto             := Today;
    fCompra.Serie                := 'I';
    fCompra.NotaFiscal           := codMovEntrada;
    fCompra.CodFornecedor        := 1;
    fCompra.CodComprador         := 1;
    fCompra.CodCCusto            := 51;
    fCompra.ValorPagar           := 0;
    fCompra.NParcela             := 1;
    fCompra.inserirCompra(0);

    FEst.baixaEstoque(codMovEntrada, Today, 'COMPRA');

  Finally
    FMov.Free;
    FEst.Free;
  end;
  

  // Fazendo a EXCLUSAO
  Try
    FEst := TEstoque.Create;
    FEst.estornaEstoque('COMPRA', codMovEntrada, Today);
  Finally
    FEst.Free;
  end;

  QCompra := EstoqueQtdeCompra(6, 51, '0', DataTeste);
  QSaldo  := EstoqueSaldo(6, 51, '0', DataTeste);
  Check((QtdeCompra1) = QCompra, 'Qtde Compra Item 1 errado');
  Check((Saldo1)      = QSaldo, 'Saldo Item 1 errado');

  QCompra := EstoqueQtdeCompra(10, 51, '0', DataTeste);
  QSaldo  := EstoqueSaldo(10, 51, '0', DataTeste);
  Check((QtdeCompra2) = QCompra, 'Qtde Compra Item 2 errado');
  Check((Saldo2)      = QSaldo, 'Saldo Item 2 errado');

  QCompra := EstoqueQtdeCompra(20, 51, '0', DataTeste);
  QSaldo  := EstoqueSaldo(20, 51, '0', DataTeste);
  Check((QtdeCompra3) = QCompra, 'Qtde Compra Item 3 errado');
  Check((Saldo3)      = QSaldo, 'Saldo Item 3 errado');

end;

procedure TCompraTeste.TestCompraInclusao;
var FMov: TMovimento;
    FEst: TEstoque;
  QtdeCompra1, Saldo1 :Double;
  QtdeCompra2, Saldo2 :Double;
  QtdeCompra3, Saldo3 :Double;
  QCompra, QSaldo :Double;
  DataTeste: TDateTime;
begin

  Try
    FMov := TMovimento.Create;
    FEst := TEstoque.Create;

    FEst.MesAno := Today;
    DataTeste := FEst.MesAno;

    QtdeCompra1 := EstoqueQtdeCompra(6, 51, '0', DataTeste);
    Saldo1      := EstoqueSaldo(6, 51, '0', DataTeste);
    QtdeCompra2 := EstoqueQtdeCompra(10, 51, '0', DataTeste);
    Saldo2      := EstoqueSaldo(10, 51, '0', DataTeste);
    QtdeCompra3 := EstoqueQtdeCompra(20, 51, '0', DataTeste);
    Saldo3      := EstoqueSaldo(20, 51, '0', DataTeste);


    FMov.CodMov      := 0;
    FMov.CodCCusto   := 51;
    FMov.CodCliente  := 0;
    FMov.CodFornec   := 0;
    FMov.CodNatureza := 4;
    FMov.Status      := 0;
    FMov.CodUsuario  := 1;
    FMov.CodVendedor := 1;
    FMov.DataMov     := Today;
    codMovEntrada    := FMov.inserirMovimento(0);

    FMov.MovDetalhe.CodMov        := codMovEntrada;
    FMov.MovDetalhe.CodProduto    := 6;
    FMov.MovDetalhe.Qtde          := 60;
    FMov.MovDetalhe.Lote          := '0';
    FMov.MovDetalhe.Baixa         := '0';
    FMov.MovDetalhe.inserirMovDet;

    FMov.MovDetalhe.CodMov        := codMovEntrada;
    FMov.MovDetalhe.CodProduto    := 10;
    FMov.MovDetalhe.Qtde          := 100;
    FMov.MovDetalhe.Lote          := '0';
    FMov.MovDetalhe.Baixa         := '0';
    FMov.MovDetalhe.inserirMovDet;

    FMov.MovDetalhe.CodMov        := codMovEntrada;
    FMov.MovDetalhe.CodProduto    := 20;
    FMov.MovDetalhe.Qtde          := 200;
    FMov.MovDetalhe.Lote          := '0';
    FMov.MovDetalhe.Baixa         := '0';
    FMov.MovDetalhe.inserirMovDet;

    fCompra.CodMov               := codMovEntrada;
    fCompra.DataCompra           := Today;
    fCompra.DataVcto             := Today;
    fCompra.Serie                := 'I';
    fCompra.NotaFiscal           := codMovEntrada;
    fCompra.CodFornecedor        := 1;
    fCompra.CodComprador         := 1;
    fCompra.CodCCusto            := 51;
    fCompra.ValorPagar           := 0;
    fCompra.NParcela             := 1;
    fCompra.inserirCompra(0);

    FEst.baixaEstoque(codMovEntrada, Today, 'COMPRA');

  Finally
    FMov.Free;
    FEst.Free;
  end;

  QCompra := EstoqueQtdeCompra(6, 51, '0', DataTeste);
  QSaldo  := EstoqueSaldo(6, 51, '0', DataTeste);
  Check((QtdeCompra1+60) = QCompra, 'Qtde Compra Item 1 errado');
  Check((Saldo1+60)      = QSaldo, 'Saldo Item 1 errado');
end;


initialization
  RegisterTest('Compra/Teste', TCompraTeste.Suite);

end.
