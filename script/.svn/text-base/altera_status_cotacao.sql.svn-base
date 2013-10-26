CREATE OR ALTER TRIGGER ALTERA_STATUS_COTACAO FOR MOVIMENTO
ACTIVE AFTER DELETE POSITION 0
AS 
BEGIN 
  /* Se um PEDIDO for excluido, volta o STATUS da Cotação para G (Cotado) */
  IF (old.CODNATUREZA = 5) then 
  begin
    update compra_cotacao c set COTACAO_SITUACAO = 'G' 
     Where c.COTACAO_FORNEC = old.CODFORNECEDOR
       and c.COTACAO_CODIGO = old.CONTROLE;       
  end 
END