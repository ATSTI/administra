CREATE OR ALTER PROCEDURE CALCULA_ICMS (
    NUMERO_NF integer,
    UF char(2),
    CFOP varchar(10),
    FRETE double precision,
    SEGURO double precision,
    OUTROS double precision,
    TOTAL_PROD double precision,
    INDICE_MANUAL char(1),
    ICMS_INFO double precision,
    REDUZ_INFO double precision )
AS
declare variable cod integer;
declare variable codv integer;
declare variable NotaFiscalVenda integer;
declare variable serie varchar(20);
declare variable prazo varchar(40); 
declare variable NUMEROFATURA VARCHAR(20);
declare variable PARAMETRO VARCHAR(20);
declare variable qtde DOUBLE PRECISION;
declare variable preco DOUBLE PRECISION;
declare variable TOTICMS DOUBLE PRECISION;
declare variable TOTBASEICMS DOUBLE PRECISION;
declare variable TOTST DOUBLE PRECISION;
declare variable TOTIPI DOUBLE PRECISION;
declare variable TOTPROD DOUBLE PRECISION;
declare variable TOTBASEST DOUBLE PRECISION;
declare variable TOTII DOUBLE PRECISION;
declare variable TOTBCII DOUBLE PRECISION;
declare variable SEG DOUBLE PRECISION;
declare variable VFRETE DOUBLE PRECISION;
declare variable VOUTROS DOUBLE PRECISION;
declare variable bcfrete DOUBLE PRECISION;
declare variable stfrete DOUBLE PRECISION;
declare variable bcstfrete DOUBLE PRECISION;
declare variable icmsfrete DOUBLE PRECISION;
declare variable DESCONTO DOUBLE PRECISION;
declare variable VSEGURO DOUBLE PRECISION;
declare variable OUTRAS DOUBLE PRECISION;
declare variable codCli integer;
declare variable d9 SMALLINT;
declare variable nat SMALLINT;
declare variable PESSOA Char(1);
DECLARE VARIABLE PercStr varchar(32);
DECLARE VARIABLE ICMS_DESTACADO DOUBLE PRECISION;
DECLARE VARIABLE ICMS_DESTACADO_DESC VARCHAR(150);
DECLARE VARIABLE ICMS_DESTACADO_DESC2 VARCHAR(100); 
DECLARE VARIABLE VlrStr varchar(32);
DECLARE VARIABLE PIS DOUBLE PRECISION;
DECLARE VARIABLE COFINS DOUBLE PRECISION;
DECLARE VARIABLE BCCOFINS DOUBLE PRECISION;
DECLARE VARIABLE BCPIS DOUBLE PRECISION;
DECLARE VARIABLE BCIPI DOUBLE PRECISION;
DECLARE VARIABLE VTOTTRIB DOUBLE PRECISION;
DECLARE VARIABLE totalNota DOUBLE PRECISION;
DECLARE VARIABLE icms_percent DOUBLE PRECISION;
DECLARE VARIABLE icms_percent_reduz DOUBLE PRECISION;
declare variable codmovorigem integer;
begin
  -- versao 2.0.0.20
    ICMS_DESTACADO_DESC = '';
    ICMS_DESTACADO_DESC2 = '';

  --==============================================================--
  --Carrega os dados da Nota Fiscal
  select v.SERIE from venda v
    inner join notafiscal n on n.CODVENDA = v.CODVENDA where n.NUMNF = :numero_nf
  into :serie;

  --==============================================================--
  --Preenchimento do tipo da PESSOA
  pessoa = 1;      -- Pessoa Juridica
  Select first 1 c.TIPOFIRMA from CLIENTES c where c.CODCLIENTE = :CodCli
        Into :pessoa;

  SELECT s.ICMS_DESTACADO FROM SERIES s WHERE s.SERIE = :SERIE
    into :icms_destacado;

  if (icms_destacado is null) then
    icms_destacado = 0;

  

    select v.codmovimento, v.NOTAFISCAL, v.SERIE, v.CODVENDA, v.prazo, n.NATUREZA, n.VALOR_FRETE, n.OUTRAS_DESP, n.VALOR_SEGURO, n.VALOR_DESCONTO from venda v
        inner join notafiscal n on n.CODVENDA = v.CODVENDA where n.NUMNF = :numero_nf and (n.NATUREZA = 12 or n.NATUREZA = 15 or n.NATUREZA = 16)
    into :cod, :notaFiscalVenda, :serie, :codv, :prazo, :nat, :VFRETE, :SEG, :VOUTROS, :DESCONTO; 
    	
    if (nat is null) then
    select c.codmovimento, c.NOTAFISCAL, c.SERIE, c.CODCOMPRA, c.prazo, n.NATUREZA, n.VALOR_FRETE, n.OUTRAS_DESP, n.VALOR_SEGURO, n.VALOR_DESCONTO from COMPRA c
        inner join notafiscal n on n.CODVENDA = c.CODCOMPRA where n.NUMNF = :numero_nf and (n.NATUREZA = 20 or n.NATUREZA = 21)
    into :cod, :notaFiscalVenda, :serie, :codv, :prazo, :nat, :VFRETE, :SEG, :VOUTROS, :DESCONTO;              

    select COALESCE(sum(md.ICMS_SUBST), 0), COALESCE(sum(md.ICMS_SUBSTD), 0), COALESCE(sum(md.VALOR_ICMS), 0), COALESCE(sum(md.VLR_BASEICMS), 0)
    , COALESCE(sum(md.VIPI), 0), COALESCE(sum(md.QUANTIDADE * md.VLR_BASE), 0) , COALESCE(sum(md.VALOR_DESCONTO), 0), COALESCE(sum(md.VALOR_SEGURO), 0)
    , COALESCE(sum(md.VALOR_OUTROS), 0) , COALESCE(sum(md.FRETE), 0), COALESCE(sum(md.VALOR_PIS), 0), COALESCE(sum(md.VALOR_COFINS), 0) 
    , COALESCE(sum(md.II), 0) , COALESCE(sum(md.BCII), 0) , COALESCE(sum(md.VLRBC_COFINS), 0) , COALESCE(sum(md.VLRBC_IPI), 0), COALESCE(sum(md.VLRBC_PIS), 0)
    , COALESCE(sum(md.VLRTOT_TRIB), 0) 
    from MOVIMENTODETALHE md
    where md.CODMOVIMENTO = :cod
    into :TOTST, :TOTBASEST, :TOTICMS, :TOTBASEICMS, :TOTIPI, :TOTPROD, :DESCONTO, :VSEGURO, :OUTRAS, :VFRETE, :PIS, :COFINS, :TOTII, :TOTBCII, :BCCOFINS, :BCIPI, :BCPIS, :VTOTTRIB;
    
    icms_percent_reduz = 0;
    icms_percent = 0;
    SELECT FIRST 1  COALESCE(ei.ICMS, 0), COALESCE(ei.REDUCAO, 1)
        from ESTADO_ICMS ei
        where ei.CODFISCAL = :PESSOA and ei.UF = :UF
          INTO :icms_percent, :icms_percent_reduz;
    
