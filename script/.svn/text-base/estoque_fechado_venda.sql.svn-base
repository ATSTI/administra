CREATE OR ALTER TRIGGER estoque_fechado_venda FOR VENDA
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS
  declare variable data_estoque date; 
  declare variable data_venda date; 
BEGIN 
  select first 1 em.MESANO from estoquemes em order by em.MESANO desc 
  	into :data_estoque;
  if (deleting)	then 
    data_venda = old.DATAVENDA;
  else   
    data_venda = new.DATAVENDA;
     
  if (data_venda <= data_estoque) then 
    exception ESTOQUEFECHADO; 	 
END