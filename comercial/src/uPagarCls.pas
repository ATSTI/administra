unit uPagarCls;

interface

uses SysUtils, Dialogs, dbXpress, dateUtils, StdCtrls, Classes;

type

  TPagarCls = class(TObject)
  private
    function getCaixa: Integer;
    function getCodFornecedor: Integer;
    function getCodOrigem: Integer;
    function getCodPag: Integer;
    function getCodUsuario: Integer;
    function getCodCompra: Integer;
    function getCodComprador: Integer;
    function getDesconto: Double;
    function getDtBaixa: TDateTime;
    function getDtConsolida: TDateTime;
    function getDtEmissao: TDateTime;
    function getDtPag: TDateTime;
    function getDtVcto: TDateTime;
    function getFormaPag: String;
    function getJuros: Double;
    function getMulta: Double;
    function getNDoc: String;
    function getNParcela: Integer;
    function getObs: String;
    function getOutrosCred: Double;
    function getOutrosDeb: Double;
    function getPrazo: String;
    function getSerie: String;
    function getStatus: String;
    function getValor: Double;
    function getValorPag: Double;
    function getVia: SmallInt;
    procedure setCaixa(const Value: Integer);
    procedure setCodFornecedor(const Value: Integer);
    procedure setCodOrigem(const Value: Integer);
    procedure setCodPag(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setcodCompra(const Value: Integer);
    procedure setCodComprador(const Value: Integer);
    procedure setDesconto(const Value: Double);
    procedure setDtBaixa(const Value: TDateTime);
    procedure setDtConsolida(const Value: TDateTime);
    procedure setDtEmissao(const Value: TDateTime);
    procedure setDtPag(const Value: TDateTime);
    procedure setDtVcto(const Value: TDateTime);
    procedure setFormaPag(const Value: String);
    procedure setJuros(const Value: Double);
    procedure setMulta(const Value: Double);
    procedure setNDoc(const Value: String);
    procedure setNParcela(const Value: Integer);
    procedure setObs(const Value: String);
    procedure setOutrosCred(const Value: Double);
    procedure setOutrosDeb(const Value: Double);
    procedure setPrazo(const Value: String);
    procedure setSerie(const Value: String);
    procedure setStatus(const Value: String);
    procedure setValor(const Value: Double);
    procedure setValorPag(const Value: Double);
    procedure setVia(const Value: SmallInt);
    function executaSql(strSql: String): Boolean;
    function getCodCCusto: Integer;
    procedure setCodCCusto(const Value: Integer);
    function getdataVenc: TStringList;
    procedure setdataVenc(const Value: TStringList);
    function getContaCredito: Integer;
    procedure setContaCredito(const Value: Integer);
    function getCodConciliacao: String;
    procedure setCodConciliacao(const Value: String);

  protected
    //Atributos
    _codCompra     : Integer;
    _CodPag       : Integer;
    _codOrigem    : Integer;
    _contaCredito : Integer;

    _CodFornecedor   : Integer;
    _CodComprador  : Integer;
    _codUsuario   : Integer;

    _codCCusto    : Integer;
    _caixa        : Integer;
    _nParcela     : Integer;
    _via          : SmallInt;

    _dtEmissao    : TDateTime;
    _dtVcto       : TDateTime;
    _dtPag        : TDateTime;
    _dtBaixa      : TDateTime;
    _dtConsolida  : TDateTime;

    _valor        : Double;  // Valor Total
    _valorPag     : Double;  // Valor Recebido
    _desconto     : Double;
    _juros        : Double;
    _multa        : Double;
    _outrosDeb    : Double;
    _outrosCred   : Double;

    _status       : String;
    _titulo       : String;
    _serie        : String;
    _codConciliacao: String;

    _prazo        : String;
    _formaPag     : String;
    _nDoc         : String;
    _obs          : String;

    _datasVenc    : TStringList;

  public
    property codCompra    : Integer read getcodCompra write setcodCompra;
    property CodPag       : Integer read getCodPag write setCodPag;
    property CodOrigem    : Integer read getCodOrigem write setCodOrigem;
    property ContaCredito : Integer read getContaCredito write setContaCredito;

    property CodFornecedor  : Integer read getCodFornecedor write setCodFornecedor;
    property CodUsuario     : Integer read getCodUsuario write setCodUsuario;
    property CodComprador   : Integer read getCodComprador write setCodComprador;

    property CodCCusto   : Integer read getCodCCusto write setCodCCusto;
    property Caixa       : Integer read getCaixa write setCaixa;
    property NParcela    : Integer read getNParcela write setNParcela;
    property Via         : SmallInt read getVia write setVia;

    property DtEmissao   : TDateTime read getDtEmissao write setDtEmissao;
    property DtVcto      : TDateTime read getDtVcto  write setDtVcto;
    property dtPag       : TDateTime read getdtPag   write setdtPag;
    property DtBaixa     : TDateTime read getDtBaixa write setDtBaixa;
    property DtConsolida : TDateTime read getDtConsolida   write setDtConsolida;

    property Valor       : Double read getValor write setValor;
    property valorPag    : Double read getvalorPag write setvalorPag;
    property Desconto    : Double read getDesconto write setDesconto;
    property Juros       : Double read getJuros write setJuros;
    property Multa       : Double read getMulta write setMulta;
    property OutrosDeb   : Double read getOutrosDeb write setOutrosDeb;
    property OutrosCred  : Double read getOutrosCred write setOutrosCred;

    property Status      : String read getStatus write setStatus;
    property Titulo      : String read getSerie  write setSerie;
    property CodConciliaco : String read getCodConciliacao  write setCodConciliacao;
    property Prazo       : String read getPrazo  write setPrazo;
    property FormaPag    : String read getFormaPag  write setFormaPag;
    property NDoc        : String read getNDoc  write setNDoc;
    property Obs         : String read getObs  write setObs;
    property dataVenc    : TStringList read getdataVenc  write setdataVenc;

    //Metodos
    function geraTitulo(CodPagR: Integer; CodCompraR: Integer): Integer;
    function baixaTitulo(VALOR :Double; FUNRURAL: Double; JUROS :Double; DESCONTO: Double; PERDA: Double;
                         DATA : TDateTime; DATAREC : TDateTime; DATACONSOLIDA : TDateTime; FormaPag: String; NDOC: String; CAIXA : Integer;
                         CLIENTE : Integer; STATUS : string;  USERID : Integer): Integer;
    function excluiTitulo(codCompraE: Integer): Boolean;
    function alteraTitulo(codCompraA: Integer): Boolean;
    function cancelabaixa(CLIENTE: Integer; USERID :Integer): Boolean;
    procedure marcarTitulo(codPagamento: Integer; userMarcou: Integer);
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'RECEBIMENTO';

implementation

uses SqlExpr, DB, UDm, DBClient, Math;

{ TReceberCls }

function TPagarCls.alteraTitulo(codCompraA: Integer): Boolean;
begin

end;

function TPagarCls.baixaTitulo( VALOR :Double; FUNRURAL: Double; JUROS :Double; DESCONTO: Double; PERDA: Double;
DATA : TDateTime; DATAREC : TDateTime; DATACONSOLIDA : TDateTime; FormaPag: String; NDOC: String; CAIXA : Integer;
CLIENTE : Integer; STATUS : string; USERID : Integer): Integer;
var  strRec : String;
  CodPagB: Integer;
  VLR_RESTO, VLR, VLRESTO, VLRATUAL, VLPAGO, VLJU, VLFUN, VLDESC, VLPER, VLJUT, VLFUNT, VLDESCT, VLPERT : DOUBLE;
  CodPag : INTEGER;
  sqlBuscaR : TSqlQuery;
begin
  VLRATUAL := (VALOR - FUNRURAL - JUROS + PERDA + DESCONTO);
  VLR_RESTO := 0;
  VLPAGO := (VALOR - JUROS - FUNRURAL);
  VLJUT := JUROS;
  VLFUNT := FUNRURAL;
  VLDESCT := DESCONTO;
  VLPERT := PERDA;

  try
    sqlBuscaR :=  TSqlQuery.Create(nil);
    sqlBuscaR.SQLConnection := dm.sqlsisAdimin;
    strRec := 'SELECT CodPagamento, VALOR_RESTO FROM PAGAMENTO WHERE ' +
      ' CodFornecedor = ' + IntToStr(CLIENTE) + ' AND DP = 0 ' +
      ' AND STATUS IN (' + QuotedStr('5-') + ', ' + QuotedStr('9-') +
      ') and USERID = ' + IntToStr(USERID) + ' order by CodPagamento';
    //strRec := 'SELECT CodPagEBIMENTO, VALOR_RESTO FROM RECEBIMENTO WHERE ' +
    // 'CodPagEBIMENTO = ' + IntToStr(CodPagEBE);
    sqlBuscaR.SQL.Add(strRec);
    sqlBuscaR.Open;
    sqlBuscaR.First;
    while not sqlBuscaR.Eof do
    begin
      CodPag := sqlBuscaR.FieldByName('CodPagamento').AsInteger;
      VLRESTO := sqlBuscaR.FieldByName('VALOR_RESTO').AsFloat;
      if (VLR_RESTO = 0) then
        VLR_RESTO := VLRESTO;
      VLJU := VLJUT - VLJU;
      if (VLJU < 0) then
        VLJU := 0;
      VLJUT := VLJUT - VLJU;
      VLFUN := VLFUNT - VLFUN;
      if (VLFUN < 0) then
        VLFUN := 0;
      VLFUNT := VLFUNT - VLFUN;
      if (VLDESC > VLDESCT) then
         VLDESC := 0;
      VLDESC := VLDESCT - VLDESC;
      if (VLDESC < 0) then
        VLDESC := 0;
      VLDESCT := VLDESCT - VLDESC;
      if (VLPER > VLPERT) then
        VLPER := 0;
      VLPER := VLPERT - VLPER;
      if (VLPER < 0) then
        VLPER := 0;
      VLPERT := VLPERT - VLPER;
      // Valor total a baixar - valor pago = valor atual
      if (VLRATUAL > VLRESTO) then
      begin
        VLRATUAL := VLRATUAL - VLRESTO;
        VLPAGO := VLPAGO - VLRESTO;
        VLR := VLRESTO;
      end
      else begin
        VLR := VLRATUAL;
        VLRATUAL := 0;
      end;
      if ((VLR - VLDESC - VLPER) < 0) then
      begin
        if (VLR = VLDESC) then
        begin
          vlpert := vlper;
          vlper := 0;
        end;
        if (VLR = VLPER) then
        begin
          vldesct := vldesc;
          vldesc := 0;
        end;
        if (VLR < VLDESC) then
        begin
          vldesct := vldesc - VLR;
          vldesc := vlr;
        end;
        if (VLR < VLPER) then
        begin
          vlpert := vlper - VLR;
          vlper := vlr;
        end;

      end;
      DecimalSeparator := '.';
      if (VLR > 0) then
      begin
        strRec :=  'UPDATE PAGAMENTO SET ' +
            'STATUS = ' + QuotedStr(STATUS) +
            ', valorRecebido = ' + FloatToStr(VLR - VLDESC - VLPER) +
            ', VALOR_RESTO = ' + FloatToStr(VLR) +
            ', FormaPagamento = ' + QuotedStr(FormaPag) +
            ', DATABAIXA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATA)) +
            ', DATAPAGAMENTO = ' + QuotedStr(formatdatetime('mm/dd/yy', DATAREC)) +
            ', DATACONSOLIDA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATACONSOLIDA)) +
            ', N_DOCUMENTO = ' + QuotedStr(NDOC) +
            ', CAIXA = ' + IntToStr(CAIXA) +
            ', FUNRURAL = ' + FloatToStr(VLFUN) +
            ', JUROS = ' + FloatToStr(VLJU) +
            ', DESCONTO = ' + FloatToStr(VLDESC) +
            ', PERDA = ' + FloatToStr(VLPER) +
            ',outro_credito = ' + FloatToStr(vldesct) +
            ',outro_debito = ' + FloatToStr(vlpert)  +
            ' WHERE CodPagamento = ' + IntToStr(CodPag);
        executaSql(strRec);
      end;

     // Se Valor e negativo entao baixa o titulo
      if (VALOR < 0) then
      begin
        strRec :=  'UPDATE PAGAMENTO SET ' +
            'STATUS = ' + QuotedStr(STATUS) +
            ', valorRecebido = 0 ' +
            ', VALOR_RESTO = 0 ' +
            ', FormaPagamento = ' + QuotedStr(FormaPag) +
            ', DATABAIXA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATA)) +
            ', DATAPAGAMENTO = ' + QuotedStr(formatdatetime('mm/dd/yy', DATAREC)) +
            ', DATACONSOLIDA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATACONSOLIDA)) +
            ', N_DOCUMENTO = ' + QuotedStr(NDOC) +
            ', CAIXA = ' + IntToStr(CAIXA) +
            ', FUNRURAL = ' + FloatToStr(VLFUN) +
            ', JUROS = ' + FloatToStr(VLJU) +
            ', DESCONTO = ' + FloatToStr(VLDESC) +
            ', PERDA = ' + FloatToStr(VLPER) +
            ',outro_credito = ' + FloatToStr(vldesct) +
            ',outro_debito = ' + FloatToStr(vlpert)  +
            ' WHERE CodPagamento = ' + IntToStr(CodPag);
        executaSql(strRec);
      end;
     sqlBuscaR.Next;
    end;
    VLR_RESTO := VLR_RESTO - (VLR - VLDESC - VLPER);
    Result := 0;
    // Se sobrou algum valor então gera novo titulo
    if (VLR_RESTO > 0.001) then
    begin
        Self.Valor := VLR_RESTO;
        Result := geraTitulo(CodPag, 0);
    end;
  finally
    sqlBuscaR.Free;
  end;
  DecimalSeparator := ',';
end;

function TPagarCls.cancelabaixa(CLIENTE, USERID: Integer): Boolean;
var  CodPag : Integer;
  sqlBuscaR : TSqlQuery;
  strRec : String;
begin
  try
    sqlBuscaR :=  TSqlQuery.Create(nil);
    sqlBuscaR.SQLConnection := dm.sqlsisAdimin;
    strRec := 'SELECT CodPagamento, valorRecebido, DESCONTO, PERDA, FUNRURAL,' +
      ' JUROS ' +
      '  FROM Pagamento ' +
      ' WHERE CodFornecedor = ' + IntToStr(CLIENTE) +
      '   AND DP = 0 ' +
      '   AND STATUS IN (' + QuotedStr('1-') + ', ' + QuotedStr('2-') +
      ', ' + QuotedStr('7-') + ', ' + QuotedStr('9-') + ', ' + QuotedStr('13') +
      ')  AND USERID = ' + IntToStr(USERID) +
      ' order by CodPagamento';
    sqlBuscaR.SQL.Add(strRec);
    sqlBuscaR.Open;
    sqlBuscaR.First;
    DecimalSeparator := '.';
    while not sqlBuscaR.Eof do
    begin
      CodPag := sqlBuscaR.FieldByName('CodPagamento').AsInteger;
      strRec :=  'UPDATE PAGAMENTO SET ' +
          'STATUS = ' + QuotedStr('5-') +
          ', VALOR_RESTO = ' + FloatToStr(sqlBuscaR.FieldByName('valorRecebido').AsFloat +
          sqlBuscaR.FieldByName('DESCONTO').AsFloat + sqlBuscaR.FieldByName('PERDA').AsFloat) +
          ', valorPagEBIDO  = 0 ' +
          ', FormaPagamento = ' + QuotedStr('0') +
          ', DATABAIXA = null' +
          ', DATAPAGAMENTO = null' +
          ', DATACONSOLIDA = null' +
          ', N_DOCUMENTO = null' +
          ', CAIXA = null ' +
          ', FUNRURAL = 0' + FloatToStr(sqlBuscaR.FieldByName('FUNRURAL').AsFloat) +
          ', JUROS = 0' + FloatToStr(sqlBuscaR.FieldByName('JUROS').AsFloat) +
          ', DESCONTO = 0' +
          ', PERDA = 0' +
          ' WHERE CodPagamento = ' + IntToStr(CodPag);
      executaSql(strRec);
      sqlBuscaR.Next;
    END;
  finally
    sqlBuscaR.Free;
  end;
  DecimalSeparator := ',';
  Result := True;
end;

constructor TPagarCls.Create;
begin
  _datasVenc := TStringList.Create;
end;

destructor TPagarCls.Destroy;
begin
  _datasVenc.Destroy;
  inherited;
end;

function TPagarCls.excluiTitulo(codCompraE: Integer): Boolean;
begin
  // Excluir Título
  if (executaSql('DELETE FROM PAGAMENTO WHERE CODPAGAMENTO = ' + IntToStr(codCompraE))) then
    Result := True
  else
    Result := False;
end;

function TPagarCls.executaSql(strSql: String): Boolean;
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

function TPagarCls.geraTitulo(CodPagR: Integer; CodCompraR: Integer): Integer;
var strG, strR, strP: String;
    sqlBuscaR, sqlPrazo : TSqlQuery;
            i : integer;
          rec : Boolean;
      VlrParc, UltParc : Double;
      vDataVenc : TDateTime;
begin
  // Se codCompraR > 0, então é uma Venda então busca os dados da Venda;
  if (CodCompraR > 0) then
  begin
    Try
      sqlBuscaR :=  TSqlQuery.Create(nil);
      sqlBuscaR.SQLConnection := dm.sqlsisAdimin;
      strR := 'SELECT CODCOMPRA, CODMOVIMENTO, CODFORNECEDOR, DATACOMPRA, ' + 
        ' DATAVENCIMENTO, NUMEROBORDERO, BANCO, CODCOMPRADOR, STATUS, CODUSUARIO, ' +
        ' DATASISTEMA, VALOR, NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, ' +
        ' FORMAPAGAMENTO, N_DOCUMENTO, CAIXA, MULTA_JUROS, APAGAR, ' +
        ' VALOR_PAGAR, ENTRADA, N_BOLETO,  VALOR_ICMS, ' +
        ' VALOR_FRETE, VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, PRAZO, CODORIGEM ' +
        ' FROM COMPRA ' +
        ' WHERE CODCOMPRA = ' + InttoStr(CodCompraR);
      sqlBuscaR.SQL.Add(strR);
      sqlBuscaR.Open;
      if (not sqlBuscaR.isEmpty) then
      begin
        Self.CodCompra     := sqlBuscaR.FieldByName('CODCOMPRA').AsInteger;
        Self.CodFornecedor := sqlBuscaR.FieldByName('CODFORNECEDOR').AsInteger;
        Self.CodComprador  := sqlBuscaR.FieldByName('CODCOMPRADOR').AsInteger;
        Self.CodUsuario    := sqlBuscaR.FieldByName('CODUSUARIO').AsInteger;
        Self.NParcela      := sqlBuscaR.FieldByName('N_PARCELA').AsInteger;
        Self.Valor         := sqlBuscaR.FieldByName('VALOR').AsFloat;
        Self.ValorPag      := sqlBuscaR.FieldByName('ENTRADA').AsFloat;
        Self.DtEmissao     := sqlBuscaR.FieldByName('DATACOMPRA').AsDateTime;
        Self.DtVcto        := sqlBuscaR.FieldByName('DATAVENCIMENTO').AsDateTime;
        Self.Prazo         := sqlBuscaR.FieldByName('PRAZO').AsString;
        Self.CodOrigem     := sqlBuscaR.FieldByName('CODORIGEM').AsInteger;
        Self.CodCCusto     := sqlBuscaR.FieldByName('CODCCUSTO').AsInteger;
        Self.Titulo        := Trim(IntToStr(sqlBuscaR.FieldByName('NOTAFISCAL').AsInteger) +
          '-' + sqlBuscaR.FieldByName('SERIE').AsString);

      end;
    Finally
      sqlBuscaR.Free;
    end;
    Try
      sqlPrazo :=  TSqlQuery.Create(nil);
      sqlPrazo.SQLConnection := dm.sqlsisAdimin;
      strP := 'SELECT D1, D2, D3, D4, D5, D6, D7, D8' +
        '  FROM PARAMETRO ' +
        ' WHERE PARAMETRO = ' + quotedstr(Self.Prazo);
      sqlPrazo.SQL.Add(strP);
      sqlPrazo.Open;
      if (not sqlPrazo.isEmpty) then
      begin
        Self.dataVenc.Add(sqlPrazo.FieldByName('D1').AsString);
        Self.dataVenc.Add(sqlPrazo.FieldByName('D2').AsString);
        Self.dataVenc.Add(sqlPrazo.FieldByName('D3').AsString);
        Self.dataVenc.Add(sqlPrazo.FieldByName('D4').AsString);
        Self.dataVenc.Add(sqlPrazo.FieldByName('D5').AsString);
        Self.dataVenc.Add(sqlPrazo.FieldByName('D6').AsString);
        Self.dataVenc.Add(sqlPrazo.FieldByName('D7').AsString);
        Self.dataVenc.Add(sqlPrazo.FieldByName('D8').AsString);
      end;
    Finally
      sqlPrazo.Free;
    end;
  end
  else
  begin
    Try
      sqlBuscaR :=  TSqlQuery.Create(nil);
      sqlBuscaR.SQLConnection := dm.sqlsisAdimin;
      strR := 'SELECT CODPAGAMENTO, CODCOMPRA, CODFORNECEDOR, EMISSAO, ' +
        ' DATAVENCIMENTO, CODCOMPRADOR, CODUSUARIO,' +
        ' VALOR_RESTO, TITULO, VIA, PARCELAS,' +
        ' FORMAPAGAMENTO, CODALMOXARIFADO ' +
        '  FROM PAGAMENTO ' +
        ' WHERE CODPAGAMENTO = ' + InttoStr(CodPagR);
      sqlBuscaR.SQL.Add(strR);
      sqlBuscaR.Open;
      if (not sqlBuscaR.isEmpty) then
      begin
        Self.CodCompra     := sqlBuscaR.FieldByName('CODCOMPRA').AsInteger;
        Self.CodFornecedor := sqlBuscaR.FieldByName('CODFORNECEDOR').AsInteger;
        Self.CodComprador  := sqlBuscaR.FieldByName('CODCOMPRADOR').AsInteger;
        Self.CodUsuario    := sqlBuscaR.FieldByName('CODUSUARIO').AsInteger;
        Self.NParcela      := sqlBuscaR.FieldByName('PARCELAS').AsInteger;
        //Self.Valor         := sqlBuscaR.FieldByName('VALOR_RESTO').AsFloat;
        Self.ValorPag      := 0;//sqlBuscaR.FieldByName('ENTRADA').AsFloat;
        Self.DtEmissao     := sqlBuscaR.FieldByName('EMISSAO').AsDateTime;
        Self.DtVcto        := sqlBuscaR.FieldByName('DATAVENCIMENTO').AsDateTime;
        //Self.Prazo         := sqlBuscaR.FieldByName('PRAZO').AsString;
        Self.CodOrigem     := sqlBuscaR.FieldByName('CODPAGAMENTO').AsInteger;
        Self.CodCCusto     := sqlBuscaR.FieldByName('CODALMOXARIFADO').AsInteger;
        Self.Titulo        := sqlBuscaR.FieldByName('TITULO').AsString;
        vDataVenc          := sqlBuscaR.FieldByName('DATAVENCIMENTO').AsDateTime;
        VlrParc            := Self.Valor;
        CodPagR := 1;

      end;
    Finally
      sqlBuscaR.Free;
    end;

  end;

  if ((Self.NParcela = 1) and (Self.Valor < Self.valorPag)) then
  begin
    MessageDlg('Parcela não pode ser 1, se o valor de Entrada e menor que o Valor Total.', mtWarning, [mbOK], 0);
    exit;
  end;

  Self.Status   := '5-';
  Self.FormaPag := '0';
  if (CodPagR <> 1) then
  begin
    if ((Self.valorPag > 0) and (Self.valorPag < Self.Valor)) then
      VlrParc := (Self.Valor - Self.valorPag) / (Self.NParcela-1)
    else
      VlrParc := Self.Valor / Self.NParcela;
  end
  else
  begin
    Self.NParcela := 1;
  end;
  DecimalSeparator := '.';

 // UltParc := Self.Valor;
   UltParc := VlrParc;



  for i := 1 to Self.NParcela do
  begin
    if ((CodPagR = 0) or (CodPagR = 1)) then   //CodPagR = 1  novo titulo de baixa Parcial...
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) AS' +
       ' INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      Self.CodPag := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
    end;
    if ((CodPagR = 0) and (i > 1)) then
      vDataVenc := IncDay(Self.DtEmissao, StrToInt(Self.dataVenc.Strings[i-1]))
    else
      vDataVenc := Self.DtVcto;  

    strG := ' INSERT INTO PAGAMENTO ' +
          ' (CODPAGAMENTO,   TITULO,          EMISSAO,         CODFORNECEDOR,      ' +
          ' DATAVENCIMENTO,  STATUS,          VIA,             FORMAPAGAMENTO,' +
          ' CODCOMPRA ,      CODALMOXARIFADO, CodComprador,    CODUSUARIO,      ' +
          ' DATASISTEMA,     VALOR_PRIM_VIA,  VALOR_RESTO,     VALORTITULO,     ' +
          ' valorRECEBIDO,   PARCELAS,        DESCONTO,        JUROS,           ' +
          ' FUNRURAL,        PERDA,           TROCA,           N_DOCUMENTO,     ' +
          ' OUTRO_CREDITO,   CAIXA,           SITUACAO,        CODORIGEM,        ' +
          ' CONTACREDITO,    CODCONCILIACAO,  HISTORICO  ' +
          ') VALUES(';

    strG := strG + InttoStr(Self.CodPag) + ', ';
    strG := strG + QuotedStr(Self.Titulo) + ', ';
    strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.DtEmissao)) + ', ';
    strG := strG + IntToStr(Self.CodFornecedor) + ', ';
    //strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy', (IncDay(Self.DtEmissao, StrToInt(Self.dataVenc.Strings[i-1]))))) + ', ';
    strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy', vDataVenc)) + ', ';

    strG := strG + QuotedStr(Self.Status) + ', ';
    strG := strG + IntToStr(i) + ', ';
    strG := strG + QuotedStr(Self.FormaPag) + ', ';
    strG := strG + InttoStr(Self.codCompra) + ', ';
    strG := strG + InttoStr(Self.CodCCusto) + ', ';
    strG := strG + InttoStr(Self.CodComprador) + ', ';
    strG := strG + InttoStr(Self.CodUsuario) + ', ';
    strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy hh:MM', Now)) + ', ';  // DataSistema

    if ((i = 1) and (CodPagR = 0)) then
      strG := strG + FloattoStr(Self.Valor) + ', ' // Valor_prim_via
    else
      strG := strG + '0, '; // Valor_prim_via

    //COLOCA O CAMPO COM 2 CASAS DECIMAIS
    VlrParc := Trunc(VlrParc * 100) / 100;

    if (i = 1) then
    begin
      if (Self.valorPag > 0) then
          strG := strG + FloattoStr(Self.valorPag) + ', ' // Valor_Resto
      else
          strG := strG + FloattoStr(VlrParc) + ', '; // Valor_Resto
    end
    else
      if ( i = Self.NParcela) then
        strG := strG + FloattoStr(UltParc) + ', ' // Valor_Resto
      else
        strG := strG + FloattoStr(VlrParc) + ', '; // Valor_Resto

    strG := strG + FloattoStr(Self.Valor) + ', ';  // Valortitulo
    strG := strG + '0, ';  // valorPagebido
    strG := strG + IntToStr(Self.NParcela) + ', ';
    strG := strG + '0, ';  // Desconto
    strG := strG + '0, ';  // Juros
    strG := strG + '0, ';  // FUNRURAL
    strG := strG + '0, ';  // Perda
    strG := strG + '0, ';  // Troca
    strG := strG + QuotedStr('') + ', '; // N.Doc.
    strG := strG + '0, ';  // Outro_Credito
    strG := strG + IntToStr(1) + ', '; // Caixa
    strG := strG + IntToStr(1) + ', '; // Situacao
    strG := strG + IntToStr(1) + ', '; // CodOrigem
    strG := strG + IntToStr(Self.ContaCredito) + ', '; // Conta Credito
    strG := strG + QuotedStr(Self.CodConciliaco) + ', '; // N.Doc.
    strG := strG + QuotedStr(Self.Obs) + ')';

    Rec  := executaSql(strG);
    //UltParc := UltParc - VlrParc;
  end;
  DecimalSeparator := ',';
  Result := 0;

  if (Rec) then
    Result := Self.CodPag;
