CREATE OR ALTER TRIGGER estoque_fechado_compra FOR COMPRA
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS
  declare variable data_estoque date; 
  declare variable data_compra date; 
BEGIN 
  select first 1 em.MESANO from estoquemes em order by em.MESANO desc 
  	into :data_estoque;
  if (deleting)	then 
    data_compra = old.DATACOMPRA;
  else   
    data_compra = new.DATACOMPRA;
     
  if (data_compra <= data_estoque) then 
    exception ESTOQUEFECHADO; 	 
END