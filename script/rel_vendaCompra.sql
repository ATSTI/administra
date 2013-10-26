ALTER PROCEDURE REL_VENDACOMPRA (
    PDTA1 Date,
    PDTA2 Date )
RETURNS (
    CODPRODUTO Varchar(15),
    PRODUTO Varchar(300),
    GRUPO Varchar(30),
    QTDEVENDA Double precision,
    VLRUNITVENDA Double precision,
    VLRTOTALVENDA Double precision,
    QTDECOMPRA Double precision,
    VLRUNITCOMPRA Double precision,
    VLRTOTALCOMPRA Double precision,
    LUCROPERCENT Double precision,
    VLRLUCRO Double precision,
    VLRCUSTOUNIT Double precision,
    VLRCUSTOTOTAL Double precision,
    PERCENTPRODUTO Double precision,
    LUCROBRUTO Double precision,
    QTDEESTOQUE Double precision,
    QTDEPERDA Double precision,
    VLRPERDA Double precision,
    ICMSCOMPRA Double precision,
    ICMSVENDA Double precision )
AS
DECLARE VARIABLE codPro integer; 
DECLARE VARIABLE Pro integer; 
DECLARE VARIABLE total double precision;
DECLARE VARIABLE custoProd double precision;
DECLARE VARIABLE totIcms double precision;
DECLARE VARIABLE totProdIcms double precision;
DECLARE VARIABLE tIcms double precision;
DECLARE VARIABLE CPERDA SMALLINT;
BEGIN
  
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CENTRO PERDA'
  INTO :CPERDA;
  Select sum(m.QUANTIDADE) from venda v
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = v.CODMOVIMENTO 
    inner join MOVIMENTO mov on mov.CODMOVIMENTO = v.CODMOVIMENTO 
    where v.dataVenda BETWEEN :pdta1 and :pdta2 and mov.codnatureza = 3
    into :total;
  if (total is null) THEN 
    total = 0;
  for Select p.CodPro, p.Produto, p.CodProduto, p.estoqueAtual, p.familia,
    case when p.VALORUNITARIOATUAL > 0 then p.VALORUNITARIOATUAL else p.PRECOMEDIO end from produtos p 
    where (p.tipo <> 'SERV') or (p.TIPO is null)
    into :codProduto, :Produto, :codPro, :QtdeEstoque, :grupo, :custoProd
  do begin 
    
    select sum(saldoFim) from SPESTOQUEPRODUTO(:pdta2
                                 , :pdta2
                                 , :codPro
                                 , :codPro
                                 , 'TODOS OS GRUPOS CADASTRADOS'
                                 , 'TODOS SUBGRUPOS DO CADASTRO'
                                 , 'TODAS AS MARCAS CADASTRADAS'
                                 , 0)
      into :QtdeEstoque;


     -- ICMS Valores de Venda
    ICMSVENDA = 0;

    For Select m.CODPRODUTO, sum(n.VALOR_ICMS), SUM((case when m.qtde_alt is null then 1 
     when m.qtde_alt = 0 then 1 else (1-(m.qtde_alt/100))  end) * m.VALTOTAL) as VALTOTAL, n.VALOR_PRODUTO from notafiscal n
    inner join venda v on n.codvenda = v.codvenda
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = v.CODMOVIMENTO
    where m.codProduto = :codPRo and v.dataVenda BETWEEN :pdta1 and :pdta2
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
    -- Valores de Venda
    -- O Campo VLRESTOQUE estÃ¡ armazenando o custo dos itens vendidos
    Select sum(m.QUANTIDADE), SUM((case when m.qtde_alt is null then 1 
     when m.qtde_alt = 0 then 1 else (1-(m.qtde_alt/100))  end) * m.VALTOTAL) as VALTOTAL, sum(m.VLRESTOQUE) from venda v 
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = v.CODMOVIMENTO
    inner join MOVIMENTO mov on mov.CODMOVIMENTO = v.CODMOVIMENTO 
    where m.codProduto = :codPRo and v.dataVenda BETWEEN :pdta1 and :pdta2 and mov.codnatureza = 3
    
    into :qtdeVenda, :vlrTotalVenda, :vlrCustoTotal;
    
    if (qtdeVenda is null) then 
      qtdeVenda = 0;

    if (vlrTotalVenda is null) then 
       vlrTotalVenda = 0;
    if (qtdeVenda > 0) then  
       vlrUnitVenda = vlrTotalVenda / qtdeVenda;
    else 
       vlrUnitVenda = 0;
   
    -- Valores de Compra
    Select sum(m.QUANTIDADE), sum(m.VALTOTAL), sum((m.ICMS / 100 )* m.VALTOTAL) from compra c
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = c.CODMOVIMENTO
    inner join MOVIMENTO mov on mov.CODMOVIMENTO = c.CODMOVIMENTO 
    where m.codProduto = :codPRo and c.dataCompra BETWEEN :pdta1 and :pdta2 and mov.codnatureza = 4
    into :qtdeCompra, :vlrTotalCompra , :icmscompra ;

    -- Valores de Perda
    Select sum(m.QUANTIDADE), sum(m.QUANTIDADE*m.PRECOCUSTO) from venda v 
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = v.CODMOVIMENTO
    inner join MOVIMENTO mov on mov.CODMOVIMENTO = v.CODMOVIMENTO 
    where m.codProduto = :codPRo and v.dataVenda BETWEEN :pdta1 and :pdta2 and mov.codnatureza = 2 and m.codAlmoxarifado = :CPERDA
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
    --if ((qtdeVenda > 0) or (qtdeCompra > 0)) then 
      suspend;
  end 
END
