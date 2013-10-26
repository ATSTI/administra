CREATE PROCEDURE CORRIGE_CODPEDIDO
AS
declare variable codmov integer;
begin

for select codmovimento from MOVIMENTO
where CODPEDIDO is null
into :CODMOV
do begin
    update MOVIMENTO set CODPEDIDO = :CODMOV
    where CODMOVIMENTO = :CODMOV;
end
end