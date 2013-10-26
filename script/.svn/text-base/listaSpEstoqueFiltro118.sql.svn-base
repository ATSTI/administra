CREATE OR ALTER PROCEDURE  LISTASPESTOQUEFILTRO( DTA1                             DATE
                                , DTA2                             DATE
                                , PROD1                            INTEGER
                                , PROD2                            INTEGER
                                , SUBGRUPO                         VARCHAR( 50 )
                                , NATUREZA                         SMALLINT
                                , CCUSTO                           INTEGER
                                , MARCA                            VARCHAR( 50 )
                                , LOTE                             VARCHAR( 60 )
                                , GRUPOPROC                        VARCHAR( 50 ) )
RETURNS ( CODPROD                          VARCHAR( 20 )
        , CODMOV                           INTEGER
        , CODPRODUTO                       INTEGER   
        , TIPOMOVIMENTO                    VARCHAR( 30 )
        , PRODUTO                          VARCHAR( 300 )
        , GRUPO                            VARCHAR( 30 )
        , SUBGRUPOPROD                     VARCHAR( 30 )
        , SALDOINIACUM                     DOUBLE PRECISION
        , ENTRADA                          DOUBLE PRECISION
        , SAIDA                            DOUBLE PRECISION
        , SALDOFIMACUM                     DOUBLE PRECISION
        , PRECOUNIT                        DOUBLE PRECISION
        , VALORESTOQUE                     DOUBLE PRECISION
        , VALORVENDA                       DOUBLE PRECISION
        , LOTES                            VARCHAR( 60 )
        , CCUSTOS                          INTEGER
        , DTAFAB                           DATE
        , DTAVCTO                          DATE
        , NF                               INTEGER
        , CLIFOR                           VARCHAR( 60 )
        , codlote                          integer
        , ANOTACOES                        VARCHAR( 100 )
        , DATANF DATE
        , CODNATU SMALLINT
        , COD INTEGER
 )
