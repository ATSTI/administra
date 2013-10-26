SET TERM ^ ;
ALTER PROCEDURE PRODUTOETIQUETACOMPRA (
    CODMOV Integer )
RETURNS (
    LOJA Varchar(60),
    CODPRODUTO1 Varchar(15),
    PRODUTO1 Varchar(100),
    PRECOPROD1 Double precision,
    CODPRODUTO2 Varchar(15),
    PRODUTO2 Varchar(100),
    PRECOPROD2 Double precision,
    CODPRODUTO3 Varchar(15),
    PRODUTO3 Varchar(100),
    PRECOPROD3 Double precision,
    CODPRODUTO4 Varchar(15),
    PRODUTO4 Varchar(100),
    PRECOPROD4 Double precision,
    CODIGODEBARRA1 Varchar(20),
    CODIGODEBARRA2 Varchar(20),
    CODIGODEBARRA3 Varchar(20),
    CODIGODEBARRA4 Varchar(20) )
AS
declare variable i integer;
declare variable j integer;
declare variable coluna integer;
declare variable n_etiqueta integer;
declare variable prod varchar(100);
declare variable codprod varchar(15);
declare variable preco double precision;
declare variable codbarra varchar(20);
BEGIN
  select first 1 empresa from empresa 
  into :Loja;
  coluna = 1;
  J = 0;
  FOR Select prod.codPro, UDF_LEFT(prod.Produto,100), prod.valor_prazo , movd.QUANTIDADE, prod.COD_BARRA
   from MOVIMENTO mov
   inner join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = mov.CODMOVIMENTO 
   inner join Produtos prod on prod.CODPRODUTO = movd.CODPRODUTO 
  Where ((mov.codMovimento = :codMov)) 
  INTO :codProd, :Prod, :preco, :N_ETIQUETA, :codbarra
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
      end

      if (coluna = 3) then
      begin
        codProduto3 = codProd ;
        Produto3 = Prod;
        PrecoProd3 = preco;
        codigodebarra3 = codbarra;
        coluna = 4;
        J = 1;
        --suspend;
        --Produto3 = null;
        --codProduto3 = null;
      end

      if (coluna = 2) then
      begin
        codProduto2 = codProd ;
        Produto2 = Prod;
        PrecoProd2 = preco;
        codigodebarra2 = codbarra;
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
          coluna = 2;
        end
        IF (J = 1) THEN
           J = 0;
      end
      I=I+1;
    END
  END
  if (not codproduto1 is null) then 
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
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE PRODUTOETIQUETACOMPRA TO  SYSDBA;

