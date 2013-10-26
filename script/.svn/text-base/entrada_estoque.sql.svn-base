CREATE OR ALTER TRIGGER ENTRADA_ESTOQUE FOR MOVIMENTODETALHE inactive 
AFTER UPDATE
POSITION 0
as
  DECLARE VARIABLE QTDEESTOQ DOUBLE PRECISION; 
  DECLARE VARIABLE ESTOQATUAL DOUBLE PRECISION; 
  DECLARE VARIABLE PM DOUBLE PRECISION; 
  DECLARE VARIABLE VLESTOQUE DOUBLE PRECISION;
  DECLARE VARIABLE PRECOESTOQUE VARCHAR(20); 
  DECLARE VARIABLE PC DOUBLE PRECISION;  
  DECLARE VARIABLE PCA DOUBLE PRECISION; 
  DECLARE VARIABLE PRECOVENDA CHAR(1); 
  DECLARE VARIABLE MARGEM DOUBLE PRECISION; 
begin
  IF (((NEW.BAIXA = '0') and (OLD.BAIXA is null)) OR (NEW.QUANTIDADE <> OLD.QUANTIDADE) OR (NEW.PRECO <> OLD.PRECO)) then
  begin 
  
    SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
    INTO :PRECOESTOQUE;

    IF (PRECOESTOQUE IS NULL) THEN 
      PRECOESTOQUE = 'ULTIMOPRECO';

    -- Se Configurado = 'S' então cada compra altera o preço de venda 
    SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'PRECOVENDA'
    INTO :PRECOVENDA;

    IF (PRECOVENDA IS NULL) THEN 
      PRECOVENDA = 'N';

    SELECT ESTOQUEATUAL, PRECOMEDIO, VALORUNITARIOATUAL, VALORUNITARIOANTERIOR, MARGEM
      FROM PRODUTOS WHERE CODPRODUTO = OLD.CODPRODUTO
    INTO :ESTOQATUAL, :PM, :PC, :PCA, :MARGEM; 
    /* Se o preço medio estiver abaixo de zero,           */
    /* então calcula o preço médio a partir desta entrada */ 
    IF (ESTOQATUAL is null) THEN
      ESTOQATUAL = 0;

    IF (PC is null) THEN
      PC = 0;

    IF (PCA is null) THEN
      PCA = 0;

    IF (PM is null) THEN
      PM = 0;

    IF (PM < 0) THEN
      PM = 0;

    IF (ESTOQATUAL < 0) THEN
      ESTOQATUAL = 0;

    IF ((NEW.QUANTIDADE + ESTOQATUAL) > 0) THEN
    begin 
      QTDEESTOQ = NEW.QUANTIDADE + ESTOQATUAL;
    end 
    else
    begin
      QTDEESTOQ = 1;
    end 
    /* Se a quantidade do estoque anterior estiver negativa */
    /* considero apenas a nova entrada como estoque         */
    IF (QTDEESTOQ < 0) THEN
      QTDEESTOQ = NEW.QUANTIDADE;
    /* Valor do Estoque Anterior */
    VLESTOQUE = ESTOQATUAL * PM;
    IF (VLESTOQUE < 0) THEN
      VLESTOQUE = 0;

    IF (PRECOESTOQUE = 'ULTIMOPRECO') THEN
    begin
      PM = NEW.PRECO;
      PCA = PC;
      PC = NEW.PRECO;
    end
    IF (PRECOESTOQUE = 'NAOALTERA') THEN
    begin
      PM = PM;
      PC = PC;
      PCA = PCA;
    end
    IF (PRECOESTOQUE = 'PRECOMEDIO') THEN
    begin
      PM = ((VLESTOQUE + (NEW.PRECO * NEW.QUANTIDADE))/QTDEESTOQ);
      PCA = PC;
      PC = NEW.PRECO;
    end
    /* 0 = ENTRADA */
    if ((NEW.BAIXA = '0') and (OLD.BAIXA is null)) then
    begin
      update PRODUTOS set 
        PRECOMEDIO = :PM,  
        ESTOQUEATUAL = :QTDEESTOQ,
        VALORUNITARIOANTERIOR = :PCA,
        VALORUNITARIOATUAL = :PC, 
        DATAULTIMACOMPRA = (SELECT DATAMOVIMENTO FROM MOVIMENTO 
           WHERE CODMOVIMENTO = NEW.CODMOVIMENTO) 
        where CODPRODUTO = NEW.CODPRODUTO;
      -- Altera preco Venda 
      if (PRECOVENDA = 'S') then 
        update PRODUTOS set VALOR_PRAZO = :PM * (1+(:MARGEM / 100))  
          where CODPRODUTO = NEW.CODPRODUTO;
    end
  end -- Fim do primeiro IF
  --exception EXC_PLANOCONTAINVAL;
end
