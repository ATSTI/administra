SET TERM ^;

CREATE TRIGGER movimento_codmov FOR MOVIMENTO
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    /* enter trigger code here */ 
    if (new.codmovimento is null) then 
       NEW.CODMOVIMENTO = GEN_ID(GENMOV, 1); 
END^

SET TERM ;^
