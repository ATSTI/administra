ALTER PROCEDURE  CAIXAITENS( DATAINI                          DATE
                           , DATAFIN                          DATE
                           , PCAIXA                           SMALLINT
                           , PFORMA                           CHAR( 2 )
                           , PCCUSTO                          INTEGER )
RETURNS ( VALOR                            DOUBLE PRECISION
        , ITEM                             VARCHAR( 300 )
        , DATAFINANCEIRO                   DATE
        , FORMAREC                         VARCHAR( 30 )
        , NDOC                             VARCHAR( 20 )
        , ORDENACAO                        SMALLINT
        , CONTALANCA                       VARCHAR( 60 )
        , JUROS                            DOUBLE PRECISION
        , JUROSTOTAL                       DOUBLE PRECISION
        , VALORTOTAL                       DOUBLE PRECISION )
AS
declare variable valorRec double precision;
  declare variable valorA double precision;
  declare variable codRec integer;
  declare variable conta integer;
  declare variable FormaR CHAR(1);

begin
  valorA = 0;
    /* Se n�o existe na tabela venda � pq � outras receitas */
    for select valorRecebido, formaRecebimento, n_documento, contaCredito, dataRecebimento , Juros from RECEBIMENTO 
     where dataRecebimento BETWEEN :dataIni and :dataFin 
     and ((caixa = :pcaixa) or (:pcaixa = 0))
     and ((FormaRecebimento = :pForma) or (:pForma = '0'))
     and ((codAlmoxarifado = :pCcusto) or (:pCcusto = 0))  and codVenda is null
     order by formaRecebimento
    into :valorRec, :formaR, :nDoc, :conta, :dataFinanceiro , :juros
    do begin
      ordenacao = 1;
      valor = valorRec; 
      select nome from plano where codigo = :conta
        into :item;
      contaLanca = item;
      if (formaR = '1') then 
        formaRec = 'Dinheiro';
      else if (formaR = '2') then 
        formaRec = 'Cheque';
      else if (formaR = '3') then 
        formaRec = 'Cheque-Pr�';
      else if (formaR = '4') then 
        formaRec = 'Boleto';
      else if (formaR = '5') then 
        formaRec = 'Duplicata';
      else if (formaR = '6') then 
        formaRec = 'Cart�o Cr�dito';
      else if (formaR = '7') then 
        formaRec = 'Cart�o D�bito';
      else if (formaR = '8') then 
        formaRec = 'Dep�sito';
      else if (formaR = '9') then 
        formaRec = 'D�bito Autom�tico';
      else if (formaR = 'A') then 
        formaRec = 'Home-Banking';
      else if (formaR = 'B') then 
        formaRec = 'Doc';
      else if (formaR = 'C') then 
        formaRec = 'Cart�rio';
      else if (formaR = 'D') then 
        formaRec = 'Transfer�ncia';
      else if (formaR = 'E') then 
        formaRec = 'Credito em Conta';
      suspend;   
    end



  for select valorRecebido, codRecebimento, formaRecebimento, n_documento , juros from RECEBIMENTO 
     where dataRecebimento BETWEEN :dataIni and :dataFin 
     and ((caixa = :pcaixa) or (:pcaixa = 0))
     and ((FormaRecebimento = :pForma) or (:pForma = '0'))
     and ((codAlmoxarifado = :pCcusto) or (:pCcusto = 0)) 
     order by formaRecebimento
  into :valorRec, :codRec, :formaR, :nDoc , :juros
  do begin
    if (formaR = '1') then 
      formaRec = 'Dinheiro';
    else if (formaR = '2') then 
      formaRec = 'Cheque';
    else if (formaR = '3') then 
      formaRec = 'Cheque-Pr�';
    else if (formaR = '4') then 
      formaRec = 'Boleto';
    else if (formaR = '5') then 
      formaRec = 'Duplicata';
    else if (formaR = '6') then 
      formaRec = 'Cart�o Cr�dito';
    else if (formaR = '7') then 
      formaRec = 'Cart�o D�bito';
    else if (formaR = '8') then 
      formaRec = 'Dep�sito';
    else if (formaR = '9') then 
      formaRec = 'D�bito Autom�tico';
    else if (formaR = 'A') then 
      formaRec = 'Home-Banking';
    else if (formaR = 'B') then 
      formaRec = 'Doc';
    else if (formaR = 'C') then 
      formaRec = 'Cart�rio';
    else if (formaR = 'D') then 
      formaRec = 'Transfer�ncia';
    else if (formaR = 'E') then 
      formaRec = 'Credito em Conta';
    
    /* Se for 10-Débito Automático considero como recebido a Mensalidade*/
    /* e não os outros valores primeiro*/
    if (formaR <> '9') then 
    begin 
      select sum(valor_ReSTO), sum(JUROS) from recebimento rec
        left outer join VENDA ven on ven.NUMEROBORDERO = rec.CODRECEBIMENTO
        left outer join PLANO plano on plano.CODIGO = rec.CONTACREDITO
        where  ven.NUMEROBORDERO = :codRec and  (rec.DATARECEBIMENTO BETWEEN 
        :DATAINI and :DATAFIN)  and ((rec.CAIXA =  :pCAIXA) or (:pCAIXA = 0)) 
        and ((rec.FORMARECEBIMENTO = :pFORMA) or (:pForma = '0')) and 
        ((rec.CODALMOXARIFADO = :pCCUSTO) or (:pCCUSTO = 0))

      into :VALORTOTAL, :JUROSTOTAL; 

      if (VALORTOTAL IS NULL ) THEN
        VALORTOTAL = 0;  
      IF (JUROSTOTAL IS NULL ) THEN
        JUROSTOTAL = 0; 

      for select (movd.VALTOTAL), prod.PRODUTO, rec.dataRecebimento, prod.PRO_COD, prod.CONTA_RECEITA , juros from recebimento rec
        left outer join VENDA ven on ven.NUMEROBORDERO = rec.CODRECEBIMENTO 
        left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = ven.CODMOVIMENTO
        left outer join PRODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO
        left outer join PLANO plano on plano.CODIGO = rec.CONTACREDITO
        where  ven.NUMEROBORDERO = :codRec and  (rec.DATARECEBIMENTO BETWEEN 
        :DATAINI and :DATAFIN)  and ((rec.CAIXA =  :pCAIXA) or (:pCAIXA = 0)) 
        and ((rec.FORMARECEBIMENTO = :pFORMA) or (:pForma = '0')) and 
        ((rec.CODALMOXARIFADO = :pCCUSTO) or (:pCCUSTO = 0))
        order by rec.codcliente, movd.valtotal, prod.PRO_COD, prod.CODPRO, prod.PRODUTO, rec.DataRecebimento 
      into :valorA, :item, :dataFinanceiro, :ordenacao, :CONTALANCA , :JUROS
      do begin 

        if (VALORTOTAL = 0 ) THEN
          VALORTOTAL = 1;
        JUROS = (VALORA * JUROSTOTAL)/ VALORTOTAL; 

        select nome from plano where conta = :contalanca
          into :contaLanca;
        if (contaLanca is null) then
           contaLanca = item;
        if (valorA < (:valorRec + 0.01)) then
          valor = valorA;
        else if (valorA = :valorRec) then 
          valor = valorA;     
        else if (valorA > :valorRec) then 
        begin
          valor = valorRec; 
        end
        valorRec = valorRec - valor;  
        --if (valor > 0) then  
        if (ordenacao is null) then
          ordenacao = 2;
        suspend;
      end
    end 
    else begin 
      for select (movd.VALTOTAL), prod.PRODUTO, rec.dataRecebimento, prod.PRO_COD, prod.CONTA_RECEITA , juros from recebimento rec
        left outer join VENDA ven on ven.NUMEROBORDERO = rec.CODRECEBIMENTO
        left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = ven.CODMOVIMENTO
        left outer join PRODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO
        left outer join PLANO plano on plano.CODIGO = rec.CONTACREDITO
        where  ven.NUMEROBORDERO = :codRec and  (rec.DATARECEBIMENTO BETWEEN 
        :DATAINI and :DATAFIN)  and ((rec.CAIXA =  :pCAIXA) or (:pCAIXA = 0)) 
        and ((rec.FORMARECEBIMENTO = :pFORMA) or (:pForma = '0')) and 
        ((rec.CODALMOXARIFADO = :pCCUSTO) or (:pCCUSTO = 0))
        order by rec.codcliente, movd.valtotal desc, prod.PRO_COD, prod.CODPRO, prod.PRODUTO, rec.DataRecebimento 
      into :valorA, :item, :dataFinanceiro , :ordenacao, :CONTALANCA , :JUROS
      do begin 
 
      if (valorA is null) then 
        valorA = 0 ; 
      if (VALORTOTAL = 0 ) THEN
        VALORTOTAL = 1;

      JUROS = (VALORA * JUROSTOTAL)/ VALORTOTAL; 

       select nome from plano where conta = :contalanca
          into :contaLanca;
        if (valorA < (:valorRec + 0.01)) then
          valor = valorA;
        else if (valorA = :valorRec) then 
          valor = valorA;     
        else if (valorA > :valorRec) then 
        begin
          valor = valorRec; 
        end
        valorRec = valorRec - valor;
        --if (valor > 0) then  
          suspend;
      end
    end
  end  
end
