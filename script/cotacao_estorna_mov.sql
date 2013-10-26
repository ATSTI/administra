Set TERM ^  ;
CREATE or ALTER TRIGGER COTACAO_ESTORNA_MOV FOR MOVIMENTO
ACTIVE AFTER DELETE POSITION 0
AS 
  declare variable codMov int;
BEGIN 
  if (old.CODNATUREZA = 4) then   
  begin 
    -- Se usa Cotação
    For SELECT CODMOVIMENTO FROM MOVIMENTO 
         WHERE CODPEDIDO     = old.CODPEDIDO 
           AND CODNATUREZA   = 5
           AND CODFORNECEDOR = old.CODFORNECEDOR 
    INTO :codMov
    do begin 
      -- O Pedido foi Excluido, volta para novo Recebimento 
      -- Colocar quantidade Recebida = 0 e mudar o Status para 3    
      UPDATE MOVIMENTO        SET STATUS   = 3 WHERE CODMOVIMENTO = :codMov AND CODNATUREZA = 5; 
      UPDATE MOVIMENTODETALHE SET RECEBIDO = 0 WHERE CODMOVIMENTO = :codMov;
      DELETE FROM MOVIMENTODETALHE WHERE CODIGO = OLD.CODPEDIDO;
    end 
  end  
end  