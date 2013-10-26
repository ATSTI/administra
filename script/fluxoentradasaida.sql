create or ALTER PROCEDURE FLUXOENTRADASAIDA (
    DTAINI Date,
    DTAFIM Date )
RETURNS (
    DTAPAGTO Date,
    ORDEM Smallint,
    DESCRICAO Varchar(150),
    VALORC Double precision,
    VALORD Double precision,
    VALOR Double precision,
    CONTACONTABIL Varchar(200),
    CODCONTA Varchar(20),
    FORMA Varchar(20),
    N_DOC Varchar(20),
    VALORCAIXAC Double precision,
    VALORCAIXAD Double precision,
    VALORTOTAL Double precision
 )
AS
DECLARE VARIABLE CODCONT INTEGER;
DECLARE VARIABLE CCONTABIL INTEGER;
DECLARE VARIABLE N_TITULO VARCHAR(15);
DECLARE VARIABLE VLINIC DOUBLE PRECISION = 0;
DECLARE VARIABLE VLINID DOUBLE PRECISION = 0;
DECLARE VARIABLE VLINIT DOUBLE PRECISION = 0;
DECLARE VARIABLE VLINI DOUBLE PRECISION = 0;
DECLARE VARIABLE NCONTA VARCHAR(15);
DECLARE VARIABLE j INTEGER;
DECLARE VARIABLE i INTEGER;
DECLARE VARIABLE FORN VARCHAR(60);
DECLARE VARIABLE CAIXA VARCHAR(20);
DECLARE VARIABLE CODCAIXA integer;
BEGIN
  valorTotal = 0;
  dtaPagto = dtaIni - 1;
  /*Pegando os Saldos de Caixas/Bancos */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CAIXA'
  Into :Caixa;
  for SELECT CODIGO, NOME FROM PLANO WHERE CONTAPAI = PLNCTAMAIN(:CAIXA)
  into :codCaixa, :descricao
  do begin 
    for select VALOR from SP_MOV_CAIXA((:dtaIni-1),(:dtaIni-1),:codCaixa)
     into :valorc
    do begin 
    end 
    valorCaixaD = 0;
    valorCaixaC = 0;
    if (valorc > 0) then 
      valorcaixaD = valorc;
    if (valorc < 0) then 
      valorcaixaC = valorc;
    valorTotal = valorTotal + valorc;
    valorC = null;
    suspend;
  end 

  -- Total Pago ae esta data
  valorc = 0;
  valord = 0;
  valor = 0;
  valorCaixaC = 0;
  valorCaixaD = 0;
  Descricao = null;
  /*                                                    */
  /*                                                    */
  /*     Total de Debitos (Entrou) por RECEBIMENTOS     */
  /*                                                    */
  /*           */
  SELECT sum(rec.VALOR_RESTO)
     FROM RECEBIMENTO rec where 
     rec.DATAVENCIMENTO < :DTAINI and rec.STATUS = '5-'
    INTO :VALORD;
    IF (VALORD IS NULL) THEN 
      VALORD = 0;
    CONTACONTABIL = 'Saldo Contas a Receber ';
    DESCRICAO = CONTACONTABIL;
    VALOR = VALOR + VALORD;
    VALORTOTAL = VALORTOTAL + VALORD;
  suspend;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    VALORC = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;


  SELECT sum(pag.VALOR_RESTO)
    FROM PAGAMENTO pag
    where pag.DATAVENCIMENTO < :DTAINI and pag.STATUS = '5-'
    into :valorC;
    
    IF (VALORC IS NULL) THEN 
      VALORC = 0;

    CONTACONTABIL = 'Saldo Contas a Pagar ';
    DESCRICAO = CONTACONTABIL;
    VALOR = VALOR - VALORC;
    VALORTOTAL = VALORTOTAL - VALORC;
  suspend;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    VALORC = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;


  j = :DTAFIM - :DTAINI; 
  i = 0;
  While (:i < (j + 1)) do
  begin  
    FOR SELECT rec.DATAVENCIMENTO, CAST(rec.CODCLIENTE AS VARCHAR(5)) || '-' ||  cli.NOMECLIENTE, 
      rec.HISTORICO, (rec.VALOR_RESTO), rec.CONTACREDITO, rec.FORMARECEBIMENTO, rec.N_DOCUMENTO  
      FROM RECEBIMENTO rec, CLIENTES cli where cli.CODCLIENTE = rec.CODCLIENTE 
      and rec.DATAVENCIMENTO = (:DTAINI + :i) and rec.STATUS = '5-'
      order by rec.DATAVENCIMENTO, cli.nomecliente
    INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORD, :CCONTABIL, :FORMA, :N_DOC
    DO BEGIN
      SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
      INTO :CONTACONTABIL, :CODCONTA;
      CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
      VALOR = VALOR + VALORD;
      VALORTOTAL = VALORTOTAL + VALORD;
    if (forma = '1') then 
      forma = 'Dinheiro';
    else if (forma = '2') then 
      forma = 'Cheque';
    else if (forma = '3') then 
      forma = 'Cheque-Pre';
    else if (forma = '4') then 
      forma = 'Boleto';
    else if (forma = '5') then 
      forma = 'Duplicata';
    else if (forma = '6') then 
      forma = 'Cartao Credito';
    else if (forma = '7') then 
      forma = 'Cartao Debito';
    else if (forma = '8') then 
      forma = 'Deposito';
    else if (forma = '9') then 
      forma = 'Debito Automatico';
    else if (forma = 'A') then 
      forma = 'Home-Banking';
    else if (forma = 'B') then 
      forma = 'Doc';
    else if (forma = 'C') then 
      forma = 'Cartorio';
    else if (forma = 'D') then 
      forma = 'Transferencia';

    else if (forma = 'E') then 
      forma = 'Credito em conta';



    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;
    ORDEM = 1;

    SUSPEND;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    VALORC = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;

  
  END
  /*                                                    */
  /*                                                    */
  /*   Total de Debitos pela Movimentacao Financeira    */
  /*                                                    */
  /*                                                    */
  /*                                                    */
  /*                                                    */
  /*      Total de Créditos (Saiu) por PAGAMENTOS       */
  /*                                                    */
  /*                                                    */
  FOR SELECT pag.DATAVENCIMENTO, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR, 
    pag.HISTORICO, (pag.VALOR_RESTO), pag.CONTACREDITO, pag.FORMAPAGAMENTO, pag.N_DOCUMENTO  
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATAVENCIMENTO = (:DTAINI + :i) and pag.STATUS = '5-'
    
    order by pag.DATAVENCIMENTO
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;

    VALOR = VALOR - VALORC;
    VALORTOTAL = VALORTOTAL - VALORC;

    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;

    ORDEM = 2;
    if (forma = '1') then 
      forma = 'Dinheiro';
    else if (forma = '2') then 
      forma = 'Cheque';
    else if (forma = '3') then 
      forma = 'Cheque-Pre';
    else if (forma = '4') then 
      forma = 'Boleto';
    else if (forma = '5') then 
      forma = 'Duplicata';
    else if (forma = '6') then 
      forma = 'Cartao Credito';
    else if (forma = '7') then 
      forma = 'Cartao Debito';
    else if (forma = '8') then 
      forma = 'Deposito';
    else if (forma = '9') then 
      forma = 'Debito Automatico';
    else if (forma = 'A') then 
      forma = 'Home-Banking';
    else if (forma = 'B') then 
      forma = 'Doc';
    else if (forma = 'C') then 
      forma = 'Cartorio';
    else if (forma = 'D') then 
      forma = 'Transferencia';

    else if (forma = 'E') then 
      forma = 'Debito em conta';

    SUSPEND;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    VALORC = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;
  END

  -- Movimento do Caixa 
  For Select DtaPagto, DESCRICAO, valorC, ValorD, n_doc from SP_MOV_CAIXAORDEMFLUXO(:DTAINI+ :I, :DTAINI+ :I, 0)
    into :DtaPagto, :descricao, :valorCaixaC, :valorCaixaD, :n_doc
  do begin    
    if (valorCaixaC is null) then 
      valorCaixaC = 0;
    if (valorCaixaD is null) then 
      valorCaixaD = 0;
    VALORTOTAL = VALORTOTAL + VALORCAIXAD - VALORCAIXAC;
    ORDEM = 3;                                
    suspend;
    DESCRICAO = null;
    contacontabil = null;
    VALORCAIXAD = 0;
    VALORCAIXAC = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;  
  end 
  i = i + 1;

  end -- fim do WHILE

END
