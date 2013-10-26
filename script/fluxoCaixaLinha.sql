CREATE or alter procedure fluxoCaixaLinha (PDTA1 DATE , PDTA2 DATE)
Returns (
  dia smallint, 
  mes smallint, 
  ano smallint, 
  nomeConta varchar(60), 
  valor double precision,
  tipo varchar(10)
  )
AS
 declare variable formaRec char(1);
begin
  /* Fluxo de Caixa em linha*/
  /* Receitas (RECEBIMENTO)*/
  for select UDF_DAY(dataVencimento), UDF_MONTH(dataVencimento),UDF_YEAR(dataVencimento),
    SUM(VALOR_RESTO), formaRecebimento
     FROM RECEBIMENTO WHERE DATAVENCIMENTO between :PDTA1 and :PDTA2
     group by UDF_DAY(dataVencimento), UDF_MONTH(dataVencimento),UDF_YEAR(dataVencimento), 
          formaRecebimento
     order by udf_year(datavencimento), UDF_MONTH(datavencimento)
       , udf_day(datavencimento)
   INTO :dia, :mes, :ano, :valor, :formaRec
   do begin
       tipo = '2-RECEITA';
       if (formaRec = '1') then
         NOMECONTA = '1-DINHEIRO';
       if (formaRec = '2') then
         NOMECONTA = '2-CHEQUES';
       if (formaRec = '3') then
         NOMECONTA = '3-CHEQUES-PRE';
       if (formaRec = '4') then
         NOMECONTA = '4-BOLETO';
       if (formaRec = '5') then
         NOMECONTA = '5-DUPLICATA';
       if (formaRec = '6') then
         NOMECONTA = '6-CARTAO CREDITO';
       if (formaRec = '7') then
         NOMECONTA = '7-CARTAO DEBITO';
       if (formaRec = '8') then
         NOMECONTA = '8-DEPOSITO';
       if (formaRec = '9') then
         NOMECONTA = '9-DEBITO AUTOMATICO';
       if (formaRec = 'A') then
         NOMECONTA = '10-HOME BANKING';
       if (formaRec = 'B') then
         NOMECONTA = '11-DOC';
       if (formaRec = 'C') then
         NOMECONTA = '12-CARTORIO';
       if (formaRec = 'D') then
         NOMECONTA = '13-TRANSFERENCIA';
       if (formaRec = 'E') then
         NOMECONTA = '14-CREDITO EM CONTA';
      suspend;
   end
  /* Despesas(PAGAMENTO POR COMPRA) */
  for select UDF_DAY(p.dataVencimento), UDF_MONTH(p.dataVencimento),UDF_YEAR(p.dataVencimento),
    SUM(p.VALOR_RESTO), p.formaPagamento
     FROM PAGAMENTO p
    inner join compra on compra.codCompra = p.CODCOMPRA
    WHERE p.DATAVENCIMENTO between :PDTA1 and :PDTA2      
     group by UDF_DAY(p.dataVencimento), UDF_MONTH(p.dataVencimento),UDF_YEAR(p.dataVencimento), 
          p.formaPagamento
     order by udf_year(p.datavencimento), UDF_MONTH(p.datavencimento)
       , udf_day(p.datavencimento)
   INTO :dia, :mes, :ano, :valor, :formaRec
   do begin
       tipo = '5-COMPRA';
       NOMECONTA = 'FORNECEDORES';
      valor = valor * (-1);
      suspend;
   end
  /* Despesas(PAGAMENTO POR DESPESA) */
  for select UDF_DAY(p.dataVencimento), UDF_MONTH(p.dataVencimento),UDF_YEAR(p.dataVencimento),
    SUM(p.VALOR_RESTO), plano.NOME
     FROM PAGAMENTO p
    inner join PLANO on plano.CODIGO = p.CONTACREDITO
    WHERE p.DATAVENCIMENTO between :PDTA1 and :PDTA2      
     group by UDF_DAY(p.dataVencimento), UDF_MONTH(p.dataVencimento),UDF_YEAR(p.dataVencimento), 
          plano.NOME
     order by udf_year(p.datavencimento), UDF_MONTH(p.datavencimento)
       , udf_day(p.datavencimento)
   INTO :dia, :mes, :ano, :valor, :NOMECONTA
   do begin
       tipo = '3-DESPESA';
      valor = valor * (-1); 
      suspend;
   end

end
