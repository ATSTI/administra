create or alter procedure corrigeCCusto(produto1 integer , produto2 integer, ccusto integer)
as
 declare variable codmov integer;
 declare variable cod integer;
begin 
  for select codmovimento from MOVIMENTODETALHE 
   where codproduto between :produto1 and :produto2
  into :codmov
  do begin
    update movimento set CODALMOXARIFADO = :ccusto where codMovimento = :codmov;
    update VENDA set CODCCUSTO = :ccusto  where codMovimento = :codmov;
    update COMPRA set CODCCUSTO = :ccusto  where codMovimento = :codmov;
    for select codVenda from VENDA where codMovimento = :codmov
      into :cod
    do begin 
       update RECEBIMENTO set CODALMOXARIFADO = :ccusto where codVenda = :cod;
    end 
    for select codCompra from COMPRA where codMovimento = :codmov
      into :cod
    do begin 
       update PAGAMENTO set CODALMOXARIFADO = :ccusto where codCompra = :cod;
    end 

  end
end 