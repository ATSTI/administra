CREATE OR ALTER TRIGGER CFOP_PRODUTOS FOR NOTAFISCAL ACTIVE
AFTER  UPDATE POSITION 0
AS 
declare variable codm INTEGER;
BEGIN
  if(old.CFOP <> new.CFOP) then
  begin 
    if ((new.NATUREZA = 15) or (new.NATUREZA = 12)) then
    begin
        select v.CODMOVIMENTO from venda v
        where v.CODVENDA = new.CODVENDA
        into :codm;
    end
    else
    begin
        select c.CODMOVIMENTO from COMPRA c
        where c.CODCOMPRA = new.CODVENDA
        into :codm;
    end

    update MOVIMENTODETALHE set CFOP = udf_left(new.CFOP, 4)
      where CODMOVIMENTO = :codm;
  end
END