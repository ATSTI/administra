CREATE or ALTER TRIGGER MOV_ESTOQUE FOR MOVIMENTODETALHE ACTIVE
BEFORE UPDATE POSITION 0
AS 
DECLARE VARIABLE tipoPreco                	VARCHAR( 20 );
DECLARE VARIABLE pmAcumulado				DOUBLE PRECISION; 
DECLARE VARIABLE pUltimaCompra				DOUBLE PRECISION; 
DECLARE VARIABLE qtdeAcumulado             	DOUBLE PRECISION; 
DECLARE VARIABLE vlrEstoque		           	DOUBLE PRECISION;
Declare variable dta                        date;
Declare variable dIni                       date;
Declare variable dFim                        date;
DECLARE VARIABLE tipoMovimento 				smallint;
declare variable estoqueNegativo            char(1);
declare variable atualizaEstoque            char(1);
declare variable tem_Mov                    char(1);
declare variable InsereEdita                char(1);  --  E para Editar e I para Inserir
DECLARE VARIABLE vlrEstoqueAcum		       	DOUBLE PRECISION;
DECLARE VARIABLE qtde       		       	DOUBLE PRECISION;
DECLARE VARIABLE preco      		       	DOUBLE PRECISION;
BEGIN 
  -- Esta Trigger Lança estoque e preço medio na MovimentoDetalhe e Produtos;

  /* Lanca na tabela MovimentoDetalhe os campos PRECOCUSTO = PRECOMEDIO, PRECOULTIMACOMPRA */
  /* , vlrESTOQUE (Custo da Venda efetuada) e qtdeEstoque = qtde do ESTOQUE */
  /* no momento da Venda ou Compra                                                   */ 
    atualizaEstoque = 'N';
    if ((old.BAIXA is null) and ((new.BAIXA = 0) OR (NEW.BAIXA = 1))) then 
    begin
        atualizaEstoque = 'S';
        InsereEdita     = 'I';
    end    

    if (((old.BAIXA = 0) or (old.BAIXA = 1)) and ((new.BAIXA = 0) OR (NEW.BAIXA = 1))) then 
    if ((new.QUANTIDADE <> old.QUANTIDADE) or (new.PRECO <> old.PRECO)) then 
    begin
        atualizaEstoque = 'S';
        InsereEdita     = 'E';
    end    


    if (((old.BAIXA = 0) or (old.BAIXA = 1)) and (new.BAIXA is null)) then 
    begin
        atualizaEstoque = 'S';
        InsereEdita     = 'D';
    end    

    pmAcumulado = 0;
    qtdeAcumulado = 0;    
    vlrEstoqueAcum = 0;   
    vlrEstoque = 0; 

    /* #####################  BAIXO ESTOQUE ##################### */

    if ((atualizaEstoque = 'S') AND (InsereEdita <> 'D')) then 
    begin 
      preco = new.PRECO;
      qtde  = new.QUANTIDADE;
      /* Pego a data que esta sendo feito o lancamento ,pois, tenho que ver o estoque   */
      /* ate a data do lancamento                                                       */
      select first 1 m.DATAMOVIMENTO, natu.BAIXAMOVIMENTO from MOVIMENTO m 
        inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = m.CODNATUREZA
        where m.CODMOVIMENTO = new.CODMOVIMENTO
      into :Dta, :tipoMovimento;  

      pmAcumulado = 0;
      qtdeAcumulado = 0;
      vlrEstoque = 0;   
 
      --Vejo o preco medio, qtdeEstoque anterior ao periodo solicitado
      SELECT first 1 movdet.QTDEESTOQUE, movdet.VLRESTOQUE, movdet.PRECOCUSTO, 
        movdet.precoultimacompra 
        FROM MOVIMENTODETALHE movdet, MOVIMENTO mov            
        inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA  
        WHERE (mov.CODMOVIMENTO = movdet.CODMOVIMENTO) and (mov.CODMOVIMENTO <> new.CODMOVIMENTO)
          and (mov.datamovimento <= :dta) 
          and (movdet.codProduto = new.CODPRODUTO) 
          and (movdet.baixa IS NOT NULL) 
        order by mov.DATAMOVIMENTO desc, movdet.CODDETALHE desc, natu.BAIXAMOVIMENTO, mov.CODMOVIMENTO
        INTO :qtdeAcumulado, :vlrEstoqueAcum, :pmAcumulado, :pUltimaCompra;

      if (qtdeAcumulado is null) then
        qtdeAcumulado = 0;
 
      if (qtdeAcumulado < 0) then 
        estoqueNegativo = 'S';

      if (vlrEstoqueAcum is null) then
        vlrEstoqueAcum = 0;

      if (pmAcumulado is null) then
        pmAcumulado = 0;

      if (tipoMovimento = 0) then     
      begin
        -- Vou deixar usar o estoque negativo pois esta afetando o estoque atual.
        --if (qtdeAcumulado < 0) then
        --  qtdeAcumulado = 0;
        vlrEstoque = qtdeAcumulado * pmAcumulado;
        qtdeAcumulado = qtdeAcumulado + qtde; 
      end -- SAIDA
      else begin 
        qtdeAcumulado = qtdeAcumulado - qtde; 		
        vlrEstoque = (pmAcumulado * qtde);	
      end

      --Calculando o Preco Medio
      -- Vou deixar usar o estoque negativo pois esta afetando o estoque atual.
      --if (vlrEstoqueAcum < 0) then 
      --  vlrEstoqueAcum = 0;
      if (tipoMovimento = 0) then
      begin 
        pUltimaCompra = new.PRECO;
        -- Preco Medio
        IF ((qtdeAcumulado > 0) AND (new.PRECO > 0)) THEN 
        begin  
          vlrEstoqueAcum = 0;--vlrEstoqueAcum + (pm * qtde); --Na Compra esse valor = 0
          if (estoqueNegativo = 'S') then 
            pmAcumulado = new.preco;
          else  
            pmAcumulado = ((vlrEstoque + (qtde * preco))/(qtdeAcumulado));
        end
        else begin 
          if (estoqueNegativo = 'S') then 
          begin 
            if (preco = 0) then -- entrada por Mov. Materiais
            begin 
              --new.PRECO = pmAcumulado;
            end 
            else begin
              pmAcumulado = preco;
              vlrEstoqueAcum = 0;
            end 
          end 
          else begin -- quande apenas entrada o pm = 0
            --new.PRECO = pmAcumulado;
          end 
        end
      end 
      else begin
        -- E Venda entao o mantem o PM.                   
        vlrEstoqueAcum = (pmAcumulado * qtde); -- Lanca o Custo da Venda 
      end
      new.PRECOCUSTO = pmAcumulado;
      new.VLRESTOQUE = vlrEstoqueAcum; -- Custo da Venda;
      new.QTDEESTOQUE = :qtdeAcumulado;
      -- Grava o ultimo Preco de Compra
      new.PRECOULTIMACOMPRA = :pUltimaCompra;          
       
      -- E SAIDA 
      if (new.BAIXA = 1) then 
      begin 
        update PRODUTOS set   
          ESTOQUEATUAL = ESTOQUEATUAL - :qtdeAcumulado, precoMedio = :pmAcumulado 
          where CODPRODUTO = NEW.CODPRODUTO;
      end 
        
      -- E ENTRADA
      if (new.BAIXA = 0) then 
      begin
        update PRODUTOS set
          PRECOMEDIO            = :PmAcumulado,  
          ESTOQUEATUAL          = :QtdeAcumulado,
          VALORUNITARIOANTERIOR = ValorUnitarioAtual,
          VALORUNITARIOATUAL    = new.PRECO, 
          DATAULTIMACOMPRA      = (SELECT DATAMOVIMENTO FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO) 
          where CODPRODUTO = NEW.CODPRODUTO;
      end

      -- se houver um lancamento com data maior ou igual a este , entao tem que executar o corrige ESTOQUE
      tem_Mov = 'N';
      SELECT FIRST 1 'S' FROM MOVIMENTO m , MOVIMENTODETALHE md  
        WHERE md.CODMOVIMENTO = m.CODMOVIMENTO and m.CODMOVIMENTO > new.CODMOVIMENTO and md.BAIXA is not NULL
        into :tem_Mov;
                
      if (tem_Mov = 'S') THEN
      begin 
        -- Data do movimento 
        select min(m.DATAMOVIMENTO) from MOVIMENTO m where m.CODMOVIMENTO > new.CODMOVIMENTO
          into :DIni;
        select max(m.DATAMOVIMENTO) from MOVIMENTO m where m.CODMOVIMENTO > new.CODMOVIMENTO
          into :DFim;
                    
        EXECUTE PROCEDURE CORRIGEESTOQUE(new.codproduto, new.codproduto, :DIni-10, :DFim, 'Z'); 
      end           
    end
    
    if ((atualizaEstoque = 'S') AND (InsereEdita = 'D')) then -- Exclui o lancamento
    begin 
      EXECUTE PROCEDURE CORRIGEESTOQUE(new.codproduto, new.codproduto, :DIni-10, :DFim, 'Z'); 
    end 
    /* ##################### FIM NOVO LANCAMENTO ##################### */
END