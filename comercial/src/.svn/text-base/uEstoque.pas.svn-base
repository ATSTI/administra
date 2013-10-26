unit uEstoque;

interface
uses SysUtils, Dialogs, DBClient, Provider, SqlExpr;

type
  TEstoque = class(TObject)
  private
    naoInsereEstaData: TDateTime;
    cdseb: TClientDataSet;
    dspeb: TDataSetProvider;
    sdseb: TSQLDataSet;
    novoCusto, totalEstoque: Double;
    sqlStr: String;
    QCompra: Double;  // Armazena Valores que existiam na tabela
    QEntrada: Double;
    QSaida: Double;
    QVenda: Double;
    QDevCompra: Double;
    QDevVenda: Double;
    QPerda: Double;
    PCompra: Double;
    PCompraUltima: Double;
    PCusto: Double;
    PCustoAnterior: Double;
    PVenda: Double;
    QSaldo: Double;
    QInventario: Double;
    QMes  : TDateTime;
    QSaldoAnterior : Double;
    jaConsultado : String;
    resultadoJaInserido : Boolean;
    mesAnoAnterior : TDateTime;
    mesAnoPosterior : TDateTime;
    temMesPosterior: Boolean;
    function getCodProduto: Integer;
    function getCodDetalhe: Integer;
    function getLote: String;
    function getUn: String;
    function getStatus: String;
    function getMesAno: TDateTime;
    function getMesAnoPost: TDateTime;
    function getCentroCusto: Integer;
    function getQtdeCompra: Double;
    function getQtdeVenda: Double;
    function getQtdeEntrada: Double;
    function getQtdeSaida: Double;
    function getQtdePerda: Double;
    function getQtdeInventario: Double;
    function getQtdeDevCompra: Double;
    function getQtdeDevVenda: Double;
    function getPrecoCompra: Double;
    function getPrecoCompraUltima: Double;
    function getPrecoCusto: Double;
    function getPrecoVenda: Double;
    function getSaldoAnterior: Double;
    procedure setCodProduto(const Value: Integer);
    procedure setCodDetalhe(const Value: Integer);
    procedure setMesAno(const Value: TDateTime);
    procedure setMesAnoPost(const Value: TDateTime);
    procedure setCentroCusto(const Value: Integer);
    procedure setLote(const Value: String);
    procedure setUn(const Value: String);
    procedure setStatus(const Value: String);
    procedure setQtdeCompra(const Value: Double);
    procedure setQtdeVenda(const Value: Double);
    procedure setQtdeInventario(const Value: Double);
    procedure setQtdeEntrada(const Value: Double);
    procedure setQtdeSaida(const Value: Double);
    procedure setQtdePerda(const Value: Double);
    procedure setQtdeDevCompra(const Value: Double);
    procedure setQtdeDevVenda(const Value: Double);
    procedure setPrecoCompra(const Value: Double);
    procedure setPrecoCompraUltima(const Value: Double);
    procedure setPrecoCusto(const Value: Double);
    procedure setPrecoVenda(const Value: Double);
    procedure setSaldoAnterior(const Value: Double);
    function jaFoiInserido(): Boolean;
    procedure corrigeCustoEstoquePosterior; // Qdo Inseri uma entrada no mes Anterior e existe movimento Mes Posterior
    function mesAnterior(MesAtual: TDateTime): TDateTime;
    function validoMovimento(): Boolean;
    function executaSql(strSql: String): Boolean;
    function getDataFabricacao: TDateTime;
    function getDataVencimento: TDateTime;
    procedure setDataFabricacao(const Value: TDateTime);
    procedure setDataVencimento(const Value: TDateTime);
  protected
    //Atributos
    _codProduto: Integer;
    _codDetalhe: Integer;
    _lote: String;
    _mesano: TDateTime;
    _un: String;
    _status: String;     // Grava 9 na Movimento Detalhe qdo o Movto Detalhe foi Inserido
    _qtdeCompra: Double;
    _qtdeVenda: Double;
    _qtdeEntrada: Double;
    _qtdeSaida: Double;
    _qtdeDevCompra: Double;
    _qtdeDevVenda: Double;
    _qtdePerda: Double;
    _qtdeInventario: Double;
    _precoCusto: Double;
    _precoCompra: Double;
    _precoCompraUltima: Double;
    _precoVenda: Double;
    _saldoAnterior: Double;
    _centroCusto: integer;
    _mesAnoPost: TDateTime;
    _dataVencimento: TDateTime;
    _dataFabricacao: TDateTime;

  public
    DataEntrada : TDateTime;
    property CodProduto: Integer read getCodProduto write setCodProduto;
    property CodDetalhe: Integer read getCodDetalhe write setCodDetalhe;
    property MesAno: TDateTime read getMesAno write setMesAno;
    property MesAnoPost: TDateTime read getMesAno write setMesAno;
    property CentroCusto: Integer read getCentroCusto write setCentroCusto;
    property Lote: String read getLote write setLote;
    property Un: String read getUn write setUn;
    property Status: String read getStatus write setStatus;
    property QtdeCompra: Double read getQtdeCompra write setQtdeCompra;
    property QtdeVenda: Double read getQtdeVenda write setQtdeVenda;
    property QtdeInventario: Double read getQtdeInventario write setQtdeInventario;
    property QtdeEntrada: Double read getQtdeEntrada write setQtdeEntrada;
    property QtdeSaida: Double read getQtdeSaida write setQtdeSaida;
    property QtdePerda: Double read getQtdePerda write setQtdePerda;
    property QtdeDevCompra: Double read getQtdeDevCompra write setQtdeDevCompra;
    property QtdeDevVenda: Double read getQtdeDevVenda write setQtdeDevVenda;
    property PrecoCusto: Double read getPrecoCusto write setPrecoCusto;
    property PrecoCompra: Double read getPrecoCompra write setPrecoCompra;
    property PrecoCompraUltima: Double read getPrecoCompraUltima write setPrecoCompraUltima;
    property PrecoVenda: Double read getPrecoVenda write setPrecoVenda;
    property SaldoAnterior: Double read getSaldoAnterior write setSaldoAnterior;
    property DataVencimento: TDateTime read getDataVencimento write setDataVencimento;
    property DataFabricacao: TDateTime read getDataFabricacao write setDataFabricacao;

    //Metodos
    function inserirMes(): Boolean;
    function verEstoque(MesAno: TDateTime): Boolean;
    function excluirMes(): Boolean;

    function baixaEstoque(codMovto: Integer; DtaMovto: TDateTime; tipo: String):Boolean;

    function estornaEstoque(TIPO: String; codMovto: Integer; dtaMovto : TDateTime): Boolean;

    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'ESTOQUE';

