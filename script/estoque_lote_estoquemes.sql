SET TERM ^ ;

CREATE OR ALTER PROCEDURE estoque_lote_estoquemes
RETURNS 
 (lote varchar(60),
  codProduto integer,
  estoque double PRECISION, 
  ccusto integer,
  mesAno DATE)
AS 
BEGIN
  for select DISTINCT COALESCE(p.LOTE, '0'), p.CODPRODUTO, p.CENTROCUSTO from ESTOQUEMES p 
   where ((UDF_TRUNCDEC(p.SALDOESTOQUE,8) > 0) or (UDF_TRUNCDEC(p.SALDOESTOQUE,8) < 0))  
  order by p.CENTROCUSTO, p.CODPRODUTO, p.LOTE 
  into :lote, :codproduto, :ccusto
  do begin 
    select FIRST 1 em.MESANO from estoquemes em
     WHERE em.CODPRODUTO = :codProduto 
       AND em.CENTROCUSTO = :ccusto
       AND em.LOTE = :lote 
     ORDER by em.MESANO desc 
     INTO :mesAno;
 
    estoque = 0;
    select sum(em.SALDOESTOQUE) from estoquemes em
     WHERE em.CODPRODUTO = :codProduto 
       AND em.CENTROCUSTO = :ccusto
       AND em.LOTE = :lote 
       AND em.MESANO = :mesAno
       AND em.SALDOESTOQUE > 0
      INTO :estoque; 
       
     if ((estoque > 0) or (estoque < 0)) then 
       SUSPEND;  
  end
END^

SET TERM ; ^
