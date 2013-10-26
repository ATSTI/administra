CREATE TRIGGER RETORNA_STATUS_SOLIC FOR COMPRA_COTACAO
ACTIVE AFTER DELETE POSITION 0
AS 
declare variable qnt_cotacao integer;
BEGIN 
	select count(COTACAO_CODSOLIC) from COMPRA_COTACAO where COTACAO_CODSOLIC = old.COTACAO_CODSOLIC
	into :qnt_cotacao;
	
	if( qnt_cotacao < 1) then
      update COMPRA_SOLIC set SOLIC_SITUACAO = 'A' where SOLIC_CODIGO = old.COTACAO_CODSOLIC;
	
END