implementation

uses UDm;

{ TEstoque }

function TEstoque.baixaEstoque(codMovto: Integer; DtaMovto: TDateTime; tipo: String): Boolean;
begin

  sdseb.SQLConnection := dm.sqlsisAdimin;
  IF (sdseb.Active) then
    sdseb.Close;
  if (cdseb.Active) then
    cdseb.Close;

  sdseb.CommandText   := 'SELECT MD.*, M.CODALMOXARIFADO CENTROCUSTO ' +
  '  FROM MOVIMENTO M, MOVIMENTODETALHE MD ' +
  ' WHERE MD.CODMOVIMENTO = M.CODMOVIMENTO ' +
  '   AND M.CODMOVIMENTO  = ' + IntToStr(codMovto);

  //sdseb.Open;
  dspeb.DataSet := sdseb;
  dspeb.Name := 'dsp1';

  cdseb.ProviderName := dspeb.Name;// 'dspeb';
  cdseb.Open;

  While not cdseb.Eof do
  begin
    if (cdseb.FieldByName('STATUS').IsNull) then
    begin
      if (tipo = 'VENDA') then
      begin
        Self.QtdeVenda   := cdseb.FieldByName('QUANTIDADE').AsFloat;
        Self.PrecoVenda  := cdseb.FieldByName('PRECO').AsFloat;
      end;
      if (tipo = 'COMPRA') then
      begin
        Self.QtdeCompra   := cdseb.FieldByName('QUANTIDADE').AsFloat;
        Self.PrecoCompra  := cdseb.FieldByName('PRECO').AsFloat;
        Self.PrecoCompraUltima := cdseb.FieldByName('PRECO').AsFloat;
      end;
      if (tipo = 'ENTRADA') then
      begin
        Self.QtdeEntrada   := cdseb.FieldByName('QUANTIDADE').AsFloat;
        Self.PrecoCompra   := cdseb.FieldByName('PRECO').AsFloat;
      end;
      if (tipo = 'SAIDA') then
      begin
        Self.QtdeSaida   := cdseb.FieldByName('QUANTIDADE').AsFloat;
        Self.PrecoVenda  := cdseb.FieldByName('PRECO').AsFloat;
      end;
      if (tipo = 'DEV.COMPRA') then
      begin
        Self.QtdeDevCompra := cdseb.FieldByName('QUANTIDADE').AsFloat;
        Self.PrecoVenda    := cdseb.FieldByName('PRECO').AsFloat;
      end;
      if (tipo = 'DEV.VENDA') then
      begin
        Self.QtdeDevVenda  := cdseb.FieldByName('QUANTIDADE').AsFloat;
        Self.PrecoCompra   := cdseb.FieldByName('PRECO').AsFloat;
      end;

      Self.CodProduto  := cdseb.FieldByName('CODPRODUTO').AsInteger;
      Self.Lote        := cdseb.FieldByName('LOTE').AsString;
      Self.DataVencimento := cdseb.FieldByName('DTAVCTO').AsDateTime;
      Self.DataFabricacao := cdseb.FieldByName('DTAFAB').AsDateTime;
      Self.CentroCusto := cdseb.FieldByName('CENTROCUSTO').AsInteger;
      Self.MesAno      := DtaMovto;

      Self.CodDetalhe  := cdseb.FieldByName('CODDETALHE').AsInteger;
      Self.Status      := '9';
      Self.inserirMes;
    end;
    cdseb.Next;
  end;
  Result := True;

  Self.QtdeVenda   := 0;
  Self.PrecoVenda  := 0;

  Self.QtdeCompra   := 0;
  Self.PrecoCompra  := 0;
  Self.PrecoCompraUltima := 0;

  Self.QtdeEntrada   := 0;
  Self.PrecoCompra   := 0;

  Self.QtdeSaida   := 0;
  Self.PrecoVenda  := 0;

  Self.QtdeDevCompra := 0;
  Self.PrecoVenda    := 0;

  Self.QtdeDevVenda := 0;
  Self.PrecoCompra  := 0;
