set term ^ ;
CREATE OR ALTER PROCEDURE LISTA_LOTE_PROD 
returns (
    lote varchar(60),
    codproduto integer,
    estoque double precision,
    produto varchar(300),
    codpro varchar(15))
as
declare variable mesano date;
declare variable lotes varchar(50);
declare variable centro integer;
declare variable codp integer;
BEGIN
   FOR
    SELECT p.CODPRODUTO  from produtos p
     where p.USA is null or p.USA = ''
     order by p.CODPRO
    INTO :codproduto
  DO
  BEGIN
    estoque = 0;
    For SELECT CODPROD, SALDOFIMACUM, LOTES, PRODUTO 
      FROM ESTOQUE_VIEW (current_date, :codproduto, 0, 'TODOS OS LOTES CADASTRADOS NO SISTEMA')
     INTO :codpro, :ESTOQUE,:lote, :PRODUTO
     do begin 
       if (estoque > 0) then
          suspend;
     end
 END
END
