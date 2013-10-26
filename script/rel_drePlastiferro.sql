set term  ^ ;
ALTER PROCEDURE  RELDRE( PDTA1                            DATE
                       , PDTA2                            DATE
                       , PCC                              INTEGER )
RETURNS ( CONTA                            VARCHAR( 30 )
        , DESC_CONTA                       VARCHAR( 80 )
        , CREDITO                          DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , ACUMULA                          DOUBLE PRECISION
        , TOT                              CHAR( 1 ) )
AS
DECLARE VARIABLE CODREC INTEGER;
  DECLARE VARIABLE CENTROPERDA INTEGER;
  DECLARE VARIABLE CONTAJURO VARCHAR(60);
  DECLARE VARIABLE CONTACOMISSAO integer;  
  DECLARE VARIABLE TOTALIZA Double precision;
  DECLARE VARIABLE TOTALREC Double precision = 0;
  DECLARE VARIABLE TOTALDESPESAS Double precision = 0;  
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


  /* Busca a Conta Principal de lan�amento Desp. Juros. */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CONTASDESPESAJUROS'
   INTO :CONTAJURO;
  IF (CONTAJURO IS NULL) THEN 
    CONTAJURO = '4.1.1.01';

  /* Busca a Conta Principal de lan�amento Desp. COMISSAO. */
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
  FOR select sum(md.valTotal)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where  (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
          and ((PROD.TIPO = 'PROD') OR (PROD.TIPO IS NULL)) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      DESC_CONTA = '    Receitas de Vendas';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
  end
  TOTALIZA = 0;
  -- usado agro sao pedro - no select acima : mov.codcliente <> 8
  /**FOR select sum(md.valTotal)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where  (mov.codcliente = 8) and (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
          and ((PROD.TIPO = 'PROD') OR (PROD.TIPO IS NULL)) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      DESC_CONTA = '    Receitas de Vendas Consumidor';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
  end*/

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
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Receitas de Servi�os ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  

  /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas n�o operacionais';
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

      DESC_CONTA = '    Receitas de Juros e Corr. Monet�ria ';
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
  DESC_CONTA = '(-) Dedu��es das Receitas';
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
  FOR select sum(ven.DESCONTO)     
     FROM VENDA ven
     where  (ven.DATAVENDA between :PDTA1 AND :PDTA2) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

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

  DESC_CONTA = '= Receitas L�quidas';
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

  FOR select sum(md.VLRESTOQUE)     
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA
     where  (natu.TIPOMOVIMENTO = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) and ((prod.TIPO = 'PROD') or (prod.TIPO is null))  and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
    INTO :CREDITO
    do
    begin
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '     Custo dos Produtos Vendidos';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
    end
  TOTALIZA = 0;
  FOR select sum(md.QUANTIDADE * prod.PRECOMEDIO)     
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA
     where  (natu.TIPOMOVIMENTO = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) and prod.TIPO = 'SERV'  and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
    INTO :CREDITO
    do
    begin
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '     Custo dos Servi�os Vendidos';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL; 
      TOT = 'N';
      if (CREDITO > 0) then
        SUSPEND; 
    end
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
  TOTALDESPESAS = 0;
  -- ##################### Busca as contas que est�o marcadas para reduzir da Receita
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
		TOTALDESPESAS = TOTALDESPESAS + CREDITO;
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
        TOTALDESPESAS = TOTALDESPESAS + CREDITO;
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

        DESC_CONTA = '    Despesas Juros e Corr. Monet�ria ';
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';
        if (CREDITO > 0) THEN
          SUSPEND; 
        TOTALDESPESAS = TOTALDESPESAS + CREDITO;		  
      end  
    end

  end
  /* Gerando Total Receita */
  TOT = 'S';  
  DESC_CONTA = '= Total das Despesas operacionais';
  CONTA  = null;
  CREDITO = null;
  TOTAL = TOTALIZA;
  TOTAL = TOTALDESPESAS;
  SUSPEND;
  TOTAL = ACUMULA + TOTALIZA;

  /* Resultado Geral do Per�odo */
  DESC_CONTA = ' Resultado Geral no per�odo : ';
  CONTA  = null;
  CREDITO = null;
  
  --TOTAL = TOTALREC - TOTALIZA;
  SUSPEND;
  TOTAL = null;


end
