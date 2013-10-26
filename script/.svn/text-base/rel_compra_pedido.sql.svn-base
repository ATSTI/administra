CREATE OR ALTER PROCEDURE rel_compra_pedido(codFornec Integer, pData1 date, pData2 date)
RETURNS (
    CODPRODUTO Varchar(15),
    PRODUTO Varchar(300),
    NF Varchar(20),
    PEDIDO Varchar(20),
    TIPO Varchar(20),  -- Pedido ou NF
    DATA_PEDIDO Date,
    SITUACAO Varchar(30),
    DATA_ENTREGA Date,
    QTDE Double precision,
    PRECO Double precision,
    FORMA_PAGTO Varchar(60),
    PRAZO Varchar(60),
    VALOR Double precision,
    FORNECEDOR Varchar(60)
    )
AS
  declare variable codMov Integer;
Begin 
  FOR SELECT CODPEDIDO FROM MOVIMENTO m
      LEFT OUTER JOIN COMPRA c on c.CODMOVIMENTO = m.CODMOVIMENTO
       WHERE ((m.CODNATUREZA = 4) OR (m.CODNATUREZA = 5))
         AND ((m.DATAMOVIMENTO between (:pData1) and (:pData2)) or (c.DATACOMPRA between (:pData1) and (:pData2)))
       into :codMov   
  do begin 
  situacao = ''; 
  -- PEDIDOS RECEBIDOS 
  For select CAST(c.NOTAFISCAL AS VARCHAR(20)), f.NOMEFORNECEDOR, p.PRODUTO, md.QUANTIDADE,
    md.PRECO, c.VALOR, c.DATACOMPRA , p.CODPRO, m.DATA_ENTREGA, c.PRAZO, 
    CASE WHEN c.FORMAPAGAMENTO = 1 THEN 'DINHEIRO' WHEN c.FORMAPAGAMENTO = 2 THEN 'CHEQUE' WHEN c.FORMAPAGAMENTO = 3 THEN 'CHEQUE-PRE'
    WHEN c.FORMAPAGAMENTO = 4 THEN 'BOLETO' WHEN c.FORMAPAGAMENTO = 5 THEN 'DUPLICATA' ELSE 'OUTROS' END , m.CODPEDIDO
    from compra c 
    left outer join MOVIMENTO m on m.CODMOVIMENTO = c.CODMOVIMENTO 
    left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = c.CODMOVIMENTO 
    left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
    left outer join FORNECEDOR f on f.CODFORNECEDOR = c.CODFORNECEDOR
    where m.CODPEDIDO = :codMov
      and m.CODNATUREZA = 4
      and ((c.CODFORNECEDOR = :codFornec) or (:codFornec = 0))
  into :nf, :Fornecedor, :Produto, :qtde, :preco, :valor, :DATA_PEDIDO, :codProduto, :DATA_ENTREGA, :PRAZO, :FORMA_PAGTO, :pedido 
  do begin
    tipo     = 'NF';
    situacao = 'Finalizado';
    suspend;
  end

  if (situacao = '') then 
  begin
    -- PEDIDOS RECEBIDO NAO FINALIZADOS
    For select CAST(m.CODPEDIDO AS VARCHAR(20)), f.NOMEFORNECEDOR, p.PRODUTO, md.QUANTIDADE,
      md.PRECO, (md.PRECO * md.QUANTIDADE) VALOR, m.DATAMOVIMENTO , p.CODPRO, m.DATA_ENTREGA, m.PRAZO_PAGAMENTO, m.FORMA_PAG
      from MOVIMENTO m
      left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO 
      left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
      left outer join FORNECEDOR f on f.CODFORNECEDOR = m.CODFORNECEDOR
      where m.CODPEDIDO = :codMov
        and m.CODNATUREZA = 4
        and md.BAIXA is null 
        and ((m.CODFORNECEDOR = :codFornec) or (:codFornec = 0))
    into :pedido, :Fornecedor, :Produto, :qtde, :preco, :valor, :DATA_PEDIDO, :codProduto, :DATA_ENTREGA, :PRAZO, :FORMA_PAGTO 
    do begin
      tipo     = 'Pedido';
      situacao = 'Pend. Entr. NF'; -- Pendente entrada NF.
      suspend;
    end
  end  




  if (situacao = '') then 
  begin
    -- PEDIDOS NAO RECEBIDOS 
    For select CAST(m.CODPEDIDO AS VARCHAR(20)), f.NOMEFORNECEDOR, p.PRODUTO, md.QUANTIDADE,
      md.PRECO, (md.PRECO * md.QUANTIDADE) VALOR, m.DATAMOVIMENTO , p.CODPRO, m.DATA_ENTREGA, m.PRAZO_PAGAMENTO, m.FORMA_PAG
      from MOVIMENTO m
      left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO 
      left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
      left outer join FORNECEDOR f on f.CODFORNECEDOR = m.CODFORNECEDOR
      where m.CODPEDIDO = :codMov
        and m.DATAMOVIMENTO between :pData1 and :pData2
        and m.CODNATUREZA = 5
        and md.BAIXA is null 
        and ((m.CODFORNECEDOR = :codFornec) or (:codFornec = 0))
    into :pedido, :Fornecedor, :Produto, :qtde, :preco, :valor, :DATA_PEDIDO, :codProduto, :DATA_ENTREGA, :PRAZO, :FORMA_PAGTO 
    do begin
      tipo     = 'Pedido';
      situacao = 'Nao Recebido';
      suspend;
    end
  end  

  end 
end