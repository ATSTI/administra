CREATE OR ALTER PROCEDURE  REL_RCBO( CODVDA                           INTEGER
                         , CODID                            INTEGER
                         , N_COPIAS                         INTEGER
                         , STATUS                           CHAR( 2 ) )
RETURNS ( CODCLI                           INTEGER
        , NOMECLI                          VARCHAR( 60 )
        , RAZAO                            VARCHAR( 60 )
        , ENDERECO                         VARCHAR( 60 )
        , BAIRRO                           VARCHAR( 60 )
        , CIDADE                           VARCHAR( 60 )
        , UF                               CHAR( 2 )
        , CEP                              VARCHAR( 10 )
        , DDD                              VARCHAR( 3 )
        , FONE                             VARCHAR( 12 )
        , EMISSAO                          DATE
        , DTAVENCIMENTO                    DATE
        , VALOR                            DOUBLE PRECISION
        , QTDE                             DOUBLE PRECISION
        , PCO                              DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , TITULO                           VARCHAR( 20 )
        , PRODUTO                          VARCHAR( 300 )
        , PRODUTO1                         VARCHAR( 300 )
        , PRODUTO2                         VARCHAR( 300 )
        , CNPJ                             VARCHAR( 20 )
        , PARC                             INTEGER )
AS
DECLARE VARIABLE CODMOV INTEGER;
DECLARE VARIABLE CODMOVDET INTEGER;
DECLARE VARIABLE J INTEGER = 0;
DECLARE VARIABLE TIPOPROD CHAR(7);
DECLARE VARIABLE VR DOUBLE PRECISION;
BEGIN
    PRODUTO1 = '';
    PRODUTO2 = '';
    FOR SELECT 
            VEN.CODCLIENTE
            ,CLI.NOMECLIENTE
            ,CLI.RAZAOSOCIAL
            ,ENDE.LOGRADOURO
            ,ENDE.BAIRRO
            ,ENDE.CIDADE
            ,ENDE.UF
            ,ENDE.CEP
            ,ENDE.DDD
            ,ENDE.TELEFONE
            ,VEN.EMISSAO
            ,VEN.DATAVENCIMENTO
            ,VEN.VALOR_RESTO, ven.VALORRECEBIDO
            ,VEN.TITULO
            ,CLI.CNPJ
            ,vd.CODMOVIMENTO, ven.parcelas
            FROM RECEBIMENTO VEN 
            INNER JOIN CLIENTES CLI ON CLI.CODCLIENTE = VEN.CODCLIENTE
            inner join VENDA vd on vd.CODVENDA = ven.CODVENDA 
            LEFT OUTER JOIN  ENDERECOCLIENTE ENDE ON ENDE.CODCLIENTE = CLI.CODCLIENTE 
            WHERE ((VEN.CODVENDA = :CODVDA) OR (:CODVDA = 0))
            and ((CLI.codcliente = :codid)or (:codid = 9999999 )) and ((CLI.GERAAVISO <> 'N') OR (CLI.GERAAVISO IS NULL)) 
                 AND ENDE.TIPOEND = 0 AND VEN.STATUS = :STATUS  AND VEN.DP = 1 GROUP BY            
                   VEN.CODCLIENTE
                    ,CLI.NOMECLIENTE
                    ,CLI.RAZAOSOCIAL
                    ,CLI.CNPJ
                    ,ENDE.LOGRADOURO
                    ,ENDE.CIDADE
                    ,ENDE.BAIRRO
                    ,ENDE.UF
                    ,ENDE.CEP
                    ,ENDE.DDD
                    ,ENDE.TELEFONE
                    ,VEN.EMISSAO
                    ,VEN.DATAVENCIMENTO
                    ,VEN.VALOR_RESTO
                    ,VEN.TITULO, ven.PARCELAS
                    ,vd.CODMOVIMENTO,  ven.VALORRECEBIDO, ven.parcelas
            into :CODCLI, :NOMECLI, :RAZAO, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :DDD, :FONE, :EMISSAO
             , :DTAVENCIMENTO, :VALOR, :VR, :TITULO, :CNPJ, :CODMOV, :PARC
            DO BEGIN
                FOR SELECT movd.CODDETALHE, movd.DESCPRODUTO,  prod.TIPO, movd.QUANTIDADE, movd.PRECO, (movd.QUANTIDADE * movd.PRECO) AS TOTAL 
                   FROM MOVIMENTODETALHE movd, PRODUTOS prod
                   where prod.CODPRODUTO = movd.CODPRODUTO  and movd.CODMOVIMENTO = :CODMOV
                 INTO :CODMOVDET,:PRODUTO, :TIPOPROD, :QTDE, :PCO, :TOTAL
                 DO BEGIN                   
                     IF (STATUS = '7-') then
                     BEGIN
                       VALOR = VR; 
                     END   
                     IF (TIPOPROD = 'SERV')  THEN
                     BEGIN
                        for SELECT DESCRICAO FROM MOV_DETALHE_SERV WHERE CODMOVIMENTO = :CODMOVDET
                         INTO :PRODUTO
                        do begin
                        end
                     END
                     IF (PRODUTO1 = '') then
                     BEGIN
                       PRODUTO1 = PRODUTO; 
                       PRODUTO2 = '2'; 
                       PRODUTO = '';
                     end else PRODUTO2 = '';
                     IF (PRODUTO2 = '') then
                     BEGIN
                       PRODUTO2 = PRODUTO; 
                       PRODUTO = '';
                     END



                 END
                   
                     J = 0;
                     WHILE (N_COPIAS > J) do
                     begin
                        if (PRODUTO2 = '2') then
                           PRODUTO2 = '';  
                        NOMECLI = NOMECLI || CAST(J AS CHAR(1));
                        SUSPEND; 
                        J = J + 1; 
                     END
                        PRODUTO = '';
                        PRODUTO1 = '';
                        PRODUTO2 = '';

            END
END
