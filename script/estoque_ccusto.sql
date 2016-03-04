SET TERM ^ ;

CREATE or alter PROCEDURE estoque_ccusto (
    PDTA1 Date,
    PDTA2 Date, 
    PGRUPO varchar(50),
    PCCUSTO integer
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
DECLARE VARIABLE codP integer; 
BEGIN
  /* write your code here */ 
  for select codproduto from produtos where usa is null or usa = 'S'
   into :codp 
  do begin  
     select * from  ESTOQUE_VIEW (:pdta1,:codp,:pccusto,
    'TODOS OS LOTES CADASTRADOS NO SISTEMA')
    into :CODPROD, :MESANO, :CODPRODUTO, :PRODUTO, :GRUPO, :SUBGRUPOPROD, :SALDOINIACUM, :ENTRADA, :SAIDA, :SALDOFIMACUM,
    :ESTOQUE_MES, :PRECOUNIT, :PRECOCUSTO, :VALORESTOQUE, :VALORVENDA, :PRECOCOMPRA, :PRECOVENDA, :LOTES, :CCUSTOS;
    if (not codProd is null) then
       suspend;
  end
END^

SET TERM ; ^
