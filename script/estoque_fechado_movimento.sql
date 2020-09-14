set term ^ ;
CREATE OR ALTER TRIGGER estoque_fechado_mov FOR MOVIMENTO
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS
  declare variable data_estoque date; 
  declare variable data_mov date; 
  declare variable natureza integer;
  declare variable codvenda integer; 
BEGIN 
  select first 1 em.MESANO from estoquemes em order by em.MESANO desc 
  	into :data_estoque;
   codvenda = 0;
  select codvenda from venda where codmovimento = old.codmovimento
   into  :codvenda;
  select codcompra from compra where codmovimento = old.codmovimento
   into  :codvenda;
  if (:codvenda is null ) then
     codvenda = 0;
  if (DELETING or UPDATING)	then 
  begin
    data_mov = old.DATAMOVIMENTO;
    natureza = old.codNatureza;
  end  
  else begin
    data_mov = new.DATAMOVIMENTO;
    natureza = new.codNatureza;
  end
  if ((data_mov <= data_estoque) and (natureza in (1,2,3,4)) and (:codvenda = 0)) then
    exception ESTOQUEFECHADO; 	 
  if (UPDATING)	then
  begin  
    data_mov = new.DATAMOVIMENTO;
    natureza = new.codNatureza;
  end  
  if ((data_mov <= data_estoque) and (natureza in (1,2,3,4)) and (:codvenda = 0)) then
    exception ESTOQUEFECHADO
        'ERRO MOVIMENTO DATA MOVIMENTO : ' || data_mov || ', DATA FECHAMENTO : ' || data_estoque;
	 
    

END
