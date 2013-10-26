CREATE OR ALTER PROCEDURE SP_DIVERGENCIA 

RETURNS 
 ( nf        integer,
   codcli    integer,
   cli       varchar(50),
   valortv   double precision,
   valortmd  double precision,
   diferenca double precision,
   cdmd      integer,
   dtvenda   date )
AS 
DECLARE VARIABLE VLRTMD double precision;
 
BEGIN
  /* write your code here */ 
  for select v.VALOR, sum(md.VALTOTAL) as preco, v.NOTAFISCAL, cli.NOMECLIENTE, cli.CODCLIENTE, v.DATAVENDA, v.CODMOVIMENTO
  from VENDA v
  inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = v.CODMOVIMENTO
  inner join CLIENTES cli on cli.CODCLIENTE = v.CODCLIENTE
  group by v.NOTAFISCAL, v.DATAVENDA, v.VALOR, cli.NOMECLIENTE, cli.CODCLIENTE, v.CODMOVIMENTO
  into :valortv, :valortmd, :nf , :cli, :codcli, :dtvenda, :cdmd
  do begin
  diferenca = :valortmd - :valortv;
  if( UDF_ROUNDDEC( :valortv, 2) <> UDF_ROUNDDEC( :valortmd, 2) ) then
  suspend;
  end

END
