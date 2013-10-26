CREATE OR ALTER PROCEDURE FLUXOCAIXAVER (
    PDTA1 Date,
    PDTA2 Date )
RETURNS (    GRUPO Varchar(50),
    TIPO Varchar(50),
    NOMECONTA Varchar(50),
    VALOR Double precision,
    SALDO Double precision,
    dia1 Double precision,
    dia2 Double precision,
    dia3 Double precision,
    dia4 Double precision,
    dia5 Double precision,
    dia6 Double precision,
    dia7 Double precision,
    dia8 Double precision,
    dia9 Double precision,
    dia10 Double precision,
    dia11 Double precision,
    dia12 Double precision,
    dia13 Double precision,
    dia14 Double precision,
    dia15 Double precision,
    dia16 Double precision,
    dia17 Double precision,
    dia18 Double precision,
    dia19 Double precision,
    dia20 Double precision,
    dia21 Double precision,
    dia22 Double precision,
    dia23 Double precision,
    dia24 Double precision,
    dia25 Double precision,
    dia26 Double precision,
    dia27 Double precision,
    dia28 Double precision,
    dia29 Double precision,    
    dia30 Double precision,
    dia31 Double precision
 )
AS
DECLARE VARIABLE VALORC  Double precision;
DECLARE VARIABLE VALORD  Double precision;
DECLARE VARIABLE VALORTOT  Double precision = 0;
declare variable numDias smallint;
declare variable dia smallint;
declare variable formaRec char(1);
declare variable    Tdia1 Double precision;
declare variable    Tdia2 Double precision;
declare variable    Tdia3 Double precision;
    declare variable Tdia4 Double precision;
    declare variable Tdia5 Double precision;
    declare variable Tdia6 Double precision;
    declare variable Tdia7 Double precision;
    declare variable Tdia8 Double precision;
    declare variable Tdia9 Double precision;
    declare variable Tdia10 Double precision;
    declare variable Tdia11 Double precision;
    declare variable Tdia12 Double precision;
    declare variable Tdia13 Double precision;
    declare variable Tdia14 Double precision;
    declare variable Tdia15 Double precision;
    declare variable Tdia16 Double precision;
    declare variable Tdia17 Double precision;
    declare variable Tdia19 Double precision;
    declare variable Tdia18 Double precision;
    declare variable Tdia20 Double precision;
    declare variable Tdia21 Double precision;
    declare variable Tdia22 Double precision;
    declare variable Tdia23 Double precision;
    declare variable Tdia24 Double precision;
    declare variable Tdia25 Double precision;
    declare variable Tdia26 Double precision;
    declare variable Tdia27 Double precision;
    declare variable Tdia28 Double precision;
    declare variable Tdia29 Double precision;    
    declare variable Tdia30 Double precision;
    declare variable Tdia31 Double precision;
