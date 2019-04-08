CREATE OR ALTER TRIGGER BAIXA_ESTOQUE FOR COMPRA ACTIVE
BEFORE INSERT POSITION 0
AS
  declare variable tipoMov smallint;
BEGIN
  tipoMov = Null;
  select natu.baixaMovimento from movimento mov, NATUREZAOPERACAO natu 
    WHERE mov.CODNATUREZA = natu.codNatureza and mov.CODMOVIMENTO = new.CODMOVIMENTO
  into :tipoMov;
  --if ((tipoMov = 0) or (tipoMov = 1)) then 
  UPDATE MOVIMENTODETALHE SET BAIXA = :tipoMov WHERE CODMOVIMENTO = NEW.CODMOVIMENTO;
END
