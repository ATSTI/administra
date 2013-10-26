ALTER PROCEDURE SPESTOQUEFILTRO_CORRIGE (
    DTA1 Date,
    DTA2 Date,
    PROD1 Integer,
    PROD2 Integer,
    SUBGRUPO Varchar(50),
    NATUREZA Smallint,
    CCUSTO Integer,
    MARCA Varchar(50),
    LOTE Varchar(60) )
AS
DECLARE VARIABLE COD INTEGER;
DECLARE VARIABLE CODNATU SMALLINT;
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTSAI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOINI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOFIM DOUBLE PRECISION = 0;
DECLARE VARIABLE CODPRODU INTEGER = 0;
DECLARE VARIABLE IMPRIME CHAR(1);
declare variable datanf date;
DECLARE VARIABLE TESTECOD INTEGER;
DECLARE VARIABLE TESTELOTE VARCHAR(60) = 'VAZIO';
DECLARE VARIABLE CODPROD                          VARCHAR( 20 );
DECLARE VARIABLE CODMOV                           INTEGER;
DECLARE VARIABLE TIPOMOVIMENTO                    VARCHAR( 30 );
DECLARE VARIABLE PRODUTO                          VARCHAR( 200 );
DECLARE VARIABLE GRUPO                            VARCHAR( 30 );
DECLARE VARIABLE SUBGRUPOPROD                     VARCHAR( 30 );
DECLARE VARIABLE SALDOINIACUM                     DOUBLE PRECISION;
DECLARE VARIABLE         ENTRADA                          DOUBLE PRECISION;
         DECLARE VARIABLE SAIDA                            DOUBLE PRECISION;
         DECLARE VARIABLE SALDOFIMACUM                     DOUBLE PRECISION;
         DECLARE VARIABLE PRECOUNIT                        DOUBLE PRECISION;
         DECLARE VARIABLE VALORESTOQUE                     DOUBLE PRECISION;
         DECLARE VARIABLE VALORVENDA                       DOUBLE PRECISION;
         DECLARE VARIABLE LOTES                            VARCHAR( 60 );
         DECLARE VARIABLE CCUSTOS                          INTEGER;
         DECLARE VARIABLE DTAFAB                           DATE;
         DECLARE VARIABLE DTAVCTO                          DATE;
         DECLARE VARIABLE NF                               INTEGER;
         DECLARE VARIABLE CLIFOR                           VARCHAR( 60 ); 
 DECLARE VARIABLE i                               INTEGER;

