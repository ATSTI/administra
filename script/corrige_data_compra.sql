SET TERM ^ ;

CREATE or alter PROCEDURE corrige_data_compra
AS 
DECLARE VARIABLE preco double PRECISION; 
DECLARE VARIABLE codproduto integer; 
DECLARE VARIABLE codDetalhe integer; 
declare variable data_compra date;
BEGIN
  /* muda o preco do pedido para preco custo do produto */
  for select codproduto from produtos 
    into: codproduto
  do begin 
    for select first 1 c.datacompra, coalesce(md.PRECO,0) from COMPRA c, MOVIMENTODETALHE md
      where md.CODMOVIMENTO = c.CODMOVIMENTO  
       and md.CODPRODUTO = :codproduto 
       order by c.DATACOMPRA desc 
   into :data_compra, :preco 
   do begin 
     update produtos p set DATAULTIMACOMPRA = :data_compra 
     , p.VALORUNITARIOATUAL = :preco, p.VALOR_PRAZO = (:preco * 1.6)
     , margem = 60
     where codproduto = :codProduto;
   end  
  end  
END^

SET TERM ; ^
