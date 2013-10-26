CREATE OR ALTER PROCEDURE FLUXO_ESTOQUE 

RETURNS (
    CODPRO varchar(60),
    DESCPRO varchar(300),
    SAI double precision,
    ENT double precision,    
    ESTOQUE double precision,
    SALDO double precision )
AS
declare variable prod integer;
BEGIN
    FOR SELECT p.CODPRODUTO, p.CODPRO, p.PRODUTO
    FROM PRODUTOS p
    into :PROD, :CODPRO, :DESCPRO
    do 
    begin    
        sai = 0;
        ent = 0;
        saldo = 0;
        select COALESCE(sum(md.QUANTIDADE), 0)
        from MOVIMENTODETALHE md
        inner join MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO
        where md.BAIXA is null and m.CODNATUREZA = 3 and md.CODPRODUTO = :PROD
        into :SAI;
    
        select COALESCE(sum(md.QUANTIDADE), 0)
        from MOVIMENTODETALHE md
        inner join MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO
        where md.BAIXA is null and m.CODNATUREZA = 4 and md.CODPRODUTO = :PROD
        into :SAI;
    
        select first 1 COALESCE(e.SALDOESTOQUE, 0) from ESTOQUEMES e
        where e.CODPRODUTO = :PROD
        order by e.MESANO desc
        into :ESTOQUE;
        SALDO = :ESTOQUE - :SAI + :ENT;
        SUSPEND;
    end

END
