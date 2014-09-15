SET TERM ^ ;
ALTER PROCEDURE RELDRE (
    PDTA1 DATE,
    PDTA2 DATE,
    PCC INTEGER )
RETURNS (
    CONTA VARCHAR(30),
    DESC_CONTA VARCHAR(80),
    CREDITO DOUBLE PRECISION,
    TOTAL DOUBLE PRECISION,
    ACUMULA DOUBLE PRECISION,
    TOT CHAR(1) )
AS
  DECLARE VARIABLE CODREC INTEGER;
  DECLARE VARIABLE CODP INTEGER;  
  DECLARE VARIABLE CENTROPERDA INTEGER;
  DECLARE VARIABLE CONTAJURO VARCHAR(60);
  DECLARE VARIABLE CONTACOMISSAO integer;  
  DECLARE VARIABLE TOTALIZA Double precision;
  DECLARE VARIABLE SOMA Double precision;
  DECLARE VARIABLE SOMAmp Double precision;   
  DECLARE VARIABLE QTDE Double precision;
  DECLARE VARIABLE TOTALREC Double precision = 0;
  DECLARE VARIABLE DESC_MERCADO Double precision = 0;  
  DECLARE VARIABLE produt VARCHAR(300);
  DECLARE VARIABLE linha VARCHAR(60);
  DECLARE VARIABLE CONTAPAI VARCHAR(15);
