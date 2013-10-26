CREATE OR ALTER PROCEDURE SP_MOV_CAIXA_ORDEMC (
    DTAINI Date,
    DTAFIM Date,
    COD_CAIXA Smallint,
    CCUSTO Smallint )
RETURNS (
    DTAPAGTO Date,
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

    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXAC(:DTAINI, :DTAFIM, :COD_CAIXA, :CCUSTO)
      INTO :VALOR;
  
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, COMPENSADO
      FROM SP_MOV_CAIXAC(:DTAINI, :DTAFIM, :COD_CAIXA, :CCUSTO) ORDER BY DTAPAGTO, ORDEM, N_DOC 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA
       , :FORMA, :N_DOC, :COMPENSADO
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;
      if ((valord = 0) and (valorc = 0)) then
      begin
        /*não imprimir quando os 2 são Zero */
      end
      else 
        SUSPEND;
    END
END