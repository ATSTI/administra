CREATE OR ALTER PROCEDURE COTACAO_NEGOCIACAO 
 (CODIGO INTEGER)
RETURNS 
 (CODPRO   VARCHAR(15),
  DESCRICAO VARCHAR(300), 
  PRECO1    DOUBLE PRECISION,
  PRECO2    DOUBLE PRECISION,
  PRECO3    DOUBLE PRECISION,
  PRECO4    DOUBLE PRECISION,
  PRECO5    DOUBLE PRECISION,
  PRECO6    DOUBLE PRECISION,
  PRECO7    DOUBLE PRECISION,
  PRECO8    DOUBLE PRECISION,
  TOT1    DOUBLE PRECISION,
  TOT2    DOUBLE PRECISION,
  TOT3    DOUBLE PRECISION,
  TOT4    DOUBLE PRECISION,
  TOT5    DOUBLE PRECISION,
  TOT6    DOUBLE PRECISION,
  TOT7    DOUBLE PRECISION,
  TOT8    DOUBLE PRECISION,  
  UN        CHAR(3),
  QTDE      DOUBLE PRECISION,
  PRAZO1     VARCHAR(30),
  PRAZO2     VARCHAR(30),
  PRAZO3     VARCHAR(30),
  PRAZO4     VARCHAR(30),
  PRAZO5     VARCHAR(30),
  PRAZO6     VARCHAR(30),
  PRAZO7     VARCHAR(30),
  PRAZO8     VARCHAR(30),
  OBS       VARCHAR(200),
  TOTAL     DOUBLE PRECISION,
  FRETE     DOUBLE PRECISION,  
  DENTREGA1 DATE,
  DENTREGA2 DATE,
  DENTREGA3 DATE,
  DENTREGA4 DATE,
  DENTREGA5 DATE,
  DENTREGA6 DATE,
  DENTREGA7 DATE,
  DENTREGA8 DATE
)
AS 
  DECLARE VARIABLE PRAZO     VARCHAR(30);
  DECLARE VARIABLE DENTREGA  DATE;
  DECLARE VARIABLE codFornec integer; 
  DECLARE VARIABLE numFornec SMALLINT; 
  DECLARE VARIABLE Fornec    varchar(60); 
  DECLARE VARIABLE PRECO     DOUBLE PRECISION;
  DECLARE VARIABLE TTOTAL    DOUBLE PRECISION;
  DECLARE VARIABLE FORNEC1   integer;
  DECLARE VARIABLE FORNEC2   integer;
  DECLARE VARIABLE FORNEC3   integer;
  DECLARE VARIABLE FORNEC4   integer;
  DECLARE VARIABLE FORNEC5   integer;
  DECLARE VARIABLE FORNEC6   integer;
  DECLARE VARIABLE FORNEC7   integer;
  DECLARE VARIABLE FORNEC8   integer;
  DECLARE VARIABLE T1    DOUBLE PRECISION;
  DECLARE VARIABLE T2    DOUBLE PRECISION;
  DECLARE VARIABLE T3    DOUBLE PRECISION;
  DECLARE VARIABLE T4    DOUBLE PRECISION;
  DECLARE VARIABLE T5    DOUBLE PRECISION;
  DECLARE VARIABLE T6    DOUBLE PRECISION;
  DECLARE VARIABLE T7    DOUBLE PRECISION;
  DECLARE VARIABLE T8    DOUBLE PRECISION;
  DECLARE VARIABLE FRETE1 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE2 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE3 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE4 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE5 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE6 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE7 DOUBLE PRECISION;
  DECLARE VARIABLE FRETE8 DOUBLE PRECISION;  
