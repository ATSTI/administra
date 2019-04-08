set term ^ ;
CREATE OR ALTER TRIGGER estoque_fechado_compra FOR COMPRA
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS
  declare variable data_estoque date; 
  declare variable data_compra date; 
  declare variable qtde DOUBLE PRECISION;
  declare variable codmov integer;
BEGIN 
  select first 1 em.MESANO from estoquemes em order by em.MESANO desc 
  	into :data_estoque;
  if (deleting)	then 
  begin
    data_compra = old.DATACOMPRA;
    if (data_compra <= data_estoque) then
       exception ESTOQUEFECHADO; 	 
  end   
  if (INSERTING)	then 
  begin
    data_compra = new.DATACOMPRA;
    codmov = new.CODMOVIMENTO;
    if (data_compra <= data_estoque) then    
    begin 
      exception ESTOQUEFECHADO; 	 
    end 
  end    
  if (UPDATING)	then 
  begin
    data_compra = old.DATACOMPRA;
    if (data_compra <= data_estoque) then
       exception ESTOQUEFECHADO; 	 
    data_compra = new.DATACOMPRA;
    if (data_compra <= data_estoque) then
       exception ESTOQUEFECHADO; 	 
  end    
END