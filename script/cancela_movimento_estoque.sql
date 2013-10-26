CREATE OR ALTER TRIGGER CANCELA_MOVIMENTO_ESTOQUE FOR MOVIMENTODETALHE
AFTER UPDATE
POSITION 0
as
  DECLARE VARIABLE STOQ DOUBLE PRECISION;
  DECLARE VARIABLE PRECOESTOQUE VARCHAR(20); 
  DECLARE VARIABLE PM DOUBLE PRECISION;
  DECLARE VARIABLE PMVELHO DOUBLE PRECISION;
  DECLARE VARIABLE PMANT DOUBLE PRECISION;
  declare variable codCcusto smallint;
  declare variable centroPerda smallint;
begin
  -- Quando a Venda(Status = 14) ou Compra é Cancelada 
  if ((new.BAIXA = 3) and ((old.BAIXA = 0) or (old.BAIXA = 1))) then 
  begin 
    SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
    INTO :PRECOESTOQUE;

    FOR SELECT ESTOQUEATUAL, PRECOMEDIO, VALORUNITARIOANTERIOR FROM PRODUTOS WHERE CODPRODUTO = OLD.CODPRODUTO
    INTO :STOQ, :PMVELHO, :PMANT
    DO
    begin  
    /* 0 = ENTRADA */
    if (OLD.BAIXA = '0') then
    begin
      IF (PRECOESTOQUE = 'ULTIMOPRECO') THEN
        PM = PMANT; --Parte do presuposto que o q está sendo apagado é o último lançamento
      IF (PRECOESTOQUE = 'NAOALTERA') THEN
        PM = PMVELHO;

      if ((OLD.QUANTIDADE - STOQ) > 0) then
      begin
        IF (PRECOESTOQUE = 'PRECOMEDIO') THEN
          PM = (((OLD.PRECO * OLD.QUANTIDADE) - (STOQ * PMVELHO))/((OLD.QUANTIDADE) - STOQ));
        update PRODUTOS set
          PRECOMEDIO = :PM,  
          ESTOQUEATUAL = (OLD.QUANTIDADE - ESTOQUEATUAL)    
          where CODPRODUTO = OLD.CODPRODUTO;
      end
      else
      begin
        IF (PRECOESTOQUE = 'PRECOMEDIO') THEN
          PM = (((STOQ * PMVELHO)- (OLD.PRECO * OLD.QUANTIDADE))/((STOQ - OLD.QUANTIDADE)));  
        update PRODUTOS set
          PRECOMEDIO = :PM,  
          ESTOQUEATUAL = (ESTOQUEATUAL - OLD.QUANTIDADE)    
          where CODPRODUTO = OLD.CODPRODUTO;
      end
    end
  end
  /* 1 = SAÍDA */
  if (OLD.BAIXA = '1') then
  begin
    /* 1 = Saída */
    select dados from parametro where parametro = 'CENTRO PERDA'
      into :centroPerda;
    select codAlmoxarifado from movimento where codMovimento = old.codMovimento
      into :codCCusto ;
    /* Se tem um centro de Perda e a Saída e pra ele então acrescento isso do Valor estoque */
    if ((centroPerda is null) OR (centroPerda <> codCcusto)) then
    begin
      update PRODUTOS set   
        ESTOQUEATUAL = ESTOQUEATUAL + old.QUANTIDADE
        where CODPRODUTO = old.CODPRODUTO;
    end
    else begin
      select precomedio, estoqueatual from produtos where codProduto = old.codProduto
        into :pm, :stoq;
      pm = (pm * stoq);
      pm = (pm / (stoq + old.Quantidade));
      update PRODUTOS set   
        ESTOQUEATUAL = ESTOQUEATUAL + old.QUANTIDADE, precoMedio = :pm
        where CODPRODUTO = old.CODPRODUTO;
    end
  end
  end -- Fim END do IF.
end
