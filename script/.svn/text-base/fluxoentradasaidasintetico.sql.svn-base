set term  ^  ;
CREATE OR ALTER PROCEDURE FLUXOENTRADASAIDASINTETICO (
    DTAINI Date,
    DTAFIM Date )
RETURNS (
    DTAPAGTO Date,
    VALORC Double precision,
    VALORD Double precision,
    VALOR Double precision,
    VALORCAIXAC Double precision,
    VALORCAIXAD Double precision,
    VALORTOTAL Double precision )
AS
DECLARE VARIABLE j INTEGER;
DECLARE VARIABLE i INTEGER;
DECLARE VARIABLE CAIXA VARCHAR(20);
DECLARE VARIABLE CODCAIXA integer;
BEGIN
  valorTotal = 0;
  valorCaixac = 0;
  valorCaixad = 0;
  dtaPagto = dtaIni - 1;
  /*Pegando os Saldos de Caixas/Bancos */
  /*SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CAIXA'
  Into :Caixa;
  for SELECT CODIGO FROM PLANO WHERE CONTAPAI = PLNCTAMAIN(:CAIXA)
  into :codCaixa
  do begin 
    for select VALOR from SP_MOV_CAIXA((:dtaIni-1),(:dtaIni-1),:codCaixa)
     into :valorc
    do begin 
    end 
    if (valorc > 0) then 
      valorcaixaD = valorcaixaD + valorc;
    if (valorc < 0) then 
      valorcaixaC = valorcaixaC + valorc;
    valorTotal = valorTotal + valorc;
    valorC = null;
  end 
 -- suspend;
  -- Total Pago ae esta data
  valorc = 0;
  valord = 0;
  valor = 0;
  valorCaixac = 0;
  valorCaixad = 0;
  */

  /*                                                    */
  /*                                                    */
  /*     Total de Debitos (em aberto) por RECEBIMENTOS     */
  /*                                                    */
  /*           */
  /*SELECT sum(rec.VALOR_RESTO)
     FROM RECEBIMENTO rec where 
     rec.DATAVENCIMENTO < :DTAINI and rec.STATUS = '5-'
    INTO :VALORD;
  
    --CONTACONTABIL = 'Saldo Contas a Receber ';
    --DESCRICAO = CONTACONTABIL;
    VALOR = VALOR + VALORD;
    --if (valorc > 0) then 
    --  valorcaixaD = valorcaixaD + valorc;
    --if (valorc < 0) then 
    --  valorcaixaC = valorcaixaC + valorc;

    VALORTOTAL = VALORTOTAL + VALORD;

    valorC = null;

  -- suspend;
    --DESCRICAO = null;
    --contacontabil = null;
    --VALORD = 0;
    VALORC = 0;
    --FORMA = null;
    --CODCONTA = null;
    --N_DOC = null;


  SELECT sum(pag.VALOR_RESTO)
    FROM PAGAMENTO pag
    where pag.DATAVENCIMENTO < :DTAINI and pag.STATUS = '5-'
    into :valorC;
    --CONTACONTABIL = 'Saldo Contas a Pagar ';
    --DESCRICAO = CONTACONTABIL;
    --if (valorc > 0) then 
      --valorcaixaD = valorcaixaD + valorc;
    --if (valorc < 0) then 
      --valorcaixaC = valorcaixaC + valorc;

    VALOR = VALOR - VALORC;
    VALORTOTAL = VALORTOTAL - VALORC;
  suspend;
    --DESCRICAO = null;
    --contacontabil = null;
    VALORD = 0;
    VALORC = 0;
    --FORMA = null;
    --CODCONTA = null;
    --N_DOC = null;
  */

  /*                                                    */
  /*                                                    */
  /*  Total de Debitos (À Receber) por RECEBIMENTOS     */
  /*                                                    */
  /*                                                    */
  j = :DTAFIM - :DTAINI; 
  i = 0;
  While (:i < (j + 1)) do
  begin  
    FOR SELECT rec.DATAVENCIMENTO, 
      sum(rec.VALOR_RESTO)
      FROM RECEBIMENTO rec where 
      rec.DATAVENCIMENTO = (:DTAINI + :i) and rec.STATUS = '5-'
    
      group by rec.DATAVENCIMENTO
    INTO :DTAPAGTO, :VALORD
    DO BEGIN
      VALOR = VALOR + VALORD;
      VALORTOTAL = VALORTOTAL + VALORD;
    --IF (VALORD > 0.001) THEN
    --SUSPEND;
    --VALORD = 0;
    END
  /*                                                    */
  /*                                                    */
  /*   Total de Debitos pela Movimentacao Financeira    */
  /*                                                    */
  /*                                                    */
  /*                                                    */
  /*                                                    */
  /*   Total de CrÃ©ditos (Á Pagar) por PAGAMENTOS      */
  /*                                                    */
  /*                                                    */
  FOR SELECT pag.DATAVENCIMENTO, 
    sum(pag.VALOR_RESTO)  
    FROM PAGAMENTO pag where 
    pag.DATAVENCIMENTO = (:DTAINI + :i) and pag.STATUS = '5-'
    
    group by pag.DATAVENCIMENTO
  INTO :DTAPAGTO, :VALORC
  DO BEGIN
    VALORTOTAL = VALORTOTAL - VALORC;
    VALOR = VALOR - VALORC;

    


    --IF (VALORC > 0.001) then
    --SUSPEND;
   
    --VALORC = 0;
    --VALORD = 0;

  END

  -- Movimento do Caixa 
  For Select dtapagto, sum(valorC), sum(ValorD) from SP_MOV_CAIXA_ORDEMCONSOLIDA(:DTAINI + :i, :DTAINI + :i, 0)
    group by dtapagto
    into :dtaPagto, :valorCaixaC, :valorCaixaD
  do begin    
    if (valorCaixaC is null) then 
      valorCaixaC = 0;
    if (valorCaixaD is null) then 
      valorCaixaD = 0;
    VALORTOTAL = VALORTOTAL + VALORCAIXAD - VALORCAIXAC;
  end 
  
  if ((valorc + valord + valorcaixac + valorcaixad) <> 0) then
    suspend;
  VALORC = 0;
  VALORD = 0;
  VALORCAIXAD = 0;
  VALORCAIXAC = 0;

  i = i + 1;
  end -- fim do WHILE

END