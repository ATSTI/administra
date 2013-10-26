CREATE OR ALTER PROCEDURE ESTOQUE_VIEW_CUSTO (
    DTA1 date,
    PROD1 integer,
    CCUSTO integer,
    LOTE varchar(60) )
RETURNS (
    CODPROD varchar(20),
    MESANO varchar(10),
    CODPRODUTO integer,
    PRODUTO varchar(300),
    GRUPO varchar(30),
    SUBGRUPOPROD varchar(30),
    SALDOINIACUM double precision,
    ENTRADA double precision,
    SAIDA double precision,
    SALDOFIMACUM double precision,
    ESTOQUE_MES double precision,
    PRECOUNIT double precision,
    PRECOCUSTO double precision,
    VALORESTOQUE double precision,
    VALORVENDA double precision,
    PRECOCOMPRA double precision,
    PRECOVENDA double precision,
    LOTES varchar(60),
    CCUSTOS integer )
AS
DECLARE VARIABLE PROD integer;
DECLARE VARIABLE INI smallint;
DECLARE VARIABLE SOMA_ENTRADA double precision; 
DECLARE VARIABLE SOMA_SAIDA double precision;
DECLARE VARIABLE ESTOQUE_INI double precision; 
DECLARE VARIABLE ESTOQUE_X double precision;
DECLARE VARIABLE SOMA_SAI double precision;
DECLARE VARIABLE SOMA_ENT double precision;
DECLARE VARIABLE ultimoDiaMes date;
DECLARE VARIABLE MesEstoque date;
BEGIN
  -- versao 123
  PROD = 0;
  INI  = 0;
  SOMA_ENTRADA = 0;
  SOMA_SAIDA   = 0;
  ultimoDiaMes = UDF_MONTHEND(UDF_YEAR(:DTA1), UDF_MONTH(:DTA1));
  if (ultimoDiaMes > dta1) then 
    ultimoDiaMes = UDF_MONTHEND(UDF_YEAR(:DTA1), UDF_MONTH(UDF_INCMONTH(:DTA1,-1)));
  
  if (ccusto = 0) then 
    ccusto = 1;
    
  mesEstoque = dta1;  
  prod = 0;   
  for select first 1 em.SALDOESTOQUE, em.PRECOCUSTO, em.PRECOVENDA
      , em.CENTROCUSTO, em.LOTE, em.PRECOCOMPRA, em.PRECOCUSTO, em.PRECOVENDA, em.MESANO
     from ESTOQUEMES em 
    where em.CODPRODUTO = :prod1 
      and em.MESANO <= :ultimoDiaMes
      and ((em.CENTROCUSTO = :CCUSTO) or (:CCUSTO = 1))
      and ((em.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')) 
    order by em.MESANO desc 
     into :ESTOQUE_INI, :PRECOUNIT, :VALORVENDA,  :CCUSTOS, :LOTES, 
       :PRECOCOMPRA, :PRECOCUSTO, :PRECOVENDA, :MesEstoque
     do begin 
       if (prod = 0) then 
         saldoiniacum = estoque_ini;
       prod = 1;
       if (MesEstoque = dta1) then 
         ini = 1;
     end  
   --suspend;   
   if (soma_entrada is null) then 
     soma_entrada = 0;
   
   if (soma_saida is null) then 
     soma_saida = 0;

   if (estoque_ini is null) then 
     estoque_ini = 0;
        
   if (mesEstoque = dta1) then 
     mesEstoque = '01/01/01';
   --mesano = datamov; 
   if (ini = 0) then 
   begin  
     FOR SELECT CODPROD, SALDOINIACUM, ENTRADA, SAIDA,      SALDOFIMACUM, PRECOUNIT, VALORVENDA,  CCUSTOS, LOTES, 
       GRUPO, PRECOCOMPRA, PRECOVENDA, PRECOCUSTO
       from SPESTOQUEFILTRO(UDF_INCDAY(:mesEstoque,1) , :DTA1, :Prod1, :Prod1, 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA', 
       100, :CCUSTO, 'TODAS AS MARCAS CADASTRADAS NO SISTEMA', :LOTE, 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA') ep
       into :CODPROD,  :ESTOQUE_X, :SOMA_ENT, :SOMA_SAI, :SALDOFIMACUM, :PRECOUNIT, :VALORVENDA,  :CCUSTOS, :LOTES, 
       :GRUPO, :PRECOCOMPRA, :PRECOVENDA, :PRECOCUSTO
     do begin     
       if (prod = 0) then 
          saldoiniacum = ESTOQUE_X;
       prod = 1;   
       if (soma_ent is null) then 
         soma_ent = 0;
       if (soma_sai is null) then 
         soma_sai = 0;
       if (saldoiniacum is null) then 
         saldoiniacum = 0;       
       SOMA_ENTRADA = SOMA_ENTRADA + SOMA_ENT;
       SOMA_SAIDA = SOMA_SAIDA + SOMA_SAI;
     end
   end
   ENTRADA = SOMA_ENTRADA;
   SAIDA  = SOMA_SAIDA; 
   
   if (saldoiniacum is null) then 
     saldoiniacum = 0;

     SALDOFIMACUM = ENTRADA + saldoiniacum - SAIDA;   
     
   --if (saldofimacum < 0.00001) then 
   --  saldofimacum = 0;  

   if (lotes = 'TODOS OS LOTES SISTEMA') then 
      lotes = '0';

   if (lotes = '') then 
      lotes = '0';

   if (lotes is null) then 
      lotes = '0';
   
   --select ev.CUSTOMEDIO, ev.CUSTOENTRADAS from ESTOQUE_CUSTOMEDIO(UDF_INCDAY(:mesEstoque,1), :DTA1, :Prod1) ev  
   --into :precocusto, :precocompra;  
   Suspend;
   
   SOMA_ENTRADA = 0;
   SOMA_SAIDA = 0;
   
END
