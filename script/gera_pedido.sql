CREATE OR ALTER TRIGGER GERA_PEDIDO  for COMPRA_COTACAO  ACTIVE
AFTER UPDATE POSITION 0
AS 
  declare variable codmov integer;
  declare variable codProduto integer;
  declare variable ccusto integer;
BEGIN 
    codmov = 0;
	-- Gera o Pedido de Compra ou de Despesa apos a Solicitacao ser aprovada 
    if ((new.COTACAO_SITUACAO = 'C') and (old.COTACAO_SITUACAO = 'P')) then -- C = gerado pedido P = Nao gerado Pedido
    begin
      -- verifica se é Compra ou Despesa
      if (new.COTACAO_TIPO = 'C') then 
      begin 
        select first 1 m.codmovimento from MOVIMENTO m, MOVIMENTODETALHE md 
         where m.CODMOVIMENTO = md.CODMOVIMENTO      
           and md.BAIXA is null 
           and m.DATAMOVIMENTO = CURRENT_DATE
           and m.CODFORNECEDOR = new.COTACAO_FORNEC
           order by m.CODMOVIMENTO desc 
        into :codmov;
        
        if (codmov is null) then 
          codMov = 0;
             
        select p.DADOS from PARAMETRO p where p.PARAMETRO = 'CENTRO RECEITA PADRAO'
        into :ccusto;
             
        if (codmov = 0) then 
        begin  
          codmov = GEN_ID(GENMOV, 1);
          insert into MOVIMENTO (codmovimento, datamovimento, codcliente, codnatureza, 
            status, codusuario, codfornecedor, data_sistema, controle, data_entrega, prazo_pagamento, obs, CODALMOXARIFADO)
          values (
            :codmov, CURRENT_DATE, 0, 5, 0, 1, new.COTACAO_FORNEC, CURRENT_TIMESTAMP, new.COTACAO_CODIGO,
            new.COTACAO_DTENTREGA, new.COTACAO_PRAZO, UDF_LEFT(new.COTACAO_OBSERVACAO,99), :CCUSTO);
        end  
        select first 1 p.CODPRODUTO from produtos p where p.CODPRO =  new.COTACAO_ITEM
          into :codProduto;
        
        insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto, 
            quantidade, preco) values (
            GEN_ID(GENMOVDET, 1), :codmov, :codProduto, new.COTACAO_ITEMDESCRICAO, 
            new.COTACAO_QTDE, NEW.COTACAO_PRECO);  
        UPDATE COMPRA_SOLIC  SET SOLIC_SITUACAO = 'E' 
         WHERE SOLIC_CODIGO = NEW.COTACAO_CODSOLIC;              
      end 
    end
END
