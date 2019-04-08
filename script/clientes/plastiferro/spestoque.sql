SET TERM ^ ;
ALTER PROCEDURE SPESTOQUE (
    DTA1 DATE,
    DTA2 DATE,
    PROD1 INTEGER,
    PROD2 INTEGER,
    GRUPOA VARCHAR(50),
    SUBGRUPOA VARCHAR(50) )
RETURNS (
    CODPROD VARCHAR(20),
    PRODUTO VARCHAR(300),
    UNIDADE CHAR(3),
    GRUPO VARCHAR(30),
    SUBGRUPO VARCHAR(30),
    SALDOINI DOUBLE PRECISION,
    VLRSALDOINI DOUBLE PRECISION,
    ENTRADA DOUBLE PRECISION,
    VLRENTRADA DOUBLE PRECISION,
    SAIDA DOUBLE PRECISION,
    VLRSAIDA DOUBLE PRECISION,
    SALDOFIM DOUBLE PRECISION,
    VALORCUSTO DOUBLE PRECISION,
    CUSTOUNIT DOUBLE PRECISION,
    CRESULTADO VARCHAR(60),
    CCUSTO INTEGER )
AS
DECLARE VARIABLE COD INTEGER;
DECLARE VARIABLE CODCPERDA INTEGER;
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
BEGIN

   /* versao = '2.1.0.1' */
   /* nao exibe no relatorio */
   SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CENTRO PERDA'
   INTO :CODCPERDA;
   if (codCperda is null) then 
     codCperda = 99999;
   
    ENTRADA = 0;
    SAIDA = 0;
    /* CCUSTO */
    FOR SELECT DISTINCT M.CODALMOXARIFADO, PL.NOME FROM MOVIMENTO M, PLANO pl 
      WHERE pl.CODIGO = m.CODALMOXARIFADO 
        and m.CODALMOXARIFADO <> :codCPerda
        and DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2 
    INTO :CCUSTO, :CResultado 
    do begin
      /*CCUSTO = 1;  */
      
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
        
        /*select ev.PRECOCUSTO from ESTOQUE_VIEW_CUSTO(UDF_INCDAY(:DTA1,-1), :COD, :CCUSTO, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev  */
        /*    into :VALORCUSTO; */
        select ev.CUSTOINICIAL, ev.CUSTOMEDIO, ev.CUSTOENTRADAS from ESTOQUE_CUSTOMEDIO(:DTA1, :DTA2, :COD) ev 
          into :VLRSALDOINI, :VALORCUSTO, :VLRENTRADA;   

         select (sum(md.VALTOTAL) / sum(md.QUANTIDADE))  as CUSTOMEDIO
  from compra c, movimento m, MOVIMENTODETALHE md, NATUREZAOPERACAO np
   where m.CODMOVIMENTO = c.CODMOVIMENTO
     and md.CODMOVIMENTO = m.CODMOVIMENTO
     and np.CODNATUREZA = m.CODNATUREZA
     and np.BAIXAMOVIMENTO = 0
     and md.BAIXA is not null 
     and c.DATACOMPRA between :DTA1 and :DTA2
     and md.CODPRODUTO = :cod
     and m.codalmoxarifado = 51
     into :vlrEntrada;           

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
  END /* CCUSTO */
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE SPESTOQUE TO  SYSDBA;

