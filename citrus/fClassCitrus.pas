{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit fClassCitrus;

interface
uses
  SysUtils, DBXpress, uUtils, DB, SqlExpr, Dialogs;
type
  TCompras = class
  {Cria a classe para compra }
  private
    FCodProdutor : string;
    FNomeProdutor : string;
    FDataCompra: TDateTime;
    FCodProduto: string;
    FValorCx: double;
    FQuantidade: double;
    FCentroResultado: smallint;
    FDataVencimento: TDateTime;
    FCodComprador: integer;
    FCodColhedor: string;
    FContaDespesa: String;
    FCodCliente: String;
    FDataVencimentoV: TDateTime;
    FDataVenda: TDateTime;
    FVlrVenda: double;
    FQtdeVenda: double;
    FCodVenda: integer;
    FCodMovimento: String;
    FCodPagamento: integer;
    FVlrColhedor: Double;
    FDataPagFrete: TDateTime;
    FVlrFrete: Double;
    FCodFretista: String;
    FContaDespesaFrete: String;
    FDataPagColhedor: TDateTime;
    FCFO: String;
    procedure SetCodProdutor(Value: string);
    function getCodProdutor : string;
    procedure SetNomeProdutor(val : string);
    function getNomeProdutor : string;
    procedure SetDataCompra(const Value: TDateTime);
    procedure SetCodProduto(const Value: string);
    function getQuantidade: double;
    function getValorCx: double;
    procedure SetQuantidade(const Value: double);
    procedure SetValorCx(const Value: double);
    procedure SetCentroResultado(const Value: smallint);
    procedure SetDataVencimento(const Value: TDateTime);
    procedure SetCodComprador(const Value: integer);
    procedure SetCodColhedor(const Value: string);
    procedure SetContaDespesa(const Value: String);
    procedure SetCodCliente(const Value: String);
    procedure SetDataVencimentoV(const Value: TDateTime);
    procedure SetDataVenda(const Value: TDateTime);
    procedure SetQtdeVenda(const Value: double);
    procedure SetVlrVenda(const Value: double);
    procedure SetCodMovimento(const Value: String);
    procedure SetCodPagamento(const Value: integer);
    procedure SetCodVenda(const Value: integer);
    procedure SetVlrColhedor(const Value: Double);
    procedure SetDataPagFrete(const Value: TDateTime);
    procedure SetVlrFrete(const Value: Double);
    procedure SetCodFretista(const Value: String);
    procedure SetContaDespesaFrete(const Value: String);
    procedure SetDataPagColhedor(const Value: TDateTime);
    procedure SetCFO(const Value: String);
    function CalculaQtdeCFO : double;
  public
    property CodProdutor : string read getCodProdutor write SetCodProdutor;
    property NomeProdutor : string read getNomeProdutor write SetNomeProdutor;
    property Quantidade : double read FQuantidade write SetQuantidade;
    property ValorCx : double read FValorCx write SetValorCx;
    procedure InsereCompra;
    property DataCompra : TDateTime read FDataCompra write SetDataCompra;
    property CodProduto : string read FCodProduto write SetCodProduto;
    property CentroResultado : smallint read FCentroResultado write SetCentroResultado;
    property DataVencimento: TDateTime read FDataVencimento write SetDataVencimento;
    property CodComprador: integer read FCodComprador write SetCodComprador;
    property CodColhedor: string read FCodColhedor write SetCodColhedor;
    property ContaDespesa: String read FContaDespesa write SetContaDespesa;
    property CodCliente: String read FCodCliente write SetCodCliente;
    property DataVenda: TDateTime read FDataVenda write SetDataVenda;
    property DataVencimentoV: TDateTime read FDataVencimentoV write SetDataVencimentoV;
    property QtdeVenda : double read FQtdeVenda write SetQtdeVenda;
    property VlrVenda: double read FVlrVenda write SetVlrVenda;
    property CodMovimento: string read FCodMovimento write SetCodMovimento;
    property CodPagamento: integer read FCodPagamento write SetCodPagamento;
    property CodVenda: integer read FCodVenda write SetCodVenda;
    property VlrColhedor : Double read FVlrColhedor write SetVlrColhedor;
    property DataPagFrete: TDateTime read FDataPagFrete write SetDataPagFrete;
    property VlrFrete: Double read FVlrFrete write SetVlrFrete;
    property CodFretista: String read FCodFretista write SetCodFretista;
    property ContaDespesaFrete: String read FContaDespesaFrete write SetContaDespesaFrete;
    property DataPagColhedor: TDateTime read FDataPagColhedor write SetDataPagColhedor;
    procedure InsereDespesa;
    procedure InsereVenda;
    procedure InsereDespesaFrete;
    procedure AlteraCompra;
    procedure AlteraDespesa;
    procedure AlteraVenda;
    procedure AlteraDespesaFrete;
    property CFO : String read FCFO write SetCFO;
    procedure ExcluiLancamento;
  end;

implementation

uses UDm, uDmCitrus;

{ TCompras }

function TCompras.getCodProdutor: string;
begin
  Result := FCodProdutor;
end;

function TCompras.getNomeProdutor: string;
begin
  Result := FNomeProdutor;
end;

function TCompras.getQuantidade: Double;
begin
  DecimalSeparator := '.';
  Result := FQuantidade;
end;

function TCompras.getValorCx: Double;
begin
  Result := FValorCx;
end;


procedure TCompras.InsereCompra;
var sqlInsere : string;
  util : TUtils;
begin
  DecimalSeparator := '.';
  util := TUtils.Create;
  FCodMovimento := util.buscaChave('GENMOV');
  //----------------------------------------------------------------------------
  // Insere Tab. Movimento
  sqlInsere := 'INSERT INTO MOVIMENTO (CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE' +
    ',CODNATUREZA, STATUS, CODUSUARIO, CODFORNECEDOR, CODALMOXARIFADO) VALUES (' +
    FCodMovimento +
    ', ' +  QuotedStr(FormatDateTime('mm/dd/yyyy', FDataCompra)) +
    ', 0' + //Código Cliente
    ', 4' + // Natureza (Compra)
    ', 0' + // Status
    ', ' + IntToStr(dm.cds_usuario_cadastroCODUSUARIO.asInteger) + // Usuário
    ', ' + FCodProdutor +  //Código Produtor
    ', ' + IntToStr(FCentroResultado) +
    ')';
  dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
  //----------------------------------------------------------------------------
  // Insere Tab. MovimentoDetalhe
  sqlInsere := 'INSERT INTO MOVIMENTODETALHE(CODDETALHE, CODMOVIMENTO' +
    ', CODPRODUTO, QUANTIDADE, PRECO) VALUES(' +
    'GEN_ID(GENMOVDET, 1)' + //codDetalhe
    ', ' + FcodMovimento +
    ', ' + FCodProduto +
    ', ' + FloatToStr(FQuantidade) +
    ', ' + FloatToStr(FValorCx) +
    ')';
  dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
  //----------------------------------------------------------------------------
  // Insere Tab. Compra
  sqlInsere := 'INSERT INTO COMPRA(CODCOMPRA, CODMOVIMENTO' +
    ', CODFORNECEDOR, DATACOMPRA, DATAVENCIMENTO, CODUSUARIO, VALOR' +
    ',CODCOMPRADOR, CODCCUSTO, N_BOLETO, NOTAFISCAL) VALUES(' +
    'GEN_ID(GEN_COD_COMPRA, 1)' + //codCompra
    ', ' + FcodMovimento +
    ', ' + FCodProdutor +  //Código Produtor
    ', ' +  QuotedStr(FormatDateTime('mm/dd/yyyy', FDataCompra)) +
    ', ' +  QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVencimento)) +
    ', ' + IntToStr(dm.cds_usuario_cadastroCODUSUARIO.asInteger) + // Usuário
    ', ' + FloatToStr(FQuantidade*FValorCx) +
    ', ' + IntToStr(FCodComprador) +
    ', ' + IntToStr(FCentroResultado) +
    ', ' + QuotedStr(FCFO) +  // Código CFO
    ', ' + FcodMovimento + // NotaFiscal
    ')';
  dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
  //----------------------------------------------------------------------------
  //----------------------------------------------------------------------------
  // Atualiza a Tab. LOTE (CFO)

  sqlInsere := 'UPDATE LOTES SET ESTOQUE = ' + FloatToStr(CalculaQtdeCFO) +
    ' WHERE LOTE =  ' + QuotedStr(FCFO);

  dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
  //----------------------------------------------------------------------------

  sqlInsere := '';
  DecimalSeparator := ',';
