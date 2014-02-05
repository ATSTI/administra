CREATE OR ALTER PROCEDURE SPESTOQUE (
    DTA1 date,
    DTA2 date,
    PROD1 integer,
    PROD2 integer,
    GRUPOA varchar(50),
    SUBGRUPOA varchar(50) )
RETURNS (
    CODPROD varchar(20),
    PRODUTO varchar(300),
    UNIDADE char(3),
    GRUPO varchar(30),
    SUBGRUPO varchar(30),
    SALDOINI double precision,
    VLRSALDOINI double precision,
    ENTRADA double precision,
    VLRENTRADA double precision,
    SAIDA double precision,
    VLRSAIDA double precision,
    SALDOFIM double precision,
    VALORCUSTO double precision,
    CUSTOUNIT  double precision,
    CCUSTO integer )
AS
DECLARE VARIABLE COD INTEGER;
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
BEGIN
    ENTRADA = 0;
    SAIDA = 0;
    -- CCUSTO
  --  FOR SELECT DISTINCT CODALMOXARIFADO FROM MOVIMENTO WHERE  DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2 
  --  INTO :CCUSTO 
  --   do begin
    CCUSTO = 1; 
      
    FOR SELECT CODPRODUTO, CODPRO, cast(PRODUTO as varchar(300)), FAMILIA, CATEGORIA, UNIDADEMEDIDA 
          FROM PRODUTOS 
         WHERE (CODPRODUTO BETWEEN :PROD1 AND :PROD2) 
           AND ((FAMILIA = :GRUPOA) OR (:GRUPOA = 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA')) 
           AND ((CATEGORIA = :SUBGRUPOA) OR (:SUBGRUPOA = 'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA')) 
           AND ((TIPO <> 'SERV') or (tipo is null))
         GROUP BY FAMILIA, CATEGORIA, CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA
          INTO :COD, :CODPROD, :PRODUTO, :GRUPO, :SUBGRUPO, :UNIDADE
      DO BEGIN      
      
       SELECT SUM(movdet.QUANTIDADE)  FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
              AND natu.CODNATUREZA = mov.CODNATUREZA 
              AND movdet.CODPRODUTO = :COD 
              AND natu.BAIXAMOVIMENTO = 0 
              AND mov.DATAMOVIMENTO  < :DTA1 
              AND movdet.BAIXA is not null 
              AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1)) 
        INTO :ENTRA;
       /* -- Qtde Inicial SAIDA*/
       SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
              AND natu.CODNATUREZA = mov.CODNATUREZA 
              AND movdet.CODPRODUTO = :COD 
              AND natu.BAIXAMOVIMENTO = 1 
              AND mov.DATAMOVIMENTO  < :DTA1 
              AND movdet.BAIXA is not null
              AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))
        INTO :SAI;
        IF (ENTRA IS NULL) THEN
            ENTRA = 0;
        IF (SAI IS NULL) THEN
            SAI = 0;
        SALDOINI = ENTRA - SAI;
        
        --select ev.PRECOCUSTO from ESTOQUE_VIEW_CUSTO(UDF_INCDAY(:DTA1,-1), :COD, :CCUSTO, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
        --    into :VALORCUSTO;
        select ev.CUSTOINICIAL, ev.CUSTOMEDIO, ev.CUSTOENTRADAS from ESTOQUE_CUSTOMEDIO(:DTA1, :DTA2, :COD) ev 
          into :VLRSALDOINI, :VALORCUSTO, :VLRENTRADA;                     

        /*  -- Entrada*/
        SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  
             WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
              AND natu.CODNATUREZA = mov.CODNATUREZA 
              AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))
              AND movdet.CODPRODUTO   = :COD 
              AND natu.BAIXAMOVIMENTO = 0 
              AND mov.DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2 
              AND movdet.BAIXA is not null 
             INTO :ESTOQ;
         if (ESTOQ IS NULL) THEN 
            EStoq = 0;
         ENTRADA = ENTRADA + ESTOQ;
         
         IF (ENTRADA IS NULL) THEN
           ENTRADA = 0;

        /*  -- Saida*/
        SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  
             WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
               AND natu.CODNATUREZA = mov.CODNATUREZA 
               AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))
               AND movdet.CODPRODUTO = :COD 
               AND natu.BAIXAMOVIMENTO = 1 
               AND mov.DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2 
               AND movdet.BAIXA is not null 
              INTO :ESTOQ;
         
            if (ESTOQ IS NULL) THEN 
              EStoq = 0;
            SAIDA = SAIDA + ESTOQ; 
                
          VLRSAIDA = VALORCUSTO;  

          /*if ((valorCusto is null) or (valorcusto = 0)) then 
          begin 
            select ev.PRECOCUSTO from ESTOQUE_VIEW_CUSTO(:DTA2, :COD, :CCUSTO, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
            into :VALORCUSTO;
            VLRENTRADA = VALORCUSTO;
            VLRSAIDA = VALORCUSTO;  
          end  */

        
          IF (SAIDA IS NULL) THEN
            SAIDA = 0;

        SALDOFIM = SALDOINI + ENTRADA - SAIDA;
        custounit = valorcusto;          
        VALORCUSTO = VALORCUSTO * SALDOFIM;
        SUSPEND;
        ENTRADA = 0;
        SAIDA = 0;
        valorCusto = null;
    END
  --END -- CCUSTO
END