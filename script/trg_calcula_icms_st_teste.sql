SET TERM ^ ;

CREATE PROCEDURE trg_calcula_icms_st_teste 
 () 
RETURNS 
 (
 teste_realizado varchar(20)
 , resultado_ipi varchar(20)
 , valor_ipi double PRECISION
 , resultado_icms varchar(20)
 , valor_icms double PRECISION
 , resultado_pis varchar(20)
 , valor_pis double PRECISION
 , resultado_cofins varchar(20)
 , valor_cofins double PRECISION
 , resultado_icms_st varchar(20)
 , alor_icms_st double PRECISION
 )
AS 
DECLARE VARIABLE empresa_tipo varchar(15); 
DECLARE VARIABLE cod_estado Integer; 
DECLARE VARIABLE cod_prod Integer;
DECLARE VARIABLE cod_mov Integer;
DECLARE VARIABLE icms double PRECISION; 
DECLARE VARIABLE reducao double PRECISION; 
DECLARE VARIABLE ipi double PRECISION; 
DECLARE VARIABLE pis double PRECISION; 
DECLARE VARIABLE cofins double PRECISION; 
DECLARE VARIABLE frete double PRECISION; 
DECLARE VARIABLE valor double PRECISION; 
DECLARE VARIABLE quantidade double PRECISION; 
DECLARE VARIABLE icms_a double PRECISION; 
DECLARE VARIABLE reducao_a double PRECISION; 
DECLARE VARIABLE ipi_a double PRECISION; 
DECLARE VARIABLE pis_a double PRECISION; 
DECLARE VARIABLE cofins_a double PRECISION; 
DECLARE VARIABLE frete_a double PRECISION; 
DECLARE VARIABLE valor_a double PRECISION; 
DECLARE VARIABLE quantidade_a double PRECISION; 
DECLARE VARIABLE codfiscal char(1);
DECLARE VARIABLE codfiscal_a char(1);
DECLARE VARIABLE uf char(2);
DECLARE VARIABLE uf_a char(2);
DECLARE VARIABLE ncm char(8);

DECLARE VARIABLE cod_cliente Integer; 
DECLARE VARIABLE cod_detalhe Integer; 

BEGIN
  select first 1 emp.CRT from empresa emp 
    into :empresa_tipo;
    
  -- pego um movimento e vou criar um MOVIMENTODETALHE pra usar no teste
  select first 1 md.CODMOVIMENTO, md.CODPRODUTO, p.NCM from MOVIMENTODETALHE md, PRODUTOS p
    where p.CODPRODUTO = md.CODPRODUTO order by md.CODDETALHE desc 
  into :cod_mov, :cod_prod, :ncm;
 
  select first 1 COD_PROD, COALESCE(cfp.ICMS, 0), COALESCE(cfp.REDUCAO, 1)
    , COALESCE(cfp.IPI, 0), COALESCE(cfp.PIS, 0)
    , COALESCE(cfp.COFINS, 0), cfp.CFOP, cfp.UF , cfp.CODFISCAL
    from CLASSIFICACAOFISCALPRODUTO cfp	
    where cfp.COD_PROD = :cod_prod
  into :cod_estado_a, :icms_a, :reducao_a, :ipi_a, :pis_a, :cofins_a, :cfop, :uf, :codfiscal;   

  if (cod_estado is null) then 
  begin
    -- nao achou produto , procuro ncm 
    select first 1 COALESCE(cfn.ICMS, 0), COALESCE(cfn.ICMS_BASE, 1)
      , COALESCE(cfn.IPI, 0), COALESCE(cfn.PIS, 0)
      , COALESCE(cfn.COFINS, 0), cfn.CFOP, cfn.UF, cfn.CODFISCAL
      from CLASSIFICACAOFISCALNCM cfn	
      where cfn.NCM = :ncm
    into :icms_a, :reducao_a, :ipi_a, :pis_a, :cofins_a, :cfop, :uf, :codfiscal;   
  end  
  if (icms_a is null) then
  begin
    -- nao achou por ncm, pega por estado_uf
    select first 1 COD_ESTADO, COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
      , COALESCE(ei.IPI, 0), COALESCE(ei.PIS, 0)
      , COALESCE(ei.COFINS, 0), ei.CFOP, ei.UF, ei.CODFISCAL
      from ESTADO_ICMS ei
    into :cod_estado_a, :icms_a, :reducao_a
      , :ipi_a, :pis_a, :cofins_a, :cfop, :uf, :codfiscal; 
  end
  -- vou pegar 1 cliente pra teste
  select first 1 c.CODCLIENTE, c.CODFISCAL from clientes c, ENDERECOCLIENTE ec 
      where c.codcliente > 0 
        and ec.CODCLIENTE = c.CODCLIENTE 
        and ec.TIPOEND = 0 
        and ec.UF = :uf 
        and c.CODFISCAL = :codFiscal;
   into :cod_cliente, :codfiscal_a;
   -- se nao achei cliente , pego qualquer um
   if (cod_cliente is null) then 
   begin 
    select first 1 c.CODCLIENTE, c.CODFISCAL from clientes c, ENDERECOCLIENTE ec 
      where c.codcliente > 0 
        and ec.CODCLIENTE = c.CODCLIENTE 
        and ec.TIPOEND = 0 
        and ec.UF = :uf 
     into :cod_cliente, :codfiscal_a;
   end 
   
  -- inserir um movimento detalhe
  INSERT INTO  
    
  -- regime normal  
  if (empresa_tipo = 2) then 
  begin 
      
           
    /* calcular venda contribuinte sem reducao base calculo */ 
    /* calcular venda contribuinte com reducao base calculo */
    /* calcular venda nao contribuinte sem reducao base calculo */ 
    /* calcular venda nao contribuinte com reducao base calculo */

  end
    
END^

SET TERM ; ^