end;

function TPagarCls.getCaixa: Integer;
begin
  Result := _caixa;
end;

function TPagarCls.getCodCCusto: Integer;
begin
  Result := _codCCusto;
end;

function TPagarCls.getCodFornecedor: Integer;
begin
  Result := _CodFornecedor;
end;

function TPagarCls.getCodOrigem: Integer;
begin
  Result := _codOrigem;
end;

function TPagarCls.getCodPag: Integer;
begin
  Result := _CodPag;
end;

function TPagarCls.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TPagarCls.getcodCompra: Integer;
begin
  Result := _codCompra;
end;

function TPagarCls.getCodComprador: Integer;
begin
  Result := _CodComprador;
end;

function TPagarCls.getdataVenc: TStringList;
begin
  Result := _datasVenc;
end;

function TPagarCls.getDesconto: Double;
begin
  Result := _desconto;
end;

function TPagarCls.getDtBaixa: TDateTime;
begin
  Result := _dtBaixa;
end;

function TPagarCls.getDtConsolida: TDateTime;
begin
  Result := _dtConsolida;
end;

function TPagarCls.getDtEmissao: TDateTime;
begin
  Result := _dtEmissao;
end;

function TPagarCls.getdtPag: TDateTime;
begin
  Result := _dtPag;
end;

