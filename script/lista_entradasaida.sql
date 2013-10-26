CREATE OR ALTER PROCEDURE LISTA_ENTRADASAIDA
 (DATA1 DATE, DATA2 DATE, cPRODUTO Integer) 
RETURNS 
 (CodPro Varchar(15),
  Produto Varchar(300),
  ValorUnitario Double Precision,
  Entrada Double Precision,
  Saida Double Precision,
  Saldo Double Precision,
  ValorTotal Double Precision,
  Codigo integer,
  NomeCliente varchar(60),
  NomeFornecedor varchar(60),
  NotaFiscal integer,
  serie varchar(20),
  CustoVenda double precision,
  Tipo varchar(10)
)
AS 
  DECLARE VARIABLE codProduto integer; 
BEGIN
  /* Lista Entradas e Saidas de Cada Item */
  -- Loop pela tab Produto 
  Entrada = 0;
  Saida = 0;
  Saldo = 0;
  For Select codProduto from produtos where ((codProduto = :cProduto) or (:cProduto = 0)) 
  into :codProduto
  do begin 
    -- Busca pelas entradas 
    For Select prod.CODPRO, prod.PRODUTO, prod.VALORUNITARIOATUAL , SUM(IT.QUANTIDADE),
     SUM(IT.VALTOTAL) , rec.CODFORNECEDOR,
      cli.NOMEFORNECEDOR, rec.NOTAFISCAL, rec.SERIE, sum(it.VLRESTOQUE) as CUSTO
      from  compra rec
      inner join FORNECEDOR cli on cli.CODFORNECEDOR = rec.CODFORNECEDOR
      inner join MOVIMENTO mov on rec.CODMOVIMENTO = mov.CODMOVIMENTO 
      inner join MOVIMENTODETALHE it on it.CODMOVIMENTO = rec.CODMOVIMENTO 
      inner join PRODUTOS prod on prod.CODPRODUTO = it.CODPRODUTO
      where (mov.CODNATUREZA = 1) and  (rec.DATACOMPRA between :DATA1 and :DATA2) 
        and (it.CODPRODUTO = :codProduto)
      group by prod.CODPRO, prod.PRODUTO, prod.VALORUNITARIOATUAL , rec.CODFORNECEDOR,
        cli.NOMEFORNECEDOR, rec.NOTAFISCAL, rec.SERIE
    into :CodPro, :Produto, :ValorUnitario, :Entrada, :ValorTotal, :Codigo, :NomeFornecedor,
      :NotaFiscal, :serie, :CustoVenda
    do begin
      if (Entrada is null) then 
        entrada = 0;
      saldo = saldo + entrada; 
      tipo = 'Entrada';
      Suspend;
      Entrada = 0;
      NomeFornecedor = null;
    end 
    -- Busca pelas saidas 
    For Select prod.CODPRO, prod.PRODUTO, prod.VALORUNITARIOATUAL , SUM(IT.QUANTIDADE), SUM(IT.VALTOTAL) , rec.CODCLIENTE,
      cli.NOMECLIENTE, rec.NOTAFISCAL, rec.SERIE, sum(it.VLRESTOQUE) as CUSTO
      from VENDA rec
      inner join CLIENTES cli on cli.codCliente = rec.codcliente 
      inner join MOVIMENTO mov on rec.CODMOVIMENTO = mov.CODMOVIMENTO 
      inner join MOVIMENTODETALHE it on it.CODMOVIMENTO = rec.CODMOVIMENTO 
      inner join PRODUTOS prod on prod.CODPRODUTO = it.CODPRODUTO
      where (mov.CODNATUREZA = 2) and  (rec.DATAVENDA between :DATA1 and :DATA2) 
        and (it.CODPRODUTO = :codProduto)
    group by rec.CODCLIENTE,cli.NOMECLIENTE, rec.NOTAFISCAL, rec.SERIE,  prod.CODPRO, prod.PRODUTO, prod.VALORUNITARIOATUAL 
    into :CodPro, :Produto, :ValorUnitario, :Saida, :ValorTotal, :Codigo, :NomeCliente,
      :NotaFiscal, :serie, :CustoVenda
    do begin 
      if (Saida is null) then 
        Saida = 0;
      saldo = saldo - Saida; 
      tipo = 'Saida';
      Suspend;
      Saida = 0;
      NomeCliente = null;
    end 
    Saldo = 0;
  end -- Fim do loop produto 
END