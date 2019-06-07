set term ^ ;
ALTER TRIGGER CALCULA_ICMS_ST ACTIVE
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
 Declare variable CFOP_MOV varchar (30);
 Declare variable CSTIPI varchar(2);
 Declare variable CSTPIS varchar(2); 
 Declare variable CSTCOFINS varchar(2); 
 Declare variable ALIQ_CUPOM char(4); 
 DECLARE VARIABLE arredondar DOUBLE PRECISION = 6;
 DECLARE VARIABLE vd DOUBLE PRECISION;
 DECLARE VARIABLE aliqnac DOUBLE PRECISION;
 DECLARE VARIABLE aliqimp DOUBLE PRECISION;
 DECLARE VARIABLE aliq_est DOUBLE PRECISION;
 DECLARE VARIABLE aliq_mun DOUBLE PRECISION;
 Declare variable NCM_P varchar(8);
 Declare variable origem integer;
 Declare variable NATUREZA integer;
 Declare variable CALCTRIB varchar(1); 
 Declare variable UF_EMPRESA char(2); 
 DECLARE VARIABLE TOTALITENS DOUBLE PRECISION;
 DECLARE VARIABLE vBCUFDest DOUBLE PRECISION = 0;
 DECLARE VARIABLE pFCPUFDest DOUBLE PRECISION = 0; 
 DECLARE VARIABLE pICMSUFDest DOUBLE PRECISION = 0;
 DECLARE VARIABLE pICMSInter DOUBLE PRECISION = 0;
 DECLARE VARIABLE pICMSInterPart DOUBLE PRECISION = 0;
 DECLARE VARIABLE vFCPUFDest DOUBLE PRECISION = 0;
 DECLARE VARIABLE vICMSUFDest DOUBLE PRECISION = 0;
 DECLARE VARIABLE vICMSUFRemet DOUBLE PRECISION = 0;
 DECLARE VARIABLE CST_IPI_CENQ CHAR(3) = '999';
 DECLARE VARIABLE CEST CHAR(7) = '';
 DECLARE VARIABLE arrend_txt CHAR(7) = '';
 DECLARE VARIABLE origem_p integer;
 DECLARE VARIABLE redBasePIS DOUBLE PRECISION = 0;
 DECLARE VARIABLE redBaseCofins DOUBLE PRECISION = 0;
 DECLARE VARIABLE redBaseIPI DOUBLE PRECISION = 0;
