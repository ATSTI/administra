CREATE TRIGGER origem_produto FOR MOVIMENTODETALHE
ACTIVE BEFORE INSERT POSITION 0
AS
declare variable orig char(2);
BEGIN
    /* se origem do produto estiver nulo, coloco o valor q esta no cadastro */ 
    if (new.ORIGEM is null) then 
    begin 
      select p.ORIGEM from produtos p where p.CODPRODUTO = new.CODPRODUTO 
       into :orig;
      new.ORIGEM = :orig; 
    end
END
