SET TERM ^ ;

CREATE PROCEDURE exclui_email_repetido
AS 
DECLARE VARIABLE cod_mail integer; 
DECLARE VARIABLE total integer;
DECLARE VARIABLE email varchar(300); 
BEGIN
  /* write your code here */ 
  for SELECT email, count(email)
    FROM email_enviar
    GROUP BY email
    HAVING (Count(email))>1 
   into :email, total 
   do begin 
     select first 1 eem.CODEMAIL from EMAIL_ENVIAR eem where eem.EMAIL = :email order by eem.CODEMAIL 
       into :cod_mail;
     delete from email_enviar where email = :email and codemail <> :cod_mail;  
       
   end  
END^

SET TERM ; ^