AS
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTSAI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOINI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOFIM DOUBLE PRECISION = 0;
DECLARE VARIABLE Acumula DOUBLE PRECISION = 0;
DECLARE VARIABLE CODPRODU INTEGER = 0;
DECLARE VARIABLE IMPRIME CHAR(1);
BEGIN
    saida = 0;
    acumula = 0;
    if (CCUSTO = 0) then 
      CCUSTO = 1;
    /* SAIDA */
    FOR SELECT distinct l.codlote, mov.datamovimento, mov.CODMOVIMENTO, natu.BAIXAMOVIMENTO, natu.DESCNATUREZA, movdet.CODPRODUTO, 
        movdet.LOTE, movdet.DTAFAB, movdet.DTAVCTO, mov.CODALMOXARIFADO, prod.CODPRO, prod.PRODUTO, prod.FAMILIA, prod.CATEGORIA, mov.OBS, prod.VALORUNITARIOATUAL, 
        prod.VALOR_PRAZO
        FROM MOVIMENTO mov
        inner join VENDA v on v.CODMOVIMENTO = mov.CODMOVIMENTO 
        inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA 
        inner join MOVIMENTODETALHE  movdet on  movdet.CODMOVIMENTO = mov.CODMOVIMENTO
        inner join PRODUTOS prod on movdet.codproduto = prod.codproduto 
        left outer join lotes l on movdet.lote = l.lote and l.codproduto = movdet.codproduto

        WHERE (v.DATAVENDA BETWEEN :DTA1 AND :DTA2) 
          AND (movdet.CODPRODUTO BETWEEN :PROD1 AND :PROD2)  
          AND ((prod.TIPO <> 'SERV') or (prod.tipo is null)) 
          AND ((mov.CODNATUREZA = :NATUREZA) OR (:NATUREZA = 100)) 
          AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
          AND ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
          AND ((prod.CATEGORIA = :SUBGRUPO) OR (:SUBGRUPO = 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA'))  
          AND ((prod.MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS CADASTRADAS NO SISTEMA')) 
          AND movdet.BAIXA is not null
          AND natu.BAIXAMOVIMENTO = 1
          AND ((prod.FAMILIA = :GRUPOPROC) OR (:GRUPOPROC = 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA'))
          group by  prod.FAMILIA, prod.CATEGORIA, prod.CODPRO, prod.PRODUTO, movdet.CODPRODUTO, l.codlote, movdet.LOTE
                , mov.datamovimento, mov.codNatureza
                , natu.BAIXAMOVIMENTO, natu.DESCNATUREZA
                , mov.CODMOVIMENTO, movdet.DTAFAB, 
                movdet.DTAVCTO, mov.CODALMOXARIFADO, 
                mov.OBS, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO
                order by  l.codlote, mov.DATAMOVIMENTO, mov.CODMOVIMENTO, movdet.LOTE, prod.FAMILIA, prod.CATEGORIA, prod.CODPRO, prod.PRODUTO
                , natu.BAIXAMOVIMENTO, mov.codNatureza desc, natu.DESCNATUREZA
                
    INTO :codlote, :Datanf, :CODMOV, :CODNATU, :TIPOMOVIMENTO, :COD, :LOTES, :DTAFAB, :DTAVCTO, :CCUSTOS, 
        :CODPROD, :PRODUTO, GRUPO, SUBGRUPOPROD, :ANOTACOES, :precounit, :valorVenda
    DO BEGIN
        codProduto = cod;
        SUSPEND;
    end    
    /* ENTRADA */
    FOR SELECT distinct l.codlote, mov.datamovimento, mov.CODMOVIMENTO, natu.BAIXAMOVIMENTO, natu.DESCNATUREZA, movdet.CODPRODUTO, 
        movdet.LOTE, movdet.DTAFAB, movdet.DTAVCTO, mov.CODALMOXARIFADO, prod.CODPRO, prod.PRODUTO, prod.FAMILIA, prod.CATEGORIA, mov.OBS
        , prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO
        FROM MOVIMENTO mov
        inner join compra v on v.CODMOVIMENTO = mov.CODMOVIMENTO 
        inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA 
        inner join MOVIMENTODETALHE  movdet on  movdet.CODMOVIMENTO = mov.CODMOVIMENTO
        inner join PRODUTOS prod on movdet.codproduto = prod.codproduto 
        left outer join lotes l on movdet.lote = l.lote and l.codproduto = movdet.codproduto
        WHERE (v.DATACOMPRA BETWEEN :DTA1 AND :DTA2) 
          AND (movdet.CODPRODUTO BETWEEN :PROD1 AND :PROD2)  
          AND ((prod.TIPO <> 'SERV') or (prod.tipo is null)) 
          AND ((mov.CODNATUREZA = :NATUREZA) OR (:NATUREZA = 100)) 
          AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
          AND ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
          AND ((prod.CATEGORIA = :SUBGRUPO) OR (:SUBGRUPO = 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA'))  
          AND ((prod.MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS CADASTRADAS NO SISTEMA')) 
          AND movdet.BAIXA is not null 
          AND natu.BAIXAMOVIMENTO = 0
          AND ((prod.FAMILIA = :GRUPOPROC) OR (:GRUPOPROC = 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA'))
          group by  prod.FAMILIA, prod.CATEGORIA, prod.CODPRO, prod.PRODUTO, movdet.CODPRODUTO, l.codlote, movdet.LOTE
                , mov.datamovimento, mov.codNatureza
                , natu.BAIXAMOVIMENTO, natu.DESCNATUREZA
                , mov.CODMOVIMENTO, movdet.DTAFAB, 
                movdet.DTAVCTO, mov.CODALMOXARIFADO, 
                mov.OBS, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO
                order by  l.codlote, mov.DATAMOVIMENTO, mov.CODMOVIMENTO, movdet.LOTE, prod.FAMILIA, prod.CATEGORIA, prod.CODPRO, prod.PRODUTO
                , natu.BAIXAMOVIMENTO, mov.codNatureza desc, natu.DESCNATUREZA
                
    INTO :codlote, :Datanf, :CODMOV, :CODNATU, :TIPOMOVIMENTO, :COD, :LOTES, :DTAFAB, :DTAVCTO, :CCUSTOS, 
        :CODPROD, :PRODUTO, GRUPO, SUBGRUPOPROD, :ANOTACOES, :precounit, :valorVenda
    DO BEGIN
       codProduto = cod;
        SUSPEND;
    end    
    
end