CREATE or alter TRIGGER cnpj_repetido FOR CLIENTES
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
 declare variable cnpj varchar(20);
 declare variable codcliente INTEGER;
BEGIN 
	/* não permite cnpj/cpf repetido */ 
   cnpj = 'vazio';
   for select c.CNPJ, c.CODCLIENTE from clientes c where c.CNPJ = new.CNPJ
   into :cnpj, :codcliente
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
        if ((new.CNPJ = cnpj) and (new.CODCLIENTE <> codCliente)) then
          EXCEPTION cnpj_repetido;
     end
  end 
end