BEGIN
     i = 0;
        /*  AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')) */
        /* ENTRADA E SAIDA */
        FOR SELECT mov.datamovimento, mov.CODMOVIMENTO, natu.BAIXAMOVIMENTO, natu.DESCNATUREZA, movdet.CODPRODUTO, movdet.LOTE, movdet.DTAFAB, movdet.DTAVCTO, 
           mov.CODALMOXARIFADO, 
           prod.CODPRO, prod.PRODUTO, prod.FAMILIA, prod.CATEGORIA, prod.PRECOMEDIO,  prod.VALOR_PRAZO
         FROM MOVIMENTO mov, NATUREZAOPERACAO natu , MOVIMENTODETALHE  movdet, PRODUTOS prod
            WHERE (movdet.CODMOVIMENTO = mov.CODMOVIMENTO) AND (movdet.CODPRODUTO BETWEEN :PROD1 AND :PROD2) AND (natu.CODNATUREZA = mov.CODNATUREZA) AND ((mov.CODNATUREZA = :NATUREZA) OR (:NATUREZA = 100)) AND 
                (mov.DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2) AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                and (prod.CODPRODUTO = movdet.CODPRODUTO) AND ((prod.CATEGORIA = :SUBGRUPO) OR (:SUBGRUPO = 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA'))  
                AND ((prod.MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS CADASTRADAS NO SISTEMA')) 

                group by  prod.FAMILIA, prod.CATEGORIA, prod.CODPRO, prod.PRODUTO, movdet.CODPRODUTO, movdet.LOTE, natu.BAIXAMOVIMENTO, natu.DESCNATUREZA, mov.datamovimento, mov.CODMOVIMENTO, movdet.DTAFAB, 
                  movdet.DTAVCTO, mov.CODALMOXARIFADO, 
                  prod.PRECOMEDIO,  prod.VALOR_PRAZO

                
        INTO :Datanf, :CODMOV, :CODNATU, :TIPOMOVIMENTO, :COD, :LOTES, :DTAFAB, :DTAVCTO, :CCUSTOS, 
              :CODPROD, :PRODUTO, GRUPO, SUBGRUPOPROD, :PRECOUNIT, :VALORVENDA

        DO BEGIN
          if (i <> CODMOV) then 
          begin 
            IMPRIME = 'N';

            IMPRIME = 'S';
            ENTRA = 0;
            SAI = 0;
            TOTENTRA = 0;
            TOTSAI = 0;

            /* SALDO INICIAL DO ESTOQUE */
            /*-- Qtde Inicial ENTRADA*/
           FOR SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
                WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
                AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND mov.DATAMOVIMENTO  < :DTA1 
            INTO :ENTRA
            DO BEGIN
                if (ENTRA IS NULL) THEN
                   ENTRA = 0; 
                TOTENTRA = TOTENTRA + ENTRA;   
            END
            /*-- Qtde Inicial SAIDA*/
            FOR SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
                WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
                AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND mov.DATAMOVIMENTO  < :DTA1
            INTO :SAI
            DO BEGIN
               IF (SAI IS NULL) THEN 
                  SAI = 0;
                TOTSAI = TOTSAI + SAI;   
            END
            IF (TOTENTRA IS NULL) THEN
                TOTENTRA = 0;
            IF (TOTSAI IS NULL) THEN
                TOTSAI = 0;
            SALDOINI = TOTENTRA - TOTSAI;
            
            ENTRA = 0;
            SAI = 0;
            TOTENTRA = 0;
            TOTSAI = 0;
            IF (LOTES IS NULL) THEN
              LOTES = 'TODOS OS LOTES SISTEMA';
            IF (CODNATU = 0) THEN 
            BEGIN
               /* -- Entrada*/
                SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet
                    WHERE movdet.CODMOVIMENTO = :CODMOV AND movdet.CODPRODUTO = :COD 
                    and ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
                INTO :ENTRADA;
                IF (ENTRADA IS NULL) THEN
                    ENTRADA = 0;
                TOTENTRA = TOTENTRA + ENTRADA;
              for SELECT forn.RAZAOSOCIAL, com.NOTAFISCAL FROM COMPRA com, FORNECEDOR forn 
                WHERE com.CODFORNECEDOR = forn.CODFORNECEDOR and  com.CODMOVIMENTO = :CODMOV

              INTO :CLIFOR, :NF
             do begin
             end


            END
            -- Saída
            IF (CODNATU = 1) THEN 
            BEGIN
                SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet
                    WHERE movdet.CODMOVIMENTO = :CODMOV AND movdet.CODPRODUTO = :COD 
                    and ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
                INTO :SAIDA;
                IF (SAIDA IS NULL) THEN
                    SAIDA = 0;
                TOTSAI = TOTSAI + SAIDA;

              for SELECT cli.RAZAOSOCIAL, ven.NOTAFISCAL FROM VENDA ven, CLIENTES cli 
                WHERE ven.CODCLIENTE = cli.Codcliente and  ven.CODMOVIMENTO = :CODMOV
              INTO :CLIFOR, :NF
             do begin
             end



            END
        -- IF (CODPRODU = COD) THEN
        SALDOINIACUM = SALDOFIMACUM;
        IF (TESTELOTE <> LOTES) THEN
          SALDOINIACUM = 0;
        TESTELOTE = LOTES;

        IF (CODPRODU <> COD) THEN
            SALDOINIACUM = SALDOINI;
        ENTRADA = TOTENTRA;
        SAIDA = TOTSAI;
      /* -- IF ((SALDOINI > 0) OR (SALDOFIM > 0) OR (ENTRADA > 0) */
        SALDOFIM = SALDOINI + ENTRADA - SAIDA;
        IF (CODPRODU = COD) THEN
            SALDOFIMACUM = (SALDOINIACUM + ENTRADA - SAIDA);
        IF (CODPRODU <> COD) THEN
            SALDOFIMACUM = SALDOFIM;
        CODPRODU = COD;
        VALORESTOQUE = SALDOFIMACUM * PRECOUNIT;
        IF (IMPRIME = 'S') THEN 
        begin
          /*       IF ((CCUSTO = CCUSTOS) OR (CCUSTO = 1)) then
              if ((LOTE = LOTES) OR (LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')) then*/
          /*SUSPEND; */
          /* acerta a tabela LOTES */
          SELECT CODPRODUTO from lotes where CODPRODUTO = :COD and LOTE = :LOTES 
          INTO :TESTECOD;
          IF (UDF_ROUNDDEC(SALDOFIMACUM,3) < 0.0009) THEN
            saldofimacum = 0;
          IF (TESTECOD IS NOT NULL) THEN
            UPDATE LOTES  set ESTOQUE = UDF_ROUNDDEC(:SALDOFIMACUM,3) where CODPRODUTO = :COD and LOTE = :LOTES;
          ELSE
            INSERT INTO LOTES (CODLOTE, LOTE, CODPRODUTO, DATAFABRICACAO, DATAVENCIMENTO, ESTOQUE, PRECO)
                 VALUES (GEN_ID(GEN_LOTE, 1), :LOTES, :COD, :DTAFAB, :DTAVCTO, :SALDOFIMACUM, :PRECOUNIT);
        end
        NF = null;
        TESTECOD = null;
       end -- Fim do i <> codmov
       i = codmov;
    END

END