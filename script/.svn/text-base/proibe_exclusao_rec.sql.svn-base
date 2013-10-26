CREATE or alter TRIGGER proibe_exclusao_rec FOR RECEBIMENTO
ACTIVE BEFORE DELETE POSITION 0
AS 
 declare variable codvenda integer;
BEGIN 
  /* se existe venda então não permite exclusão */
  select codvenda from venda where codvenda = old.CODVENDA 
  into :codvenda;
  if ((codVenda is not null) and ((old.DP is null) or (old.dp <> 5))) then
    exception nao_pode_excluir;	
END
