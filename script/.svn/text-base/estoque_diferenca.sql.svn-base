SET TERM ^ ;

CREATE OR ALTER PROCEDURE ESTOQUE_DIFERENCA (DTA1 Date,
    DTA2 Date,
    PROD1 Integer,
    PROD2 Integer,
    SUBGRUPO Varchar(50),
    NATUREZA Smallint,
    CCUSTO Integer,
    MARCA Varchar(50),
    LOTE Varchar(60),
    GRUPOPROC Varchar(50) )
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
    VALORESTOQUE Double precision,
    VALORVENDA Double precision,
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

BEGIN
  PROD = 0;
  INI  = 0;
  SOMA_ENTRADA = 0;
  SOMA_SAIDA   = 0;
  SALDO_INIX   = 0;
  SALDO_FIMX   = 0;  
  FOR SELECT CODPRODUTO , CODPROD, (UDF_MONTH(DATAMOVIMENTO) || '/' || UDF_YEAR(DATAMOVIMENTO)) MES_ANO, SALDOINIACUM, 
    ENTRADA, SAIDA, SALDOFIMACUM, PRECOUNIT, VALORVENDA,  CCUSTOS, LOTES
        from SPESTOQUEFILTRO(:DTA1 , :DTA2, :PROD1, :PROD2, :SUBGRUPO, :NATUREZA, :CCUSTO, :MARCA, :LOTE, :GRUPOPROC)
        into :CODPRODUTO, :CODPROD, :MESANO, :SALDOINIACUM, :SOMA_ENT, :SOMA_SAI, :SALDOFIMACUM, :PRECOUNIT, :VALORVENDA,  :CCUSTOS, :LOTES
   do begin 
     --grupo = ini;
     --ccustos      = prod;
     -- se trocou o produto imprimi 
     if ((ini > 0) and (prod <> codproduto)) then 
     begin
       SALDOFIMACUM = SALDO_FIM;
       SALDOINIACUM = SALDO_INI;
       IF (SALDO_FIMX > 0) THEN 
         SALDOFIMACUM = SALDO_FIMX;
       ENTRADA      = SOMA_ENTRADA;
       SAIDA        = SOMA_SAIDA;
       --SUBGRUPOPROD = 'IF 1';
       suspend;
       ini = 0; 
     end 
     
     if (ini = 0) then 
     begin
       SOMA_ENTRADA = 0;
       SOMA_SAIDA   = 0;
       SOMA_ENTRADA = SOMA_ENTRADA + SOMA_ENT;
       SOMA_SAIDA   = SOMA_SAIDA   + SOMA_SAI;
       SALDO_INI    = SALDOINIACUM;
       SALDO_FIM    = SALDOFIMACUM;
       --SUBGRUPOPROD = 'IF 2';
       --ccustos      = prod;
     end
     
     if (prod = codproduto) then 
     begin
       SOMA_ENTRADA = SOMA_ENTRADA + SOMA_ENT;
       SOMA_SAIDA   = SOMA_SAIDA   + SOMA_SAI;  
       SALDO_FIMX   = SALDOFIMACUM;
       --SUBGRUPOPROD = 'IF 3';  
       --ccustos      = prod;    
     end  
  

    --ENTRADA      = SOMA_ENT;
    --SAIDA        = SOMA_SAI;
    prod = codproduto;
    ini  = ini + 1;
    --suspend;
    --SUBGRUPOPROD = 'XXXX';
  end
  SALDOFIMACUM = SALDO_FIM;
  SALDOINIACUM = SALDO_INI;
  IF (SALDO_FIMX > 0) THEN 
    SALDOFIMACUM = SALDO_FIMX;
  ENTRADA      = SOMA_ENTRADA;
  SAIDA        = SOMA_SAIDA;
  --SUBGRUPOPROD = 'SAIDA';
  
  -- SALDO DA ESTOQUEMES 
  SELECT FIRST 1 em.SALDOESTOQUE
   from estoquemes em 
  where em.CODPRODUTO = :CODPRODUTO
    and em.CENTROCUSTO = :CCUSTOS 
    and UDF_MONTH(em.MESANO) || UDF_YEAR(em.MESANO) =  UDF_MONTH(:DTA2) || UDF_YEAR(:DTA2)
  order by em.MESANO DESC   
  INTO :ESTOQUE_MES;
  
  suspend;
END^

SET TERM ; ^
