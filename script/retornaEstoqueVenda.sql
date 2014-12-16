ALTER TRIGGER RETORNA_ESTOQUEVENDA
AFTER DELETE
POSITION 0
AS 
  DECLARE VARIABLE dataIni date;
  DECLARE VARIABLE dataFim date;
  declare variable codP int;
BEGIN
  -- v 3.0
  /* Se baixou estoque de materia prima , então excluo este lançamento */
  delete from movimento where controle = UDF_TRIM(cast(old.CODMOVIMENTO as varchar(15))) and codnatureza = 2;
  /* Volta o campo BAIXA para null na tab MOVIMENTODETALHE */ 
  update MOVIMENTODETALHE set BAIXA = null where CODMOVIMENTO = old.CODMOVIMENTO;

END
