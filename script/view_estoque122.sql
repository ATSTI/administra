CREATE OR ALTER PROCEDURE VIEW_ESTOQUE 
RETURNS 
 ( CODPRODUTO   INTEGER, 
   CODPRO       VARCHAR(15),
   PRODUTO      VARCHAR(300),
   PRECO_CUSTO  DOUBLE PRECISION, 
   ESTOQUE      DOUBLE PRECISION, 
   PRECO_COMPRA DOUBLE PRECISION, 
   PRECO_VENDA  DOUBLE PRECISION,
   UNIDADEMEDIDA VARCHAR(10),
   LOTES         CHAR(1))
AS 
   declare variable PCUSTO  DOUBLE PRECISION; 
   declare variable ESTOQ DOUBLE PRECISION;
   declare variable PCOMPRA DOUBLE PRECISION; 
   declare variable PVENDA  DOUBLE PRECISION;
   declare variable margem  DOUBLE PRECISION;
   declare variable ccusto integer;
BEGIN
  ccusto = 1;
  SELECT CAST(D1 AS INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CENTROCUSTO'
    INTO :CCusto;
  FOR SELECT p.CODPRODUTO, p.CODPRO, p.PRODUTO, p.PRECOMEDIO, p.ESTOQUEATUAL, 
     p.VALORUNITARIOATUAL, p.VALOR_PRAZO,       p.MARGEM , p.UNIDADEMEDIDA, p.LOTES 
        from produtos p where ((p.USA = 'S') or (p.USA is null))
        into :CODPRODUTO, :CODPRO, :PRODUTO, :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA, :PRECO_VENDA, :MARGEM 
             ,:UNIDADEMEDIDA, :LOTES
    do begin         
      select ev.PRECOCUSTO, ev.SALDOFIMACUM, ev.PRECOCOMPRA from ESTOQUE_VIEW_CUSTO(current_date, :CODPRODUTO, :CCUSTO, 
      'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
         into :pcusto, :estoq, :pcompra;

       if (pcusto is null) then 
         pcusto = 0;
       if (pcusto > 0) then   
         PRECO_CUSTO = pcusto;
         
       if (estoq is null) then 
         estoq = 0;
       if (estoq > 0) then   
         ESTOQUE = estoq;

       if (pcompra is null) then 
         pcompra = 0;
       if (pcompra > 0) then   
         PRECO_COMPRA = pcompra;
       suspend; 
       lotes = null;
       unidademedida = null;
       preco_custo = null;
       estoque = null;
       preco_compra = null;
       preco_venda = null;
       pcusto = null;
       estoq = null;
       pcompra = null;
       margem = null;
    end    
END