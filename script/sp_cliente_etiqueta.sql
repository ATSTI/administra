CREATE OR ALTER PROCEDURE CLIENTE_ETIQUETA (
    N_ETIQUETA Integer,
    CODCLI Integer,
    CODVEND Integer,
    UFCLI Char(5),
    CID Varchar(50),
    DDDCLI Varchar(5),
    TIPOENDERECO Smallint )
RETURNS (
    NOMECLI1 Varchar(60),
    ENDERECO1 Varchar(50),
    BAIRRO1 Varchar(50),
    COMPLEMENTO1 Varchar(50),
    CIDADE1 Varchar(50),
    UF1 Char(2),
    CEP1 Varchar(10),
    NOMECLI2 Varchar(60),
    ENDERECO2 Varchar(50),
    BAIRRO2 Varchar(50),
    COMPLEMENTO2 Varchar(50),
    CIDADE2 Varchar(50),
    UF2 Char(2),
    CEP2 Varchar(10),
    NOMECLI3 Varchar(60),
    ENDERECO3 Varchar(50),
    BAIRRO3 Varchar(50),
    COMPLEMENTO3 Varchar(50),
    CIDADE3 Varchar(50),
    UF3 Char(2),
    CEP3 Varchar(10),
    NOMECLI4 Varchar(60),
    ENDERECO4 Varchar(50),
    BAIRRO4 Varchar(50),
    COMPLEMENTO4 Varchar(50),
    CIDADE4 Varchar(50),
    UF4 Char(2),
    CEP4 Varchar(10) )
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
        nomecli4 = nomecli || cast(coluna as varchar(1)) ;
        coluna = 1;
        J = 1;
        suspend;
        nomecli2 = null;
        nomecli3 = null;
        nomecli4 = null;
      end
      if (coluna = 3) then
      begin
        nomecli3 = nomecli || cast(coluna as varchar(1));
        coluna = 4;
      end
      if (coluna = 2) then
      begin
        nomecli2 = nomecli || cast(coluna as varchar(1));
        coluna = 3;
      end
      if (coluna = 1) then
      begin
        IF (J = 0) then
        begin
          nomecli1 = nomecli || cast(coluna as varchar(1));
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