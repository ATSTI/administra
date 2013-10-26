set term ^;
CREATE OR ALTER PROCEDURE  RELDRE( PDTA1                            DATE
                                 , PDTA2                            DATE, PCC INTEGER )
	-- ATS Soluções 11/03/2009
RETURNS ( CONTA                            VARCHAR( 30 )
        , DESC_CONTA                       VARCHAR( 80 )
        , CREDITO                          DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , ACUMULA                          DOUBLE PRECISION
        , TOT                              CHAR( 1 ) )
AS
  DECLARE VARIABLE CODREC INTEGER;
  DECLARE VARIABLE CODP INTEGER;
  DECLARE VARIABLE CENTROPERDA INTEGER;
  DECLARE VARIABLE CONTAJURO VARCHAR(60);
  DECLARE VARIABLE CONTAPASSIVO VARCHAR(60);  
  DECLARE VARIABLE CONTACOMISSAO integer;  -- Codigo da Conta
  DECLARE VARIABLE CONTAIMPOSTOVENDA integer;  -- Codigo da Conta  
  DECLARE VARIABLE TOTALIZA Double precision;
  DECLARE VARIABLE TOTALREC Double precision = 0;
  DECLARE VARIABLE TOTAL Double precision = 0;
  DECLARE VARIABLE custoMatPrima Double precision = 0;
  DECLARE VARIABLE QTDE Double precision = 0;  
  DECLARE VARIABLE produt VARCHAR(300);
  DECLARE VARIABLE linha VARCHAR(60);
  DECLARE VARIABLE jaPassou CHAR(1);
  DECLARE VARIABLE CONTAPAI VARCHAR(15);
  DECLARE VARIABLE EstoqueIni Double precision = 0;    
  DECLARE VARIABLE EstoqueFim Double precision = 0;    
  DECLARE VARIABLE Compras Double precision = 0;      
  DECLARE VARIABLE Desconto Double precision = 0;        
