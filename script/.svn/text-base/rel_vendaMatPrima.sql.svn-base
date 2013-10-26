SET TERM ^ ;
CREATE OR ALTER PROCEDURE REL_VENDAMATPRIMA(
    PDTA1 Date,
    PDTA2 Date, CCUSTO INTEGER)
RETURNS (
    CODPRODUTO Varchar(15),
    PRODUTO Varchar(300),
    CODREF Varchar(15),
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
    QTDEESTOQUE Double precision)
AS
DECLARE VARIABLE codPro integer; 
DECLARE VARIABLE Pro integer; 
DECLARE VARIABLE total double precision;
DECLARE VARIABLE custoProd double precision;
DECLARE VARIABLE totIcms double precision;
DECLARE VARIABLE totProdIcms double precision;
DECLARE VARIABLE tIcms double precision;
DECLARE VARIABLE QtdeMP double precision;
DECLARE VARIABLE CPERDA SMALLINT;
DECLARE VARIABLE tipoProd varchar(15);
BEGIN
  -- Relatorio usado na OXBike, la usa uma descrição para o item de venda e baixa outro do estoque, ex.:
  -- Produto 00623 - existe o item 00623-6 que significa embalagem com 6 unidades, este item esta 
  -- cadastrado como serviço e ele tem em sua materia prima o item 00623 , cada unidade do 00623-6 vendido
  -- baixa 6 unidades do 00623
  -- Lista os produtos vendidos considerando as materias primas como Produto Vendido
  for Select p.CodPro, p.Produto, p.CodProduto, p.estoqueAtual, p.familia,
    p.VALORUNITARIOATUAL, p.tipo from produtos p 
    into :codProduto, :Produto, :codPro, :QtdeEstoque, :grupo, :custoProd, :tipoProd
  do begin
    CODREF = CODPRODUTO; 
    if (tipoProd is null) then 
      tipoProd = 'VENDA';
    
    -- Valores de Venda
    -- O Campo VLRESTOQUE estÃ¡ armazenando o custo dos itens vendidos
    Select sum(m.QUANTIDADE), SUM((case when m.qtde_alt is null then 1 
      when m.qtde_alt = 0 then 1 else (1-(m.qtde_alt/100))  end) * m.VALTOTAL) as VALTOTAL, sum(m.VLRESTOQUE) from venda v 
      inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = v.CODMOVIMENTO
      inner join MOVIMENTO mov on mov.CODMOVIMENTO = v.CODMOVIMENTO 
      where m.codProduto = :codPRo and v.dataVenda BETWEEN :pdta1 and :pdta2 and mov.codnatureza = 3 and 
        ((v.CODCCUSTO = :CCUSTO) or (:CCUSTO = 0))
    
      into :qtdeVenda, :vlrTotalVenda, :vlrCustoTotal;
    
    if (qtdeVenda is null) then 
      qtdeVenda = 0;

    if (vlrTotalVenda is null) then 
       vlrTotalVenda = 0;
       
    --produto = :produto || ' antes do if tipoProd = ' || :tipoProd;       
    -- Se o produto vendido for como Serv então pego a Materia prima dele para listar como venda
    if (tipoProd = 'SERV') then 
    begin 
      -- mudo o código do produto para buscar o valor de compra do item   da materia prima 
      Select first 1 m.QTDEUSADA, p.CodPro, p.Produto, p.estoqueAtual, p.familia, p.CODPRODUTO
         from MATERIA_PRIMA m, PRODUTOS p 
         where p.CODPRODUTO = m.CODPRODMP and m.CODPRODUTO = :codPro 
      into :QtdeMP, :codProduto, :Produto, :QtdeEstoque, :grupo, :codPro;
      --produto = :produto || ' entrou no if tipoProd = ' || :tipoProd || ' QtdeMP = ' || cast(:QtdeMP as varchar(12));
             
      if (QtdeMP is null) then 
        QtdeMP = 0;
      
      if (QtdeMP > 0) then   
        qtdeVenda = qtdeVenda * QtdeMP;          
   
      --vlrTotalVenda = vlrTotalVenda / qtdeVenda; -- Vlr Venda Unitario   
      --vlrTotalVenda = vlrTotalVenda * qtdeVenda;   
      
    end
    
      -- Pegando o Custo deste item
      Select sum(m.precocusto * m.QUANTIDADE) / sum(m.QUANTIDADE) from movimento mov, movimentodetalhe m 
         where mov.CODMOVIMENTO = m.CODMOVIMENTO and  m.codProduto = :codPro and mov.DATAMOVIMENTO BETWEEN :pdta1 and :pdta2
         and ((mov.codnatureza = 3) or (mov.codnatureza = 2))
         into :vlrCustoUnit;    
    
    
    
    -- Busco o valor custo deste item
    select sum(SALDOFIM)  from  SPESTOQUE (:pdta1, :pdta2, :codPro, :codPro, 
      'TODOS OS GRUPOS CADASTRADOS NO SISTEMA',
      'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA' )
      into :qtdeEstoque;
    
    if (tipoProd = 'SERV') then   
      vlrCustoTotal = vlrCustoUnit * qtdeVenda;    
              
    if (qtdeVenda > 0) then  
       vlrUnitVenda = vlrTotalVenda / qtdeVenda;
    else 
       vlrUnitVenda = 0;
   
    -- Valores de Compra
    Select sum(m.QUANTIDADE), sum(m.VALTOTAL)from compra c
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = c.CODMOVIMENTO
    inner join MOVIMENTO mov on mov.CODMOVIMENTO = c.CODMOVIMENTO 
    where m.codProduto = :codPRo and c.dataCompra BETWEEN :pdta1 and :pdta2 and mov.codnatureza = 4
    and ((c.CODCCUSTO = :CCUSTO) or (:CCUSTO = 0))
    into :qtdeCompra, :vlrTotalCompra ;

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
    if (vlrCustoUnit is null) then 
      vlrCustoUnit = 0;
    if ((qtdeVenda > 0) or (qtdeCompra > 0)) then 
      suspend;
  end 
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE REL_VENDACOMPRA TO  SYSDBA;

