CREATE TRIGGER data_invalida_compra FOR COMPRA
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
BEGIN 
	IF (new.DATACOMPRA < (current_date - 250)) then 
	  exception data_invalida;
	IF (new.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
END