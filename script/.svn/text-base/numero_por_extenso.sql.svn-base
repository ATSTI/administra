SET TERM ^ ;
/* Stored procedures */
CREATE PROCEDURE "NUMERO_POR_EXTENSO" 
(
  "PE_VL_NUMERO" NUMERIC(15, 2)
)
RETURNS
(
  "PS_NUMERO_EXTENSO" VARCHAR(240)
)
AS
DECLARE EXTENSO VARCHAR(240);
DECLARE B1 INTEGER;
DECLARE B2 INTEGER;
DECLARE B3 INTEGER;
DECLARE B4 INTEGER;
DECLARE B5 INTEGER;
DECLARE B6 INTEGER;
DECLARE B7 INTEGER;
DECLARE B8 INTEGER;
DECLARE B9 INTEGER;
DECLARE B10 INTEGER; 
DECLARE B11 INTEGER;
DECLARE B12 INTEGER;
DECLARE B13 INTEGER;
DECLARE B14 INTEGER;
DECLARE L1 VARCHAR(12);
DECLARE L2 VARCHAR(3);
DECLARE L3 VARCHAR(9);
DECLARE L4 VARCHAR(3);
DECLARE L5 VARCHAR(6); 
DECLARE L6 VARCHAR(8);
DECLARE L7 VARCHAR(12);
DECLARE L8 VARCHAR(3);
DECLARE L9 VARCHAR(9);
DECLARE L10 VARCHAR(3);
DECLARE L11 VARCHAR(6);
DECLARE L12 VARCHAR(8);
DECLARE L13 VARCHAR(12);
DECLARE L14 VARCHAR(3); 
DECLARE L15 VARCHAR(9);
DECLARE L16 VARCHAR(3);
DECLARE L17 VARCHAR(6);
DECLARE L18 VARCHAR(8);
DECLARE L19 VARCHAR(12);
DECLARE L20 VARCHAR(3);
DECLARE L21 VARCHAR(9);
DECLARE L22 VARCHAR(3);
DECLARE L23 VARCHAR(6);
DECLARE L24 VARCHAR(16);
DECLARE L25 VARCHAR(3);
DECLARE L26 VARCHAR(9);
DECLARE L27 VARCHAR(3);
DECLARE L28 VARCHAR(6);
DECLARE L29 VARCHAR(17);
DECLARE VIRGULA_BI CHAR(3);
DECLARE VIRGULA_MI CHAR(3);
DECLARE VIRGULA_MIL CHAR(3);
DECLARE VIRGULA_CR CHAR(3);
DECLARE VALOR1 VARCHAR(14);
/*-- TABELA DE CENTENAS --*/
DECLARE CENTENAS CHAR(108) = 'CENTO       DUZENTOS    TREZENTOS   QUATROCENTOSQUINHENTOS  SEISCENTOS  SETECENTOS  OITOCENTOS  NOVECENTOS  ';
/*-- TABELA DE DEZENAS --*/
DECLARE DEZENAS CHAR(79) = 'DEZ      VINTE    TRINTA   QUARENTA CINQUENTASESSENTA SETENTA  OITENTA  NOVENTA  '; 
/*-- TABELA DE UNIDADES --*/
DECLARE UNIDADES CHAR(54) = 'UM    DOIS  TRES  QUATROCINCO SEIS  SETE  OITO  NOVE  ';
/*-- TABELA DE UNIDADES DA DEZENA 10 --*/
DECLARE UNID10   CHAR(81)  = 'ONZE     DOZE     TREZE    QUATORZE QUINZE   DEZESSEISDEZESSETEDEZOITO  DEZENOVE '; 
DECLARE V_IMPLEMENTAR INTEGER;
DECLARE I INTEGER;
DECLARE V_VL_INTEIRO VARCHAR(14);
begin
  EXTENSO = '';
  L1 = '';
  L2 = '';
  L3 = '';
  L4 = '';
  L5 = '';
  L6 = '';
  VIRGULA_BI = '';
  L7 = '';
  L8 = ''; 
  L9 = '';
  L10 = '';
  L11 = '';
  L12 = '';
  VIRGULA_MI = '';
  L13 = '';
  L14 = '';
  L15 = '';
  L16 = '';
  L17 = ''; 
  L18 = '';
  VIRGULA_MIL = '';
  L19 = '';
  L20 = '';
  L21 = '';
  L22 = '';
  L23 = '';
  L24 = '';
  VIRGULA_CR = ''; 
  L25 = '';
  L26 = '';
  L27 = '';
  L28 = '';
  L29 = '';
  I = 1;
  V_IMPLEMENTAR = 0;
  V_VL_INTEIRO = 0;
  
  V_VL_INTEIRO = PE_VL_NUMERO;
  V_IMPLEMENTAR = UDF_LEN(V_VL_INTEIRO);
  VALOR1 = '';
  WHILE (I <= V_IMPLEMENTAR) DO
  BEGIN
    IF (UDF_COPY(V_VL_INTEIRO,I, 1) <> '.') THEN
    BEGIN
      VALOR1 = VALOR1 || UDF_COPY(V_VL_INTEIRO,I, 1); 
    END
    I = (I+1);
  END
  V_IMPLEMENTAR = (14 - UDF_LEN(UDF_TRIM(VALOR1)));
  I = 0;
  WHILE (I <= V_IMPLEMENTAR) DO
  BEGIN
    IF (UDF_LEN(VALOR1) < 14) THEN
    BEGIN
      VALOR1 = '0' || VALOR1;
    END
    I = (I + 1);
  END
  B1 = SUBSTRING(VALOR1 FROM 1 FOR 1);
  B2 = SUBSTRING(VALOR1 FROM 2 FOR 1);
  B3 = SUBSTRING(VALOR1 FROM 3 FOR 1);
  B4 = SUBSTRING(VALOR1 FROM 4 FOR 1);
  B5 = SUBSTRING(VALOR1 FROM 5 FOR 1);
  B6 = SUBSTRING(VALOR1 FROM 6 FOR 1); 
  B7 = SUBSTRING(VALOR1 FROM 7 FOR 1);
  B8 = SUBSTRING(VALOR1 FROM 8 FOR 1);
  B9 = SUBSTRING(VALOR1 FROM 9 FOR 1);
  B10 = SUBSTRING(VALOR1 FROM 10 FOR 1);
  B11 = SUBSTRING(VALOR1 FROM 11 FOR 1);
  B12 = SUBSTRING(VALOR1 FROM 12 FOR 1); 
  B13 = SUBSTRING(VALOR1 FROM 13 FOR 1);
  B14 = SUBSTRING(VALOR1 FROM 14 FOR 1);
  IF (PE_VL_NUMERO <> 0) THEN
  BEGIN
    IF (B1 <> 0) THEN
    BEGIN
      IF (B1 = 1) THEN
      BEGIN
        IF ((B2 = 0) AND (B3 = 0)) THEN
        BEGIN
          L5 =  'CEM'; 
        END
        ELSE
        BEGIN
          L1 = UDF_COPY(CENTENAS,(B1 * 12-11),12);
        END
      END
      ELSE
      BEGIN
        L1 = UDF_COPY(CENTENAS,(B1 * 12-11),12); 
      END
    END
    IF (B2 <> 0) THEN
    BEGIN
      IF (B2 = 1) THEN
      BEGIN
        IF (B3 = 0) THEN
        BEGIN
          L5 =  'DEZ';
        END
        ELSE
        BEGIN
          L3 =  UDF_COPY(UNID10,(B3 * 9-8), 9); 
        END
      END
      ELSE
      BEGIN
        L3 =  UDF_COPY(DEZENAS,(B2 * 9-8), 9);
      END
    END
    IF (B3 <> 0) THEN
    BEGIN
      IF (B2 <> 1) THEN
      BEGIN
        L5 =  UDF_COPY(UNIDADES, (B3 * 6-5), 6);
      END
    END
    IF ((B1 <> 0) OR (B2 <> 0)  OR (B3 <> 0)) THEN
    BEGIN
      IF ((B1 = 0 AND B2 = 0) AND (B3 = 1)) THEN 
      BEGIN
        L5 =  'UM';
        L6 =  ' BILHÃO';
      END
      ELSE
      BEGIN
        L6 =  ' BILHÕES';
      END
      IF (PE_VL_NUMERO > 999999999) THEN 
      BEGIN
