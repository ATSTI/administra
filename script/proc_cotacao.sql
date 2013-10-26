CREATE OR ALTER PROCEDURE COTACAO (
    pfornec integer,
    pdata date)
returns (
    item integer,
    cotacao_codigo integer,
    cotacao_data date,
    cotacao_fornec integer,
    cotacao_solicit varchar(20),
    cotacao_item varchar(15),
    cotacao_itemdescricao varchar(300),
    cotacao_situacao char(1),
    cotacao_qtde double precision,
    cotacao_preco double precision,
    cotacao_user varchar(20),
    cotacao_prazo varchar(30),
    nomefornecedor varchar(50))
as
BEGIN
    item = 0;
  FOR
    select
        cotacao_codigo, cotacao_data,cotacao_fornec,cotacao_solicit,cotacao_item,
        cotacao_itemdescricao,cotacao_situacao,cotacao_qtde,cotacao_preco,cotacao_user,cotacao_prazo,
        fornecedor.nomefornecedor
    from fornecedor
       inner join compra_cotacao on (fornecedor.codfornecedor = compra_cotacao.cotacao_fornec)
    where 
        cotacao_fornec = :pfornec  and cotacao_data = :pdata
    INTO :COTACAO_CODIGO,:COTACAO_DATA,:COTACAO_FORNEC,:COTACAO_SOLICIT,:COTACAO_ITEM,:COTACAO_ITEMDESCRICAO,
         :COTACAO_SITUACAO,:COTACAO_QTDE,:COTACAO_PRECO,:COTACAO_USER,:COTACAO_PRAZO,:NOMEFORNECEDOR
  DO
  BEGIN
     item = item + 1;
    SUSPEND;

  END
END
