set term ^ ;
CREATE OR ALTER PROCEDURE VIEW_ESTOQUE_SPED (PDATA DATE)
RETURNS 
 ( CODPRODUTO   INTEGER, 
   CODPRO       VARCHAR(15),
   PRODUTO      VARCHAR(300),
   PRECO_CUSTO  DOUBLE PRECISION, 
   ESTOQUE      DOUBLE PRECISION, 
   PRECO_COMPRA DOUBLE PRECISION, 
   PRECO_VENDA  DOUBLE PRECISION,
   UNIDADEMEDIDA VARCHAR(10),
   LOTES         CHAR(1),
   TIPO VARCHAR(30))
AS 
   declare variable PCUSTO  DOUBLE PRECISION; 
   declare variable ESTOQ DOUBLE PRECISION;
   declare variable PCOMPRA DOUBLE PRECISION; 
   declare variable PVENDA  DOUBLE PRECISION;
   declare variable margem  DOUBLE PRECISION;
   declare variable ccusto  INTEGER;
BEGIN
  ccusto = 51;
  select CAST(D1 as INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CENTROCUSTO'
    INTO :CCUSTO;
    
  FOR SELECT p.CODPRODUTO, p.CODPRO, p.PRODUTO, p.PRECOMEDIO, p.ESTOQUEATUAL, 
     p.VALORUNITARIOATUAL, p.VALOR_PRAZO, p.MARGEM , p.UNIDADEMEDIDA, p.LOTES,
     p.CLASSIFIC_FISCAL
        from produtos p 
        where ((p.usa is null) or (p.usa = 'S')) 
         and ((p.TIPO is null) or (p.TIPO <> 'SERV'))
         and  UDF_LEFT(p.CLASSIFIC_FISCAL,2) in ('00','01','02','03','04','05','06','10')
        into :CODPRODUTO, :CODPRO, :PRODUTO, :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA, :PRECO_VENDA, :MARGEM 
             ,:UNIDADEMEDIDA, :LOTES, :TIPO
    do begin         
      select first 1 m.PRECOCUSTO, m.SALDOESTOQUE, case when m.PRECOCOMPRAULTIMA > 0 then m.PRECOCOMPRAULTIMA else m.PRECOCOMPRA end 
        from ESTOQUEMES m
       where m.CODPRODUTO = :CODPRODUTO 
         and  m.MESANO <= :pData 
         and m.CENTROCUSTO = :CCusto 
         order by m.MESANO DESC
        into :pcusto, :estoq, :pcompra;

       if (pcusto is null) then 
         pcusto = 0;
       if (pcusto > 0) then   
         PRECO_CUSTO = pcusto;
         
       if (estoq is null) then 
         estoq = 0;
       --if (estoq > 0) then   
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