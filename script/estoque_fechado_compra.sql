CREATE OR ALTER TRIGGER estoque_fechado_compra FOR COMPRA
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS
  declare variable data_estoque date; 
  declare variable data_compra date; 
  declare variable valor DOUBLE PRECISION;
BEGIN 
  select first 1 em.MESANO from estoquemes em order by em.MESANO desc 
  	into :data_estoque;
  if (deleting)	then 
  begin
    data_compra = old.DATACOMPRA;
    valor = old.VALOR;
  end   
  else begin    
    data_compra = new.DATACOMPRA;
    valor = new.VALOR;
  end    
  if ((data_compra <= data_estoque) and (valor > 0)) then 
    exception ESTOQUEFECHADO; 	 
END