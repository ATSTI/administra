CREATE OR ALTER TRIGGER CALCULA_ICMS_ST FOR MOVIMENTODETALHE ACTIVE
BEFORE INSERT OR UPDATE POSITION 0
AS
 DECLARE VARIABLE UF char(2);
 Declare variable CICMS_SUBST double precision;
 Declare variable CICMS_SUBST_IC double precision;
 Declare variable CICMS_SUBST_IND double precision;
 Declare variable CICMS double precision;
 Declare variable IND_IPI double precision;
 Declare variable CST_P char (5);
 Declare variable CSOSN char (3);
 Declare variable ind_reduzicms double precision;
 Declare variable PESSOA char(1);   
 Declare variable ICMS_SUBST double precision;
 DECLARE VARIABLE cormva DOUBLE PRECISION;
 DECLARE VARIABLE VALOR_SUBDesc DOUBLE PRECISION;
 DECLARE VARIABLE TOTST DOUBLE PRECISION;
 DECLARE VARIABLE TOTBASEST DOUBLE PRECISION;
 DECLARE VARIABLE TOTICMS DOUBLE PRECISION;
 DECLARE VARIABLE TOTBASEICMS DOUBLE PRECISION;
 DECLARE VARIABLE TOTIPI DOUBLE PRECISION;
 DECLARE VARIABLE NUMNF integer;
 DECLARE VARIABLE NAT integer; 
 DECLARE VARIABLE CODCLI integer; 
 DECLARE VARIABLE VFRETE DOUBLE PRECISION;
 DECLARE VARIABLE CRT integer;
 DECLARE VARIABLE PIS DOUBLE PRECISION = 0;
 DECLARE VARIABLE COFINS DOUBLE PRECISION = 0;
 Declare variable IE varchar (24);
 Declare variable CSTIPI varchar(2);
 Declare variable CSTPIS varchar(2); 
 Declare variable CSTCOFINS varchar(2); 
 DECLARE VARIABLE arredondar DOUBLE PRECISION = 3;
