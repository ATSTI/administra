CREATE OR ALTER PROCEDURE SP_MOV_CAIXA_ORDEMC (
    DTAINI Date,
    DTAFIM Date,
    COD_CAIXA Smallint,
    CCUSTO Smallint,
    FORMAPAG CHAR(1) )
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

    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXAC(:DTAINI, :DTAFIM, :COD_CAIXA, :CCUSTO, :FORMAPAG)
      INTO :VALOR;
  
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, COMPENSADO
      FROM SP_MOV_CAIXAC(:DTAINI, :DTAFIM, :COD_CAIXA, :CCUSTO, :FORMAPAG) ORDER BY DTAPAGTO, ORDEM, N_DOC 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA
       , :FORMA, :N_DOC, :COMPENSADO
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;

    if (forma = '1') then 
      forma = 'Dinheiro';
    else if (forma = '2') then 
      forma = 'Cheque';
    else if (forma = 'I') then 
      forma = 'Visa Credito';
    else if (forma = 'J') then 
      forma = 'Visa Debito';
    else if (forma = 'K') then 
      forma = 'Master Credito';
    else if (forma = 'L') then 
      forma = 'Master Debito';
    else if (forma = 'M') then 
      forma = 'Diners';
    else if (forma = '3') then 
      forma = 'Cheque-Pre';
    else if (forma = '4') then 
      forma = 'Boleto';
    else if (forma = '5') then 
      forma = 'Duplicata';
    else if (forma = '6') then 
      forma = 'Cartao Credito';
    else if (forma = '7') then 
      forma = 'Cartao Debito';
    else if (forma = '8') then 
      forma = 'Deposito';
    else if (forma = '9') then 
      forma = 'Debito Automatico';
    else if (forma = 'A') then 
      forma = 'Home-Banking';
    else if (forma = 'B') then 
      forma = 'Doc';
    else if (forma = 'C') then 
      forma = 'Cartorio';
    else if (forma = 'D') then 
      forma = 'Transferencia';
    else if (forma = 'E') then 
      forma = 'Credito em conta';
    else if (forma = 'F') then 
      forma = 'Cheque Tereceiros';
    else if (forma = 'G') then 
      forma = 'Vale';
    else if (forma = 'H') then 
      forma = 'Outros';
    
      
      if ((valord = 0) and (valorc = 0)) then
      begin
        /*não imprimir quando os 2 são Zero */
      end
      else 
        SUSPEND;
    END
END
