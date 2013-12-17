CREATE TRIGGER data_invalida_venda FOR VENDA
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
BEGIN 
	IF (new.DATAVENDA < (current_date - 250)) then 
	  exception data_invalida;
	IF (new.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
END