/*        VIRGULA_BI = ' E ';*/
        VIRGULA_BI = '';
        IF ((B4+B5+B6+B7+B8+B9+B10+B11+B12) = 0) THEN
        BEGIN
          VIRGULA_BI = ' DE ' ;
        END 
      END
      L1 =  UDF_TRIM(L1);
      L3 =  UDF_TRIM(L3);
      L5 =  UDF_TRIM(L5);
      IF ((B2 > 1) AND (B3 > 0)) THEN
      BEGIN
        L4 = ' E ';
      END
      IF ((B1 <> 0) AND ((B2 <> 0) OR (B3 <> 0))) THEN 
      BEGIN
        L2 = ' E ';
      END
    END
  /*-- ROTINA DOS MILHOES --*/
    IF (B4 <> 0) THEN
    BEGIN
      IF (B4 = 1) THEN
      BEGIN
        IF ((B5 = 0) AND (B6 = 0)) THEN
        BEGIN
          L7 =  'CEM';
        END 
        ELSE
        BEGIN
          L7 = UDF_COPY(CENTENAS,(B4 * 12-11), 12);
        END
      END
      ELSE
      BEGIN
        L7 = UDF_COPY(CENTENAS, (B4 * 12-11),12);
      END 
    END
    IF (B5 <> 0) THEN
    BEGIN
      IF (B5 = 1) THEN
      BEGIN
        IF (B6 = 0) THEN
        BEGIN
          L11 =  'DEZ';
        END
        ELSE
        BEGIN 
          L9 =  UDF_COPY(UNID10, (B6 * 9-8), 9);
        END
      END
      ELSE
      BEGIN
        L9 =  UDF_COPY(DEZENAS, (B5 * 9-8), 9);
      END
    END
    IF (B6 <> 0) THEN 
    BEGIN
      IF (B5 <> 1) THEN
      BEGIN
        L11 =  UDF_COPY(UNIDADES,(B6 * 6-5), 6);
      END
    END
    IF ((B4 <> 0) OR (B5 <> 0)  OR (B6 <> 0)) THEN
    BEGIN
      IF (((B4 = 0) AND (B5 = 0)) AND (B6 = 1)) THEN
      BEGIN
        L11 =  ' UM';
        L12 =  ' MILHÃO';
      END
      ELSE
      BEGIN
        L12 =  ' MILHÕES'; 
      END
      IF (PE_VL_NUMERO > 999999) THEN
      BEGIN
