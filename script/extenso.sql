CREATE OR ALTER PROCEDURE EXTENSO (
    VALOR numeric(18,2),
    CENTS char(1) )
RETURNS (
    VALOREXTENSO varchar(250) )
AS
declare variable cmoeda varchar(10);
declare variable cmoedas varchar(10);
declare variable ccentavo varchar(10);
declare variable ccentavos varchar(10);
declare variable cmil varchar(12);
declare variable cmils varchar(12);
declare variable cmilhao varchar(12);
declare variable cmilhoes varchar(12);
declare variable cbilhao varchar(12);
declare variable cbilhoes varchar(12);
declare variable ctrilhao varchar(12);
declare variable ctrilhoes varchar(12);
declare variable cquatrilhao varchar(12);
declare variable cquatrilhoes varchar(12);
declare variable cvalor varchar(100);
declare variable nvalor smallint;
declare variable cvalorint varchar(100);
declare variable nvalorint integer;
declare variable nvalordec  numeric(6,3);
declare variable i smallint;
declare variable nconj integer;
declare variable cletra varchar(1);
declare variable caux varchar(200);
declare variable extensocentavos varchar(100);
declare variable separador varchar(3);
declare variable extensoconj varchar(150);
declare variable cdig1 varchar(10);
declare variable cdig2 varchar(10);
declare variable cdig3 varchar(10);
declare variable centenas char(108) = 'CENTO       DUZENTOS    TREZENTOS   QUATROCENTOSQUINHENTOS  SEISCENTOS  SETECENTOS  OITOCENTOS  NOVECENTOS  ';
declare variable dezenas char(79) = 'DEZ      VINTE    TRINTA   QUARENTA CINQUENTASESSENTA SETENTA  OITENTA  NOVENTA  ';
declare variable unidades char(54) = 'UM    DOIS  TRES  QUATROCINCO SEIS  SETE  OITO  NOVE  ';
declare variable unid10 char(81) = 'ONZE     DOZE     TREZE    QUATORZE QUINZE   DEZESSEISDEZESSETEDEZOITO  DEZENOVE ';
declare variable extensounidade varchar(12);
declare variable extensodezena varchar(12);
declare variable extensocentena varchar(12);
declare variable vlrextenso varchar(250);
begin
  if (cents is null) then cents = 'S';
  cents = UPPER(cents);
 
  cMil = 'MIL'; cMils = 'MIL';
  cMilhao = 'MILHÃO'; cMilhoes = 'MILHÕES';
  cBilhao = 'BILHÃO'; cBilhoes = 'BILHÕES';
  cTrilhao = 'TRILHÃO'; cTrilhoes = 'TRILHÕES';
  cQuatrilhao = 'QUATRILHÃO'; cQuatrilhoes = 'QUATRILHÕES';
  cMoeda = 'REAL'; cMoedas = 'REAIS';
  cCentavo = 'CENTAVO'; cCentavos = 'CENTAVOS';
  Separador = ' ';
 
  nValorInt = cast(valor/100*100 as integer);
  nValorDec = (Valor - Cast(nValorInt as numeric(18,3))) / 10;
  cAux = Cast(nValorDec as varchar(100));

  cValorInt = Cast(nValorInt as varchar(100)) || Substring(cAux from 3 for 3);

  cLetra = Substring(cValorInt from 1 for 1);
  cAux = cValorInt;
  cValorInt = '';
  while (cAux <> '') do
  begin
    cValorInt = (cLetra || cValorInt);
    cAux = Substring(cAux from 2 for 100);
    cLetra = Substring(cAux from 1 for 1);
    if (cLetra = '') then cLetra = ' ';
  end
 
  nConj = 1;
  extensocentavos = '';
  vlrextenso = '';
 
  if (Valor <> 0) then
  begin
    while (cValorInt <> '') do
    begin
      cValor = '';
      i = 1;
      while (i <= 3) do
      begin
        cLetra = Substring(cValorInt from 1 for 1);
        if (cLetra = '') then cLetra = ' ';
        cValor = (cLetra || cValor);
        cValorInt = Substring(cValorInt from 2 for 100);
        i = (i + 1);
      end
 
      nValor = Cast(cValor as smallint);
 
      cDig1 = Substring(cValor from 1 for 1);
      cDig2 = Substring(cValor from 2 for 1);
      cDig3 = Substring(cValor from 3 for 1);
 
      extensounidade = '';
      extensodezena = '';
      extensocentena = '';
 
      if (cDig3 > '0') then
      begin
        cAux = cast((cast(cDig3 as integer) * 6 - 5) as varchar(3));
        cAux = 'select cast(Substring(''' || unidades || ''' from ' || cAux || ' for 6) as varchar(12)) from rdb$database';
        execute statement cAux into :extensounidade;
      end
 
      if (cDig2 > '0') then
      begin
        if ((cDig3 > '0') and (cDig2 = '1')) then
        begin
          extensounidade = '';
          cAux = unid10 || ''' from ' || cast((cast(cDig3 as integer) * 9 - 8) as varchar(3));
        end
        else
          cAux = dezenas || ''' from ' || cast((cast(cDig2 as integer) * 9 - 8) as varchar(3));
        cAux = 'select cast(Substring(''' || cAux || ' for 9) as varchar(12)) from rdb$database';
        execute statement cAux into :extensodezena;
      end
 
      if (cDig1 > '0') then
      begin
        if (nValor = 100) then
          extensocentena = 'CEM';
        else
        begin
          cAux = cast((cast(cDig1 as integer) * 12 - 11) as varchar(3));
          cAux = 'select cast(Substring(''' || centenas || ''' from ' || cAux || ' for 12) as varchar(12)) from rdb$database';
          execute statement cAux into :extensocentena;
        end
      end
 
      if (extensounidade <> '') then
        extensoconj = extensounidade;
      else
        extensoconj = '';
 
      if (extensodezena <> '') then
      begin
        if (extensoconj <> '') then
          extensoconj = extensodezena || ' E ' || extensoconj;
        else
          extensoconj = extensodezena;
      end
 
      if (extensocentena <> '') then
      begin
        if (extensoconj <> '') then
          extensoconj = extensocentena || ' E ' || extensoconj;
        else
          extensoconj = extensocentena;
      end
 
      if (nValor > 0) then
      begin
        if (nConj = 1) then 
        begin
          if (nValor > 1) then
            extensoconj = extensoconj || ' ' ||ccentavos;
          else
            extensoconj = extensoconj || ' ' || ccentavo;
        end

 
        if (nConj = 3) then 
        begin
          if (nValor > 1) then
            extensoconj = extensoconj || ' ' || cMils;
          else
            extensoconj = extensoconj || ' ' || cMil;
        end
        else
        if (nConj = 4) then 
        begin
        if (nValor > 1) then
            extensoconj = extensoconj || ' ' || cMilhoes;
          else
            extensoconj = extensoconj || ' ' || cMilhao;
        end
        else
        if (nConj = 5) then 
        begin
          if (nValor > 1) then
            extensoconj = extensoconj || ' ' || cBilhoes;
          else
            extensoconj = extensoconj || ' ' || cBilhao;
        end
        else
        if (nConj = 6) then 
        begin
          if (nValor > 1) then
            extensoconj = extensoconj || ' ' || cTrilhoes;
          else
            extensoconj = extensoconj || ' ' || cTrilhao;
        end
        else
        if (nConj = 7) then 
        begin
          if (nValor > 1) then
            extensoconj = extensoconj || ' ' || cQuatrilhoes;
          else
            extensoconj = extensoconj || ' ' || cQuatrilhao;
        end
 
        if ((vlrextenso = '') and (nConj > 3)) then
          extensoconj = extensoconj || ' DE ';
      end
 
      if (nConj < 4) then
        Separador = ' E ';
      else
        Separador = ', ';
 
      if (nConj = 1) then 
        extensocentavos = extensoconj;
      else
      if (extensoconj <> '') then
      begin
        if (vlrextenso <> '') then
          vlrextenso = extensoconj || Separador || vlrextenso;
        else
          vlrextenso = extensoconj;
      end
 
      nConj = nConj + 1;
    end
 
    if (nvalorint > 0) then
    begin
      if (nvalorint > 1) then
        vlrextenso = vlrextenso || ' ' || cmoedas;
      else
        vlrextenso = vlrextenso || ' ' || cmoeda;
    end
 
    if ((extensocentavos <> '') and (cents = 'S')) then
    begin
      if (vlrextenso <> '') then
        vlrextenso = vlrextenso || ' E ' || extensocentavos;
      else
        vlrextenso = extensocentavos;
    end
  

    valorextenso = '';

    cLetra = Substring(vlrextenso from 1 for 1);
    cAux = '';
    while (vlrextenso <> '') do
    begin
      cLetra = Substring(vlrextenso from 1 for 1);
      vlrextenso = Substring(vlrextenso from 2 for 250);
      if ((cLetra <> ' ') or ((cLetra = ' ') and (cAux <> ' ')))  then
        valorextenso = valorextenso || cLetra;
      cAux = cLetra;
    end
  end
  else
    valorextenso = 'ZERO';
 
  suspend;
end