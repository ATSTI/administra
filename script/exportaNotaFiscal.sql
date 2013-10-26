create or alter procedure exportaNotaFiscal(data1 date, data2 date ,codCliFor integer)
returns 
 (nunNota varchar(20),
  FornCliente Varchar(80),
  dataEmissao date, 
  valorNotaEnt double precision, 
  valorNotaSai double precision, 
  qtdeItens double precision,
  valorIcmsEnt double precision,
  valorIcmsSai double precision
)
as 
  declare variable nf integer;
begin
  valorNotaEnt = 0;
  valorIcmsEnt = 0;
  valorNotaSai = 0;
  valorIcmsSai = 0;

  While (data1 < (data2 + 1)) do
  begin 
    -- Nota Entrada 
    for select nf.notaserie, nf.dtaemissao, nf.VLRTOTALEXP, forn.RAZAOSOCIAL
      ,nf.valor_icms ,nf.NUMNF 
       from notafiscal nf , FORNECEDOR forn 
    where forn.codfornecedor = nf.codcliente and nf.NATUREZA = 4 and dtaemissao = :data1
    order by nf.dtaemissao, nf.notaserie 
    into :nunNota, :dataEmissao, :valorNotaEnt, :fornCliente, :valorIcmsEnt, :nf
    do begin 
      select sum(QTDEEXP) from MOVIMENTONF where codMovimento = :nf
         into :qtdeItens; 
      if (valorIcmsEnt is null) then 
        valorIcmsEnt = 0;
      suspend;
    end 
    valorNotaEnt = 0;
    valorIcmsEnt = 0;
    qtdeItens = 0;
    -- Nota Entrada 
    for select nf.notaserie, nf.dtaemissao, nf.VLRTOTALEXP, cli.razaosocial, 
       nf.valor_icms  ,nf.NUMNF 
       from notafiscal nf , clientes cli 
    where cli.codcliente = nf.codcliente and nf.NATUREZA = 3 and dtaemissao = :data1
    order by nf.dtaemissao, nf.notaserie 
    into :nunNota, :dataEmissao, :valorNotaSai, :fornCliente, :valorIcmsSai, :nf
    do begin 
      if (valorIcmsSai is null) then 
        valorIcmsSai = 0;
      select sum(QTDEEXP) from MOVIMENTONF where codMovimento = :nf
        into :qtdeItens; 
      suspend;
    end 
    valorNotaSai = 0;
    valorIcmsSai = 0;
    qtdeItens = 0;
    data1 = data1 + 1;
  end 
end 
