CREATE OR ALTER PROCEDURE estoque_customedio
 (dataini date, datafim date, codproduto integer) 
RETURNS 
 (custoinicial double precision,
  customedio double precision,
  custoentradas double precision,
  saldoinicial double precision,
  qtdeentradas double precision)
AS 

BEGIN
  -- 122
  --custo inicial 
  select ev.PRECOCUSTO, ev.SALDOFIMACUM from ESTOQUE_VIEW_CUSTO(UDF_INCDAY(:dataini,-1), :codproduto, 51, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
    into :custoinicial, :saldoinicial;
  if (custoinicial is null) then 
    custoinicial = 0;
  if (saldoinicial is null) then 
    saldoinicial = 0;  
  if (saldoinicial = 0) then 
    custoinicial = 0; 
      
  --custo no periodo          
  select (case when sum(md.QUANTIDADE) > 0 then ((sum(md.VALTOTAL+(coalesce(md.VIPI,0)+coalesce(md.FRETE,0)+coalesce(md.ICMS_SUBST,0)))) / sum(md.QUANTIDADE)) else 0 end) as CUSTOMEDIO, sum(md.QUANTIDADE) 
  from compra c, movimento m, MOVIMENTODETALHE md, NATUREZAOPERACAO np
   where m.CODMOVIMENTO = c.CODMOVIMENTO
     and md.CODMOVIMENTO = m.CODMOVIMENTO
     and np.CODNATUREZA = m.CODNATUREZA
     and np.BAIXAMOVIMENTO = 0
     and md.BAIXA is not null 
     and c.DATACOMPRA between :dataini and :datafim
     and md.CODPRODUTO = :codproduto
    into :custoentradas, :qtdeentradas;   
  if (qtdeentradas is null) then 
    qtdeentradas = 0;  
   
  if (custoentradas is null) then 
  begin
    select ev.PRECOCUSTO from ESTOQUE_VIEW_CUSTO(:datafim, :codproduto, 51, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
    into :custoentradas;
  end   
  
  if ((qtdeEntradas + saldoinicial) > 0) then 
    customedio = ((custoentradas*qtdeentradas)+(saldoinicial*custoinicial))/(qtdeentradas+saldoinicial);
    
  if (customedio is null) then 
    customedio = custoinicial;  
  
  if (customedio is null) then 
  begin 
    select p.PRECOMEDIO from produtos p where p.CODPRODUTO = :codproduto
    into :customedio;
  end 
  
  if (customedio is null) then 
    customedio = 0;
  if ((saldoinicial + qtdeentradas) > 0) then   
    customedio = ((saldoinicial * custoinicial) + (qtdeentradas * custoentradas))/(saldoinicial + qtdeEntradas);  
  suspend; 
END
