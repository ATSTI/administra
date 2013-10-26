CREATE or ALTER PROCEDURE CALCULA_ICMS_SUBSTPROD (
    CFOP Varchar(30),
    UF Char(2),
    NUMERO_NF Integer,
    CODMOV Integer,
    SERIE Char(20) )
  /*Returns(
     ind_icms_interno double precision,
     ind_icms_externo double precision,
     passou_aqui varchar(100)
  ) */
AS
declare variable codNF integer;
declare variable codV integer;
  declare variable codProduto integer;
  declare variable qtde double PRECISION;
  declare variable desconto double PRECISION;
  declare variable preco DOUBLE PRECISION;
  declare variable total DOUBLE PRECISION;
  declare variable icms DOUBLE PRECISION;
  declare variable tBaseicms DOUBLE PRECISION;
  declare variable baseIcms DOUBLE PRECISION;
  declare variable valorIcms DOUBLE PRECISION;
  declare variable totalIcms DOUBLE PRECISION;
  declare variable vFrete DOUBLE PRECISION;
  declare variable vSeguro DOUBLE PRECISION;
  declare variable vIcms DOUBLE PRECISION;
  declare variable vOutros DOUBLE PRECISION;
  declare variable vIpi DOUBLE PRECISION;
  declare variable vFreteT DOUBLE PRECISION;
  declare variable vSeguroT DOUBLE PRECISION;
  declare variable vIcmsT DOUBLE PRECISION;
  declare variable vIcmsSubst DOUBLE PRECISION;
  declare variable vOutrosT DOUBLE PRECISION;
  declare variable vIpiT DOUBLE PRECISION;
  declare variable pesoUn DOUBLE PRECISION;
  declare variable pesoTotal DOUBLE PRECISION;
  declare variable un char(2);
  declare variable cst char(5);
  declare variable cstProd char(5);
  declare variable descP varchar(300);
  declare variable cfop_outros varchar(30);
  declare variable np SMALLINT;
  declare variable parc SMALLINT;
  declare variable CALC_FISC Varchar (30);
  declare variable CICMS_SUBST double precision;
  declare variable CICMS_SUBST_IC double precision;
  declare variable CICMS_SUBST_IND double precision;
  declare variable CICMS double precision;
  declare variable CICMS2 double precision;
  declare variable CICMS_BASE double precision;
  declare variable VLR_PROD double precision;
  declare variable VLR_ICMS double precision;
  declare variable ST double precision;
  declare variable BASE_ST double precision;
  declare variable total2 double precision;
  declare variable st_int double precision;
  declare variable st_ext double precision;
 
  declare variable total3 double precision;
  declare variable TOTAL_VLR_ICMS double precision;
  declare variable TOTAL_ST double precision;
  declare variable TOTAL_BASE_ST double precision;
  declare variable TOTAL_ICMS double precision;
  declare variable TOTAL_ICMS_BASE double precision;
  declare variable USA_SUBPROD char(1);
