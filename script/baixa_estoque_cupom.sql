SET TERM ^ ;
CREATE OR ALTER TRIGGER BAIXA_ESTOQUE_CUPOM FOR VENDA ACTIVE
AFTER INSERT POSITION 0
AS 
  declare VARIABLE pcu DOUBLE PRECISION;
  declare VARIABLE pco DOUBLE PRECISION;
  declare VARIABLE etq DOUBLE PRECISION;
  declare variable prod integer;
BEGIN 
  -- 13/07/2016 - SOLO RURAL (Emitem Cupom direto sem Venda)
  /* EXECUTA a ataulizacao em produtos para vendas no cupom*/ 
  for select PRECO_CUSTO, ESTOQUE, PRECO_COMPRA, CODPRODUTO from ESTOQUE_ATUALIZA(new.CODMOVIMENTO)
    into :pcu, :etq, :pco, :prod
    do begin 
      update produtos set 
        precomedio = :pcu, 
        estoqueatual = :etq, 
        VALORUNITARIOATUAL = :pco 
      where codproduto = :prod;                  
    end

END^
SET TERM ; ^
