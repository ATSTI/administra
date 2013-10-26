CREATE OR ALTER PROCEDURE CLIENTE_ETIQUETA4 (
    N_ETIQUETA INTEGER,
    CODCLI INTEGER,
    CODVEND INTEGER,
    UFCLI CHAR(5),
    CID VARCHAR(50),
    DDDCLI VARCHAR(5),
    TIPOENDERECO SMALLINT)
RETURNS (
    NOMECLI1 VARCHAR(60),
    ENDERECO1 VARCHAR(50),
    BAIRRO1 VARCHAR(50),
    COMPLEMENTO1 VARCHAR(50),
    CIDADE1 VARCHAR(50),
    UF1 CHAR(2),
    CEP1 VARCHAR(10),
    NOMECLI2 VARCHAR(60),
    ENDERECO2 VARCHAR(50),
    BAIRRO2 VARCHAR(50),
    COMPLEMENTO2 VARCHAR(50),
    CIDADE2 VARCHAR(50),
    UF2 CHAR(2),
    CEP2 VARCHAR(10),
    NOMECLI3 VARCHAR(60),
    ENDERECO3 VARCHAR(50),
    BAIRRO3 VARCHAR(50),
    COMPLEMENTO3 VARCHAR(50),
    CIDADE3 VARCHAR(50),
    UF3 CHAR(2),
    CEP3 VARCHAR(10),
    NOMECLI4 VARCHAR(60),
    ENDERECO4 VARCHAR(50),
    BAIRRO4 VARCHAR(50),
    COMPLEMENTO4 VARCHAR(50),
    CIDADE4 VARCHAR(50),
    UF4 CHAR(2),
    CEP4 VARCHAR(10))
AS
DECLARE VARIABLE I INTEGER;
DECLARE VARIABLE J INTEGER;
DECLARE VARIABLE COLUNA INTEGER;
DECLARE VARIABLE NOMECLI VARCHAR(55);
BEGIN
  coluna = 1;
  J = 0;
  FOR Select DISTINCT cli.NOMECLIENTE, ende.LOGRADOURO, ende.BAIRRO, 
    ende.COMPLEMENTO, ende.CIDADE, ende.CEP, ende.UF 
  from Clientes cli , ENDERECOCLIENTE ende
  Where ende.CODCLIENTE = cli.CODCLIENTE 
  and ((cli.CODCLIENTE = :CODCLI) or (:CODCLI = 0)) 
  and ende.TIPOEND = :tipoendereco 
  and ((cli.CODUSUARIO = :CODVEND) or (:CODVEND = 0))
  and ((ende.UF = :UFCLI) or (:UFCLI = 'TODOS'))
  and ((ende.CIDADE = :CID) or (:CID = 'TODAS AS CIDADES CADASTRADAS NO SISTEMA'))
  and ((ende.DDD = :DDDCLI) or (:DDDCLI = 'TODOS')) order by cli.NOMECLIENTE
  INTO :NOMECLI, :ENDERECO1, :BAIRRO1, :COMPLEMENTO1, :CIDADE1, :CEP1, :UF1
  DO BEGIN
    I = 0;
    WHILE (:I < :N_ETIQUETA) DO
    BEGIN
      if (coluna = 4) then
      begin
        nomecli4 = nomecli ;--|| cast(coluna as varchar(1)) ;
        coluna = 1;
        J = 1;
        suspend;
        nomecli2 = null;
        nomecli3 = null;
        nomecli4 = null;
      end
      if (coluna = 3) then
      begin
        nomecli3 = nomecli ;--|| cast(coluna as varchar(1));
        coluna = 4;
      end
      if (coluna = 2) then
      begin
        nomecli2 = nomecli ;--|| cast(coluna as varchar(1));
        coluna = 3;
      end
      if (coluna = 1) then
      begin
        IF (J = 0) then
        begin
          nomecli1 = nomecli ;--|| cast(coluna as varchar(1));
          coluna = 2;
        end
        IF (J = 1) THEN
           J = 0;
       end
      I=I+1;
    END
  END
  suspend;

END
