SET TERM ^ ;

CREATE OR ALTER PROCEDURE ESTOQUE_VIEW (DTA1 Date,
    PROD1 Integer,
    CCUSTO Integer,
    LOTE Varchar(60)
     )
RETURNS 
(
    CODPROD Varchar(20),
    MESANO VARCHAR(10), 
    CODPRODUTO INTEGER,
    PRODUTO Varchar(300),
    GRUPO Varchar(30),
    SUBGRUPOPROD Varchar(30),
    SALDOINIACUM Double precision,
    ENTRADA Double precision,
    SAIDA Double precision,
    SALDOFIMACUM Double precision,
    ESTOQUE_MES Double precision,
    PRECOUNIT Double precision,
    PRECOCUSTO Double precision,
    VALORESTOQUE Double precision,
    VALORVENDA Double precision,
    PRECOCOMPRA Double precision,
    PRECOVENDA Double precision,
    LOTES Varchar(60),
    CCUSTOS Integer
)
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
     AND ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 0))
     AND c.DATACOMPRA <= :dta1 
   ORDER BY c.DATACOMPRA DESC 
    INTO :dataMov;
    
    
  SELECT First 1 v.DATAVENDA FROM VENDA v, MOVIMENTO m, MOVIMENTODETALHE md 
   WHERE v.CODMOVIMENTO = m.CODMOVIMENTO
     AND md.CODMOVIMENTO = m.CODMOVIMENTO
     AND md.CODPRODUTO  = :Prod1 
     AND md.BAIXA is not null 
     AND ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 0))
     AND v.DATAVENDA <= :dta1
   ORDER BY v.DATAVENDA DESC 
    INTO :dataMovV;

   if (dataMovV > dataMov) then 
     dataMov = dataMovV;
   --suspend;   
   --mesano = datamov;  
   FOR SELECT CODPROD, SALDOINIACUM,  
     ENTRADA, SAIDA, SALDOFIMACUM, PRECOUNIT, VALORVENDA,  CCUSTOS, LOTES, GRUPO, PRECOCOMPRA, PRECOVENDA, PRECOCUSTO
       from SPESTOQUEFILTRO(:DataMov , :DataMov, :Prod1, :Prod1, 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA', 
       100, :CCUSTO, 'TODAS AS MARCAS CADASTRADAS NO SISTEMA', :LOTE, 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA') ep
       into :CODPROD,  :SALDOINIACUM, :SOMA_ENT, :SOMA_SAI, :SALDOFIMACUM, :PRECOUNIT, :VALORVENDA,  :CCUSTOS, :LOTES, 
       :GRUPO, :PRECOCOMPRA, :PRECOVENDA, :PRECOCUSTO
   do begin     
   end
   Suspend;
END