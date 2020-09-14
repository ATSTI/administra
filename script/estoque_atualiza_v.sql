CREATE or alter PROCEDURE ESTOQUE_ATUALIZA_V(CODMOVIMENTO INTEGER) 
AS 
 declare variable codM integer;
 declare variable codP integer;
 declare variable ccusto integer; 
 declare variable ccustoEstoque integer;  
 declare variable PRECO_CUSTO double precision;
 declare variable ESTOQUE double precision;
 declare variable PRECO_COMPRA double precision;
BEGIN

  for select md.codproduto, m.codalmoxarifado from movimento m , movimentodetalhe md
     where m.codmovimento = :CODMOVIMENTO and md.codmovimento = m.codmovimento
  into :codp, :ccusto
   do begin   
      select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
        from ESTOQUE_VIEW_CUSTO(current_date, :codp, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
        into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;  

      update produtos set ESTOQUEATUAL = :estoque
        ,datagrav = current_date 
        where codproduto = :codp;
  end
END