BEGIN
    if ((new.CFOP <> '') or ((updating) and ((new.QTDE_ALT <> old.QTDE_ALT) or (new.PRECO <> old.PRECO) or (new.QUANTIDADE <> old.QUANTIDADE)))) then 
    begin
      select cast(d5 as integer) from PARAMETRO where PARAMETRO = 'EMPRESA'
        into :arredondar;
        
      if (arredondar is null) then 
        arredondar = 2;  
      
      select CRT from EMPRESA, MOVIMENTO where CODALMOXARIFADO = CCUSTO and CODMOVIMENTO = new.CODMOVIMENTO
      into :CRT;

    if ((new.VLR_BASE is null) or (new.VLR_BASE = 0)) then
    begin
      if (new.QTDE_ALT is null) then 
        new.QTDE_ALT = 0;
      
      new.VLR_BASE = UDF_ROUNDDEC(new.PRECO, :arredondar);  
      if (new.QTDE_ALT > 0) then 
        new.VLR_BASE = UDF_ROUNDDEC((new.PRECO-((new.PRECO)*(new.QTDE_ALT/100))), :arredondar);    
       
    end 

    new.ICMS_SUBSTD  = 0;
    new.ICMS_SUBST   = 0;
    new.VLR_BASEICMS = 0;
	new.VALOR_ICMS = 0;

	select first 1 ec.UF, c.CODFISCAL, m.CODCLIENTE, c.INSCESTADUAL from movimento m
	inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = m.CODCLIENTE
	inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE
	where ec.TIPOEND = 0 and m.CODMOVIMENTO = new.CODMOVIMENTO
	into :UF, :PESSOA, :CODCLI, :IE;
	
	if (:CODCLI is null) then
	begin
    select first 1 ef.UF, f.CODFISCAL, f.INSCESTADUAL from movimento m
	inner join ENDERECOFORNECEDOR ef on ef.CODFORNECEDOR = m.CODFORNECEDOR
	inner join FORNECEDOR f on f.CODFORNECEDOR = m.CODFORNECEDOR
	where ef.TIPOEND = 0 and m.CODMOVIMENTO = new.CODMOVIMENTO
	into :UF, :PESSOA, IE;
	end
	
	select first 1 COALESCE(cfp.ICMS_SUBST, 0), COALESCE(cfp.ICMS_SUBST_IC, 0), COALESCE(cfp.ICMS_SUBST_IC, 0),
	COALESCE(cfp.ICMS, 0), COALESCE(cfp.ICMS_BASE, 1), cfp.CST, COALESCE(cfp.IPI, 0), cfp.CSOSN, COALESCE(cfp.PIS, 0), COALESCE(cfp.COFINS, 0), cfp.CSTCOFINS, cfp.CSTPIS, cfp.CSTIPI
	from CLASSIFICACAOFISCALPRODUTO cfp
        where cfp.CFOP = new.CFOP and cfp.UF = :UF and cfp.cod_prod = new.CODPRODUTO
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI;
    
	if ( (not CST_P is null) or (not CSOSN is null ) )then
	begin
        new.cst = :CST_P;
        new.CSOSN = CSOSN;
        new.CSTPIS = :CSTPIS;
        new.CSTCOFINS = :CSTCOFINS;
        new.CSTIPI = :CSTIPI;
        new.PPIS = :PIS;
        new.PCOFINS = :cofins;	
		new.icms = :cicms;
      if (IND_IPI > 0) then
      begin
        new.VIPI = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) * IND_IPI/100), :arredondar);
        new.PIPI = IND_IPI;
      end
      else
      begin
        new.VIPI = 0;
        new.PIPI = 0;
      end
	  if (ind_reduzicms <= 0) then
        ind_reduzicms = 1;
	  if (ind_reduzicms > 1 )then
        ind_reduzicms = ind_reduzicms/100;
      if (CICMS > 0) then 
      begin
        new.VLR_BASEICMS = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) * ind_reduzicms), :arredondar);
        new.VALOR_ICMS = UDF_ROUNDDEC((new.VLR_BASEICMS) * (CICMS / 100), :arredondar);
      end

      ----------- TEM ST -------------
      if (CICMS_SUBST > 0) then
        new.ICMS_SUBSTD = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) *(1+(CICMS_SUBST/100))), :arredondar);
        if ( new.ICMS_SUBSTD > 0) then
            new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD * (CICMS_SUBST_IC/100))-(new.VALOR_ICMS), :arredondar);
      else
		    new.ICMS_SUBST = 0;
        new.VALOR_COFINS = UDF_ROUNDDEC(((new.VLR_BASE * new.QUANTIDADE) * COFINS) /100, :arredondar);
        new.VALOR_PIS =  UDF_ROUNDDEC(((new.VLR_BASE * new.QUANTIDADE) * PIS) /100, :arredondar);       
    end
	else
	begin
	    --new.LOTE = 'Inicio - ';
        select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
        , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI
        from ESTADO_ICMS ei
        where ei.CFOP = new.CFOP and ei.UF = :UF and ei.CODFISCAL = :PESSOA
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
             :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI;
        --if (:CICMS IS not NULL) then 
        --  new.LOTE = new.LOTE ||  '1-' || :CICMS;
        if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP e UF
        begin 
          select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
           , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI
           from ESTADO_ICMS ei
          where ei.CFOP = new.CFOP and ei.UF = :UF
           into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI;
          --if (:CICMS IS not NULL) then      
          --  new.LOTE = new.LOTE ||  '2-' || :CICMS;      
          if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP
          begin 
            select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
             , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI
             from ESTADO_ICMS ei
            where ei.CFOP = new.CFOP
             into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                  :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI;
            --if (:CICMS IS not NULL) then
            --  new.LOTE = new.LOTE ||  '3-' || :CICMS;      
          end 
        end 
        
        --if (new.VLR_BASE is null) then 
        --  new.LOTE = new.LOTE || 'VLR_BASE-Null';
        --else
        --  new.LOTE = new.LOTE || 'VLR_BASE-' || CAST(NEW.VLR_BASE AS varchar(10));
        new.cst = :CST_P;
        new.CSOSN = CSOSN;
        new.CSTPIS = :CSTPIS;
        new.CSTCOFINS = :CSTCOFINS;
        new.CSTIPI = :CSTIPI;
        new.PPIS = :PIS;
        new.PCOFINS = :cofins;
        if (IND_IPI > 0) then
        begin
            new.VIPI = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) * :IND_IPI/100), :arredondar);
            new.PIPI = IND_IPI;
        end
        else
        begin
            new.VIPI = 0;
            new.PIPI = 0;
        end
        new.CST = :cst_p;
        if (ind_reduzicms <= 0 )then
            ind_reduzicms = 1;
		if (ind_reduzicms > 1 )then
            ind_reduzicms = ind_reduzicms/100;
    
			
        if (CICMS > 0) then 
        begin
		  new.icms = :cicms;
          new.VLR_BASEICMS = UDF_ROUNDDEC((new.VLR_BASE*new.QUANTIDADE) * :ind_reduzicms, :arredondar);
          new.VALOR_ICMS = UDF_ROUNDDEC(new.VLR_BASEICMS * (CICMS/100), :arredondar);  
        end
        else
        begin
          new.VLR_BASEICMS = 0;
          new.VALOR_ICMS = 0;
        end
    
        if (CICMS_SUBST > 0) then
        begin
          if (CICMS_SUBST > 0) then
            CICMS_SUBST = 1 + (CICMS_SUBST / 100);

          if (CICMS_SUBST_IC > 0) then 
            CICMS_SUBST_IC = CICMS_SUBST_IC / 100;

          if (CICMS_SUBST_IND > 0) then 
            CICMS_SUBST_IND = CICMS_SUBST_IND / 100;
        
          --CORREÇÃO DO VALOR DO MVA QUANDO FOR PARA FORA DO ESTADO
          if ( CRT <> 0) then
          begin
            if (CICMS_SUBST_IC <> CICMS_SUBST_IND)  then
            begin
              cormva = ((1-CICMS_SUBST_IND)/ (1-CICMS_SUBST_IC));
              CICMS_SUBST = CICMS_SUBST * cormva;
            end        
          end
          else 
            CICMS_SUBST = CICMS_SUBST ;

          new.ICMS_SUBSTD = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) + new.vipi) * UDF_ROUNDDEC(:CICMS_SUBST, 4), :arredondar); 
          VALOR_SUBDesc = (new.VLR_BASE*new.QUANTIDADE) * CICMS_SUBST_IND; 
          new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD  * CICMS_SUBST_IC) - :Valor_SubDesc, :arredondar);
        end
        new.VALOR_COFINS = UDF_ROUNDDEC(((new.VLR_BASE * new.QUANTIDADE) * :COFINS) /100, :arredondar);
        new.VALOR_PIS =  UDF_ROUNDDEC(((new.VLR_BASE * new.QUANTIDADE) * :PIS) /100, :arredondar);
    end
    
    if( new.FRETE > 0) then
    begin
     if (CICMS >0) then
     begin
       new.BCFRETE = UDF_ROUNDDEC(new.frete * ind_reduzicms, :arredondar);
       new.ICMSFRETE = UDF_ROUNDDEC(new.BCFRETE * (CICMS/100), :arredondar);
     end
     if (CICMS_SUBST > 0) then 
     begin
      new.BCSTFRETE = UDF_ROUNDDEC(new.FRETE * UDF_ROUNDDEC(CICMS_SUBST, 4), :arredondar);
      VALOR_SUBDesc = new.FRETE * CICMS_SUBST_IND;
      new.STFRETE = UDF_ROUNDDEC((new.BCFRETE * CICMS_SUBST_IC) - Valor_SubDesc, :arredondar);
     end
    end
    if( new.FRETE = 0) then
    begin
      new.BCFRETE = 0;
      new.STFRETE = 0;
    new.ICMSFRETE = 0;
    new.BCSTFRETE = 0;
    end
    end
END
