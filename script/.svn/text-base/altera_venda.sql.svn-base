CREATE OR ALTER TRIGGER ALTERA_VENDA FOR MOVIMENTODETALHE
AFTER UPDATE
POSITION 1
AS
DECLARE VARIABLE VLR_VENDA DOUBLE PRECISION;
DECLARE VARIABLE VLR_VELHO DOUBLE PRECISION;
DECLARE VARIABLE VLR_NOVO DOUBLE PRECISION;
DECLARE VARIABLE N_MOV INTEGER;
DECLARE VARIABLE NATUREZA INTEGER;
declare variable situacao char(2);
begin
  IF ((NEW.PRECO <> OLD.PRECO) OR (NEW.QUANTIDADE <> OLD.QUANTIDADE)) THEN 
  begin 
  /* Pego na tab NaturezaOperacao o TipoMovimento (3=Venda, 2=Compra, etc...) */
  FOR SELECT nat.TIPOMOVIMENTO FROM MOVIMENTO mov 
     inner join NATUREZAOPERACAO nat on nat.CODNATUREZA = mov.CODNATUREZA
     WHERE mov.CODMOVIMENTO = OLD.CODMOVIMENTO  
  INTO :NATUREZA
  DO
  /* Se a Natureza não for igual a 3, então não mexe na tabela VENDA */
  IF (:NATUREZA = 3) then
  begin
    /* Pego o valor na tabela vendas */
    FOR SELECT CODMOVIMENTO, VALOR, rec.STATUS FROM VENDA inner join recebimento rec on rec.codvenda = venda.codvenda
      WHERE CODMOVIMENTO = old.CODMOVIMENTO 
    INTO :N_MOV, :VLR_VENDA, :situacao
    DO
    begin
      if (situacao = '7-') then
        exception altera_venda_n_permitido;
      /* Pega o Total da Movimento Detalhe */
      select sum(valTotal) from movimentoDetalhe where codmovimento = Old.codMovimento
        into :vlr_novo; 
      /* Altero a tabela venda se houver alteração no valor */
      IF (VLR_VENDA <> VLR_NOVO) THEN
      begin
          UPDATE VENDA SET
          VALOR = :VLR_NOVO, VALOR_PAGAR = :VLR_NOVO
          WHERE CODMOVIMENTO = :N_MOV;
      end
      /* quando o valor não mudou faço atualizaçao só pra mudar a tab MOVIMENTOCONT */
      IF (VLR_VELHO = VLR_NOVO) THEN
        UPDATE VENDA SET
        VALOR = :VLR_VENDA, VALOR_PAGAR = :VLR_NOVO
        WHERE CODMOVIMENTO = :N_MOV;
    end
  end
  end -- Fim do primeiro IF
end
