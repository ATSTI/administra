set term ^ ;
CREATE OR ALTER PROCEDURE  SP_MOV_CAIXA_ASH( DTAINI                           DATE
                                 , DTAFIM                           DATE
                                 , COD_CAIXA                        SMALLINT )
RETURNS ( DTAPAGTO                         DATE
        , ORDEM                            SMALLINT
        , DESCRICAO                        VARCHAR( 300 )
        , VALORC                           DOUBLE PRECISION
        , VALORD                           DOUBLE PRECISION
        , VALOR                            DOUBLE PRECISION
        , CONTACONTABIL                    VARCHAR( 200 )
        , CAIXA                            VARCHAR( 60 )
        , CODCONTA                         VARCHAR( 20 )
        , FORMA                            VARCHAR( 20 )
        , N_DOC                            VARCHAR( 20 )
        , ORDENA                           SMALLINT )
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
DECLARE VARIABLE FORN VARCHAR(60);
BEGIN
  /* Saldo Inicial */
  -- Total Pago atÃ© esta data
  valorc = 0;
  valord = 0;
  valor = 0;
  ordena = 0;
  SELECT SUM(pag.VALOR_RESTO) FROM PAGAMENTO pag 
  --WHERE ((pag.STATUS = '7-') or (pag.STATUS = '1-')) and
  where pag.DATACONSOLIDA < :DTAINI
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINID;
  -- Total Recebido atÃ© esta data
  SELECT SUM(rec.VALOR_RESTO+rec.DESCONTO) FROM RECEBIMENTO rec 
  --WHERE  ((rec.STATUS = '7-')  or (rec.STATUS = '1-')) and
    where rec.DATACONSOLIDA < :DTAINI
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINIC;
  IF (VLINID IS NULL) THEN
    VLINID = 0;
  IF (VLINIC IS NULL) THEN
    VLINIC = 0;
  VLINIT = VLINIC - VLINID;
  -- Movimento feito pelo MovimentaÃ§Ã£o Finaceira(tabela MovimentoCont)
  -- Se a busca Ã© por caixa entÃ£o pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    select SUM(VALORCREDITO), SUM(VALORDEBITO) from MOVIMENTOCONT where data < :DTAINI and tipoorigem = 'CONTABIL' and CONTA = :NCONTA
      INTO :VLINIC, VLINID; 
  END
  ELSE
  BEGIN 
    select SUM(VALORCREDITO), SUM(VALORDEBITO) from MOVIMENTOCONT where data < :DTAINI and tipoorigem = 'CONTABIL'
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
  /*     Total de DÃ©bitos (Entrou) por RECEBIMENTOS     */
  /*                                                    */
  /*         */
  for select datafinanceiro, '',item, sum(valor), 0,formarec, nDoc, ordenacao
   from CaixaItens(:DTAINI, :DTAFIM, :COD_CAIXA, '0', 0) 
   group by datafinanceiro, formaRec, item, nDoc , ordenacao                                          
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORD, :CCONTABIL, :FORMA, :N_DOC, :ORDENA
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

    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;
    ORDEM = 1;
    --IF (VALORD > 0.001) THEN
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
  /*   Total de DÃ©bitos pela MovimentaÃ§Ã£o Financeira    */
  /*                                                    */
  /*                                                    */
  -- Se a busca Ã© por caixa entÃ£o pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov
       LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM  
       left outer join PLANO PC on pc.CONTA = mov.CONTA
       WHERE pc.CONTA = mov.CONTA and mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and pc.CODIGO = :COD_CAIXA group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO 
      INTO :DTAPAGTO, :VALORD, :DESCRICAO, :CODCONTA 
    do begin
      VALOR = VALOR + VALORD;
      ORDEM = 1;
   --   IF (VALORD > 0.001) THEN
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
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov, PLANO pc 
       LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM 
       WHERE pc.CONTA = mov.CONTA and  mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
      INTO :DTAPAGTO,:VALORD, :DESCRICAO, :CODCONTA 
    do begin
      VALOR = VALOR + VALORD;
      ORDEM = 1;
    --  IF (VALORD > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
    end
  END
  /*                                                    */
  /*                                                    */
  /*      Total de CrÃ©ditos (Saiu) por PAGAMENTOS       */
  /*                                                    */
  /*                                                    */
  FOR SELECT pag.DATACONSOLIDA, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR, 
    pag.HISTORICO, pag.VALOR_RESTO, pag.CONTACREDITO, pag.FORMAPAGAMENTO, pag.N_DOCUMENTO  
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATACONSOLIDA BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    order by pag.datapagamento
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    VALOR = VALOR - VALORC;
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
   -- IF (VALORC > 0.001) then
    SUSPEND;
    contacontabil = null;
    VALORC = 0;
    DESCRICAO = null;
    VALORD = 0;
    CODCONTA = null;
    N_DOC = null;

  END
  FORMA = null;
  /*                                                    */
  /*                                                    */
  /*   Total de CrÃ©ditos pela MovimentaÃ§Ã£o Financeira    */
  /*                                                    */
  /*                                                    */
  -- Se a busca Ã© por caixa entÃ£o pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov, 
       HISTORICO_CONTAB his, PLANO pc
       WHERE mov.CODORIGEM = his.COD_CONTAB and pc.CONTA = mov.CONTA AND mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and pc.CODIGO = :COD_CAIXA group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
      INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA
    do begin
      VALOR = VALOR - VALORC;
      ORDEM = 2;
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
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov
       , HISTORICO_CONTAB his, PLANO pc
       WHERE mov.CODORIGEM = his.COD_CONTAB and pc.CONTA = mov.CONTA AND  mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
      INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA
    do begin
      VALOR = VALOR - VALORC;
      ORDEM = 2;
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

