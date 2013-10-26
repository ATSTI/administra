CREATE OR ALTER TRIGGER ALTERA_ESTOQUE FOR MOVIMENTODETALHE inactive
AFTER UPDATE
POSITION 0
as
DECLARE VARIABLE STOQ DOUBLE PRECISION;
DECLARE VARIABLE VLRATUAL DOUBLE PRECISION;
DECLARE VARIABLE ESTOQATUAL DOUBLE PRECISION;
DECLARE VARIABLE PM DECIMAL(9,2);
DECLARE VARIABLE PMC DECIMAL(9,2);
DECLARE VARIABLE BASE DECIMAL(9,2);
DECLARE VARIABLE PRECOESTOQUE VARCHAR(20);
DECLARE VARIABLE PC DOUBLE PRECISION;  
DECLARE VARIABLE PCA DOUBLE PRECISION; 
Declare variable centroPerda smallint;
Declare variable codCcusto smallint;
begin
  estoqAtual = 0;
  IF ((NEW.BAIXA = '0') and (OLD.BAIXA is null) OR (NEW.QUANTIDADE <> OLD.QUANTIDADE) OR (NEW.PRECO <> OLD.PRECO)) then
  begin 
  /* 0 = ENTRADA */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
  INTO :PRECOESTOQUE;
  if (PRECOESTOQUE IS NULL) then
    PRECOESTOQUE = 'ULTIMOPRECO';
  FOR SELECT ESTOQUEATUAL, PRECOMEDIO, VALORUNITARIOATUAL FROM PRODUTOS WHERE CODPRODUTO = NEW.CODPRODUTO
  INTO :STOQ, :PM, :VLRATUAL
  DO
  begin
    if (stoq is null) then 
      stoq = 0;
    if (pm is null) then 
      pm = 0;
    if (vlrAtual is null) then 
      vlrAtual = 0;

    /* Se o preço medio estiver abaixo de zero,           */
    /* então zero o preço médio                           */ 
    IF (PM < 0) THEN
      PM = 0;
    IF (ESTOQATUAL < 0) THEN
      STOQ = 0;

    if (OLD.BAIXA = '0') then
    begin 
      if (OLD.QUANTIDADE > STOQ) then
      begin
        BASE = ((OLD.QUANTIDADE - STOQ) + NEW.QUANTIDADE);

        IF (BASE > 0) THEN
          IF (PRECOESTOQUE = 'PRECOMEDIO') THEN
          begin
            PMC = ((((OLD.PRECO * OLD.QUANTIDADE) - (STOQ * PM)) + (NEW.PRECO * NEW.QUANTIDADE))/BASE);
            PC = NEW.PRECO;
            PCA = VLRATUAL;
          end
          
        IF (PRECOESTOQUE = 'ULTIMOPRECO') THEN
        begin
          PMC = NEW.PRECO;
          PC = NEW.PRECO;
          PCA = PMC;
        end
        IF (PRECOESTOQUE = 'NAOALTERA') THEN
        begin
          PMC = PM;
          PC = VLRATUAL;
          PCA = VLRATUAL;
        end

        update PRODUTOS set
          PRECOMEDIO = :PMC, 
          ESTOQUEATUAL = ((OLD.QUANTIDADE - :STOQ) + NEW.QUANTIDADE),
          VALORUNITARIOANTERIOR = :PCA,
          VALORUNITARIOATUAL = :PC, 
          DATAULTIMACOMPRA = (SELECT DATAMOVIMENTO FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO) 
        where CODPRODUTO = NEW.CODPRODUTO;
      end
      else
      begin
        BASE = ((STOQ - OLD.QUANTIDADE) + NEW.QUANTIDADE);
        IF (BASE > 0) THEN
          IF (PRECOESTOQUE = 'PRECOMEDIO') THEN
          begin
          PMC = ((((STOQ * PM)-(OLD.PRECO * OLD.QUANTIDADE)) + (NEW.PRECO * NEW.QUANTIDADE))/BASE);
            PC = NEW.PRECO;
            PCA = VLRATUAL;
         end

        IF (PRECOESTOQUE = 'ULTIMOPRECO') THEN
        begin
          PMC = NEW.PRECO;
          PC = NEW.PRECO;
          PCA = PMC;
       end
        IF (PRECOESTOQUE = 'NAOALTERA') THEN
        begin
          PMC = PM;
          PC = VLRATUAL;
          PCA = VLRATUAL;
        end

        update PRODUTOS set
          PRECOMEDIO = :PMC, 
          ESTOQUEATUAL = ((:STOQ - OLD.QUANTIDADE) + NEW.QUANTIDADE),
          VALORUNITARIOANTERIOR = :VLRATUAL,
          VALORUNITARIOATUAL = :PC, 
          DATAULTIMACOMPRA = (SELECT DATAMOVIMENTO FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO) 
        where CODPRODUTO = NEW.CODPRODUTO;

      end
    end -- fim do IF (Old.BAIXA = '0')
    /* 1 = SAÍDA */
    if (OLD.BAIXA = '1') then
    begin
        BASE = ((STOQ + OLD.QUANTIDADE) - NEW.QUANTIDADE);
      select dados from parametro where parametro = 'CENTRO PERDA'
        into :centroPerda;
      select codAlmoxarifado from movimento where codMovimento = old.codMovimento
        into :codCCusto ;
      /* Se tem um centro de Perda e a Saída e pra ele então acrescento isso do Valor estoque */
      if ((centroPerda is null) OR (centroPerda <> codCcusto)) then
      begin
        update PRODUTOS set   
        ESTOQUEATUAL = :BASE
        where CODPRODUTO = old.CODPRODUTO;
      end
      else begin
        select precomedio, estoqueatual from produtos where codProduto = new.codProduto
          into :pm, :stoq;
        pm = (pm * stoq);
        pm = (pm / (:base));
        update PRODUTOS set   
          ESTOQUEATUAL = :BASE, precoMedio = :pm
        where CODPRODUTO = NEW.CODPRODUTO;
      end
    end
  end 
  end -- Fim do primeiro IF 
end
