CREATE or Alter PROCEDURE TOTAL_TRIBUTOS
 ( CODMOVIMENTO INTEGER ) 
RETURNS 
 ( CODPRODUTO INTEGER,
   TRIB_FED DOUBLE PRECISION,
   TRIB_EST DOUBLE PRECISION,
   TRIB_MUN DOUBLE PRECISION,
   TOT_TRIB_FED DOUBLE PRECISION,
   TOT_TRIB_EST DOUBLE PRECISION,
   TOT_TRIB_MUN DOUBLE PRECISION,
   fonte varchar(30),
   chave varchar(10)
 )
AS 
DECLARE VARIABLE valor DOUBLE PRECISION; 
DECLARE VARIABLE nac DOUBLE PRECISION; 
DECLARE VARIABLE imp DOUBLE PRECISION; 
DECLARE VARIABLE mun DOUBLE PRECISION; 
DECLARE VARIABLE est DOUBLE PRECISION; 
DECLARE VARIABLE ncm varchar(10);
DECLARE VARIABLE origem char(2);
BEGIN
  /* Calcula os tributos da NF */ 
  tot_trib_fed = 0;
  tot_trib_est = 0;
  tot_trib_mun = 0;
  trib_fed = 0;
  trib_est = 0;
  trib_mun = 0;
  for Select md.VALTOTAL, coalesce(ncm.ALIQNAC,0), coalesce(ncm.ALIQIMP,0), 
     coalesce(ncm.MUNICIPAL,0), coalesce(ncm.ESTADUAL,0)
    , md.CODPRODUTO
    , md.NCM 
    , p.ORIGEM 
    from MOVIMENTODETALHE md , CFOP cf, NCM, PRODUTOS p
   where md.CODMOVIMENTO = :codMovimento
     and cf.CFCOD = md.CFOP 
     and NCM.NCM = md.NCM 
     and p.CODPRODUTO = md.CODPRODUTO
   into :valor, :nac, :imp, :mun, :est, :codProduto, :ncm, :origem
   do begin
     select FIRST 1 fonte, chave from IBPT 
      where (ncm = :ncm)
         or (NCM = UDF_LEFT(:ncm, 6) || '0')
         or (NCM = UDF_LEFT(:ncm, 5) || '00')
      into :fonte, :chave;
      if (fonte is null) then 
        fonte = 'IBPT';
      if (chave is null) then 
        chave = '';   
	  IF (origem = '0') then
        trib_fed = valor * (nac/100);
      ELSE
        trib_fed = valor * (imp/100);
      IF (est > 0) then   
        trib_est = valor * (est/100);
      ELSE
        trib_est = 0;
      IF (mun > 0) then   
        trib_mun = valor * (mun/100);
      ELSE
        trib_mun = 0;

      tot_trib_fed = tot_trib_fed + trib_fed;
      tot_trib_est = tot_trib_est + trib_est;
      tot_trib_mun = tot_trib_mun + trib_mun;
      suspend;
   end  
END
