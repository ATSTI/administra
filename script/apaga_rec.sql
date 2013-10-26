ALTER TRIGGER APAGA_REC
BEFORE DELETE
POSITION 0
as
DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
DECLARE VARIABLE STATUS_C CHAR(2); 
begin

/* Se o STATUS da Tab RECEBIMENTO for diferente de '5-', não é permitido fazer alteração */
 if (OLD.numerobordero is null) then
 begin 
  SELECT CODRECEBIMENTO FROM RECEBIMENTO WHERE CODVENDA = OLD.CODVENDA AND STATUS = '7-' 
  INTO :STATUS_C;
  IF (STATUS_C IS NULL) THEN
  begin
    /* mudo o campo DP para 5, para a triger 'proibe_exclusao_rec' permitir exlcuir */
    update RECEBIMENTO set dp = 5 WHERE CODVENDA = OLD.CODVENDA;
    DELETE FROM RECEBIMENTO WHERE CODVENDA = OLD.CODVENDA;
  end
  else
  begin
    EXCEPTION altera_venda_n_permitido;
  end
 end
  else begin
  SELECT CODRECEBIMENTO FROM RECEBIMENTO WHERE CODRECEBIMENTO = OLD.NUMEROBORDERO AND STATUS = '7-' 
  INTO :STATUS_C;
  /* Apago todo lançamento na tabela MOVIMENTOCONT */  
  IF (STATUS_C IS NULL) THEN
  begin
    SELECT VALOR_RESTO FROM RECEBIMENTO WHERE CODRECEBIMENTO = OLD.NUMEROBORDERO AND STATUS = '5-'   
    INTO :VLR_RESTO;
  IF(VLR_RESTO <> OLD.VALOR)THEN
    UPDATE RECEBIMENTO SET VALOR_RESTO = :VLR_RESTO - OLD.VALOR , VALOR_PRIM_VIA = :VLR_RESTO - OLD.VALOR ,VALORTITULO = :VLR_RESTO - OLD.VALOR   WHERE CODRECEBIMENTO = OLD.NUMEROBORDERO AND STATUS = '5-';               
  ELSE BEGIN 
    /* mudo o campo DP para 5, para a triger 'proibe_exclusao_rec' permitir exlcuir */
    update RECEBIMENTO set dp = 5 WHERE CODVENDA = OLD.CODVENDA;
    DELETE FROM RECEBIMENTO WHERE CODVENDA = OLD.CODVENDA;
  END 
  end
  else
  begin
    EXCEPTION altera_venda_n_permitido;
  end        
  end 
end
