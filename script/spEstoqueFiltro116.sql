CREATE OR ALTER PROCEDURE SPESTOQUEFILTRO (
    DTA1 Date,
    DTA2 Date,
    PROD1 Integer,
    PROD2 Integer,
    SUBGRUPO Varchar(50),
    NATUREZA Smallint,
    CCUSTO Integer,
    MARCA Varchar(50),
    LOTE Varchar(60),
    GRUPOPROC Varchar(50) )
RETURNS (
    CODPROD Varchar(20),
    CODMOV Integer,
    DATAMOVIMENTO DATE, 
    CODPRODUTO INTEGER,
    TIPOMOVIMENTO Varchar(30),
    PRODUTO Varchar(300),
    GRUPO Varchar(30),
    SUBGRUPOPROD Varchar(30),
    SALDOINIACUM Double precision,
    ENTRADA Double precision,
    SAIDA Double precision,
    SALDOFIMACUM Double precision,
    PRECOUNIT Double precision,
    VALORESTOQUE Double precision,
    VALORVENDA Double precision,
    LOTES Varchar(60),
    CCUSTOS Integer,
    DTAFAB Date,
    DTAVCTO Date,
    NF Integer,
    CLIFOR Varchar(60),
    CODLOTE Integer,
    ANOTACOES Varchar(100),
    APLICACAO varchar(30) )
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
DECLARE VARIABLE Acumula DOUBLE PRECISION = 0;
DECLARE VARIABLE CODPRODU INTEGER = 0;
DECLARE VARIABLE IMPRIME CHAR(1);
declare variable datanf date;
BEGIN
   saida = 0;
   acumula = 0;
        -- ENTRADA E SAIDA 
        FOR SELECT CODPROD, CODMOV, TIPOMOVIMENTO, PRODUTO, GRUPO, SUBGRUPOPROD, codlote, Datanf, CODNATU, 
           COD, LOTES, DTAFAB, DTAVCTO, CCUSTOS, ANOTACOES, CODPRODUTO 
             FROM LISTASPESTOQUEFILTRO(:DTA1, :DTA2, :PROD1, :PROD2, :SUBGRUPO, :NATUREZA, :CCUSTO
            , :MARCA, :LOTE, :GRUPOPROC)
        
        order by codprod ,datanf , TIPOMOVIMENTO, codnatu desc ,codlote 
           
        INTO :CODPROD, :CODMOV, :TIPOMOVIMENTO, :PRODUTO, :GRUPO, :SUBGRUPOPROD, :codlote, :Datanf, :CODNATU, 
        :COD, :LOTES, :DTAFAB, :DTAVCTO, :CCUSTOS, :ANOTACOES, :CODPRODUTO
        DO BEGIN
        
          -- Buscando a Aplicacao do Material
          SELECT p.CLASSIFIC_FISCAL FROM PRODUTOS P WHERE p.CODPRODUTO = :COD 
            INTO :APLICACAO;
        
        
          IF (CODNATU IS NULL) THEN 
            CODNATU = 9;
            
          if ((codnatu = 0)  or (codnatu = 1)) then 
          begin 
            IMPRIME = 'N';

            ENTRA = 0;
            SAI = 0;
            TOTENTRA = 0;
            TOTSAI = 0;

            -- SALDO INICIAL DO ESTOQUE 
            -- Qtde Inicial ENTRADA
           FOR SELECT SUM(movdet.QUANTIDADE), movdet.PRECOCUSTO, 
             sum(movdet.PRECOCUSTO * movdet.QTDEESTOQUE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, COMPRA c 
                WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA and c.CODMOVIMENTO = movdet.CODMOVIMENTO 
                AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 and movdet.BAIXA is not null  AND c.DATACOMPRA  < :DTA1 
                group by movdet.PRECOCUSTO

            INTO :ENTRA, :PRECOUNIT, :VALORESTOQUE
            DO BEGIN
                TOTENTRA = TOTENTRA + ENTRA;   
            END
            -- Qtde Inicial SAIDA
            FOR SELECT SUM(movdet.QUANTIDADE), movdet.PRECOCUSTO 
                 ,sum(movdet.PRECOCUSTO * movdet.QTDEESTOQUE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu , VENDA v
                WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA  and v.CODMOVIMENTO = movdet.CODMOVIMENTO 
                AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND movdet.BAIXA is not null and  v.DATAVENDA  < :DTA1
               group by movdet.PRECOCUSTO
            INTO :SAI, :PRECOUNIT, :VALORESTOQUE
            DO BEGIN
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
               -- Entrada
               IMPRIME = 'S';               
               VALORESTOQUE = 0;
               ENTRADA = 0;
               PRECOUNIT = 0;
               VALORVENDA = 0;
               For SELECT sum(movdet.QUANTIDADE), movdet.PRECOCUSTO
                    ,sum(movdet.PRECO * movdet.QUANTIDADE), 
                    movdet.QTDEESTOQUE, mov.DATAMOVIMENTO
                   FROM MOVIMENTODETALHE movdet, MOVIMENTO mov
                    WHERE movdet.CODMOVIMENTO = mov.CODMOVIMENTO 
                      AND movdet.CODMOVIMENTO = :CODMOV 
                      AND movdet.CODPRODUTO = :COD  
                      and movdet.BAIXA is not null 
                      and ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
                    group by movdet.CODDETALHE, mov.DATAMOVIMENTO, movdet.QTDEESTOQUE, movdet.PRECOCUSTO
                    order by codDetalhe
                    
                INTO :ENTRA, :SAI, :TOTSAI, :acumula, :DATAMOVIMENTO
                do begin
                  if (acumula is null) then 
                    acumula = 0;  
                  VALORESTOQUE = ACUMULA * SAI; -- Valor do Estoque 
                  if (ENTRA IS NULL) then
                    entra = 0;
                  ENTRADA = ENTRADA + ENTRA; -- Quantidade Entrou
                  
                  if (sai is null) then 
                    sai = 0;
                  PRECOUNIT = sai; -- Preco Custo Total 

                  if (totsai is null) then 
                    totsai = 0;
                  VALORVENDA = VALORVENDA + TotSai; -- Valor total Compra
 
                end  
                ENTRA = 0;
                SAI = 0;
                TOTENTRA = 0;
                TOTSAI = 0;
                ACUMULA = 0;
                if (ENTRADA > 0) THEN 
                begin 
                  --PRECOUNIT = PRECOUNIT / ENTRADA;
                  VALORVENDA = VALORVENDA / ENTRADA;
                end 
                IF (ENTRADA IS NULL) THEN
                    ENTRADA = 0;
                TOTENTRA = TOTENTRA + ENTRADA;
              for SELECT forn.RAZAOSOCIAL, com.NOTAFISCAL FROM COMPRA com, FORNECEDOR forn 
                WHERE com.CODFORNECEDOR = forn.CODFORNECEDOR and  com.CODMOVIMENTO = :CODMOV

              INTO :CLIFOR, :NF
             do begin
             end


            END
            -- Saida
            IF (CODNATU = 1) THEN 
            BEGIN
              IMPRIME = 'S';
                VALORESTOQUE = 0;
                valorVenda = 0;
                FOR SELECT SUM(movdet.QUANTIDADE), 
                   movdet.PRECOCUSTO
                   ,sum(movdet.PRECO * movdet.QUANTIDADE),
                   movdet.QTDEESTOQUE, mov.DATAMOVIMENTO
                  FROM MOVIMENTODETALHE movdet, MOVIMENTO mov
                    WHERE movdet.CODMOVIMENTO = mov.CODMOVIMENTO
                      AND movdet.CODMOVIMENTO = :CODMOV 
                      AND movdet.CODPRODUTO = :COD  
                      and movdet.BAIXA is not null 
                      and ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
                    group by movdet.CODDETALHE, mov.DATAMOVIMENTO, movdet.QTDEESTOQUE, movdet.PRECOCUSTO order by movdet.CODDETALHE
                INTO :ENTRA, :SAI, :TOTSAI, :acumula, :DATAMOVIMENTO
                do begin
                  if (acumula is null) then 
                    acumula = 0;  
                  VALORESTOQUE = ACUMULA * SAI; -- Valor do Estoque 
                  if (ENTRA IS NULL) then
                    entra = 0;
                  SAIDA = SAIDA + ENTRA; -- Quantidade Entrou
                  
                  if (sai is null) then 
                    sai = 0;
                  PRECOUNIT = sai; -- Preco Custo Total 

                  if (totsai is null) then 
                    totsai = 0;
                  VALORVENDA = VALORVENDA + TotSai; -- Valor total Venda
                end 
                ENTRA = 0;
                SAI = 0;
                TOTENTRA = 0;
                TOTSAI = 0; 
                ACUMULA = 0;               
                if (SAIDA > 0) THEN 
                begin
                  --PRECOUNIT = PRECOUNIT / SAIDA;
                  VALORVENDA = VALORVENDA / SAIDA;
                end 
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
        IF (CODPRODU <> COD) THEN
            SALDOINIACUM = SALDOINI;
        ENTRADA = TOTENTRA;
        SAIDA = TOTSAI;
       -- IF ((SALDOINI > 0) OR (SALDOFIM > 0) OR (ENTRADA > 0) 
        SALDOFIM = SALDOINI + ENTRADA - SAIDA;
        IF (CODPRODU = COD) THEN
            SALDOFIMACUM = (SALDOINIACUM + ENTRADA - SAIDA);
        IF (CODPRODU <> COD) THEN
            SALDOFIMACUM = SALDOFIM;
        CODPRODU = COD;
        VALORESTOQUE = SALDOFIMACUM * PRECOUNIT;
        IF (IMPRIME = 'S') THEN 
        begin
          --IF ((CCUSTO = CCUSTOS) OR (CCUSTO = 1)) then
          -- if ((LOTE = LOTES) OR (LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')) then
          SUSPEND;
        end
        NF      = null;
        SAIDA   = 0;
        ENTRADA = 0; 
        CODNATU = null;
        
      end   
        
    END

END