/*        VIRGULA_MI = ' E ';*/
        VIRGULA_MI = '';
        IF ((B7+B8+B9+B10+B11+B12) = 0) THEN
        BEGIN
          VIRGULA_MI = ' DE '; 
        END
      END
      L7 =  UDF_TRIM(L7);
      L9 =  UDF_TRIM(L9);
      L11 = UDF_TRIM(L11);
      IF ((B5 > 1) AND (B6 > 0)) THEN
      BEGIN
        L10 = ' E ';
      END
      IF ((B4 <> 0) AND ((B5 <> 0) OR (B6 <> 0))) THEN 
      BEGIN
        L8 = ' E ';
      END
    END
    /*-- ROTINA DOS MILHARES --*/
    IF (B7 <> 0) THEN
    BEGIN
      IF (B7 = 1) THEN
      BEGIN
        IF ((B8 = 0) AND (B9 = 0)) THEN
        BEGIN
          L17 =  'CEM';
        END
        ELSE
        BEGIN 
          L13 = UDF_COPY(CENTENAS, (B7 * 12-11), 12);
        END
      END
      ELSE
      BEGIN
        L13 = UDF_COPY(CENTENAS,(B7 * 12-11), 12);
      END
    END
    IF (B8 <> 0) THEN 
    BEGIN
      IF (B8 = 1) THEN
      BEGIN
        IF (B9 = 0) THEN
        BEGIN
          L17 =  'DEZ';
        END
        ELSE
        BEGIN
          L15 =  UDF_COPY(UNID10, (B9 * 9-8), 9); 
        END
      END
      ELSE
      BEGIN
        L15 =  UDF_COPY(DEZENAS, (B8 * 9-8), 9);
      END
    END
    IF (B9 <> 0) THEN
    BEGIN
      IF (B8 <> 1) THEN
      BEGIN
        L17 =  UDF_COPY(UNIDADES,(B9 * 6-5), 6);
      END
    END
    IF ((B7 <> 0) OR (B8 <> 0)  OR (B9 <> 0)) THEN
    BEGIN
      IF (((B7 = 0) AND (B8 = 0)) AND (B9 = 1)) THEN 
      BEGIN
        L17 =  'UM';
        L18 =  ' MIL';
      END
      ELSE
      BEGIN
        L18 =  ' MIL';
      END
      IF ((PE_VL_NUMERO > 999) AND ((B10+B11+B12) <> 0)) THEN 
      BEGIN
        VIRGULA_MIL  = ' E ';
      END
      L13 =  UDF_TRIM(L13);
      L15 =  UDF_TRIM(L15);
      L17 =  UDF_TRIM(L17);
      IF ((B8 > 1) AND (B9 > 0)) THEN
      BEGIN
         L16 = ' E '; 
      END
      IF ((B7 <> 0) AND ((B8 <> 0) OR (B9 <> 0))) THEN
      BEGIN
        L14 = ' E ';
      END
    END
  /*-- ROTINA DOS REAIS --*/
    IF (B10 <> 0) THEN
    BEGIN
      IF (B10 = 1) THEN
      BEGIN
        IF ((B11 = 0) AND (B12 = 0)) THEN
        BEGIN
          L19 =  'CEM';
        END
        ELSE
        BEGIN 
          L19 = UDF_COPY(CENTENAS, (B10 * 12-11), 12);
        END
     END
     ELSE
     BEGIN
       L19 = UDF_COPY(CENTENAS,(B10 * 12-11), 12);
     END
    END
    IF (B11 <> 0) THEN
    BEGIN
      IF (B11 = 1) THEN
      BEGIN
        IF (B12 = 0) THEN
        BEGIN
          L23 =  'DEZ';
        END
        ELSE
        BEGIN
          L21 =  UDF_COPY(UNID10, (B12 * 9-8), 9); 
        END
      END
      ELSE
      BEGIN
        L21 =  UDF_COPY(DEZENAS, (B11 * 9-8), 9);
      END
    END
    IF (B12 <> 0) THEN
    BEGIN
      IF (B11 <> 1) THEN 
      BEGIN
        L23 =  UDF_COPY(UNIDADES,(B12 * 6-5),6);
      END
    END
    IF ((B10 <> 0) OR (B11 <> 0)  OR (B12 <> 0)) THEN
    BEGIN
      IF ((PE_VL_NUMERO > 0) AND (PE_VL_NUMERO < 2)) THEN
      BEGIN
        L23 =  'UM';
      END
      L19 =  UDF_TRIM(L19); 
      L21 =  UDF_TRIM(L21);
      L23 = UDF_TRIM(L23);
      IF ((B11 > 1) AND (B12 > 0)) THEN
      BEGIN
        L22 = ' E ';
      END
      IF ((B10 <> 0) AND ((B11 <> 0) OR (B12 <> 0))) THEN 
      BEGIN
        L20 = ' E ';
      END
    END
    IF ((PE_VL_NUMERO > 0) AND (PE_VL_NUMERO < 2))  THEN
    BEGIN
      IF (B12 <> 0) THEN
      BEGIN
        L24 = ' REAL';
      END
    END
    ELSE
    BEGIN
      IF (PE_VL_NUMERO > 1) THEN 
      BEGIN
        L24 = ' REAIS';
      END
    END
  /*-- TRATA CENTAVOS --*/
    IF ((B13 <> 0) OR (B14 <> 0)) THEN
    BEGIN
      IF (PE_VL_NUMERO > 0) THEN
      BEGIN
        IF ((B12 <> 0) OR ((B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12) <> 0)) THEN 
        BEGIN
          L25 = ' E ';
        END
      END
      IF (B13 <> 0) THEN
      BEGIN
        IF (B13 = 1) THEN
        BEGIN
          IF (B14 = 0) THEN
          BEGIN 
            L28 =  'DEZ';
          END
          ELSE
          BEGIN
            L26 =  UDF_COPY(UNID10, B14*9-8, 9);
          END
        END
        ELSE
        BEGIN
          L26 =  UDF_COPY(DEZENAS, B13*9-8, 9); 
        END
      END
      IF (B14 <> 0) THEN
      BEGIN
        IF (B13 <> 1) THEN
        BEGIN
          L28 =  UDF_COPY(UNIDADES,B14*6-5, 6);
        END
      END
      IF ((B13 <> 0)  OR (B14 <> 0)) THEN
      BEGIN
        IF (PE_VL_NUMERO = 1) THEN
        BEGIN
          L28 =  'UM';
        END
        L26 =  UDF_TRIM(L26);
        L28 = UDF_TRIM(L28); 
        IF ((B13 > 1) AND (B14 > 0)) THEN
        BEGIN
          L27 = ' E ';
        END
      END
      IF ((B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12) > 0) THEN
      BEGIN
        IF ((B13 = 0) AND (B14 = 1)) THEN 
        BEGIN
          L29 = ' CENTAVO';
        END
        ELSE
        BEGIN
          L29 = ' CENTAVOS';
        END
      END
      ELSE
      BEGIN
        IF ((B13 = 0) AND (B14 = 1)) THEN 
        BEGIN
          L29 = ' CENTAVO';
        END
        ELSE
        BEGIN
          L29 = ' CENTAVOS';
        END
      END
    END
  /*-- CONCATENAR O LITERAL --*/
    IF ((L29 = ' CENTAVO') OR (L29 = ' CENTAVOS')) THEN
    BEGIN
      VIRGULA_MIL = '';
    END
    EXTENSO = UDF_TRIM(L1) || ' ' || UDF_TRIM(L2) || ' ' || UDF_TRIM(L3) || ' ' || UDF_TRIM(L4) || ' ' || UDF_TRIM(L5) || ' ' || UDF_TRIM(L6) || ' ' || UDF_TRIM(VIRGULA_BI) || ' '
                 || UDF_TRIM(L7) || ' ' || UDF_TRIM(L8) || ' ' || UDF_TRIM(L9) || ' ' || UDF_TRIM(L10) || ' ' || UDF_TRIM(L11) || ' ' || UDF_TRIM(L12) || ' ' || UDF_TRIM(VIRGULA_MI) || ' ' 
                 || UDF_TRIM(L13) || ' ' || UDF_TRIM(L14) || ' ' || UDF_TRIM(L15) || ' ' || UDF_TRIM(L16) || ' ' || UDF_TRIM(L17) || ' ' || UDF_TRIM(L18) || ' ' || UDF_TRIM(VIRGULA_MIL) || ' ' 
                 || UDF_TRIM(L19) || ' ' || UDF_TRIM(L20) || ' ' || UDF_TRIM(L21) || ' ' || UDF_TRIM(L22) || ' ' || UDF_TRIM(L23) || ' ' || UDF_TRIM(L24) || ' ' || UDF_TRIM(VIRGULA_CR) || ' ' 
                 || UDF_TRIM(L25) || ' ' || UDF_TRIM(L26) || ' ' || UDF_TRIM(L27) || ' ' || UDF_TRIM(L28) || ' ' || UDF_TRIM(L29);
    EXTENSO = UDF_TRIM(EXTENSO);
  END
  ELSE
  BEGIN
    EXTENSO = 'ZERO';
  END
  
  PS_NUMERO_EXTENSO = EXTENSO;
  SUSPEND;
  
end
 ^
