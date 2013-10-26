CREATE OR ALTER PROCEDURE COTACAO_GERA_PEDIDO(codFornec integer)  
AS 
  DECLARE VARIABLE NAT SMALLINT;
  DECLARE VARIABLE codUsuario SMALLINT;
  DECLARE VARIABLE codVendedor SMALLINT;
  DECLARE VARIABLE codProd INT;  
  DECLARE VARIABLE codCCusto INT;  
  DECLARE VARIABLE codMov INT;  
  DECLARE VARIABLE codDet INT;  
  DECLARE VARIABLE codCotacao INT; 
  DECLARE VARIABLE codSolicitacao INT; 
  DECLARE VARIABLE codPedido INT; 
  DECLARE VARIABLE codNovoMov INT; 
  DECLARE VARIABLE prazo VARCHAR(30);
  DECLARE VARIABLE userAprova VARCHAR(30);
  DECLARE VARIABLE obs VARCHAR(100); 
  DECLARE VARIABLE un CHAR(3); 
  DECLARE VARIABLE IncluidoMov CHAR(1); 
  DECLARE VARIABLE prodDesc VARCHAR(300); 
  DECLARE VARIABLE entrega date; 
  DECLARE VARIABLE frete DOUBLE PRECISION; 
  DECLARE VARIABLE qtde DOUBLE PRECISION; 
  DECLARE VARIABLE recebido DOUBLE PRECISION; 
  DECLARE VARIABLE qtdeAlt DOUBLE PRECISION; 
  DECLARE VARIABLE preco DOUBLE PRECISION; 
BEGIN 
  /* Gera um Registro novo na Movimento  e Movimento Detalhe com a Natureza 4, 
     para o Usuário dar entrada na Nota;
     
     Se a quantidade Recebida for Parcial , então gera um novo MovimentoDetalhe 
     com o que sobrou do pedido Cotado;
  */
  
  -- No campo CODIGO na tabela MOVIMENTODETALHE sera Armazenado o CodMovimento 
  -- criado qdo gera um pedido de natureza 5;
   codNovoMov = GEN_ID(GENMOV, 1);
   IncluidoMov = 'N';
   -- Qdo conferido o pedido (qtde) gera se um pedido com a natureza = 4
   FOR SELECT m.CODNATUREZA, m.CODFORNECEDOR, m.CONTROLE, m.DATA_ENTREGA, 
        m.PRAZO_PAGAMENTO, m.OBS, m.VALOR_FRETE, m.CODUSUARIO, 
        m.CODVENDEDOR , m.USER_APROVA, 
        md.codproduto, md.descproduto, md.RECEBIDO, md.preco, md.un, md.qtde_alt,
        md.QUANTIDADE, m.CODMOVIMENTO, m.CODALMOXARIFADO, md.CODDETALHE, md.CODSOLICITACAO, m.CODPEDIDO
        FROM MOVIMENTO m, MOVIMENTODETALHE md  
       where md.CODMOVIMENTO = m.CODMOVIMENTO
         and ((m.STATUS = 3) OR (m.STATUS = 4)) 
         and ((md.QUANTIDADE - md.RECEBIDO) >= 0)
         and (m.CODNATUREZA = 5)
         and (md.CODIGO1 = 99999) 
         and (m.CODFORNECEDOR = :codFornec)
      into :nat, :codFornec, :codCotacao, :entrega, :prazo, :obs, :frete, :codUsuario, 
      :codVendedor, :userAprova, :codProd, :prodDesc, :recebido, :preco, :un, :qtdeAlt, :qtde, :codMov, :codCCusto, :codDet, :codSolicitacao, :codPedido
    do begin     
      if (IncluidoMov = 'N') then 
      begin 
        --codPedido = GEN_ID(CODPEDIDO, 1);
        INSERT INTO MOVIMENTO(codmovimento, datamovimento, codcliente, codnatureza, 
          status, codusuario, codfornecedor, data_sistema, controle, data_entrega, 
          prazo_pagamento, obs, valor_frete, codVendedor, user_Aprova, codpedido, codAlmoxarifado, codCotacao, codOrigem)
          values (:codNovoMov, CURRENT_DATE, 0, 4, 
          3,:codUsuario, :codFornec, CURRENT_TIMESTAMP, :codCotacao, :entrega,
          :prazo, :obs, :frete, :codVendedor, :userAprova, :codPedido, :codCCusto, :codCotacao, :codMov);
       end 
       IncluidoMov = 'S';
     /* When any do
      begin
         EXCEPTION ERRO_TRG;
      end*/
      insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto,   
        quantidade, preco, un, qtde_alt, codigo, codSolicitacao) values (
        GEN_ID(GENMOVDET, 1), :codNovoMov, :codProd, :prodDesc, 
        :recebido, :PRECO, :UN, :QTDEALT, :codCotacao, :codSolicitacao); 
            
      -- Novo Movimento Detalhe do que Sobrou do Pedido Cotado  
      if (recebido < qtde) then   
      begin 
        insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto, 
          quantidade, preco, un, qtde_alt, recebido, codigo, CodSolicitacao) values (
          GEN_ID(GENMOVDET, 1), :codMov, :codProd, :prodDesc, 
          :qtde - :recebido, :PRECO, :UN, :qtdeAlt, 0, :codCotacao, :codSolicitacao);
        update MOVIMENTODETALHE set QUANTIDADE = :recebido where coddetalhe = :codDet;  
      end  
      When any do
      begin
        EXCEPTION ERRO_TRG;
      end 
    end  
    
    
   FOR SELECT DISTINCT m.CODMOVIMENTO
        FROM MOVIMENTO m, MOVIMENTODETALHE md  
       where md.CODMOVIMENTO = m.CODMOVIMENTO
         and ((m.STATUS = 3) OR (m.STATUS = 4)) 
         and ((md.QUANTIDADE - md.RECEBIDO) >= 0)
         and (m.CODNATUREZA = 5)
         and (md.CODIGO1 = 99999) 
         and (m.CODFORNECEDOR = :codFornec)
      into :codMov
    do begin
    
      Select SUM(md.QUANTIDADE - md.RECEBIDO)
        FROM MOVIMENTO m, MOVIMENTODETALHE md  
       where md.CODMOVIMENTO = m.CODMOVIMENTO
         and ((m.STATUS = 3) OR (m.STATUS = 4)) 
         and m.CODMOVIMENTO = :codMov         
      into :qtde;

      if (qtde = 0) then 
        UPDATE MOVIMENTO SET STATUS = 5 WHERE CODMOVIMENTO = :codMov;
        
      if (qtde > 0) then 
        UPDATE MOVIMENTO SET STATUS = 4 WHERE CODMOVIMENTO = :codMov;
        
    end 
    
END
