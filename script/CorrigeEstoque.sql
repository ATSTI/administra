SET TERM ^ ;
ALTER PROCEDURE CORRIGEESTOQUE (
    CODPROD Integer,
    CODPROD1 Integer,
    DTINI Date,
    DTFIM Date,
    INICIOPRECONOPERIODO Char(1) )
AS
DECLARE VARIABLE codPro 					INTEGER; 
DECLARE VARIABLE tipoMovimento 				smallint; 
DECLARE VARIABLE tipoLancamento 			smallint; 
DECLARE VARIABLE tipoPreco                	VARCHAR( 20 ); 
DECLARE VARIABLE pmAcumulado				DOUBLE PRECISION; 
DECLARE VARIABLE pm	                    	DOUBLE PRECISION; 
DECLARE VARIABLE precoUltimaCompra           	DOUBLE PRECISION; 
DECLARE VARIABLE qtdeAcumulado             	DOUBLE PRECISION; 
DECLARE VARIABLE qtde		             	DOUBLE PRECISION; 
DECLARE VARIABLE precoCusto		           	DOUBLE PRECISION; 
DECLARE VARIABLE codDet		             	integer; 
DECLARE VARIABLE codDetAnt 					INTEGER; 
DECLARE VARIABLE vlrEstoque		           	DOUBLE PRECISION; 
DECLARE VARIABLE vlrEstoqueAcum		       	DOUBLE PRECISION; 
declare variable estoqueNegativo char(1);
BEGIN
    --#####################################
    --#####################################
    -- o Campo vlrEstoqueAcum estÃ¡ sendo 
    -- usado para Valor do Custo da Venda
    --#####################################
    --#####################################
    pmAcumulado = 0;
    qtdeAcumulado = 0;
    vlrEstoque = 0;   
	/* Verificando que tipo de Preco e usado pelo Cliente  (Preco Medio ou o ultimo Preco no calculo do estoque)*/ 
	SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
	INTO :tipoPreco;     
    /* Pegando Produto a Produto */
	For Select codProduto from Produtos where  codProduto between :codProd and :codProd1
		into :codPro
	do begin
          --exception ERRO_SP;
          pmAcumulado = 0;
          qtdeAcumulado = 0;    
          vlrEstoqueAcum = 0;   
          pm = 0;
          qtde = 0;
          vlrEstoque = 0; 
          codDetAnt = null;
    --Vejo o preco medio, qtdeEstoque e VlrEstoque anterior ao periodo solicitado
    -- FaÃ§o um For, pois preciso do Ãºltimo lanÃ§amento (no Mara tenho problema como CodMovimento e CodDetalhe
    SELECT FIRST 1 CODDETALHE FROM MOVIMENTODETALHE movdet, MOVIMENTO mov            
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA  
       WHERE (mov.CODMOVIMENTO = movdet.CODMOVIMENTO) 
         and (mov.datamovimento < :dtIni) 
         and (movdet.codProduto = :codPro) 
         and (movdet.baixa IS NOT NULL) 
         and (natu.BAIXAMOVIMENTO is not null) 
      order by mov.DATAMOVIMENTO desc , mov.CODMOVIMENTO desc, natu.BAIXAMOVIMENTO, natu.DESCNATUREZA
    INTO :codDetAnt;
      -- Este For Ã© apenas para pegar o Ãºltimo valor, pois no Mara, 
      -- na importaÃ§Ã£o o codMovimento ficou com um nÃºmero muito alto...
    
    SELECT movdet.QTDEESTOQUE, movdet.VLRESTOQUE, movdet.PRECOCUSTO , movdet.PRECOULTIMACOMPRA
       FROM MOVIMENTODETALHE movdet
       WHERE movdet.CODDETALHE = :codDetAnt             
    INTO :qtdeAcumulado, :vlrEstoqueAcum,:pmAcumulado, :precoUltimaCompra;
         if (qtdeAcumulado is null) then
           qtdeAcumulado = 0;
         
         if (qtdeAcumulado < 0) then 
           estoqueNegativo = 'S';

         if (vlrEstoqueAcum is null) then
           vlrEstoqueAcum = 0;

         if (pmAcumulado is null) then
           pmAcumulado = 0;

	   /* Atualizando Estoque e Preco Medio */
       FOR SELECT movdet.QUANTIDADE, movdet.PRECO, natu.BAIXAMOVIMENTO, 
           mov.codNatureza, movdet.codDetalhe 
           FROM MOVIMENTO mov
           inner join MOVIMENTODETALHE movdet on mov.CODMOVIMENTO = movdet.CODMOVIMENTO
           inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA
             WHERE (mov.datamovimento between :dtIni and :dtFim) 
               and (movdet.codProduto = :codPro)  
               and (movdet.baixa IS NOT NULL)
               and (natu.BAIXAMOVIMENTO is not null)
              order by mov.DATAMOVIMENTO, mov.CODMOVIMENTO, natu.BAIXAMOVIMENTO, mov.codNatureza desc, movdet.CODDETALHE
         INTO :qtde, :pm, :tipoMovimento, :tipoLancamento, :codDet
       DO BEGIN            
            if (pm is null) then
              pm = 0;
            if (qtde is null) then
              qtde = 0;

            -- Calculando a quantidade
            if (tipoMovimento = 0) then
            begin
              -- Vou deixar usar o estoque negativo pois estÃ¡ afetando o estoque atual.
              --if (qtdeAcumulado < 0) then
              --  qtdeAcumulado = 0;
              vlrEstoque = qtdeAcumulado * pmAcumulado;
              qtdeAcumulado = qtdeAcumulado + qtde; 
            end -- SAIDA
	        else begin 
              qtdeAcumulado = qtdeAcumulado - qtde; 		
              vlrEstoqueAcum = (pmAcumulado * qtde);	
              post_event 'PASSOU_AQUI';
            end

	        --Calculando o Preco Medio
            -- Vou deixar usar o estoque negativo pois estÃ¡ afetando o estoque atual.
            --if (vlrEstoqueAcum < 0) then 
            --  vlrEstoqueAcum = 0;
	        if (tipoMovimento = 0) then
            begin 
              precoUltimaCompra = pm; 
              IF (tipoPreco = 'PRECOMEDIO') THEN
              begin	   
                -- Preco Medio
	            IF ((qtdeAcumulado > 0) AND (pm > 0)) THEN 
		        begin  
                  vlrEstoqueAcum = 0;--vlrEstoqueAcum + (pm * qtde); --Na Compra esse valor = 0
                  if (estoqueNegativo = 'S') then 
                    pmAcumulado = pm;
                  else  
                    pmAcumulado = ((vlrEstoque + (qtde * pm))/(qtdeAcumulado));
                end
                else begin 
                   if (estoqueNegativo = 'S') then 
                   begin 
                     if (pm = 0) then -- entrada por Mov. Materiais
                     begin 
                       pm = pmAcumulado;
                     end 
                     else begin
                       pmAcumulado = pm;
                       vlrEstoqueAcum = 0;
                     end 
                   end 
                   else begin -- quando Ã© apenas entrada o pm = 0
                     pm = pmAcumulado;
                   end 
                end
              end
              else 
              begin
                -- Ultimo Preco                   
                pmAcumulado = pm; 
                vlrEstoqueAcum = 0; --vlrEstoqueAcum + (pm * qtde);
                --EXCEPTION ERRO_SP;
              END
            end
            else 
            begin
              -- E Venda entaoo mantem o PM.                   
              pm = pmAcumulado; 
              vlrEstoqueAcum = (pmAcumulado * qtde);
            END
           
            -- Vou deixar usar o estoque negativo pois estÃ¡ afetando o estoque atual.
            --if (qtdeAcumulado < 0) then
            --  qtdeAcumulado = 0;
            -- Caso nÃ£o tenha preÃ§o de custo no perÃ­odo especificado, busca o Ãºltimo preÃ§o q existe
            if (vlrEstoqueAcum < 0) then  
               vlrEstoqueAcum = 0;
            
            estoqueNegativo = 'N';

            if (qtdeAcumulado < 0) then 
              estoqueNegativo = 'S';

            update MOVIMENTODETALHE set PRECOCUSTO = :pmAcumulado
              ,vlrEstoque = :vlrEstoqueAcum
              ,qtdeEstoque = :qtdeAcumulado
              ,precoUltimaCompra = :precoUltimaCompra 
              where CODDETALHE = :codDet;                        
            vlrEstoque = vlrEstoqueAcum;
            if (qtdeAcumulado = 0) THEN
            begin
              vlrEstoqueAcum = 0;
              pmAcumulado = 0;
            end 
            update produtos set precomedio = :pmAcumulado, estoqueatual = :qtdeAcumulado where codproduto = :codPro;            
       end	
          --  EXCEPTION ERRO_SP;            

    END -- Fecha o Produto 
END^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE CORRIGEESTOQUE TO  SYSDBA;

