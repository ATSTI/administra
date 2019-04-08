CREATE or alter TRIGGER ncm_produto_ncm FOR PRODUTOS
ACTIVE AFTER INSERT or update POSITION 0
AS
declare variable ncm varchar(8);
declare variable ncm_p varchar(8);
BEGIN
    /* se ncm do produto estiver nulo, coloco o valor q esta no cadastro */ 
    SELECT NCM FROM NCM WHERE NCM = NEW.NCM
    into :NCM;
    if (NCM is null and new.NCM is not null) then
    begin
       INSERT INTO NCM (NCM) VALUES(NEW.NCM);
    end
END
