SET TERM ^ ;
CREATE OR ALTER PROCEDURE DATA_EXTENSO (
    VENCIMENTO DATE )
RETURNS (
    DATAEXTENSO VARCHAR(200) )
AS
DECLARE dia varchar(50);
DECLARE mes varchar(50);
DECLARE ano varchar(50);
begin
    select * from NUMERO_POR_EXTENSO2(extract(day from :VENCIMENTO)) as Dia
    into :dia;
    select * from NUMERO_POR_EXTENSO2(extract(month from :VENCIMENTO)) as Mes
    into :mes;
    select * from NUMERO_POR_EXTENSO2(extract(year from :VENCIMENTO)) as Ano
    into :ano;
    DATAEXTENSO = :dia || ' do ' || :mes || ' de ' || :ano;
  SUSPEND;
  
end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE DATA_EXTENSO TO  SYSDBA;

