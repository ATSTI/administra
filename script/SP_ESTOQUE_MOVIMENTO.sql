set term ^;
CREATE OR ALTER PROCEDURE SP_ESTOQUE_MOVIMENTO (
    DTA1 date,
    DTA2 date,
    MARC integer )
RETURNS (
    CODPRO varchar(20),
    CODPRODUTO integer,
    PRODUTO varchar(300),
    EST_ATUAL double precision,
    ENTRADA double precision,
    SAIDA double precision,
    PRECOMEDIO double precision,
    UN char(2),
    MARCA varchar(50),
    CENTRORESULTADO VARCHAR(100) )
AS
BEGIN
  select nome from plano  where codigo = :marc
  into :CENTRORESULTADO;
    FOR SELECT prod.CODPRODUTO, prod.PRODUTO, prod.ESTOQUEATUAL, prod.PRECOMEDIO, 
    prod.CODPRO, prod.UNIDADEMEDIDA, prod.MARCA
    FROM PRODUTOS prod 
    INTO :CODPRODUTO, :PRODUTO, :EST_ATUAL , :PRECOMEDIO, :CODPRO, :UN, :MARCA
    DO BEGIN
        ENTRADA = 0;
        SAIDA = 0;
        EST_ATUAL = 0;
        select first 1 (coalesce(em.QTDECOMPRA,0) + coalesce(em.QTDEENTRADA,0)), (coalesce(em.QTDEVENDA,0) + coalesce(em.QTDESAIDA,0)), em.SALDOESTOQUE from ESTOQUEMES em 
        where em.CODPRODUTO = :CODPRODUTO and em.CENTROCUSTO = :MARC
        order by em.MESANO desc
        into :ENTRADA, :SAIDA, :EST_ATUAL;
        
        SUSPEND;
    END

END
