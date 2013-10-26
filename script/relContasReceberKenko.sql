create or alter procedure relContasReceberKenko(data1 date , data2 date, PCli integer)
returns (
  status varchar(2),
  ValorDebito double precision,
  DataDebito date,
  DataCredito date,
  titulo varchar(20),
  dataVencimento date,
  valorCredito double precision,
  valorPendente double precision,
  nomecliente varchar(50),
  codcliente integer,
  historico varchar(150),
  conta varchar(50),
  tipo char(1)
  )
as
  declare variable codRecebimento INTEGER;
  declare VARIABLE tituloAtual varchar(15);
  declare variable codV INTEGER;
begin
  tituloAtual = 'vazio';
   for SELECT rec.TITULO, rec.VALOR_PRIM_VIA, rec.CODCLIENTE 
      , rec.EMISSAO , rec.CODVENDA
      FROM RECEBIMENTO rec
      where rec.Valor_prim_via > 0 and rec.EMISSAO BETWEEN :data1 and :data2 and 
        ((rec.CODCLIENTE = :PCli) or (:PCli = 0)) 
      into :titulo, valorDebito, :codcliente, :DataDebito, :codV
   do begin  
     select p.NOME from recebimento r inner join plano p on p.CODIGO = r.CONTACREDITO
        where r.CODRECEBIMENTO = :codRecebimento
      into :conta;
     if (codV is not null) then 
     begin 
       if (conta is null) then 
         conta = 'VENDA';
     end 
     tipo = 'D';
     suspend;
     valorDebito = null;
     conta = null;
     dataDebito = null;
     for SELECT rec.STATUS, (rec.VALORRECEBIDO+rec.JUROS+rec.FUNRURAL-rec.PERDA-rec.DESCONTO) as VALORRECEBIDO     
      , rec.EMISSAO, rec.TITULO, rec.VALOR_RESTO
      , cli.NOMECLIENTE, rec.CODRECEBIMENTO
      ,rec.CODCLIENTE, rec.HISTORICO 
      FROM RECEBIMENTO rec 
      left outer join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE 
      where rec.codcliente = :codCliente and rec.titulo = :titulo 
        and (rec.VALORRECEBIDO+rec.JUROS+rec.FUNRURAL-rec.PERDA-rec.DESCONTO) > 0
      into :status, :valorCredito 
        , :dataCredito, :titulo, :valorPendente
        , :nomeCliente, :codRecebimento, :codCliente, :historico
      do begin
        if (tituloAtual = titulo) then  
        begin 
          valorDebito = null;
          conta = null;
        end 
        tipo = 'C';
        suspend;
        valorPendente = 0;
        historico = null;
        tituloAtual = titulo;
        valorCredito = null;
        dataCredito = null;
      end
   end
end


  
  /* sqltexto1 := sqltexto1 + ' UDF_PADL(CAST(UDF_TRIM(rec.VIA) AS VARCHAR(2)),' ;
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) || ';
   sqltexto1 := sqltexto1 + '''' + '/' + '''';
   sqltexto1 := sqltexto1 +' || CAST(UDF_PADL(rec.PARCELAS,';
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) as varchar(2)) as VIA, rec.HISTORICO ,';
   sqltexto1 := sqltexto1 + ' rec.N_DOCUMENTO, rec.DUP_REC_NF, rec.DP, rec.CODVENDA,';
   sqltexto1 := sqltexto1 + ' cli.NOMECLIENTE, cli.RAZAOSOCIAL, v.CODMOVIMENTO, ';
   sqltexto1 := sqltexto1 + '(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA) as VALORREC ';
*/