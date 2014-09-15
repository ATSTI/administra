SET TERM ^ ;

CREATE or alter PROCEDURE corrige_preco_movimento
 (codMovimento integer) 
AS 
DECLARE VARIABLE preco double PRECISION; 
DECLARE VARIABLE codproduto double PRECISION; 
DECLARE VARIABLE codDetalhe integer; 
BEGIN
  /* muda o preco do pedido para preco custo do produto */
  for select md.codProduto, md.CODDETALHE, case when p.VALORUNITARIOATUAL > 0 then 
  p.VALORUNITARIOATUAL else p.PRECOMEDIO end from MOVIMENTODETALHE md, produtos p 
   where p.CODPRODUTO = md.CODPRODUTO 
     and md.CODMOVIMENTO = :codMovimento
   into :codproduto, :codDetalhe, :preco 
   do begin 
     update MOVIMENTODETALHE set preco = :preco where coddetalhe = :codDetalhe;
   end  
END^

SET TERM ; ^
