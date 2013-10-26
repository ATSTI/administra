set term ^;
create or alter procedure relNotaFiscal(data1 date, data2 date, codCliFor integer, SERIE CHAR(10))
returns 
 (nunNota varchar(20),
  FornCliente Varchar(80),
  dataEmissao date, 
  valorNotaEnt double precision, 
  valorNotaSai double precision, 
  qtdeItens double precision,
  valorIcmsEnt double precision,
  valorIcmsSai double precision,
  placa varchar(15),
  motorista varchar(60),
  ValorIcmsSubst double precision,
  LOTE VARCHAR( 60 ),
  QUANTIDADE double precision

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
    for select nf.notaserie, nf.dtaemissao, nf.valor_total_nota, forn.RAZAOSOCIAL
      ,nf.valor_icms ,nf.NUMNF, nf.PLACATRANSP, nf.NOMETRANSP 
       from notafiscal nf 
     inner join FORNECEDOR forn on forn.codfornecedor = nf.codcliente
     inner join COMPRA c on c.codCompra = nf.codVenda
     inner join MOVIMENTO m on m.codmovimento = c.codmovimento
    where  nf.NATUREZA = 4 and dtaemissao = :data1
       and ((nf.CODCLIENTE = :CodCliFor) OR (:CODCLIFOR = 0))
    order by nf.dtaemissao, nf.notaserie 
    into :nunNota, :dataEmissao, :valorNotaEnt, :fornCliente, :valorIcmsEnt, :nf, :placa, :motorista
    do begin 
      select sum(quantidade) from MOVIMENTONF where codMovimento = :nf
         into :qtdeItens; 
      if (valorIcmsEnt is null) then 
        valorIcmsEnt = 0;
      suspend;
    end 
    valorNotaEnt = 0;
    valorIcmsEnt = 0;
    qtdeItens = 0;
    -- Nota Saida
    for select nf.notaserie, nf.dtaemissao, nf.valor_total_nota, cli.razaosocial, 
       nf.valor_icms  ,nf.NUMNF, nf.PLACATRANSP, nf.NOMETRANSP, nf.VALOR_ICMS_SUBST , md.LOTE , md.QUANTIDADE
       from notafiscal nf 
     inner join clientes cli  on cli.codcliente = nf.codcliente
     inner join VENDA v on v.codVenda = nf.codVenda
     inner join MOVIMENTO m on m.codmovimento = v.codmovimento
     inner join MOVIMENTODETALHE md on m.codmovimento = md.codmovimento      
    where ((nf.NATUREZA = 3) or (nf.NATUREZA = 15) or (nf.NATUREZA = 12) or (nf.NATUREZA = 2)) and dtaemissao = :data1
    and ((nf.CODCLIENTE = :CodCliFor) OR (:CODCLIFOR = 0)) and ((v.SERIE = :SERIE) 
     or (:SERIE = 'Z'))
    order by nf.dtaemissao, nf.notaserie 
    into :nunNota, :dataEmissao, :valorNotaSai, :fornCliente, :valorIcmsSai, :nf, :placa, :motorista, :ValorIcmsSubst , :LOTE , :QUANTIDADE
    do begin 
      if (ValorIcmsSubst is null) then
        ValorIcmsSubst = 0;
      if (valorIcmsSai is null) then 
        valorIcmsSai = 0;
      select sum(quantidade) from MOVIMENTONF where codMovimento = :nf
        into :qtdeItens; 
      suspend;
    end 
    valorNotaSai = 0;
    valorIcmsSai = 0;
    qtdeItens = 0;
    data1 = data1 + 1;
  end 
end 
