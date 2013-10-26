CREATE OR ALTER PROCEDURE  PROGRAMACAORECEBIMENTO( DATAINI                          DATE
                                       , DATAFIM                          DATE
                                       , RAZAO                            VARCHAR( 100 ) )
RETURNS ( NOTAF                            VARCHAR( 18 )
        , CLIENTE                          VARCHAR( 50 )
        , EMISSAO                          DATE
        , VALORNF                          DOUBLE PRECISION
        , VENCIMENTO                       DATE
        , TOTALGERAL                       DOUBLE PRECISION
        , DATAREC                          DATE
        , DATAFINAL                        DATE
        , NOTAFISCAL                       Integer
        , CFOP		                       varchar(20)
		, PROT							   varchar(20)	)
AS
declare variable codmov integer;
DECLARE VARIABLE V_DIA INTEGER;
BEGIN
  /* Procedure body */
  DATAFINAL = dataini - 1;
  while (:DATAFINAL <= :DATAFIM) do
  begin
    DATAFINAL = udf_IncDay(:DATAFINAL, 7);
    DATAREC = udf_IncDay(:DATAFINAL, 0);
    For select rc.TITULO, rc.EMISSAO, rc.DATAVENCIMENTO, rc.VALOR_RESTO, cl.NOMECLIENTE,v.notafiscal, m.codmovimento
      from RECEBIMENTO rc inner join CLIENTES cl on cl.CODCLIENTE = rc.CODCLIENTE
       inner join venda v on v.codvenda = rc.codvenda
       inner join movimento m on m.codmovimento = v.codmovimento
        where rc.DATAVENCIMENTO BETWEEN :DATAINI and :DATAFINAL 
        and cl.RAZAOSOCIAL = :RAZAO  
    into :NOTAF, :EMISSAO, :VENCIMENTO , :VALORNF, :CLIENTE, :notafiscal, :codmov do
    begin
		select first 1 nf.CFOP, nf.PROTOCOLOCANC from movimento m
		inner join venda v on v.codmovimento = m.codmovimento
		inner join notafiscal nf on nf.codvenda = v.codvenda
		where m.controle = :codmov
		into :CFOP, :PROT;
		V_DIA = EXTRACT(WEEKDAY FROM DATAREC);
		if (:V_DIA = 0) THEN 
			DATAREC = udf_IncDay(:DATAREC, 4);
		else if (:V_DIA = 1) THEN 
			DATAREC = udf_IncDay(:DATAREC, 3);
		else if (:V_DIA = 2) THEN 
			DATAREC = udf_IncDay(:DATAREC, 2);
		else if (:V_DIA = 3) THEN 
			DATAREC = udf_IncDay(:DATAREC, 1);
		SUSPEND;
	end
		DATAINI = udf_IncDay(:DATAINI, 7);
  end
END
