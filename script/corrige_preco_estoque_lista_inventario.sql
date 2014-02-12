SET TERM ^ ;
CREATE OR ALTER PROCEDURE CORRIGE_PRECO_INVENTARIO(LISTA VARCHAR(30))
AS
DECLARE VARIABLE codPro				INTEGER; 
DECLARE VARIABLE codMov				INTEGER; 
DECLARE VARIABLE precoUltimaCompra 	DOUBLE PRECISION; 
declare variable dataMov Date;
BEGIN
    --#####################################
    --#####################################
    -- Muda o preco de custo e preco medio 
    -- do cadastro do produto pelo da ultima 
    --compra   
    --#####################################
    --#####################################
    /* Pegando Produto a Produto */
	For Select DISTINCT md.codProduto, m.DATAMOVIMENTO, m.CODMOVIMENTO from MOVIMENTODETALHE MD, MOVIMENTO M
	  where (M.CODMOVIMENTO = md.CODMOVIMENTO)
	    and (m.CODNATUREZA = 1)
	    and (m.OBS = :LISTA)
		into :codPro, :dataMov, :codMov
	do begin
      SELECT FIRST 1 movdet.PRECO FROM MOVIMENTODETALHE movdet, MOVIMENTO mov            
       WHERE (mov.CODMOVIMENTO = movdet.CODMOVIMENTO) 
         and (movdet.codProduto = :codPro) 
         and (movdet.baixa IS NOT NULL) 
         and (mov.CODNATUREZA = 4) 
         and (mov.DATAMOVIMENTO <= :dataMov) 
      order by mov.DATAMOVIMENTO desc
      INTO :precoUltimaCompra;
      
      if (precoUltimaCompra is null) THEN 
        precoUltimaCompra = 0;
    
      update MOVIMENTODETALHE set PRECO = :precoUltimaCompra
              where CODPRODUTO = :codPro
                and CODMOVIMENTO = :codMov;                        

    END -- Fecha o Produto 
END

