CREATE OR ALTER PROCEDURE pedido_x_venda 
 ( dataIni date, dataFim date, compraVenda char(1) ) 
RETURNS 
 ( mesAno char(7), mesAnoV integer, valorVenda double precision, valorPedido double precision)
AS 
DECLARE VARIABLE  mes smallint;
DECLARE VARIABLE  ano smallint; 
BEGIN
  -- Mostra o Total de Pedidos no Mes e o Total Faturado no Mes 
  if (compraVenda = 'V') then 
  begin 
  For SELECT UDF_MONTH(v.DATAVENDA), UDF_YEAR(v.DATAVENDA) , UDF_MONTH(v.DATAVENDA) || UDF_YEAR(v.DATAVENDA) MESANO, SUM(v.VALOR) VENDA
    FROM VENDA v, MOVIMENTO m
   WHERE m.CODMOVIMENTO = v.CODMOVIMENTO
     AND m.CODNATUREZA   = 3
     AND v.DATAVENDA BETWEEN :dataIni AND :dataFim 
   GROUP BY UDF_MONTH(v.DATAVENDA), UDF_YEAR(v.DATAVENDA), UDF_MONTH(v.DATAVENDA)
    INTO :mes, :ano, :mesAnoV, :valorVenda
  do begin
    mesAno = UDF_PADL(mes,'0',2) || '-' || cast(ano as char(4));
    -- Total de Pedido no Período
    Select sum(md.VLR_BASE * md.QUANTIDADE) from Movimento m , MovimentoDetalhe md 
     where md.CODMOVIMENTO = m.CODMOVIMENTO 
       and m.CODNATUREZA   = 3
       and udf_month(m.DATAMOVIMENTO) = :mes and UDF_YEAR(m.DATAMOVIMENTO) = :ano
    into :valorPedido;      
    Suspend; 
  end  
  mes = null;
  ano = null;
  end

  -- Mostra o Total de Pedidos no Mes e o Total Recebido no Mes 
  if (compraVenda = 'C') then 
  begin 
  For SELECT UDF_MONTH(DATACOMPRA), UDF_YEAR(DATACOMPRA) , UDF_MONTH(DATACOMPRA) || UDF_YEAR(DATACOMPRA) MESANO, SUM(VALOR) COMPRA
    FROM COMPRA 
   WHERE DATACOMPRA BETWEEN :dataIni AND :dataFim 
   GROUP BY UDF_MONTH(DATACOMPRA), UDF_YEAR(DATACOMPRA), UDF_MONTH(DATACOMPRA)
    INTO :mes, :ano, :mesAnoV, :valorVenda
  do begin
    mesAno = UDF_PADL(mes,'0',2) || '-' || cast(ano as char(4));
    -- Total de Pedido no Período
    Select sum(md.VLR_BASE * md.QUANTIDADE) from Movimento m , MovimentoDetalhe md 
     where md.CODMOVIMENTO = m.CODMOVIMENTO 
       and m.CODNATUREZA   = 4
       and udf_month(m.DATAMOVIMENTO) = :mes and UDF_YEAR(m.DATAMOVIMENTO) = :ano
    into :valorPedido;      
    Suspend; 
  end  
  end
   
END