end;

procedure TCompras.SetCentroResultado(const Value: smallint);
begin
  FCentroResultado := Value;
end;

procedure TCompras.SetCodComprador(const Value: integer);
begin
  if (Value > 0) then
    FCodComprador := Value
  else
    raise Exception.Create('Comprador não informado.');
end;

procedure TCompras.SetCodProduto(const Value: string);
begin
  if (Value <> '') then
    FCodProduto := Value
  else
    raise Exception.Create('Produto não informado.');
end;

procedure TCompras.SetCodProdutor(Value: string);
begin
  if (Value <> '') then
    FCodProdutor := Value
  else
    raise Exception.Create('Produtor não informado.');
end;

procedure TCompras.SetDataCompra(const Value: TDateTime);
begin
  FDataCompra := Value;
end;

procedure TCompras.SetDataVencimento(const Value: TDateTime);
begin
  FDataVencimento := Value;
end;

procedure TCompras.SetNomeProdutor(val: string);
begin
  FNomeProdutor := val;
end;

procedure TCompras.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
end;

procedure TCompras.SetValorCx(const Value: Double);
begin
  FValorCx := Value;
end;

{ Colhedor }
procedure TCompras.InsereDespesa;
var sqlInsereD: string;
begin
  DecimalSeparator := '.';
  //----------------------------------------------------------------------------
  // Insere Tab. Pagamento
  //
  sqlInsereD := 'INSERT INTO PAGAMENTO (CODPAGAMENTO, EMISSAO, DATAVENCIMENTO' +
    ',CODFORNECEDOR ' +
    ',CONTACREDITO, TITULO, STATUS, CODUSUARIO, FORMAPAGAMENTO, CODALMOXARIFADO' +
    ',VIA,PARCELAS, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, OUTRO_DEBITO, DUP_REC_NF' +
    ', VALORRECEBIDO , JUROS, DESCONTO, PERDA , TROCA , FUNRURAL, OUTRO_CREDITO)' +
    ' VALUES (GEN_ID(GEN_COD_PAGAMENTO,1) ' +
    ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
    ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataPagColhedor)) +
    ', ' + FCodColhedor +
    ', ' + FContaDespesa +
    ', ' + QuotedStr(FcodMovimento + '-C')  + //Titulo (C de Colheita)
    ', ' + QuotedStr('5-') + // Status
    ', ' + IntToStr(dm.cds_usuario_cadastroCODUSUARIO.asInteger) + // Usuário
    ', ' + QuotedStr('2') + // FormaPagamento
    ', ' + IntToStr(FCentroResultado) +
    ', 1, 1' +  // Via , Parcelas
    ', ' + FloatToStr(FVlrColhedor) + // Valor_prim_via
    ', ' + FloatToStr(FVlrColhedor) + // Valor_Resto
    ', ' + FloatToStr(FVlrColhedor) + // ValorTitulo
    ', ' + FloatToStr(FQtdeVenda) + // Qtde de Cx vendida.
    ', ' + QuotedStr(FCFO) + // Numero do LOTE
    ', 0,0,0,0,0,0,0)';
  dm.sqlsisAdimin.ExecuteDirect(sqlInsereD);
  sqlInsereD := '';
  //----------------------------------------------------------------------------
  DecimalSeparator := ',';
