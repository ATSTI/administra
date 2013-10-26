CREATE OR ALTER TRIGGER ALTERA_CONTABIL FOR VENDA INACTIVE
AFTER UPDATE
POSITION 1
AS
  DECLARE VARIABLE CT_DESPESA VARCHAR(20);
  DECLARE VARIABLE CT_RECEITA VARCHAR(20);
  DECLARE VARIABLE CT_ESTOQUE VARCHAR(20);
  DECLARE VARIABLE CT_CLIENTE VARCHAR(20);
  DECLARE VARIABLE CT_FORNECEDOR VARCHAR(20);
  DECLARE VARIABLE QTDE_PROD DOUBLE PRECISION;
  DECLARE VARIABLE VALOR_PROD DOUBLE PRECISION;
  DECLARE VARIABLE VALOR_CMV DOUBLE PRECISION;
  DECLARE VARIABLE CT_CAIXA VARCHAR(20);
  DECLARE VARIABLE N_ITENS INTEGER;

begin
  /* Se o STATUS da Tab RECEBIMENTO for diferente de '5-', não é permitido fazer alteração */
  IF ((NEW.STATUS <> 3) and (NEW.STATUS <> 14)  and (NEW.STATUS <> 15) and (NEW.STATUS <> 12)) then
  begin
  IF (NOT EXISTS(SELECT STATUS FROM RECEBIMENTO WHERE CODVENDA = OLD.CODVENDA AND STATUS like '5-')) THEN
    EXCEPTION altera_venda_n_permitido;
  /* Apago todo lançamento na tabela MOVIMENTOCONT */  
  DELETE FROM MOVIMENTOCONT where CODORIGEM = NEW.CODMOVIMENTO AND TIPOORIGEM = 'VENDA';
  /* Incluo tudo novamente */
  /* Se teve entrada lança o valor no caixa */
  IF (new.ENTRADA > 0) THEN
  begin  
    /* Pegando a conta CAIXA */
    for SELECT DADOS from PARAMETRO WHERE PARAMETRO = 'CAIXA' 
    into :CT_CAIXA
    do
    /* ------------------------------------------------------------*/
    /* Fazendo o Lançamento a Débito em Duplicatas a receber       */
    /* ------------------------------------------------------------*/
    BEGIN
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORDEBITO, QTDEDEBITO) 
      VALUES (NEW.CODMOVIMENTO, 'VENDA', NEW.DATAVENDA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_CAIXA,
      NEW.ENTRADA, 1);  
    END
  end
  /* Pegando a Conta CLIENTE - caso o pagamento não seja avista (entrada < valor)*/
  if (new.VALOR > new.ENTRADA) then
  begin
    FOR SELECT CONTA_CLIENTE FROM CLIENTES WHERE CODCLIENTE = OLD.CODCLIENTE 
    INTO :CT_CLIENTE
    DO
    /* ------------------------------------------------------------*/
    /* Fazendo o Lançamento a Débito em Duplicatas a receber       */
    /* ------------------------------------------------------------*/
    BEGIN
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORDEBITO, QTDEDEBITO) 
      VALUES (NEW.CODMOVIMENTO, 'VENDA', NEW.DATAVENDA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_CLIENTE,
      (NEW.VALOR-new.ENTRADA-new.DESCONTO), 1);  
    END
  end
  /* Contando os itens para rateio do desconto */
  for SELECT COUNT(CODPRODUTO) FROM MOVIMENTODETALHE WHERE CODMOVIMENTO = new.CODMOVIMENTO
    into :N_ITENS
    do
  /* Pegando a Conta PRODUTOS*/
  FOR SELECT DET.quantidade, DET.VALTOTAL, PROD.CONTA_DESPESA, PROD.CONTA_ESTOQUE, PROD.CONTA_RECEITA,
     (PROD.VALORUNITARIOATUAL * DET.quantidade) as CMV FROM MOVIMENTODETALHE DET
     INNER JOIN PRODUTOS PROD on PROD.CODPRODUTO = DET.CODPRODUTO 
     WHERE DET.CODMOVIMENTO = OLD.CODMOVIMENTO
     INTO :QTDE_PROD, :VALOR_PROD, :CT_DESPESA, :CT_ESTOQUE, :CT_RECEITA, :VALOR_CMV
     DO
     BEGIN
       /* ------------------------------------------------------------*/
       /* Fazendo o Lançamento a Crédito em Receitas de Vendas       */
       /* ------------------------------------------------------------*/
       INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
       VALORCREDITO, QTDECREDITO) 
       VALUES (NEW.CODMOVIMENTO, 'VENDA', NEW.DATAVENDA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_RECEITA,
       (:VALOR_PROD-(new.DESCONTO/:N_ITENS)), :QTDE_PROD);  
       /* ------------------------------------------------------------*/
       /* Fazendo o Lançamento a Débito CMV                           */
       /* ------------------------------------------------------------*/
       INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
       VALORDEBITO, QTDEDEBITO) 
       VALUES (NEW.CODMOVIMENTO, 'VENDA', NEW.DATAVENDA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_DESPESA,
       :VALOR_CMV, :QTDE_PROD);
       /* ------------------------------------------------------------*/
       /* Fazendo o Lançamento a Crédito no Estoque                   */
       /* ------------------------------------------------------------*/
       INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
       VALORCREDITO, QTDECREDITO) 
       VALUES (NEW.CODMOVIMENTO, 'VENDA', NEW.DATAVENDA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_ESTOQUE,
       :VALOR_CMV, :QTDE_PROD);
     END
   end
END
