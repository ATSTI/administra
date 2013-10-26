set term  ^ ;
CREATE OR ALTER PROCEDURE  BALANCETE( PDTA1 DATE, PDTA2 DATE)
RETURNS ( CONTA                            VARCHAR( 60 )
        , CREDITO                          DOUBLE PRECISION
        , DEBITO                           DOUBLE PRECISION
        , ORDEM                            SMALLINT )
AS
  DECLARE VARIABLE TOTAL  Double precision = 0;
  DECLARE VARIABLE STR VARCHAR(15);
BEGIN
  CONTA     = '';
  ORDEM     = 0;
  TOTAL     = 0;
  CREDITO   = 0;
  DEBITO    = 0;
  
  /* Buscar Caixa/Banco */ 
  CONTA = 'CAIXA E BANCO ';
  
  Select VALOR from SP_MOV_CAIXA(:PDTA2, :PDTA2, 0, 0) WHERE ORDEM = 0
    into :TOTAL;
  
  CREDITO = TOTAL; 
  if (CREDITO IS NULL) THEN 
    CREDITO = 0;
  suspend; 
  
  /* Buscar Duplicatas a Receber */ 
  CONTA = 'DUPLICATAS A RECEBER ';
  Select sum(r.valor_resto) from RECEBIMENTO r where r.EMISSAO <= :PDTA2 AND ((r.STATUS = '5-') or (r.STATUS = '6-'))
    into :TOTAL;
  
  CREDITO = TOTAL; 
  if (CREDITO IS NULL) THEN 
    CREDITO = 0;

  suspend;  
  
  /* Buscar Estoque */
  -- Criar um parametro para empresa que não usa estoque.
  CONTA = 'MERCADORIAS ';
  Select sum(VALORCUSTO*SALDOFIM) from SPESTOQUEPRODUTO(:PDTA1, :PDTA2,0,500000, 'TODOS OS GRUPOS CADASTRADOS',
    'TODOS SUBGRUPOS DO CADASTRO', 'TODAS AS MARCAS CADASTRADAS', 0) 
    INTO :TOTAL;
   
  CREDITO = TOTAL; 
  if (CREDITO IS NULL) THEN 
    CREDITO = 0;
 
  suspend;
  
  /* Buscar Imobilizado */  
  CONTA = 'IMOBILIZADO ';
  str = null;
  Select p.DADOS FROM PARAMETRO p where p.PARAMETRO = 'CONTAIMOBILIZADO'
    into :STR;-- Vejo a Conta do Imobilizado
     
  if (str is not null) then    
  begin 
    Select sum(m.VALORDEBITO - m.VALORCREDITO) from MOVIMENTOCONT m Where m.CONTA = :Str and m.DATA <= :PDta2
      into :TOTAL;  
  
    CREDITO = TOTAL; 
    if (CREDITO IS NULL) THEN 
      CREDITO = 0;
    
    suspend;
  end 
  
  /* Buscar Duplicatas a Pagar */  
  CONTA = 'DUPLICATAS A PAGAR ';
  Select sum(p.valor_resto) from PAGAMENTO p where p.EMISSAO <= :PDTA2 AND ((p.STATUS = '5-') or (p.STATUS = '6-'))
    into :TOTAL;
  
  DEBITO = TOTAL; 
  if (DEBITO IS NULL) THEN 
    DEBITO = 0;
  
  suspend;
  
  /* Buscar Emprestimos e Financiamentos */  
  str = null;
  CONTA = 'EMPRESTIMOS E FINANCIAMENTOS ';
  Select p.DADOS FROM PARAMETRO p where p.PARAMETRO = 'CONTAFINANCIAMENTO'
    into :STR;-- Vejo a Conta de Emprestimos e Financiamentos
    
  if (str is not null) then    
  begin     
    Select sum(m.VALORCREDITO - m.VALORDEBITO) from MOVIMENTOCONT m Where PLNCTAMAIN(m.CONTA) = :Str and m.DATA <= :PDta2
      into :TOTAL;  
  
    DEBITO = TOTAL; 
    if (DEBITO IS NULL) THEN 
      DEBITO = 0;
    
    suspend;
  end 
  
  /* Buscar Capital Social */  
  CONTA = 'CAPITAL SOCIAL ';
  str = null;
  Select p.DADOS FROM PARAMETRO p where p.PARAMETRO = 'CONTACAPITALSOCIAL'
    into :STR;-- Vejo a Conta de CAPITAL SOCIAL

  if (str is not null) then    
  begin     
    Select sum(m.VALORDEBITO - m.VALORCREDITO) from MOVIMENTOCONT m Where m.CONTA = :Str and m.DATA <= :PDta2
      into :TOTAL;  
  
    DEBITO = TOTAL; 
    if (DEBITO IS NULL) THEN 
      DEBITO = 0;
    
    suspend;
  end 
  
  /* Buscar Lucros ou Prej. Acumulados */  
  CONTA = 'LUCROS OU PREJUIZOS ';
  str = null;
  Select p.DADOS FROM PARAMETRO p where p.PARAMETRO = 'CONTALUCROPREJUIZO'
    into :STR;-- Vejo a Conta de LUCRO OU PREJUIZO

  if (str is not null) then    
  begin     
    Select sum(m.VALORDEBITO - m.VALORCREDITO) from MOVIMENTOCONT m Where m.CONTA = :Str and m.DATA <= :PDta2
      into :TOTAL;  
  
    DEBITO = TOTAL; 
    if (DEBITO IS NULL) THEN 
      DEBITO = 0;
    
    suspend;
  end 

end