end;


procedure TCompras.SetCodColhedor(const Value: string);
begin
  FCodColhedor := Value;
end;

procedure TCompras.SetContaDespesa(const Value: String);
begin
  FContaDespesa := Value;
end;

procedure TCompras.InsereVenda;
var sqlInsereV, codMovimentoV : string;
  utilv : TUtils;
  TD: TTransactionDesc;
begin
  if (FCodCliente <> '') then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DecimalSeparator := '.';
    utilv := TUtils.Create;
    codMovimentoV := utilv.buscaChave('GENMOV');
    //----------------------------------------------------------------------------
    // Insere Tab. Movimento
    sqlInsereV := 'INSERT INTO MOVIMENTO (CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE' +
      ',CODNATUREZA, STATUS, CODUSUARIO, CODALMOXARIFADO) VALUES (' +
      codMovimentoV +
      ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataCompra)) +
      ', ' + FCodCliente +  //Código Cliente
      ', 3' + // Natureza (Venda)
      ', 0' + // Status
      ', ' + IntToStr(dm.cds_usuario_cadastroCODUSUARIO.asInteger) + // Usuário
      ', ' + IntToStr(FCentroResultado) +
      ')';
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(sqlInsereV);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro no sistema(TAB Movimento), a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;
    //----------------------------------------------------------------------------
    // Insere Tab. MovimentoDetalhe
    sqlInsereV := 'INSERT INTO MOVIMENTODETALHE(CODDETALHE, CODMOVIMENTO' +
      ', CODPRODUTO, QUANTIDADE, PRECO) VALUES(' +
      'GEN_ID(GENMOVDET, 1)' + //codDetalhe
      ', ' + codMovimentoV +
      ', ' + FCodProduto +
      ', ' + FloatToStr(FQtdeVenda) +
      ', ' + FloatToStr(FVlrVenda) +
      ')';
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(sqlInsereV);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro no sistema(TAB MovimentoDetalhe), a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;

    //----------------------------------------------------------------------------
    // Insere Tab. Venda
    FCodVenda := StrToInt(utilv.buscaChave('GENVENDA'));
    sqlInsereV := 'INSERT INTO VENDA(CODVENDA, CODMOVIMENTO' +
      ', CODCLIENTE, DATAVENDA, DATAVENCIMENTO, CODUSUARIO, VALOR' +
      ',CODVENDEDOR, CODCCUSTO, NOTAFISCAL, SERIE) VALUES(' +
      IntToStr(FCodVenda) + //codVenda
      ', ' + codMovimentoV +
      ', ' + FCodCliente +  //Código Cliente
      ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
      ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVencimentoV)) +
      ', ' + IntToStr(dm.cds_usuario_cadastroCODUSUARIO.asInteger) + // Usuário
      ', ' + FloatToStr(FQtdeVenda*FVlrVenda) +
      ', ' + IntToStr(dm.cds_usuario_cadastroCODUSUARIO.asInteger) + // Vendedor
      ', ' + IntToStr(FCentroResultado) +
      ', ' + FcodMovimento +
      ', ' + QuotedStr('V') + //Titulo (V de Venda)
      ')';
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(sqlInsereV);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro no sistema(série não existe), TAB Venda, a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;
    //----------------------------------------------------------------------------
    sqlInsereV := '';
    DecimalSeparator := ',';
  end;