end;

procedure TEstoque.corrigeCustoEstoquePosterior;
var sqlBuscaPosterior, sqlBuscaE : TSqlQuery;
    mesPost, mesAnt: TDateTime;
    PCusto1, Estoque1, EstoqueAnterior1, VlrEstoque1, QS: Double;
begin
  Try
    sqlBuscaE :=  TSqlQuery.Create(nil);
    sqlBuscaE.SQLConnection := dm.sqlsisAdimin;
    // Corrigindo Custo e Estoque mes Posterior

    // Busca os meses posteriores que existirem
    sqlStr := 'SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
        'QTDEPERDA, PRECOCUSTO, PRECOVENDA, MESANO ' +
        '  FROM ESTOQUEMES ' +
        ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
        '   AND LOTE        = ' + QuotedStr(Self.Lote) +
        '   AND MESANO      > ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
        '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
        ' ORDER BY MESANO';

    sqlBuscaPosterior := TSqlQuery.Create(nil);
    sqlBuscaPosterior.SQLConnection := dm.sqlsisAdimin;
    sqlBuscaPosterior.SQL.Add(sqlStr);
    sqlBuscaPosterior.Active := True;
    mesAnt := Self.MesAno;
    While (not sqlBuscaPosterior.Eof) do
    begin
      mesPost := sqlBuscaPosterior.fieldByName('MESANO').AsDateTime;
      mesAnt := mesAnterior(mesPost);
      self.MesAnoPost := mesPost;
      // Mes Atual
      sqlStr := 'SELECT PRECOCUSTO , MESANO, SALDOMESANTERIOR, SALDOESTOQUE ' +
        '  FROM ESTOQUEMES ' +
        ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
        '   AND LOTE        = ' + QuotedStr(Self.Lote) +
        '   AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', mesAnt)) +
        '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
        ' ORDER BY MESANO';
      if (sqlBuscaE.Active) then
        sqlBuscaE.Close;
      sqlBuscaE.SQL.Clear;
      sqlBuscaE.SQL.Add(sqlStr);
      sqlBuscaE.Open;

      PCusto1             := sqlBuscaE.FieldByName('PRECOCUSTO').AsFloat;
      Estoque1            := sqlBuscaE.FieldByName('SALDOESTOQUE').AsFloat;
      EstoqueAnterior1    := sqlBuscaE.FieldByName('SALDOMESANTERIOR').AsFloat;
      VlrEstoque1         := PCusto1 * Estoque1;

      sqlStr := 'SELECT PRECOCOMPRA , MESANO, (SALDOESTOQUE - SALDOMESANTERIOR) as SALDOESTOQUE ' +
        '  FROM ESTOQUEMES ' +
        ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
        '   AND LOTE        = ' + QuotedStr(Self.Lote) +
        '   AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', mesPost)) +
        '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
        ' ORDER BY MESANO';
      if (sqlBuscaE.Active) then
        sqlBuscaE.Close;
      sqlBuscaE.SQL.Clear;
      sqlBuscaE.SQL.Add(sqlStr);
      sqlBuscaE.Open;
      PCusto     := sqlBuscaE.FieldByName('PRECOCOMPRA').AsFloat;
      QSaldo     := sqlBuscaE.FieldByName('SALDOESTOQUE').AsFloat;
      QMes       := sqlBuscaE.FieldByName('MESANO').AsDateTime;

      //Estoque1   := Estoque1 + QSaldo;
      QS := (Estoque1 + Qsaldo);
      if (QS = 0 )then
        QS := 1;
      PCusto1    := ((PCusto * QSaldo) + VlrEstoque1) / QS;

      // Atualiza mes Posterior
      DecimalSeparator := '.';
      sqlStr := 'UPDATE ESTOQUEMES SET ';
      sqlStr := sqlStr + ' SALDOMESANTERIOR  = ' + FloatToStr(Estoque1);
      sqlStr := sqlStr + '     , PRECOCUSTO  = ' + FloatToStr(PCusto1);
      sqlStr := sqlStr + ' WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto);
      sqlStr := sqlStr + '   AND LOTE        = ' + QuotedStr(Self.Lote);
      sqlStr := sqlStr + '   AND MESANO      = ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy', QMes));
      sqlStr := sqlStr + '   AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto);
      DecimalSeparator := ',';
      dm.sqlsisAdimin.ExecuteDirect(sqlStr);
      //QSaldoAnterior := dm.sqlBuscaEstoque.FieldByName('SALDOMESANTERIOR').AsFloat;
      sqlBuscaPosterior.Next;
    end;
    Finally
      sqlBuscaPosterior.Free;
      sqlBuscaE.Free;
  end;
end;

constructor TEstoque.Create;
begin
  jaConsultado := 'NAO';
  cdseb := TClientDataSet.Create(dm);
  dspeb := TDataSetProvider.Create(dm);
  sdseb := TSQLDataSet.Create(dm);

end;

destructor TEstoque.Destroy;
begin
  cdseb.Free;
  dspeb.Free;
  sdseb.Free;

  inherited;
end;

function TEstoque.estornaEstoque(TIPO: String; codMovto: Integer; dtaMovto : TDateTime): Boolean;
var cdse: TClientDataSet;
    dspe: TDataSetProvider;
    sdse: TSQLDataSet;
