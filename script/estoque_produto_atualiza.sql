set term ^ ;
CREATE or ALTER TRIGGER estoque_produto_atualiza FOR MOVIMENTODETALHE
INACTIVE AFTER UPDATE POSITION 0
AS
 declare variable ccusto integer;
 declare variable custoFixo varchar(30); 
 declare variable preco_custo DOUBLE PRECISION;
 declare variable preco_compra DOUBLE PRECISION;
 declare variable estoque DOUBLE PRECISION;
BEGIN
   -- 18/10/2017
   -- inativei ela , pois nao FUNCIONA 
   -- criei a estoque_atualiza_venda e estoque_atualiza_compra nas tabelas 
   -- venda e compra respectivamente
   SELECT M.CODALMOXARIFADO 
     FROM MOVIMENTO M       
    where m.CODMOVIMENTO = old.CODMOVIMENTO
    into :ccusto;

   if (ccusto is null) then
   begin
     ccusto = 51;
   end
    if ((new.baixa = 0) or (old.baixa = 0)) then 
    begin 
      select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
        from ESTOQUE_VIEW_CUSTO(current_date, old.CODPRODUTO, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
        into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;  

      update produtos set VALORUNITARIOATUAL = new.VLR_BASE , ESTOQUEATUAL = :estoque
        ,dataultimacompra = current_date     
        where codproduto = new.CODPRODUTO;
    end    
    if ((new.baixa = 1) or (old.baixa = 1)) then 
    begin 
      select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
        from ESTOQUE_VIEW_CUSTO(current_date, old.CODPRODUTO, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
        into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;  

      update produtos set ESTOQUEATUAL = :estoque
        ,dataultimacompra = current_date 
        where codproduto = old.CODPRODUTO;
    end    
END
