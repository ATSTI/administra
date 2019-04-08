CREATE TRIGGER estoque_atualiza_venda FOR VENDA
 AFTER INSERT or DELETE or UPDATE
AS
DECLARE VARIABLE codm integer;
DECLARE VARIABLE codp integer;
DECLARE VARIABLE ccusto integer;
DECLARE VARIABLE preco_custo double precision;
DECLARE VARIABLE estoque double precision;
DECLARE VARIABLE preco_compra double precision;
BEGIN
  if (inserting or updating) then
    codm = new.codmovimento;
  if (deleting) then
    codm = old.codmovimento;

  for select md.codproduto, m.codalmoxarifado from movimento m , movimentodetalhe md
     where m.codmovimento = :codm and md.codmovimento = m.codmovimento
  into :codp, :ccusto
   do begin   
      select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
        from ESTOQUE_VIEW_CUSTO(current_date, :codp, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
        into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;  

      update produtos set ESTOQUEATUAL = :estoque
        ,datagrav = current_date 
        where codproduto = :codp;
  end

END