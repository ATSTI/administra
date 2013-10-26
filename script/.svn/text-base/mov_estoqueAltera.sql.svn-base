CREATE OR ALTER TRIGGER mov_EstoqueAltera FOR MOVIMENTODETALHE
ACTIVE BEFORE UPDATE POSITION 0
AS 
DECLARE VARIABLE tipoPreco                	VARCHAR( 20 );
DECLARE VARIABLE pmAcumulado				DOUBLE PRECISION; 
DECLARE VARIABLE qtdeAcumulado             	DOUBLE PRECISION; 
DECLARE VARIABLE vlrEstoque		           	DOUBLE PRECISION;
Declare variable dta                        date;
DECLARE VARIABLE tipoMovimento 				smallint;
declare variable estoqueNegativo char(1);
DECLARE VARIABLE vlrEstoqueAcum		       	DOUBLE PRECISION;
BEGIN 
  /* Lanca na tabela MovimentoDetalhe os campos PRECOCUSTO = PRECOMEDIO, PRECOULTIMACOMPRA */
  /* , vlrESTOQUE (Custo da Venda efetuada) e qtdeEstoque = qtde do ESTOQUE */
  /* no momento da Venda ou Compra                                                   */ 

  pmAcumulado = 0;
  qtdeAcumulado = 0;    
  vlrEstoqueAcum = 0;   
  vlrEstoque = 0; 

  /* #####################  ALTERACAO LANCAMENTO #################### */
  /* So faz alguma coisa , se mudar preco ou quantidade */
  if ((NEW.PRECO <> OLD.PRECO) OR (NEW.QUANTIDADE <> OLD.QUANTIDADE)) then
  begin  
    /* Pego a data que esta sendo feito o lançamento ,pois, tenho que ver o estoque   */
    /* até a data do lançamento                                                       */
    select first 1 m.DATAMOVIMENTO, natu.BAIXAMOVIMENTO from MOVIMENTO m 
      inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = m.CODNATUREZA
      where m.CODMOVIMENTO = new.CODMOVIMENTO
    into :Dta, :tipoMovimento;  

  if (((old.BAIXA = 0) OR (old.BAIXA = 1)) and ((new.BAIXA = 0) OR (NEW.BAIXA = 1))) then 
  begin 
    if (tipoMovimento = 0) then
    begin
      if ((new.PRECO <> old.PRECO) or (new.QUANTIDADE <> old.QUANTIDADE)) then 
      begin
        -- O campo vlrEstoque está sendo usado somente na venda para 
        -- registrar o custo desta
 
        -- Vejo qual era o valor do estoque 
        --vlrEstoque = old.PRECOCUSTO * old.QTDEESTOQUE;
        -- retira do valor do estoque o valor anterior deste lancamento 
        --vlrEstoque = VlrEstoque - (old.PRECO * old.QUANTIDADE);
        -- Lanco o novo preco no valor do estoque 
        --vlrEstoque = VlrEstoque + (new.PRECO * new.QUANTIDADE);
        -- retiro a quantidade do lancamento do total do estoque 
        qtdeAcumulado = old.QTDEESTOQUE - old.QUANTIDADE;
        -- Lanco a nova quantidade no estoque 
        qtdeAcumulado = qtdeAcumulado + new.QUANTIDADE;
        new.QTDEESTOQUE = :qtdeAcumulado;
        -- Se o estoque está negativo ou é 0 então o preço de Custo = 0
        if (qtdeAcumulado <= 0) then 
          new.PRECOCUSTO = 0;
        else   
        begin 
          --Grava o PRECOMEDIO
          new.PRECOCUSTO = vlrEstoque / qtdeAcumulado;
        end 
        -- Grava o último Preço de Compra
        new.PRECOULTIMACOMPRA = new.PRECO;          
      end
    end -- SAIDA
	else begin 
      -- Acrescento a quantidade do lancamento no total do estoque 
      qtdeAcumulado = old.QTDEESTOQUE + old.QUANTIDADE;
      -- Retiro a nova quantidade do estoque 
      qtdeAcumulado = qtdeAcumulado - new.QUANTIDADE;
      new.QTDEESTOQUE = qtdeAcumulado;
      
      -- O campo vlrEstoque está sendo usado somente na venda para 
      -- registrar o custo desta

      -- Vejo qual era o valor do estoque 
      --vlrEstoque = old.PRECOCUSTO * old.QTDEESTOQUE;
      -- Acrescento valor do estoque o valor anterior deste lancamento 
      --vlrEstoque = VlrEstoque + (old.PRECO * old.QUANTIDADE);
      -- Calcula o novo valor do estoque 
      new.VLRESTOQUE = (new.PRECOCUSTO * new.QUANTIDADE);
      -- retiro a quantidade do lancamento do total do estoque 
    end    
  end 
  /* ##################### FIM ALTERACAO LANCAMENTO ############# */
  end -- Fim Primeiro IF

END