end;

procedure TCompras.SetCodCliente(const Value: String);
begin
  FCodCliente := Value;
end;

procedure TCompras.SetDataVencimentoV(const Value: TDateTime);
begin
  FDataVencimentoV := Value;
end;

procedure TCompras.SetDataVenda(const Value: TDateTime);
begin
  FDataVenda := Value;
end;

procedure TCompras.SetQtdeVenda(const Value: double);
begin
  FQtdeVenda := Value;
end;

procedure TCompras.SetVlrVenda(const Value: double);
begin
  FVlrVenda := Value;
end;

procedure TCompras.AlteraCompra;
var sqlAltera : string;
begin
  // Altera Compra
  DecimalSeparator := '.';
  //----------------------------------------------------------------------------
  // Altera Tab. Movimento
  sqlAltera := 'UPDATE MOVIMENTO SET ' +
    ' DATAMOVIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataCompra)) +
    ', CODFORNECEDOR = ' + FCodProdutor +  //Código Produtor
    ', CODALMOXARIFADO = ' + IntToStr(FCentroResultado) +
    ' Where CODMOVIMENTO = ' + FCodMovimento;
  dm.sqlsisAdimin.ExecuteDirect(sqlAltera);
  //----------------------------------------------------------------------------
  // Altera Tab. MovimentoDetalhe
  sqlAltera := 'UPDATE MOVIMENTODETALHE SET ' +
    ' CODPRODUTO = ' + FCodProduto +
    ', QUANTIDADE = ' + FloatToStr(FQuantidade) +
    ', PRECO = ' + FloatToStr(FValorCx) +
    ' Where CODMOVIMENTO = ' + FCodMovimento;
  dm.sqlsisAdimin.ExecuteDirect(sqlAltera);
  //----------------------------------------------------------------------------
  // Altera Tab. Compra
  sqlAltera := 'UPDATE COMPRA SET ' +
    ' CODFORNECEDOR = ' + FCodProdutor +  //Código Produtor
    ', DATACOMPRA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataCompra)) +
    ', DATAVENCIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVencimento)) +
    ', VALOR = ' + FloatToStr(FQuantidade*FValorCx) +
    ', CODCOMPRADOR = ' + IntToStr(FCodComprador) +
    ', CODCCUSTO = ' + IntToStr(FCentroResultado) +
    ', N_BOLETO = ' + QuotedStr(FCFO) +
    ' WHERE CODMOVIMENTO = ' + FCodMovimento;
  dm.sqlsisAdimin.ExecuteDirect(sqlAltera);
  //----------------------------------------------------------------------------
  //----------------------------------------------------------------------------
  // Atualiza a Tab. LOTE (CFO)

  sqlAltera := 'UPDATE LOTES SET ESTOQUE = ' + FloatToStr(CalculaQtdeCFO) +
    ' WHERE LOTE =  ' + QuotedStr(FCFO);

  dm.sqlsisAdimin.ExecuteDirect(sqlAltera);
  //----------------------------------------------------------------------------

  sqlAltera := '';
  DecimalSeparator := ',';
