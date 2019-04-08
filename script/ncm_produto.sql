CREATE TRIGGER ncm_produto FOR MOVIMENTODETALHE
ACTIVE BEFORE INSERT POSITION 0
AS
declare variable ncm varchar(8);
BEGIN
    /* se ncm do produto estiver nulo, coloco o valor q esta no cadastro */ 
    if (new.NCM is null) then 
    begin 
      select p.NCM from produtos p where p.CODPRODUTO = new.CODPRODUTO 
       into :ncm;
      new.NCM = :ncm; 
    end
END
