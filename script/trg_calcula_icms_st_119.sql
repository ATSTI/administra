CREATE OR ALTER TRIGGER CALCULA_ICMS_ST ACTIVE
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
DECLARE VARIABLE vd DOUBLE PRECISION; 
BEGIN
    if ((new.CFOP <> '') or ((updating) and ((new.QTDE_ALT <> old.QTDE_ALT) or (new.PRECO <> old.PRECO) or (new.QUANTIDADE <> old.QUANTIDADE)))) then 
    begin
      select cast(d5 as integer) from PARAMETRO where PARAMETRO = 'EMPRESA'
        into :arredondar;
        
      if (arredondar is null) then 
        arredondar = 2;  
      
      select FIRST 1 CRT from EMPRESA, MOVIMENTO where CODALMOXARIFADO = CCUSTO and CODMOVIMENTO = new.CODMOVIMENTO
      into :CRT;

      if (new.QTDE_ALT is null) then 
        new.QTDE_ALT = 0;
      
      new.VLR_BASE = UDF_ROUNDDEC(new.PRECO, :arredondar);  
      if (new.QTDE_ALT > 0) then
      begin  
        vd = UDF_ROUNDDEC(((new.PRECO)*(new.QTDE_ALT/100)), :arredondar);
        new.VLR_BASE = UDF_ROUNDDEC((new.PRECO - :vd), :arredondar);    
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
	   new.LOTE = '1';
        new.cst = :CST_P;
        new.CSOSN = CSOSN;
        new.CSTPIS = :CSTPIS;
        new.CSTCOFINS = :CSTCOFINS;
        new.CSTIPI = :CSTIPI;
		new.icms = :cicms;
      
      --CALCULO DE IPI
      if (IND_IPI > 0) then
      begin
        new.VLRBC_IPI = UDF_ROUNDDEC((new.VLR_BASE*new.QUANTIDADE) , :arredondar);
        new.VIPI = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) * IND_IPI/100), :arredondar);
        new.PIPI = IND_IPI;
      end
      else
      begin
        new.VLRBC_IPI = 0;
        new.VIPI = 0;
        new.PIPI = 0;
      end
      
      --CALCULO DE PIS
      if (PIS > 0) then
      begin
        new.VLRBC_PIS = UDF_ROUNDDEC((new.VLR_BASE*new.QUANTIDADE) , :arredondar);
        new.PPIS = :PIS;
        new.VALOR_PIS = new.VLRBC_PIS * new.PPIS;
      end
      else
      begin
        new.VLRBC_PIS = 0;
        new.PPIS = 0;
        new.VALOR_PIS = 0;
      end
      
      --CALCULO DO COFINS
      if (cofins > 0) then
      begin
        new.VLRBC_COFINS = UDF_ROUNDDEC((new.VLR_BASE*new.QUANTIDADE) , :arredondar);
        new.PCOFINS = :cofins;	
        new.VALOR_COFINS = new.VLRBC_COFINS * new.PCOFINS;
      end
      else
      begin
        new.VLRBC_COFINS = 0;
        new.PCOFINS = 0;	
        new.VALOR_COFINS = 0;
      end
      
	  if (ind_reduzicms <= 0) then
        ind_reduzicms = 1;
	  if (ind_reduzicms > 1 )then
        ind_reduzicms = ind_reduzicms/100;

      --CALCULO DO ICMS
      if (CICMS > 0) then 
      begin
        vFrete = new.FRETE;
        vd     = new.VALOR_DESCONTO;
        if (vFrete is null) then 
          vFrete = 0;
          
        if (vd is null) then 
          vd = 0;   
        
        --Calculos do ICMS
        if (new.FRETE_BC = 'True') then
        begin
            --Somar Frete a BC ICMS e Subtrai Desconto a BC ICMS
            if (new.DESCONTO_BC = 'True') then
                new.VLR_BASEICMS = UDF_ROUNDDEC(( ((new.VLR_BASE*new.QUANTIDADE) + :vFrete - :vd)* ind_reduzicms), :arredondar);
            --Soma Frete na BC ICMS e Não Subtrai Desconto da BC ICMS
            else
                new.VLR_BASEICMS = UDF_ROUNDDEC(( (((new.VLR_BASE*new.QUANTIDADE) + :vFrete))* ind_reduzicms), :arredondar);
        end
        else
        begin
            --Subtrair Desconto a BC ICMS 
            if (new.DESCONTO_BC <> 'True') then
                new.VLR_BASEICMS = UDF_ROUNDDEC(( ((new.VLR_BASE*new.QUANTIDADE) - :vd )* ind_reduzicms), :arredondar);
            --Não Subtrai Desconto da BC ICMS, não soma Frete a BC ICMS
            else
              new.VLR_BASEICMS = UDF_ROUNDDEC(( (new.VLR_BASE*new.QUANTIDADE) * ind_reduzicms), :arredondar);
        end
        new.VALOR_ICMS = UDF_ROUNDDEC((new.VLR_BASEICMS) * (:CICMS / 100), :arredondar);
      end

      ----------- TEM ST -------------
      if (CICMS_SUBST > 0) then
        new.ICMS_SUBSTD = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) *(1+(CICMS_SUBST/100))), :arredondar);
        if ( new.ICMS_SUBSTD > 0) then
        begin
           VALOR_SUBDesc = ((new.VLR_BASE*new.QUANTIDADE) + new.vipi) * (CICMS_SUBST_IND/100); 
            new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD * (CICMS_SUBST_IC/100))-(:VALOR_SUBDESC), :arredondar);
        end     
      else
		    new.ICMS_SUBST = 0;
        --TOTAIS TRIBUTOS ITEM
      new.VLRTOT_TRIB = new.VALOR_COFINS + new.VALOR_PIS + new.VALOR_ICMS + new.ICMS_SUBST + new.VIPI;
    end
	else
	begin
        select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
        , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI
        from ESTADO_ICMS ei
        where ei.CFOP = new.CFOP and ei.UF = :UF and ei.CODFISCAL = :PESSOA
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
             :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI;

        if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP e UF
        begin 
          select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
           , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI
           from ESTADO_ICMS ei
          where ei.CFOP = new.CFOP and ei.UF = :UF
           into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI;
          if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP
          begin 
            select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
             , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI
             from ESTADO_ICMS ei
            where ei.CFOP = new.CFOP
             into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                  :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI;
          end 
        end 
        
        new.cst = :CST_P;
        new.CSOSN = CSOSN;
        new.CSTPIS = :CSTPIS;
        new.CSTCOFINS = :CSTCOFINS;
        new.CSTIPI = :CSTIPI;
        
        --CALCULO DE IPI
        if (IND_IPI > 0) then
        begin
            new.VLRBC_IPI = UDF_ROUNDDEC((new.VLR_BASE*new.QUANTIDADE) , :arredondar);
            new.VIPI = UDF_ROUNDDEC(((new.VLR_BASE*new.QUANTIDADE) * IND_IPI/100), :arredondar);
            new.PIPI = IND_IPI;
        end
        else
        begin
            new.VLRBC_IPI = 0;
            new.VIPI = 0;
            new.PIPI = 0;
        end
        
        --CALCULO DE PIS
        if (PIS > 0) then
        begin
            new.VLRBC_PIS = UDF_ROUNDDEC((new.VLR_BASE*new.QUANTIDADE) , :arredondar);
            new.PPIS = :PIS;
            new.VALOR_PIS = new.VLRBC_PIS * new.PPIS;
        end
        else
        begin
            new.VLRBC_PIS = 0;
            new.PPIS = 0;
            new.VALOR_PIS = 0;
        end
      
        --CALCULO DO COFINS
        if (cofins > 0) then
        begin
            new.VLRBC_COFINS = UDF_ROUNDDEC((new.VLR_BASE*new.QUANTIDADE) , :arredondar);
            new.PCOFINS = :cofins;	
            new.VALOR_COFINS = new.VLRBC_COFINS * new.PCOFINS;
        end
        else
        begin
            new.VLRBC_COFINS = 0;
            new.PCOFINS = 0;	
            new.VALOR_COFINS = 0;
        end
        
        if (ind_reduzicms <= 0 )then
            ind_reduzicms = 1;
		if (ind_reduzicms > 1 )then
            ind_reduzicms = ind_reduzicms/100;

		new.icms = :cicms;
        new.CST = :cst_p;
        
        --Calculos do ICMS        
        if (CICMS > 0) then 
        begin
          vFrete = new.FRETE;
          vd     = new.VALOR_DESCONTO;
          if (vFrete is null) then 
            vFrete = 0;
          
          if (vd is null) then 
            vd = 0;   
            
            if (new.FRETE_BC = 'True') then
            begin
                --Somar Frete a BC ICMS e Subtrai Desconto a BC ICMS
                if (new.DESCONTO_BC = 'True') then
                    new.VLR_BASEICMS = UDF_ROUNDDEC(( ((new.VLR_BASE*new.QUANTIDADE) + :vFrete - :vd)* ind_reduzicms), :arredondar);
                --Soma Frete na BC ICMS e Não Subtrai Desconto da BC ICMS
                else
                    new.VLR_BASEICMS = UDF_ROUNDDEC(( (((new.VLR_BASE*new.QUANTIDADE) + :vFrete))* ind_reduzicms), :arredondar);
            end
            else
            begin
                --Subtrair Desconto a BC ICMS 
                if (new.DESCONTO_BC <> 'True') then
                    new.VLR_BASEICMS = UDF_ROUNDDEC(( ((new.VLR_BASE*new.QUANTIDADE) - :vd )* ind_reduzicms), :arredondar);
                --Não Subtrai Desconto da BC ICMS, não soma Frete a BC ICMS
                else
                new.VLR_BASEICMS = UDF_ROUNDDEC(( (new.VLR_BASE*new.QUANTIDADE) * ind_reduzicms), :arredondar);
            end
            new.VALOR_ICMS = UDF_ROUNDDEC((new.VLR_BASEICMS) * (:CICMS / 100), :arredondar);
        end
        else
        begin
          new.VLR_BASEICMS = 0;
          new.VALOR_ICMS = 0;
        end
        
        --Ajustes Para calculo da ST
        if (CICMS_SUBST > 0) then
        begin
          if (CICMS_SUBST > 0) then
            CICMS_SUBST = 1 + (CICMS_SUBST / 100);

          if (CICMS_SUBST_IC > 0) then 
            CICMS_SUBST_IC = CICMS_SUBST_IC / 100;

          if (CICMS_SUBST_IND > 0) then 
            CICMS_SUBST_IND = CICMS_SUBST_IND / 100;
        
          --CORRECAO DO VALOR DO MVA QUANDO FOR PARA FORA DO ESTADO
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
          VALOR_SUBDesc = ((new.VLR_BASE*new.QUANTIDADE) + new.vipi) * CICMS_SUBST_IND; 
          new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD  * CICMS_SUBST_IC) - :Valor_SubDesc, :arredondar);
        end
        new.VALOR_COFINS = UDF_ROUNDDEC(((new.VLR_BASE * new.QUANTIDADE) * :COFINS) /100, :arredondar);
        new.VALOR_PIS =  UDF_ROUNDDEC(((new.VLR_BASE * new.QUANTIDADE) * :PIS) /100, :arredondar);
    end
        new.VLRTOT_TRIB = new.VALOR_COFINS + new.VALOR_PIS + new.VALOR_ICMS + new.ICMS_SUBST + new.VIPI;
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