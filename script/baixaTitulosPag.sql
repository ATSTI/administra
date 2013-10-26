CREATE OR ALTER PROCEDURE  BAIXATITULOSPAG( VALOR                            DOUBLE PRECISION
                                , FUNRURAL                         DOUBLE PRECISION
                                , JUROS                            DOUBLE PRECISION
                                , DESCONTO                         DOUBLE PRECISION
                                , PERDA                            DOUBLE PRECISION
                                , DATABAIXA                        DATE
                                , DATAREC                          DATE
                                , DATACONSOLIDA                    DATE
                                , FORMAREC                         CHAR( 1 )
                                , NDOC                             VARCHAR( 20 )
                                , CAIXA                            SMALLINT
                                , FORNECEDOR                          INTEGER
                                , STATUS                           CHAR( 2 ) 
                                , USERID                           CHAR( 2 ) 
                                                              )
-- tirei esta data, nÃ£o tem motivo para mudar ela aqui
--, DATAVENC                         DATE
AS
DECLARE VARIABLE VLR DOUBLE PRECISION = 0;
  DECLARE VARIABLE VLRESTO DOUBLE PRECISION = 0;
  DECLARE VARIABLE VLRATUAL DOUBLE PRECISION = 0;
  DECLARE VARIABLE VLPAGO DOUBLE PRECISION = 0;
  DECLARE VARIABLE VLJU DOUBLE PRECISION = 0;

  DECLARE VARIABLE VLFUN DOUBLE PRECISION = 0;

  DECLARE VARIABLE VLDESC DOUBLE PRECISION = 0;

  DECLARE VARIABLE VLPER DOUBLE PRECISION = 0;
  DECLARE VARIABLE VLJUT DOUBLE PRECISION = 0;

  DECLARE VARIABLE VLFUNT DOUBLE PRECISION = 0;

  DECLARE VARIABLE VLDESCT DOUBLE PRECISION = 0;

  DECLARE VARIABLE VLPERT DOUBLE PRECISION = 0;
  DECLARE VARIABLE CODREC INTEGER;

BEGIN
  VLPER = 0; 
  VLJU = 0; 
  VLFUN = 0; 
  VLDESC = 0; 
  -- VALOR = VALOR_RECEBIDO
  VLRATUAL = (VALOR - FUNRURAL - JUROS + PERDA + DESCONTO);
  VLPAGO = (VALOR - JUROS - FUNRURAL);
  VLJUT = JUROS;
  VLFUNT = FUNRURAL;
  VLDESCT = DESCONTO;
  VLPERT = PERDA;

  /* Se Valor for negativo entao baixa o ti­tulo */

  FOR SELECT CODPAGAMENTO, VALOR_RESTO FROM PAGAMENTO WHERE CODFORNECEDOR = :FORNECEDOR AND DP = 0 AND USERID = :USERID
     AND STATUS IN ('5-') order by CODPAGAMENTO -- busco pelos tiÂ­tulos a baixar
  INTO :CODREC, :VLRESTO 
  DO BEGIN
        VLJU = VLJUT - VLJU;
        IF (VLJU < 0) then
          VLJU = 0; 
        VLJUT = VLJUT - VLJU;   
        VLFUN = VLFUNT - VLFUN;
        IF (VLFUN < 0) then
          VLFUN = 0; 
        VLFUNT = VLFUNT - VLFUN;
        IF (VLDESC > VLDESCT) THEN
           VLDESC = 0;   
        VLDESC = VLDESCT;
        IF (VLDESC < 0) then
          VLDESC = 0; 
--        VLDESCT = VLDESCT - VLDESC;
        IF (VLPER > VLPERT) THEN
          VLPER = 0;   
        VLPER = VLPERT - VLPER;
        IF (VLPER < 0) then
          VLPER = 0; 
        VLPERT = VLPERT - VLPER;
      -- Valor total a baixar - valor pago = valor atual
      IF (VLRATUAL > VLRESTO) THEN
      BEGIN
        VLRATUAL = VLRATUAL - VLRESTO;
        VLPAGO = VLPAGO - VLRESTO;  
        VLR = VLRESTO;
      END
      ELSE BEGIN
        VLR = VLRATUAL;
        VLRATUAL = 0;
      END   
      IF ((VLR - VLDESC - VLPER) < 0) then
      begin
        IF (VLR = VLDESC) then
        begin
          vlpert = vlper;
          vlper = 0;
        end         
        IF (VLR = VLPER) then
        begin
          vldesct = vldesc;
          vldesc = 0; 
        end
        IF (VLR < VLDESC) then
        begin
          vldesct = vldesct - VLR;
          vldesc = vlr;
        end         
        IF (VLR < VLPER) then
        begin
          vlpert = vlper - VLR;
          vlper = vlr;
        end         
      end
      else
      begin
        vldesct = 0;
      end
      
      IF (VLR > 0) THEN
      BEGIN   
         UPDATE PAGAMENTO SET
            STATUS = :STATUS
            , VALORRECEBIDO = (:VLR - :VLDESC - :VLPER)
            , VALOR_RESTO = (:VLR)
            , FORMAPAGAMENTO = :FORMAREC
            , DATABAIXA = :DATABAIXA
            , DATAPAGAMENTO = :DATAREC
            , DATACONSOLIDA = :DATACONSOLIDA
            , N_DOCUMENTO = :NDOC
            , CAIXA = :CAIXA
            , FUNRURAL = :VLFUN
            , JUROS = :VLJU
            , DESCONTO = :VLDESC
            , PERDA = :VLPER
            WHERE CODPAGAMENTO = :CODREC;

            --Carlos : Retirei do UPDATE , pois, estes campos nao deve ser alterados.
            --,outro_credito = :vldesct
            --,outro_debito = :vlpert

      END
      --, DATAVENCIMENTO = :DATAVENC

     /* Se Valor e negativo entao baixa o ti­tulo */
      IF (VALOR < 0) THEN
      BEGIN   
         UPDATE PAGAMENTO SET
            STATUS = :STATUS
            , VALORRECEBIDO = 0
            , FORMAPAGAMENTO = :FORMAREC
            , DATABAIXA = :DATABAIXA
            , DATAPAGAMENTO = :DATAREC
            , DATACONSOLIDA = :DATACONSOLIDA
            , N_DOCUMENTO = :NDOC
            , CAIXA = :CAIXA
            , FUNRURAL = :VLFUN
            , JUROS = :VLJU
            , DESCONTO = :VLDESC
            , PERDA = :VLPER
            WHERE CODPAGAMENTO = :CODREC;

            --Carlos : Retirei do UPDATE , pois, estes campos nao deve ser alterados.
            --,outro_credito = :vldesct
            --,outro_debito = :vlpert

      END
      --, DATAVENCIMENTO = :DATAVENC
  END
END