begin 
    total2 = 0;
    total3 = 0;
    ST = 0 ;
    BASE_ST = 0;
    TOTAL_BASE_ST = 0;
    TOTAL_ST = 0;
    total = 0;
    TOTAL_VLR_ICMS = 0;
    totalIcms = 0;
    TOTAL_ICMS_BASE = 0; 
    TOTAL_ICMS = 0;
    CICMS_SUBST = 0;
    USA_SUBPROD = 'N';
    
    -- localiza o mov. detalhe
    for select  md.QTDE_ALT, md.CODPRODUTO, md.QUANTIDADE, md.VLR_BASE, md.ICMS, prod.BASE_ICMS, prod.CST
    from MOVIMENTODETALHE md
      inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO
      where md.CODMOVIMENTO = :codMov
    into :desconto, :codProduto, :qtde, :preco, :icms, :baseIcms, :cstProd
    do begin
      select cfp.ICMS_SUBST, cfp.ICMS_SUBST_IC, cfp.ICMS_SUBST_IND, cfp.ICMS, cfp.ICMS_BASE, cfp.CST from CLASSIFICACAOFISCALPRODUTO cfp 
      where cfp.CFOP = :CFOP and cfp.COD_PROD = :codProduto and cfp.UF = :UF
      into :CICMS_SUBST, :CICMS_SUBST_IC, :CICMS_SUBST_IND, CICMS, CICMS_BASE, :CST;

      if (cicms is null) then 
      begin 
        cicms2 = 0;
        cicms = 0;
      end   
      
      if (cicms_subst is null) then 
        cicms_subst = 0;

      if (cicms is not null) then 
        cicms2 = cicms;
      else 
        cicms2 = 0;  
      if (desconto is null) then
        desconto = 0;
          
      if (desconto > 0) then     
        VLR_PROD = ( :qtde * (:preco * (1-(:desconto/100))));

      if (desconto = 0) then     
        VLR_PROD = :qtde * :preco;

      -- TEM ST ######################################################################################
      if ((CICMS_SUBST > 0) or (CICMS > 0)) then
      begin
        USA_SUBPROD = 'S';
        if (CICMS_SUBST is null) then
          CICMS_SUBST = 0;
        if (CICMS_SUBST_IC is null) then
          CICMS_SUBST_IC = 0;
        if (CICMS_SUBST_IND is null) then
          CICMS_SUBST_IND = 0;
        if (icms is null) then 
          icms = 0;
        if (baseIcms is null) then 
          baseIcms = 0;
        if (CICMS is null) then
          CICMS = 0;
        if (CICMS > 0) then
          CICMS = (CICMS/100);
        if (CICMS_BASE = 0) then
          CICMS_BASE = 1;
        total = 0;          
        
        -- ICMS INTERNO
        --CIMS_SUBST_IC
      
        -- ICMS EXTERNO
        -- CIMS_SUBST_IND
        /*ind_icms_interno =  CICMS_SUBST_IC;
        ind_icms_externo =  CICMS_SUBST_IND;
        passou_aqui = 'aqui 2';
        suspend; */
           
          if (CICMS_SUBST_IND <> CICMS_SUBST_IC) then 
          begin 
            if (CICMS_SUBST > 0) then    
               BASE_ST = (VLR_PROD *(1+(CICMS_SUBST/100)));
            VLR_ICMS =  (VLR_PROD*(CICMS_SUBST_IND/100));

            if ((cicms_subst_ind > 0) and (cicms_subst_ic > 0)) then 
            begin 
              st_int = 100 - CICMS_SUBST_ic;
              /*ind_icms_interno =  st_int;
              passou_aqui = '100 - cicms_subst_ic';
              suspend;           */
              st_ext = 100 - CICMS_SUBST_IND;
              /*ind_icms_interno =  st_ext;
              passou_aqui = '100 - cicms_subst_ind';
              suspend; */
              
              cicms_subst = ((1+(cicms_subst/100))/st_int)*st_ext;
             

            end
        
              /*ind_icms_interno =  cicms_subst;
              passou_aqui = '((1+(cicms_subst/100))/st_int)*st_ext';
              suspend;         */
              
            base_st = VLR_PROD * cicms_subst;    
            
            /*ind_icms_interno =  base_st;
            passou_aqui = 'base_st';
            suspend;             */
            
            ST = (BASE_ST * (CICMS_SUBST_IC/100))-(VLR_ICMS);
            CICMS_BASE = (VLR_PROD * CICMS_BASE);
            CICMS = (CICMS * CICMS_BASE);        
          end
          else begin 
            if (CICMS_SUBST > 0) then    
               BASE_ST = (VLR_PROD *(1+(CICMS_SUBST/100)));
            VLR_ICMS =  (VLR_PROD*(CICMS_SUBST_IND/100));
            ST = (BASE_ST * (CICMS_SUBST_IC/100))-(VLR_ICMS);
            CICMS_BASE = (VLR_PROD * CICMS_BASE);
            CICMS = (CICMS * CICMS_BASE);
          end 
            
            if ((cst is null) or (cst = '')) then 
              cst = cstProd;
            
            valoricms = (VLR_PROD) * (baseIcms / 100) * (icms / 100);                 
            --st = (st,2);
            
          /*ind_icms_interno =  st;
          passou_aqui = cst;
          suspend;             */
                 
        update MOVIMENTODETALHE set valor_icms = :valoricms, cst = :cst, icms_subst = :ST, icms_substd = :BASE_ST, icms = :CICMS2
        where codmovimento = :codmov and codproduto = :codProduto;
        
        if(desconto > 0) then  
          total = total + (:qtde * (:preco*(1-(:desconto/100))));--((:PRECO/:np) * :desconto)); --((:PRECO/:np) * :desconto)
        else
          total = total + (:qtde * :preco);--((:PRECO/:np) * :desconto)); --((:PRECO/:np) * :desconto)
        
        --totalIcms = totalIcms + :valoricms;
        TOTAL_BASE_ST = TOTAL_BASE_ST + BASE_ST;
        TOTAL_ST = TOTAL_ST + ST;
        TOTAL_ICMS_BASE = TOTAL_ICMS_BASE + CICMS_BASE; 
        TOTAL_ICMS = TOTAL_ICMS + CICMS;
  
      end
      CICMS_SUBST = 0;
      total3 = total3 + total;    
      if(total = 0) then
        total2 = total2 + VLR_PROD;      
    end

    total = total2 + total3 + TOTAL_ST;
   if (USA_SUBPROD = 'S') then
   begin
    select first 1 v.notafiscal, codvenda from venda v where v.codmovimento = :codMov
      into :codnf, :codV; 
      
    -- Pego os outros valores na NF para somar ao total 
    select sum(n.OUTRAS_DESP + n.VALOR_FRETE + n.VALOR_SEGURO) from notafiscal n where numnf = :numero_nf
    into :vOutros;   
    
    select first 1 r.PARCELAS from RECEBIMENTO r  where titulo = :codnf || '-' || :serie and via = '1'
      into :Parc;
    --total3 = 0;
    --select sum(Valor_Resto) from RECEBIMENTO r  where titulo = :codnf || '-' || :serie and via = '1'
    --into :total3; 
    total3 = total3 + vOutros;
    total3 = (:total3 + :total2) / :parc;
    total3 = UDF_ROUNDDEC(total3,2) + UDF_ROUNDDEC(total_st,2);
      
    select sum(VALOR) from NFE_FATURA(:CODV)
    into :vlr_prod;
    
    -- Faz arredondamento
    if (vlr_prod <> total) then 
    if ((total - vlr_prod) < 1) then 
    begin 
      if (vlr_prod < total) then 
        total3 = total3 - (total - vlr_prod);
      if (vlr_prod > total) then 
        total3 = total3 - (vlr_prod- total);
    end    
        
    update recebimento set valor_resto = :total3 where titulo = :codnf || '-' || :serie and via = '1';
    
    -- Verificando se o arredondamento funcionou 
        select sum(VALOR) from NFE_FATURA(:CODV)
        into :vlr_prod;
    
        -- Faz arredondamento
        if (vlr_prod <> total) then 
        if ((total - vlr_prod) < 1) then 
        begin 
            if (vlr_prod < total) then 
                total3 = total3 - (total - vlr_prod);
            if (vlr_prod > total) then 
            total3 = total3 - (vlr_prod- total);
            update recebimento set valor_resto = :total3 where titulo = :codnf || '-' || :serie and via = '1';
        end    
        
    
    UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :TOTAL_BASE_ST, VALOR_ICMS_SUBST = UDF_ROUNDDEC(:TOTAL_ST,2), VALOR_ICMS = :TOTAL_ICMS, BASE_ICMS = : TOTAL_ICMS_BASE, VALOR_TOTAL_NOTA = :TOTAL
      where NUMNF = :NUMERO_NF; --, FATURA = :fatu
      
   end

    vIcmsT = 0; 
    total = total + vSeguroT + vOutrosT + vIpiT + vIcmsT + vFreteT;

  /*Buscando a numeracao da duplicata */
  preco = total; 

end

