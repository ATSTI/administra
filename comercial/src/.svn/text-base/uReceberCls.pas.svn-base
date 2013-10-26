unit uReceberCls;

interface

uses SysUtils, Dialogs, dbXpress, dateUtils, StdCtrls, Classes;

type

  TReceberCls = class(TObject)
  private
    function getCaixa: Integer;
    function getCodCliente: Integer;
    function getCodOrigem: Integer;
    function getCodRec: Integer;
    function getCodUsuario: Integer;
    function getCodVenda: Integer;
    function getCodVendedor: Integer;
    function getDesconto: Double;
    function getDtBaixa: TDateTime;
    function getDtConsolida: TDateTime;
    function getDtEmissao: TDateTime;
    function getDtRec: TDateTime;
    function getDtVcto: TDateTime;
    function getFormaRec: String;
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
    function getValorRec: Double;
    function getVia: SmallInt;
    procedure setCaixa(const Value: Integer);
    procedure setCodCliente(const Value: Integer);
    procedure setCodOrigem(const Value: Integer);
    procedure setCodRec(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setCodVenda(const Value: Integer);
    procedure setCodVendedor(const Value: Integer);
    procedure setDesconto(const Value: Double);
    procedure setDtBaixa(const Value: TDateTime);
    procedure setDtConsolida(const Value: TDateTime);
    procedure setDtEmissao(const Value: TDateTime);
    procedure setDtRec(const Value: TDateTime);
    procedure setDtVcto(const Value: TDateTime);
    procedure setFormaRec(const Value: String);
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
    procedure setValorRec(const Value: Double);
    procedure setVia(const Value: SmallInt);
    function executaSql(strSql: String): Boolean;
    function getCodCCusto: Integer;
    procedure setCodCCusto(const Value: Integer);
    function getdataVenc: TStringList;
    procedure setdataVenc(const Value: TStringList);

  protected
    //Atributos
    _codVenda     : Integer;
    _codRec       : Integer;
    _codOrigem    : Integer;

    _codCliente   : Integer;
    _codVendedor  : Integer;
    _codUsuario   : Integer;

    _codCCusto    : Integer;
    _caixa        : Integer;
    _nParcela     : Integer;
    _via          : SmallInt;

    _dtEmissao    : TDateTime;
    _dtVcto       : TDateTime;
    _dtRec        : TDateTime;
    _dtBaixa      : TDateTime;
    _dtConsolida  : TDateTime;

    _valor        : Double;  // Valor Total
    _valorRec     : Double;  // Valor Recebido
    _desconto     : Double;
    _juros        : Double;
    _multa        : Double;
    _outrosDeb    : Double;
    _outrosCred   : Double;

    _status       : String;
    _titulo       : String;
    _serie        : String;

    _prazo        : String;
    _formaRec     : String;
    _nDoc         : String;
    _obs          : String;
    
    _datasVenc    : TStringList;

  public
    property CodVenda    : Integer read getCodVenda write setCodVenda;
    property CodRec      : Integer read getCodRec write setCodRec;
    property CodOrigem   : Integer read getCodOrigem write setCodOrigem;

    property CodCliente  : Integer read getCodCliente write setCodCliente;
    property CodUsuario  : Integer read getCodUsuario write setCodUsuario;
    property CodVendedor : Integer read getCodVendedor write setCodVendedor;

    property CodCCusto   : Integer read getCodCCusto write setCodCCusto;
    property Caixa       : Integer read getCaixa write setCaixa;
    property NParcela    : Integer read getNParcela write setNParcela;
    property Via         : SmallInt read getVia write setVia;

    property DtEmissao   : TDateTime read getDtEmissao write setDtEmissao;
    property DtVcto      : TDateTime read getDtVcto  write setDtVcto;
    property DtRec       : TDateTime read getDtRec   write setDtRec;
    property DtBaixa     : TDateTime read getDtBaixa write setDtBaixa;
    property DtConsolida : TDateTime read getDtConsolida   write setDtConsolida;

    property Valor       : Double read getValor write setValor;
    property ValorRec    : Double read getValorRec write setValorRec;
    property Desconto    : Double read getDesconto write setDesconto;
    property Juros       : Double read getJuros write setJuros;
    property Multa       : Double read getMulta write setMulta;
    property OutrosDeb   : Double read getOutrosDeb write setOutrosDeb;
    property OutrosCred  : Double read getOutrosCred write setOutrosCred;

    property Status      : String read getStatus write setStatus;
    property Titulo      : String read getSerie  write setSerie;
    property Prazo       : String read getPrazo  write setPrazo;
    property FormaRec    : String read getFormaRec  write setFormaRec;
    property NDoc        : String read getNDoc  write setNDoc;
    property Obs         : String read getObs  write setObs;
    property dataVenc    : TStringList read getdataVenc  write setdataVenc;

    //Metodos
    procedure gravaHistorico(CODREC: INTEGER; TITULO: String;
       CAIXA: Integer; USUARIO: Integer; TIPOHISTORICO, HISTORICO: String);
    function geraTitulo(CodRecR: Integer; CodVendaR: Integer): Integer;
    function baixaTitulo(VALOR :Double; FUNRURAL: Double; JUROS :Double; DESCONTO: Double; PERDA: Double;
                         DATA : TDateTime; DATAREC : TDateTime; DATACONSOLIDA : TDateTime; FORMAREC: String; NDOC: String; CAIXA : Integer;
                         CLIENTE : Integer; STATUS : string;  USERID : Integer; tipoBaixa: String): Integer;
    function excluiTitulo(codVendaE: Integer): Boolean;
    function alteraTitulo(codVendaA: Integer): Boolean;
    function cancelabaixa(CLIENTE: Integer; USERID :Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'RECEBIMENTO';

implementation

uses SqlExpr, DB, UDm, DBClient, Math;

{ TReceberCls }

function TReceberCls.alteraTitulo(codVendaA: Integer): Boolean;
begin

end;

function TReceberCls.baixaTitulo( VALOR :Double; FUNRURAL: Double; JUROS :Double; DESCONTO: Double; PERDA: Double;
DATA : TDateTime; DATAREC : TDateTime; DATACONSOLIDA : TDateTime; FORMAREC: String; NDOC: String; CAIXA : Integer;
CLIENTE : Integer; STATUS : string; USERID : Integer; tipoBaixa: String): Integer;
var  strRec : String;
  codRecB: Integer;
  VLR_RESTO, VLR, VLRESTO, VLRATUAL, VLPAGO, VLJU, VLFUN, VLDESC, VLPER, VLJUT, VLFUNT, VLDESCT, VLPERT : DOUBLE;
  CODREC : INTEGER;
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
    strRec := 'SELECT CODRECEBIMENTO, VALOR_RESTO, TITULO FROM RECEBIMENTO WHERE CODCLIENTE = ' + IntToStr(CLIENTE) + ' AND DP = 0 ' +
    ' AND STATUS IN (' + QuotedStr('5-') + ', ' + QuotedStr('9-') + ') and USERID = ' + IntToStr(USERID) + ' order by DATAVENCIMENTO';
    //strRec := 'SELECT CODRECEBIMENTO, VALOR_RESTO FROM RECEBIMENTO WHERE CODRECEBIMENTO = ' + IntToStr(CODRECEBE);
    sqlBuscaR.SQL.Add(strRec);
    sqlBuscaR.Open;
    sqlBuscaR.First;
    while not sqlBuscaR.Eof do
    begin
      CODREC := sqlBuscaR.FieldByName('CODRECEBIMENTO').AsInteger;
      VLRESTO := sqlBuscaR.FieldByName('VALOR_RESTO').AsFloat;
      //if (VLR_RESTO = 0) then
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
      VLR_RESTO := VLR_RESTO + VLJU + VLFUN - VLPER - VLDESC;
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
        strRec :=  'UPDATE RECEBIMENTO SET ' +
            'STATUS = ' + QuotedStr(STATUS) +
            ', VALORRECEBIDO = ' + FloatToStr(VLR - VLDESC - VLPER) +
            ', VALOR_RESTO_SST = ' + FloatToStr(VLR - VLDESC - VLPER) +
            ', VALOR_RESTO = ' + FloatToStr(VLR) +
            ', FORMARECEBIMENTO = ' + QuotedStr(FORMAREC) +
            ', DATABAIXA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATA)) +
            ', DATARECEBIMENTO = ' + QuotedStr(formatdatetime('mm/dd/yy', DATAREC)) +
            ', DATACONSOLIDA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATACONSOLIDA)) +
            ', N_DOCUMENTO = ' + QuotedStr(NDOC) +
            ', CAIXA = ' + IntToStr(CAIXA) +
            ', FUNRURAL = ' + FloatToStr(VLFUN) +
            ', JUROS = ' + FloatToStr(VLJU) +
            ', DESCONTO = ' + FloatToStr(VLDESC) +
            ', PERDA = ' + FloatToStr(VLPER) +
            ',outro_credito = ' + FloatToStr(vldesct) +
            ',outro_debito = ' + FloatToStr(vlpert);

            if (tipoBaixa = 'DESCONTO') then
              strRec := strRec  + ', DESCONTADO  = ' + QuotedStr('S');

            strRec := strRec  + ' WHERE CODRECEBIMENTO = ' + IntToStr(CODREC);

            dm.gravaLog(Now, dm.varLogado, 'RECEBIMENTO', MICRO, 'REC.:' + FloatToStr(VLR - VLDESC) +
              '-DESC.:' + FloatToStr(VLDESC) + '-DT:' + formatdatetime('dd/mm/yy', DATAREC)
              , '', sqlBuscaR.FieldByName('TITULO').asString, 'RECEBIDO');

        executaSql(strRec);
      end;

     // Se Valor e negativo entao baixa o titulo
      if (VALOR < 0) then
      begin
        strRec :=  'UPDATE RECEBIMENTO SET ' +
            'STATUS = ' + QuotedStr(STATUS) +
            ', VALORRECEBIDO = 0 ' +
            ', VALOR_RESTO = 0 ' +
            ', FORMARECEBIMENTO = ' + QuotedStr(FORMAREC) +
            ', DATABAIXA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATA)) +
            ', DATARECEBIMENTO = ' + QuotedStr(formatdatetime('mm/dd/yy', DATAREC)) +
            ', DATACONSOLIDA = ' + QuotedStr(formatdatetime('mm/dd/yy', DATACONSOLIDA)) +
            ', N_DOCUMENTO = ' + QuotedStr(NDOC) +
            ', CAIXA = ' + IntToStr(CAIXA) +
            ', FUNRURAL = ' + FloatToStr(VLFUN) +
            ', JUROS = ' + FloatToStr(VLJU) +
            ', DESCONTO = ' + FloatToStr(VLDESC) +
            ', PERDA = ' + FloatToStr(VLPER) +
            ',outro_credito = ' + FloatToStr(vldesct) +
            ',outro_debito = ' + FloatToStr(vlpert)  +
            ' WHERE CODRECEBIMENTO = ' + IntToStr(CODREC);
        executaSql(strRec);
        dm.gravaLog(Now, dm.varLogado, 'RECEBIMENTO', MICRO, 'REC.:' + FloatToStr(VLR - VLDESC) +
              '-DESC.:' + FloatToStr(VLDESC) + '-DT:' + formatdatetime('dd/mm/yy', DATAREC)
              , '', sqlBuscaR.FieldByName('TITULO').asString, 'RECEBIDO');
      end;
      VLR_RESTO := VLR_RESTO - (VLR + VLJU + VLFUN - VLPER - VLDESC);

      // Se sobrou algum valor então gera novo titulo
      if ((VLR_RESTO > 0.01) and (tipoBaixa <> 'DESCONTO') and (VLR_RESTO <> VLRESTO) )then
      begin
          Self.Valor := VLR_RESTO;
          Result := geraTitulo(CodRec, 0);
      end;
     sqlBuscaR.Next;
    end;
    Result := 0;
  finally
    sqlBuscaR.Free;
  end;
  DecimalSeparator := ',';
end;

function TReceberCls.cancelabaixa(CLIENTE, USERID: Integer): Boolean;
var  codrec : Integer;
  sqlBuscaR : TSqlQuery;
  strRec : String;
begin
  try
    sqlBuscaR :=  TSqlQuery.Create(nil);
    sqlBuscaR.SQLConnection := dm.sqlsisAdimin;
    strRec := 'SELECT CODRECEBIMENTO, VALORRECEBIDO, DESCONTO, PERDA, FUNRURAL, JUROS, TITULO  FROM RECEBIMENTO WHERE CODCLIENTE = ' + IntToStr(CLIENTE) + 'AND DP = 0 ' +
    ' AND STATUS IN (' + QuotedStr('1-') + ', ' + QuotedStr('2-') + ', ' + QuotedStr('7-') + ', ' + QuotedStr('9-') + ', ' + QuotedStr('13') + ') and USERID = ' + IntToStr(USERID) + ' order by CODRECEBIMENTO';
    sqlBuscaR.SQL.Add(strRec);
    sqlBuscaR.Open;
    sqlBuscaR.First;
    DecimalSeparator := '.';
    while not sqlBuscaR.Eof do
    begin
      codrec := sqlBuscaR.FieldByName('CODRECEBIMENTO').AsInteger;
      strRec :=  'UPDATE RECEBIMENTO SET ' +
          'STATUS = ' + QuotedStr('5-') +
          ', VALOR_RESTO = ' + FloatToStr(sqlBuscaR.FieldByName('VALORRECEBIDO').AsFloat + sqlBuscaR.FieldByName('DESCONTO').AsFloat + sqlBuscaR.FieldByName('PERDA').AsFloat) +
          ', VALORRECEBIDO = 0 ' +
          ', FORMARECEBIMENTO = ' + QuotedStr('0') +
          ', DATABAIXA = null' +
          ', DATARECEBIMENTO = null' +
          ', DATACONSOLIDA = null' +
          ', N_DOCUMENTO = null' +
          ', CAIXA = null ' +
          ', FUNRURAL = 0' + FloatToStr(sqlBuscaR.FieldByName('FUNRURAL').AsFloat) +
          ', JUROS = 0' + FloatToStr(sqlBuscaR.FieldByName('JUROS').AsFloat) +
          ', DESCONTO = 0' +
          ', PERDA = 0' +
          ' WHERE CODRECEBIMENTO = ' + IntToStr(codrec);
      executaSql(strRec);
      dm.gravaLog(Now, dm.varLogado, 'RECEBIMENTO', MICRO, 'REC.:' + FloatToStr(sqlBuscaR.FieldByName('VALORRECEBIDO').AsFloat) +
        '-DESC.:' + FloatToStr(sqlBuscaR.FieldByName('DESCONTO').AsFloat)
        , '', sqlBuscaR.FieldByName('TITULO').asString, 'CANCELADO RECEB.');
      sqlBuscaR.Next;
    END;
  finally
    sqlBuscaR.Free;
  end;
  DecimalSeparator := ',';
  Result := True;
end;

constructor TReceberCls.Create;
begin
  _datasVenc := TStringList.Create;
  _formaRec := '';
end;

destructor TReceberCls.Destroy;
begin
  _datasVenc.Destroy;
  inherited;
end;

function TReceberCls.excluiTitulo(codVendaE: Integer): Boolean;
begin
 // Excluir Recebimento
  if (executaSql('DELETE FROM RECEBIMENTO WHERE CODVENDA = ' + IntToStr(codVendaE))) then
    Result := True
  else
    Result := False;
end;

function TReceberCls.executaSql(strSql: String): Boolean;
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

function TReceberCls.geraTitulo(CodRecR: Integer; CodVendaR: Integer): Integer;
var strG, strR, strP, strV: String;
    sqlBuscaR, sqlPrazo, sqlVenc : TSqlQuery;
            i, DtaAlt : integer;
          rec : Boolean;
      VlrParc, UltParc, VlrT, vlrSt, VlrEnt, difV : Double;
      vDataVenc : TDateTime;
begin
  // Se codVendaR > 0, então é uma Venda então busca os dados da Venda;
  if (CodVendaR > 0) then
  begin
    Try
      sqlBuscaR :=  TSqlQuery.Create(nil);
      sqlBuscaR.SQLConnection := dm.sqlsisAdimin;
      strR := 'SELECT CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, ' +
        ' DATAVENCIMENTO, NUMEROBORDERO, BANCO, CODVENDEDOR, STATUS, CODUSUARIO,' +
        ' DATASISTEMA, VALOR, NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA,' +
        ' OPERACAO, FORMARECEBIMENTO, N_DOCUMENTO, CAIXA, MULTA_JUROS, APAGAR,  ' +
        ' VALOR_PAGAR, ENTRADA, N_BOLETO, STATUS1, CONTROLE, OBS, VALOR_ICMS,   ' +
        ' VALOR_FRETE, VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, PRAZO, CODORIGEM,  ' +
        ' TROCO, COALESCE(VALOR_ST,0) VALOR_ST ' +
        '  FROM VENDA ' +
        ' WHERE CODVENDA = ' + InttoStr(CodVendaR);
      sqlBuscaR.SQL.Add(strR);
      sqlBuscaR.Open;
      if (not sqlBuscaR.isEmpty) then
      begin
        Self.CodVenda      := sqlBuscaR.FieldByName('CODVENDA').AsInteger;
        Self.CodCliente    := sqlBuscaR.FieldByName('CODCLIENTE').AsInteger;
        Self.CodVendedor   := sqlBuscaR.FieldByName('CODVENDEDOR').AsInteger;
        Self.CodUsuario    := sqlBuscaR.FieldByName('CODUSUARIO').AsInteger;
        Self.NParcela      := sqlBuscaR.FieldByName('N_PARCELA').AsInteger;
        Self.Valor         := sqlBuscaR.FieldByName('VALOR').AsFloat;
        VlrEnt             := sqlBuscaR.FieldByName('ENTRADA').AsFloat;
        Self.ValorRec      := sqlBuscaR.FieldByName('ENTRADA').AsFloat;
        vlrSt              := sqlBuscaR.FieldByName('VALOR_ST').AsFloat;
        //Self.Desconto      := sqlBuscaR.FieldByName('DESCONTO').AsFloat;
        Self.DtEmissao     := sqlBuscaR.FieldByName('DATAVENDA').AsDateTime;
        Self.DtVcto        := sqlBuscaR.FieldByName('DATAVENCIMENTO').AsDateTime;
        Self.Prazo         := sqlBuscaR.FieldByName('PRAZO').AsString;
        Self.CodOrigem     := sqlBuscaR.FieldByName('CODORIGEM').AsInteger;
        Self.CodCCusto     := sqlBuscaR.FieldByName('CODCCUSTO').AsInteger;
        Self.Titulo        := Trim(IntToStr(sqlBuscaR.FieldByName('NOTAFISCAL').AsInteger) +
          '-' + sqlBuscaR.FieldByName('SERIE').AsString);
        Self.NDoc          := sqlBuscaR.FieldByName('N_DOCUMENTO').AsString;
        Self.FormaRec      := sqlBuscaR.FieldByName('FORMARECEBIMENTO').AsString;
        Self.Caixa         := sqlBuscaR.FieldByName('CAIXA').AsInteger;
      end;
    Finally
      sqlBuscaR.Free;
    end;
    // Busca o PARAMETRO Cadastro para ver como sera carregado o valor da ST nos titulos
    // vou deixar carregando 100 % na primeira parcela
    if (vlrSt > 0) then
    begin
      Try
        sqlPrazo :=  TSqlQuery.Create(nil);
        sqlPrazo.SQLConnection := dm.sqlsisAdimin;
        strP := 'SELECT DADOS' +
          '  FROM PARAMETRO ' +
          ' WHERE PARAMETRO = ' + quotedstr('SUBSTITUICAOTRIBUTARIA');
        sqlPrazo.SQL.Add(strP);
        sqlPrazo.Open;
        if (not sqlPrazo.isEmpty) then
        begin
          //vlrSt := 1;
        end;
      Finally
        sqlPrazo.Free;
      end;
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
      end
      else begin
        Self.dataVenc.Add('0');
        //MessageDlg('Prazo informado : ' + Self.Prazo + ', não está cadastrado em Prazos.', mtWarning, [mbOK], 0);
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
      strR := 'SELECT CODRECEBIMENTO, CODVENDA, CODCLIENTE, EMISSAO, ' +
        ' DATAVENCIMENTO, CODVENDEDOR, CODUSUARIO,' +
        ' VALOR_RESTO, TITULO, VIA, PARCELAS, CAIXA,' +
        ' FORMARECEBIMENTO, CODALMOXARIFADO, UDF_RTRIM(VIA) as VIA ' +
        '  FROM RECEBIMENTO ' +
        ' WHERE CODRECEBIMENTO = ' + InttoStr(CodRecR);
      sqlBuscaR.SQL.Add(strR);
      sqlBuscaR.Open;
      if (not sqlBuscaR.isEmpty) then
      begin
        Self.CodVenda      := sqlBuscaR.FieldByName('CODVENDA').AsInteger;
        Self.CodCliente    := sqlBuscaR.FieldByName('CODCLIENTE').AsInteger;
        Self.CodVendedor   := sqlBuscaR.FieldByName('CODVENDEDOR').AsInteger;
        Self.CodUsuario    := sqlBuscaR.FieldByName('CODUSUARIO').AsInteger;
        Self.NParcela      := sqlBuscaR.FieldByName('PARCELAS').AsInteger;
        //Self.Valor         := sqlBuscaR.FieldByName('VALOR_RESTO').AsFloat;
        //VlrEnt             := sqlBuscaR.FieldByName('ENTRADA').AsFloat;
        Self.ValorRec      := 0;//sqlBuscaR.FieldByName('ENTRADA').AsFloat;
        Self.DtEmissao     := sqlBuscaR.FieldByName('EMISSAO').AsDateTime;
        Self.DtVcto        := sqlBuscaR.FieldByName('DATAVENCIMENTO').AsDateTime;
        //Self.Prazo         := sqlBuscaR.FieldByName('PRAZO').AsString;
        Self.CodOrigem     := sqlBuscaR.FieldByName('CODRECEBIMENTO').AsInteger;
        Self.CodCCusto     := sqlBuscaR.FieldByName('CODALMOXARIFADO').AsInteger;
        Self.Titulo        := sqlBuscaR.FieldByName('TITULO').AsString;
        vDataVenc          := sqlBuscaR.FieldByName('DATAVENCIMENTO').AsDateTime;
        Self.Via           := StrToInt(StringReplace(sqlBuscaR.FieldByName('VIA').AsString, ' ', '', [rfReplaceAll,rfIgnoreCase]))+1;
        VlrParc            := Self.Valor;
        Self.Caixa         := sqlBuscaR.FieldByName('CAIXA').AsInteger;
        CodRecR := 1;
      end;
    Finally
      sqlBuscaR.Free;
    end;

  end;

  difV := 0;
  if (Self.ValorRec > 0) then
    difV := Self.Valor - Self.ValorRec;
  if (Self.ValorRec > 0) then
  if ((Self.NParcela = 1) and (difV > 0.009)) then
  begin
    MessageDlg('Parcela não pode ser 1, se o valor de Entrada e menor que o Valor Total.', mtWarning, [mbOK], 0);
    exit;
  end;

  Self.Status   := '5-';
  if ( Self.FormaRec = '') then
    Self.FormaRec := '0';
  if (CodRecR <> 1) then
  begin
    //if ((Self.ValorRec > 0) and (Self.ValorRec < Self.Valor)) then
    //  VlrParc := ((Self.Valor - vlrSt) - Self.ValorRec) / (Self.NParcela-1)
    //else
    if (VlrEnt > 0) then
    begin
      if ((Self.Valor - vlrSt - VlrEnt) > 0) then
      begin
        if (Self.NParcela > 1) then
          VlrParc := (Self.Valor - vlrSt - VlrEnt) / (Self.NParcela -1)
        else
          VlrParc := (Self.Valor - vlrSt - VlrEnt) / 1;
      end;
    end
    else
      VlrParc := (Self.Valor - vlrSt) / Self.NParcela;
  end
  else
  begin
    Self.NParcela := 1;
  end;
  DecimalSeparator := '.';

  UltParc := Self.Valor;
  VlrT := roundTo(VlrParc, -2);

  for i := 1 to Self.NParcela do
  begin
    if (i = 1) then
      if (VlrEnt > 0) then
        VlrParc := VlrEnt
      else
        VlrParc := roundTo((VlrT + vlrSt),-2)
    else
      VlrParc := vlrT;
    if ((CodRecR = 0) or (CodRecR = 1)) then   //CodRecR = 1  novo titulo de baixa Parcial...
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_AREC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      Self.CodRec := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
    end;

    //Tratar a Data de Vencimento da Parcela
    if (CodRecR = 0) then
      if( Self.Prazo <> '' ) then
      begin
        vDataVenc := IncDay(Self.DtEmissao, StrToInt(Self.dataVenc.Strings[i-1]));
      end
      else
          vDataVenc := IncMonth(Self.DtVcto, (i-1));

    //TRATA VENCIMENTOS NOS FINS DE SEMANA
    Try
      sqlVenc :=  TSqlQuery.Create(nil);
      sqlVenc.SQLConnection := dm.sqlsisAdimin;
      strV := 'SELECT DADOS' +
        '  FROM PARAMETRO ' +
        ' WHERE PARAMETRO = ' + quotedstr('VENCFDSSEG');
      sqlVenc.SQL.Add(strV);
      sqlVenc.Open;
      if (not sqlVenc.isEmpty) then
      begin
        //VERIFICA SE O VENCIMENTO É EM UM SABADO OU DOMINGO E PASSA PARA A SEGUNDA}
         DtaAlt := DayOfWeek(vDataVenc);
         IF (DtaAlt = 1) then
           vDataVenc := IncDay(vDataVenc, 1);
         IF (DtaAlt = 7) then
           vDataVenc := IncDay(vDataVenc, 2);
      end;
    Finally
      sqlVenc.Free;
    end;

    strG := ' INSERT INTO RECEBIMENTO ' +
          ' (CODRECEBIMENTO, TITULO,          EMISSAO,         CODCLIENTE,      ' +
          ' DATAVENCIMENTO,  STATUS,          VIA,             FORMARECEBIMENTO,' +
          ' CODVENDA ,       CODALMOXARifADO, CODVENDEDOR,     CODUSUARIO,      ' +
          ' DATASISTEMA,     VALOR_PRIM_VIA,  VALOR_RESTO,     VALORTITULO,     ' +
          ' VALORRECEBIDO,   PARCELAS,        DESCONTO,        JUROS,           ' +
          ' FUNRURAL,        PERDA,           TROCA,           N_DOCUMENTO,     ' +
          ' OUTRO_CREDITO,   CAIXA,           SITUACAO,        CODORIGEM        ' +
          ') VALUES(';

    strG := strG + InttoStr(Self.CodRec) + ', ';
    strG := strG + QuotedStr(Self.Titulo) + ', ';
    strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy', Self.DtEmissao)) + ', ';
    strG := strG + IntToStr(Self.CodCliente) + ', ';
    //strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy', (IncDay(Self.DtEmissao, StrToInt(Self.dataVenc.Strings[i-1]))))) + ', ';
    strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy', vDataVenc)) + ', ';

    strG := strG + QuotedStr(Self.Status) + ', ';
    if (CodRecR > 0) then
      strG := strG + IntToStr(Self.Via) + ', '
    else
      strG := strG + IntToStr(i) + ', ';
    strG := strG + QuotedStr(Self.FormaRec) + ', ';
    strG := strG + InttoStr(Self.CodVenda) + ', ';
    strG := strG + InttoStr(Self.CodCCusto) + ', ';
    strG := strG + InttoStr(Self.CodVendedor) + ', ';
    strG := strG + InttoStr(Self.CodUsuario) + ', ';
    strG := strG + QuotedStr(FormatDateTime('mm/dd/yyyy hh:MM', Now)) + ', ';  // DataSistema

    if ((i = 1) and (CodRecR = 0)) then
      strG := strG + FloattoStr(Self.Valor) + ', ' // Valor_prim_via
    else
      strG := strG + '0, '; // Valor_prim_via

    //COLOCA O CAMPO COM 2 CASAS DECIMAIS
    //    VlrParc := Trunc(VlrParc * 100) / 100;

    if (i = 1) then
    begin
      if (Self.ValorRec > 0) then
          strG := strG + FloattoStr(Self.ValorRec) + ', ' // Valor_Resto
      else
          strG := strG + FloattoStr(VlrParc) + ', '; // Valor_Resto
    end
    else
      if ( i = Self.NParcela) then
        strG := strG + FloattoStr(UltParc) + ', ' // Valor_Resto
      else
        strG := strG + FloattoStr(VlrParc) + ', '; // Valor_Resto

    strG := strG + FloattoStr(Self.Valor) + ', ';  // Valortitulo
    strG := strG + '0, ';  // ValorRecebido
    strG := strG + IntToStr(Self.NParcela) + ', ';
    strG := strG + '0, ';  // Desconto
    strG := strG + '0, ';  // Juros
    strG := strG + '0, ';  // FUNRURAL
    strG := strG + '0, ';  // Perda
    strG := strG + '0, ';  // Troca
    strG := strG + QuotedStr(Self.NDoc) + ', '; // N.Doc.
    strG := strG + '0, ';  // Outro_Credito
    strG := strG + IntToStr(Self.Caixa) + ', '; // Caixa
    strG := strG + IntToStr(1) + ', '; // Situacao
    strG := strG + IntToStr(1) + ')'; // CodOrigem
    Rec  := executaSql(strG);
    UltParc := UltParc - VlrParc;
  end;

  DecimalSeparator := ',';
  Result := 0;
  if (Rec) then
    Result := Self.CodRec;
end;

function TReceberCls.getCaixa: Integer;
begin
  Result := _caixa;
end;

function TReceberCls.getCodCCusto: Integer;
begin
  Result := _codCCusto;
end;

function TReceberCls.getCodCliente: Integer;
begin
  Result := _codCliente;
end;

function TReceberCls.getCodOrigem: Integer;
begin
  Result := _codOrigem;
end;

function TReceberCls.getCodRec: Integer;
begin
  Result := _codRec;
end;

function TReceberCls.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TReceberCls.getCodVenda: Integer;
begin
  Result := _codVenda;
end;

function TReceberCls.getCodVendedor: Integer;
begin
  Result := _codVendedor;
end;

function TReceberCls.getdataVenc: TStringList;
begin
  Result := _datasVenc;
end;

function TReceberCls.getDesconto: Double;
begin
  Result := _desconto;
end;

function TReceberCls.getDtBaixa: TDateTime;
begin
  Result := _dtBaixa;
end;

function TReceberCls.getDtConsolida: TDateTime;
begin
  Result := _dtConsolida;
end;

function TReceberCls.getDtEmissao: TDateTime;
begin
  Result := _dtEmissao;
end;

function TReceberCls.getDtRec: TDateTime;
begin
  Result := _dtRec;
end;

function TReceberCls.getDtVcto: TDateTime;
begin
  Result := _dtVcto;
end;

function TReceberCls.getFormaRec: String;
begin
  Result := _formaRec;
end;

function TReceberCls.getJuros: Double;
begin
  Result := _juros;
end;

function TReceberCls.getMulta: Double;
begin
  Result := _multa;
end;

function TReceberCls.getNDoc: String;
begin
  Result := _nDoc;
end;

function TReceberCls.getNParcela: Integer;
begin
  Result := _nParcela;
end;

function TReceberCls.getObs: String;
begin
  Result := _obs;
end;

function TReceberCls.getOutrosCred: Double;
begin
  Result := _outrosCred;
end;

function TReceberCls.getOutrosDeb: Double;
begin
  Result := _outrosDeb;
end;

function TReceberCls.getPrazo: String;
begin
  Result := _prazo;
end;

function TReceberCls.getSerie: String;
begin
  Result := _serie;
end;

function TReceberCls.getStatus: String;
begin
  Result := _status;
end;

function TReceberCls.getValor: Double;
begin
  Result := _valor;
end;

function TReceberCls.getValorRec: Double;
begin
  Result := _valorRec;
end;

function TReceberCls.getVia: SmallInt;
begin
  Result := _via;
end;

procedure TReceberCls.gravaHistorico(CODREC: INTEGER; TITULO: String;
  CAIXA: Integer; USUARIO: Integer; TIPOHISTORICO, HISTORICO: String);
var strHist, id_hist: String;
sqlId : TSqlQuery;
begin
  Try
    sqlId :=  TSqlQuery.Create(nil);
    sqlId.SQLConnection := dm.sqlsisAdimin;
    strHist := 'SELECT MAX(ID_HIST) ' +
      '  FROM RECEBIMENTO_HIST ' +
      ' WHERE CODRECEBIMENTO = ' + InttoStr(CodRec);
    sqlId.SQL.Add(strHist);
    sqlId.Open;
    if (sqlId.isEmpty) then
      id_hist := '1'
    else
      id_hist := IntToStr(sqlId.fields[0].asInteger + 1);
  Finally
    sqlId.Free;
  end;
  strHist := 'INSERT INTO RECEBIMENTO_HIST VALUES(';
  strHist := strHist + IntToStr(CODREC);
  strHist := strHist + ', ' + id_hist;
  strHist := strHist + ', ' + QuotedStr(titulo);
  strHist := strHist + ', ' + IntToStr(caixa);
  strHist := strHist + ', ' + QuotedStr(tipoHistorico);
  strHist := strHist + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Now));
  strHist := strHist + ', ' + QuotedStr(Historico);
  strHist := strHist + ', ' + IntToStr(Usuario);
  strHist := strHist + ')';
  dm.sqlsisAdimin.ExecuteDirect(strHist);
