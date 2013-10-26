set term ^ ;
create or alter procedure CaixaItens(DATAINI DATE, DATAFIN DATE, PCAIXA SMALLINT,
   PFORMA CHAR(2), PCCUSTO INTEGER)
Returns (
   Valor DOUBLE PRECISION,
   item varchar(300),
   dataFinanceiro date,
   formaRec varchar(30),
   nDoc varchar(20),
   ordenacao SMALLINT, 
   CONTALANCA VARCHAR(60) 
    
   )
as
  declare variable valorRec double precision;
  declare variable valorA double precision;
  declare variable codRec integer;
  declare variable conta integer;

  declare variable FormaR CHAR(1);
begin
  valorA = 0;
    /* Se não existe na tabela venda é pq é outras receitas */
    for select valor_RESTO, formaRecebimento, n_documento, contaCredito, dataCONSOLIDA from RECEBIMENTO 
     where dataConsolida BETWEEN :dataIni and :dataFin 
     and ((caixa = :pcaixa) or (:pcaixa = 0))
     and ((FormaRecebimento = :pForma) or (:pForma = '0'))
     and ((codAlmoxarifado = :pCcusto) or (:pCcusto = 0))  and codVenda is null
     order by formaRecebimento
    into :valorRec, :formaR, :nDoc, :conta, dataFinanceiro
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
        formaRec = 'Cheque-Pre';
      else if (formaR = '4') then 
        formaRec = 'Boleto';
      else if (formaR = '5') then 
        formaRec = 'Duplicata';
      else if (formaR = '6') then 
        formaRec = 'Cartao Credito';
      else if (formaR = '7') then 
        formaRec = 'Cartao Debito';
      else if (formaR = '8') then 
        formaRec = 'Deposito';
      else if (formaR = '9') then 
        formaRec = 'Debito Automatico';
      else if (formaR = 'A') then 
        formaRec = 'Home-Banking';
      else if (formaR = 'B') then 
        formaRec = 'Doc';
      else if (formaR = 'C') then 
        formaRec = 'Cartorio';
      suspend;   
    end



  for select valor_ReSTO, codRecebimento, formaRecebimento, n_documento from RECEBIMENTO 
     where dataconsolida BETWEEN :dataIni and :dataFin 
     and ((caixa = :pcaixa) or (:pcaixa = 0))
     and ((FormaRecebimento = :pForma) or (:pForma = '0'))
     and ((codAlmoxarifado = :pCcusto) or (:pCcusto = 0)) 
     order by formaRecebimento
  into :valorRec, :codRec, :formaR, :nDoc
  do begin
    if (formaR = '1') then 
      formaRec = 'Dinheiro';
    else if (formaR = '2') then 
      formaRec = 'Cheque';
    else if (formaR = '3') then 
      formaRec = 'Cheque-Pre';
    else if (formaR = '4') then 
      formaRec = 'Boleto';
    else if (formaR = '5') then 
      formaRec = 'Duplicata';
    else if (formaR = '6') then 
      formaRec = 'Cartao Credito';
    else if (formaR = '7') then 
      formaRec = 'Cartao Debito';
    else if (formaR = '8') then 
      formaRec = 'Deposito';
    else if (formaR = '9') then 
      formaRec = 'Debito Automatico';
    else if (formaR = 'A') then 
      formaRec = 'Home-Banking';
    else if (formaR = 'B') then 
      formaRec = 'Doc';
    else if (formaR = 'C') then 
      formaRec = 'Cartorio';
    
    /* Se for 10-DÃ©bito AutomÃ¡tico considero como recebido a Mensalidade*/
    /* e nÃ£o os outros valores primeiro*/
    if (formaR <> '9') then 
    begin 
      for select (movd.VALTOTAL), prod.PRODUTO, rec.dataCONSOLIDA, prod.PRO_COD, prod.CONTA_RECEITA from recebimento rec
        left outer join VENDA ven on ven.NUMEROBORDERO = rec.CODRECEBIMENTO
        left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = ven.CODMOVIMENTO
        left outer join PRODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO
        left outer join PLANO plano on plano.CODIGO = rec.CONTACREDITO
        where  ven.NUMEROBORDERO = :codRec and  (rec.DATACONSOLIDA BETWEEN 
        :DATAINI and :DATAFIN)  and ((rec.CAIXA =  :pCAIXA) or (:pCAIXA = 0)) 
        and ((rec.FORMARECEBIMENTO = :pFORMA) or (:pForma = '0')) and 
        ((rec.CODALMOXARIFADO = :pCCUSTO) or (:pCCUSTO = 0))
        order by rec.codcliente, movd.valtotal, prod.PRO_COD, prod.CODPRO, prod.PRODUTO, rec.DataRecebimento 
      into :valorA, :item, :dataFinanceiro, :ordenacao, :CONTALANCA 
      do begin 
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
      for select (movd.VALTOTAL), prod.PRODUTO, rec.dataCONSOLIDA, prod.PRO_COD, prod.CONTA_RECEITA from recebimento rec
        left outer join VENDA ven on ven.NUMEROBORDERO = rec.CODRECEBIMENTO
        left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = ven.CODMOVIMENTO
        left outer join PRODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO
        left outer join PLANO plano on plano.CODIGO = rec.CONTACREDITO
        where  ven.NUMEROBORDERO = :codRec and  (rec.DATACONSOLIDA BETWEEN 
        :DATAINI and :DATAFIN)  and ((rec.CAIXA =  :pCAIXA) or (:pCAIXA = 0)) 
        and ((rec.FORMARECEBIMENTO = :pFORMA) or (:pForma = '0')) and 
        ((rec.CODALMOXARIFADO = :pCCUSTO) or (:pCCUSTO = 0))
        order by rec.codcliente, movd.valtotal desc, prod.PRO_COD, prod.CODPRO, prod.PRODUTO, rec.DataRecebimento 
      into :valorA, :item, :dataFinanceiro , :ordenacao, :CONTALANCA
      do begin 
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
