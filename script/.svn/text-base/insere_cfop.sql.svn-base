CREATE OR ALTER TRIGGER INSERE_CFOP for MOVIMENTODETALHE
ACTIVE before INSERT OR UPDATE POSITION 0
AS 
declare variable CFOP_CLI varchar(4);
declare variable CFOP varchar(4);
declare variable CFOPI varchar(4);
declare variable CFOPE varchar(4);
declare variable UF varchar(2);
BEGIN 
	if (new.CFOP is null) then
    begin
        select c.CFOP, ec.UF from CLIENTES c
        inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = c.CODCLIENTE
        inner join MOVIMENTO m on m.CODCLIENTE = c.CODCLIENTE
        where m.CODMOVIMENTO = new.CODMOVIMENTO and ec.TIPOEND = 0
        into :cfop_cli, :uf;

        select p.DADOS, p.D1 from PARAMETRO p
        where p.PARAMETRO = 'CFOP'
        into :cfopi, :cfope;
      
      if( not CFOP_CLI is null) then
        new.CFOP = :CFOP_CLI;
      else if(UF = 'SP') then
        new.CFOP = :CFOPI;
      else
        new.CFOP = :CFOPE;  
      
    end 
END