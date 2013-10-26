CREATE OR ALTER PROCEDURE  REL_ICMS( PDTA1                            DATE
                         , PDTA2                            DATE )
RETURNS ( CODPRODUTO                       VARCHAR( 15 )
        , PRODUTO                          VARCHAR( 200 )
        , NOTAFISCAL                       INTEGER
        , QTDEVENDA                        DOUBLE PRECISION
        , VLRUNITVENDA                     DOUBLE PRECISION
        , VLRTOTALVENDA                    DOUBLE PRECISION
        , QTDECOMPRA                       DOUBLE PRECISION
        , VLRUNITCOMPRA                    DOUBLE PRECISION
        , VLRTOTALCOMPRA                   DOUBLE PRECISION
        , ICMSCOMPRA                       DOUBLE PRECISION
        , ICMSVENDA                        DOUBLE PRECISION )
AS
DECLARE VARIABLE total double precision;
DECLARE VARIABLE totIcms double precision;
DECLARE VARIABLE totProdIcms double precision;
DECLARE VARIABLE tIcms double precision;

BEGIN
     -- ICMS Valores de Venda
    ICMSVENDA = 0;
    qtdeCompra = 0;
    vlrTotalCompra = 0;
    icmscompra = 0;
    For Select v.NOTAFISCAL, sum(n.VALOR_ICMS), m.VALTOTAL, n.VALOR_PRODUTO,
     m.QUANTIDADE  , p.CodPro, p.Produto
    from notafiscal n
    inner join venda v on n.codvenda = v.codvenda
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = v.CODMOVIMENTO
    inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODUTO 
    where v.dataVenda BETWEEN :pdta1 and :pdta2
    and (p.tipo <> 'SERV') or (p.TIPO is null)
    group by v.NOTAFISCAL, m.VALTOTAL, n.VALOR_PRODUTO, m.QUANTIDADE
     , p.CodPro, p.Produto
    into :NOTAFISCAL, :tIcms, :totProdIcms, :totIcms , :qtdeVenda
      , :codProduto, :produto
    do begin 
      icmsVenda = (totProdIcms/totIcms)*tIcms;
      vlrTotalVenda = totProdIcms;
      vlrUnitVenda = vlrTotalVenda / qtdeVenda; 
      suspend;
    end
    icmsVenda = 0;
    vlrTotalVenda = 0;
    vlrUnitVenda = 0;
    qtdeVenda = 0; 
    -- Valores de Compra
    For Select c.NOTAFISCAL, sum(m.QUANTIDADE), sum(m.VALTOTAL), sum((m.ICMS / 100 )* m.VALTOTAL)
      , p.CodPro, p.Produto
    from compra c
    inner join MOVIMENTODETALHE m on m.CODMOVIMENTO = c.CODMOVIMENTO
    inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODUTO 
    inner join MOVIMENTO mov on mov.CODMOVIMENTO = c.CODMOVIMENTO 
    where c.dataCompra BETWEEN :pdta1 and :pdta2 
    and mov.codnatureza = 4 and (p.tipo <> 'SERV') or (p.TIPO is null)
    group by c.NOTAFISCAL, p.CodPro, p.Produto
    into :NOTAFISCAL, :qtdeCompra, :vlrTotalCompra , :icmscompra , :codProduto, :produto
    do begin 
      suspend;
    end 
END