function TPagarCls.getDtVcto: TDateTime;
begin
  Result := _dtVcto;
end;

function TPagarCls.getFormaPag: String;
begin
  Result := _FormaPag;
end;

function TPagarCls.getJuros: Double;
begin
  Result := _juros;
end;

function TPagarCls.getMulta: Double;
begin
  Result := _multa;
end;

function TPagarCls.getNDoc: String;
begin
  Result := _nDoc;
end;

function TPagarCls.getNParcela: Integer;
begin
  Result := _nParcela;
end;

function TPagarCls.getObs: String;
begin
  Result := _obs;
end;

function TPagarCls.getOutrosCred: Double;
begin
  Result := _outrosCred;
end;

function TPagarCls.getOutrosDeb: Double;
begin
  Result := _outrosDeb;
end;

function TPagarCls.getPrazo: String;
begin
  Result := _prazo;
end;

function TPagarCls.getSerie: String;
begin
  Result := _serie;
end;

function TPagarCls.getStatus: String;
begin
  Result := _status;
end;

function TPagarCls.getValor: Double;
begin
  Result := _valor;
end;

function TPagarCls.getvalorPag: Double;
begin
  Result := _valorPag;
end;

function TPagarCls.getVia: SmallInt;
begin
  Result := _via;
end;

