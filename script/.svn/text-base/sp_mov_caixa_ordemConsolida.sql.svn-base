Create or ALTER PROCEDURE  SP_MOV_CAIXA_ORDEMCONSOLIDA( DTAINI                           DATE
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
        ,compensado varchar(10)  )
AS
declare variable uso char(1);
BEGIN 
  select D6 from parametro where parametro = 'MODULO'
   into :uso; 
  if (uso = 'S') then
  begin  
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXA_ASH(:DTAINI, :DTAFIM, :COD_CAIXA)
    INTO :VALOR;
    
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, sum(VALORC), sum(VALORD), CAIXA, CODCONTA, FORMA
       , N_DOC, ordena
      FROM SP_MOV_CAIXA_ASH(:DTAINI, :DTAFIM, :COD_CAIXA) 
      group by DTAPAGTO, ORDEM, DESCRICAO, CAIXA, CODCONTA, FORMA , N_DOC, ordena      
        ORDER BY DTAPAGTO, forma, ORDEM 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CAIXA, :CODCONTA, :FORMA, 
     :N_DOC, :ordena
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
  else begin 
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXACONSOLIDA(:DTAINI, :DTAFIM, :COD_CAIXA)
      INTO :VALOR;
  
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, sum(VALORC), sum(VALORD), CAIXA, CODCONTA, 
      FORMA, N_DOC, compensado
      FROM SP_MOV_CAIXACONSOLIDA(:DTAINI, :DTAFIM, :COD_CAIXA) 
      group by DTAPAGTO, ORDEM, DESCRICAO, CAIXA, CODCONTA, FORMA, N_DOC, compensado
      ORDER BY DTAPAGTO, ORDEM, N_DOC 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CAIXA, :CODCONTA, 
     :FORMA, :N_DOC, :COMPENSADO
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