end;

procedure TReceberCls.setCaixa(const Value: Integer);
begin
  _caixa := Value;
end;

procedure TReceberCls.setCodCCusto(const Value: Integer);
begin
  _codCCusto := Value;
end;

procedure TReceberCls.setCodCliente(const Value: Integer);
begin
  _codCliente := Value;
end;

procedure TReceberCls.setCodOrigem(const Value: Integer);
begin
  _codOrigem := Value;
end;

procedure TReceberCls.setCodRec(const Value: Integer);
begin
  _codRec := Value;
end;

procedure TReceberCls.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TReceberCls.setCodVenda(const Value: Integer);
begin
  _codVenda := Value;
end;

procedure TReceberCls.setCodVendedor(const Value: Integer);
begin
  _codVendedor := Value;
end;

procedure TReceberCls.setdataVenc(const Value: TStringList);
begin
  _datasVenc := Value;
end;

procedure TReceberCls.setDesconto(const Value: Double);
begin
  _desconto := Value;
end;

procedure TReceberCls.setDtBaixa(const Value: TDateTime);
begin
  _dtBaixa := Value;
end;

procedure TReceberCls.setDtConsolida(const Value: TDateTime);
begin
  _dtConsolida := Value;
end;

procedure TReceberCls.setDtEmissao(const Value: TDateTime);
begin
  _dtEmissao := Value;
