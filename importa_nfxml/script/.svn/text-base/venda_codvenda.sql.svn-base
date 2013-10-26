SET TERM ^;

CREATE or alter TRIGGER venda_codvenda FOR VENDA
ACTIVE BEFORE INSERT POSITION 0
AS
 declare VARIABLE codMov integer;
BEGIN
    /* enter trigger code here */ 
    if (new.CODVENDA is null) then 
       NEW.CODVENDA = GEN_ID(GENVENDA, 1); 
    if (new.CODMOVIMENTO is null) then 
    begin
      /* para saber o codMovimento gerado na importacao */
      select codmovimento from MOVIMENTO 
       where codcotacao = new.NUMEROBORDERO
       into :codmov;
      new.CODMOVIMENTO = :codMov; 
    end       
END^

SET TERM ;^
