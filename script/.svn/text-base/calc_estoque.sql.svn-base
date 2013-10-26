CREATE OR ALTER PROCEDURE CALC_ESTOQUE (
    DATAINI Date,
    DATAFIM Date )
RETURNS (
    CODPRO Varchar(60),
    DESCPRO Varchar(300),
    QNT Double precision,
    ESTOQUE Double precision,
    SALDO Double precision )
AS
declare variable prod integer;
BEGIN
    FOR SELECT md.CODPRODUTO, p.CODPRO, SUM(md.QUANTIDADE), p.PRODUTO
    FROM MOVIMENTODETALHE md 
    INNER JOIN MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO
    INNER JOIN PRODUTOS p on md.CODPRODUTO = p.CODPRODUTO
    where md.BAIXA is null and m.CODNATUREZA = 3 and m.DATAMOVIMENTO BETWEEN :DATAINI and :DATAFIM
    group by md.CODPRODUTO, p.CODPRO, p.PRODUTO
    into :PROD, :CODPRO, :QNT, :DESCPRO
    do begin    
    select sum(p.SALDOFIM) from SPESTOQUEPRODUTO(:DATAINI
                                 , CURRENT_DATE
                                 , :PROD
                                 , :PROD
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