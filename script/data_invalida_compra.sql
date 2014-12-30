CREATE OR ALTER TRIGGER data_invalida_compra FOR COMPRA
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS 
BEGIN 
  IF (INSERTING) then 
  begin 
	IF (new.DATACOMPRA < (current_date - 250)) then 
	  exception data_invalida;
	IF (new.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
  end 
  IF (UPDATING) then 
  begin 
	IF (new.DATACOMPRA < (current_date - 250)) then 
	  exception data_invalida;
	IF (new.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
	IF (old.DATACOMPRA < (current_date - 250)) then 
	  exception data_invalida;
	IF (old.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
  end 
  IF (UPDATING) then 
  begin  
	IF (old.DATACOMPRA < (current_date - 150)) then 
	  exception data_invalida;
	IF (old.DATAVENCIMENTO < (current_date - 150)) then 
	  exception data_invalida;	  
  end   	  
END