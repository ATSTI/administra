CREATE or ALTER PROCEDURE  IMPR_TEXTO( PVENDA                           INTEGER )
RETURNS ( CLI                              VARCHAR( 80 )
        , RAZAO                            VARCHAR( 60 )
        , ENDERECO                         VARCHAR( 60 )
        , BAIRRO                           VARCHAR( 60 )
        , CIDADE                           VARCHAR( 60 )
        , UF                               CHAR( 2 )
        , CEP                              VARCHAR( 10 )
        , DDD                              VARCHAR( 3 )
        , FONE                             VARCHAR( 12 )
        , DDD1                             VARCHAR( 3 )
        , FONE1                            VARCHAR( 12 )
        , DDD2                             VARCHAR( 3 )
        , FONE2                            VARCHAR( 12 )
        , DDD3                             VARCHAR( 3 )
        , FAX                              VARCHAR( 12 )
        , EMISSAO                          DATE
        , DTAVENCIMENTO                    DATE
        , CODPRO                           VARCHAR( 30 )
        , VALORTOTAL                       DOUBLE PRECISION
        , VALOR                            DOUBLE PRECISION
        , PCO                              DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , SERIE                            VARCHAR( 20 )
        , TITULO                           VARCHAR( 30 )
        , NOTAFISCAL                       INTEGER
        , PRODUTO                          VARCHAR( 300 )
        , QTDE                             DOUBLE PRECISION
        , PRE_UN                           DOUBLE PRECISION
        , PRE_TOT                          DOUBLE PRECISION
        , VALOR_FRETE                      DOUBLE PRECISION
        , DESCVENDA                        DOUBLE PRECISION
        , CNPJ                             VARCHAR( 20 )
        , CODMOV                           INTEGER
        , PARC                             INTEGER
        , OBS                              VARCHAR( 500 )
        , VIA_IMPR                         INTEGER
        , PRAZO                            VARCHAR( 40 )
        , NFE                              VARCHAR( 10 )
        , CODPRODUTO                       INTEGER
        , NUMERO                           VARCHAR( 5 ) )
AS
declare variable codmovdet integer;
declare variable j integer = 0;
declare variable nprod integer;
declare variable n_copias integer;
declare variable tipoprod char(7);
declare variable vr double precision;
BEGIN
    N_COPIAS = 2;
    via_impr = 1;
    FOR SELECT CAST(Vd.CODCLIENTE AS VARCHAR(4)) || '-' || CLI.NOMECLIENTE as CLI , CLI.RAZAOSOCIAL, ENDE.LOGRADOURO,ENDE.NUMERO, ENDE.BAIRRO, ENDE.CIDADE
    , ENDE.UF, ENDE.CEP, ENDE.DDD, ENDE.TELEFONE , ENDE.DDD1, ENDE.TELEFONE1 , ENDE.DDD2, ENDE.TELEFONE2, ENDE.DDD3, ENDE.FAX, VEN.EMISSAO, VEN.DATAVENCIMENTO, VEN.VALOR_RESTO, ven.VALORRECEBIDO
    , VEN.TITULO , CLI.CNPJ, vd.CODMOVIMENTO, ven.parcelas
    , COALESCE(vd.VALOR_FRETE,0) VALOR_FRETE, vd.DESCONTO as DESCVENDA, vd.SERIE, vd.NOTAFISCAL, vd.PRAZO, vd.obs ,m.NFE
    FROM RECEBIMENTO VEN 
    INNER JOIN CLIENTES CLI ON CLI.CODCLIENTE = VEN.CODCLIENTE
    inner join VENDA vd on vd.CODVENDA = ven.CODVENDA 
    inner join movimento m on m.codmovimento = vd.CODMOVIMENTO
    LEFT OUTER JOIN  ENDERECOCLIENTE ENDE ON ENDE.CODCLIENTE = CLI.CODCLIENTE
    WHERE (VEN.CODVENDA = :PVENDA)
      AND ENDE.TIPOEND = 0 
    GROUP BY Vd.CODCLIENTE, CLI.NOMECLIENTE , CLI.RAZAOSOCIAL, ENDE.LOGRADOURO,ENDE.NUMERO , ENDE.BAIRRO, ENDE.CIDADE
    , ENDE.UF, ENDE.CEP, ENDE.DDD, ENDE.TELEFONE, ENDE.DDD1, ENDE.TELEFONE1 , ENDE.DDD2, ENDE.TELEFONE2, ENDE.DDD3, ENDE.FAX, VEN.EMISSAO, VEN.DATAVENCIMENTO, VEN.VALOR_RESTO, ven.VALORRECEBIDO
    , VEN.TITULO , CLI.CNPJ, vd.CODMOVIMENTO, ven.parcelas
    , vd.VALOR_FRETE, vd.DESCONTO  , vd.SERIE, vd.NOTAFISCAL, vd.PRAZO, vd.obs ,m.NFE
    into CLI, :RAZAO, :ENDERECO ,:NUMERO, :BAIRRO, :CIDADE 
    , :UF, :CEP, :DDD, :FONE, :DDD1, :FONE1, :DDD2, :FONE2, :DDD3 , :FAX ,:EMISSAO, :DTAVENCIMENTO, :VALOR, :VR, 
    :TITULO, :CNPJ, :CODMOV, :PARC, :VALOR_FRETE, :DESCVENDA, :SERIE, :NOTAFISCAL, :PRAZO, :OBS , :NFE
    DO BEGIN
        total = 0;
        J = 0;
        WHILE (N_COPIAS > J) do
        begin
         NPROD = 0;
         PRE_TOT = 0;
         TOTAL = 0;
          
          for SELECT movd.CODDETALHE, movd.DESCPRODUTO, movd.QUANTIDADE, MOVd.VLR_BASE, (movd.QUANTIDADE * MOVd.VLR_BASE) AS TOT 
          , prod.codproduto
          FROM MOVIMENTO M, MOVIMENTODETALHE movd, PRODUTOS prod
         where m.CODMOVIMENTO = movd.CODMOVIMENTO 
           and prod.CODPRODUTO = movd.CODPRODUTO  
           and movd.CODMOVIMENTO = :CODMOV
          INTO :CODMOVDET,:PRODUTO, :QTDE, :PRE_UN, :TOTAL ,:CODPRODUTO
          DO BEGIN
            PRE_TOT = PRE_TOT + TOTAL;
            NPROD = NPROD + 1;
            SUSPEND;  
          END
          WHILE (NPROD < 10 ) do
          BEGIN
            /* imprimi linhas vazias */
            CODMOVDET = NULL;
            PRODUTO = NULL;
            CODPRODUTO = null;
            QTDE = NULL;
            PRE_UN = NULL;
            TOTAL = NULL;
            NPROD = NPROD + 1;           
            SUSPEND;          
          END
          /*SUSPEND; */
          via_impr = 2;
          QTDE = 0;
          PRE_UN = 0;
          TOTAL = 0; 
          J = J + 1; 
        END
    END
END