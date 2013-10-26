CREATE or alter TRIGGER tipoend_repetido FOR ENDERECOCLIENTE
ACTIVE BEFORE INSERT POSITION 0
AS 
  declare variable tipo SMALLINT;
BEGIN 
    tipo = null;
	/* Não permite 2 endereços com o mesmo tipoend */ 
    for select e.TIPOEND from ENDERECOCLIENTE e where e.CODCLIENTE = new.CODCLIENTE
      and e.TIPOEND = new.TIPOEND
    into :tipo 
    do begin
      if (tipo is not null) then 
        exception tipoenderecorepetido;   
    end 
END
