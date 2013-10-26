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
    SELECT max(lote.mesano) , lote.lote , lote.codproduto , lote.centrocusto  from estoquemes lote
          where lote.lote <> 0
          group by
          lote.codproduto , lote.centrocusto ,lote.lote
    INTO :mesano , :lotes , :codp ,:centro

  DO
  BEGIN
  FOR
    SELECT  lote.LOTE, lote.CODPRODUTO, sum(lote.SALDOESTOQUE) ESTOQUE, prod.PRODUTO, prod.CODPRO
             FROM ESTOQUEMES lote 
             inner join PRODUTOS prod on prod.codproduto = lote.CODPRODUTO 
             WHERE lote.codproduto = :codp
               and lote.mesano = :mesano
               and lote.centrocusto = :centro
               and lote.lote = :lotes
               and lote <> 0
             group by
             lote.CODPRODUTO,lote.LOTE,lote.LOTE,prod.PRODUTO, prod.CODPRO
    order by PRODUTO
    INTO :LOTE,:CODPRODUTO,:ESTOQUE,:PRODUTO,:CODPRO
  DO
  BEGIN
    SUSPEND;
  END
 END
END
