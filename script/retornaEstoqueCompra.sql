CREATE OR ALTER TRIGGER retornaEstoqueCompra FOR COMPRA
ACTIVE AFTER DELETE POSITION 0
AS 
  DECLARE VARIABLE dataIni date;
  DECLARE VARIABLE dataFim date;
  declare variable codP int;
BEGIN 
  -- v 3.0
  /* Volta o campo BAIXA para null na tab MOVIMENTODETALHE */ 
  update MOVIMENTODETALHE set BAIXA = null where CODMOVIMENTO = old.CODMOVIMENTO;
END
