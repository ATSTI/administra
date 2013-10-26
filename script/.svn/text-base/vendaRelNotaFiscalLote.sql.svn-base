SET TERM ^ ;

CREATE OR ALTER PROCEDURE vendaPorNFLote
RETURNS 
 ( NotaFiscal integer,
   Lote       varchar(60),
   codFornec  integer ,
   fornecedor varchar(60),
   codCliente integer ,
   cliente    varchar(60),
   dataCompra date,
   dataVenda  date,
   codpro     varchar(30),
   produto    varchar(300),
   valor      double precision,
   codmovc    integer,
   codmovv    integer
   )
AS  
 declare variable codproduto integer;
BEGIN
  /* Relatorio Claro */ 
  /* COMPRA */
  For select mov.CODFORNECEDOR, forn.NOMEFORNECEDOR, cpr.DATACOMPRA, 
       cpr.VALOR, cpr.NOTAFISCAL,   movd.LOTE, movd.CODPRODUTO, movd.DESCPRODUTO, pro.CODPRO , mov.CODMOVIMENTO  
      from MOVIMENTO mov 
     inner join MOVIMENTODETALHE movd on movd.CODMOVIMENTO  = mov.CODMOVIMENTO 
     inner join NATUREZAOPERACAO nat  on nat.CODNATUREZA    = mov.CODNATUREZA 
     inner join COMPRA           cpr  on cpr.CODMOVIMENTO   = mov.CODMOVIMENTO 
     inner join FORNECEDOR       forn on forn.CODFORNECEDOR = mov.CODFORNECEDOR 
     inner join PRODUTOS         pro  on pro.CODPRODUTO     = movd.CODPRODUTO  
      into :codFornec , :fornecedor , :dataCompra, :valor, :notafiscal, :lote, :codproduto, :produto , :codpro, :codmovc          
  do begin
    /* VENDA */    
    For select mov.CODCLIENTE, cli.NOMECLIENTE, vnd.DATAVENDA, 
       vnd.NOTAFISCAL,  vnd.VALOR,  movd.LOTE   , mov.CODMOVIMENTO
      from MOVIMENTO mov 
     inner join MOVIMENTODETALHE movd on movd.CODMOVIMENTO  = mov.CODMOVIMENTO 
     inner join NATUREZAOPERACAO nat  on nat.CODNATUREZA    = mov.CODNATUREZA 
     inner join VENDA            vnd  on vnd.CODMOVIMENTO   = mov.CODMOVIMENTO 
     inner join CLIENTES         cli  on cli.CODCLIENTE     = mov.CODCLIENTE 
     where movd.CODPRODUTO = :codproduto and movd.LOTE = :lote 
      into :codCliente , :cliente , :dataVenda, :notafiscal, :valor, :lote , :codmovv 
    do begin
      suspend;
      codCliente = null;
      cliente = null;
      datavenda = null; 
      valor = 0;
      lote = null;
      codmovv = null;
    end
    suspend;
  end 

END^

SET TERM ; ^
