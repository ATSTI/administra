ALTER PROCEDURE SP_MOV_CAIXA (
    DTAINI date,
    DTAFIM date,
    COD_CAIXA smallint )
RETURNS (
    DTAPAGTO date,
    ORDEM smallint,
    DESCRICAO varchar(350),
    VALORC double precision,
    VALORD double precision,
    VALOR double precision,
    CONTACONTABIL varchar(200),
    CAIXA varchar(60),
    CODCONTA varchar(20),
    FORMA varchar(20),
    N_DOC varchar(20),
    COMPENSADO varchar(10) )
AS
DECLARE VARIABLE CCAIXA INTEGER;
DECLARE VARIABLE CODCONT INTEGER;
DECLARE VARIABLE CCONTABIL INTEGER;
DECLARE VARIABLE N_TITULO VARCHAR(15);
DECLARE VARIABLE VLINIC DOUBLE PRECISION = 0;
DECLARE VARIABLE VLINID DOUBLE PRECISION = 0;
DECLARE VARIABLE VLINIT DOUBLE PRECISION = 0;
DECLARE VARIABLE VLINI DOUBLE PRECISION = 0;
DECLARE VARIABLE NCONTA VARCHAR(15);
DECLARE VARIABLE CONTACAIXA VARCHAR(15);
DECLARE VARIABLE FORN VARCHAR(60);
BEGIN
  /* Saldo Inicial */
  -- Total Pago ae esta data
  valorc = 0;
  valord = 0;
  valor = 0;
  /* Caixa PADRAO CADASTRADO*/
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CAIXA'
    INTO :CONTACAIXA;

  SELECT SUM(pag.VALORRECEBIDO + pag.JUROS) FROM PAGAMENTO pag 
    inner join plano pl on pl.CODIGO = pag.CAIXA 
    WHERE (pag.STATUS = '7-')
    and pag.DATAPAGAMENTO < :DTAINI and PLNCTAMAIN(pl.CONTA) = PLNCTAMAIN(:CONTACAIXA)
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINID;
  -- Total Recebido ate esta data
  SELECT SUM(rec.VALORRECEBIDO + rec.JUROS) FROM RECEBIMENTO rec 
    inner join plano pl on pl.CODIGO = rec.CAIXA 
    WHERE  (rec.STATUS = '7-')
    and rec.DATARECEBIMENTO < :DTAINI  and PLNCTAMAIN(pl.CONTA) = PLNCTAMAIN(:CONTACAIXA)
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINIC;
  IF (VLINID IS NULL) THEN
    VLINID = 0;
  IF (VLINIC IS NULL) THEN
    VLINIC = 0;
  VLINIT = VLINIC - VLINID;
  -- Movimento feito pelo Movimentacao Finaceira(tabela MovimentoCont)
  -- Se a busca e por caixa entao pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    select SUM(VALORCREDITO), SUM(VALORDEBITO) from MOVIMENTOCONT where data < :DTAINI and tipoorigem = 'CONTABIL' and CONTA = :NCONTA
      INTO :VLINIC, VLINID; 
  END
  ELSE
  BEGIN 
    select SUM(VALORCREDITO), SUM(VALORDEBITO) from MOVIMENTOCONT where data < :DTAINI 
        and tipoorigem = 'CONTABIL' and PLNCTAMAIN(CONTA) = PLNCTAMAIN(:CONTACAIXA) 
      INTO :VLINIC, VLINID;   
  END
  IF (VLINID IS NULL) THEN
    VLINID = 0;
  IF (VLINIC IS NULL) THEN
    VLINIC = 0;
  -- Saldo Inicial
  VALOR = VLINIT + (VLINID - VLINIC);
  DESCRICAO = 'Saldo Inicial : ';
  DTAPAGTO = DTAINI;
  ORDEM = 0;
  SUSPEND;
  DESCRICAO = null;
  contacontabil = null;
  VALORD = 0;
  FORMA = null;
  CODCONTA = null;
  /*                                                    */
  /*                                                    */
  /*     Total de Debitos (Entrou) por RECEBIMENTOS     */
  /*                                                    */
  /*                                                    */
  FOR SELECT rec.DATARECEBIMENTO, CAST(rec.CODCLIENTE AS VARCHAR(10)) || '-' ||  cli.RAZAOSOCIAL, 
    rec.HISTORICO, (rec.VALORRECEBIDO + rec.JUROS), rec.CONTACREDITO, rec.FORMARECEBIMENTO, rec.N_DOCUMENTO  
    FROM RECEBIMENTO rec, CLIENTES cli where cli.CODCLIENTE = rec.CODCLIENTE 
    and rec.DATARECEBIMENTO BETWEEN :DTAINI AND :DTAFIM
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    and (rec.STATUS = '7-')
    order by rec.DATARECEBIMENTO
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORD, :CCONTABIL, :FORMA, :N_DOC
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    VALOR = VALOR + VALORD;

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
    IF (VALORD > 0.001) THEN
    SUSPEND;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;
  END
  /*                                                    */
  /*                                                    */
  /*   Total de Debitos pela Movimentacao Financeira    */
  /*                                                    */
  /*                                                    */
  -- Se a busca e por caixa entao pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO 
          from MOVIMENTOCONT mov
         inner join PLANO pc on pc.CONTA = mov.CONTA 
          LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM
         WHERE mov.DATA BETWEEN :DTAINI AND :DTAFIM
           and mov.tipoorigem = 'CONTABIL' 
           and pc.CODIGO = :COD_CAIXA 
         group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO 
          INTO :DTAPAGTO, :VALORD, :DESCRICAO, :CODCONTA 
    do begin
      VALOR = VALOR + VALORD;
      ORDEM = 1;
      IF (VALORD > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
    end
  END
  ELSE
  BEGIN 
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO 
          from MOVIMENTOCONT mov
         inner join PLANO pc on pc.CONTA = mov.CONTA 
          LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM
         WHERE mov.DATA BETWEEN :DTAINI AND :DTAFIM
           and mov.tipoorigem = 'CONTABIL' 
           and PLNCTAMAIN(mov.CONTA) = PLNCTAMAIN(:CONTACAIXA) 
         group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
          INTO :DTAPAGTO,:VALORD, :DESCRICAO, :CODCONTA 
    do begin
      VALOR = VALOR + VALORD;
      ORDEM = 1;
      IF (VALORD > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
    end
  END
  /*                                                    */
  /*                                                    */
  /*      Total de Creditos (Saiu) por PAGAMENTOS       */
  /*                                                    */
  /*                                                    */
  
  if (valor is null) then 
    valor = 0;
  descricao = null;
  FOR SELECT pag.DATAPAGAMENTO, CAST(pag.CODFORNECEDOR AS VARCHAR(10)) || '-' ||  forn.RAZAOSOCIAL, 
    pag.HISTORICO, (pag.VALORRECEBIDO + pag.JUROS), pag.CONTACREDITO, pag.FORMAPAGAMENTO, 
    pag.N_DOCUMENTO, pag.SITUACAOCHEQUE  
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATAPAGAMENTO BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    and (pag.STATUS = '7-')
    order by pag.DATAPAGAMENTO
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC, :compensado
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    
    if (valorc is null) then 
      valorc = 0;
    VALOR = VALOR - VALORC;
    
    if (forn is null) then
      forn = '';
      
    if (forma is null) then 
      forma = '1';  
    
    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN  || '-' || CONTACONTABIL;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO  || '-' || CONTACONTABIL;
      
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


    IF (VALORC > 0.001) then
      SUSPEND;
    contacontabil = null;
    VALORC = 0;
    DESCRICAO = null;
    VALORD = 0;
    CODCONTA = null;
    N_DOC = null;

  END
  
  
  /*                                                    */
  /*                                                    */
  /*   Total de Creditos pela Movimentacao Financeira    */
  /*                                                    */
  /*                                                    */
  -- Se a busca e por caixa entao pega o N. Conta Contabil do Caixa pedido
  
  
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO 
          from MOVIMENTOCONT mov
         inner join PLANO pc on pc.CONTA = mov.CONTA
          LEFT OUTER JOIN HISTORICO_CONTAB his on  mov.CODORIGEM = his.COD_CONTAB
         WHERE mov.DATA BETWEEN :DTAINI AND :DTAFIM
           and mov.tipoorigem = 'CONTABIL' 
           and pc.CODIGO = :COD_CAIXA 
         group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
          INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA
    do begin
      VALOR = VALOR - VALORC;
      ORDEM = 2;
      if (valorc is null) then 
        valorc = 0;
      IF (VALORC > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
      CCONTABIL = null;
    end
  END
  ELSE
  BEGIN 
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO 
          from MOVIMENTOCONT mov
         inner join PLANO pc on pc.CONTA = mov.CONTA
          LEFT OUTER JOIN HISTORICO_CONTAB his on  mov.CODORIGEM = his.COD_CONTAB
         WHERE mov.DATA BETWEEN :DTAINI AND :DTAFIM
           and mov.tipoorigem = 'CONTABIL' 
           and PLNCTAMAIN(MOV.CONTA) = PLNCTAMAIN(:CONTACAIXA) 
         group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
      INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA
    do begin
      VALOR = VALOR - VALORC;
      ORDEM = 2;
      if (valorc is null) then 
        valorc = 0;
      IF (VALORC > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
      CCONTABIL = null;
    end
  END

END