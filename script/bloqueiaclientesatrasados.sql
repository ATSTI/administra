CREATE OR ALTER PROCEDURE BLOQUEIACLIENTES

AS declare variable COD_CLI integer;

BEGIN
    
    For select rec.CODCLIENTE
    from RECEBIMENTO rec
    inner join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE
    where rec.STATUS = '5-' and rec.DATAVENCIMENTO < CURRENT_DATE 
    and cli.BLOQUEIO is null
    into :COD_CLI
    do begin
    update CLIENTES set BLOQUEIO = 'S' where CODCLIENTE = :COD_CLI;
    end
END
