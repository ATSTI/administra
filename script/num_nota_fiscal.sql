SET TERM ^ ;

CREATE or ALTER TRIGGER NUM_NOTA_FISCAL FOR NOTAFISCAL
 ACTIVE 
  before INSERT OR UPDATE 
 POSITION 0
AS 
BEGIN 
    /* Se nao tem numero da nota coloca */ 
    if (new.NOTAFISCAL = 0) then 
      new.NOTAFISCAL = new.NOTASERIE;
END^

SET TERM ; ^