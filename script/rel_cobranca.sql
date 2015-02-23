CREATE OR ALTER PROCEDURE REL_COBRANCA (
    CODID integer,
    N_COPIAS integer,
    DTA1 date,
    DTA2 date
    )
RETURNS (
    CODCLI Integer,
    NOMECLI Varchar(60),
    RAZAO Varchar(60),
    titulo Varchar(30),
    DTAVENCIMENTO Date,
    TOTALDEVE Double precision, 
    codMovimento integer,
    cnpj varchar(30),
    datavenda date, 
    quantidade double precision,
    preco double precision, 
    produto varchar(300),
    codpro varchar(30)
    )
AS
DECLARE VARIABLE CODMOV INTEGER;
DECLARE VARIABLE CODMOVDET INTEGER;
DECLARE VARIABLE J INTEGER = 0;
DECLARE VARIABLE TIPOPROD CHAR(7);
DECLARE VARIABLE VR DOUBLE PRECISION;

BEGIN

    FOR SELECT rec.CODCLIENTE, SUM(rec.VALOR_RESTO), rec.TITULO, ven.DATAVENDA 
        sum(md.quantidade), sum(md.VLR_BASE*md.QUANTIDADE), p.produto, p.codpro
        FROM RECEBIMENTO rec 
        inner join VENDA ven on rec.CODVENDA = ven.CODVENDA
        inner join movimentodetalhe md on md.CODMOVIMENTO = ven.CODMOVIMENTO 
        inner join produtos p on p.CODPRODUTO = md.CODPRODUTO
        WHERE ((rec.codcliente = :codid)or (:codid = 9999999 )) and rec.EMISSAO between :DTA1 and :DTA2 and rec.DP = 1
        GROUP BY rec.CODCLIENTE, ven.CODMOVIMENTO, rec.TITULO, ven.DATAVENDA , p.produto, p.codpro
        into :codcli, :TOTALDEVE, :titulo, :datavenda, :quantidade, :valor, :produto, :codpro   
        DO BEGIN
                select c.RAZAOSOCIAL, c.NOMECLIENTE, c.CNPJ from CLIENTES c where c.CODCLIENTE = :codcli
                into :RAZAO, :NOMECLI, :cnpj;
               
                if (UDF_DAY(current_date) > 10 ) then
                begin
                    DTAVENCIMENTO = UDF_INCMONTH(current_date, 1);
                end
                else
                    DTAVENCIMENTO = current_date;
                J = 0;
                WHILE (N_COPIAS > J) do
                begin
                    NOMECLI = NOMECLI || CAST(J AS CHAR(1));
                    SUSPEND; 
                    J = J + 1; 
                END
        END
END