--==============================================================--
  --Preenchimento DADOS ADICIONAIS ICMS DESTACADO
ICMS_DESTACADO_DESC = 'Null';
  if (icms_destacado > 0) then
  begin
    select * from FU_FORMATAR(:TOTBASEICMS, '########.##0,00')
      into :VlrStr;

    select * from FU_FORMATAR(:TOTICMS, '########.##0,00')
      into :PercStr;

    if (icms_destacado > 0) then
    begin
      ICMS_DESTACADO_DESC = 'Base Calc. ICMS=' || :VlrStr ||  ' Aliq.=' || cast(:icms_destacado as varchar(5)) || '% - Icms=' || :PercStr;
      --ICMS_DESTACADO_DESC2 =
    end
	--UPDATE NOTAFISCAL SET  CORPONF5 = :ICMS_DESTACADO_DESC where NUMNF = :NUMERO_NF;	
  end
  --==============================================================--
  --==============================================================--
  -- 14/01/2021
  if (icms_percent > 0) then
  begin
    TOTBASEICMS = ( TOTPROD - DESCONTO + VSEGURO + OUTRAS) * ((icms_percent * icms_percent_reduz)/100);
    select * from FU_FORMATAR(:TOTBASEICMS, '########.##0,00')
      into :VlrStr;
    TOTICMS = icms_percent * icms_percent_reduz;
    select * from FU_FORMATAR(:TOTICMS, '########.##0,00')
      into :PercStr;
  
    if (icms_percent > 0) then
    begin
      ICMS_DESTACADO_DESC = 'Permite o aproveitamento de crédito do ICMS no valor de R$ ' || VlrStr || ', correspondente à alíquota de ' || PercStr || '%, nos termos do Art. 23, da LC nº 123/06';
      --ICMS_DESTACADO_DESC2 =
    end
	--UPDATE NOTAFISCAL SET  CORPONF5 = :ICMS_DESTACADO_DESC where NUMNF = :NUMERO_NF;	
  end
--==============================================================--
  totalNota = TOTPROD + TOTST + TOTIPI + VSEGURO - DESCONTO + OUTRAS  + VFRETE;
  if (left(:cfop,1) = '3') then
  begin
    totalNota = totalNota + TOTII + PIS + COFINS + TOTICMS;
  end
    if (icms_destacado > 0) then
    begin
       UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :TOTBASEST , VALOR_ICMS_SUBST = :TOTST , VALOR_IPI = :TOTIPI, VALOR_ICMS = :TOTICMS , BASE_ICMS = :TOTBASEICMS ,
          VALOR_TOTAL_NOTA = :totalNota, VALOR_PIS = :PIS, VALOR_COFINS = :COFINS
          , II = :TOTII, BCII = :TOTBCII, VALOR_PRODUTO = :TOTPROD, VALOR_DESCONTO = :DESCONTO, VLRTOT_TRIB = :VTOTTRIB, CORPONF5 = :ICMS_DESTACADO_DESC
       where NUMNF = :numero_nf;
    end
    else begin
       UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :TOTBASEST , VALOR_ICMS_SUBST = :TOTST , VALOR_IPI = :TOTIPI, VALOR_ICMS = :TOTICMS , BASE_ICMS = :TOTBASEICMS ,
          VALOR_TOTAL_NOTA = :totalNota, VALOR_PIS = :PIS, VALOR_COFINS = :COFINS
          , II = :TOTII, BCII = :TOTBCII, VALOR_PRODUTO = :TOTPROD, VALOR_DESCONTO = :DESCONTO, VLRTOT_TRIB = :VTOTTRIB
        where NUMNF = :numero_nf;    
    end
end
