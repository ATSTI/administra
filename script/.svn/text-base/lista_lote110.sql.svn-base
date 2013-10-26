CREATE OR ALTER PROCEDURE LISTA_LOTE
RETURNS (
    COD_BARRA varchar(20),
    CODPRO varchar(15),
    PRODUTO varchar(300),
    ESTOQUEATUAL double precision,
    CODALMOXARIFADO integer,
    MESANO date,
    LOTE varchar(60) )
AS
declare variable CODPRODUTO integer;
begin
  For Select distinct q.CODPRODUTO, q.LOTE from ESTOQUEMES q 
  order by q.CODPRODUTO, q.LOTE desc 
    into :codProduto, :LOTE
  do 
  begin
    estoqueAtual = 0;
    for select p.CODPRO, p.cod_barra, p.produto
    from produtos p
    where p.CODPRODUTO = :codProduto
    into :codPro, :cod_barra, :produto
    do
    begin
      estoqueAtual = 0;    
      select first 1 m.SALDOESTOQUE, m.mesano, m.CENTROCUSTO  from ESTOQUEMES m
      where m.CODPRODUTO = :codProduto and m.LOTE = :LOTE
      order by m.MESANO desc
      into :estoqueAtual, :mesano, :CODALMOXARIFADO;
      suspend;
    end
  end
end