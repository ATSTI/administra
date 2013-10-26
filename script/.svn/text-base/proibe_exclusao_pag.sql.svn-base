CREATE or alter TRIGGER proibe_exclusao_pag FOR PAGAMENTO
ACTIVE BEFORE DELETE POSITION 0
AS 
 declare variable codCompra integer;
BEGIN 
  /* se existe compra então não permite exclusão */
  select codCompra from COMPRA where codCompra = old.CODCOMPRA
  into :codCompra;
  if ((codCompra is not null) and ((old.DP is null) or (old.dp <> 5))) then
    exception nao_pode_excluir;	
END
