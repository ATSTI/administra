set term ^ ;
CREATE OR ALTER PROCEDURE SPESTOQUEPRODUTO (
    DTA1 date,
    DTA2 date,
    PROD1 integer,
    PROD2 integer,
    GRUPO varchar(50),
    SUBGRUPO varchar(50),
    MARCA varchar(50),
    PCCUSTO integer )
RETURNS (
    COD integer,
    CODPROD varchar(20),
    PRODUTO varchar(200),
    SALDOINI double precision,
    ENTRADA double precision,
    SAIDA double precision,
    PEDIDO double precision,
    SALDOFIM double precision,
    SALDOFIMSEMPEDIDO double precision,
    VALORCUSTO double precision,
    VLRTOTALINI double precision,
    VLRTOTALFIM double precision,
    VALORVENDA double precision,
    VALORCOMPRA double precision,
    TIPOPRODUTO varchar(20) )
AS
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
DECLARE VARIABLE ENTRAVLR DOUBLE PRECISION = 0;
DECLARE VARIABLE SAIVLR DOUBLE PRECISION = 0;
DECLARE VARIABLE PRCUS DOUBLE PRECISION = 0;
DECLARE VARIABLE PRVEN DOUBLE PRECISION = 0;
DECLARE VARIABLE MARGEM DOUBLE PRECISION = 0;
DECLARE VARIABLE CUSTOMATERIAPRIMA DOUBLE PRECISION = 0;
DECLARE VARIABLE PMCUS DOUBLE PRECISION = 0;
declare variable tipoprecovenda char(1);
BEGIN
    FOR SELECT CODPRODUTO, CODPRO, PRODUTO, FAMILIA, CATEGORIA,  VALORUNITARIOATUAL, VALOR_PRAZO, TIPO
      ,PRECOMEDIO, tipoPrecoVenda, margem FROM PRODUTOS 
        WHERE CODPRODUTO BETWEEN :PROD1 AND :PROD2  AND ((tipo <> 'SERV') or (TIPO is null)) AND ((CATEGORIA = :SUBGRUPO) OR 
                 (:SUBGRUPO = 'TODOS SUBGRUPOS DO CADASTRO'))   AND ((FAMILIA = :GRUPO) OR
                 (:GRUPO = 'TODOS OS GRUPOS CADASTRADOS')) 
                 AND ((MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS CADASTRADAS')) ORDER BY PRODUTO
    INTO :COD, :CODPROD, :PRODUTO, GRUPO, SUBGRUPO, :PRCUS, :PRVEN, :TIPOPRODUTO, :PMCUS, :tipoPrecoVenda, :margem
    DO BEGIN
  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
        /* if (tipoPreco */
        if (TipoPrecoVenda = 'F') then 
           
        IF ((PRCUS IS NULL) or (PRCUS = 0)) THEN 
          PRCUS = PMCUS;  
       /* -- Qtde Inicial ENTRADA*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO) 
            FROM COMPRA v, MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
            WHERE v.codmovimento = mov.codmovimento and  mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
            AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND v.DATACOMPRA  < :DTA1 
            AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :ENTRA, :ENTRAVLR;
        
       /* -- Qtde Inicial SAIDA*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO)  
            FROM VENDA v , MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
            AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND v.DATAVENDA  < :DTA1
            AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :SAI, :SAIVLR;
        IF (ENTRA IS NULL) THEN
            ENTRA = 0;
        IF (SAI IS NULL) THEN
            SAI = 0;
        SALDOINI = ENTRA - SAI;
        VLRTotalIni = EntraVlr - SaiVlr;

       /* -- Entrada */
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO) 
            FROM COMPRA v, MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu   
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND v.DATACOMPRA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :ENTRADA, :EntraVlr;
        IF (ENTRADA IS NULL) THEN
            ENTRADA = 0;
            
        SELECT First 1 movdet.PRECO  
            FROM COMPRA v, MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu   
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND v.DATACOMPRA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
            ORDER BY v.DATACOMPRA DESC 
        INTO :VALORCOMPRA;
        IF (VALORCOMPRA IS NULL) THEN
            VALORCOMPRA = 0;            

       /* -- SaÃ­da*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO) 
           FROM VENDA v, MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
            WHERE  v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND v.DATAVENDA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :SAIDA, :saiVlr;

        IF (SAIDA IS NULL) THEN
            SAIDA = 0;


        VlrTotalFim = EntraVlr - SaiVlr;
       /* -- Pedidos*/
        SELECT SUM(movdet.QUANTIDADE) FROM VENDA v, MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu   
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 
            AND v.DATAVENDA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and mov.STATUS = 1
        INTO :PEDIDO;

        IF (PEDIDO IS NULL) THEN
            PEDIDO = 0;

       /* O custo do produto e baseado em cima das materias primas */
    -- busco o Ãºltimo movimento q este produto teve para pegar o preÃ§o de custo dele.
    prCus = null;
    select first 1 precocusto from MOVIMENTODETALHE md, MOVIMENTO m where (m.CODMOVIMENTO = md.CODMOVIMENTO) and 
    md.PRECOCUSTO > 0 and (m.DATAMOVIMENTO <= :dta2) and ((md.baixa = 0) or (md.baixa = 1)) and md.codproduto = :cod 
      order by md.codmovimento desc
       into :prCus;
    if (prCus is null) then 
      prCus = 0;
    custoMateriaPrima = 0;   
    select sum(m.QTDEUSADA * (case when p.VALORUNITARIOATUAL is null then p.PRECOMEDIO 
     when p.VALORUNITARIOATUAL = 0 then p.PRECOMEDIO 
     else p.VALORUNITARIOATUAL end ))
     
    from MATERIA_PRIMA m 
      inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODMP
      where m.CODPRODUTO = :cod
    into :custoMateriaPrima;
    if (custoMateriaPrima > 0) then 
       VALORCUSTO = custoMateriaPrima;
    else    
       valorcusto = prcus;
     
        SALDOFIM = SALDOINI + ENTRADA - SAIDA;
        SALDOFIMSEMPEDIDO = SALDOINI + ENTRADA - SAIDA - PEDIDO;
        if ((CustoMateriaPrima = 0) OR (CustoMateriaPrima is null)) then 
          VALORCUSTO =  PRCUS;
        VALORVENDA =  SALDOFIM * PRVEN;
          SUSPEND;
        custoMateriaPrima = null;

    END

END