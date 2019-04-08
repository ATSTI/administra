set term ^ ;
CREATE or ALTER TRIGGER estoque_produto_atualiza FOR MOVIMENTODETALHE
ACTIVE AFTER UPDATE POSITION 0
AS
 declare variable ccusto integer;
 declare variable custoFixo varchar(30); 
 declare variable preco_custo DOUBLE PRECISION;
 declare variable preco_compra DOUBLE PRECISION;
 declare variable estoque DOUBLE PRECISION;
BEGIN

   SELECT M.CODALMOXARIFADO 
     FROM MOVIMENTO M       
    where m.CODMOVIMENTO = old.CODMOVIMENTO
    into :ccusto;

 -- insert into IDOCUMENTOS(ID_DOCTOS, DOCTOS_DESCRICAO) values(20,'1-' || coalesce(new.baixa, 'null'));
  if ((new.BAIXA in ('0', '1')) and (old.BAIXA is NULL)) then 
  begin
    -- insert into IDOCUMENTOS(ID_DOCTOS, DOCTOS_DESCRICAO) values(22,'2-' || coalesce(new.baixa, 'null'));
    if (new.baixa = 0) then 
    begin 
      /*
      select coalesce(estoqueatual,0) from produtos where codproduto = old.CODPRODUTO
      into :estoque;
      estoque = estoque + new.QUANTIDADE ;
      if (estoque < 0) then
      BEGIN*/
        select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
          from ESTOQUE_VIEW_CUSTO(current_date, old.CODPRODUTO, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
          into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;  
      --END
      update produtos set VALORUNITARIOATUAL = new.VLR_BASE , ESTOQUEATUAL = :estoque + new.QUANTIDADE
        ,dataultimacompra = current_date 
        where codproduto = new.CODPRODUTO;
    end    
    if (new.baixa = 1) then 
    begin 
      /*select coalesce(estoqueatual,0) from produtos where codproduto = old.CODPRODUTO
      into :estoque;
      estoque = estoque - new.QUANTIDADE;
      if (estoque < 0) then
      BEGIN*/
        select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
          from ESTOQUE_VIEW_CUSTO(current_date, old.CODPRODUTO, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
          into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;  
      --END

      update produtos set ESTOQUEATUAL = :estoque  - new.QUANTIDADE
        ,dataultimacompra = current_date 
        where codproduto = old.CODPRODUTO;
    end    
 
  end 
  -- insert into IDOCUMENTOS(ID_DOCTOS, DOCTOS_DESCRICAO) values(23,'3-' || old.baixa || '-' || coalesce(new.baixa, 'null'));
  if ((new.BAIXA is null) and (old.BAIXA in ('0','1'))) THEN 
  begin 
    -- insert into IDOCUMENTOS(ID_DOCTOS, DOCTOS_DESCRICAO) values(24,'4-' || new.baixa);
    custoFixo = 'N';
    select D1 from parametro where parametro = 'PRECOESTOQUE' and D1 = 'PRECOCUSTOFIXO'
       into :custoFixo;
    if (custoFixo is null) then
      custoFixo = 'N';

   SELECT M.CODALMOXARIFADO 
     FROM MOVIMENTO M       
    where m.CODMOVIMENTO = old.CODMOVIMENTO
    into :ccusto;
    /* atualiza o estoque */
    select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
      from ESTOQUE_VIEW_CUSTO(current_date, old.CODPRODUTO, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
      into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;  
      
    if (custoFixo = 'N') then 
    begin   
     -- insert into IDOCUMENTOS(ID_DOCTOS, DOCTOS_DESCRICAO) values(25,'15-' );
      update produtos set VALORUNITARIOATUAL = :preco_compra, PRECOMEDIO = :preco_custo
        ,ESTOQUEATUAL = :estoque 
       ,dataultimacompra = current_date 
      where codproduto = old.CODPRODUTO;
    end 
    else begin 
      update produtos set VALORUNITARIOATUAL = :preco_compra, ESTOQUEATUAL = :estoque  
      where codproduto = old.CODPRODUTO;
    end     
      
  end     
END