begin
  Try
    cdse := TClientDataSet.Create(dm);
    dspe := TDataSetProvider.Create(dm);
    sdse := TSQLDataSet.Create(dm);

    sdse.SQLConnection := dm.sqlsisAdimin;
    sdse.CommandText   := 'SELECT MD.*, M.CODALMOXARIFADO CENTROCUSTO, M.DATAMOVIMENTO ' +
    '  FROM MOVIMENTO M, MOVIMENTODETALHE MD ' +
    ' WHERE MD.CODMOVIMENTO = M.CODMOVIMENTO ' +
    '   AND M.CODMOVIMENTO = ' + IntToStr(codMovto);

    dspe.DataSet := sdse;
    dspe.Name    := 'dspe';

    cdse.ProviderName := dspe.Name;
    cdse.Open;

    While not cdse.Eof do
    begin
      if (cdse.FieldByName('STATUS').AsString = '9') then
      begin
        if (tipo = 'VENDA') then
        begin
          Self.QtdeVenda   := (-1) * cdse.FieldByName('QUANTIDADE').AsFloat;
          Self.PrecoVenda  := cdse.FieldByName('PRECO').AsFloat;
        end;
        if (tipo = 'COMPRA') then
        begin
          Self.QtdeCompra  := (-1) * cdse.FieldByName('QUANTIDADE').AsFloat;
          Self.PrecoCompra := cdse.FieldByName('PRECO').AsFloat;
        end;
        if (tipo = 'ENTRADA') then
        begin
          Self.QtdeEntrada := (-1) * cdse.FieldByName('QUANTIDADE').AsFloat;
        end;
        if (tipo = 'SAIDA') then
        begin
          Self.QtdeSaida   := (-1) * cdse.FieldByName('QUANTIDADE').AsFloat;
        end;
        if (tipo = 'DEV.VENDA') then
        begin
          Self.QtdeDevVenda  := (-1) * cdse.FieldByName('QUANTIDADE').AsFloat;
          Self.PrecoCompra   := cdse.FieldByName('PRECO').AsFloat;
        end;
        if (tipo = 'DEV.COMPRA') then
        begin
          Self.QtdeDevCompra := (-1) * cdse.FieldByName('QUANTIDADE').AsFloat;
          Self.PrecoVenda    := cdse.FieldByName('PRECO').AsFloat;
        end;

        Self.CodProduto  := cdse.FieldByName('CODPRODUTO').AsInteger;
        Self.Lote        := cdse.FieldByName('LOTE').AsString;
        Self.CentroCusto := cdse.FieldByName('CENTROCUSTO').AsInteger;
        Self.MesAno      := dtaMovto;
        Self.CodDetalhe  := cdse.FieldByName('CODDETALHE').AsInteger;
        Self.Status      := '0';
        Self.inserirMes;
      end;
      cdse.Next;
    end;
  Finally
    cdse.Free;
    dspe.Free;
    sdse.Free;
  end;
end;

function TEstoque.excluirMes: Boolean;
begin
  // Movimento Exclu�do

end;

function TEstoque.executaSql(strSql: String): Boolean;
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

function TEstoque.getCentroCusto: Integer;
begin
  if (dm.usaCentroCusto = 'S') then
    Result := _centroCusto
  else
    Result := 0;
end;

function TEstoque.getCodDetalhe: Integer;
begin
  Result := _codDetalhe;
end;

function TEstoque.getCodProduto: Integer;
begin
  Result := _codProduto;
end;

function TEstoque.getDataFabricacao: TDateTime;
begin
  Result := _dataFabricacao;
end;

function TEstoque.getDataVencimento: TDateTime;
begin
  Result := _dataVencimento;
end;

function TEstoque.getLote: String;
begin
  if (_lote = '') then
    Result := '0'
  else
    Result := _lote;
end;

function TEstoque.getMesAno: TDateTime;
begin
  mesAnterior(_mesAno);
  Result := _mesano;
end;

function TEstoque.getMesAnoPost: TDateTime;
begin
  Result := _mesAnoPost;
end;

function TEstoque.getPrecoCompra: Double;
var sqlBuscaCu: TSqlQuery;
begin
  totalEstoque := QCompra;
  novoCusto    := (PCompra * QCompra);
  if ((totalEstoque + _qtdeCompra) > 0) then
  begin
    novoCusto    := (novoCusto + (_precoCompra * _qtdeCompra))/(totalEstoque + _qtdeCompra);
    Result       := novoCusto;
    if (novoCusto = 0) then
    begin
      Try
        sqlBuscaCu :=  TSqlQuery.Create(nil);
        sqlBuscaCu.SQLConnection := dm.sqlsisAdimin;

        sqlBuscaCu.sql.Add('SELECT FIRST 1 PRECOCOMPRA, MESANO' +
          ' FROM ESTOQUEMES ' +
          'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
          '  AND LOTE        = ' + QuotedStr(Self.Lote) +
          '  AND MESANO      < ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
          '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
          '  AND PRECOCOMPRA  > 0 ' +
          ' ORDER BY MESANO DESC');
        sqlBuscaCu.Open;
        if (not sqlBuscaCu.IsEmpty) then      // N�o achou nada no sistema
        begin
          Result := sqlBuscaCu.FieldByName('PRECOCOMPRA').AsFloat;
        end;
      Finally
        SqlBuscaCu.Free;
      end;
    end;
  end else
  begin
    Result := _precoCompra;
    if (_precoCompra = 0) then
    begin
      Try
        sqlBuscaCu :=  TSqlQuery.Create(nil);
        sqlBuscaCu.SQLConnection := dm.sqlsisAdimin;

        sqlBuscaCu.sql.Add('SELECT FIRST 1 PRECOCOMPRA, MESANO' +
          ' FROM ESTOQUEMES ' +
          'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
          '  AND LOTE        = ' + QuotedStr(Self.Lote) +
          '  AND MESANO      < ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
          '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
          '  AND PRECOCOMPRA  > 0 ' +
          ' ORDER BY MESANO DESC');
        sqlBuscaCu.Open;
        if (not sqlBuscaCu.IsEmpty) then      // N�o achou nada no sistema
        begin
          Result := sqlBuscaCu.FieldByName('PRECOCOMPRA').AsFloat;
        end;
      Finally
        SqlBuscaCu.Free;
      end;
    end;
  end;
