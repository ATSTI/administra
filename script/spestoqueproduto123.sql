CREATE OR ALTER PROCEDURE SPESTOQUEPRODUTO (
                                   DTA1                             DATE
                                 , DTA2                             DATE
                                 , PROD1                            INTEGER
                                 , PROD2                            INTEGER
                                 , GRUPO                            VARCHAR( 50 )
                                 , SUBGRUPO                         VARCHAR( 50 )
                                 , MARCA                            VARCHAR( 50 )
                                 , PCCUSTO                          INTEGER )
RETURNS ( COD                              INTEGER
        , CODPROD                          VARCHAR( 20 )
        , PRODUTO                          VARCHAR( 200 )
        , SALDOINI                         DOUBLE PRECISION
        , ENTRADA                          DOUBLE PRECISION
        , SAIDA                            DOUBLE PRECISION
        , PEDIDO                           DOUBLE PRECISION
        , SALDOFIM                         DOUBLE PRECISION
        , SALDOFIMSEMPEDIDO                DOUBLE PRECISION
        , VALORCUSTO                       DOUBLE PRECISION
        , VLRTOTALINI                      DOUBLE PRECISION
        , VLRTOTALFIM                      DOUBLE PRECISION
        , VALORVENDA                       DOUBLE PRECISION
        , TIPOPRODUTO                      VARCHAR( 20 ) )
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
DECLARE VARIABLE PRCUSTO DOUBLE PRECISION;
DECLARE VARIABLE CODMP INTEGER;
declare variable VLRMP double precision;
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
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, COMPRA v 
            WHERE v.codmovimento = mov.codmovimento and  mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
            AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND v.DATACOMPRA  < :DTA1 
            AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :ENTRA, :ENTRAVLR;
        
       /* -- Qtde Inicial SAIDA*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO)  
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, VENDA v  
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
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, COMPRA v   
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND v.DATACOMPRA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :ENTRADA, :EntraVlr;
        IF (ENTRADA IS NULL) THEN
            ENTRADA = 0;

       /* -- Saída*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO) 
           FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  , VENDA v 
            WHERE  v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND v.DATAVENDA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :SAIDA, :saiVlr;

        IF (SAIDA IS NULL) THEN
            SAIDA = 0;


        VlrTotalFim = EntraVlr - SaiVlr;
       /* -- Pedidos*/
        SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, VENDA v   
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 
            AND v.DATAVENDA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and mov.STATUS = 1
        INTO :PEDIDO;

        IF (PEDIDO IS NULL) THEN
            PEDIDO = 0;

       /* O custo do produto e baseado em cima das materias primas */
    -- busco o último movimento q este produto teve para pegar o preço de custo dele.
    prCus = null;

    VLRMP = 0;
    select first 1 VLR_BASE from MOVIMENTODETALHE md, MOVIMENTO m, COMPRA c
     where (m.CODMOVIMENTO = md.CODMOVIMENTO) and (c.CODMOVIMENTO = m.CODMOVIMENTO) and
    md.VLR_BASE > 0 and (c.DATACOMPRA <= :dta2) and (md.baixa = 0) and md.codproduto = :cod
      order by md.codmovimento desc
       into :prCus;
    
    if (prCus is null) then 
      prCus = 0;      
      valorcusto = prCus; 

    custoMateriaPrima = 0;   
    select sum(m.QTDEUSADA * (case when p.PRECOMEDIO is null then p.VALORUNITARIOATUAL 
     when p.PRECOMEDIO = 0 then p.VALORUNITARIOATUAL 
     else p.PRECOMEDIO end ))    
    from MATERIA_PRIMA m 
      inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODMP
      where m.CODPRODUTO = :cod
    into :custoMateriaPrima;
    if (custoMateriaPrima is null) then 
      custoMateriaPrima = 0;   
    if (custoMateriaPrima > 0) then 
       VALORCUSTO = custoMateriaPrima;
    else    
       valorcusto = prcus;
        
    --VLRMP = VLRMP + (custoMateriaPrima * prCus);

   /* if (custoMateriaPrima > 0) then
       VALORCUSTO = custoMateriaPrima;
    else    
       valorcusto = prcus;*/
      -- if (VLRMP > 0) then
      --   valorcusto = VLRMP;
         
       SALDOFIM = SALDOINI + ENTRADA - SAIDA;
       SALDOFIMSEMPEDIDO = SALDOINI + ENTRADA - SAIDA - PEDIDO;
       VALORVENDA =  SALDOFIM * valorcusto;
          SUSPEND;
       --   VLRMP = 0;
          
        custoMateriaPrima = null;

    END
         
        
        /*if ((CustoMateriaPrima = 0) OR (CustoMateriaPrima is null)) then
          VALORCUSTO =  PRCUS;*/


END
