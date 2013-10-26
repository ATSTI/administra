CREATE OR ALTER TRIGGER insere_vlrBase FOR MOVIMENTODETALHE
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
declare variable desconto DOUBLE PRECISION;
BEGIN
    desconto = 0;
	if ((new.VLR_BASE is null) or (new.VLR_BASE = 0)) then
    begin
      if (new.QTDE_ALT > 0) then 
        desconto = new.PRECO * (new.QTDE_ALT/100);
      new.VLR_BASE = new.PRECO - desconto; 
    end 
END