end;

function TEstoque.getPrecoCompraUltima: Double;
begin
  Result := _precoCompraUltima;
end;

function TEstoque.getPrecoCusto: Double;
var sqlBuscaPc: TSqlQuery;
begin
  totalEstoque := QSaldo + QSaldoAnterior;
  novoCusto := (PCusto * QSaldo) + (QSaldoAnterior * PCustoAnterior);
  if ((totalEstoque + _qtdeCompra) > 0) then
  begin
    if (totalEstoque < 0) then
      totalEstoque := 0;
    novoCusto := (novoCusto + (_precoCompra * _qtdeCompra))/(totalEstoque + _qtdeCompra);
    Result := novoCusto;
    if (NovoCusto = 0) then
    begin
      Try
        sqlBuscaPc :=  TSqlQuery.Create(nil);
        sqlBuscaPc.SQLConnection := dm.sqlsisAdimin;

        sqlBuscaPc.sql.Add('SELECT FIRST 1 PRECOCUSTO, SALDOESTOQUE, MESANO' +
          ' FROM ESTOQUEMES ' +
          'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
          '  AND LOTE        = ' + QuotedStr(Self.Lote) +
          '  AND MESANO      < ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
          '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto) +
          '  AND PRECOCUSTO  > 0 ' +
          ' ORDER BY MESANO DESC');
        sqlBuscaPc.Open;
        if (not sqlBuscaPc.IsEmpty) then      // N�o achou nada no sistema
        begin
          Result := sqlBuscaPc.FieldByName('PRECOCUSTO').AsFloat;
        end;
      Finally
        sqlBuscaPc.Free;
      end;
    end;
  end else
    Result := _precoCompra;
end;

function TEstoque.getPrecoVenda: Double;
begin
  totalEstoque := QVenda;
  novoCusto    := (PVenda * QVenda);
  if ((totalEstoque + _qtdeVenda) > 0) then
  begin
    novoCusto    := (novoCusto + (_precoVenda * _qtdeVenda))/(totalEstoque + _qtdeVenda);
    Result       := novoCusto;
  end else
    Result := _precoVenda;
end;

function TEstoque.getQtdeCompra: Double;
begin
  Result := _qtdeCompra + QCompra
end;

function TEstoque.getQtdeDevCompra: Double;
begin
  Result := _qtdeDevCompra + QDevCompra;
end;

function TEstoque.getQtdeDevVenda: Double;
begin
  Result := _qtdeDevVenda + QDevVenda;
end;

function TEstoque.getQtdeEntrada: Double;
begin
  Result := _qtdeEntrada + QEntrada;
end;

function TEstoque.getQtdeInventario: Double;
begin
  Result := _qtdeInventario + QInventario;
end;

function TEstoque.getQtdePerda: Double;
begin
  Result := _qtdePerda + QPerda;
end;

function TEstoque.getQtdeSaida: Double;
begin
  Result := _qtdeSaida + QSaida;
end;

function TEstoque.getQtdeVenda: Double;
begin
  Result := _qtdeVenda + QVenda;
end;

function TEstoque.getSaldoAnterior: Double;
begin
  Result := _saldoAnterior;
end;

function TEstoque.getStatus: String;
begin
  Result := _status;
end;

function TEstoque.getUn: String;
begin
  Result := _un;
end;

