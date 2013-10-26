create or ALTER PROCEDURE IMPRIME_VENDA (
    CODVDA Integer,
    CODID Integer,
    N_COPIAS Integer )
RETURNS (
    CODCLI Integer,
    NOMECLI Varchar(60),
    RAZAO Varchar(60),
    ENDERECO Varchar(60),
    BAIRRO Varchar(60),
    CIDADE Varchar(60),
    UF Char(2),
    CEP Varchar(10),
    DDD Varchar(3),
    FONE Varchar(12),
    EMISSAO Date,
    DTAVENCIMENTO Date,
    VALOR Double precision,
    PCO Double precision,
    TOTAL Double precision,
    TITULO Varchar(20),
    PRODUTO Varchar(300),
    QTDE Double precision,
    PRE_UN Double precision,
    PRE_TOT Double precision,
    PRODUTO1 Varchar(300),
    QTDE1 Integer,
    PRE_UN1 Double precision,
    PRE_TOT1 Double precision,
    PRODUTO2 Varchar(300),
    QTDE2 Integer,
    PRE_UN2 Double precision,
    PRE_TOT2 Double precision,
    CNPJ Varchar(20),
    CODMOV Integer,
    PARC Integer )
AS
DECLARE VARIABLE CODMOVDET INTEGER;
DECLARE VARIABLE J INTEGER = 0;
DECLARE VARIABLE NPROD INTEGER;
DECLARE VARIABLE TIPOPROD CHAR(7);
DECLARE VARIABLE VR DOUBLE PRECISION;
BEGIN
    FOR SELECT VEN.CODCLIENTE, CLI.NOMECLIENTE, CLI.RAZAOSOCIAL, ENDE.LOGRADOURO, ENDE.BAIRRO, ENDE.CIDADE, ENDE.UF, ENDE.CEP, ENDE.DDD,
    ENDE.TELEFONE, VEN.EMISSAO, VEN.DATAVENCIMENTO, VEN.VALOR_RESTO, ven.VALORRECEBIDO, VEN.TITULO, CLI.CNPJ, vd.CODMOVIMENTO, ven.parcelas
    FROM RECEBIMENTO VEN 
    INNER JOIN CLIENTES CLI ON CLI.CODCLIENTE = VEN.CODCLIENTE
    inner join VENDA vd on vd.CODVENDA = ven.CODVENDA 
    LEFT OUTER JOIN  ENDERECOCLIENTE ENDE ON ENDE.CODCLIENTE = CLI.CODCLIENTE 
    WHERE ((VEN.CODVENDA = :CODVDA) OR (:CODVDA = 0))
    and ((CLI.codcliente = :codid)or (:codid = 9999999 )) AND ENDE.TIPOEND = 0 
    GROUP BY VEN.CODCLIENTE, CLI.NOMECLIENTE, CLI.RAZAOSOCIAL, CLI.CNPJ, ENDE.LOGRADOURO, ENDE.CIDADE, ENDE.BAIRRO, ENDE.UF, ENDE.CEP
    ,ENDE.DDD, ENDE.TELEFONE, VEN.EMISSAO, VEN.DATAVENCIMENTO, VEN.VALOR_RESTO, VEN.TITULO, ven.PARCELAS, vd.CODMOVIMENTO, 
    ven.VALORRECEBIDO, ven.parcelas
    into :CODCLI, :NOMECLI, :RAZAO, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :DDD, :FONE, :EMISSAO, :DTAVENCIMENTO, :VALOR, :VR, 
    :TITULO, :CNPJ, :CODMOV, :PARC
    DO BEGIN
        total = 0;
    --VALOR = VALOR + VR;
        J = 0;
        WHILE (N_COPIAS > J) do
        begin
         NPROD = 0;
         PRE_TOT = 0;
         TOTAL = 0;
          NOMECLI = NOMECLI || CAST(J AS CHAR(1));
          for SELECT movd.CODDETALHE, movd.DESCPRODUTO, movd.QUANTIDADE, movd.PRECO, (movd.QUANTIDADE * movd.PRECO) AS TOT 
          FROM MOVIMENTODETALHE movd, PRODUTOS prod
          where prod.CODPRODUTO = movd.CODPRODUTO  and movd.CODMOVIMENTO = :CODMOV
          INTO :CODMOVDET,:PRODUTO, :QTDE, :PRE_UN, :TOTAL
          DO BEGIN
            PRE_TOT = PRE_TOT + TOTAL;
            NPROD = NPROD + 1;
            SUSPEND;  
          END
          WHILE (NPROD < 14 ) do
          BEGIN
            CODMOVDET = NULL;
            PRODUTO = NULL;
            QTDE = NULL;
            PRE_UN = NULL;
            TOTAL = NULL;
            NPROD = NPROD + 1;
            SUSPEND;
          END
          --SUSPEND;
          
          QTDE = 0;
          PRE_UN = 0;
          TOTAL = 0; 
          J = J + 1; 
        END
    END
END