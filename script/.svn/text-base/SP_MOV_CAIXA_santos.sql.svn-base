ALTER PROCEDURE SP_MOV_CAIXA(
  DTAINI DATE,
  DTAFIM DATE,
  COD_CAIXA SMALLINT,
  COD_ORIGEM INTEGER)
RETURNS(
  DTAPAGTO DATE,
  ORDEM SMALLINT,
  DESCRICAO VARCHAR(150) CHARACTER SET WIN1252,
  VALORC DOUBLE PRECISION,
  VALORD DOUBLE PRECISION,
  VALOR DOUBLE PRECISION,
  CONTACONTABIL VARCHAR(200) CHARACTER SET WIN1252,
  CAIXA VARCHAR(60) CHARACTER SET WIN1252,
  CODCONTA VARCHAR(20) CHARACTER SET WIN1252,
  FORMA VARCHAR(20) CHARACTER SET WIN1252,
  N_DOC VARCHAR(20) CHARACTER SET WIN1252,
  COMPENSADO VARCHAR(30) CHARACTER SET WIN1252,
  ORIGEM INTEGER,
  CODRECEBE INTEGER)
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
    WHERE ((pag.STATUS = '7-') or (pag.STATUS = '1-'))
    and pag.DATAPAGAMENTO < :DTAINI and PLNCTAMAIN(pl.CONTA) = PLNCTAMAIN(:CONTACAIXA)
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    and ((CODORIGEM = :COD_ORIGEM) or (:COD_ORIGEM = 9999999))
  INTO :VLINID;
  -- Total Recebido ate esta data
  SELECT SUM(rec.VALORRECEBIDO + rec.JUROS) FROM RECEBIMENTO rec
    inner join plano pl on pl.CODIGO = rec.CAIXA
    WHERE  ((rec.STATUS = '7-')  or (rec.STATUS = '1-'))
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
    select SUM(VALORCREDITO), SUM(VALORDEBITO) from MOVIMENTOCONT where data < :DTAINI
      and tipoorigem = 'CONTABIL' and CONTA = :NCONTA
      and ((CODORIGEM = :COD_ORIGEM) or (:COD_ORIGEM = 9999999))
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
  ORIGEM = null;
  /*                                                    */
  /*                                                    */
  /*     Total de Debitos (Entrou) por RECEBIMENTOS     */
  /*                                                    */
  /*                                                    */
  FOR SELECT rec.DATARECEBIMENTO, CAST(rec.CODCLIENTE AS VARCHAR(5)) || '-' ||  cli.NOMECLIENTE,
    rec.HISTORICO, (rec.VALORRECEBIDO + rec.JUROS), rec.CONTACREDITO, rec.FORMARECEBIMENTO, rec.N_DOCUMENTO,
    rec.CODORIGEM, rec.CODRECEBIMENTO FROM RECEBIMENTO rec, CLIENTES cli where cli.CODCLIENTE = rec.CODCLIENTE
    and rec.DATARECEBIMENTO BETWEEN :DTAINI AND :DTAFIM
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    and ((CODORIGEM = :COD_ORIGEM) or (:COD_ORIGEM = 9999999))
    order by rec.DATARECEBIMENTO
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORD, :CCONTABIL, :FORMA, :N_DOC, :ORIGEM, :codRECEBE
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
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM from MOVIMENTOCONT mov
       LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM
       left outer join PLANO PC on pc.CONTA = mov.CONTA
       WHERE pc.CONTA = mov.CONTA and mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and pc.CODIGO = :COD_CAIXA
       group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM
      INTO :DTAPAGTO, :VALORD, :DESCRICAO, :CODCONTA, :origem
    do begin
      VALOR = VALOR + VALORD;
      ORDEM = 1;
      IF (VALORD > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
      ORIGEM = null;
    end
  END
  ELSE
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM from MOVIMENTOCONT mov, PLANO pc
       LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM
       WHERE pc.CONTA = mov.CONTA and  mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and PLNCTAMAIN(mov.CONTA) = PLNCTAMAIN(:CONTACAIXA)
        and ((mov.CODORIGEM = :COD_ORIGEM) or (:COD_ORIGEM = 9999999))
       group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM
      INTO :DTAPAGTO,:VALORD, :DESCRICAO, :CODCONTA, :origem
    do begin
      VALOR = VALOR + VALORD;
      ORDEM = 1;
      IF (VALORD > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
      ORIGEM = null;
    end
  END
  /*                                                    */
  /*                                                    */
  /*      Total de CrÃ©ditos (Saiu) por PAGAMENTOS       */
  /*                                                    */
  /*                                                    */
  FOR SELECT pag.DATAPAGAMENTO, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR,
    pag.HISTORICO, (pag.VALORRECEBIDO + pag.JUROS), pag.CONTACREDITO, pag.FORMAPAGAMENTO, pag.N_DOCUMENTO
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR
    and pag.DATAPAGAMENTO BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    order by pag.DATAPAGAMENTO
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
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM from MOVIMENTOCONT mov,
       HISTORICO_CONTAB his, PLANO pc
       WHERE mov.CODORIGEM = his.COD_CONTAB and pc.CONTA = mov.CONTA AND mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and pc.CODIGO = :COD_CAIXA
        and ((CODORIGEM = :COD_ORIGEM) or (:COD_ORIGEM = 9999999))
       group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM
      INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA, :origem
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
      ORIGEM = null;
    end
  END
  ELSE
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM from MOVIMENTOCONT mov
       , HISTORICO_CONTAB his, PLANO pc
       WHERE mov.CODORIGEM = his.COD_CONTAB and pc.CONTA = mov.CONTA AND  mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and PLNCTAMAIN(MOV.CONTA) = PLNCTAMAIN(:CONTACAIXA)
           and ((CODORIGEM = :COD_ORIGEM) or (:COD_ORIGEM = 9999999))
       group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO, mov.CODORIGEM
      INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA, :origem
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
      ORIGEM = null;
    end
  END

END;
