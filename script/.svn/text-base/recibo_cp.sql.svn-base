CREATE OR ALTER PROCEDURE RECIBO_CP
returns (
    lote varchar(30),
    fornecedor varchar(60),
    codproduto varchar(15),
    produto varchar(200),
    titulo varchar(20),
    emissao date,
    qtde double precision,
    preco double precision,
    valor double precision,
    peso double precision,
    nomeprodutor varchar(60),
    notaf integer,
    placa varchar(20),
    userid char(1))
as
declare variable quemusa varchar(20);
declare variable lote1 varchar(20);
declare variable codcompra integer;
declare variable vlr double precision;
declare variable codmov integer;
declare variable cp integer;
Begin
  For select l.lote, forn.NOMEFORNECEDOR  as Fornecedor , prod.CODPRO, prod.PRODUTO, p.TITULO,
    p.EMISSAO, l.QUANTIDADE, l.PRECO, p.VALOR_RESTO, c.CODCOMPRA, p.DUP_REC_NF, p.OUTRO_DEBITO
    , c.CODMOVIMENTO, (l.qtde_alt - l.ICMS), l.CODPRODUTO , p.userid
    from PAGAMENTO p
    inner join FORNECEDOR forn on forn.CODFORNECEDOR = p.CODFORNECEDOR
    left outer join compra c on c.CODCOMPRA = p.CODCOMPRA
    left outer join MOVIMENTODETALHE l on l.CODMOVIMENTO = c.CODMOVIMENTO
    left outer join PRODUTOS prod on prod.CODPRODUTO = l.CODPRODUTO
   where p.DP = 0 AND p.USERID is not null 
   order by codpagamento desc
   Into :Lote, :Fornecedor , :CodProduto, :Produto, :Titulo ,
        :Emissao, :Qtde, :Preco, :Valor, :codCompra, :lote1, :vlr, :codMov, :peso, :cp ,:userid
  Do Begin
    if (lote is null) then
      lote = lote1;
    select codmovimento, (qtde_alt - icms) from movimentodetalhe where lote = :lote
      and (quantidade between (:vlr - 0.1) and (:vlr + 0.1)) and baixa = 0
    into :codMov, :peso;
    if ((codMov is null) or (peso is null)) then
    begin
      select First 1 codmovimento from movimentodetalhe where lote = :lote
        and baixa = 0
      into :codMov;
    end

    -- Pegando a placa qdo e COMPRA
    select first 1 vei.PLACA From MOVIMENTO m
      left outer join VEICULO vei on vei.COD_VEICULO = m.COD_VEICULO
          where m.CODMOVIMENTO = :codMov
    into :Placa;

    Select DADOS FRom PARAMETRO where PARAMETRO = 'EMPRESA'
    Into :quemUsa;
    if (quemUsa = 'CITRUS') then
    begin
      -- se nao e compra, entao e venda entao procuro pelo lote o nome do Produtor.
      if (codCompra is null) then
      begin
        select first 1 f.NOMEFORNECEDOR, vei.PLACA
          From MOVIMENTO m, MOVIMENTODETALHE md , FORNECEDOR f
          left outer join VEICULO vei on vei.COD_VEICULO = m.COD_VEICULO
          where m.CODMOVIMENTO = md.codMovimento and m.CODFORNECEDOR = f.codFornecedor
          and m.codmovimento = :codMov
        into :NomeProdutor, :Placa;
        select  v.NOTAFISCAL from venda v
          where v.codmovimento = udf_left(:titulo, udf_len(:titulo)-2)
        into :notaf;

        if (notaf is null) then -- entao procura na compra
        begin
          select first 1 v.NOTAFISCAL, vei.PLACA, f.NOMEFORNECEDOR, p.PRODUTO from compra v
            left outer join MOVIMENTO m on m.CODMOVIMENTO = v.CODMOVIMENTO
            left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = v.CODMOVIMENTO
            left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
            left outer join VEICULO vei on vei.COD_VEICULO = m.COD_VEICULO
            left outer join FORNECEDOR f on f.CODFORNECEDOR = v.CODFORNECEDOR
            where v.codmovimento = udf_left(:titulo, udf_len(:titulo)-2)
          into :notaf, :placa, :NomeProdutor, :Produto;
        end
        Select  first 1 prod.CODPRO, prod.PRODUTO
          from MOVIMENTODETALHE l
          left outer join PRODUTOS prod on prod.CODPRODUTO = l.CODPRODUTO
         where l.LOTE = :Lote
        into :codProduto, :Produto;
        Qtde = (vlr); -- Total de Caixa ;
        Preco = Valor / (vlr); -- Preco Caixa
        if (peso is null) then
          peso = qtde * 40.8;
      end
      else begin  -- e compra
        NomeProdutor = Fornecedor;
        Qtde = Qtde;
        select  c.NOTAFISCAL from COMPRA c where c.codCompra = :codCompra
        into :notaf;
      end
    end
    suspend;
    fornecedor = null;
    placa = null;
    nomeProdutor = null;
    notaf = null;
    produto = null;
  end
end
