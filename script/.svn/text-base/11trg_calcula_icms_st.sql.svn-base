set term ^ ;
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
 DECLARE VARIABLE aliqnac DOUBLE PRECISION;
 DECLARE VARIABLE aliqimp DOUBLE PRECISION;
 Declare variable NCM_P varchar(8);
 Declare variable origem integer;
 Declare variable CALCTRIB varchar(1); 
 DECLARE VARIABLE TOTALITENS DOUBLE PRECISION;
BEGIN
  IF ((NEW.PAGOU IS NULL) or (new.PAGOU <> 'M')) THEN  -- Calculo manual 
  begin 
	if ( (new.cfop = '') or (new.CFOP is null) ) then
            select first 1 cfp.CFOP from CLASSIFICACAOFISCALPRODUTO cfp 
            where cfp.COD_PROD = new.CODPRODUTO
            into new.CFOP;
	if ( (new.cfop = '') or (new.CFOP is null) ) then
		new.cfop = '5102';
			
    if ((new.CFOP <> '') or ((updating) and ((new.QTDE_ALT <> old.QTDE_ALT) or (new.PRECO <> old.PRECO) or (new.QUANTIDADE <> old.QUANTIDADE)))) then 
    begin
		if ( new.lote is null) then
			new.lote = '0';
		select cast(d5 as integer) from PARAMETRO where PARAMETRO = 'EMPRESA'
        into :arredondar;
        
		if (arredondar is null) then 
			arredondar = 2;
			
        if (UDF_LEFt(new.cfop,1) = '1') then 
          arredondar = 6;
          
		select FIRST 1 CRT from EMPRESA, MOVIMENTO where CODALMOXARIFADO = CCUSTO and CODMOVIMENTO = new.CODMOVIMENTO
		into :CRT;

		if (new.QTDE_ALT is null) then 
			new.QTDE_ALT = 0;
      
		new.VLR_BASE = UDF_ROUNDDEC(new.PRECO, :arredondar);  
		if (new.QTDE_ALT = 100) then
		begin  
			new.VLR_BASE = 0;    
		end
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
		
		TOTALITENS = new.VLR_BASE * new.QUANTIDADE;
	
		select first 1 COALESCE(cfp.ICMS_SUBST, 0), COALESCE(cfp.ICMS_SUBST_IC, 0), COALESCE(cfp.ICMS_SUBST_IC, 0),
		COALESCE(cfp.ICMS, 0), COALESCE(cfp.ICMS_BASE, 1), cfp.CST, COALESCE(cfp.IPI, 0), cfp.CSOSN, COALESCE(cfp.PIS, 0), COALESCE(cfp.COFINS, 0), cfp.CSTCOFINS, cfp.CSTPIS, cfp.CSTIPI,
		p.NCM, COALESCE(n.ALIQIMP, 0), COALESCE(n.ALIQNAC, 0), p.ORIGEM , c.TOTTRIB
		from CLASSIFICACAOFISCALPRODUTO cfp
		inner join PRODUTOS p on p.CODPRODUTO = cfp.COD_PROD
		inner join CFOP c on c.CFCOD = new.CFOP
		left outer join NCM n on n.NCM = p.NCM
        where cfp.CFOP = new.CFOP and cfp.UF = :UF and cfp.cod_prod = new.CODPRODUTO
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :NCM_P, :ALIQIMP, 
        :ALIQNAC, :origem, :calctrib;
    
		---------------------------------------------------------------------------------
		--------------------------INICIO DO CALCULO POR PRODUTO--------------------------
		---------------------------------------------------------------------------------
		if ( (not CST_P is null) or (not CSOSN is null ) )then
		begin
			new.cst = :CST_P;
			new.CSOSN = :CSOSN;
			new.CSTPIS = :CSTPIS;
			new.CSTCOFINS = :CSTCOFINS;
			new.CSTIPI = :CSTIPI;
			new.icms = :cicms;
      
			--CALCULO DE IPI
			if (IND_IPI > 0) then
			begin
				new.VLRBC_IPI = UDF_ROUNDDEC(TOTALITENS , :arredondar);
				new.VIPI = UDF_ROUNDDEC((TOTALITENS * IND_IPI/100), :arredondar);
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
				new.VLRBC_PIS = UDF_ROUNDDEC(TOTALITENS , :arredondar);
				new.PPIS = :PIS;
				new.VALOR_PIS = (new.VLRBC_PIS * new.PPIS)/100;
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
				new.VLRBC_COFINS = UDF_ROUNDDEC(TOTALITENS , :arredondar);
				new.PCOFINS = :cofins;	
				new.VALOR_COFINS = (new.VLRBC_COFINS * new.PCOFINS)/100;
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
						new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS + :vFrete - :vd)* ind_reduzicms), :arredondar);
					--Soma Frete na BC ICMS e Não Subtrai Desconto da BC ICMS
					else	
						new.VLR_BASEICMS = UDF_ROUNDDEC(( ((TOTALITENS + :vFrete))* ind_reduzicms), :arredondar);
				end
				else
				begin
					--Subtrair Desconto a BC ICMS 
					if (new.DESCONTO_BC <> 'True') then
						new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS - :vd )* ind_reduzicms), :arredondar);
					--Não Subtrai Desconto da BC ICMS, não soma Frete a BC ICMS
					else
					new.VLR_BASEICMS = UDF_ROUNDDEC(( TOTALITENS * ind_reduzicms), :arredondar);
				end
				new.VALOR_ICMS = UDF_ROUNDDEC((new.VLR_BASEICMS) * (:CICMS / 100), :arredondar);
			end

			----------- TEM ST -------------
			
			if (CICMS_SUBST > 0 ) then
                CICMS_SUBST = 1+ ( CICMS_SUBST/100);
            if (CICMS_SUBST_IND > 0 ) then
                CICMS_SUBST_IND = CICMS_SUBST_IND/100;
            if (CICMS_SUBST_IC > 0 ) then
                CICMS_SUBST_IC = CICMS_SUBST_IC/100;
				
			if (CICMS_SUBST > 0) then
			new.ICMS_SUBSTD = UDF_ROUNDDEC((TOTALITENS * CICMS_SUBST), :arredondar);
			if ( new.ICMS_SUBSTD > 0) then
			begin
				VALOR_SUBDesc = TOTALITENS * CICMS_SUBST_IND; 
				new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD * CICMS_SUBST_IC)-(:VALOR_SUBDESC), :arredondar);
			end     
			else	
				new.ICMS_SUBST = 0;
        
			--TOTAIS TRIBUTOS ITEM
            if(:CALCTRIB = 'T') then
			begin
                if (:origem in (0, 3, 4, 5) ) then
                    new.VLRTOT_TRIB = (new.VALTOTAL * :aliqnac)/100;
                else
                    new.VLRTOT_TRIB = (new.VALTOTAL * :aliqimp)/100;
            end
            else
                new.VLRTOT_TRIB = 0;
		end
		---------------------------------------------------------------------------------
		---------------------------FIM DO CALCULO POR PRODUTO----------------------------
		---------------------------------------------------------------------------------
		
		
		---------------------------------------------------------------------------------
		---------------------------INICIO DO CALCULO POR NCM ----------------------------
		---------------------------------------------------------------------------------
		else
		begin
            select COALESCE(cfn.ICMS_SUBST, 0), COALESCE(cfn.ICMS_SUBST_IC, 0), COALESCE(cfn.ICMS_SUBST_IND, 0), COALESCE(cfn.ICMS, 0), COALESCE(cfn.ICMS_BASE, 1)
            , cfn.CST, COALESCE(cfn.IPI, 0), cfn.CSOSN, COALESCE(cfn.PIS, 0), COALESCE(cfn.COFINS, 0), cfn.CSTCOFINS, cfn.CSTPIS, cfn.CSTIPI, p.ORIGEM, 
            COALESCE(n.ALIQIMP, 0), COALESCE(n.ALIQNAC, 0), c.TOTTRIB
            from CLASSIFICACAOFISCALNCM cfn, PRODUTOS p, ncm n, CFOP c
            where p.NCM = cfn.NCM and p.ORIGEM = cfn.ORIGEM and cfn.CFOP = new.CFOP and c.CFCOD = new.CFOP and cfn.UF = :UF and cfn.CODFISCAL = :PESSOA
            and n.NCM = p.NCM and p.CODPRODUTO = new.CODPRODUTO
            into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
            :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :origem, :aliqimp, :aliqnac, :CALCTRIB;
		
            if ( (not CST_P is null) or (not CSOSN is null ) )then
            begin
                new.cst = :CST_P;
                new.CSOSN = :CSOSN;
                new.CSTPIS = :CSTPIS;
                new.CSTCOFINS = :CSTCOFINS;
                new.CSTIPI = :CSTIPI;
                new.icms = :cicms;
        
                --CALCULO DE IPI
                if (IND_IPI > 0) then
                begin
                    new.VLRBC_IPI = UDF_ROUNDDEC(TOTALITENS , :arredondar);
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
                    new.VLRBC_PIS = UDF_ROUNDDEC(TOTALITENS, :arredondar);
                    new.PPIS = :PIS;
                    new.VALOR_PIS = (new.VLRBC_PIS * new.PPIS)/100;
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
                    new.VLRBC_COFINS = UDF_ROUNDDEC(TOTALITENS , :arredondar);
                    new.PCOFINS = :cofins;	
                    new.VALOR_COFINS = (new.VLRBC_COFINS * new.PCOFINS)/100;
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
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS + :vFrete - :vd)* ind_reduzicms), :arredondar);
					--Soma Frete na BC ICMS e Não Subtrai Desconto da BC ICMS
                        else	
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( ((TOTALITENS + :vFrete))* ind_reduzicms), :arredondar);
                    end
                    else
                    begin
                        --Subtrair Desconto a BC ICMS 
					if (new.DESCONTO_BC <> 'True') then
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS - :vd )* ind_reduzicms), :arredondar);
                        --Não Subtrai Desconto da BC ICMS, não soma Frete a BC ICMS
                        else
                        new.VLR_BASEICMS = UDF_ROUNDDEC(( TOTALITENS * ind_reduzicms), :arredondar);
                    end
                    new.VALOR_ICMS = UDF_ROUNDDEC((new.VLR_BASEICMS) * (:CICMS / 100), :arredondar);
                end

                ----------- TEM ST -------------
				
				if (CICMS_SUBST > 0 ) then
					CICMS_SUBST = 1+ ( CICMS_SUBST/100);
				if (CICMS_SUBST_IND > 0 ) then
					CICMS_SUBST_IND = CICMS_SUBST_IND/100;
				if (CICMS_SUBST_IC > 0 ) then
					CICMS_SUBST_IC = CICMS_SUBST_IC/100;
				
                if (CICMS_SUBST > 0) then
                    new.ICMS_SUBSTD = UDF_ROUNDDEC((TOTALITENS *CICMS_SUBST), :arredondar);
                if ( new.ICMS_SUBSTD > 0) then
                begin
                    VALOR_SUBDesc = TOTALITENS * CICMS_SUBST_IND; 
                    new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD * CICMS_SUBST_IC)-(:VALOR_SUBDESC), :arredondar);
                end     
                else	
                    new.ICMS_SUBST = 0;
        
                --TOTAIS TRIBUTOS ITEM
                if(:CALCTRIB = 'T') then
				begin
                    if (:origem in (0, 3, 4, 5) ) then
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqnac)/100;
                    else
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqimp)/100;
                end
                else
                    new.VLRTOT_TRIB = 0;
            end
		---------------------------------------------------------------------------------
		------------------------------FIM DO CALCULO POR NCM-----------------------------
		---------------------------------------------------------------------------------
		
		---------------------------------------------------------------------------------
		------------------------INICIO DO CALCULO POR ESTADO ICMS------------------------
		---------------------------------------------------------------------------------
            else
            begin
                --CALCULO PELA ESTADO_ICMS
                select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
                , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, c.TOTTRIB
                from ESTADO_ICMS ei, CFOP c
                where ei.CFOP = new.CFOP and ei.UF = :UF and ei.CODFISCAL = :PESSOA and c.CFCOD = new.CFOP
                into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :CALCTRIB;
            
                select n.ALIQIMP, n.ALIQNAC, p.ORIGEM from NCM n, PRODUTOS p 
                where p.CODPRODUTO = new.CODPRODUTO 
                and n.NCM = p.NCM
                into :aliqimp, :aliqnac, :origem;
            
                if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP e UF
                begin 
                    select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
                    , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, c.TOTTRIB
                    from ESTADO_ICMS ei, CFOP c
                    where ei.CFOP = new.CFOP and ei.UF = :UF and c.CFCOD = new.CFOP
                    into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                    :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :CALCTRIB;
                    if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP
                    begin 
                        select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
                        , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, c.TOTTRIB
                        from ESTADO_ICMS ei, CFOP c
                        where ei.CFOP = new.CFOP and c.CFCOD = new.CFOP
                        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                        :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :CALCTRIB;
                    end 
                end 
            
                new.cst = :CST_P;
                new.CSOSN = :CSOSN;
                new.CSTPIS = :CSTPIS;
                new.CSTCOFINS = :CSTCOFINS;
                new.CSTIPI = :CSTIPI;
            
                --CALCULO DE IPI
                if (IND_IPI > 0) then
                begin
                    new.VLRBC_IPI = UDF_ROUNDDEC(TOTALITENS , :arredondar);
                    new.VIPI = UDF_ROUNDDEC((TOTALITENS * IND_IPI/100), :arredondar);
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
                    new.VLRBC_PIS = UDF_ROUNDDEC(TOTALITENS , :arredondar);
                    new.PPIS = :PIS;
                    new.VALOR_PIS = (new.VLRBC_PIS * new.PPIS)/100;
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
                    new.VLRBC_COFINS = UDF_ROUNDDEC(TOTALITENS , :arredondar);
                    new.PCOFINS = :cofins;	
                    new.VALOR_COFINS = (new.VLRBC_COFINS * new.PCOFINS)/100;
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
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS + :vFrete - :vd)* ind_reduzicms), :arredondar);
                        --Soma Frete na BC ICMS e Não Subtrai Desconto da BC ICMS
                        else
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( ((TOTALITENS + :vFrete))* ind_reduzicms), :arredondar);
                    end
                    else
                    begin
                        --Subtrair Desconto a BC ICMS 
                        if (new.DESCONTO_BC <> 'True') then
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS - :vd )* ind_reduzicms), :arredondar);
                        --Não Subtrai Desconto da BC ICMS, não soma Frete a BC ICMS
                        else
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( TOTALITENS * ind_reduzicms), :arredondar);
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
                    new.ICMS_SUBSTD = UDF_ROUNDDEC((TOTALITENS + new.vipi) * UDF_ROUNDDEC(:CICMS_SUBST, 4), :arredondar); 
                    VALOR_SUBDesc = TOTALITENS  * CICMS_SUBST_IND; 
                    new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD  * CICMS_SUBST_IC) - :Valor_SubDesc, :arredondar);
                end
				
				--TOTAIS TRIBUTOS ITEM
				if(:CALCTRIB = 'T') then
				begin
                    if (:origem in (0, 3, 4, 5) ) then
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqnac)/100;
                    else
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqimp)/100;
                end
                else
                    new.VLRTOT_TRIB = 0;
				
				
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
    end
  end  
  else begin 
    -- Calculo Manual
    if (new.QTDE_ALT is null) then 
	  new.QTDE_ALT = 0;
      
	new.VLR_BASE = UDF_ROUNDDEC(new.PRECO, :arredondar);  
  end 
END