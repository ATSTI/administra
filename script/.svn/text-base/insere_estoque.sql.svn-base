ALTER TRIGGER INSERE_ESTOQUE
BEFORE INSERT
POSITION 0
AS
  declare variable tipoMov smallint;
BEGIN
  select natu.baixaMovimento from movimento mov, NATUREZAOPERACAO natu 
    WHERE mov.CODNATUREZA = natu.codNatureza and mov.CODMOVIMENTO = new.CODMOVIMENTO
  into :tipoMov;
  if ((tipoMov = 0) or (tipoMov = 1)) then 
  begin  
    UPDATE MOVIMENTODETALHE  SET BAIXA = 1 
      WHERE CODMOVIMENTO = NEW.CODMOVIMENTO; 
    update MOVIMENTODETALHE set  LOTE = null where LOTE = '';
  end
END