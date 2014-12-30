CREATE OR ALTER TRIGGER data_invalida_venda FOR VENDA
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS 
BEGIN 
  IF (INSERTING) then 
  begin 
	IF (new.DATAVENDA < (current_date - 250)) then 
	  exception data_invalida;
	IF (new.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
  end 
  IF (UPDATING) then 
  begin 
	IF (new.DATAVENDA < (current_date - 250)) then 
	  exception data_invalida;
	IF (new.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
	IF (old.DATAVENDA < (current_date - 250)) then 
	  exception data_invalida;
	IF (old.DATAVENCIMENTO < (current_date - 250)) then 
	  exception data_invalida;	  
  end 
  IF (UPDATING) then 
  begin  
	IF (old.DATAVENDA < (current_date - 150)) then 
	  exception data_invalida;
	IF (old.DATAVENCIMENTO < (current_date - 150)) then 
	  exception data_invalida;	  
  end   	  
	   
END