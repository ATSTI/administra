CREATE OR ALTER PROCEDURE REL_RCBOTOTAL (
    DATA1 Date,
    DATA2 Date,
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
    QTDE Double precision,
    PCO Double precision,
    TOTAL Double precision,
    TITULO Varchar(20),
    CNPJ Varchar(20),
    PARC Integer )
AS
DECLARE VARIABLE CODMOV INTEGER;
DECLARE VARIABLE CODMOVDET INTEGER;
DECLARE VARIABLE J INTEGER = 0;
DECLARE VARIABLE TIPOPROD CHAR(7);
DECLARE VARIABLE VR DOUBLE PRECISION;
BEGIN
    SELECT VEN.CODCLIENTE, sum(VEN.VALOR_RESTO), sum(ven.VALORRECEBIDO)
            FROM RECEBIMENTO VEN 
            inner join VENDA vd on vd.CODVENDA = ven.CODVENDA 
            WHERE VEN.DATAVENCIMENTO between :DATA1 and :DATA2
            and (VEN.codcliente = :codid) 
            GROUP BY VEN.CODCLIENTE
            into :CODCLI, :VALOR, :VR;
                select c.NOMECLIENTE, c.RAZAOSOCIAL, ec.LOGRADOURO, ec.BAIRRO, ec.CIDADE, ec.UF, ec.CEP, ec.DDD, ec.TELEFONE
                from CLIENTES c, ENDERECOCLIENTE ec
                where c.CODCLIENTE = ec.CODCLIENTE and ec.TIPOEND = 0 and c.CODCLIENTE = :codid
                into :NOMECLI, :RAZAO, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :DDD, :FONE;
                     J = 0;
                     DTAVENCIMENTO = current_date;
                     WHILE (J < N_COPIAS) do
                     begin
                        NOMECLI = NOMECLI || '-' || CAST(J AS CHAR(1));
                        SUSPEND; 
                        J = J + 1; 
                     END

END