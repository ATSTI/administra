set term ^ ;
CREATE OR ALTER TRIGGER APAGA_ESTOQUE FOR MOVIMENTODETALHE
AFTER DELETE
POSITION 0
as
  DECLARE VARIABLE dataIni date;
  DECLARE VARIABLE dataFim date;
  declare variable codP int;
begin
  if (old.baixa is not null) then 
  begin 
    SELECT m.DataMovimento FROM movimento m where m.CODMOVIMENTO = old.CODMOVIMENTO 
    INTO :dataIni;

    select max(m.dataMovimento) from movimento m 
      inner join MOVIMENTODETALHE md on md.codmovimento = m.CODMOVIMENTO
      where md.codproduto = old.CODPRODUTO
    into :dataFim;

    execute PROCEDURE CORRIGEESTOQUE(old.CODPRODUTO, old.CODPRODUTO, :dataIni, :dataFim, 'N');
  end  
end