end;

procedure TCompras.AlteraDespesa;
var sqlAlteraD: string;
begin
  // Altera Despesa Colheita
  DecimalSeparator := '.';
  //----------------------------------------------------------------------------
  // Altera Tab. Pagamento
  sqlAlteraD := 'UPDATE PAGAMENTO SET ' +
    ' EMISSAO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
    ', DATAVENCIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataPagColhedor)) +
    ', CODFORNECEDOR = ' + FCodColhedor +
    ', CONTACREDITO = ' + FContaDespesa +
    ', TITULO = ' + QuotedStr(FCodMovimento + '-C') +  //Titulo (C de Colheita)
    ', CODALMOXARIFADO = ' + IntToStr(FCentroResultado) +
    ', VALOR_PRIM_VIA = ' + FloatToStr(FVlrColhedor) +
    ', VALOR_RESTO = ' + FloatToStr(FVlrColhedor) +
    ', VALORTITULO = ' + FloatToStr(FVlrColhedor) +
    ', OUTRO_DEBITO = ' + FloatToStr(FQtdeVenda) +
    ', CONTADEBITO = ' + FCodProdutor +
    ' WHERE TITULO = ' + QuotedStr(FCodMovimento + '-C');
  dm.sqlsisAdimin.ExecuteDirect(sqlAlteraD);
  sqlAlteraD := '';
  //----------------------------------------------------------------------------
  DecimalSeparator := ',';
end;

