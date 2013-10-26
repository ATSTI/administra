set term ^ ;
create or ALTER PROCEDURE  SP_MOV_CAIXA_ORDEMSINTETICO( DTAINI                           DATE
                                   , DTAFIM                           DATE
                                   , COD_CAIXA                        SMALLINT )
RETURNS ( DTAPAGTO                         DATE
        , ORDEM                            SMALLINT
        , DESCRICAO                        VARCHAR( 300 )
        , VALORC                           DOUBLE PRECISION
        , VALORD                           DOUBLE PRECISION
        , VALOR                            DOUBLE PRECISION
        , CONTACONTABIL                    VARCHAR( 200 )
        , CAIXA                            VARCHAR( 60 )
        , CODCONTA                         VARCHAR( 20 )
        , FORMA                            VARCHAR( 20 )
        , N_DOC                            VARCHAR( 20 )
        , ORDENA                           SMALLINT
        ,compensado varchar(10)
        ,TIPO varchar(10)
 )
AS
declare variable uso char(1);
BEGIN 
  select D6 from parametro where parametro = 'MODULO'
   into :uso; 
  if (uso = 'S') then
  begin  
    /*SELECT FIRST 1 VALOR FROM SP_MOV_CAIXA_ASH_SINTETICO(:DTAINI, :DTAFIM, :COD_CAIXA)
    INTO :VALOR;
    
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, ordena, tipo
      FROM SP_MOV_CAIXA_ASH_SINTETICO(:DTAINI, :DTAFIM, :COD_CAIXA) ORDER BY DTAPAGTO, forma, ORDEM 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA, :FORMA, :N_DOC, :ordena, :tipo
    DO BEGIN
      --DESCRICAO = CONTACONTABIL;
      VALOR = VALOR + VALORD - VALORC;
      if ((valord = 0) and (valorc = 0)) then
      begin
        --não imprimir quando os 2 são Zero
      end
      else 
        SUSPEND;
    END*/
  end
  else begin 
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXA(:DTAINI, :DTAFIM, :COD_CAIXA)
      INTO :VALOR;
    -- Mostra linha a Linha
    /*FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, COMPENSADO
      FROM SP_MOV_CAIXA(:DTAINI, :DTAFIM, :COD_CAIXA) ORDER BY DTAPAGTO, ORDEM, N_DOC 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA
       , :FORMA, :N_DOC, :COMPENSADO
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;
      if ((valord = 0) and (valorc = 0)) then
      begin
        --não imprimir quando os 2 são Zero
      end
      else 
        SUSPEND;
    END*/
    -- Agrupo por número de Documento
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, sum(VALORC), sum(VALORD), CAIXA, FORMA, N_DOC, COMPENSADO
      FROM SP_MOV_CAIXA(:DTAINI, :DTAFIM, :COD_CAIXA) 
      group by DTAPAGTO, ORDEM, N_DOC, DESCRICAO, CAIXA, FORMA, COMPENSADO
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CAIXA
       , :FORMA, :N_DOC, :COMPENSADO
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;
      if ((valord = 0) and (valorc = 0)) then
      begin
        --não imprimir quando os 2 são Zero
      end
      else 
        SUSPEND;
    END

  end
END
