CREATE OR ALTER PROCEDURE CARREGA_OBS_PROD
AS
declare variable codpro integer;
declare variable obspro varchar(300);

begin
    for select CODPRODUTO, OBS from PRODUTOS
     into :codpro, :obspro
    do begin
        update MOVIMENTODETALHE set OBS = :obspro where CODPRODUTO = :codpro;
    end
 end