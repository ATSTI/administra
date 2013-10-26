SET TERM ^;

CREATE or alter TRIGGER movimentodetalhe_coddet FOR MOVIMENTODETALHE
ACTIVE BEFORE INSERT POSITION 0
AS
 declare VARIABLE codMov integer;
BEGIN
    /* usado importacao pentaho */ 
    if (new.coddetalhe is null) then 
       NEW.CODDETALHE = GEN_ID(GENMOVDET, 1); 
    if (new.CODMOVIMENTO is null) then 
    begin
      /* para saber o codMovimento gerado na importacao */
      select codmovimento from MOVIMENTO 
       where codcotacao = new.CODIGO 
       into :codmov;
      new.CODMOVIMENTO = :codMov; 
    end      
END^

SET TERM ;^