BEGIN

  -- versao 3.0.0.16
  -- versao 4.0.0.0  04/01/2016
  -- versao 4.0.0.10 15/03/2016 - acrescentado o CEST
  -- versao 5.0.0.0  11/07/2018 , arrumado calculo DIFAL 
  -- suspendo linha abaixo, muito complexo e tem o CFOP 
  -- 05-04-2019 acrescentei regra produto CST - usando o ESTADO_ICMS CST e  o CST DO PRODUTO 
  new.SUITE = ''; 
  new.Aliq_CUPOM = 'II';
   
  select d4  from PARAMETRO where PARAMETRO = 'EMPRESA' -- CASAS DECIMAIS VENDA
    into :arrend_txt;
  if (arrend_txt <> '') then   
    arredondar = cast(arrend_txt as Integer);
        
  if (arredondar is null) then 
	arredondar = 8;
			
  if (UDF_LEFt(new.cfop,1) = '1') then 
    arredondar = 10;  
  
  IF ((NEW.PAGOU IS NULL) or (new.PAGOU <> 'M')) THEN  -- Se nao for Calculo manual 
  begin 
  
    select first 1 emp.UF from EMPRESA emp
      into :UF_EMPRESA; 
  
	select FIRST 1 CRT from EMPRESA , MOVIMENTO where CODALMOXARIFADO = CCUSTO and CODMOVIMENTO = new.CODMOVIMENTO
	  into :CRT;  

	select FIRST 1 CODNATUREZA, CASE WHEN CODNATUREZA in (2,3, 7, 12,15,16) THEN CODCLIENTE  WHEN CODNATUREZA in (1,4, 20, 21) THEN CODFORNECEDOR
	 ELSE 0 end from MOVIMENTO where CODMOVIMENTO = new.CODMOVIMENTO
	  into :NATUREZA, :CODCLI; 
	  
	if (natureza in (1,4,20,21)) then 
	begin 
      select first 1 ef.UF, f.CODFISCAL, f.INSCESTADUAL from FORNECEDOR f
	   left outer join ENDERECOFORNECEDOR ef on ef.CODFORNECEDOR = f.CODFORNECEDOR
	   where f.CODFORNECEDOR = :codCli
	     and ef.TIPOEND = 0 
	    into :UF, :PESSOA, :IE;
	end   

	if (natureza in (2,3, 7,12,15,16)) then 
	begin 
      select first 1 ec.UF, c.CODFISCAL, c.INSCESTADUAL from Clientes c
	   left outer join ENDERECOCLIENTE ec on ec.CODCLIENTE = c.CODCLIENTE
	   where c.CODCLIENTE = :codCli
	     and ec.TIPOEND = 0 
	    into :UF, :PESSOA, :IE;
	end  
	
	--buscar o Cest pelo NCM 
	select p.NCM, COALESCE(p.CEST, COALESCE(ncm.CEST, '')), p.origem from produtos p 
	 inner join ncm on ncm.NCM = p.NCM  
	 where p.CODPRODUTO = new.CODPRODUTO
	  into :NCM_P, :CEST, :origem_p;
 
       if (new.ORIGEM is null) then  
          new.origem = cast(:origem_p as char(2));
  
       if (CEST <> '') then
          new.CEST = :CEST;

    if ((new.cfop = '') or (new.CFOP is null)) then
	begin
      select first 1 bc.CFOP_MOV from busca_cfop(:UF, :UF_EMPRESA, :NATUREZA, :NCM_P, new.CODPRODUTO, :PESSOA) bc
        into :cfop_mov;        
      new.CFOP = :cfop_mov;   
    end    

	if ( (new.cfop = '') or (new.CFOP is null) ) then
	begin 
	  SELECT TRIM(DADOS) FROM PARAMETRO WHERE PARAMETRO = 'CFOP'
	    INTO :CFOP_MOV;
	  new.cfop = :CFOP_MOV;
	end 	
			
	-- IF-01		
    if ((new.CFOP <> '') or ((updating) and ((new.QTDE_ALT <> old.QTDE_ALT) or (new.PRECO <> old.PRECO) or (new.QUANTIDADE <> old.QUANTIDADE)))) then 
    begin
		if ( new.lote is null) then
			new.lote = '0';

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

	
		if (:CODCLI is null) then
		begin
			select first 1 ef.UF, f.CODFISCAL, f.INSCESTADUAL from movimento m
			inner join ENDERECOFORNECEDOR ef on ef.CODFORNECEDOR = m.CODFORNECEDOR
			inner join FORNECEDOR f on f.CODFORNECEDOR = m.CODFORNECEDOR
			where ef.TIPOEND = 0 and m.CODMOVIMENTO = new.CODMOVIMENTO
			into :UF, :PESSOA, IE;
		end
		
		TOTALITENS = new.VLR_BASE * new.QUANTIDADE;
	
		select first 1 COALESCE(cfp.ICMS_SUBST, 0), COALESCE(cfp.ICMS_SUBST_IC, 0), COALESCE(cfp.ICMS_SUBST_IND, 0),
		COALESCE(cfp.ICMS, 0), COALESCE(cfp.ICMS_BASE, 1), cfp.CST, COALESCE(cfp.IPI, 0), cfp.CSOSN, COALESCE(cfp.PIS, 0), COALESCE(cfp.COFINS, 0), cfp.CSTCOFINS, cfp.CSTPIS, cfp.CSTIPI,
		p.NCM, COALESCE(n.ALIQIMP, 0), COALESCE(n.ALIQNAC, 0), p.ORIGEM , c.TOTTRIB, cfp.ALIQ_CUPOM, 
		COALESCE(vBCUFDest, 0), COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0),
		COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999')
		, COALESCE(n.ESTADUAL,0), COALESCE(n.MUNICIPAL,0) 
		from CLASSIFICACAOFISCALPRODUTO cfp
		inner join PRODUTOS p on p.CODPRODUTO = cfp.COD_PROD
		inner join CFOP c on c.CFCOD = cfp.CFOP 
		left outer join NCM n on n.NCM = p.NCM
        where cfp.CFOP = new.CFOP and cfp.UF = :UF and cfp.cod_prod = new.CODPRODUTO
        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :NCM_P, :ALIQIMP, 
        :ALIQNAC, :origem, :calctrib, :aliq_cupom, 
        :vBCUFDest, :pFCPUFDest, :pICMSUFDest, :pICMSInter, :pICMSInterPart, :vFCPUFDest, :vICMSUFDest, :vICMSUFRemet, :CST_IPI_CENQ,
        :aliq_est, :aliq_mun;
    

		---------------------------------------------------------------------------------
		--------------------------INICIO DO CALCULO POR PRODUTO--------------------------
		---------------------------------------------------------------------------------
		if ( (not CST_P is null) or (not CSOSN is null ) )then
		begin
		   new.SUITE = 'Trib. Produto';
			new.cst = :CST_P;
			new.CSOSN = :CSOSN;
			new.CSTPIS = :CSTPIS;
			new.CSTCOFINS = :CSTCOFINS;
			new.CSTIPI = :CSTIPI;
			new.icms = :cicms;
			new.Aliq_cupom = :aliq_cupom;

      
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
					-- Somar Frete a BC ICMS e Subtrai Desconto a BC ICMS	
					if (new.DESCONTO_BC = 'True') then
						new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS + :vFrete - :vd)* ind_reduzicms), :arredondar);
					
					-- Soma Frete na BC ICMS e Nao Subtrai Desconto da BC ICMS
					else	
						new.VLR_BASEICMS = UDF_ROUNDDEC(( ((TOTALITENS + :vFrete))* ind_reduzicms), :arredondar);
				end
				else
				begin
					-- Subtrair Desconto a BC ICMS 
					if (new.DESCONTO_BC <> 'True') then
						new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS - :vd )* ind_reduzicms), :arredondar);
					-- Nao Subtrai Desconto da BC ICMS, nao soma Frete a BC ICMS
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
			new.ICMS_SUBSTD = UDF_ROUNDDEC(((TOTALITENS + new.VIPI) * CICMS_SUBST), :arredondar);
			if ( new.ICMS_SUBSTD > 0) then
			begin
				VALOR_SUBDesc = TOTALITENS * CICMS_SUBST_IND; 
				new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD * CICMS_SUBST_IC)-(VALOR_SUBDesc), :arredondar);
				--new.VBCSTRET = TOTALITENS;
				--new.VICMSSTRET = new.ICMS_SUBST;
			end     
			else	
				new.ICMS_SUBST = 0;
				
        
			--TOTAIS TRIBUTOS ITEM
			-- 28-07-2016 calculando abaixo
			/*
            if(:CALCTRIB = 'T') then
			begin
                if (:origem in (0, 3, 4, 5) ) then
                begin
                  new.VLRTOT_TRIB = (new.VALTOTAL * (:aliqnac/100)) + 
                    (new.VALTOTAL * (:aliq_est/100)) + 
                    (new.VALTOTAL * (:aliq_mun/100));
                end      
                else begin 
                    new.VLRTOT_TRIB = (new.VALTOTAL * :aliqimp)/100;
                end    
            end
            else
                new.VLRTOT_TRIB = 0;
            */    
		end
		---------------------------------------------------------------------------------
		---------------------------FIM DO CALCULO POR PRODUTO----------------------------
		---------------------------------------------------------------------------------
		
		
		---------------------------------------------------------------------------------
		---------------------------INICIO DO CALCULO POR NCM ----------------------------
		---------------------------------------------------------------------------------
		if (new.SUITE = '') then 
		begin
            select COALESCE(cfn.ICMS_SUBST, 0), COALESCE(cfn.ICMS_SUBST_IC, 0), COALESCE(cfn.ICMS_SUBST_IND, 0), COALESCE(cfn.ICMS, 0), COALESCE(cfn.ICMS_BASE, 1)
            , cfn.CST, COALESCE(cfn.IPI, 0), cfn.CSOSN, COALESCE(cfn.PIS, 0), COALESCE(cfn.COFINS, 0), cfn.CSTCOFINS, cfn.CSTPIS, cfn.CSTIPI, p.ORIGEM, 
            COALESCE(n.ALIQIMP, 0), COALESCE(n.ALIQNAC, 0), c.TOTTRIB, cfn.ALIQ_CUPOM,
            COALESCE(vBCUFDest, 0), COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0),
	     COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999') 
	     , COALESCE(n.ESTADUAL,0), COALESCE(n.MUNICIPAL,0) 
	     , COALESCE(cfn.REDBASEPIS,0)
	     , COALESCE(cfn.REDBASECOFINS,0)
	     , COALESCE(cfn.REDBASEIPI,0)
            from CLASSIFICACAOFISCALNCM cfn, PRODUTOS p, ncm n, CFOP c
            where p.NCM = cfn.NCM and p.ORIGEM = cfn.ORIGEM and cfn.CFOP = new.CFOP and c.CFCOD = new.CFOP and cfn.UF = :UF and cfn.CODFISCAL = :PESSOA
            and n.NCM = p.NCM and p.CODPRODUTO = new.CODPRODUTO
            into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
            :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :origem, :aliqimp, :aliqnac, :CALCTRIB, :aliq_cupom,
            :vBCUFDest, :pFCPUFDest, :pICMSUFDest, :pICMSInter, :pICMSInterPart, :vFCPUFDest, :vICMSUFDest, :vICMSUFRemet
            , :CST_IPI_CENQ, :aliq_est, :aliq_mun, :redBasePIS, :redBaseCOFINS, :redBaseIPI;
		
            if ( (not CST_P is null) or (not CSOSN is null ) )then
            begin
              new.SUITE = 'Trib. NCM';
                new.cst = :CST_P;
                new.CSOSN = :CSOSN;
                new.CSTPIS = :CSTPIS;
                new.CSTCOFINS = :CSTCOFINS;
                new.CSTIPI = :CSTIPI;
                new.icms = :cicms;
                new.Aliq_cupom = :aliq_cupom;

                if (redBasePIS <= 0) then
				  redBasePis = 1;
                if (redBasePis > 1 )then
                  redBasePis = redBasePis/100;

                if (redBaseCOFINS <= 0) then
				  redBaseCOFINS = 1;
                if (redBaseCOFINS > 1 )then
                  redBaseCOFINS = redBaseCOFINS/100;

                if (redBaseIPI <= 0) then
				  redBaseIPI = 1;
                if (redBaseIPI > 1 )then
                  redBaseIPI = redBaseIPI/100;
        
                --CALCULO DE IPI
                if (IND_IPI > 0) then
                begin
                    new.VLRBC_IPI = UDF_ROUNDDEC(TOTALITENS * redBaseIPI , :arredondar);
                    new.VIPI = UDF_ROUNDDEC((((new.VLR_BASE*new.QUANTIDADE)*redBaseIPI) * IND_IPI/100), :arredondar);
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
                    new.VLRBC_PIS = UDF_ROUNDDEC((TOTALITENS * redBasePis), :arredondar);
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
                    new.VLRBC_COFINS = UDF_ROUNDDEC((TOTALITENS * redBaseCofins), :arredondar);
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
					--Soma Frete na BC ICMS e Nao Subtrai Desconto da BC ICMS
                        else	
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( ((TOTALITENS + :vFrete))* ind_reduzicms), :arredondar);
                    end
                    else
                    begin
                        --Subtrair Desconto a BC ICMS 
					if (new.DESCONTO_BC <> 'True') then
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS - :vd )* ind_reduzicms), :arredondar);
                        --Nao Subtrai Desconto da BC ICMS, nao soma Frete a BC ICMS
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
                    new.ICMS_SUBSTD = UDF_ROUNDDEC(((TOTALITENS + new.VIPI) *CICMS_SUBST), :arredondar);
                if ( new.ICMS_SUBSTD > 0) then
                begin
                    VALOR_SUBDesc = TOTALITENS * CICMS_SUBST_IND; 
                    new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD * CICMS_SUBST_IC)-(VALOR_SUBDesc), :arredondar);
                end     
                else	
                    new.ICMS_SUBST = 0;
        
                --TOTAIS TRIBUTOS ITEM
                -- 28-07-2016 calculando abaixo
                /*
                if(:CALCTRIB = 'T') then
				begin
                    if (:origem in (0, 3, 4, 5) ) then
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqnac)/100;
                    else
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqimp)/100;
                end
                else
                    new.VLRTOT_TRIB = 0;
                */    
            end
		---------------------------------------------------------------------------------
		------------------------------FIM DO CALCULO POR NCM-----------------------------
		---------------------------------------------------------------------------------
		
		---------------------------------------------------------------------------------
		------------------------INICIO DO CALCULO POR ESTADO ICMS------------------------
		---------------------------------------------------------------------------------
            if (new.SUITE = '') then 
            begin
                select COALESCE(n.ALIQIMP,0), COALESCE(n.ALIQNAC,0), p.ORIGEM, 
                  COALESCE(n.ESTADUAL,0), COALESCE(n.MUNICIPAL,0), p.CST from NCM n, PRODUTOS p 
                where p.CODPRODUTO = new.CODPRODUTO 
                and n.NCM = p.NCM
                into :aliqimp, :aliqnac, :origem, :aliq_est, :aliq_mun, :CST_P;

                --CALCULO PELA ESTADO_ICMS
                -- suspendo linha abaixo, muito complexo e tem o CFOP
                -- 05-04-2019 acrescentei regra produto CST
                /*
                select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
                , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, c.TOTTRIB
                , ei.ALIQ_CUPOM,
                COALESCE(vBCUFDest, 0), COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0),
                COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999')
                from ESTADO_ICMS ei, CFOP c
                where ei.CFOP = new.CFOP and ei.UF = :UF and ei.CODFISCAL = :PESSOA and c.CFCOD = new.CFOP
                  and ei.CST = :CST_P
                into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :CALCTRIB, :aliq_cupom,
                :vBCUFDest, :pFCPUFDest, :pICMSUFDest, :pICMSInter, :pICMSInterPart, :vFCPUFDest, :vICMSUFDest, :vICMSUFRemet, :CST_IPI_CENQ;

                if (:CICMS IS NULL) then -- Vou Buscar so pelo TIPOFISCAL, CFOP e UF
                */
                  select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
                  , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, c.TOTTRIB
                  , ei.ALIQ_CUPOM,
                  COALESCE(vBCUFDest, 0), COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0),
                  COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999')
                  from ESTADO_ICMS ei, CFOP c
                  where ei.CFOP = new.CFOP and ei.UF = :UF and ei.CODFISCAL = :PESSOA and c.CFCOD = new.CFOP
                  into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                  :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :CALCTRIB, :aliq_cupom,
                  :vBCUFDest, :pFCPUFDest, :pICMSUFDest, :pICMSInter, :pICMSInterPart, :vFCPUFDest, :vICMSUFDest, :vICMSUFRemet, :CST_IPI_CENQ;
                            
                new.SUITE = 'Trib. CFOP-UF';
                new.Aliq_cupom = aliq_cupom;
                
                if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP e UF
                begin 
                    select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
                    , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, c.TOTTRIB,
                    COALESCE(vBCUFDest, 0), COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0),
		      COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999')
                    from ESTADO_ICMS ei, CFOP c
                    where ei.CFOP = new.CFOP and ei.UF = :UF and c.CFCOD = new.CFOP
                    into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                    :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :CALCTRIB,
                    :vBCUFDest, :pFCPUFDest, :pICMSUFDest, :pICMSInter, :pICMSInterPart, :vFCPUFDest, :vICMSUFDest, :vICMSUFRemet, :CST_IPI_CENQ;
                    if (:CICMS IS NULL) then -- Vou Buscar so pelo CFOP
                    begin 
                        select first 1 COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0), COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
                        , ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0), COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, c.TOTTRIB,
                        COALESCE(vBCUFDest, 0), COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0),
		          COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999')
                        from ESTADO_ICMS ei, CFOP c
                        where ei.CFOP = new.CFOP and c.CFCOD = new.CFOP
                        into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS, 
                        :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :CALCTRIB, 
                        :vBCUFDest, :pFCPUFDest, :pICMSUFDest, :pICMSInter, :pICMSInterPart, :vFCPUFDest, :vICMSUFDest, :vICMSUFRemet, :CST_IPI_CENQ;
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
                        --Soma Frete na BC ICMS e Nao Subtrai Desconto da BC ICMS
                        else
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( ((TOTALITENS + :vFrete))* ind_reduzicms), :arredondar);
                    end
                    else
                    begin
                        --Subtrair Desconto a BC ICMS 
                        if (new.DESCONTO_BC <> 'True') then
                            new.VLR_BASEICMS = UDF_ROUNDDEC(( (TOTALITENS - :vd )* ind_reduzicms), :arredondar);
                        --Nao Subtrai Desconto da BC ICMS, nao soma Frete a BC ICMS
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
                    /*
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
                    */    
                    new.ICMS_SUBSTD = UDF_ROUNDDEC((TOTALITENS + new.vipi) * UDF_ROUNDDEC(:CICMS_SUBST, 4), :arredondar); 
                    VALOR_SUBDesc = TOTALITENS  * CICMS_SUBST_IND; 
                    new.ICMS_SUBST = UDF_ROUNDDEC((new.ICMS_SUBSTD  * CICMS_SUBST_IC) - VALOR_SUBDesc, :arredondar);
                end
				
				--TOTAIS TRIBUTOS ITEM
				-- 28-07-2016 calculando abaixo
				/*
				if(:CALCTRIB = 'T') then
				begin
                    if (:origem in (0, 3, 4, 5) ) then
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqnac)/100;
                    else
                        new.VLRTOT_TRIB = (new.VALTOTAL * :aliqimp)/100;
                end
                else
                    new.VLRTOT_TRIB = 0;
				*/
				
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
        -- CALCULO DO TOTAL TRIBUTOS
        -- colocado aqui em 28/07/2016
        if(:CALCTRIB = 'T') then
		begin
		  if (aliqnac > 0) then 
		    aliqnac = aliqnac/100;
		  if (aliqimp > 0) then 
		    aliqimp = aliqimp/100;
		  if (aliq_est > 0) then 
		    aliq_est = aliq_est/100;
		  if (aliq_mun > 0) then 
		    aliq_mun = aliq_mun/100;
		    
          if (:origem in (0, 3, 4, 5) ) then
          begin
            new.VLRTOT_TRIB = (new.VALTOTAL * :aliqnac) + 
              (new.VALTOTAL * :aliq_est) + 
              (new.VALTOTAL * :aliq_mun);
          end      
          else begin 
            new.VLRTOT_TRIB = (new.VALTOTAL * :aliqimp) + 
              (new.VALTOTAL * :aliq_est) + 
              (new.VALTOTAL * :aliq_mun);
          end    
        end
        else begin
          new.VLRTOT_TRIB = 0;
        end     
    end -- FIM DO IF-01 
    -- isso aqui estava zerando qdo digitado na nota 
    if (new.VBCUFDest is null) then 
      new.VBCUFDEST = 0;
    if (new.vFCPUFDest is null) THEN
      new.vFCPUFDest = 0;  
    if (vICMSUFDest is null) then 
      vICMSUFDest = 0;
    if (vICMSUFRemet is null) then
      vICMSUFRemet = 0;    
    --new.OBS = ' p:' ||  cast(:pICMSInterPart as char(10)) ;
    if (:pICMSInterPart > 0) then 
    begin
      --new.obs = ' f:' || cast(new.frete as char(10)) || ' d:' || cast(new.VALOR_DESCONTO as char(10)) || ' i:' || cast(new.vipi as char(10));
      if (new.VLR_BASEICMS > 0) then 
      begin
        -- 11/07/2018 - comentei aqui, nao atualizava qdo ja existia valor 
        --if (new.VBCUFDest = 0) then   
        new.vBCUFDest = UDF_ROUNDDEC((((TOTALITENS - :vd))* ind_reduzicms), :arredondar);--new.VLR_BASEICMS - new.VALOR_ICMS;
      end 
      else begin -- simples não tem base de calculo, tudo zerado
        if (new.VIPI is null) then 
          new.VIPI = 0;
        new.VBCUFDEST = UDF_ROUNDDEC(((new.VLR_BASE * new.QUANTIDADE) + new.FRETE - new.VALOR_DESCONTO + new.VIPI), :arredondar);
      end   
      
      new.pFCPUFDest = :pFCPUFDest;
      new.pICMSUFDest = :pICMSUFDest;
      new.pICMSInter = :pICMSInter;
      new.pICMSInterPart = :pICMSInterPart;
      if (new.vBCUFDest > 0) then 
      begin 
        -- DIFAL 
        if ((new.VBCUFDEST > 0) and  (picmsUFDest > 0)) then
        begin 
          vBCUFDest = new.VBCUFDEST * ((:pICMSUFDest-:pICMSInter)/100);
          new.vFCPUFDest = new.VBCUFDEST * (:pFCPUFDest/100);
          new.vICMSUFDest = vBCUFDest * (:pICMSInterPart/100);
          new.vICMSUFRemet = vBCUFDest * ((100-:pICMSInterPart)/100);
        end  
      end
    end
    new.CST_IPI_CENQ = :CST_IPI_CENQ;
  end  
  else begin 
    -- Calculo Manual
    if (new.QTDE_ALT is null) then 
	  new.QTDE_ALT = 0;
      
	new.VLR_BASE = UDF_ROUNDDEC(new.PRECO, :arredondar);  
  end
END
