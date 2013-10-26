set term  ^ ;
CREATE OR ALTER PROCEDURE ESTOQUE_VIEW (
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
DECLARE VARIABLE SOMA_ENT double precision; 
DECLARE VARIABLE SOMA_SAI double precision;
DECLARE VARIABLE SALDO_INI double precision; 
DECLARE VARIABLE SALDO_FIM double precision;
DECLARE VARIABLE SALDO_INIX double precision; 
DECLARE VARIABLE SALDO_FIMX double precision;
DECLARE variable DataMov Date;
DECLARE variable DataMovV Date;
DECLARE variable codMov Integer;
DECLARE variable codNat smallint;
BEGIN
  PROD = 0;
  INI  = 0;
  SOMA_ENTRADA = 0;
  SOMA_SAIDA   = 0;
  SALDO_INIX   = 0;
  SALDO_FIMX   = 0;
  
  -- Procuro pelo ultimo movimento do item 
  SELECT First 1 c.DATACOMPRA FROM COMPRA C,  MOVIMENTO m, MOVIMENTODETALHE md 
   WHERE C.CODMOVIMENTO = m.CODMOVIMENTO
     AND md.CODMOVIMENTO = m.CODMOVIMENTO
     AND md.CODPRODUTO  = :Prod1 
     AND md.BAIXA is not null 
     AND ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))
     AND c.DATACOMPRA <= :dta1 
   ORDER BY c.DATACOMPRA DESC 
    INTO :dataMov;
    
    
  SELECT First 1 v.DATAVENDA FROM VENDA v, MOVIMENTO m, MOVIMENTODETALHE md 
   WHERE v.CODMOVIMENTO = m.CODMOVIMENTO
     AND md.CODMOVIMENTO = m.CODMOVIMENTO
     AND md.CODPRODUTO  = :Prod1 
     AND md.BAIXA is not null 
     AND ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))
     AND v.DATAVENDA <= :dta1
   ORDER BY v.DATAVENDA DESC 
    INTO :dataMovV;

   if (dataMovV > dataMov) then 
     dataMov = dataMovV;
     
   --suspend;   
   --mesano = datamov;  
   FOR SELECT CODPROD, SALDOINIACUM,  
     ENTRADA, SAIDA, SALDOFIMACUM, PRECOUNIT, VALORVENDA,  CCUSTOS, LOTES, GRUPO, PRECOCOMPRA, PRECOVENDA, PRECOCUSTO
       from SPESTOQUEFILTRO(:dataMov , :dataMov, :Prod1, :Prod1, 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA', 
       100, :CCUSTO, 'TODAS AS MARCAS CADASTRADAS NO SISTEMA', :LOTE, 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA') ep
       into :CODPROD,  :SALDOINIACUM, :SOMA_ENT, :SOMA_SAI, :SALDOFIMACUM, :PRECOUNIT, :VALORVENDA,  :CCUSTOS, :LOTES, 
       :GRUPO, :PRECOCOMPRA, :PRECOVENDA, :PRECOCUSTO
   do begin     
   end

  
   
   Suspend;
   
   
   
END
