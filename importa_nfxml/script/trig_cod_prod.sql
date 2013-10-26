SET TERM ^ ;
ALTER TRIGGER TRIG_COD_PROD ACTIVE
BEFORE INSERT POSITION 0
AS
 BEGIN
   IF(NEW."CODPRODUTO" IS NULL) THEN NEW."CODPRODUTO" =
     GEN_ID("GEN_PROD",1);
   if (new.DATACADASTRO is null) then 
      new.DATACADASTRO = CURRENT_DATE;   
  if (new.cod_BARRA = '') then 
    new.cod_barra = null;    
 END^
SET TERM ; ^
