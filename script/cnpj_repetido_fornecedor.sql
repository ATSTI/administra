CREATE or alter TRIGGER cnpj_repetido FOR FORNECEDOR
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
 declare variable cnpj varchar(20);
 declare variable codfor INTEGER;
BEGIN 
	/* não permite cnpj/cpf repetido */ 
   cnpj = 'vazio';
   for select c.CNPJ, c.CODFORNECEDOR from FORNECEDOR c where c.CNPJ = new.CNPJ
   into :cnpj, :codFor
   do begin 
   end 
   if (cnpj is null) then 
     cnpj = 'vazio';
   if (cnpj <> '') then 
   begin 
     if (INSERTING) then 
     begin 
       if (new.CNPJ = cnpj) then
         EXCEPTION cnpj_repetido;
     end
     if (UPDATING) then 
     begin 
       if (new.CNPJ <> old.CNPJ) then
        if ((new.CNPJ = cnpj) and (new.CODFORNECEDOR <> codFor)) then
          EXCEPTION cnpj_repetido;
     end
  end 
end