end;

procedure TReceberCls.setDtRec(const Value: TDateTime);
begin
  _dtRec := Value;
end;

procedure TReceberCls.setDtVcto(const Value: TDateTime);
begin
  _dtVcto := Value;
end;

procedure TReceberCls.setFormaRec(const Value: String);
begin
  _formaRec := Value;
end;

procedure TReceberCls.setJuros(const Value: Double);
begin
  _juros := Value;
end;

procedure TReceberCls.setMulta(const Value: Double);
begin
  _multa := Value;
end;

procedure TReceberCls.setNDoc(const Value: String);
begin
  _nDoc := Value;
end;

procedure TReceberCls.setNParcela(const Value: Integer);
begin
  _nParcela := Value;
end;

procedure TReceberCls.setObs(const Value: String);
begin
  _obs := Value;
end;

procedure TReceberCls.setOutrosCred(const Value: Double);
begin
  _outrosCred := Value;
end;

procedure TReceberCls.setOutrosDeb(const Value: Double);
begin
  _outrosDeb := Value;
end;

procedure TReceberCls.setPrazo(const Value: String);
begin
  _prazo := Value;
end;

procedure TReceberCls.setSerie(const Value: String);
begin
  _serie := Value;
end;

procedure TReceberCls.setStatus(const Value: String);
begin
  _status := Value;
end;

procedure TReceberCls.setValor(const Value: Double);
begin
  _valor := Value;
end;

procedure TReceberCls.setValorRec(const Value: Double);
begin
  _valorRec := Value;
end;

procedure TReceberCls.setVia(const Value: SmallInt);
begin
  _via := Value;
end;

end.
