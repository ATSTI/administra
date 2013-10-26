CREATE OR ALTER PROCEDURE SP_MOV_CAIXAORDEMFLUXO (
    DTAINI Date,
    DTAFIM Date,
    COD_CAIXA Smallint )
RETURNS (
    DTAPAGTO Date,
    DATACONSOLIDA Date,
    ORDEM Smallint,
    DESCRICAO Varchar(300),
    VALORC Double precision,
    VALORD Double precision,
    VALOR Double precision,
    CONTACONTABIL Varchar(200),
    CAIXA Varchar(60),
    CODCONTA Varchar(20),
    FORMA Varchar(20),
    N_DOC Varchar(20),
    ORDENA Smallint,
    COMPENSADO Varchar(10) )
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
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXAFLUXO(:DTAINI, :DTAFIM, :COD_CAIXA)
      INTO :VALOR;
  
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, sum(VALORC), sum(VALORD), CAIXA, CODCONTA, 
      FORMA, N_DOC, compensado
      FROM SP_MOV_CAIXAFLUXO(:DTAINI, :DTAFIM, :COD_CAIXA) 
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

