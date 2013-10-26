SET TERM ^ ;
CREATE OR ALTER PROCEDURE CALC_ESTOQUE (
    DATAINI Date,
    DATAFIM Date )
RETURNS (
    CODPRO Integer,
    DESCPRO Varchar(300),
    QNT Double precision,
    ESTOQUE Double precision,
    SALDO Double precision )
AS

BEGIN
    FOR SELECT md.CODPRODUTO, SUM(md.QUANTIDADE), md.DESCPRODUTO
    FROM MOVIMENTODETALHE md 
    INNER JOIN MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO
    where md.BAIXA is null and m.CODNATUREZA = 3 and m.DATAMOVIMENTO BETWEEN :DATAINI and :DATAFIM
    group by md.CODPRODUTO, md.DESCPRODUTO
    into :CODPRO, :QNT, :DESCPRO
    do begin    
    select sum(p.SALDOFIM) from SPESTOQUEPRODUTO(:DATAINI
                                 , :DATAFIM
                                 , :CODPRO
                                 , :CODPRO
                                 , 'TODOS OS GRUPOS CADASTRADOS'
                                 , 'TODOS SUBGRUPOS DO CADASTRO'
                                 , 'TODAS AS MARCAS CADASTRADAS'
                                 , 0) p
        into :ESTOQUE;
  --      select p.ESTOQUEATUAL from PRODUTOS p where p.CODPRO = :CODPRO
    --    INTO :ESTOQUE;
        SALDO = :ESTOQUE - :QNT;
        SUSPEND;
    end

END

