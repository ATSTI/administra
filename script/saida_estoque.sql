set term ^;

ALTER TRIGGER SAIDA_ESTOQUE inactive
AFTER UPDATE
POSITION 0
as
 declare variable centroPerda smallint;
 declare variable codCCusto smallint;
 declare variable vlrEstoque double Precision;
 declare variable qtdeEstoque double Precision;
begin
 /* 1 = Saída */
 select dados from parametro where parametro = 'CENTRO PERDA'
  into :centroPerda;
 select codAlmoxarifado from movimento where codMovimento = new.codMovimento
   into :codCCusto ;
 if ((NEW.BAIXA = '1') and (old.BAIXA is null)) then
 begin
   /* Se tem um centro de Perda e a Saída e pra ele então deduz isso do Valor estoque */
   if ((centroPerda is null) OR (centroPerda <> codCcusto)) then
   begin
      update PRODUTOS set   
     ESTOQUEATUAL = ESTOQUEATUAL - NEW.QUANTIDADE
     where CODPRODUTO = NEW.CODPRODUTO;
   end
   else begin
     select precomedio, estoqueatual from produtos where codProduto = new.codProduto
       into :vlrEstoque, qtdeEstoque;
     vlrEstoque = (vlrEstoque * qtdeEstoque);
     vlrEstoque = (vlrEstoque / (qtdeEstoque - NEW.Quantidade));
      update PRODUTOS set   
     ESTOQUEATUAL = ESTOQUEATUAL - NEW.QUANTIDADE, precoMedio = :vlrEstoque 
     where CODPRODUTO = NEW.CODPRODUTO;
   end
 end
  

end
