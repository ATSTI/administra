SET TERM ^ ;
CREATE OR ALTER PROCEDURE ESTOQUE_BAYER
RETURNS (
    CODPRO varchar(20),
    QTDECONTAB double precision,
    DESCRICAO varchar(300),
    FILIAL char(1),
    LOTE char(1),
    ESTOQUE double precision )
AS
DECLARE VARIABLE CODPRODUTO integer; 
DECLARE VARIABLE qntvendas integer;
DECLARE VARIABLE movnf integer;
DECLARE VARIABLE natnf integer;
DECLARE VARIABLE codnf integer;
DECLARE VARIABLE protocolo varchar(20);
DECLARE VARIABLE datamov date;

BEGIN
    lote = '-';
    filial = '1';
    for select p.CODPRODUTO, p.CODPRO, p.PRODUTO
    from PRODUTOS p
    where p.MARCA = 'BAYER'
    into :CODPRODUTO, :CODPRO, :DESCRICAO
    do begin
        select first 1 e.SALDOESTOQUE
        from ESTOQUEMES e
        order by e.MESANO desc
        into :estoque;
        
        select md.QUANTIDADE
        from MOVIMENTODETALHE md
        inner join MOVIMENTO m on m.CODMOVIMENTO = md.CODMOVIMENTO
        where md.CODPRODUTO = :CODPRODUTO and m.CODNATUREZA = 3 and md.BAIXA is null
        into :qntvendas;
        
        QTDECONTAB = :estoque - :qntvendas;
        
        suspend;
    end

END
