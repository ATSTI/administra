CREATE OR ALTER PROCEDURE LIMITECOMPRA( 
    CODCLIENTE  INTEGER,
    VALOR       DOUBLE PRECISION)

RETURNS ( 
    LIMITECOMPRA    char(1))
AS

declare variable DEV double precision;
declare variable LIMITE double precision;

BEGIN 
    
    select cli.LIMITECREDITO, sum(rec.VALOR_RESTO) as total from RECEBIMENTO rec
        inner join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE
        where rec.STATUS = '5-' and cli.CODCLIENTE = :CODCLIENTE
        group by cli.LIMITECREDITO
        into :LIMITE, :DEV;
        
        LIMITE = LIMITE + 1;
        DEV = DEV + VALOR;        
        if (DEV < LIMITE ) then
        LIMITECOMPRA = 'S';
        else
        LIMITECOMPRA = 'N';

end