set term ^ ;
CREATE OR ALTER PROCEDURE FLUXOCAIXA (
    PDTA1 Date,
    PDTA2 Date )
RETURNS (
    GRUPO Varchar(50),
    TIPO Varchar(50),
    NOMECONTA Varchar(50),
    VALOR Double precision,
    SALDO Double precision,
    dia1 Double precision,
    dia2 Double precision,
    dia3 Double precision,
    dia4 Double precision,
    dia5 Double precision,
    dia6 Double precision,
    dia7 Double precision,
    dia8 Double precision,
    dia9 Double precision,
    dia10 Double precision,
    dia11 Double precision,
    dia12 Double precision,
    dia13 Double precision,
    dia14 Double precision,
    dia15 Double precision,
    dia16 Double precision,
    dia17 Double precision,
    dia18 Double precision,
    dia19 Double precision,
    dia20 Double precision,
    dia21 Double precision,
    dia22 Double precision,
    dia23 Double precision,
    dia24 Double precision,
    dia25 Double precision,
    dia26 Double precision,
    dia27 Double precision,
    dia28 Double precision,
    dia29 Double precision,    
    dia30 Double precision,
    dia31 Double precision
 )
AS
DECLARE VARIABLE VALORC  Double precision;
DECLARE VARIABLE VALORD  Double precision;
DECLARE VARIABLE VALORTOT  Double precision = 0;
declare variable numDias smallint;
declare variable dia smallint;
declare variable formaRec char(1);
BEGIN
     dia1 = 0;
     dia2 = 0;
     dia3 = 0;
     dia4 = 0;
     dia5 = 0;
     dia6 = 0;     
     dia7 = 0;
     dia8 = 0;
     dia9 = 0;
     dia10 = 0;
     dia11 = 0;
     dia12 = 0;
     dia13 = 0;
     dia14 = 0;
     dia15 = 0;
     dia16 = 0;     
     dia17 = 0;
     dia18 = 0;
     dia19 = 0;
     dia20 = 0;
     dia21 = 0;
     dia22 = 0;
     dia23 = 0;
     dia24 = 0;
     dia25 = 0;
     dia26 = 0;
     dia27 = 0;
     dia28 = 0;
     dia29 = 0;
     dia30 = 0;
     dia31 = 0;
   numDias = UDF_DAYSPAN(:PDTA1, :PDTA2);
   -- Saldo Inicial
   select valor from SP_MOV_CAIXA(UDF_INCDAY(:PDTA1, -1), UDF_INCDAY(:PDTA1, -1), 0) where ordem = 0
   INTO :SALDO;
   NOMECONTA = 'A-Saldo Anterior';
   GRUPO = 'G1';
   TIPO = 'ENTRADAS'; 
   dia = 1;
   -- ######### crio um view mostrando ano, mes , dia, valorD, valorC e saldo
   -- dai aqui só jogo em colunas de dias ao inves de linha
   for select distinct tipo FROM FLUXOCAIXALINHA(:PDTA1, :PDTA2) order by tipo desc
   into :tipo
   do begin 
     for select distinct nomeConta FROM FLUXOCAIXALINHA(:PDTA1, :PDTA2) 
       where tipo = :tipo order by nomeconta
     into :nomeConta
     do begin 
       For select dia, SUM(VALOR)
         FROM FLUXOCAIXALINHA(:PDTA1, :PDTA2) where nomeConta = :nomeConta
         group by dia 
         
       INTO :dia, :VALORD
       do begin 
         if (dia = 1) then 
         begin
           dia1 = VALORD;
         end
         if (dia = 2) then
         begin
           dia2 = VALORD;
         end

         if (dia = 3) then 
         begin
           dia3 = VALORD;
         end

         if (dia = 4) then
           dia4 = VALORD; 
         if (dia = 5) then
           dia5 = VALORD; 
         if (dia = 6) then
           dia6 = VALORD; 
         if (dia = 7) then
           dia7 = VALORD; 
         if (dia = 8) then
           dia8 = VALORD; 
         if (dia = 9) then
           dia9 = VALORD; 
         if (dia = 10) then
           dia10 = VALORD; 
         if (dia = 11) then
           dia11 = VALORD; 
         if (dia = 12) then
           dia12 = VALORD; 
         if (dia = 13) then
           dia13 = VALORD; 
         if (dia = 14) then
           dia14 = VALORD; 
         if (dia = 15) then
           dia15 = VALORD; 
         if (dia = 16) then
           dia16 = VALORD; 
         if (dia = 17) then
           dia17 = VALORD; 
         if (dia = 18) then
           dia18 = VALORD; 
         if (dia = 19) then
           dia19 = VALORD; 
         if (dia = 20) then
           dia20 = VALORD; 
         if (dia = 21) then
           dia21 = VALORD; 
         if (dia = 22) then
           dia22 = VALORD; 
         if (dia = 23) then
           dia23 = VALORD; 
         if (dia = 24) then
           dia24 = VALORD; 
         if (dia = 25) then
           dia25 = VALORD; 
         if (dia = 26) then
           dia26 = VALORD; 
         if (dia = 27) then
           dia27 = VALORD; 
         if (dia = 28) then
           dia28 = VALORD; 
         if (dia = 29) then
           dia29 = VALORD; 
         if (dia = 30) then
           dia30 = VALORD; 
         if (dia = 31) then
           dia31 = VALORD; 
       end
     suspend;
     dia1 = 0;
     dia2 = 0;
     dia3 = 0;
     dia4 = 0;
     dia5 = 0;
     dia6 = 0;     
     dia7 = 0;
     dia8 = 0;
     dia9 = 0;
     dia10 = 0;
     dia11 = 0;
     dia12 = 0;
     dia13 = 0;
     dia14 = 0;
     dia15 = 0;
     dia16 = 0;     
     dia17 = 0;
     dia18 = 0;
     dia19 = 0;
     dia20 = 0;
     dia21 = 0;
     dia22 = 0;
     dia23 = 0;
     dia24 = 0;
     dia25 = 0;
     dia26 = 0;
     dia27 = 0;
     dia28 = 0;
     dia29 = 0;
     dia30 = 0;
     dia31 = 0;

     end -- for NomeConta
   end --for TIPO
end

