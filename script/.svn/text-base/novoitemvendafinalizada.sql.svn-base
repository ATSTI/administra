CREATE OR ALTER TRIGGER NOVOITEMVENDAFINALIZADA FOR MOVIMENTODETALHE
before INSERT
AS

 DECLARE VARIABLE finalizado char(1);

BEGIN

 finalizado = 'n';
 select 's' from venda where codmovimento = new.codmovimento
   into :finalizado;
 if (finalizado = 's') then
 begin
   new.baixa = 1; 
 end
 
 finalizado = 'n';
 select 's' from COMPRA where codmovimento = new.codmovimento
   into :finalizado;
 if (finalizado = 's') then
 begin
   new.baixa = 0; 
 end

END