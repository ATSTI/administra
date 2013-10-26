CREATE OR ALTER PROCEDURE REL_VENDACOMPRA (
    PDTA1 date,
    PDTA2 date,
    CCUSTO integer )
RETURNS (
    CODPRODUTO varchar(15),
    PRODUTO varchar(300),
    GRUPO varchar(30),
    QTDEVENDA double precision,
    VLRUNITVENDA double precision,
    VLRTOTALVENDA double precision,
    QTDECOMPRA double precision,
    VLRUNITCOMPRA double precision,
    VLRTOTALCOMPRA double precision,
    LUCROPERCENT double precision,
    VLRLUCRO double precision,
    VLRCUSTOUNIT double precision,
    VLRCUSTOTOTAL double precision,
    PERCENTPRODUTO double precision,
    LUCROBRUTO double precision,
    QTDEESTOQUE double precision,
    QTDEPERDA double precision,
    VLRPERDA double precision,
    ICMSCOMPRA double precision,
    ICMSVENDA double precision )
AS
DECLARE VARIABLE codPro integer; 
DECLARE VARIABLE Pro integer; 
DECLARE VARIABLE total double precision;
DECLARE VARIABLE totalPerda double precision;
DECLARE VARIABLE custoProd double precision;
DECLARE VARIABLE totIcms double precision;
DECLARE VARIABLE totProdIcms double precision;
DECLARE VARIABLE tIcms double precision;
DECLARE VARIABLE CPERDA SMALLINT;
--declare variable cCusto integer;
BEGIN
  --ccusto = 51;
  qtdeEstoque = 0;
  totalPerda = 0;
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CENTRO PERDA'
  INTO :CPERDA;
  Select sum(v.QTDE) from view_venda v
    where v.dataVenda BETWEEN :pdta1 and :pdta2 
      and ((v.CODCCUSTO = :ccusto) or (:ccusto = 0)) 
    into :total;
  if (total is null) THEN 
    total = 0;
  for Select p.CodPro, p.Produto, p.CodProduto, p.estoqueAtual, p.familia,
    case when p.VALORUNITARIOATUAL > 0 then p.VALORUNITARIOATUAL else p.PRECOMEDIO end 
    from produtos p 
    where (p.tipo <> 'SERV') or (p.TIPO is null)
    into :codProduto, :Produto, :codPro, :QtdeEstoque, :grupo, :custoProd
  do begin 
    
   /* select sum(saldoFim), sum(valorcusto) from SPESTOQUEPRODUTO(:pdta1
                                 , :pdta2
                                 , :codPro
                                 , :codPro
                                 , 'TODOS OS GRUPOS CADASTRADOS'
                                 , 'TODOS SUBGRUPOS DO CADASTRO'
                                 , 'TODAS AS MARCAS CADASTRADAS'
                                 , 0)
      into :QtdeEstoque, :vlrCustoTotal;
    */  
    totalPerda = 0;
    
    --CUSTO ITEM 
    SELECT FIRST 1 ev.PRECOUNIT, ev.SALDOFIMACUM FROM ESTOQUE_VIEW (:pdta2,
    :codPro,  :CCUSTO, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev
     into :vlrCustoTotal, :qtdeEstoque;      

    if (qtdeEstoque is null) then 
      qtdeEstoque = 0;

    SELECT FIRST 1 ev.SALDOFIMACUM FROM ESTOQUE_VIEW (:pdta2,
    :codPro,  :CPERDA, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev
     into :totalPerda;
     
     if (totalPerda is null) then 
       totalPerda = 0; 
     
     qtdeEstoque = qtdeEstoque+ totalPerda;

     /* ICMS Valores de Venda */
    ICMSVENDA = 0;

    For Select m.CODPRODUTO, sum(n.VALOR_ICMS), SUM((case when m.qtde_alt is null then 1 
     when m.qtde_alt = 0 then 1 else (1-(m.qtde_alt/100))  end) * m.VALTOTAL) as VALTOTAL, n.VALOR_PRODUTO 
     from notafiscal n
    inner join venda v on n.codvenda = v.codvenda
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = v.CODMOVIMENTO
    where m.codProduto = :codPRo 
      and v.dataVenda BETWEEN :pdta1 and :pdta2
      and ((v.CODCCUSTO = :ccusto) or (:ccusto = 0)) 
    group by m.CODPRODUTO, m.VALTOTAL, n.VALOR_PRODUTO
    into :pro, :tIcms, :totProdIcms, :totIcms 
    do begin 
      if (tIcms is null) then 
        tIcms = 0;
      if (totIcms is null) then 
        totIcms = 0;
      if (totProdIcms is null) then 
        totProdIcms = 0;
      if (totIcms > 0) then 
        icmsVenda = icmsVenda + (totProdIcms/totIcms)*tIcms;
    end

     if (vlrCustoTotal is null) then 
     begin 
       select p.VALORUNITARIOATUAL from produtos p where p.CODPRODUTO = :pro 
       into :vlrCustoTotal;
     end 

    /* Valores de Venda */
    /* O Campo VLRESTOQUE esta armazenando o custo dos itens vendidos */
    For Select sum(v.Qtde), SUM(v.VALORVENDA) 
     from view_venda v 
    where v.codProduto = :codPRo 
      and v.dataVenda BETWEEN :pdta1 and :pdta2 
      and ((v.CODCCUSTO = :ccusto) or (:ccusto = 0)) 
     into :qtdeVenda, :vlrTotalVenda
   do begin 
      if (qtdeVenda is null) then 
        qtdeVenda = 0;
      if (vlrTotalVenda is null) then 
        vlrTotalVenda = 0;
      if (qtdeVenda > 0) then  
        vlrUnitVenda = vlrTotalVenda / qtdeVenda;
      else 
        vlrUnitVenda = 0;
    end
    
    vlrCustoTotal = vlrCustoTotal * qtdeVenda;
    
    
    /* Valores de Compra */
    for Select sum(m.QUANTIDADE), sum(m.VALTOTAL), sum((m.ICMS / 100 )* m.VALTOTAL)
     from compra c
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = c.CODMOVIMENTO
    inner join MOVIMENTO mov on mov.CODMOVIMENTO = c.CODMOVIMENTO 
    where m.codProduto = :codPRo 
      and c.dataCompra BETWEEN :pdta1 and :pdta2 
      and ((mov.codnatureza = 4) or (mov.CODNATUREZA = 1))
      and ((c.CODCCUSTO = :ccusto) or (:ccusto = 0)) 
     into :qtdeCompra, :vlrTotalCompra , :icmscompra
    do begin 
      if (qtdeCompra is null) then 
        qtdeCompra = 0;    
      
      if (vlrTotalCompra is null) then 
        vlrTotalCompra = 0;
      
    end 

    -- Valores de Perda
    Select sum(m.QUANTIDADE), sum(m.QUANTIDADE*m.PRECO) from MOVIMENTO mov 
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = mov.CODMOVIMENTO
    where m.codProduto = :codPRo 
      and mov.DATAMOVIMENTO BETWEEN :pdta1 and :pdta2 
      and mov.codnatureza = 2 
      and mov.CODALMOXARIFADO = :CPERDA
    group by mov.CODALMOXARIFADO
    into :qtdePERDA, :vlrPerda;

    if (qtdePerda is null) then
    begin
      qtdePerda = 0;      
    end
    if (VlrPerda is null) then
    begin
      VlrPerda = 0;      
    end
    if (qtdeCompra is null) then 
      qtdeCompra = 0;
    if (vlrTotalCompra is null) then 
      vlrTotalCompra = 0;
  
    if (qtdeCompra > 0) then  
      vlrUnitCompra = vlrTotalCompra / qtdeCompra;
    else 
      vlrUnitCompra = 0;
    vlrLucro = vlrTotalVenda - vlrTotalCompra;

   lucroBruto = vlrLucro;

    if (vlrUnitCompra > 0) then 
    begin 
      LucroPercent = (vlrUnitVenda / vlrUnitCompra);
      if (LucroPercent < 1) then 
        LucroPercent = LucroPercent * (-100);
      else
        LucroPercent = LucroPercent * (100);
    end 
    else 
      LucroPercent = 0;

    if (vlrCustoUnit > 0) then 
    begin 
      vlrLucro = 1-(vlrUnitVenda / vlrCustoUnit);
      if (vlrLucro < 1) then 
        vlrLucro = vlrLucro * (-100);
      else
        vlrLucro = vlrLucro * (100);
    end 
    else 
      vlrLucro = 0;

   

    if (qtdeVenda > 0) then
      PercentProduto =  100*((qtdeVenda / total)-100);
    else 
      PercentProduto = 0;
    if (vlrCustoTotal = 0) then 
    begin 
      vlrCustoTotal = custoProd * QtdeVenda;
    end
    /*if ((qtdeVenda > 0) or (qtdeCompra > 0)) then  */
      suspend;
    vlrPerda = 0;
    qtdePerda = 0;
    vlrCustoTotal = 0;
    vlrLucro = 0;
  end 
END