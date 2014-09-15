CREATE OR ALTER PROCEDURE SPESTOQUEGRUPO (
    DTA1 DATE,
    DTA2 DATE,
    GRUPO VARCHAR(50),
    PCCUSTO INTEGER )
RETURNS (
    CODPROD varchar(20),
    PRODUTO varchar(300),
    UNIDADE char(3),
    SUBGRUPO varchar(30),
    GRUPODESC VARCHAR(30),
    SALDOINI double precision,
    VLRSALDOINI double precision,
    ENTRADA double precision,
    VLRENTRADA double precision,
    SAIDA double precision,
    VLRSAIDA double precision,
    SALDOFIM double precision,
    VALORCUSTO double precision,
    CUSTOUNIT  double precision,
    cResultado varchar(60), 
    cCusto integer
     )
AS
BEGIN
  ccusto = pccusto;
  if (pccusto = 0) then 
  begin
    pccusto = 1;
    ccusto = 1;
  end 
   FOR SELECT DISTINCT COALESCE(DESCFAMILIA,'0') FROM PRODUTOS p
         LEFT OUTER JOIN FAMILIAPRODUTOS fp ON fp.DESCFAMILIA = p.FAMILIA
        WHERE ((fp.DESCFAMILIA = :GRUPO) OR
                 (:GRUPO = 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA'))
                 
   into :grupo
   DO BEGIN  
     grupodesc = grupo;
     IF (grupo = '0') then 
     begin 
       GRUPO = 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA';
       grupodesc = '';
     end   
     FOR SELECT p.CODPROD, p.PRODUTO, p.UNIDADE, p.SUBGRUPO
       , p.SALDOINI, p.VLRSALDOINI, p.ENTRADA, p.VLRENTRADA
       , p.SAIDA, p.VLRSAIDA, p.SALDOFIM, p.VALORCUSTO, p.CUSTOUNIT, p.cResultado
     FROM SPESTOQUE (:DTA1, :DTA2, 0, 999999, :GRUPO, 'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA') p
    where ((p.CCUSTO = :pccusto) OR (:pccusto = 1))
     into :CODPROD, :PRODUTO, :UNIDADE, :SUBGRUPO
       , :SALDOINI, :VLRSALDOINI, :ENTRADA, :VLRENTRADA
       , :SAIDA, :VLRSAIDA, :SALDOFIM, :VALORCUSTO, :CUSTOUNIT, :cResultado
     do begin  
       if ((saldoini > 0) or (saldofim > 0) or (entrada > 0) or (saida > 0)) then 
        SUSPEND;
     end    
  end
END