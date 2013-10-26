SET TERM ^ ;
ALTER PROCEDURE RELDRESINTETICO (
    PDTA1 Date,
    PDTA2 Date,
    PCC Integer )
RETURNS (
    CONTA Varchar(30),
    DESC_CONTA Varchar(80),
    CREDITO Double precision,
    TOTAL Double precision,
    ACUMULA Double precision,
    TOT Char(1) )
AS
DECLARE VARIABLE CODREC INTEGER;
  DECLARE VARIABLE CENTROPERDA INTEGER;
  DECLARE VARIABLE TOTALIZA Double precision;
  DECLARE VARIABLE TOTALREC Double precision = 0;
  DECLARE VARIABLE produt VARCHAR(300);
  DECLARE VARIABLE linha VARCHAR(60);
  DECLARE VARIABLE CONTAPAI VARCHAR(15);
  DECLARE VARIABLE CONTAJURO VARCHAR(60);
  DECLARE VARIABLE CONTACOMISSAO integer;  
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
  DESC_CONTA = 'Receitas Brutas';
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
      DESC_CONTA = '    Receita Vendas ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
  end
  /*  Receitas Serviços OS */
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

      DESC_CONTA = '    Receita Servicos ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
  end

    /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas não operacionais';
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
  
  DESC_CONTA = '= Total Receitas ';
  CONTA  = null;
  CREDITO = null;
  --TOTAL = NULL;
  TOT = 'S';

  SUSPEND;

  /* Gerando Total Receita */
  DESC_CONTA = '(-) Deducoes da Receita';
  CONTA  = null;
  CREDITO = null;
  TOTAL = null;
  TOT = 'S';
  SUSPEND;

  /*  Deduções das Receitas*/
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
  FOR select sum(md.QUANTIDADE * md.PRECOCUSTO)    
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

  DESC_CONTA = '= Receitas Líquida';
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

      DESC_CONTA = '   Custo dos Produtos Vendidos';
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

      DESC_CONTA = '   Custo dos Serviços Vendidos';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL; 
      TOT = 'N';
      if (CREDITO > 0) then
        SUSPEND; 
    end

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
           and pl.contapai = :CONTAPAI  and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0))
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
     where  (pag.EMISSAO between :PDTA1 AND :PDTA2)  and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0))
       and pl.contapai is not null
           group by pl.contapai 
    INTO :CONTAPAI
  do begin
     TOT = 'G'; /*Para no imprimir a linha*/
     TOTAL = 0;
     CONTA  = null;
     CREDITO = null;
     SELECT NOME FROM PLANO WHERE CONTA = :CONTAPAI
     INTO :DESC_CONTA; 
     --SUSPEND;
     TOTAL = ACUMULA; 
     /* A maioria das despesas não tem produto, são compras ligado ao plano de contas    */
     FOR  select sum(pag.VALOR_RESTO)  FROM PAGAMENTO pag
       left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
       inner join plano pl on pl.CODIGO = pag.CONTACREDITO
       where  (pag.EMISSAO between :PDTA1 AND :PDTA2) and pl.contapai = :CONTAPAI  
          and ((pag.CODALMOXARIFADO = :PCC) OR (:PCC = 0))    and ((pl.REDUZRECEITA <> 'S') or (pl.REDUZRECEITA IS NULL))

      INTO :CREDITO
      do
      begin 
        PRODUT = DESC_CONTA;  
        DESC_CONTA = '     ' || DESC_CONTA;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        --ACUMULA = TOTAL;
        TOT = 'N';
        SUSPEND; 
        --TOTALIZA = 0;
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
  DESC_CONTA = ' Resultado Geral no período : ';
  CONTA  = null;
  CREDITO = null;
  
  --TOTAL = TOTALREC - TOTALIZA;
  SUSPEND;
  TOTAL = null;


end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE RELDRESINTETICO TO  SYSDBA;

