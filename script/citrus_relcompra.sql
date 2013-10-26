SET TERM ^ ;
ALTER PROCEDURE CITRUS_RELCOMPRA (
    PFORNECEDOR Integer,
    PDATA1 Date,
    PDATA2 Date )
RETURNS (
    CODPRODUTO Varchar(15),
    PRODUTO Varchar(200),
    TITULO Varchar(20),
    TIPO Varchar(20),
    EMISSAO Date,
    QTDE Double precision,
    PRECO Double precision,
    PM Double precision,
    VALOR Double precision,
    PESO Double precision,
    NOMEPRODUTOR Varchar(60),
    NOTAF Integer,
    PLACA Varchar(20),
    CODMOV Integer
 )
AS
declare variable qt double precision;
 declare variable vt double precision;
declare variable lote varchar(20);
Begin 
  qt = 0;
  vt = 0;
  -- Pega a Compra 
  For select c.NOTAFISCAL, vei.PLACA, f.NOMEFORNECEDOR, p.PRODUTO, md.QUANTIDADE,
    md.PRECO, md.QTDE_ALT, c.CODMOVIMENTO, c.VALOR, c.DATACOMPRA , p.CODPRO, md.LOTE
    from compra c 
    left outer join MOVIMENTO m on m.CODMOVIMENTO = c.CODMOVIMENTO 
    left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = c.CODMOVIMENTO 
    left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
    left outer join VEICULO vei on vei.COD_VEICULO = m.COD_VEICULO 
    left outer join FORNECEDOR f on f.CODFORNECEDOR = c.CODFORNECEDOR
    where ((c.CODFORNECEDOR = :pFornecedor) or (:pFornecedor = 0)) 
     and c.DATACOMPRA between :pData1 and :pData2
  into :notaf, :placa, :NomeProdutor, :Produto, :qtde, :preco, :peso, :codMov, :valor,
    :emissao, :codProduto, :lote
  do begin
    qt = qt + qtde;
    vt = vt + valor;
    valor = valor * (-1);
    titulo = notaf;
    tipo = 'Produtor';
    suspend;
    Produto = null;
    peso = null;
    qtde = null;
    nomeProdutor = null;
    -- Nome Fretista e Valor Frete
    select first 1 forn.NOMEFORNECEDOR, p.TITULO, p.VALOR_RESTO, 
      case when p.OUTRO_DEBITO > 0 then (p.VALOR_RESTO / p.OUTRO_DEBITO) else 0 end
      from PAGAMENTO p
      inner join FORNECEDOR forn on forn.CODFORNECEDOR = p.CODFORNECEDOR
      where p.TITULO = :codMov || '-' || 'F'
      into :nomeProdutor, :titulo, :valor, :preco;
    -- Nome Colhedor e Valor 
    tipo = 'Frete';
    vt = vt + valor;
    valor = valor * (-1);
    if (nomeProdutor is not null) then 
      suspend;
    nomeProdutor = null;
    select first 1 forn.NOMEFORNECEDOR, p.TITULO, p.VALOR_RESTO, 
      case when p.OUTRO_DEBITO > 0 then (p.VALOR_RESTO / p.OUTRO_DEBITO) else 0 end
      from PAGAMENTO p
      inner join FORNECEDOR forn on forn.CODFORNECEDOR = p.CODFORNECEDOR
      where p.TITULO = :codMov || '-' || 'C'
      into :nomeProdutor, :titulo, :valor, :preco;
    tipo = 'Colheita';
    vt = vt + valor;
    if (qt > 0) then 
      pm = vt/qt;
    else 
      pm = 0;
    valor = valor * (-1);
    if (nomeProdutor is not null) then 
      suspend;
    placa = null;
    nomeProdutor = null;
    titulo = null;
    valor = 0;
   For Select md.PRECO, md.QTDE_ALT, v.VALOR, c.NOMECLIENTE, md.QUANTIDADE, v.NOTAFISCAL
      from venda v 
      left outer join MOVIMENTO m on m.CODMOVIMENTO = v.CODMOVIMENTO 
      left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = v.CODMOVIMENTO 
      left outer join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
      left outer join CLIENTES c on c.CODCLIENTE = v.CODCLIENTE
      where v.NOTAFISCAL = :notaf and md.LOTE = :lote 
    into :preco, :peso, :valor, :nomeProdutor, :Qtde, :titulo
    do begin
    end 
    tipo = 'Venda';
    vt = valor - vt;
    if (Qtde > 0) then 
      pm = vt/Qtde;
    else 
      pm = 0;
    if (nomeProdutor is not null) then 
      suspend;
    placa = null;
    nomeProdutor = null;
    titulo = null;
    valor = 0;
   
  end    

end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE CITRUS_RELCOMPRA TO  SYSDBA;