procedure TPagarCls.setCaixa(const Value: Integer);
begin
  _caixa := Value;
end;

procedure TPagarCls.setCodCCusto(const Value: Integer);
begin
  _codCCusto := Value;
end;

procedure TPagarCls.setCodFornecedor(const Value: Integer);
begin
  _CodFornecedor := Value;
end;

procedure TPagarCls.setCodOrigem(const Value: Integer);
begin
  _codOrigem := Value;
end;

procedure TPagarCls.setCodPag(const Value: Integer);
begin
  _CodPag := Value;
end;

procedure TPagarCls.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TPagarCls.setcodCompra(const Value: Integer);
begin
  _codCompra := Value;
end;

procedure TPagarCls.setCodComprador(const Value: Integer);
begin
  _CodComprador := Value;
end;

procedure TPagarCls.setdataVenc(const Value: TStringList);
begin
  _datasVenc := Value;
end;

procedure TPagarCls.setDesconto(const Value: Double);
begin
  _desconto := Value;
end;

procedure TPagarCls.setDtBaixa(const Value: TDateTime);
begin
  _dtBaixa := Value;
end;

procedure TPagarCls.setDtConsolida(const Value: TDateTime);
begin
  _dtConsolida := Value;
end;

procedure TPagarCls.setDtEmissao(const Value: TDateTime);
begin
  _dtEmissao := Value;
