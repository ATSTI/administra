CREATE OR ALTER TRIGGER ATUALIZA_CHG FOR PROD_CHG
ACTIVE AFTER INSERT POSITION 0
AS 
DECLARE VARIABLE CODP INTEGER;
DECLARE VARIABLE CODFAM INTEGER;
DECLARE VARIABLE MARGEM DOUBLE PRECISION;
DECLARE VARIABLE PPAGO DOUBLE PRECISION;
DECLARE VARIABLE PRECOVENDA DOUBLE PRECISION = 0;
DECLARE VARIABLE ARREDONDAV DOUBLE PRECISION;
DECLARE VARIABLE MARCA VARCHAR(130);
DECLARE VARIABLE FAM VARCHAR(190);
DECLARE VARIABLE CAT VARCHAR(90);
DECLARE VARIABLE PRO VARCHAR(60);
DECLARE VARIABLE CODBAR VARCHAR(60);
DECLARE VARIABLE EMPRESAUSA VARCHAR(60);
BEGIN 
    -- verifico a empresa que est· usando se È COMETA ou FERREIRA para
    -- importar a tabela da furac„o porque os calculos s„o diferentes
    select DADOS from PARAMETRO where parametro = 'EMPRESA'
    into:EMPRESAUSA;

    PRO = NEW.CODIGO;
    PPAGO = NEW.PRNORM;

    -- se Produto for da DIJO
    if (NEW.FABRIC = 'DIJO') then
        PRO = NEW.PRO_COD;
    -- se Produto for da JAHU
    IF (NEW.FABRIC = 'JAHU') THEN
    BEGIN
        PRO = UDF_LEFT(NEW.CODIGO,5) || UDF_RIGHT(NEW.CODIGO,1);
        PPAGO = NEW.PRNORM * 0.5;    
    END  
    -- se Produto for da CHG
    IF (NEW.FABRIC = 'CHG') THEN
    BEGIN
         PPAGO = NEW.PRNORM;
    END

    -- se Produto for da UNIVERSAL
    IF (NEW.FABRIC = 'UNIVERSAL') THEN
    BEGIN
        PPAGO = ((NEW.PRNORM * 0.425)/100);
    END  
    -- se Produto possui CODIGO DE BARRA
    IF (NEW.COD_BARRA IS NOT NULL) THEN
    BEGIN 
        CODBAR = NEW.COD_BARRA;
    END
    ELSE -- se n„o possuir crio o codigo
    BEGIN
        IF (NEW.FABRIC = 'JAHU') THEN
        BEGIN
           CODBAR = '7893732' || :PRO  ;
        end
        else
        begin
           CODBAR = :PRO || '00001';    
        end    
    END

   /* Procuro pelo PRODUTO na TABELA PRODUTOS */
  if (NEW.FABRIC <> 'DIJO') then
  begin
    SELECT first 1 CODLISTAPRECO, PRECOLISTA, MARGEM FROM LISTAPRECO WHERE CODIGO = :PRO and
    FORNECEDOR = NEW.FABRIC
    INTO :CODP, PRECOVENDA, :MARGEM;

      IF (CODP IS NULL) THEN 
      BEGIN
        PPAGO = NEW.PRNORM;
  
        IF (NEW.FABRIC = 'JAHU') THEN
        BEGIN
          PRO = UDF_LEFT(NEW.CODIGO,5) || UDF_RIGHT(NEW.CODIGO,1);
          PPAGO = NEW.PRNORM * 0.5;
        END
 
        -- se Produto for da CHG
        IF (NEW.FABRIC = 'CHG') THEN
        BEGIN
           PPAGO = NEW.PRNORM;
        END

        IF (NEW.FABRIC = 'UNIVERSAL') THEN
        BEGIN
          PPAGO = ((NEW.PRNORM * 0.425)/100);
        END

        -- PRODUTO NOVO --------------------------------------------------------------------------------------------
        ARREDONDAV =  ((PPAGO * 1.5) - UDF_INT(PPAGO * 1.5));

        IF (ARREDONDAV > 0.5) THEN
           ARREDONDAV =  UDF_INT(PPAGO * 1.5) + 1;
        IF (ARREDONDAV = 0) THEN
           ARREDONDAV =  UDF_INT(PPAGO * 1.5);
        ELSE IF (ARREDONDAV <= 0.5) THEN
           ARREDONDAV =  UDF_INT(PPAGO * 1.5) + 0.5;  

      if (empresausa = 'FERREIRA') then
      begin
        if (NEW.FABRIC = 'FURACAO') then
           ARREDONDAV = PPAGO * 2;
      end

      if (empresausa = 'COMETA') then
      begin
        IF (NEW.FABRIC = 'FURACAO') THEN
           ARREDONDAV = PPAGO * 1.5;
      end

        INSERT INTO LISTAPRECO ( DESCR, CODIGO, APLIC, FORNECEDOR, GRUPO, SUBGRUPO, UNIDADE,
              PRECOLISTA, PRECOVENDA, DATAATUALIZA, CODBARRA, USAPRODUTO, MARGEM) VALUES (
              NEW.DESCR, NEW.CODIGO, NEW.APLIC, NEW.FABRIC, NEW.LINH1, NEW.LINH2, NEW.UNIDADE,
              :PPAGO,  :ARREDONDAV, CURRENT_TIMESTAMP, :CODBAR, 'NAO', 50);

      END
        -- FIM - PRODUTO NOVO ------------------------------------------------------------------------------------- 
        -- ATUALIZACAO DE PRODUTOS Q JA EXISTAM
      ELSE
      BEGIN
          IF (MARGEM > 0) THEN
             MARGEM = MARGEM;
          ELSE
             MARGEM = 50; 
          ARREDONDAV =  ((PPAGO * ((:MARGEM/100)+1)) - UDF_INT(PPAGO * ((:MARGEM/100)+1)));
          IF (ARREDONDAV > 0.5) THEN
           ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1)) + 1;

          IF (ARREDONDAV = 0) THEN
           ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1));
          ELSE
           IF (ARREDONDAV <= 0.5) THEN
             ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1)) + 0.5;

         if (empresausa = 'FERREIRA') then
         begin
           if (NEW.FABRIC = 'FURACAO') then
             ARREDONDAV = PPAGO * 2;
         end

         if (empresausa = 'COMETA') then
         begin
            IF (NEW.FABRIC = 'FURACAO') THEN
              ARREDONDAV = PPAGO * 1.5;
         end

          IF (PRECOVENDA <> PPAGO) THEN
             UPDATE LISTAPRECO 
             SET 
                 PRECOVENDA = :ARREDONDAV,
                 PRECOLISTA = :PPAGO,
                 DATAATUALIZA = CURRENT_TIMESTAMP
            WHERE CODIGO = :PRO  and FORNECEDOR = NEW.FABRIC;

      END

  end
  /* Final para diferente de DIJO */
  /* Aqui s√≥ para DIJO   */
  if (NEW.FABRIC = 'DIJO') then--else
  begin
    SELECT CODLISTAPRECO, PRECOLISTA, MARGEM FROM LISTAPRECO WHERE PRO_COD = :PRO
    INTO :CODP, PRECOVENDA, :MARGEM;

    IF (CODP IS NULL) THEN 
    BEGIN
       -- PRODUTO NOVO --------------------------------------------------------------------------------------------
        INSERT INTO LISTAPRECO ( DESCR, CODIGO, APLIC, FORNECEDOR, GRUPO, SUBGRUPO, UNIDADE,
              PRECOLISTA, PRECOVENDA, DATAATUALIZA, CODBARRA, USAPRODUTO, MARGEM, PRO_COD) VALUES (
              NEW.DESCR, NEW.CODIGO, NEW.APLIC, NEW.FABRIC, NEW.LINH1, NEW.LINH2, NEW.UNIDADE,
              NEW.PRNORM,  NEW.PRNORM, CURRENT_TIMESTAMP, :CODBAR, 'NAO', null, NEW.PRO_COD);
    END
    -- FIM - PRODUTO NOVO ------------------------------------------------------------------------------------- 
    -- ATUALIZACAO DE PRODUTOS Q JA EXISTAM
    ELSE
    BEGIN
        --IF (PRECOVENDA <> PPAGO) THEN
          UPDATE LISTAPRECO SET
                 PRECOVENDA = NEW.PRNORM,
                 PRECOLISTA = NEW.PRNORM,
                 DATAATUALIZA = CURRENT_TIMESTAMP
           WHERE PRO_COD = :PRO;
    END
  end -- end fim dijo
end
