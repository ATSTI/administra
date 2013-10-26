CREATE OR ALTER PROCEDURE EXPEDICAO_GERA_PEDIDO(CARGA  Varchar(30), DataEntrega Date)
AS 
  DECLARE VARIABLE NAT SMALLINT;
  DECLARE VARIABLE codUsuario SMALLINT;
  DECLARE VARIABLE codVendedor SMALLINT;
  DECLARE VARIABLE codProd INT;  
  DECLARE VARIABLE codMov INT;  
  DECLARE VARIABLE codCCusto INT;  
  DECLARE VARIABLE codCliente INT;  
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
  /* Gera um Registro novo na Movimento  e Movimento Detalhe com a Natureza 6, 
     para Efetuar a Baixa no Estoque;
     
     Se a quantidade Enviada for Parcial , então gera um novo MovimentoDetalhe 
     com o que sobrou do pedido;
  */
  
  -- No campo CODIGO na tabela MOVIMENTODETALHE sera Armazenado o CodMovimento 
  -- criado qdo gera um pedido de natureza 6;
  IncluidoMov = 'S';
  Select CODMOVIMENTO FROM MOVIMENTO 
   WHERE CONTROLE = :CARGA 
     AND CODNATUREZA = 6
     AND DATA_ENTREGA = :DataEntrega
    Into :CodNovoMov;
      
    if (codNovoMov is null) then 
      codNovoMov = 0;
        
    if (codNovoMov = 0) then   
    begin 
     codNovoMov = GEN_ID(GENMOV, 1);
     IncluidoMov = 'N';
    end  

   -- Qdo informado qtde a ser entregue gera se um pedido com a natureza = 6
   FOR SELECT m.CODNATUREZA, m.CODCLIENTE, m.DATA_ENTREGA, 
        m.PRAZO_PAGAMENTO, m.OBS, m.VALOR_FRETE, m.CODUSUARIO, 
        m.CODVENDEDOR , m.USER_APROVA, 
        md.codproduto, md.descproduto, md.RECEBIDO, md.preco, md.un, md.qtde_alt,
        md.QUANTIDADE, m.CODMOVIMENTO, m.CODPEDIDO, m.CODALMOXARIFADO
        FROM MOVIMENTO m, MOVIMENTODETALHE md  
       where md.CODMOVIMENTO = m.CODMOVIMENTO
         and ((md.QUANTIDADE - md.RECEBIDO) >= 0)
         and (m.CODNATUREZA = 3)
         and (md.CODIGO1 = 99999) 
      into :nat, :codCliente, :entrega, :prazo, :obs, :frete, :codUsuario, 
      :codVendedor, :userAprova, :codProd, :prodDesc, :recebido, :preco, :un, :qtdeAlt, :qtde, :codMov, :codPedido, :codCCusto
    do begin     
          
      if (IncluidoMov = 'N') then 
      begin 
        INSERT INTO MOVIMENTO(codmovimento, datamovimento, codcliente, codnatureza, 
          status, codusuario, codfornecedor, data_sistema,  data_entrega, 
          prazo_pagamento, obs, valor_frete, codVendedor, user_Aprova, codpedido, Controle, CodAlmoxarifado)
          values (:codNovoMov, CURRENT_DATE, :codCliente, 6, 
          1,:codUsuario, 0, CURRENT_TIMESTAMP, :dataEntrega,
          :prazo, :obs, :frete, :codVendedor, :userAprova, :codPedido, :carga, :codCCusto);    
       end 
       IncluidoMov = 'S';
     /* When any do
      begin
         EXCEPTION ERRO_TRG;
      end*/
      insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto,   
        quantidade, preco, un, qtde_alt, codigo) values (
        GEN_ID(GENMOVDET, 1), :codNovoMov, :codProd, :prodDesc, 
        :recebido, :PRECO, :UN, :QTDEALT, :codPedido); 
            
      -- Novo Movimento Detalhe do que Sobrou do Pedido Cotado  
      if (recebido < qtde) then   
      begin 
        update MOVIMENTODETALHE SET QUANTIDADE = :recebido 
         WHERE CODMOVIMENTO = :codMov 
           and QUANTIDADE = :qtde 
           and CODPRODUTO = :codProd;
        insert into MOVIMENTODETALHE (CODDETALHE, codmovimento, codproduto, descproduto, 
          quantidade, preco, un, qtde_alt, recebido, codigo) values (
          GEN_ID(GENMOVDET, 1), :codMov, :codProd, :prodDesc, 
          :qtde - :recebido, :PRECO, :UN, :qtdeAlt, 0, :codPedido);
      end  
      When any do
      begin
        EXCEPTION ERRO_TRG;
      end 
    end  
    
   /* 
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
        
    end */
    
END
