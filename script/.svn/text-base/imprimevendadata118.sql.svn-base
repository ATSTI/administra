SET TERM ^ ;
ALTER PROCEDURE IMPRIMEVENDADATA (
    PDATA date,
    PDATA1 date )
RETURNS (
    CODPRODUTO integer,
    DESCRICAO varchar(300),
    QUTDE double precision,
    VARLORUNIT double precision,
    VARLORTOTAL double precision,
    IDMOV integer,
    VBASE double precision )
AS
declare variable vcodvenda integer;
declare variable vcodmov integer;
declare variable vcodalm integer;
declare variable vcodproduto integer;
declare variable vdescricao varchar(300);
declare variable vqutde double precision;
declare variable vvarlorunit double precision;
declare variable vvarlortotal double precision;
declare variable somaprod double precision;
declare variable vcodpro double precision;
declare variable vcodpro1 integer;
declare variable vcodpro2 integer;
declare variable vstatus varchar(1);
declare variable i integer;
BEGIN
  /* Procedure body */
  /* Pego o Codigo do Produto Hospedagem e codigo do Produto Show para não sair no relatorio */
  vQUTDE = 0;
  vVARLORUNIT = 0;
  vVARLORTOTAL = 0;
  vCODPRODUTO = 0;
  
  for select Sum(mov.QUANTIDADE*mov.PRECO) ,mov.CODPRODUTO, Sum(mov.QUANTIDADE), mov.DESCPRODUTO, sum(mov.VLR_BASE*mov.QUANTIDADE) 
  FROM MOVIMENTODETALHE mov 
  inner join MOVIMENTO vd on vd.CODMOVIMENTO = mov.CODMOVIMENTO
  inner join VENDA ve on ve.CODMOVIMENTO = mov.CODMOVIMENTO 
 where (vd.datamovimento between :pdata and :pdata1)  
  and (vd.codnatureza = 3)
  and ((vd.status = 0)) 
  and (mov.QUANTIDADE is not null)
  --and (mov.CODPRODUTO = 26)
  group by mov.CODPRODUTO, mov.DESCPRODUTO     
  into :VARLORUNIT, :CODPRODUTO, :QUTDE, :DESCRICAO, :vBASE
  do begin
         VARLORTOTAL = VARLORUNIT;
         VARLORUNIT = VARLORUNIT / QUTDE;  
         vBASE = vBASE / QUTDE;  
         suspend;       
    end
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE IMPRIMEVENDADATA TO  SYSDBA;