BEGIN
  numFornec = 0;
  /* Lista todos os fornecedores com Cotações em aberto para o item  */
  FOR SELECT DISTINCT COTACAO_FORNEC
    FROM COMPRA_COTACAO
   WHERE COTACAO_CODIGO = :CODIGO
   ORDER BY COTACAO_CODIGO  
  INTO :codFornec
  do begin 
    
    SELECT FIRST 1 COTACAO_PRAZO, COTACAO_DTENTREGA, UNIDADEMEDIDA, COTACAO_FRETE 
      FROM COMPRA_COTACAO, PRODUTOS 
     WHERE COTACAO_CODIGO   = :CODIGO
       /* AND COTACAO_SITUACAO = 'G' */
       AND COTACAO_FORNEC   = :codFornec
     ORDER BY COTACAO_FRETE DESC   
      INTO :PRAZO, :DENTREGA, :UN, :frete ; 
      
    numFornec = numFornec + 1;
    if (numFornec = 1) then 
    begin
      fornec1   = codfornec;
      prazo1    = prazo;
      dentrega1 = dentrega;     
      frete1    = frete;  
    end   
    if (numFornec = 2) then
    begin
      fornec2 = codfornec;
      prazo2    = prazo;
      dentrega2 = dentrega;
      frete2    = frete;  
    end  
    if (numFornec = 3) then
    begin
      fornec3   = codfornec;
      prazo3    = prazo;
      dentrega3 = dentrega;
      frete3    = frete;  
    end  
    if (numFornec = 4) then 
    begin
      fornec4   = codfornec;
      prazo4    = prazo;
      dentrega4 = dentrega;
      frete4    = frete;  
    end  
    if (numFornec = 5) then 
    begin
      fornec5   = codfornec;
      prazo5    = prazo;
      dentrega5 = dentrega;
      frete5    = frete;  
    end  

    if (numFornec = 6) then 
    begin
      fornec6   = codfornec;
      prazo6    = prazo;
      dentrega6 = dentrega;
      frete6    = frete;  
    end  

    if (numFornec = 7) then 
    begin
      fornec7   = codfornec;
      prazo7    = prazo;
      dentrega7 = dentrega;
    end  

    if (numFornec = 8) then 
    begin
      fornec8   = codfornec;
      prazo8    = prazo;
      dentrega8 = dentrega;
    end  

  end  
  
  /*Busca todos as cotaçoes para o fornecedor */
  TOTAL = 0;
  T1    = 0; 
  T2    = 0;
  T3    = 0;
  T4    = 0;
  T5    = 0;
  T6    = 0;
  T7    = 0;
  T8    = 0;
  
  FOR SELECT DISTINCT COTACAO_ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60)
    DESCRICAO , COTACAO_QTDE
   FROM COMPRA_COTACAO
  WHERE COTACAO_CODIGO = :CODIGO
   INTO :CODPRO, :DESCRICAO, :QTDE
  do begin
    
    TOTAL = TOTAL + TTOTAL;
    
    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
      , COTACAO_OBSERVACAO
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec1
       AND COTACAO_CODIGO = :CODIGO
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO1, :TOT1, :OBS;
      
      if (Preco1 is null) then 
        preco1 = 0;
        
      if (Tot1 is null) then 
        tot1 = 0;  

      T1 = T1 + TOT1;

    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
    , COTACAO_OBSERVACAO 
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec2
       AND COTACAO_CODIGO = :CODIGO
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO2, :TOT2, :OBS;

      if (Preco2 is null) then 
        preco2 = 0;
        
      if (Tot2 is null) then 
        tot2 = 0;  

    T2 = T2 + TOT2;

    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
    , COTACAO_OBSERVACAO 
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec3
       AND COTACAO_CODIGO = :CODIGO
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO3, :TOT3, :OBS;

      if (Preco3 is null) then 
        preco3 = 0;
        
      if (Tot3 is null) then 
        tot3 = 0;  

    T3 = T3 + TOT3;
    
    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
    , COTACAO_OBSERVACAO 
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec4
       AND COTACAO_CODIGO = :CODIGO
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO4, :TOT4, :OBS;
      
      if (Preco4 is null) then 
        preco4 = 0;
        
      if (Tot4 is null) then 
        tot4 = 0;  
      
    T4 = T4 + TOT4;

    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
    , COTACAO_OBSERVACAO 
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec5
       AND COTACAO_CODIGO = :CODIGO/* AND COTACAO_SITUACAO = 'G' */
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO5, :TOT5, :OBS;
      
      if (Preco5 is null) then 
        preco5 = 0;
        
      if (Tot5 is null) then 
        tot5 = 0;  
      
    T5 = T5 + TOT5;

    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
    , COTACAO_OBSERVACAO 
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec6
       AND COTACAO_CODIGO = :CODIGO/* AND COTACAO_SITUACAO = 'G' */
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO6, :TOT6, :OBS;
      
      if (Preco6 is null) then 
        preco6 = 0;
        
      if (Tot6 is null) then 
        tot6 = 0;  
      
    T6 = T6 + TOT6;

    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
    , COTACAO_OBSERVACAO 
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec7
       AND COTACAO_CODIGO = :CODIGO/* AND COTACAO_SITUACAO = 'G' */
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO7, :TOT7, :OBS;
      
      if (Preco7 is null) then 
        preco7 = 0;
        
      if (Tot7 is null) then 
        tot7 = 0;  

      
    T7 = T7 + TOT7;

    SELECT FIRST 1 (COTACAO_PRECO-COTACAO_DESCONTO), ((COTACAO_PRECO-COTACAO_DESCONTO) * COTACAO_QTDE) TOTAL
    , COTACAO_OBSERVACAO 
      FROM COMPRA_COTACAO
     WHERE COTACAO_FORNEC   = :Fornec8
       AND COTACAO_CODIGO = :CODIGO/* AND COTACAO_SITUACAO = 'G' */
       AND COTACAO_ITEM     = :codPro
      INTO :PRECO8, :TOT8, :OBS;
    
      if (Preco8 is null) then 
        preco8 = 0;
        
      if (Tot8 is null) then 
        tot8 = 0;  

    T8 = T8 + TOT8;

    suspend;

    PRECO1 = 0;
    PRECO2 = 0;
    PRECO3 = 0;
    PRECO4 = 0;
    PRECO5 = 0;
    PRECO6 = 0;
    PRECO7 = 0;
    PRECO8 = 0;
    tot1   = 0;
    tot2   = 0;
    tot3   = 0;
    tot4   = 0;
    tot5   = 0;
    tot6   = 0;
    tot7   = 0;
    tot8   = 0;
    
  end    
  
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  PRECO4 = null;
  PRECO5 = null;
  PRECO6 = null;
  PRECO7 = null;
  PRECO8 = null;
  qtde   = null;
  tot1   = null;
  tot2   = null;
  tot3   = null;
  tot4   = null;
  tot5   = null;
  tot6   = null;
  tot7   = null;
  tot8   = null;
  un     = null;
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' FRETE ';
  /*if (numFornec = 1) then  */
  TOT1 = FRETE1;
  /*if (numFornec = 2) then      */
  TOT2 = FRETE2;
  TOT3 = FRETE3;
  TOT4 = FRETE4;
  TOT5 = FRETE5;
  TOT6 = FRETE6;
  TOT7 = FRETE7;
  TOT8 = FRETE8;
 /* if (numFornec = 3) then      */
 /*   PRECO3 = FRETE; */
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  PRECO4 = null;
  PRECO5 = null;
  PRECO6 = null;
  PRECO7 = null;
  PRECO8 = null;
  tot1   = null;
  tot2   = null;
  tot3   = null;
  tot4   = null;
  tot5   = null;
  tot6   = null;
  tot7   = null;
  tot8   = null;
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' TOTAL ';
  TOT1 = T1+FRETE1;
  TOT2 = T2+FRETE2;
  TOT3 = T3+FRETE3;
  TOT4 = T4+FRETE4;
  TOT5 = T5+FRETE5;
  TOT6 = T6+FRETE6;
  TOT7 = T7+FRETE7;
  TOT8 = T8+FRETE8;
  
  SUSPEND;

  /* 
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  tot1   = null;
  tot2   = null;
  tot3   = null;
  tot4   = null;
  tot5   = null;
  tot6   = null;
  tot7   = null;
  tot8   = null;

  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' CONDICOES PAGAMENTO';
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = '';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  
  SUSPEND;
  
  CODPRO = '';
  DESCRICAO = ' PRAZO DE ENTREGA ';
  PRECO1 = null;
  PRECO2 = null;
  PRECO3 = null;
  
  SUSPEND;*/

END
