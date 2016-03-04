SET TERM ^ ;
CREAtE OR ALTER PROCEDURE ESTOQUE_CORRIGE
AS
DECLARE VARIABLE codPro 					INTEGER; 
DECLARE VARIABLE precoUltimaCompra           	DOUBLE PRECISION; 
DECLARE VARIABLE qtdeAcumulado             	DOUBLE PRECISION; 
DECLARE VARIABLE precoCusto		           	DOUBLE PRECISION; 
DECLARE VARIABLE cc 		             	integer; 
BEGIN
    --#####################################
    --#####################################
    -- o Campo vlrEstoqueAcum estÃ¡ sendo 
    -- usado para Valor do Custo da Venda
    --#####################################
    --#####################################
    cc = 51;
    select cast(d1 as integer) from parametro where PARAMETRO = 'CENTROCUSTO'
      into :cc;
       
    /* Pegando Produto a Produto */
	For Select codProduto from Produtos where usa is null 
		into :codPro
	do begin
          --exception ERRO_SP;
          
      for select coalesce(ev.PRECOCUSTO,0) PRECO_CUSTO, 
        coalesce(ev.SALDOFIMACUM,0) ESTOQUE, coalesce(ev.PRECOCOMPRA,0) PRECO_COMPRA 
        from ESTOQUE_VIEW_CUSTO(current_date, :codPro, :cc, 'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev
        into :precoCusto, :qtdeAcumulado, :precoUltimaCompra
      do begin 
        update produtos set precomedio = :precoCusto, estoqueatual = :qtdeAcumulado, VALORUNITARIOATUAL = :precoUltimaCompra where codproduto = :codPro;                  
      end  

    END -- Fecha o Produto 
END