end;

procedure TPagarCls.setdtPag(const Value: TDateTime);
begin
  _dtPag := Value;
end;

procedure TPagarCls.setDtVcto(const Value: TDateTime);
begin
  _dtVcto := Value;
end;

procedure TPagarCls.setFormaPag(const Value: String);
begin
  _FormaPag := Value;
end;

procedure TPagarCls.setJuros(const Value: Double);
begin
  _juros := Value;
end;

procedure TPagarCls.setMulta(const Value: Double);
begin
  _multa := Value;
end;

procedure TPagarCls.setNDoc(const Value: String);
begin
  _nDoc := Value;
end;

procedure TPagarCls.setNParcela(const Value: Integer);
begin
  _nParcela := Value;
end;

procedure TPagarCls.setObs(const Value: String);
begin
  _obs := Value;
end;

procedure TPagarCls.setOutrosCred(const Value: Double);
begin
  _outrosCred := Value;
end;

procedure TPagarCls.setOutrosDeb(const Value: Double);
begin
  _outrosDeb := Value;
end;

procedure TPagarCls.setPrazo(const Value: String);
begin
  _prazo := Value;
end;

procedure TPagarCls.setSerie(const Value: String);
begin
  _serie := Value;
end;

procedure TPagarCls.setStatus(const Value: String);
begin
  _status := Value;
end;

procedure TPagarCls.setValor(const Value: Double);
begin
  _valor := Value;
end;

procedure TPagarCls.setvalorPag(const Value: Double);
begin
  _valorPag := Value;
end;

procedure TPagarCls.setVia(const Value: SmallInt);
begin
  _via := Value;
end;

function TPagarCls.getContaCredito: Integer;
begin
  Result := _contaCredito;
end;

procedure TPagarCls.setContaCredito(const Value: Integer);
begin
  _contaCredito := Value;
end;

function TPagarCls.getCodConciliacao: String;
begin
  Result := _codConciliacao;
end;

procedure TPagarCls.setCodConciliacao(const Value: String);
begin
  _codConciliacao := Value;
end;

procedure TPagarCls.marcarTitulo(codPagamento:Integer; userMarcou:integer);
var execMarcaTitulo: String;
begin
  execMarcaTitulo :=  'UPDATE PAGAMENTO SET ' +
      ' DP     = 0,' +
      ' USERID = ' + IntToStr(userMarcou) +
      ' WHERE CodPagamento = ' + IntToStr(CodPagamento);
  executaSql(execMarcaTitulo);
end;

end.
