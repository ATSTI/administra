CREATE OR ALTER PROCEDURE GERA_PEDIDO_PROC(CODIGO INTEGER, FORNEC INTEGER, codMov integer)
AS 
  declare variable codProduto integer;
  declare variable codSolic   integer;
  declare variable ccusto     integer;  
  declare variable dtentrega  date;
  declare variable prazo      varchar(30);
  declare variable userAprova varchar(30);
  declare variable codPro     varchar(15);
  declare variable obs        varchar(300);
  declare variable descricao  varchar(350);
  declare variable situacao   char(1);
  declare variable tipo       char(1);
  declare variable qtde       double precision;
  declare variable ipi        double precision;
  declare variable preco      double precision;
  declare variable frete      double precision;
  declare variable desconto   double precision;
  declare variable codPedido  integer;
BEGIN 
  SELECT D2 FROM PARAMETRO WHERE PARAMETRO = 'COMPRA'
    INTO :userAprova;
    
  FOR SELECT c.COTACAO_DTENTREGA, c.COTACAO_PRAZO, c.COTACAO_OBSERVACAO, cast(c.COTACAO_ITEMDESCRICAO as Varchar(300)), 
       c.COTACAO_SITUACAO, c.COTACAO_TIPO, c.COTACAO_QTDE, c.COTACAO_PRECO, c.COTACAO_IPI,
       c.COTACAO_FRETE, c.COTACAO_DESCONTO, c.COTACAO_CODSOLIC, c.COTACAO_ITEM
        FROM COMPRA_COTACAO c 
       WHERE c.COTACAO_CODIGO = :codigo 
         AND c.COTACAO_FORNEC = :fornec 
         AND c.COTACAO_SITUACAO = 'X'
        into :dtEntrega, :prazo, :obs, :descricao, :situacao, :tipo, :qtde, :preco, :ipi, :frete, :desconto, :codSolic, :codPro
  do begin      
    if (preco > 0) then 
    begin 
	/* Gera o Pedido de Compra ou de Despesa apos a Solicitacao ser aprovada  */
    if (situacao = 'X') then /* C = gerado pedido P = Nao gerado Pedido  G = Cotado */
    begin
      /* verifica se Compra ou Despesa */
      if (tipo = 'C') then 
      begin 
        /*select first 1 m.codmovimento from MOVIMENTO m, MOVIMENTODETALHE md 
         where m.CODMOVIMENTO = md.CODMOVIMENTO      
           and md.BAIXA is null 
           and m.DATAMOVIMENTO = CURRENT_DATE
           and m.CODFORNECEDOR = :FORNEC
           order by m.CODMOVIMENTO desc 
        into :codmov;*/

        select p.DADOS from PARAMETRO p where p.PARAMETRO = 'CENTRO RECEITA PADRAO'
        into :ccusto;

        if (codmov = 0) then 
        begin  
          codPedido = GEN_ID(CODPEDIDO, 1);
          codmov    = GEN_ID(GENMOV, 1);
          insert into MOVIMENTO (codmovimento, datamovimento, codcliente, codnatureza, 
            status, codusuario, codfornecedor, data_sistema, controle, data_entrega, 
            prazo_pagamento, obs, user_aprova, CODALMOXARIFADO, CODPEDIDO, CODCOTACAO)
          values (
            :codmov, CURRENT_DATE, 0, 5, 
            0,       1,         :FORNEC, CURRENT_TIMESTAMP, Cast(:CODIGO as Varchar(20)), :DTENTREGA, 
            :PRAZO, UDF_LEFT(:obs,99),  :userAprova, :CCUSTO, :CODPEDIDO, :CODIGO); 
        end  
        select first 1 p.CODPRODUTO from produtos p where p.CODPRO = :codPro
          into :codProduto;

        insert into MOVIMENTODETALHE (codDetalhe, codmovimento, codproduto, descproduto, 
            quantidade, preco, QTDE_ALT, frete, valor_desconto, codSolicitacao) values (
            GEN_ID(GENMOVDET, 1), :codmov, :codProduto, :descricao, :qtde, (:preco - :desconto), :ipi 
            , :frete, 0, :codSolic);  
            
        -- Muda o Status da Compra_Solic    
        UPDATE COMPRA_SOLIC  SET SOLIC_SITUACAO = 'E' WHERE SOLIC_CODIGO = :codSolic;              
        -- Muda o Status da Compra_Cotacao
        update COMPRA_COTACAO set COTACAO_SITUACAO = 'F'
         WHERE COTACAO_SITUACAO = 'X'
           AND COTACAO_ITEM   = :codPro;
           
      end 
    end
    end
  end   
END