function TEstoque.inserirMes: Boolean;
begin
  QCompra       := 0;
  QEntrada      := 0;
  QCompra       := 0;
  QDevCompra    := 0;
  QDevVenda     := 0;
  QSaida        := 0;
  QVenda        := 0;
  QPerda        := 0;
  QSaldo        := 0;
  QInventario   := 0;
  PCusto        := 0;
  PCompra       := 0;
  PCompraUltima := 0;
  PVenda        := 0;
  QSaldoAnterior:= 0;
  // Valida se o Tipo de Movimento e Valido
  if (validoMovimento = False) then
  begin
    exit;      // SE O CAMPO BAIXAMOVIMENTO na TABELA NATUREZAOPERACAO estiver <> de 0 ou 1 ent�o n�o executa a rotina
  end;
  Try
    Result := false;
    DecimalSeparator := '.';
    if (jaFoiInserido = True) then   // Ja tenho dados no mes so Adiciono
    begin
      sqlStr := 'UPDATE ESTOQUEMES SET ';
      sqlStr := sqlStr + '  QTDEENTRADA       = ' + FloatToStr(Self.QtdeEntrada);
      sqlStr := sqlStr + ', QTDECOMPRA        = ' + FloatToStr(Self.QtdeCompra);
      sqlStr := sqlStr + ', QTDEDEVCOMPRA     = ' + FloatToStr(Self.QtdeDevCompra);
      sqlStr := sqlStr + ', QTDEDEVVENDA      = ' + FloatToStr(Self.QtdeDevVenda);
      sqlStr := sqlStr + ', QTDESAIDA         = ' + FloatToStr(Self.QtdeSaida);
      sqlStr := sqlStr + ', QTDEVENDA         = ' + FloatToStr(Self.QtdeVenda);
      sqlStr := sqlStr + ', QTDEPERDA         = ' + FloatToStr(Self.QtdePerda);
      sqlStr := sqlStr + ', QTDEINVENTARIO    = ' + FloatToStr(Self.QtdeInventario);
      sqlStr := sqlStr + ', PRECOCUSTO        = ' + FloatToStr(Self.PrecoCusto);
      sqlStr := sqlStr + ', PRECOCOMPRA       = ' + FloatToStr(Self.PrecoCompra);
      sqlStr := sqlStr + ', PRECOCOMPRAULTIMA = ' + FloatToStr(Self.PrecoCompraUltima);
      sqlStr := sqlStr + ', PRECOVENDA        = ' + FloatToStr(Self.PrecoVenda);
      sqlStr := sqlStr + ' WHERE CODPRODUTO   = ' + IntToStr(Self.CodProduto);
      sqlStr := sqlStr + '   AND LOTE         = ' + QuotedStr(Self.Lote);
      sqlStr := sqlStr + '   AND MESANO       = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.MesAno));
      sqlStr := sqlStr + '   AND CENTROCUSTO  = ' + IntToStr(Self.CentroCusto);
    end
    else begin  // Primeira Entrada no Mes
      sqlStr := 'INSERT INTO ESTOQUEMES (CODPRODUTO, LOTE, MESANO, QTDEENTRADA, ' +
        'QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA, QTDEPERDA, PRECOCUSTO, ' +
        'PRECOCOMPRA, PRECOVENDA, CENTROCUSTO, SALDOMESANTERIOR, PRECOCOMPRAULTIMA, QTDEINVENTARIO,' +
        'DATAVENCIMENTO, DATAFABRICACAO) VALUES (';
      sqlStr := sqlStr + IntToStr(Self.CodProduto) + ', ';
      sqlStr := sqlStr + QuotedStr(Self.Lote) + ', ';
      sqlStr := sqlStr + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.MesAno)) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeEntrada) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeCompra) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeDevCompra) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeDevVenda) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeSaida) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeVenda) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdePerda) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoCusto) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoCompra) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoVenda) + ', ';
      sqlStr := sqlStr + IntToStr(Self.CentroCusto) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.SaldoAnterior) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.PrecoCompraUltima) + ', ';
      sqlStr := sqlStr + FloatToStr(Self.QtdeInventario) + ', ';
      sqlStr := sqlStr + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataVencimento)) + ', ';
      sqlStr := sqlStr + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataFabricacao));
      sqlStr := sqlStr + ')';
    end;
    Try
      DecimalSeparator := '.';
      if (naoInsereEstaData <> Self.MesAno) then
      begin
        //executaSql(sqlStr);
      end;
      //dm.sqlsisAdimin.Commit();

      // Se tiver Movimento no Mes posterior, o Custo tem que ser Refeito
      if (temMesPosterior = True) then
      begin
        // ********************** carregar aqui o preco de custo e o saldo do mes que acabou de ser inserido
        DecimalSeparator := '.';
        QSaldoAnterior := totalEstoque;
        PCustoAnterior := Self.PrecoCusto;
        //corrigeCustoEstoquePosterior;
      end;

      // Atualiza Cadastro de Produtos
      DecimalSeparator := '.';
      //sqlStr := 'UPDATE PRODUTOS SET ESTOQUEATUAL = ' + FloatToStr(Self.QSaldo);

      // Se foi Compra, Atualiza valores
      if (Self.QtdeCompra > 0) then
      begin
        DecimalSeparator := '.';
        sqlStr := sqlStr + ', VALORUNITARIOATUAL = ' + FloatToStr(Self._PrecoCompra);
        if (Self.PrecoCusto < 0) then
          sqlStr := sqlStr + ', PRECOMEDIO = 0 '
        else
          sqlStr := sqlStr + ', PRECOMEDIO         = ' + FloatToStr(Self.PrecoCusto);
        sqlStr := sqlStr + ', DATAULTIMACOMPRA     = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataEntrada));
      end;

      sqlStr := sqlStr + ' WHERE CODPRODUTO = ' + IntToStr(Self.CodProduto);
      //executaSql(sqlStr);

      if (Self.Status = '9') then
      begin
        sqlStr := 'UPDATE MOVIMENTODETALHE SET STATUS = ' + QuotedStr(Self.Status) +
                  ' WHERE CODDETALHE = ' + IntToStr(Self.CodDetalhe);

        //executaSql(sqlStr);
      end;
      if (Self.Status = '0') then   // Excluido a Finalizacao
      begin
        sqlStr := 'UPDATE MOVIMENTODETALHE SET STATUS = null, BAIXA = null WHERE CODDETALHE = ' + IntToStr(Self.CodDetalhe);
        //executaSql(sqlStr);
      end;

      DecimalSeparator := ',';
      Result := True;
    Except
      on E : Exception do
      begin
        ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
        DecimalSeparator := ',';
      end;
    end;
  Except
    on E : Exception do
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
  end;
