set term ^ ; 
ALTER PROCEDURE  PRODUTOETIQUETACOMPRA( CODMOV                           INTEGER )
RETURNS ( LOJA                             VARCHAR( 60 )
        , CODPRODUTO1                      VARCHAR( 15 )
        , PRODUTO1                         VARCHAR( 100 )
        , PRECOPROD1                       DOUBLE PRECISION
        , CODPRODUTO2                      VARCHAR( 15 )
        , PRODUTO2                         VARCHAR( 100 )
        , PRECOPROD2                       DOUBLE PRECISION
        , CODPRODUTO3                      VARCHAR( 15 )
        , PRODUTO3                         VARCHAR( 100 )
        , PRECOPROD3                       DOUBLE PRECISION
        , CODPRODUTO4                      VARCHAR( 15 )
        , PRODUTO4                         VARCHAR( 100 )
        , PRECOPROD4                       DOUBLE PRECISION
        , CODIGODEBARRA1                   VARCHAR( 20 )
        , CODIGODEBARRA2                   VARCHAR( 20 )
        , CODIGODEBARRA3                   VARCHAR( 20 )
        , CODIGODEBARRA4                   VARCHAR( 20 )
        , CATEGORIA1                       VARCHAR( 30 )
        , CATEGORIA2                       VARCHAR( 30 )
        , CATEGORIA3                       VARCHAR( 30 )
        , CATEGORIA4                       VARCHAR( 30 )
 )
AS
declare variable i integer;
declare variable j integer;
declare variable coluna integer;
declare variable n_etiqueta integer;
declare variable prod varchar(100);
declare variable codprod varchar(15);
declare variable preco double precision;
declare variable codbarra varchar(20);
declare variable categoria varchar(30);
BEGIN
  select first 1 empresa from empresa
  into :Loja;
  coluna = 1;
  J = 0;
  FOR Select p.codPro, UDF_LEFT(p.Produto,100), p.valor_prazo , movd.QUANTIDADE, 
  p.COD_BARRA , p.categoria
   from MOVIMENTO mov
   inner join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = mov.CODMOVIMENTO
   inner join Produtos p on p.CODPRODUTO = movd.CODPRODUTO
  Where ((mov.codMovimento = :codMov))
  INTO :codProd, :Prod, :preco, :N_ETIQUETA, :codbarra ,:categoria
  DO BEGIN
    I = 0;
    WHILE (:I < :N_ETIQUETA) DO
    BEGIN
      if (coluna = 4) then
      begin
        codProduto4 = codProd ;
        Produto4 = Prod;
        PrecoProd4 = preco;
        codigodebarra4 = codbarra;
        categoria4 = categoria;
        coluna = 1;
        J = 1;
        suspend;
        Produto4 = null;
        codProduto4 = null;
        Produto3 = null;
        codProduto3 = null;
        Produto2 = null;
        codProduto2 = null;
        Produto1 = null;
        codProduto1 = null;
        PrecoProd4 = null;
        PrecoProd3 = null;
        PrecoProd2 = null;
        PrecoProd1 = null;
        codigodebarra1 = null;
        codigodebarra2 = null;
        codigodebarra3 = null;
        codigodebarra4 = null;
        categoria1 = null;
        categoria2 = null;
        categoria3 = null;
        categoria4 = null;
      end

      if (coluna = 3) then
      begin
        codProduto3 = codProd ;
        Produto3 = Prod;
        PrecoProd3 = preco;
        codigodebarra3 = codbarra;
        categoria3 = categoria;
        coluna = 1;
        J = 1;
        suspend;
        Produto4 = null;
        codProduto4 = null;
        Produto3 = null;
        codProduto3 = null;
        Produto2 = null;
        codProduto2 = null;
        Produto1 = null;
        codProduto1 = null;
        PrecoProd4 = null;
        PrecoProd3 = null;
        PrecoProd2 = null;
        PrecoProd1 = null;
        codigodebarra1 = null;
        codigodebarra2 = null;
        codigodebarra3 = null;
        codigodebarra4 = null;
        categoria1 = null;
        categoria2 = null;
        categoria3 = null;
        categoria4 = null;
      end

      if (coluna = 2) then
      begin
        codProduto2 = codProd ;
        Produto2 = Prod;
        PrecoProd2 = preco;
        codigodebarra2 = codbarra;
        categoria2 = categoria;
        coluna = 3;
        J = 1;
        --suspend;
        --Produto2 = null;
        --codProduto2 = null;
      end
      if (coluna = 1) then
      begin
        IF (J = 0) then
        begin
          codProduto1 = codProd;
          Produto1 = Prod;
          PrecoProd1 = preco;
          codigodebarra1 = codbarra;
          categoria1 = categoria;
          coluna = 2;
        end
        IF (J = 1) THEN
           J = 0;
      end
      I=I+1;
    END
  END
  suspend;
        Produto4 = null;
        codProduto4 = null;
        Produto3 = null;
        codProduto3 = null;
        Produto2 = null;
        codProduto2 = null;
        Produto1 = null;
        codProduto1 = null;
        codigodebarra1 = null;
        codigodebarra2 = null;
        codigodebarra3 = null;
        codigodebarra4 = null;
        categoria1 = null;
        categoria2 = null;
        categoria3 = null;
        categoria4 = null;
END

