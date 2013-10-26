set term ^;

CREATE OR ALTER PROCEDURE  ETIQUETA
RETURNS ( CODPRODUTO                       INTEGER
        , QTD                              INTEGER
        , PRODUTO                          VARCHAR( 300 )
        , codprod                          VARCHAR( 15 )  
        , LOCALIZACAO                      VARCHAR( 50 )
        , ORIGEM                           INTEGER
        , PRECOVENDA                       DOUBLE PRECISION  
  )
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
        produtos.origem, produtos.VALOR_PRAZO  
    from produtos
    WHERE  produtos.qtd is not null
    INTO :CODPRODUTO,
         :QTD,
         :PRODUTO,
         :CODPROD,
         :LOCALIZACAO,
         :ORIGEM,
         :PRECOVENDA 
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