end;

function TEstoque.jaFoiInserido(): Boolean;
var sqlBuscaI: TSqlQuery;
begin
  Try
    PCustoAnterior     := 0;
    QSaldoAnterior     := 0;

    sqlBuscai := TSqlQuery.Create(nil);
    sqlBuscai.SQLConnection := dm.sqlsisAdimin;
    // Verificando se existe Lancamento em Mes Posterior o mes que esta inserindo
    sqlBuscai.sql.Clear;
    sqlBuscai.sql.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
      'QTDEPERDA, PRECOCUSTO, PRECOVENDA, SALDOESTOQUE, PRECOCOMPRAULTIMA, QTDEINVENTARIO ' +
      ' FROM ESTOQUEMES ' +
      'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
      '  AND LOTE        = ' + QuotedStr(Self.Lote) +
      '  AND MESANO      > ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
      '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto));
    sqlBuscai.Open;
    temMesPosterior := False;
    if (not sqlBuscai.IsEmpty) then
      temMesPosterior := True;

    // Verificando se ja foi feito algum lancameno no mes do lancamento
    if (sqlBuscai.Active) then
      sqlBuscai.Close;
    sqlBuscai.sql.Clear;
    sqlBuscai.sql.Add('SELECT QTDEENTRADA, QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA,' +
      'QTDEPERDA, PRECOCUSTO, PRECOVENDA, SALDOESTOQUE, PRECOCOMPRA, PRECOCOMPRAULTIMA, QTDEINVENTARIO ' +
      ' FROM ESTOQUEMES ' +
      'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
      '  AND LOTE        = ' + QuotedStr(Self.Lote) +
      '  AND MESANO      = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.MesAno)) +
      '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto));
    sqlBuscai.Open;
    jaConsultado := 'SIM';
    if (sqlBuscai.IsEmpty) then
    begin
      Result := False;
      QEntrada      := 0;
      QCompra       := 0;
      QDevCompra    := 0;
      QDevVenda     := 0;
      QSaida        := 0;
      QVenda        := 0;
      QPerda        := 0;
      QSaldo        := 0;
      QInventario   := 0;
      PCusto        := 0;
      PCompra       := 0;
      PCompraUltima := 0;
      PVenda        := 0;
      QSaldoAnterior:= 0;
      // Nao Encontrou mes atual , busca Qtdes e Precos do Mes Anterior
      sqlBuscai.Close;
      sqlBuscai.sql.Clear;
      sqlBuscai.sql.Add('SELECT FIRST 1 PRECOCUSTO, SALDOESTOQUE, MESANO' +
        ' FROM ESTOQUEMES ' +
        'WHERE CODPRODUTO  = ' + IntToStr(Self.CodProduto) +
        '  AND LOTE        = ' + QuotedStr(Self.Lote) +
        '  AND MESANO      < ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.MesAno)) +
        '  AND CENTROCUSTO = ' + IntToStr(Self.CentroCusto)+
        ' ORDER BY MESANO DESC');
      sqlBuscai.Open;
      if (sqlBuscai.IsEmpty) then      // Nao achou nada no sistema
      begin
        PCustoAnterior     := 0;
        QSaldoAnterior     := 0;
        Self.SaldoAnterior := 0;
      end else begin
        PCustoAnterior := sqlBuscai.FieldByName('PRECOCUSTO').AsFloat;
        QSaldoAnterior := sqlBuscai.FieldByName('SALDOESTOQUE').AsFloat;
        Self.SaldoAnterior := QSaldoAnterior;
        //Self.PrecoCusto    := PCustoAnterior;
      end;
      resultadoJaInserido := True;
    end
    else begin
      Result := True;
      resultadoJaInserido := True;
      QEntrada      := sqlBuscai.FieldByName('QTDEENTRADA').AsFloat;
      QCompra       := sqlBuscai.FieldByName('QTDECOMPRA').AsFloat;
      QDevCompra    := sqlBuscai.FieldByName('QTDEDEVCOMPRA').AsFloat;
      QDevVenda     := sqlBuscai.FieldByName('QTDEDEVVENDA').AsFloat;
      QSaida        := sqlBuscai.FieldByName('QTDESAIDA').AsFloat;
      QVenda        := sqlBuscai.FieldByName('QTDEVENDA').AsFloat;
      QPerda        := sqlBuscai.FieldByName('QTDEPERDA').AsFloat;
      QInventario   := sqlBuscai.FieldByName('QTDEINVENTARIO').AsFloat;
      PCusto        := sqlBuscai.FieldByName('PRECOCUSTO').AsFloat;
      PCompra       := sqlBuscai.FieldByName('PRECOCOMPRA').AsFloat;
      PCompraUltima := sqlBuscai.FieldByName('PRECOCOMPRAULTIMA').AsFloat;
      PVenda        := sqlBuscai.FieldByName('PRECOVENDA').AsFloat;
      QSaldo        := sqlBuscai.FieldByName('SALDOESTOQUE').AsFloat;
    end;
  Finally
    sqlBuscai.Destroy;
  end;
end;

function TEstoque.mesAnterior(MesAtual: TDateTime): TDateTime;
  var    ano, mes, dia: word;
begin
  decodedate(MesAtual, ano, mes, dia);
  dia := 1;
  mes := mes - 1;
  if (mes = 0) then
    mes := 12;
  mesAnoAnterior := encodedate(ano, mes, dia);
  mes := mes + 2; // Mes Anterior + 2
  if (mes > 12) then
    mes := 1;
  mesAnoPosterior := encodedate(ano, mes, dia);
  Result := mesAnoAnterior;
end;

procedure TEstoque.setCentroCusto(const Value: Integer);
begin
  _centroCusto := Value;
end;

procedure TEstoque.setCodDetalhe(const Value: Integer);
begin
  _codDetalhe := Value;
end;

procedure TEstoque.setCodProduto(const Value: Integer);
begin
  _codProduto := Value;
end;

procedure TEstoque.setDataFabricacao(const Value: TDateTime);
begin
  _dataFabricacao := Value;
  if (value = 0) then
    _dataFabricacao := StrtoDate('01/01/01');
end;

procedure TEstoque.setDataVencimento(const Value: TDateTime);
begin
  _dataVencimento := Value;
  if (value = 0) then
    _dataVencimento := StrtoDate('01/01/01');
end;

procedure TEstoque.setLote(const Value: String);
begin
  _lote := Trim(Value);
end;


procedure TEstoque.setMesAno(const Value: TDateTime);
  var    anoa, mesa, diaa: word;
begin
  decodedate(Value, anoa, mesa, diaa);
  DataEntrada := Value;
  diaa := 1;
  _mesAno := EncodeDate(anoa, mesa, diaa);
  naoInsereEstaData := _mesAno;
end;

procedure TEstoque.setMesAnoPost(const Value: TDateTime);
begin
  _mesAnoPost := Value;
end;

procedure TEstoque.setPrecoCompra(const Value: Double);
begin
  _precoCompra := Value;
end;

procedure TEstoque.setPrecoCompraUltima(const Value: Double);
begin
  _precoCompraUltima := Value;
end;

procedure TEstoque.setPrecoCusto(const Value: Double);
begin
  _precoCusto := Value;
end;

procedure TEstoque.setPrecoVenda(const Value: Double);
begin
  _precoVenda := Value;
end;

procedure TEstoque.setQtdeCompra(const Value: Double);
begin
  _qtdeCompra := Value;
end;

procedure TEstoque.setQtdeDevCompra(const Value: Double);
begin
  _qtdeDevCompra := Value;
end;

procedure TEstoque.setQtdeDevVenda(const Value: Double);
begin
  _qtdeDevVenda := Value;
end;

procedure TEstoque.setQtdeEntrada(const Value: Double);
begin
  _qtdeEntrada := Value;
end;

procedure TEstoque.setQtdeInventario(const Value: Double);
begin
  _qtdeInventario := Value;
end;

procedure TEstoque.setQtdePerda(const Value: Double);
begin
  _qtdePerda := Value;
end;

procedure TEstoque.setQtdeSaida(const Value: Double);
begin
  _qtdeSaida := Value;
end;

procedure TEstoque.setQtdeVenda(const Value: Double);
begin
  _qtdeVenda := Value;
end;

procedure TEstoque.setSaldoAnterior(const Value: Double);
begin
  _saldoAnterior := Value;
end;

procedure TEstoque.setStatus(const Value: String);
begin
  _status := Trim(Value);
end;

procedure TEstoque.setUn(const Value: String);
begin
  _un := Trim(Value);
end;

function TEstoque.validoMovimento: Boolean;
var sqlBuscaEstoque: TSqlQuery;
strd : string;
begin
  Try
    sqlBuscaEstoque := TSqlQuery.Create(nil);
    sqlBuscaEstoque.SQLConnection := dm.sqlsisAdimin;
    Result := False;
    strd := 'SELECT BAIXAMOVIMENTO, MD.STATUS ' +
      ' FROM MOVIMENTO M, MOVIMENTODETALHE MD, NATUREZAOPERACAO NATOPER ' +
      'WHERE M.CODMOVIMENTO = MD.CODMOVIMENTO ' +
      '  AND M.CODNATUREZA  = NATOPER.CODNATUREZA  ' +
      '  AND MD.CODDETALHE  = ' + IntToStr(Self.CodDetalhe);
    sqlBuscaEstoque.sql.Add(strd);
    sqlBuscaEstoque.Open;
    if (not sqlBuscaEstoque.IsEmpty) then      // N�o achou nada no sistema
    begin
      if (((sqlBuscaEstoque.FieldByName('BAIXAMOVIMENTO').AsInteger = 0)   or
          (sqlBuscaEstoque.FieldByName('BAIXAMOVIMENTO').AsInteger = 1)) and
          (sqlBuscaEstoque.FieldByName('STATUS').IsNull)) then
      begin
        Result := True;
      end;
      // Ve se e Exclusao
      if ((Self.QtdeCompra + Self.QtdeVenda + Self.QtdeEntrada + Self.QtdeSaida) < 0) then
        Result := True;
    end;
  Finally
    sqlBuscaEstoque.Destroy;
  end;
end;

function TEstoque.verEstoque(MesAno: TDateTime): Boolean;
begin
  Result := false;
end;

end.
