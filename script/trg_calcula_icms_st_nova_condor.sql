ALTER TRIGGER CALCULA_ICMS_ST
BEFORE INSERT OR UPDATE
POSITION 0
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
 Declare variable ipibc char(1); 
 Declare variable fretebc char(1); 
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
 DECLARE VARIABLE redBasePIS DOUBLE PRECISION = 0;
 DECLARE VARIABLE redBaseCofins DOUBLE PRECISION = 0;
 DECLARE VARIABLE redBaseIPI DOUBLE PRECISION = 0;
 DECLARE VARIABLE ii_percentual DOUBLE PRECISION = 0;
 DECLARE VARIABLE posicao_fiscal CHAR(12);
BEGIN

  /* versao 3.0.0.16 */
  /* versao 4.0.0.0  04/01/2016 */
  /* versao 4.0.0.10 15/03/2016 - acrescentado o CEST */
  new.SUITE = ''; 
  new.Aliq_CUPOM = 'II';
   
  select d4  from PARAMETRO where PARAMETRO = 'EMPRESA' /* CASAS DECIMAIS VENDA */
    into :arrend_txt;
  if (arrend_txt <> '') then   
    arredondar = cast(arrend_txt as Integer);
        
  if (arredondar is null) then 
	arredondar = 8;
			
  if (LEFT(new.cfop,1) = '1') then 
    arredondar = 10;  
  
  IF ((NEW.PAGOU IS NULL) or (new.PAGOU <> 'M')) THEN  /* Nao e Calculo manual  */
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
  	
	/*buscar o Cest pelo NCM  */
	select p.NCM, COALESCE(p.CEST, COALESCE(ncm.CEST, '')), p.origem from produtos p 
	 inner join ncm on ncm.NCM = p.NCM  
	 where p.CODPRODUTO = new.CODPRODUTO
	  into :NCM_P, :CEST, :origem;
 
    if (new.ORIGEM is null) then  
      new.origem = cast(:origem as char(2));
  
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
    vFrete = 0;
    if (new.FRETE > 0) then
      vFrete = new.FRETE;	
    
	/* IF-01		 */
    if ((new.CFOP <> '') or ((updating) and ((new.QTDE_ALT <> old.QTDE_ALT) or (new.PRECO <> old.PRECO) or (new.QUANTIDADE <> old.QUANTIDADE)))) then 
    begin
	  if ( new.lote is null) then
        new.lote = '0';

      if (new.QTDE_ALT is null) then 
        new.QTDE_ALT = 0;
      
      /* ROUND */
      new.VLR_BASE = ROUND(new.PRECO, :arredondar);  
      
      if (new.QTDE_ALT = 100) then
      begin  
        new.VLR_BASE = 0;    
      end
      if (new.QTDE_ALT > 0) then
      begin  
        vd = ROUND(((new.PRECO)*(new.QTDE_ALT/100)), :arredondar);
        new.VLR_BASE = ROUND((new.PRECO - :vd), :arredondar);    
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

	  new.SUITE = 'Nao achou nenhuma configuracao';
      for select first 1 * from ( 
        select 'APRODUTO' as ONDE, COALESCE(cfp.ICMS_SUBST, 0), COALESCE(cfp.ICMS_SUBST_IC, 0), COALESCE(cfp.ICMS_SUBST_IND, 0)
	      , COALESCE(cfp.ICMS, 0), COALESCE(cfp.ICMS_BASE, 1), cfp.CST, COALESCE(cfp.IPI, 0), cfp.CSOSN, COALESCE(cfp.PIS, 0)
	      , COALESCE(cfp.COFINS, 0), cfp.CSTCOFINS, cfp.CSTPIS, cfp.CSTIPI, cfp.ALIQ_CUPOM, COALESCE(vBCUFDest, 0)
	      , COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0)
	      , COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999')
	      , 1, 1, 1, 0
        from CLASSIFICACAOFISCALPRODUTO cfp	
        where cfp.CODFISCAL = :PESSOA and cfp.CFOP = new.CFOP and cfp.UF = :UF and cfp.COD_PROD = new.CODPRODUTO
        UNION		
        select 'NCM' as ONDE, COALESCE(cfn.ICMS_SUBST, 0), COALESCE(cfn.ICMS_SUBST_IC, 0), COALESCE(cfn.ICMS_SUBST_IND, 0)
          , COALESCE(cfn.ICMS, 0), COALESCE(cfn.ICMS_BASE, 1), COALESCE(cfn.CST, '000'), COALESCE(cfn.IPI, 0), cfn.CSOSN, COALESCE(cfn.PIS, 0)
          , COALESCE(cfn.COFINS, 0), cfn.CSTCOFINS, cfn.CSTPIS, cfn.CSTIPI, COALESCE(cfn.ALIQ_CUPOM,0), COALESCE(vBCUFDest, 0)
          , COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0)
          , COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999') 
          , COALESCE(cfn.REDBASEPIS,1), COALESCE(cfn.REDBASECOFINS,1), COALESCE(cfn.REDBASEIPI,1), COALESCE(cfn.II_PERCENTUAL, 0)
        from CLASSIFICACAOFISCALNCM cfn		
        where cfn.CODFISCAL = :PESSOA and cfn.CFOP = new.CFOP and cfn.UF = :UF and cfn.NCM = :NCM_P
        UNION
        select 'UF' as ONDE, COALESCE(ei.ICMS_SUBSTRIB, 0), COALESCE(ei.ICMS_SUBSTRIB_IC, 0), COALESCE(ei.ICMS_SUBSTRIB_IND, 0)
          , COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1), ei.CST, COALESCE(ei.IPI, 0), ei.CSOSN, COALESCE(ei.PIS, 0)
          , COALESCE(ei.COFINS, 0), ei.CSTCOFINS, ei.CSTPIS, ei.CSTIPI, ei.ALIQ_CUPOM, COALESCE(vBCUFDest, 0)
          , COALESCE(pFCPUFDest,0), COALESCE(pICMSUFDest,0),COALESCE(pICMSInter,0), COALESCE(pICMSInterPart,0)
          , COALESCE(vFCPUFDest,0), COALESCE(vICMSUFDest,0), COALESCE(vICMSUFRemet,0), COALESCE(CST_IPI_CENQ, '999')
          , 1, 1, 1, 0
        from ESTADO_ICMS ei
        where ei.CODFISCAL = :PESSOA and ei.CFOP = new.CFOP and ei.UF = :UF) 
        (CICMS_SUBST, CICMS_SUBST_IC, CICMS_SUBST_IND
          , CICMS, ind_reduzicms, CST_P, IND_IPI, CSOSN, PIS
          , COFINS, CSTCOFINS, CSTPIS, CSTIPI, aliq_cupom, vBCUFDest
          , pFCPUFDest, pICMSUFDest, pICMSInter, pICMSInterPart
          , vFCPUFDest, vICMSUFDest, vICMSUFRemet, CST_IPI_CENQ
          , redBasePIS, redBaseCOFINS, redBaseIPI, posicao_fiscal, ii)
        into :posicao_fiscal, :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND
          , :CICMS, :ind_reduzicms, :CST_P, :IND_IPI, :CSOSN, :PIS
          , :COFINS, :CSTCOFINS, :CSTPIS, :CSTIPI, :aliq_cupom, :vBCUFDest
          , :pFCPUFDest, :pICMSUFDest, :pICMSInter, :pICMSInterPart
          , :vFCPUFDest, :vICMSUFDest, :vICMSUFRemet, :CST_IPI_CENQ
          , :redBasePIS, :redBaseCOFINS, :redBaseIPI, :ii_percentual
      do begin
        if (redBaseIpi = 0) then
          redBaseIpi = 1;
        if (redBaseIpi > 1 )then
          redBaseIpi = redBaseIpi/100;
        if (redBasePis = 0) then
          redBasePis = 1;
        if (redBasePis > 1 )then
          redBasePis = redBasePis/100;
        if (redBaseCofins = 0) then
          redBaseCofins = 1;
        if (redBaseCofins > 1 )then
          redBaseCofins = redBaseCofins/100;
      
        /* CFOP */
        SELECT c.TOTTRIB, COALESCE(c.IPIBC, 'F'), COALESCE(c.FRETEBC, 'F') FROM CFOP c WHERE c.CFCOD = new.CFOP
        INTO :calctrib, :ipiBc, :FreteBc; 
        
        new.FRETE_BC = FreteBc;
        
        /* NCM */
        SELECT COALESCE(n.ALIQIMP, 0), COALESCE(n.ALIQNAC, 0), COALESCE(n.ESTADUAL,0), COALESCE(n.MUNICIPAL,0) 
        from NCM n WHERE n.NCM = new.NCM
        INTO :ALIQIMP, :ALIQNAC, :aliq_est, :aliq_mun;        

        new.SUITE = :posicao_fiscal;
        new.cst = :CST_P;
        new.CSOSN = :CSOSN;
        new.CSTPIS = :CSTPIS;
        new.CSTCOFINS = :CSTCOFINS;
        new.CSTIPI = :CSTIPI;
        new.icms = :cicms;
        new.Aliq_cupom = :aliq_cupom;

        /*CALCULO DE IPI */
        if (IND_IPI > 0) then
        begin
          if (pessoa = 'J') then 
            new.VLRBC_IPI = ROUND((TOTALITENS * redBaseIPI) , :arredondar);
          else
            new.VLRBC_IPI = ROUND(((TOTALITENS * redBaseIPI) + :vFrete) , :arredondar);
          new.VIPI = ROUND((new.VLRBC_IPI * (IND_IPI/100)), :arredondar);
          new.PIPI = IND_IPI;
        end
        else begin
          new.VLRBC_IPI = 0;
          new.VIPI = 0;
          new.PIPI = 0;
        end

        if (ind_reduzicms <= 0) then
          ind_reduzicms = 1;
        if (ind_reduzicms > 1 )then
          ind_reduzicms = ind_reduzicms/100;

        /*CALCULO DO ICMS */
        if (CICMS > 0) then 
        begin
          vFrete = new.FRETE;
          vd = new.VALOR_DESCONTO;
          if (vFrete is null) then 
            vFrete = 0;
          if (vd is null) then 
            vd = 0;

          /*Calculos do ICMS */
          if (new.FRETE_BC = 'T') then
          begin
            /* Somar Frete a BC ICMS e Subtrai Desconto a BC ICMS	 */
            if (new.DESCONTO_BC = 'True') then
            begin
              new.SUITE = :posicao_fiscal || '-Com Frete+DescontoBC';
              new.VLR_BASEICMS = ROUND(( (TOTALITENS + vFrete - :vd)* ind_reduzicms), :arredondar);
            end 
	        else begin
              new.SUITE = :posicao_fiscal || '-Com Frete: ';
              /* Soma Frete na BC ICMS e Nao Subtrai Desconto da BC ICMS */
              new.VLR_BASEICMS = ROUND(((TOTALITENS + vFrete)* ind_reduzicms), :arredondar);
            end
          end
          else begin
            /* Subtrair Desconto a BC ICMS  */
            if (new.DESCONTO_BC = 'True') then
            begin
              new.SUITE = :posicao_fiscal || '-Sem Frete+DescontoBC';
              new.VLR_BASEICMS = ROUND(( (TOTALITENS - :vd )* ind_reduzicms), :arredondar);
            end
            else begin
              new.SUITE = :posicao_fiscal || '-Sem Frete';
              /* Nao Subtrai Desconto da BC ICMS, nao soma Frete a BC ICMS */
              new.VLR_BASEICMS = ROUND(( TOTALITENS * ind_reduzicms), :arredondar);
            end  
          end
          if (new.VIPI > 0) then
          begin
            /* nao e pessoa juridica entao o ipi entra na base de calculo */
            if (pessoa <> 'J') then
            begin
              new.VLR_BASEICMS = new.VLR_BASEICMS + new.VIPI;
            end
          end
          new.VALOR_ICMS = ROUND(new.VLR_BASEICMS * (:CICMS / 100), :arredondar);
        end
        /*CALCULO DE PIS */
        /* REDUZINDO PIS , COFINS da BASE ICMS (Agroselect) 06/08/2019 */
        if (PIS > 0) then
        begin
          if (natureza in (1,4,20,21)) then
          begin
            new.VLRBC_PIS = ROUND((TOTALITENS * redBasePis), :arredondar);
          end
          else begin        
            new.VLRBC_PIS = ROUND((TOTALITENS * redBasePis) - new.VALOR_ICMS, :arredondar);
          end
          new.PPIS = :PIS;
          new.VALOR_PIS = (new.VLRBC_PIS * new.PPIS)/100;
        end
        else begin
          new.VLRBC_PIS = 0;
          new.PPIS = 0;
          new.VALOR_PIS = 0;
        end

        /*CALCULO DO COFINS */
        if (cofins > 0) then
        begin
          if (natureza in (1,4,20,21)) then
          begin
            new.VLRBC_COFINS = ROUND((TOTALITENS * redBaseCofins), :arredondar);
          end
          else begin
            new.VLRBC_COFINS = ROUND((TOTALITENS * redBaseCofins) - new.VALOR_ICMS, :arredondar);
          end
          new.PCOFINS = :cofins;	
          new.VALOR_COFINS = (new.VLRBC_COFINS * new.PCOFINS)/100;
        end
        else begin
          new.VLRBC_COFINS = 0;
          new.PCOFINS = 0;	
          new.VALOR_COFINS = 0;
        end        

        /*--------- TEM ST ------------- */
        if (CICMS_SUBST > 0 ) then
          CICMS_SUBST = 1+ ( CICMS_SUBST/100);
        if (CICMS_SUBST_IND > 0 ) then
          CICMS_SUBST_IND = CICMS_SUBST_IND/100;
        if (CICMS_SUBST_IC > 0 ) then
          CICMS_SUBST_IC = CICMS_SUBST_IC/100;

        if (CICMS_SUBST > 0) then
          new.ICMS_SUBSTD = ROUND(((TOTALITENS + new.VIPI) * CICMS_SUBST), :arredondar);
        if ( new.ICMS_SUBSTD > 0) then
        begin
          VALOR_SUBDesc = TOTALITENS * CICMS_SUBST_IND; 
          new.ICMS_SUBST = ROUND((new.ICMS_SUBSTD * CICMS_SUBST_IC)-(:VALOR_SUBDESC), :arredondar);
        end     
        else	
          new.ICMS_SUBST = 0;
  
        /*CORRECAO DO VALOR DO MVA QUANDO FOR PARA FORA DO ESTADO */
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
        new.ICMS_SUBSTD = ROUND((TOTALITENS + new.vipi) * ROUND(:CICMS_SUBST, 4), :arredondar); 
        VALOR_SUBDesc = TOTALITENS  * CICMS_SUBST_IND; 
        new.ICMS_SUBST = ROUND((new.ICMS_SUBSTD  * CICMS_SUBST_IC) - :Valor_SubDesc, :arredondar);
    
        if( new.FRETE > 0) then
        begin
          if (CICMS >0) then
          begin
            new.BCFRETE = ROUND(new.frete * ind_reduzicms, :arredondar);
            new.ICMSFRETE = ROUND(new.BCFRETE * (CICMS/100), :arredondar);
          end
          if (CICMS_SUBST > 0) then 
          begin
            new.BCSTFRETE = ROUND(new.FRETE * ROUND(CICMS_SUBST, 4), :arredondar);
            VALOR_SUBDesc = new.FRETE * CICMS_SUBST_IND;
            new.STFRETE = ROUND((new.BCFRETE * CICMS_SUBST_IC) - Valor_SubDesc, :arredondar);
          end
        end
        if( new.FRETE = 0) then
        begin
          new.BCFRETE = 0;
          new.STFRETE = 0;
          new.ICMSFRETE = 0;
          new.BCSTFRETE = 0;
        end
   
        /* CALCULO DO TOTAL TRIBUTOS */
        /* colocado aqui em 28/07/2016 */
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
      end /* fim do FOR  */
    end /* fim IF-01		   */
    /* isso aqui estava zerando qdo digitado na nota  */
    if (new.VBCUFDest is null) then 
      new.VBCUFDEST = 0;
    if (new.vFCPUFDest is null) THEN
      new.vFCPUFDest = 0;  
    if (vICMSUFDest is null) then 
      vICMSUFDest = 0;
    if (vICMSUFRemet is null) then
      vICMSUFRemet = 0;    
    /*new.OBS = ' p:' ||  cast(:pICMSInterPart as char(10)) ; */
    if (:pICMSInterPart > 0) then 
    begin
      /*new.obs = ' Frete:' || cast(:vFrete as char(10)) || ' Desc:' || cast(:vd as char(10)) || ' IPI:' || cast(new.vipi as char(10)) || */
      /*  ' ICMS:' || cast(new.VALOR_ICMS as char(10)) || ' T.Itens:' || cast(:TOTALITENS as char(10)); */
      if (new.VLR_BASEICMS > 0) then 
      begin
        
        begin  
          new.vBCUFDest = ROUND((TOTALITENS - :vd + :vFrete + new.VIPI), :arredondar);/*new.VLR_BASEICMS - new.VALOR_ICMS; */
          /*new.obs = '1- Frete:' || cast(:vFrete as char(10)) || ' Desc:' || cast(:vd as char(10)) || ' IPI:' || cast(new.vipi as char(10)) || */
          /*  ' ICMS:' || cast(new.VALOR_ICMS as char(10)) || ' T.Itens:' || cast(:TOTALITENS as char(10)); */
          new.VBFCPUFDEST = new.vBCUFDest;
        end
      end 
      else begin /* simples não tem base de calculo, tudo zerado */
        if (new.VIPI is null) then 
          new.VIPI = 0;
        new.VBCUFDEST = ROUND(((new.VLR_BASE * new.QUANTIDADE) + :vFrete - new.VALOR_DESCONTO + new.VIPI), :arredondar);
        new.VBFCPUFDEST = new.vBCUFDest;
        /*new.obs = '2- Frete:' || cast(:vFrete as char(10)) || ' Desc:' || cast(:vd as char(10)) || ' IPI:' || cast(new.vipi as char(10)) || */
        /*  ' ICMS:' || cast(new.VALOR_ICMS as char(10)) || ' T.Itens:' || cast(:TOTALITENS as char(10)); */
      end   
      new.pFCPUFDest = :pFCPUFDest;
      new.pICMSUFDest = :pICMSUFDest;
      new.pICMSInter = :pICMSInter;
      new.pICMSInterPart = :pICMSInterPart;
      if (new.vBCUFDest > 0) then 
      begin 
        /* DIFAL  */
        if ((new.VBCUFDEST > 0) and  (picmsUFDest > 0)) then
        begin 
          vBCUFDest = new.VBCUFDEST * ((:pICMSUFDest-:pICMSInter)/100);
          new.vFCPUFDest = new.VBCUFDEST * (:pFCPUFDest/100);
          new.vICMSUFDest = vBCUFDest * (:pICMSInterPart/100);
          new.vICMSUFRemet = vBCUFDest * ((100-:pICMSInterPart)/100);
        end  
      end
    end
    /* CaLCULO ii IMPOSTO IMPORTACAO */
    new.SUITE = cast(:ii_percentual as varchar(6)) || ' - II';
    if (ii_percentual > 0) then 
    begin 
      new.BCII = new.VLR_BASEICMS;
      new.II = ROUND((new.BCII) * (:ii_percentual / 100), :arredondar);
      new.VLRBC_IPI = ROUND((TOTALITENS+new.II) * redBaseIPI , :arredondar);
      new.VIPI = ROUND(((((new.VLR_BASE*new.QUANTIDADE)+new.II)*redBaseIPI) * IND_IPI/100), :arredondar);
      new.PIPI = IND_IPI;
      /* new.QTDEESTOQUE = new.VLR_BASEICMS; */
      new.VLR_BASEICMS =  new.BCII + new.VIPI + NEW.II + new.VALOR_COFINS + new.VALOR_PIS + coalesce(new.VALOR_OUTROS,0);
      /* 25/08/2021 o pis, cofins e II estao no outros , por isso não colocar aqui , pois o outros entra no totall da nota */
      /*new.VLR_BASEICMS =  new.BCII + new.VIPI + coalesce(new.VALOR_OUTROS,0); */
      cicms = 1 - (:cicms / 100);
      /*new.icms = :cicms; */
      new.VLR_BASEICMS = ROUND((new.VLR_BASEICMS / :cicms), :arredondar);
      new.VALOR_ICMS =  new.VLR_BASEICMS * (1 - :cicms);
    end     
    new.CST_IPI_CENQ = :CST_IPI_CENQ;
  end  
  else begin 
    /* Calculo Manual */
    if (new.QTDE_ALT is null) then 
      new.QTDE_ALT = 0;
    new.VLR_BASE = ROUND(new.PRECO, :arredondar);  
  end
END
