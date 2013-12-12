SET TERM ^ ;

CREATE OR ALTER PROCEDURE EMAIL_COPIA 
 ( ANO INTEGER ) 
RETURNS 
 ( GRUPO_GERADO VARCHAR(80),
   email varchar(200),
   codemail integer)
AS 
DECLARE VARIABLE contador integer; 
DECLARE VARIABLE contadorx integer; 
BEGIN
  contador = 0;
  contadorx = 51;
  grupo_gerado = ano || '_' || cast((:contadorx-1) as varchar(4));
  FOR SELECT ec.E_MAIL FROM CLIENTES C, ENDERECOCLIENTE EC
  WHERE C.CODCLIENTE = ec.CODCLIENTE
    AND c.STATUS = 1 
    AND ec.TIPOEND = 0 
    AND ((ec.E_MAIL is not null) and (ec.E_MAIL <> ''))
  INTO :email 
  do begin 
    contador = contador + 1;
    codemail = ano || contador;
    if (contador = contadorx) then 
    begin
      contadorx = contadorx + 50; 
      grupo_gerado = ano || '_' ||  cast((:contadorx-1) as varchar(4));
    end 
    INSERT INTO EMAIL_ENVIAR (CODEMAIL, EMAIL, GRUPO, ENVIADO)
      VALUES (:codemail, :email, :grupo_gerado, 'N');      
    suspend;
  end   
END^

SET TERM ; ^
