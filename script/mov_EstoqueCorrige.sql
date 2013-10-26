CREATE OR ALTER TRIGGER mov_EstoqueCorrige FOR MOVIMENTODETALHE
ACTIVE AFTER UPDATE POSITION 0
AS 
Declare variable dta                        date;
Declare variable dtaFim                     date;
BEGIN
  if ((old.BAIXA is null) and ((new.BAIXA = 0) OR (NEW.BAIXA = 1))) then 
  begin 
    select first 1 m.dataMovimento from movimento m
      where m.CODMOVIMENTO = new.codMovimento
      into :dta;

    /* uso esta data pra ver se existe algum lançamento após esta inserção*/
    select max(m.dataMovimento) from movimento m
     inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO
     where md.CODPRODUTO = new.CODPRODUTO 
      into :dtaFim;
    if (dtaFim > dta) then -- existe lançamento acima então corrijo estoque 
    begin
      execute PROCEDURE CORRIGEESTOQUE(new.CODPRODUTO, new.CODPRODUTO, :dta, :dtaFim, 'N');
    end 
  end  
END 