BEGIN
  -- TOT ----->  A  = Negrito / Valor Null,  S = Negrito com Valor, N = Normal sem valor
  linha = 'nada';
  jaPassou = 'N';
  /* Busca o CENTRO DE CUSTO usado para Lixo e Descartes */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CENTRO PERDA'
   INTO :CENTROPERDA;
  IF (CENTROPERDA IS NULL) THEN 
    CENTROPERDA = 0;

  /* Busca a Conta Principal de lançamento Desp. Juros. */
  CONTAJURO = '4.1.1.01';
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CONTASDESPESAJUROS'
   INTO :CONTAJURO;

  /* Busca a Conta Principal de lançamento Desp. COMISSAO. */
  contaComissao = null;
  SELECT CAST(DADOS as INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CONTACOMISSAO'
   INTO :CONTACOMISSAO;

  IF (CONTACOMISSAO IS NULL) THEN 
    CONTACOMISSAO = 0;

  /* Busca a Conta PASSIVO. */
  contaPassivo = null;
  SELECT CAST(DADOS as INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CONTASPASSIVO'
   INTO :CONTAPASSIVO;

  IF (CONTAPASSIVO IS NULL) THEN 
    CONTAPASSIVO = 0;

	
  /* Busca a Conta Principal de lançamento Impostos Sobre Venda*/
  contaImpostoVenda = null;
  SELECT CAST(DADOS as INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CONTAIMPOSTOVENDA'
   INTO :CONTAIMPOSTOVENDA;

  /* ########### Gerando a Receita ############*/
  /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas operacionais';
  CONTA  = null;
  CREDITO = null;
  SUSPEND;
  TOTALIZA = 0;
  TOTAL = 0;
  select sum(md.valTotal)    
    FROM MOVIMENTO mov 
   inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
   inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
   inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
   where  (mov.codnatureza = 3) 
     and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
     and ((PROD.TIPO <> 'SERV') OR (PROD.TIPO IS NULL)) 
     and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
    INTO :CREDITO;

  select sum(md.valTotal*((case when md.qtde_alt is null then 0 else md.qtde_alt end)/100))    
    FROM MOVIMENTO mov 
   inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
   inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
   inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
   where (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
     and ((PROD.TIPO <> 'SERV') OR (PROD.TIPO IS NULL)) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
    INTO :desconto;
  if (desconto is null) then
	desconto = 0;
  IF (CREDITO IS NULL) THEN
    CREDITO = 0;
  CREDITO = CREDITO-desconto;	
  DESC_CONTA = '    Faturamento do Mês';
  TOTALIZA = TOTALIZA + CREDITO;
  TOTAL = TOTAL + TOTALIZA;
  ACUMULA = TOTAL;
  TOT = 'N';
  SUSPEND; 
  TOTALIZA = 0;

  /*  Receitas Servicos OS */
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  FOR select sum(md.valTotal)    
        FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
       where (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
         and PROD.TIPO = 'SERV' and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
  INTO :CREDITO
  do begin    
    IF (CREDITO IS NULL) THEN
      CREDITO = 0;
    DESC_CONTA = '    Receitas de Serviços ';
    TOTALIZA = TOTALIZA + CREDITO;
    TOTAL = TOTAL + TOTALIZA;
    ACUMULA = TOTAL;
    TOT = 'N';
    if (CREDITO > 0) THEN
      SUSPEND; 
  end  

  /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas não operacionais';
  CONTA  = null;
  CREDITO = null;
  TOT = 'A';
  SUSPEND;

  /*  Receitas JUROS e CORRECAO MONETARIA*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  
  FOR select sum(JUROS + FUNRURAL)    
        FROM RECEBIMENTO rec 
       where (rec.DATARECEBIMENTO between :PDTA1 AND :PDTA2) and rec.STATUS = '7-'         
  INTO :CREDITO
  do begin    
    IF (CREDITO IS NULL) THEN
      CREDITO = 0;
    DESC_CONTA = '    Receitas de Juros e Corr. Monetária ';
    TOTALIZA = TOTALIZA + CREDITO;
    TOTAL = TOTAL + TOTALIZA;
    ACUMULA = TOTAL;
    TOT = 'N';
    if (CREDITO > 0) THEN
      SUSPEND; 
  end  
  TOTALIZA = 0;

  -- Outras Receitas de Vendas (FRETE , SEGUROS, etc )
  FOR select sum(v.VALOR_FRETE + v.VALOR_SEGURO + v.OUTRAS_DESP + v.VALOR_IPI)
        FROM VENDA v
       where (v.DATAVENDA between :PDTA1 AND :PDTA2)
  INTO :CREDITO
  do begin    
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
  do begin 
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
  DESC_CONTA = '(-) Deduções das Receitas';
  CONTA  = null;
  CREDITO = null;
  ACUMULA = TOTAL;
  TOTAL = 0;
  TOT = 'A';
  SUSPEND;

  /* COMISSAO DE VENDAS  */

  IF (CONTACOMISSAO IS NOT NULL) THEN 
  begin       
    For Select sum(pag.VALOR_RESTO), pl.NOME    
          FROM PAGAMENTO pag , plano pl
         where (pag.EMISSAO between :PDTA1 AND :PDTA2) and pl.CODIGO = pag.CONTACREDITO 
           and (pag.CONTACREDITO = :CONTACOMISSAO)   group by pl.NOME       
    INTO :CREDITO, :DESC_CONTA
    do begin    
	  desc_conta = '    '  || :DESC_CONTA;
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

  -- Desconto concedido na venda 
  FOR select sum(ven.DESCONTO)     
       FROM VENDA ven
      where  (ven.DATAVENDA between :PDTA1 AND :PDTA2) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
  INTO :CREDITO
  do begin    
    IF (CREDITO IS NULL) THEN
      CREDITO = 0;
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
  do begin    
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
  
  /*  Impostos sobre Venda  */
  IF (CONTAIMPOSTOVENDA IS NOT NULL) THEN 
  begin       
    For Select sum(pag.VALOR_RESTO), pl.NOME    
          FROM PAGAMENTO pag , plano pl
         where (pag.EMISSAO between :PDTA1 AND :PDTA2) and pl.CODIGO = pag.CONTACREDITO 
           and (pag.CONTACREDITO = :CONTAIMPOSTOVENDA)   group by pl.NOME       
    INTO :CREDITO, :DESC_CONTA
    do begin    
	  desc_conta = '    '  || :DESC_CONTA;
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
  
  DESC_CONTA = '= Receitas Líquidas';
  CONTA  = null;
  CREDITO = null;
  TOTAL = ACUMULA;
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
  TOTALIZA = 0;

  Select sum(VALORCUSTO*SALDOFIM) from SPESTOQUEPRODUTO((:PDTA1-30), (:PDTA1-1),0,500000, 'TODOS OS GRUPOS CADASTRADOS',
    'TODOS SUBGRUPOS DO CADASTRO', 'TODAS AS MARCAS CADASTRADAS', 0) 
  INTO :EstoqueIni;
  TOTALIZA = EstoqueFim;
  Select sum(VALORCUSTO*SALDOFIM) from SPESTOQUEPRODUTO(:PDTA1, :PDTA2,0,500000, 'TODOS OS GRUPOS CADASTRADOS',
    'TODOS SUBGRUPOS DO CADASTRO', 'TODAS AS MARCAS CADASTRADAS', 0) 
  INTO :EstoqueFim;
  TOTALIZA = TOTALIZA + EstoqueFim;
  EstoqueFim = TOTALIZA;
  
  TOTALIZA = 0;
  /*  Valor que Entrou durante o Mês por Compras*/
  For select SUM(rec.VALOR) from COMPRA rec
       where rec.DATACOMPRA between :PDTA1 and :PDTA2  
         and rec.codFORNECEDOR > 0
         and ((rec.CODCCUSTO = :PCC) OR (:PCC = 0)) 
  INTO :Compras
  do begin
  end
  
  EstoqueFim = EstoqueIni + Compras; 
  DESC_CONTA = '     Custo dos Produtos Vendidos';
  CREDITO = EstoqueIni + Compras - EstoqueFim;
  TOTALIZA = TOTALIZA - CREDITO;
  --TOTAL = TOTAL + TOTALIZA;                                  #############  Aqui esta pegando algum valor NULL  
  ACUMULA = TOTAL;
  TOT = 'N';
  if (CREDITO > 0) then
    SUSPEND;  
	
  TOTALIZA = 0;
  DESC_CONTA = '     Estoque Inicial';
  CREDITO = estoqueIni;
  TOT = 'N';
  --if (CREDITO > 0) then
  --  SUSPEND; 

  DESC_CONTA = '     Compras';
  if (compras is null) then 
    compras = 0;
  CREDITO = Compras;
  TOTALIZA = TOTALIZA - CREDITO;
  TOTAL = TOTAL + TOTALIZA;     
  TOT = 'N';
  if (CREDITO > 0) then
    SUSPEND; 
  compras = 0;
  TOTALIZA = 0;
  DESC_CONTA = '     Estoque Final';
  CREDITO = EstoqueFim;
  
  TOT = 'N';
  --if (CREDITO > 0) then
  --  SUSPEND; 
  TOTALIZA = 0;	   
  CONTA  = null;
  CREDITO = null;
  
  TOTALIZA = 0;
  -- Serviços
  FOR select sum(md.QUANTIDADE * prod.PRECOMEDIO)     
        FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA
       where  (natu.TIPOMOVIMENTO = 3) 
         and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
         and prod.TIPO = 'SERV'  
         and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
  INTO :CREDITO
  do begin
    IF (CREDITO IS NULL) THEN
      CREDITO = 0;

    DESC_CONTA = '     Custo dos Serviços Vendidos';
    TOTALIZA = TOTALIZA - CREDITO;
    TOTAL = TOTAL + TOTALIZA;
    ACUMULA = TOTAL; 
    TOT = 'N';
    if (CREDITO > 0) then
      SUSPEND; 
  end
  TOTALIZA = 0;

  -- ##################### Busca as contas que estão marcadas para reduzir da Receita
  FOR  select distinct pl.contapai  FROM PAGAMENTO pag
         left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
        inner join plano pl on pl.CODIGO = pag.CONTACREDITO
        where (pl.REDUZRECEITA = 'S') 
          and (pag.EMISSAO between :PDTA1 AND :PDTA2)  
          and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0))
          and (pl.CODIGO <> :CONTACOMISSAO) 
          and (pl.CONTAPAI <> '') 
          and (plnCtaRoot(pl.CONTAPAI) <> 2) 
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
    FOR  select sum(pag.VALOR_RESTO), pl.NOME  
           FROM PAGAMENTO pag
           left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
          inner join plano pl on pl.CODIGO = pag.CONTACREDITO
          where (pl.REDUZRECEITA = 'S') 
            and (pag.EMISSAO between :PDTA1 AND :PDTA2) 
            and pl.contapai = :CONTAPAI  
            and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0)) 
            and (plnCtaRoot(pl.CONTAPAI) <> 2) 
          group by pl.NOME
    INTO :CREDITO, :produt
    do begin 
      if (credito is null) then 
        credito = 0;
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
  TOTAL = ACUMULA;
  SUSPEND;
  ACUMULA = TOTAL;


  DESC_CONTA = '(-) Despesas Operacionais';
  CONTA  = null;
  CREDITO = null;
  TOT = 'N';
  SUSPEND;
  

  /* PEGO A CONTA PAI PARA IMPRIMIR POR GRUPO  */

  FOR  select distinct pl.contapai  
         FROM PAGAMENTO pag
         left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
        inner join plano pl on pl.CODIGO = pag.CONTACREDITO
        where ((REDUZRECEITA IS NULL) OR (REDUZRECEITA = 'N')) 
          and (pag.EMISSAO between :PDTA1 AND :PDTA2) 
          and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0)) 
          and (plnCtaRoot(pl.CONTAPAI) <> 2) 
          and (pl.CODIGO <> :CONTACOMISSAO) 
          and (pl.CONTAPAI <> '')
        group by pl.contapai 
  INTO :CONTAPAI
  do begin
    TOT = 'G'; /*Para nao imprimir a linha*/
    TOTAL = 0;
    CONTA  = null;
    CREDITO = null;
	  
    SELECT NOME FROM PLANO WHERE CONTA = :CONTAPAI
    INTO :DESC_CONTA; 
    if (plnctaRoot(:contaPai) <> contaPassivo ) then
	begin 	 
      SUSPEND;
	end  
	 
	if (jaPassou = 'N') then
	begin 
	  IF (CONTAPAI = CONTAJURO) THEN 
      begin 
	    --desc_conta = :CONTAPAI || ' - ' || :CONTAJURO;
	    --suspend;
        For Select sum(pag.JUROS + pag.FUNRURAL)    
              FROM PAGAMENTO pag 
             where (pag.DATAPAGAMENTO between :PDTA1 AND :PDTA2) 
               and pag.STATUS = '7-'
               and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0))          
        INTO :CREDITO
        do begin    
          IF (CREDITO IS NULL) THEN
            CREDITO = 0;
          DESC_CONTA = '    Despesas Juros e Corr. Monetária ';
          TOTALIZA = TOTALIZA - CREDITO;
          TOTAL = ACUMULA;
          TOTAL = TOTAL + TOTALIZA;
          ACUMULA = TOTAL;
          TOT = 'N';
          if (credito > 0) then
            SUSPEND; 
        end  
	    jaPassou = 'S';
      end
    end       
	 
    TOTAL = ACUMULA; 
    ACUMULA = 0;
    if (plnctaRoot(:contaPai) <> contaPassivo ) then
    begin 
      /* A maioria das despesas nao tem produto, sao compras ligado ao plano de contas    */
      FOR  select sum(pag.VALOR_RESTO), pl.NOME  
             FROM PAGAMENTO pag
             left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
            inner join plano pl on pl.CODIGO = pag.CONTACREDITO
            where ((REDUZRECEITA IS NULL) OR (REDUZRECEITA = 'N')) 
              and  (pag.EMISSAO between :PDTA1 AND :PDTA2) 
              and pl.contapai = :CONTAPAI  
              and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0)) 
              and (plnCtaRoot(pl.CONTAPAI) <> 2) 
            group by pl.NOME
      INTO :CREDITO, :produt
      do
      begin 
        if (credito is null) then 
          credito = 0;
        DESC_CONTA = '     ' || produt;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';
        SUSPEND; 
        TOTALIZA = 0;
      end
    end 
    TOTALIZA = 0;
  end	 
  /* Gerando Total Receita */
  DESC_CONTA = '= Resultado Liquido ';
  CONTA  = null;
  CREDITO = null;
  --TOTAL = TOTALIZA;
  TOT = 'S';

  SUSPEND;
  --TOTAL = ACUMULA + TOTALIZA;

  /* Resultado Geral do Período */
  DESC_CONTA = ' Resultado Geral no período : ';
  CONTA  = null;
  CREDITO = null;
  
  --TOTAL = TOTALREC - TOTALIZA;
  SUSPEND;
  TOTAL = null;

end