BEGIN
  -- Saldo INICIAL  e FINAL
  FOR select SALDO, sum(DIA1), sum(DIA2), sum(DIA3),sum(DIA4),
     sum(DIA5), sum(DIA6), sum(DIA7), sum(DIA8), sum(DIA9), sum(DIA10),
     sum(DIA11), sum(DIA12), sum(DIA13),sum(DIA14),
     sum(DIA15), sum(DIA16), sum(DIA17), sum(DIA18), sum(DIA19), sum(DIA20),
     sum(DIA21), sum(DIA22), sum(DIA23),sum(DIA24),
     sum(DIA25), sum(DIA26), sum(DIA27), sum(DIA28), sum(DIA29), sum(DIA30), sum(DIA31)
      FROM FLUXOCAIXA(:PDTA1,:PDTA2) group by SALDO
  into :SALDO, :TDIA1, :TDIA2, :TDIA3, :TDIA4, :TDIA5, :TDIA6
      , :TDIA7, :TDIA8, :TDIA9, :TDIA10
      , :TDIA11, :TDIA12, :TDIA13, :TDIA14, :TDIA15, :TDIA16
      , :TDIA17, :TDIA18, :TDIA19, :TDIA20
      , :TDIA21, :TDIA22, :TDIA23, :TDIA24, :TDIA25, :TDIA26
      , :TDIA27, :TDIA28, :TDIA29, :TDIA30, :TDIA31
  do begin 

    tipo = '0-SALDOINICIAL';
    NOMECONTA = 'A - Saldo Anterior';

    DIA1 = SALDO;
    DIA2 = DIA1 + TDIA1;
    DIA3 = DIA2 + TDIA2; 
    DIA4 = DIA3 + TDIA3; 
    DIA5 = DIA4 + TDIA4; 
    DIA6 = DIA5 + TDIA5; 
    DIA7 = DIA6 + TDIA6; 
    DIA8 = DIA7 + TDIA7; 
    DIA9 = DIA8 + TDIA8;
    DIA10 = DIA9 + TDIA9;  
    DIA11 = DIA10+TDIA10;  
    DIA12 = DIA11+TDIA11;  
    DIA13 = DIA12+TDIA12;  
    DIA14 = DIA13+TDIA13;  
    DIA15 = DIA14+TDIA14;  
    DIA16 = DIA15+TDIA15;  
    DIA17 = DIA16+TDIA16;  
    DIA18 = DIA17+TDIA17;  
    DIA19 = DIA18+TDIA18;  
    DIA20 = DIA19+TDIA19;  
    DIA21 = DIA20+TDIA20;  
    DIA22 = DIA21+TDIA21;  
    DIA23 = DIA22+TDIA22;  
    DIA24 = DIA23+TDIA23;  
    DIA25 = DIA24+TDIA24;  
    DIA26 = DIA25+TDIA25;  
    DIA27 = DIA26+TDIA26;  
    DIA28 = DIA27+TDIA27;  
    DIA29 = DIA28+TDIA28;  
    DIA30 = DIA29+TDIA29;  
    DIA31 = DIA30+TDIA30;      
    Suspend;



    tipo = '9-SALDOFINAL';
    NOMECONTA = 'E - Saldo Final(C-D)';
    DIA1 = SALDO + TDIA1;
    TDIA1 = DIA1;
    DIA2 = DIA1 + TDIA2;
    TDIA2 = DIA2;
    DIA3 = DIA2 + TDIA3;   
    TDIA3 = DIA3;
    DIA4 = DIA3 + TDIA4;   
    TDIA4 = DIA4;
    DIA5 = DIA4 + TDIA5;   
    TDIA5 = DIA5;
    DIA6 = DIA5 + TDIA6;   
    TDIA6 = DIA6;
    DIA7 = DIA6 + TDIA7;   
    TDIA7 = DIA7;
    DIA8 = DIA7 + TDIA8;   
    TDIA8 = DIA8;
    DIA9 = DIA8 + TDIA9;   
    TDIA9 = DIA9;
    DIA10 = DIA9 + TDIA10;   
    TDIA10 = DIA10;
    DIA11 = DIA10 + TDIA11;   
    TDIA11 = DIA11;
    DIA12 = DIA11 + TDIA12;   
    TDIA12 = DIA12;
    DIA13 = DIA12 + TDIA13;   
    TDIA13 = DIA13;
    DIA14 = DIA13 + TDIA14;   
    TDIA14 = DIA14;
    DIA15 = DIA14 + TDIA15;   
    TDIA15 = DIA15;
    DIA16 = DIA15 + TDIA16;   
    TDIA16 = DIA16;
    DIA17 = DIA16 + TDIA17;   
    TDIA17 = DIA17;
    DIA18 = DIA17 + TDIA18;  
    TDIA18 = DIA18;
    DIA19 = DIA18 + TDIA19;   
    TDIA19 = DIA19;
    DIA20 = DIA19 + TDIA20;   
    TDIA20 = DIA20;
    DIA21 = DIA20 + TDIA21;   
    TDIA21 = DIA21;
    DIA22 = DIA21 + TDIA22;   
    TDIA22 = DIA22;
    DIA23 = DIA22 + TDIA23;   
    TDIA23 = DIA23;
    DIA24 = DIA23 + TDIA24;   
    TDIA24 = DIA24;
    DIA25 = DIA24 + TDIA25;   
    TDIA25 = DIA25;
    DIA26 = DIA25 + TDIA26;   
    TDIA26 = DIA26;
    DIA27 = DIA26 + TDIA27;   
    TDIA27 = DIA27;
    DIA28 = DIA27 + TDIA28;   
    TDIA28 = DIA28;
    DIA29 = DIA28 + TDIA29;   
    TDIA29 = DIA29;
    DIA30 = DIA29 + TDIA30;   
    TDIA30 = DIA30;
    DIA31 = DIA30 + TDIA31;   
    TDIA31 = DIA31;
    Suspend;
  end 

  -- Entradas
  FOR select NOMECONTA, sum(DIA1), sum(DIA2), sum(DIA3),sum(DIA4),
     sum(DIA5), sum(DIA6), sum(DIA7), sum(DIA8), sum(DIA9), sum(DIA10),
     sum(DIA11), sum(DIA12), sum(DIA13),sum(DIA14),
     sum(DIA15), sum(DIA16), sum(DIA17), sum(DIA18), sum(DIA19), sum(DIA20),
     sum(DIA21), sum(DIA22), sum(DIA23),sum(DIA24),
     sum(DIA25), sum(DIA26), sum(DIA27), sum(DIA28), sum(DIA29), sum(DIA30), sum(DIA31)
      FROM FLUXOCAIXA(:PDTA1,:PDTA2) Where TIPO = '2-RECEITA' group by NOMECONTA
  into :NOMECONTA, :DIA1, :DIA2, :DIA3, :DIA4, :DIA5, :DIA6
      , :DIA7, :DIA8, :DIA9, :DIA10
      , :DIA11, :DIA12, :DIA13, :DIA14, :DIA15, :DIA16
      , :DIA17, :DIA18, :DIA19, :DIA20
      , :DIA21, :DIA22, :DIA23, :DIA24, :DIA25, :DIA26
      , :DIA27, :DIA28, :DIA29, :DIA30, :DIA31
  do begin 
    tipo = '1-ENTRADAS';
    Suspend;
  end 

  -- Entradas
  FOR select sum(DIA1), sum(DIA2), sum(DIA3),sum(DIA4),
     sum(DIA5), sum(DIA6), sum(DIA7), sum(DIA8), sum(DIA9), sum(DIA10),
     sum(DIA11), sum(DIA12), sum(DIA13),sum(DIA14),
     sum(DIA15), sum(DIA16), sum(DIA17), sum(DIA18), sum(DIA19), sum(DIA20),
     sum(DIA21), sum(DIA22), sum(DIA23),sum(DIA24),
     sum(DIA25), sum(DIA26), sum(DIA27), sum(DIA28), sum(DIA29), sum(DIA30), sum(DIA31)
      FROM FLUXOCAIXA(:PDTA1,:PDTA2) Where TIPO = '2-RECEITA'
  into :DIA1, :DIA2, :DIA3, :DIA4, :DIA5, :DIA6
      , :DIA7, :DIA8, :DIA9, :DIA10
      , :DIA11, :DIA12, :DIA13, :DIA14, :DIA15, :DIA16
      , :DIA17, :DIA18, :DIA19, :DIA20
      , :DIA21, :DIA22, :DIA23, :DIA24, :DIA25, :DIA26
      , :DIA27, :DIA28, :DIA29, :DIA30, :DIA31
  do begin 
    tipo = '2-TOTAL ENTRADAS';
    NOMECONTA = 'Total Entradas(B)';  
    Suspend;

  end 
     
    --DIAx Total Entradas
    --TDIAx SALDO NO DIA
    DIA1 = SALDO + DIA1;
    DIA2 = DIA2 + TDIA1;
    DIA3 = DIA3 + TDIA2;   
    DIA4 = DIA4 + TDIA3;   
    DIA5 = DIA5 + TDIA4;   
    DIA6 = DIA6 + TDIA5;   
    DIA7 = DIA7 + TDIA6;   
    DIA8 = DIA8 + TDIA7;   
    DIA9 = DIA9 + TDIA8;   
    DIA10 = DIA10 + TDIA9;   
    DIA11 = DIA11 + TDIA10;   
    DIA12 = DIA12 + TDIA11;   
    DIA13 = DIA13 + TDIA12;   
    DIA14 = DIA14 + TDIA13;   
    DIA15 = DIA15 + TDIA14;   
    DIA16 = DIA16 + TDIA15;   
    DIA17 = DIA17 + TDIA16;   
    DIA18 = DIA18 + TDIA17;   
    DIA19 = DIA19 + TDIA18;   
    DIA20 = DIA20 + TDIA19;   
    DIA21 = DIA21 + TDIA20;   
    DIA22 = DIA22 + TDIA21;   
    DIA23 = DIA23 + TDIA22;   
    DIA24 = DIA24 + TDIA23;   
    DIA25 = DIA25 + TDIA24;   
    DIA26 = DIA26 + TDIA25;   
    DIA27 = DIA27 + TDIA26;   
    DIA28 = DIA28 + TDIA27;   
    DIA29 = DIA29 + TDIA28;   
    DIA30 = DIA30 + TDIA29;   
    DIA31 = DIA31 + TDIA30;   
    tipo = '3-DISPONIVEL';
    NOMECONTA = 'C - Disponivel(A+B)';  
    Suspend; 

    dia1 = 0;
     dia2 = 0;
     dia3 = 0;
     dia4 = 0;
     dia5 = 0;
     dia6 = 0;     
     dia7 = 0;
     dia8 = 0;
     dia9 = 0;
     dia10 = 0;
     dia11 = 0;
     dia12 = 0;
     dia13 = 0;
     dia14 = 0;
     dia15 = 0;
     dia16 = 0;     
     dia17 = 0;
     dia18 = 0;
     dia19 = 0;
     dia20 = 0;
     dia21 = 0;
     dia22 = 0;
     dia23 = 0;
     dia24 = 0;
     dia25 = 0;
     dia26 = 0;
     dia27 = 0;
     dia28 = 0;
     dia29 = 0;
     dia30 = 0;
     dia31 = 0;

   tipo = '4-SAIDAS';
   NOMECONTA = 'E - Saidas';  
   Suspend; 

  -- TOTALD DE SAIDAS 
  FOR select sum(DIA1), sum(DIA2), sum(DIA3),sum(DIA4),
     sum(DIA5), sum(DIA6), sum(DIA7), sum(DIA8), sum(DIA9), sum(DIA10),
     sum(DIA11), sum(DIA12), sum(DIA13),sum(DIA14),
     sum(DIA15), sum(DIA16), sum(DIA17), sum(DIA18), sum(DIA19), sum(DIA20),
     sum(DIA21), sum(DIA22), sum(DIA23),sum(DIA24),
     sum(DIA25), sum(DIA26), sum(DIA27), sum(DIA28), sum(DIA29), sum(DIA30), sum(DIA31)
      FROM FLUXOCAIXA(:PDTA1,:PDTA2) Where TIPO <> '2-RECEITA'
  into :DIA1, :DIA2, :DIA3, :DIA4, :DIA5, :DIA6
      , :DIA7, :DIA8, :DIA9, :DIA10
      , :DIA11, :DIA12, :DIA13, :DIA14, :DIA15, :DIA16
      , :DIA17, :DIA18, :DIA19, :DIA20
      , :DIA21, :DIA22, :DIA23, :DIA24, :DIA25, :DIA26
      , :DIA27, :DIA28, :DIA29, :DIA30, :DIA31
  do begin 
    tipo = '7-TOTALSAIDAS';
    NOMECONTA = 'Total de Saidas(D)';    
    Suspend;
  end 

  FOR select GRUPO, TIPO, NOMECONTA, VALOR, SALDO, DIA1, DIA2, DIA3,DIA4,
     DIA5, DIA6, DIA7, DIA8, DIA9, DIA10, DIA11, DIA12, DIA13, DIA14, DIA15, DIA16,
     DIA17, DIA18, DIA19, DIA20, DIA21, DIA22, DIA23, DIA24, DIA25, DIA26, DIA27, DIA28,
     DIA29, DIA30, DIA31
      FROM FLUXOCAIXA(:PDTA1,:PDTA2) Where TIPO <> '2-RECEITA' order by tipo, nomeConta
  into :GRUPO, :TIPO, :NOMECONTA, :VALOR, :SALDO, :DIA1, :DIA2, :DIA3, :DIA4, :DIA5, :DIA6
      , :DIA7, :DIA8, :DIA9, :DIA10, :DIA11, :DIA12, :DIA13, :DIA14, :DIA15, :DIA16
      , :DIA17, :DIA18, :DIA19, :DIA20, :DIA21, :DIA22, :DIA23, :DIA24, :DIA25, :DIA26
      , :DIA27, :DIA28, :DIA29, :DIA30, :DIA31
  do begin 
    TIPO = '5-DESPESAS';  
    Suspend;
  end 
end
