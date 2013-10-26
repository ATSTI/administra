set term ^ ;
ALTER PROCEDURE  LANCA_CONT_COMPRA_PAG( N_TITULO                         VARCHAR( 18 )
                                      , DT_EMISSAO                       DATE
                                      , COD_FORNEC                       INTEGER )
AS
DECLARE VARIABLE V_CODORIGEM INTEGER;
DECLARE VARIABLE V_CODORIGEMA INTEGER;
DECLARE VARIABLE V_CODORIGINAL INTEGER;
DECLARE VARIABLE DATA_EMISSAO DATE;
DECLARE VARIABLE DATA_VENCTO DATE;
DECLARE VARIABLE COD_US SMALLINT;
DECLARE VARIABLE COD_CC INTEGER;
DECLARE VARIABLE CONTA INTEGER;
DECLARE VARIABLE CT_DESPESA VARCHAR(20);
DECLARE VARIABLE CT_FORNECEDOR VARCHAR(20);
DECLARE VARIABLE V_VLRTITULO DOUBLE PRECISION;
DECLARE VARIABLE V_VLRTIT DOUBLE PRECISION;
DECLARE VARIABLE QTDE_RAT DOUBLE PRECISION;
DECLARE VARIABLE V_VLRRECEBIDO DOUBLE PRECISION;
DECLARE VARIABLE V_DESCONTO DOUBLE PRECISION;
DECLARE VARIABLE V_JUROS DOUBLE PRECISION;
DECLARE VARIABLE CT_CAIXA VARCHAR(20);
DECLARE VARIABLE COD_CAIXA SMALLINT;
DECLARE VARIABLE COD_FORN INTEGER;
DECLARE VARIABLE USA_RATEIO CHARACTER(1);
DECLARE VARIABLE DESPESA_MES CHARACTER(1);
DECLARE VARIABLE PARCELA INTEGER;
DECLARE VARIABLE i INTEGER;
begin
  V_CODORIGEMA = 0;
  /* Pegando os dados do título lançado */
  FOR SELECT CODPAGAMENTO,EMISSAO, CODUSUARIO, CONTACREDITO, CONTADEBITO, CODFORNECEDOR,
    VALOR_RESTO, VALORTITULO, VALORRECEBIDO, DESCONTO, JUROS, CAIXA, DATAVENCIMENTO, PARCELAS from PAGAMENTO
    where ((TITULO = :N_TITULO) AND (EMISSAO = :DT_EMISSAO) AND (CODFORNECEDOR = :COD_FORNEC)) 
  INTO :V_CODORIGEM, :DATA_EMISSAO, :COD_US, :COD_CC, :CONTA , :COD_FORN,
       :V_VLRTITULO, :V_VLRTIT, :V_VLRRECEBIDO, :V_DESCONTO, :V_JUROS, :COD_CAIXA, :DATA_VENCTO, :PARCELA
  DO
  BEGIN
    i = 0;
    if (V_CODORIGEMA = 0) then
      V_CODORIGINAL = V_CODORIGEM;
    /* mudar a data de emissão */
    if (V_CODORIGEMA > 0) then
    begin
      DATA_EMISSAO = DATA_VENCTO;
    end  
    /* Verificando se houve movimento no caixa */
    IF (:V_VLRTIT = :V_VLRRECEBIDO) then
    begin
      /* Pegando a conta CAIXA */
      SELECT CONTA FROM PLANO WHERE CODIGO = :COD_CAIXA 
      into :CT_CAIXA;
      /* -------------------------------------------------------------------*/
      /* Fazendo o Lançamento a Crédito no Caixa se foi pagamento a vista --*/
      /* -------------------------------------------------------------------*/
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORCREDITO, QTDECREDITO, VALORDEBITO, QTDEDEBITO) 
      VALUES (:V_CODORIGEM, 'PAGAMENTO',:DATA_EMISSAO, :COD_US, :COD_CC, :CT_CAIXA ,
      :V_VLRRECEBIDO, 1,0,0);  
    end
    /* Pegando a Conta Cliente - caso o pagamento não seja avista (entrada < valor)*/
    if (:V_VLRTIT > :V_VLRRECEBIDO) then
    begin
      SELECT CONTA_FORNECEDOR FROM FORNECEDOR WHERE CODFORNECEDOR = :COD_FORNEC  
      INTO :CT_FORNECEDOR;
      /* ------------------------------------------------------------*/
      /* ---- Fazendo o Lançamento a Débito em Duplicatas a Pagar ---*/
      /* ------------------------------------------------------------*/
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORCREDITO, QTDECREDITO, VALORDEBITO, QTDEDEBITO) 
      VALUES(:V_CODORIGEM, 'PAGAMENTO',:DATA_EMISSAO, :COD_US, :COD_CC, :CT_FORNECEDOR ,
      (:V_VLRTITULO - :V_DESCONTO + :V_JUROS),1,0,0);  
    end
    /* Pegando a Conta de Despesa (na tabela PAGAMENTO é informado a CONTA DA DESPESA, */
    /* o código dela                                                                   */
    SELECT CONTA, RATEIO FROM PLANO 
    WHERE CODIGO = :CONTA
    INTO :CT_DESPESA, :USA_RATEIO;
    /* ------------------------------------------------------------*/
    /* Verificando se houve rateio                                 */
    /* ------------------------------------------------------------*/
    IF (:USA_RATEIO = 'S') THEN 
    begin
      for SELECT CODCCUSTO, VALOR, QTDE FROM MOV_RATEIO where CODMOVIMENTO = :V_CODORIGINAL and TIPO = 'PAGAMENTO'
      INTO :COD_CC, :V_VLRTITULO, :QTDE_RAT
      do
      begin
        /* ------------------------------------------------------------*/
        /* Fazendo o Lançamento a Débito em Despesas                   */
        /* ------------------------------------------------------------*/
          INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
            VALORDEBITO, QTDEDEBITO, VALORCREDITO, QTDECREDITO) 
            VALUES (:V_CODORIGEM, 'PAGAMENTO',:DATA_EMISSAO, :COD_US, :COD_CC, :CT_DESPESA ,
            (:V_VLRTIT/:PARCELA),(:QTDE_RAT/:PARCELA),0,0);  
      end 
    end
    else
    begin   

      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
        VALORDEBITO, QTDEDEBITO, VALORCREDITO, QTDECREDITO) 
        VALUES (:V_CODORIGEM, 'PAGAMENTO',:DATA_EMISSAO, :COD_US, :COD_CC, :CT_DESPESA ,
        ((:V_VLRTIT + :V_JUROS)/ :PARCELA),1,0,0);  
    end
    /* para lancamento de parcelas */
    V_CODORIGEMA = V_CODORIGEM;

  end
end
