CREATE OR ALTER PROCEDURE VENDA_NF_IMPOSTOS (
    DTAINI Date,
    DTAFIM Date)
RETURNS (
    UF Varchar(2),
    VALORVENDA Double precision,
    VALORNF Double precision,
    VALORIMPOSTO Double precision)
AS
declare variable CODMOV INTEGER;
declare variable CODNAT INTEGER;
declare variable NF INTEGER;
declare variable CODV INTEGER;

BEGIN 
    
    FOR SELECT m.CODNATUREZA, v.NOTAFISCAL, ec.UF, m.CODMOVIMENTO, v.CODVENDA
    FROM MOVIMENTO m
    INNER JOIN VENDA v on v.CODMOVIMENTO = m.CODMOVIMENTO
    LEFT OUTER JOIN ENDERECOCLIENTE ec on ec.CODCLIENTE = v.CODCLIENTE
    WHERE ec.TIPOEND = 0 and v.DATAVENDA BETWEEN :DTAINI and :DTAFIM
    order by ec.UF
    INTO :CODNAT, :NF, :UF, :CODMOV, :CODV
    DO BEGIN
      VALORNF = 0;
      valorimposto = 0;
      valorvenda = 0;
      if (CODNAT = 3) then
      BEGIN
        SELECT FIRST 1 v.VALOR FROM VENDA v where v.CODMOVIMENTO = :CODMOV
        order by v.VALOR
        into :VALORVENDA;
      END  
      if ((CODNAT = 12) or (CODNAT = 15)) then
      BEGIN
      SELECT FIRST 1 nf.VALOR_PRODUTO, nf.VALOR_ICMS_SUBST from NOTAFISCAL nf where nf.CODVENDA = :CODV
      order by nf.VALOR_PRODUTO, nf.VALOR_ICMS_SUBST 
      into :VALORNF, :VALORIMPOSTO;
      END 
      SUSPEND;
    END
  
  
END

