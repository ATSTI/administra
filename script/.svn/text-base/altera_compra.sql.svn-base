ALTER TRIGGER ALTERA_COMPRA
AFTER UPDATE
POSITION 1
AS
DECLARE VARIABLE VLR_COMPRA DOUBLE PRECISION;
DECLARE VARIABLE VLR_VELHO DOUBLE PRECISION;
DECLARE VARIABLE VLR_NOVO DOUBLE PRECISION;
DECLARE VARIABLE N_MOV INTEGER;
DECLARE VARIABLE NATUREZA INTEGER;
begin
  IF ((NEW.QUANTIDADE <> OLD.QUANTIDADE) OR (NEW.PRECO <> OLD.PRECO)) THEN
  begin
  IF (EXISTS(SELECT pag.STATUS FROM PAGAMENTO pag 
     inNER JOIN COMPRA ON COMPRA.CODCOMPRA = pag.codCompra 
       WHERE compra.CODMOVIMENTO = OLD.CODMOVIMENTO AND pag.STATUS = '7-')) THEN  
    EXCEPTION altera_compra_n_permitido;  
  /* Pego na tab NaturezaOperacao o TipoMovimento (3=Venda, 2=Compra, etc...) */
  FOR SELECT nat.TIPOMOVIMENTO FROM MOVIMENTO mov 
     inner join NATUREZAOPERACAO nat on nat.CODNATUREZA = mov.CODNATUREZA
     WHERE mov.CODMOVIMENTO = OLD.CODMOVIMENTO  
  INTO :NATUREZA
  DO
    /* Se a Natureza não for igual a 2, então não mexe na tabela Compras */
    IF ((:NATUREZA = 2) OR (:NATUREZA = 20)) then
    begin
      /* Pego o valor na tabela compras */
      FOR SELECT CODMOVIMENTO, VALOR FROM COMPRA WHERE CODMOVIMENTO = OLD.CODMOVIMENTO 
      INTO :N_MOV, :VLR_COMPRA
      DO
      begin
        /* Altero a tabela COMPRA se houver alteração de produto */
        /* na tabela COMPRA não muda nada, só é feito alteração  */
        /* para que haja alteração na tabela MOVIMENTOCONT       */
        IF (NEW.CODPRODUTO <> OLD.CODPRODUTO) THEN
          UPDATE COMPRA SET
            VALOR = :VLR_NOVO 
            WHERE CODMOVIMENTO = OLD.CODMOVIMENTO;
        /* Altero a tabela compra se houver alteração no valor */
        VLR_VELHO = (OLD.PRECO * OLD.QUANTIDADE);
        VLR_NOVO = (NEW.PRECO * NEW.QUANTIDADE);
        IF (:VLR_VELHO <> :VLR_NOVO) THEN
        begin
          /* vejo se o valor diminui */
          IF (:VLR_VELHO > :VLR_NOVO) THEN
            UPDATE COMPRA SET
              VALOR = (:VLR_COMPRA - (:VLR_VELHO - :VLR_NOVO))
              WHERE CODMOVIMENTO = :N_MOV;
          /* vejo se o valor aumentou */
          IF (VLR_VELHO < VLR_NOVO) THEN
            UPDATE COMPRA SET
              VALOR = (:VLR_COMPRA + (:VLR_NOVO - :VLR_VELHO))
              WHERE CODMOVIMENTO = :N_MOV;
          /* quando o valor não mudou faço atualizaçao só pra mudar a tab MOVIMENTOCONT */
        end
        IF (VLR_VELHO = VLR_NOVO) THEN
          UPDATE COMPRA SET
            VALOR = :VLR_COMPRA
            WHERE CODMOVIMENTO = :N_MOV;
      end
    end
   end -- Fim do Primeiro IF
 end