procedure TCompras.AlteraVenda;
var sqlAlteraV : string;
begin
  // Altera Venda
  DecimalSeparator := '.';
  //----------------------------------------------------------------------------
  // Altera Tab. Movimento
  sqlAlteraV := 'UPDATE MOVIMENTO SET ' +
    ' DATAMOVIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataCompra)) +
    ', CODCLIENTE = ' + FCodCliente +  //Código Produtor
    ', CODALMOXARIFADO = ' + IntToStr(FCentroResultado) +
    ' Where CODMOVIMENTO = ' + FCodMovimento;
  dm.sqlsisAdimin.ExecuteDirect(sqlAlteraV);
  //----------------------------------------------------------------------------
  // Altera Tab. MovimentoDetalhe
  sqlAlteraV := 'UPDATE MOVIMENTODETALHE SET ' +
    ' CODPRODUTO = ' + FCodProduto +
    ', QUANTIDADE = ' + FloatToStr(FQtdeVenda) +
    ', PRECO = ' + FloatToStr(FVlrVenda) +
    ' Where CODMOVIMENTO = ' + FCodMovimento;
  dm.sqlsisAdimin.ExecuteDirect(sqlAlteraV);
  //----------------------------------------------------------------------------
  // Altera Tab. Venda
  sqlAlteraV := 'UPDATE VENDA SET ' +
    ' CODCLIENTE = ' + FCodCliente +  //Código Produtor
    ', DATAVENDA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
    ', DATAVENCIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVencimentoV)) +
    ', VALOR = ' + FloatToStr(FVlrVenda*FQtdeVenda) +
    ', CODCCUSTO = ' + IntToStr(FCentroResultado) +
    ', NOTAFISCAL = ' + FCodMovimento +
    ', SERIE = ' + QuotedStr('V') + //Titulo (V de Venda)
    ' WHERE CODMOVIMENTO = ' + FCodMovimento;
  dm.sqlsisAdimin.ExecuteDirect(sqlAlteraV);
  //----------------------------------------------------------------------------

  sqlAlteraV := '';
  DecimalSeparator := ',';

end;

procedure TCompras.SetCodMovimento(const Value: string);
begin
  FCodMovimento := Value;
end;

procedure TCompras.SetCodPagamento(const Value: integer);
begin
  FCodPagamento := Value;
end;

procedure TCompras.SetCodVenda(const Value: integer);
begin
  FCodVenda := Value;
end;

procedure TCompras.SetVlrColhedor(const Value: Double);
begin
  FVlrColhedor := Value;
end;

procedure TCompras.AlteraDespesaFrete;
var sqlAlteraDF: string;
begin
  // Altera Despesa Frete
  DecimalSeparator := '.';
  //----------------------------------------------------------------------------
  // Altera Tab. Pagamento
  sqlAlteraDF := 'UPDATE PAGAMENTO SET ' +
    ' EMISSAO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
    ', DATAVENCIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataPagFrete)) +
    ', CODFORNECEDOR = ' + FCodFretista +
    ', CONTACREDITO = ' + FContaDespesaFrete +
    ', TITULO = ' + QuotedStr(FCodMovimento + '-F') +//Titulo (F de Frete)
    ', CODALMOXARIFADO = ' + IntToStr(FCentroResultado) +
    ', VALOR_PRIM_VIA = ' + FloatToStr(FVlrFrete) +
    ', VALOR_RESTO = ' + FloatToStr(FVlrFrete) +
    ', VALORTITULO = ' + FloatToStr(FVlrFrete) +
    ', OUTRO_DEBITO = ' + FloatToStr(FQtdeVenda) +
    ', CONTADEBITO = ' + FCodProdutor +
    ' WHERE TITULO = ' + QuotedStr(FCodMovimento + '-F');
  dm.sqlsisAdimin.ExecuteDirect(sqlAlteraDF);
  sqlAlteraDF := '';
  //----------------------------------------------------------------------------
  DecimalSeparator := ',';
end;

