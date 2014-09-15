select case when r.FORMARECEBIMENTO = 1 then '1-DINHEIRO'
 
 else 'Outros' end formarec 
 , r.FORMARECEBIMENTO
 ,case when r.FORMARECEBIMENTO = '1' then '1-DINHEIRO'
 when r.FORMARECEBIMENTO = '2' then '2-CHEQUE'
 when r.FORMARECEBIMENTO = '3' then '3-CHEQUE-PRÉ'
 when r.FORMARECEBIMENTO = '4' then '4-BOLETO'
 when r.FORMARECEBIMENTO ='5' then '5-DUPLICATA' 
 when r.FORMARECEBIMENTO = '6' then '6-CARTÃO CRÉDITO'
 when r.FORMARECEBIMENTO = '7' then '7-CARTÃO DÉBITO'
 when r.FORMARECEBIMENTO = '8' then '8-DEPÓSITO'
 when r.FORMARECEBIMENTO = '9' then '9-DÉBITO AUTOMÁTICO'
 when r.FORMARECEBIMENTO = '10' then '10-HOME BANKING'
 when r.FORMARECEBIMENTO = '11' then '11-DOC'
 when r.FORMARECEBIMENTO = '12' then '12-CARTÓRIO'
 when r.FORMARECEBIMENTO = '13' then '13-TRANSFERÊNCIA'
 when r.FORMARECEBIMENTO = '14' then '14-CRÉDITO EM CONTA'
 when r.FORMARECEBIMENTO = '15' then '15-CHEQUE DE TERCEIROS'
 when r.FORMARECEBIMENTO = '16' then '16-VALE'
 when r.FORMARECEBIMENTO = '17' then '17-OUTROS'
 when r.FORMARECEBIMENTO = '18' then '18-VISA CRÉDITO'
 when r.FORMARECEBIMENTO = '19' then '19-VISA DÉBITO'
 when r.FORMARECEBIMENTO = '20' then '20-MASTER CRÉDITO'
 when r.FORMARECEBIMENTO = '21' then '21-MASTER DÉBITO'
 when r.FORMARECEBIMENTO = '22' then '22-DINERS'
 else 'Outros' end formarec 

, sum(r.VALORRECEBIDO) 
from recebimento r where r.DATARECEBIMENTO > '30.06.14'
group by r.FORMARECEBIMENTO 

/*ma.Add('1-DINHEIRO');
  // FormaRecebimento 2
  forma.Add('2-CHEQUE');
  // FormaRecebimento 3
  forma.Add('3-CHEQUE-PRÉ');
  // FormaRecebimento 4
  forma.Add('4-BOLETO');
  forma.Add('5-DUPLICATA');
  forma.Add('6-CARTÃO CRÉDITO');
  forma.Add('7-CARTÃO DÉBITO');
  forma.Add('8-DEPÓSITO');
  forma.Add('9-DÉBITO AUTOMÁTICO');
  forma.Add('10-HOME BANKING');
  forma.Add('11-DOC');
  forma.Add('12-CARTÓRIO');
  forma.Add('13-TRANSFERÊNCIA');
  forma.Add('14-CRÉDITO EM CONTA');
  forma.Add('15-CHEQUE DE TERCEIROS');
  forma.Add('16-VALE');
  forma.Add('17-OUTROS');
  forma.Add('18-VISA CRÉDITO');
  forma.Add('19-VISA DÉBITO');
  forma.Add('20-MASTER CRÉDITO');
  forma.Add('21-MASTER DÉBITO');
  forma.Add('22-DINERS');*/