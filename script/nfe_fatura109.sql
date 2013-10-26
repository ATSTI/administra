CREATE OR ALTER PROCEDURE NFE_FATURA (CODVENDA integer )
RETURNS (
    DATAFATURA date,
    VALOR double precision,
    NUMEROFATURA varchar(20) )
AS
DECLARE VARIABLE ve_Prazo char(10); 
DECLARE VARIABLE Prazo char(40);
DECLARE VARIABLE NF char(20);
DECLARE VARIABLE serie char(10);
DECLARE VARIABLE CFOP char(4);
DECLARE VARIABLE uf char(2);
DECLARE VARIABLE nenv char(1);
DECLARE VARIABLE VLR DOUBLE PRECISION;
DECLARE VARIABLE VLR_TOT DOUBLE PRECISION;
DECLARE VARIABLE TOT DOUBLE PRECISION;
DECLARE VARIABLE parc smallint;
DECLARE VARIABLE parcelas smallint;
DECLARE VARIABLE codm integer;
DECLARE VARIABLE cli integer;
DECLARE VARIABLE TOT_IPI DOUBLE PRECISION;
DECLARE VARIABLE vlr_base DOUBLE PRECISION;
DECLARE VARIABLE qnt DOUBLE PRECISION;
DECLARE VARIABLE ipi DOUBLE PRECISION;
DECLARE VARIABLE subst DOUBLE PRECISION;
DECLARE VARIABLE vfrete DOUBLE PRECISION;
DECLARE VARIABLE cont integer;
DECLARE VARIABLE codv integer;

-- (new.VLR_BASE*new.QUANTIDADE) valor tot cada PRODUTo
BEGIN
  VLR_TOT = 0;
  TOT = 0;
  TOT_IPI = 0;
  parc = 0; 
  /* Gera as FAtura para imprimir na NFe */ 
  select first 1 prazo, cast(notafiscal as varchar(15)), serie, CODMOVIMENTO, CODCLIENTE, VALOR_FRETE from venda where codvenda = :codvenda
  into :prazo, :nf, :serie, :codm, :cli, :vfrete;
  
  select cast(m.CONTROLE as integer) from MOVIMENTO m where m.CODMOVIMENTO = :codm
  into :cont;
  
  select v.CODVENDA from VENDA v where v.CODMOVIMENTO = :cont
  into :codv;
  
  select first 1 ec.UF from ENDERECOCLIENTE ec where ec.CODCLIENTE = :cli and ec.TIPOEND = 0
    into :uf;
  
    parc = 0;
    select first 1 ei.NAOENVFATURA from ESTADO_ICMS ei where ei.CFOP = :CFOP and ei.UF = :uf
    into :nenv;
    
    if (:nenv is null) then
        nenv = 'N';
    
    if (:nenv = 'N') then
    begin
        select sum(r.VALOR_RESTO) from RECEBIMENTO r  where r.CODVENDA = :codvenda 
		into :vlr_tot;
		
		for select r.DATAVENCIMENTO, r.via, r.VALOR_RESTO, parcelas from RECEBIMENTO r  where r.CODVENDA = :codvenda order by r.DATAVENCIMENTO, r.VIA
		into :datafatura, :numerofatura, :vlr, :parc
		do begin
		    tot = tot + vlr;
			if (parc = parcelas) then 
			  vlr = vlr_tot - tot;
			valor = vlr;  
			numerofatura = udf_trim(:NF) || '/' || UDF_TRIM(:numerofatura);
			suspend;
		end
	end
END