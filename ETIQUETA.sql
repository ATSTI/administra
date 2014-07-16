CREATE OR ALTER PROCEDURE  ETIQUETA

RETURNS ( CODPRODUTO                       INTEGER
        , QTD                              INTEGER
        , PRODUTO                          VARCHAR( 300 )
        , CODPROD                          VARCHAR( 15 )
        , LOCALIZACAO                      VARCHAR( 50 )
        , ORIGEM                           INTEGER
        , VALOR_PRAZO                      DOUBLE PRECISION
        , COD_BARRA                        VARCHAR( 20 )
        , OBS                              VARCHAR( 300 ) )
AS
declare variable i integer;
BEGIN
   for
    select
        produtos.codproduto,
        produtos.qtd,
        produtos.produto,
        produtos.codpro,
        produtos.localizacao,
        produtos.origem,
        udf_rounddec(produtos.valor_prazo,2) ,
        produtos.cod_barra ,
        produtos.obs

    from produtos
    WHERE  produtos.qtd is not null
    INTO :CODPRODUTO,
         :QTD,
         :PRODUTO,
         :CODPROD,
         :LOCALIZACAO,
         :ORIGEM,
         :VALOR_PRAZO,
         :COD_BARRA ,
         :OBS
  DO
  BEGIN
    i = 1;
    while (i <= qtd) do
    begin
      SUSPEND;
    i = i+1;
    end

  END

END

