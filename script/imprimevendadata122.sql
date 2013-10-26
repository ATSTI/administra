CREATE OR ALTER PROCEDURE  IMPRIMEVENDADATA( PDATA                            DATE
                                 , PDATA1                           DATE )
RETURNS ( CODPRODUTO                       INTEGER
        , DESCRICAO                        VARCHAR( 300 )
        , QUTDE                            DOUBLE PRECISION
        , VARLORUNIT                       DOUBLE PRECISION
        , VARLORTOTAL                      DOUBLE PRECISION
        , IDMOV                            INTEGER
        , VBASE                            DOUBLE PRECISION
        , VCOMISSAO                        DOUBLE PRECISION )
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
  vQUTDE = 0;
  vVARLORUNIT = 0;
  vVARLORTOTAL = 0;
  vCODPRODUTO = 0;
  
  select sum(v.COMISSAO)
  FROM VENDA v 
  where (v.datavenda between :pdata and :pdata1)   
  into :vcomissao;
  
  
  for select mov.PRECO ,mov.CODPRODUTO, Sum(mov.QUANTIDADE), mov.DESCPRODUTO, mov.VLR_BASE
  FROM VENDA v, MOVIMENTO vd, MOVIMENTODETALHE mov 
 where v.CODMOVIMENTO = vd.CODMOVIMENTO
  and vd.CODMOVIMENTO = mov.CODMOVIMENTO
  and (vd.datamovimento between :pdata and :pdata1)   
  and (vd.codnatureza = 3)
  and ((mov.status is null) or (mov.status <> 'S')) 
  and (mov.QUANTIDADE is not null)
  group by mov.CODPRODUTO, mov.PRECO, mov.DESCPRODUTO, mov.VLR_BASE
  into :VARLORUNIT, :CODPRODUTO, :QUTDE, :DESCRICAO, :vBASE
  do begin
         VARLORTOTAL = QUTDE * VARLORUNIT;
           
         suspend;
		vcomissao = 0;
    end
END