BEGIN
  linha = 'nada';
  
  /* Busca o CENTRO DE CUSTO usado para Lixo e Descartes */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CENTRO PERDA'
   INTO :CENTROPERDA;
  IF (CENTROPERDA IS NULL) THEN 
    CENTROPERDA = 0;


  /* Busca a Conta Principal de lançamento Desp. Juros. */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CONTASDESPESAJUROS'
   INTO :CONTAJURO;
  IF (CONTAJURO IS NULL) THEN 
    CONTAJURO = '4.1.1.01';

  /* Busca a Conta Principal de lançamento Desp. COMISSAO. */
  SELECT CAST(DADOS as INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CONTACOMISSAO'
   INTO :CONTACOMISSAO;

  IF (CONTACOMISSAO IS NULL) THEN 
    CONTACOMISSAO = 0;

  SELECT  NOME FROM PLANO WHERE CONTA = :CONTAJURO
   INTO :CONTAJURO;     
  /* ########### Gerando a Receita ############*/
  /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas operacionais';
  CONTA  = null;
  CREDITO = null;
  SUSPEND;
  TOTALIZA = 0;
  TOTAL = 0;
  FOR select sum(md.VLR_BASE * md.QUANTIDADE)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join CLIENTES c on c.CODCLIENTE = mov.CODCLIENTE
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 3) 
       and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
       and ((PROD.TIPO <> 'SERV') OR (PROD.TIPO IS NULL)) 
       and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
       and (mov.STATUS = 0)
       and (c.REGIAO <> 39)
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      DESC_CONTA = '    Receitas Faturamento Mercado';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
  end
  TOTALIZA = 0;
  DESC_MERCADO = 0;--TOTAL * 0.1;

  FOR select sum(md.VLR_BASE * md.QUANTIDADE)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join CLIENTES c on c.CODCLIENTE = mov.CODCLIENTE
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 3) 
       and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
       and ((PROD.TIPO <> 'SERV') OR (PROD.TIPO IS NULL)) 
       and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
       and (mov.STATUS = 0)
       and (c.REGIAO = 39)
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      DESC_CONTA = '    Receitas Faturamento Varejo';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
  end
  TOTALIZA = 0;

  
  /*  Receitas Servicos OS */
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  FOR select sum(md.VLR_BASE * md.QUANTIDADE)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
          and PROD.TIPO = 'SERV' and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Receitas de Servicos ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  

  /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas nao operacionais';
  CONTA  = null;
  CREDITO = null;
  TOT = 'S';
  SUSPEND;

  /*  Receitas JUROS e CORRECAO MONETARIA*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  
  FOR select sum(JUROS + FUNRURAL)    
     FROM RECEBIMENTO rec 
  where (rec.EMISSAO between :PDTA1 AND :PDTA2) and rec.STATUS = '7-'         
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Receitas de Juros e Corr. Monetaria ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  

  TOTALIZA = 0;

  -- Outras Receitas de Vendas (FRETE , SEGUROS, etc )
  FOR select sum(v.VALOR_ICMS + v.VALOR_FRETE + v.VALOR_SEGURO + v.OUTRAS_DESP + v.VALOR_IPI)
     FROM VENDA v
  where (v.DATAVENDA between :PDTA1 AND :PDTA2)
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Outros receitas (FRETE, SEGURO) ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  
  TOTALIZA = 0;


  -- Receitas Diversas
  FOR select sum(r.VALOR_RESTO), p.NOME
     FROM RECEBIMENTO r
  inner join plano p on p.CODIGO = r.CONTACREDITO
  where (r.EMISSAO between :PDTA1 AND :PDTA2) And (r.CODVENDA is null) 
     group by p.NOME
     INTO :CREDITO, :DESC_CONTA
  do
  begin 
    DESC_CONTA = '    ' || :DESC_CONTA;
    IF (CREDITO IS NULL) THEN
      CREDITO = 0;
    TOTALIZA = TOTALIZA + CREDITO;
    TOTAL = TOTAL + TOTALIZA;
    ACUMULA = TOTAL;
    TOT = 'N';
    if (CREDITO > 0) THEN
      SUSPEND; 
	TOTALIZA = 0;  
  end  

  
  DESC_CONTA = '= Total de Receitas ';
  CONTA  = null;
  CREDITO = null;
  --TOTAL = NULL;
  TOT = 'S';

  SUSPEND;
  TOTALIZA = 0;



  /* Gerando Total Receita */
  DESC_CONTA = '(-) Deducoes das Receitas';
  CONTA  = null;
  CREDITO = null;
  TOTAL = null;
  TOT = 'S';
  SUSPEND;

  /* COMISSAO DE VENDAS  */

    IF (CONTACOMISSAO IS NOT NULL) THEN 
    begin       
      For Select sum(pag.VALOR_RESTO), pl.NOME    
        FROM PAGAMENTO pag , plano pl
       where (pag.EMISSAO between :PDTA1 AND :PDTA2) and pl.CODIGO = pag.CONTACREDITO 
       and (pag.CONTACREDITO = :CONTACOMISSAO)   group by pl.NOME       
      INTO :CREDITO, :DESC_CONTA
      do
      begin    
        IF (CREDITO IS NULL) THEN
          CREDITO = 0;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';
        if (CREDITO > 0) THEN
          SUSPEND; 
      end  
    end


  /*  Deducoes das Receitas*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  TOTAL = ACUMULA;
  FOR select sum(r.DESCONTO)     
     FROM RECEBIMENTO r
     where  (r.EMISSAO between :PDTA1 AND :PDTA2) 
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
        
     select sum(r.DESCONTO)     
     FROM VENDA r
     where  (r.DATAVENDA between :PDTA1 AND :PDTA2) 
     INTO :DESC_MERCADO;

     if (DESC_MERCADO IS NULL) THEN 
       desc_mercado = 0;        
        
      CREDITO = CREDITO + DESC_MERCADO; 
      DESC_CONTA = '    Descontos Concedidos';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      IF (CREDITO > 0) then
        SUSPEND; 
  end  

  /*  PERDAS E DESCARTES*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  TOTAL = ACUMULA;

  FOR select sum(md.VLRESTOQUE)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 2) and (mov.DATAMOVIMENTO between :PDTA1 AND :PDTA2) 
          and ((mov.CODALMOXARIFADO = :CENTROPERDA))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Perdas e Descartes';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      IF (CREDITO > 0) then
        SUSPEND; 
  end  

  DESC_CONTA = '= Receitas Liquidas';
  CONTA  = null;
  CREDITO = null;
  --TOTAL = NULL;
  TOT = 'S';

  SUSPEND;
  
  /* ########### FIM Receita ############*/

  /* ########### Gerando a Despesas ############*/
  DESC_CONTA = '(-) Custo das Vendas';
  CONTA  = null;
  CREDITO = null;
  TOT = 'N';
  SUSPEND;
  TOTAL = ACUMULA;
  TOTALIZA = 0;


  /* Total dos produtos VENDIDOS * seu custo  */
  soma = 0;
  FOR select md.CODPRODUTO, sum(md.QUANTIDADE)
     
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 3) 
       and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
       and ((PROD.TIPO <> 'SERV') OR (PROD.TIPO IS NULL)) 
       and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
       and (mov.STATUS = 0)
     group by md.CODPRODUTO  
     into :CodP, :qtde
  do begin 
    select ev.CUSTOMEDIO from ESTOQUE_CUSTOMEDIO(:PDTA1, :PDTA2, :codP) ev 
    into :credito;  
    if (credito is null) then 
      credito = 0;
    --if (credito = 0) then   
    BEGIN
      -- nao teve compra deste item, ve se usa materia prima  
       SELECT SUM(COALESCE(r.QTDEUSADA,0) * 
       (select ev.CUSTOMEDIO from ESTOQUE_CUSTOMEDIO(:PDTA1, :PDTA2, r.CODPRODMP) ev)) 
        FROM MATERIA_PRIMA r, PRODUTOS p
       WHERE r.CODPRODMP  = p.CODPRODUTO 
         AND r.CODPRODUTO = :codP
        into :SOMAmp;   
       if (SOMAmp is null) then 
           SOMAmp = 0;        
       if (somamp > 0) then 
         credito = somamp;        
    end 
    soma = soma + (credito*qtde);
  END
  credito = soma;
  IF (CREDITO IS NULL) THEN
    CREDITO = 0;
  DESC_CONTA = '     Custo dos Produtos Vendidos';
  TOTALIZA = TOTALIZA - CREDITO;
  TOTAL = TOTAL + TOTALIZA;
  ACUMULA = TOTAL;
  TOT = 'N';
  SUSPEND;  
   
  TOTALIZA = 0;
  soma = 0;
  FOR select md.CODPRODUTO, sum(md.QUANTIDADE)
     
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 3) 
       and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
       and (PROD.TIPO = 'SERV') 
       and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
       and (mov.STATUS = 0)
     group by md.CODPRODUTO  
     into :CodP, :qtde
  do begin 
    select ev.CUSTOMEDIO from ESTOQUE_CUSTOMEDIO(:PDTA1, :PDTA2, :codP) ev 
    into :credito;  
    if (credito is null) then 
      credito = 0;
    --if (credito = 0) then   
    BEGIN
      -- nao teve compra deste item, ve se usa materia prima  
       SELECT SUM(COALESCE(r.QTDEUSADA,0) * 
       (select ev.CUSTOMEDIO from ESTOQUE_CUSTOMEDIO(:PDTA1, :PDTA2, r.CODPRODMP) ev)) 
        FROM MATERIA_PRIMA r, PRODUTOS p
       WHERE r.CODPRODMP  = p.CODPRODUTO 
         AND r.CODPRODUTO = :codP
        into :SOMAmp;   
       if (SOMAmp is null) then 
           SOMAmp = 0;        
       if (somamp > 0) then 
         credito = somamp;        
    end 
    soma = soma + (credito*qtde);
  END
  credito = soma;
  IF (CREDITO IS NULL) THEN
    CREDITO = 0;
  DESC_CONTA = '     Custo dos Produtos Vendidos';
  TOTALIZA = TOTALIZA - CREDITO;
  TOTAL = TOTAL + TOTALIZA;
  ACUMULA = TOTAL;
  TOT = 'N';
  SUSPEND;  
   
  
  
  
  TOTALIZA = 0;

  -- Outros Custos de Vendas (FRETE , SEGUROS, etc )
  FOR select sum(c.VALOR_ICMS + c.VALOR_FRETE + c.VALOR_SEGURO + c.OUTRAS_DESP + c.VALOR_IPI)
     FROM COMPRA c
  where (c.DATACOMPRA between :PDTA1 AND :PDTA2)
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '     Outros custos CMV (FRETE, SEGURO) ';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  
  TOTALIZA = 0;

  -- ##################### Busca as contas que estão marcadas para reduzir da Receita
  FOR  select  distinct pl.contapai  FROM PAGAMENTO pag
     left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
     inner join plano pl on pl.CODIGO = pag.CONTACREDITO
     where (pl.REDUZRECEITA = 'S') and (pag.EMISSAO between :PDTA1 AND :PDTA2)  and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
     and (pl.CODIGO <> :CONTACOMISSAO) and (pl.CONTAPAI <> '')
           group by pl.contapai 
    INTO :CONTAPAI
  do begin
     TOT = 'G'; /*Para nao imprimir a linha*/
     TOTAL = 0;
     CONTA  = null;
     CREDITO = null;
     SELECT NOME FROM PLANO WHERE CONTA = :CONTAPAI
     INTO :DESC_CONTA; 
     -- SUSPEND;  -- Nao imprimi esse grupos , aparecem tudo em Custos de Vendas
     TOTAL = ACUMULA; 
     /* A maioria das despesas nao tem produto, sao compras ligado ao plano de contas    */
     FOR  select sum(pag.VALOR_RESTO), pl.NOME  FROM PAGAMENTO pag
       left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
       inner join plano pl on pl.CODIGO = pag.CONTACREDITO
       where (pl.REDUZRECEITA = 'S') and (pag.EMISSAO between :PDTA1 AND :PDTA2) 
           and pl.contapai = :CONTAPAI  and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
           group by pl.NOME
      INTO :CREDITO, :produt
      do
      begin 
        DESC_CONTA = '     ' || produt;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';

        SUSPEND; 
        TOTALIZA = 0;
      end
    
  end
  -- ########################## Fim do REDUZ RECEITA

  DESC_CONTA = '= Resultado Bruto';
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  --TOTAL = 0;
  TOT = 'S';

  SUSPEND;
  TOTAL = ACUMULA;


  DESC_CONTA = '(-) Despesas Operacionais';
  CONTA  = null;
  CREDITO = null;
  TOT = 'N';
  SUSPEND;
  

  /* PEGO A CONTA PAI PARA IMPRIMIR POR GRUPO  */

  FOR  select  distinct pl.contapai  FROM PAGAMENTO pag
     left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
     inner join plano pl on pl.CODIGO = pag.CONTACREDITO
     where ((REDUZRECEITA IS NULL) OR (REDUZRECEITA = 'N')) and (pag.EMISSAO between :PDTA1 AND :PDTA2) 
      and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
      and (pl.CODIGO <> :CONTACOMISSAO) and (pl.CONTAPAI <> '')
           group by pl.contapai 
    INTO :CONTAPAI
  do begin
     TOT = 'G'; /*Para nao imprimir a linha*/
     TOTAL = 0;
     CONTA  = null;
     CREDITO = null;
     SELECT NOME FROM PLANO WHERE CONTA = :CONTAPAI
     INTO :DESC_CONTA; 
     SUSPEND;
     TOTAL = ACUMULA; 
     ACUMULA = 0;
     /* A maioria das despesas nao tem produto, sao compras ligado ao plano de contas    */
     FOR  select sum(pag.VALOR_RESTO), pl.NOME  FROM PAGAMENTO pag
       left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
       inner join plano pl on pl.CODIGO = pag.CONTACREDITO
       where ((REDUZRECEITA IS NULL) OR (REDUZRECEITA = 'N')) and  (pag.EMISSAO between :PDTA1 AND :PDTA2) 
           and pl.contapai = :CONTAPAI  and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
           group by pl.NOME
      INTO :CREDITO, :produt
      do
      begin 
        DESC_CONTA = '     ' || produt;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';

        SUSPEND; 
        TOTALIZA = 0;
      end
    
    IF (DESC_CONTA = CONTAJURO) THEN 
    begin 
      For Select sum(pag.JUROS + pag.FUNRURAL)    
        FROM PAGAMENTO pag 
       where (pag.EMISSAO between :PDTA1 AND :PDTA2) and pag.STATUS = '7-'         
      INTO :CREDITO
      do
      begin    
        IF (CREDITO IS NULL) THEN
          CREDITO = 0;

        DESC_CONTA = '    Despesas Juros e Corr. Monetaria ';
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';
        if (CREDITO > 0) THEN
          SUSPEND; 
      end  
    end

  end
  /* Gerando Total Receita */
  DESC_CONTA = '= Total das Despesas operacionais';
  CONTA  = null;
  CREDITO = null;
  TOTAL = TOTALIZA;
  TOT = 'S';

  SUSPEND;
  TOTAL = ACUMULA + TOTALIZA;

  /* Resultado Geral do Período */
  DESC_CONTA = ' Resultado Geral no periodo : ';
  CONTA  = null;
  CREDITO = null;
  
  --TOTAL = TOTALREC - TOTALIZA;
  SUSPEND;
  TOTAL = null;


end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE RELDRE TO  SYSDBA;

