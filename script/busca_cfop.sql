CREATE OR ALTER PROCEDURE BUSCA_CFOP 
 (UF CHAR(2), UF_EMPRESA CHAR(2), NATUREZA SMALLINT, NCM VARCHAR(8), CODPRODUTO INTEGER, CODFISCAL CHAR(1)) 
RETURNS
 (CFOP_MOV VARCHAR(30), log Varchar(150))
AS 
 Declare variable CFOP_ENT varchar (30);
 Declare variable CFOP_SAI varchar (30);
 Declare variable CFOP_SAIEXT varchar (30);
 Declare variable CFOP_IMP varchar (30);
 Declare variable CFOP_EXT varchar (30); 
BEGIN
  -- versao 3.0.0.0
  log = ' Inicio natureza ' || :natureza;
  if (:NATUREZA in (4,20,21)) then 
  begin 
    log = log || 'Natureza 4';
    -- COMPRA por produto 
    if (:UF = 'EX') then 
    begin 
      select first 1 cfp.CFOP from CLASSIFICACAOFISCALPRODUTO cfp 
       where cfp.COD_PROD = :CODPRODUTO 
         and LEFT(TRIM(cfp.CFOP),1) = '3'
         and cfp.CODFISCAL = :codFiscal
         and cfp.UF = :UF
        into :cfop_mov;
    end 
    else begin 
      select first 1 cfp.CFOP from CLASSIFICACAOFISCALPRODUTO cfp 
       where cfp.COD_PROD = :CODPRODUTO 
         and LEFT(TRIM(cfp.CFOP),1) = '1'
         and cfp.UF = :UF
         and cfp.CODFISCAL = :codFiscal
        into :cfop_mov;
    end    
    if (cfop_mov is null) then 
    begin 
      -- COMPRA por NCM
      if (:UF = 'EX') then 
      begin 
        select first 1 cfp.CFOP from CLASSIFICACAOFISCALNCM cfp 
         where cfp.NCM = :NCM 
           and LEFT(TRIM(cfp.CFOP),1) = '3'
           and cfp.CODFISCAL = :codFiscal
           and cfp.UF = :UF
          into :cfop_mov;
      end 
      else begin 
        select first 1 cfp.CFOP from CLASSIFICACAOFISCALNCM cfp 
         where cfp.NCM = :NCM 
           and LEFT(TRIM(cfp.CFOP),1) = '1'
           and cfp.CODFISCAL = :codFiscal
           and cfp.UF = :UF
          into :cfop_mov;
      end 
    end     
    if (cfop_mov is null) then 
    begin 
      -- COMPRA por CFOP ESTADO
      if (:UF = 'EX') then 
      begin 
        select first 1 cfp.CFOP from ESTADO_ICMS cfp 
         where cfp.UF = :UF
           and LEFT(TRIM(cfp.CFOP),1) = '3'
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
      end 
      else begin 
        select first 1 cfp.CFOP from ESTADO_ICMS cfp 
         where cfp.UF = :UF
           and LEFT(TRIM(cfp.CFOP),1) = '1'
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
      end          
    end       
  end 
  if (:NATUREZA in (3,7,12,15,16)) then 
  begin 
    log = log || ' Natureza = 3 ';
    -- VENDA por produto 
    if (:UF = :UF_EMPRESA) then 
    begin 
      select first 1 cfp.CFOP from CLASSIFICACAOFISCALPRODUTO cfp 
       where cfp.COD_PROD = :CODPRODUTO 
         and LEFT(TRIM(cfp.CFOP),1) = '5'
         and cfp.CODFISCAL = :codFiscal
         and cfp.UF = :UF
        into :cfop_mov;
      log = log || ' venda por produto';
    end 
    if ((:UF <> :UF_EMPRESA) and (:UF <> 'EX')) then 
	begin
        select first 1 cfp.CFOP from CLASSIFICACAOFISCALPRODUTO cfp 
         where cfp.COD_PROD = :CODPRODUTO 
           and LEFT(TRIM(cfp.CFOP),1) = '6'
           and cfp.UF = :UF
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
	  	  
	  if (cfop_mov is null) then 
	  begin 
        select first 1 cfp.CFOP from CLASSIFICACAOFISCALPRODUTO cfp 
         where cfp.COD_PROD = :CODPRODUTO 
           and LEFT(TRIM(cfp.CFOP),1) = '6'
           and cfp.UF = :UF
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
      end    
    end    
	if (:UF = 'EX') then 
	begin
      select first 1 cfp.CFOP from CLASSIFICACAOFISCALPRODUTO cfp 
       where cfp.COD_PROD = :CODPRODUTO
         and LEFT(TRIM(cfp.CFOP),1) = '7'
         and cfp.UF = :UF
         and cfp.CODFISCAL = :codFiscal
        into :cfop_mov;
    end    

    if (cfop_mov = '') then 
      cfop_mov = null;
      
    -- VENDA por NCM 
    if (cfop_mov is null) then 
    begin 
      if (:UF = :UF_EMPRESA) then 
      begin 
        select first 1 cfp.CFOP from CLASSIFICACAOFISCALNCM cfp 
         where cfp.NCM = :NCM
           and LEFT(TRIM(cfp.CFOP),1) = '5'
           and cfp.UF = :UF
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
        log = log || ' venda por NCM';  
      end 
      if ((:UF <> :UF_EMPRESA) and (:UF <> 'EX')) then 
	  begin
        select first 1 cfp.CFOP from CLASSIFICACAOFISCALNCM cfp 
         where cfp.NCM = :NCM
           and LEFT(TRIM(cfp.CFOP),1) = '6'
           and cfp.UF = :UF
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
      end    
	  if (:UF = 'EX') then 
  	  begin
        select first 1 cfp.CFOP from CLASSIFICACAOFISCALNCM cfp 
         where cfp.NCM = :NCM
           and LEFT(TRIM(cfp.CFOP),1) = '7'
           and cfp.UF = :UF
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
      end    
    end    

    if (cfop_mov = '') then 
      cfop_mov = null;
    
    -- VENDA por Estado CFOP 
    if (cfop_mov is null) then 
    begin 
      if (:UF = :UF_EMPRESA) then 
      begin 
        select first 1 cfp.CFOP from ESTADO_ICMS cfp 
         where cfp.UF = :UF
           and LEFT(TRIM(cfp.CFOP),1) = '5'
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
        log = log || ' venda por Estado.';  
      end 
      if ((:UF <> :UF_EMPRESA) and (:UF <> 'EX')) then 
	  begin
        select first 1 cfp.CFOP from ESTADO_ICMS cfp 
         where cfp.UF = :UF
           and LEFT(TRIM(cfp.CFOP),1) = '6'
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
      end    
	  if (:UF = 'EX') then 
  	  begin
        select first 1 cfp.CFOP from ESTADO_ICMS cfp 
         where cfp.UF = :UF
           and LEFT(TRIM(cfp.CFOP),1) = '7'
           and cfp.CODFISCAL = :codFiscal
          into :cfop_mov;
      end    
    end    
  end  

  if ((cfop_mov is null) or (cfop_mov = '')) then
  begin
    select TRIM(dados), TRIM(D1), TRIM(D2), TRIM(D3), TRIM(D4) from PARAMETRO where PARAMETRO = 'CFOP'
      into :CFOP_SAI, :CFOP_SAIEXT, :CFOP_ENT, CFOP_EXT, CFOP_IMP;
    if (natureza = 3) then 
    begin
      if (:UF = :UF_EMPRESA) then 
        cfop_mov = :cfop_sai; 
      if ((:UF <> :UF_EMPRESA) and (:UF <> 'EX')) then         
        cfop_mov = :cfop_saiext; 
      if (:UF = 'EX') then       
        cfop_mov = :cfop_ext;   
    end 
    if (natureza = 4) then 
    begin
      if (:UF = :UF_EMPRESA) then 
        cfop_mov = :cfop_ent; 
      if (:UF = 'EX') then       
        cfop_mov = :cfop_imp;   
    end 
  end

  SUSPEND;      
END
