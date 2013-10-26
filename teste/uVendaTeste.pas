unit uVendaTeste;

interface
uses TestFramework, uVendaCls;

type
  TVendaTeste = class(TTestCase)
  private
    codMovEntrada : Integer;
    FVenda: TVendaCls;
    function EstoqueSaldo(CodProduto: Integer; CodAlmox: Integer; CodLote: String; mesAno: TDateTime):Double;
    function EstoqueQtdeVenda(CodProduto: Integer; CodAlmox: Integer; CodLote: String; mesAno: TDateTime):Double;
  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestVendaInclusao;
    procedure TestVendaAlteracao;
    procedure TestVendaExclusao;
end;

  {const
    CCodCli       = 950000;
    CCodEndereco  = 950000;}

implementation

uses SysUtils, UDm, DateUtils, uEstoque, uMovimento;


{ TClienteTeste }

function TVendaTeste.EstoqueQtdeVenda(CodProduto, CodAlmox: Integer;
  CodLote: String; mesAno: TDateTime): Double;
begin
dm.sqlBusca.Close;
dm.sqlBusca.SQL.Clear;
dm.sqlBusca.SQL.Add('SELECT QTDEVENDA ' +
      '  FROM ESTOQUEMES ' +
      ' WHERE CODPRODUTO  = ' + IntToStr(CodProduto) +
      '   AND LOTE        = ' + QuotedStr(CodLote)   +
      '   AND CENTROCUSTO = ' + IntToStr(codAlmox)   +
      '   AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MesAno)));
dm.sqlBusca.Open;
Result := dm.sqlBusca.Fields[0].AsFloat;
end;

function TVendaTeste.EstoqueSaldo(CodProduto, CodAlmox: Integer;
  CodLote: String; mesAno: TDateTime): Double;
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


procedure TVendaTeste.SetUp;
begin
  inherited;
  FVenda := TVendaCls.Create;
end;

procedure TVendaTeste.TearDown;
begin
  FVenda.Destroy;
  inherited;
end;

procedure TVendaTeste.TestVendaAlteracao;
begin
  {FVenda.verVenda(IntToStr(CCodCli),'CODVenda', 'INTEGER');
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
  check(dm.sqlBusca.FieldByName('INSCESTADUAL').AsString= FVenda.InscEstadual , 'Insc. Estadual Errado.');
   }
end;

procedure TVendaTeste.TestVendaExclusao;
var FMov: TMovimento;
    FEst: TEstoque;
  QtdeVenda1, Saldo1 :Double;
  QtdeVenda2, Saldo2 :Double;
  QtdeVenda3, Saldo3 :Double;
  QVenda, QSaldo :Double;
  DataTeste: TDateTime;
begin

  Try
    FMov := TMovimento.Create;
    FEst := TEstoque.Create;

    FEst.MesAno := Today;
    DataTeste := FEst.MesAno;

    QtdeVenda1 := EstoqueQtdeVenda(6, 51, '0', DataTeste);
    Saldo1      := EstoqueSaldo(6, 51, '0', DataTeste);
    QtdeVenda2 := EstoqueQtdeVenda(10, 51, '0', DataTeste);
    Saldo2      := EstoqueSaldo(10, 51, '0', DataTeste);
    QtdeVenda3 := EstoqueQtdeVenda(20, 51, '0', DataTeste);
    Saldo3      := EstoqueSaldo(20, 51, '0', DataTeste);


    FMov.CodMov      := 0;
    FMov.CodCCusto   := 51;
    FMov.CodCliente  := 0;
    FMov.CodFornec   := 0;
    FMov.CodNatureza := 3;
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

    fVenda.CodMov               := codMovEntrada;
    fVenda.DataVenda            := Today;
    fVenda.DataVcto             := Today;
    fVenda.Serie                := 'I';
    fVenda.NotaFiscal           := codMovEntrada;
    fVenda.CodCliente           := 1;
    fVenda.CodVendedor          := 1;
    fVenda.CodCCusto            := 51;
    fVenda.ValorPagar           := 0;
    fVenda.NParcela             := 1;
    fVenda.inserirVenda(0);

    FEst.baixaEstoque(codMovEntrada, Today, 'VENDA');

  Finally
    FMov.Free;
    FEst.Free;
  end;


  // Fazendo a EXCLUSAO
  Try
    FEst := TEstoque.Create;
    FEst.estornaEstoque('VENDA', codMovEntrada, Today);
  Finally
    FEst.Free;
  end;

  QVenda := EstoqueQtdeVenda(6, 51, '0', DataTeste);
  QSaldo  := EstoqueSaldo(6, 51, '0',  DataTeste);
  Check((QtdeVenda1) = QVenda, 'Qtde Venda Item 1 errado');
  Check((Saldo1)      = QSaldo, 'Saldo Item 1 errado');

  QVenda := EstoqueQtdeVenda(10, 51, '0', DataTeste);
  QSaldo  := EstoqueSaldo(10, 51, '0',  DataTeste);
  Check((QtdeVenda2) = QVenda, 'Qtde Venda Item 2 errado');
  Check((Saldo2)      = QSaldo, 'Saldo Item 2 errado');

  QVenda := EstoqueQtdeVenda(20, 51, '0', DataTeste);
  QSaldo  := EstoqueSaldo(20, 51, '0', DataTeste);
  Check((QtdeVenda3) = QVenda, 'Qtde Compra Item 3 errado');
  Check((Saldo3)      = QSaldo, 'Saldo Item 3 errado');


end;

procedure TVendaTeste.TestVendaInclusao;
var codVenda: Integer;
begin
  FVenda.CodVenda     := 0;
  FVenda.CodCliente   := 1000002;
  FVenda.CodUsuario   := 1;
  FVenda.CodVendedor  := 1;
  FVenda.DataVenda    := 6/2/2008;
  FVenda.DataVcto     := 6/2/2008;
  FVenda.CodCCusto    := 51;
  FVenda.NotaFiscal   := 11;
  FVenda.Serie        := 'V';
  FVenda.CodMov       := 1000001;
  FVenda.NParcela     := 1;

  codVenda := FVenda.inserirVenda(0);

  dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT CODVenda' +
        '  FROM Venda C ' +
        ' WHERE C.CODVENDA = ' + IntToStr(codVenda));
  dm.sqlBusca.Open;
  check(dm.sqlBusca.FieldByName('CodVenda').AsInteger = codVenda , 'Venda Não Gravada.');
end;


initialization
  RegisterTest('Venda/Teste', TVendaTeste.Suite);

end.