procedure TCompras.InsereDespesaFrete;
var sqlInsereDF: string;
begin
  // Insere Despesa Frete
  DecimalSeparator := '.';
  //----------------------------------------------------------------------------
  // Insere Tab. Pagamento
  sqlInsereDF := 'INSERT INTO PAGAMENTO (CODPAGAMENTO, EMISSAO, DATAVENCIMENTO' +
    ',CODFORNECEDOR ' +
    ',CONTACREDITO, TITULO, STATUS, CODUSUARIO, FORMAPAGAMENTO, CODALMOXARIFADO' +
    ',VIA,PARCELAS, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, OUTRO_DEBITO, DUP_REC_NF' +
    ', VALORRECEBIDO , JUROS, DESCONTO, PERDA , TROCA , FUNRURAL, OUTRO_CREDITO)' +
    ' VALUES (GEN_ID(GEN_COD_PAGAMENTO,1) ' +
    ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
    ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataPagFrete)) +
    ', ' + FCodFretista +
    ', ' + FContaDespesaFrete +
    ', ' + QuotedStr(FCodMovimento + '-F') + //Titulo  (F de Frete)
    ', ' + QuotedStr('5-') + // Status
    ', ' + IntToStr(dm.usuarioCODUSUARIO.asInteger) + // Usuário
    ', ' + QuotedStr('2') + // FormaPagamento
    ', ' + IntToStr(FCentroResultado) +
    ', 1, 1' +  // Via , Parcelas
    ', ' + FloatToStr(FVlrFrete) + // Valor_prim_via
    ', ' + FloatToStr(FVlrFrete) + // Valor_Resto
    ', ' + FloatToStr(FVlrFrete) + // ValorTitulo
    ', ' + FloatToStr(FQtdeVenda) + // Qtde de Cx vendida.
    ', ' + QuotedStr(FCFO) + // Numero do LOTE
    ', 0,0,0,0,0,0,0)';
  dm.sqlsisAdimin.ExecuteDirect(sqlInsereDF);
  sqlInsereDF := '';
  //----------------------------------------------------------------------------
  DecimalSeparator := ',';
end;

procedure TCompras.SetDataPagFrete(const Value: TDateTime);
begin
  FDataPagFrete := Value;
end;

procedure TCompras.SetVlrFrete(const Value: Double);
begin
  FVlrFrete := Value;
end;

procedure TCompras.SetCodFretista(const Value: String);
begin
  FCodFretista := Value;
end;

procedure TCompras.SetContaDespesaFrete(const Value: String);
begin
  FContaDespesaFrete := Value;
end;

procedure TCompras.SetDataPagColhedor(const Value: TDateTime);
begin
  FDataPagColhedor := Value;
end;

procedure TCompras.SetCFO(const Value: String);
begin
  if (dmCitrus.cdsCFO.Active) then
    dmCitrus.cdsCFO.Close;
  //dmCitrus.cdsCFO.Params.ParamByName('pCodProdutor').AsInteger := StrToInt(FCodProdutor);
  dmCitrus.cdsCFO.CommandText := 'Select * from lotes where lote = ' + QuotedStr(Value);
  dmCitrus.cdsCFO.Open;
  if (dmCitrus.cdsCFO.isEmpty) then
    FCFO := '0';
    //raise Exception.Create('CFO não informado.');
  if (dmCitrus.cdsCFO.locate('LOTE',Value,[loCaseInsensitive])) then
    FCFO := Value
  else
    FCFO := '0';
    //raise Exception.Create('CFO não informado.');
  {if (Value = '') then
    raise Exception.Create('CFO não informado.');}
end;

function TCompras.CalculaQtdeCFO: double;
begin
  if (not dmCitrus.cdsCFO.Active) then
    dmCitrus.cdsCFO.Open;
  if (dmCitrus.cdsCFO.locate('LOTE', FCFO,[loCaseInsensitive])) then
    Result := dmCitrus.cdsCFOESTOQUE.AsFloat - FQuantidade
  else
    Result := 0;
end;

procedure TCompras.ExcluiLancamento;
var sqlDelete: string;
begin
  // Apaga Frete
  sqlDelete := 'DELETE FROM PAGAMENTO  WHERE ' +
    'CODFORNECEDOR = ' + FCodFretista +
    ' and TITULO = ' + QuotedStr(FCodMovimento + '-F') + //Titulo  (F de Frete)
    ' and EMISSAO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
    ' and STATUS = ' + QuotedStr('5-');
  dm.sqlsisAdimin.ExecuteDirect(sqlDelete);

  // Apaga Colheita
  sqlDelete := 'DELETE FROM PAGAMENTO  WHERE ' +
    'CODFORNECEDOR = ' + FCodColhedor +
    ' and TITULO = ' + QuotedStr(FCodMovimento + '-C') + //Titulo  (C de Colhedor)
    ' and EMISSAO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataVenda)) +
    ' and STATUS = ' + QuotedStr('5-');
  dm.sqlsisAdimin.ExecuteDirect(sqlDelete);
end;

end.
