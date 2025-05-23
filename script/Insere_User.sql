CREATE OR ALTER TRIGGER INSERE_USER FOR FUNCIONARIO 
ACTIVE AFTER INSERT OR UPDATE POSITION 0
AS 
DECLARE VARIABLE PERFIL VARCHAR(15);
DECLARE VARIABLE COD INTEGER ;

BEGIN 
    /* enter trigger code here */ 
    IF (NEW.RECEBE_COMISSAO = 'V') THEN
    BEGIN
      perfil = 'VENDEDOR';
    END
    IF (NEW.RECEBE_COMISSAO = 'C') THEN
    BEGIN
      perfil = 'COMPRADOR';
    END
    IF (NEW.RECEBE_COMISSAO = 'A') THEN
    BEGIN
      perfil = 'AMBOS';
    END

    select  CODUSUARIO from usuario WHERE NOMEUSUARIO = OLD.nome_funcionario
     into :cod;
    select  CODUSUARIO from usuario WHERE CODUSUARIO = NEW.COD_FUNCIONARIO
     into :cod;

    if (((NEW.RECEBE_COMISSAO = 'V') OR (NEW.RECEBE_COMISSAO = 'C') or (NEW.RECEBE_COMISSAO = 'A')) AND (cod IS NULL)) then
    BEGIN
        INSERT INTO USUARIO(CODUSUARIO, NOMEUSUARIO, STATUS, PERFIL)
              VALUES (NEW.COD_FUNCIONARIO, NEW.NOME_FUNCIONARIO, 1, :PERFIL);
         -- NEW.CODUSUARIO = GEN_ID(GEN_USER, 0);   
          WHEN SQLCODE -803 DO
            EXCEPTION E_ERROCHAVEPRIMARIA;
    END
    if (((NEW.RECEBE_COMISSAO = 'V') OR (NEW.RECEBE_COMISSAO = 'C') OR (NEW.RECEBE_COMISSAO = 'A')) AND (cod IS NOT NULL)) then
    BEGIN
       UPDATE usuario SET perfil = :perfil, NOMEUSUARIO = NEW.NOME_FUNCIONARIO
          WHERE CODUSUARIO = :cod;
    END
END
