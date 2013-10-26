CREATE OR ALTER PROCEDURE estoque_customedio
 (dataini date, datafim date, codproduto integer) 
RETURNS 
 ( customedio double precision)
AS 
BEGIN
  select (case when sum(md.QUANTIDADE) > 0 then (sum(md.VALTOTAL) / sum(md.QUANTIDADE)) else 0 end) as CUSTOMEDIO 
  from compra c, movimento m, MOVIMENTODETALHE md, NATUREZAOPERACAO np
   where m.CODMOVIMENTO = c.CODMOVIMENTO
     and md.CODMOVIMENTO = m.CODMOVIMENTO
     and np.CODNATUREZA = m.CODNATUREZA
     and np.BAIXAMOVIMENTO = 0
     and md.BAIXA is not null 
     and c.DATACOMPRA between :dataini and :datafim
     and md.CODPRODUTO = :codproduto
    into :customedio;   
   suspend; 
END
