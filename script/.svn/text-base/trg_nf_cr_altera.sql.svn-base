ALTER TRIGGER TRG_NF_CR_ALTERA
AFTER UPDATE
POSITION 0
AS
  DECLARE VARIABLE VALOR DOUBLE PRECISION;
  DECLARE VARIABLE VALORN DOUBLE PRECISION;
  DECLARE VARIABLE VALOR_TOTAL DOUBLE PRECISION;
  DECLARE VARIABLE PARC SMALLINT;
  DECLARE VARIABLE stat char(1);
  DECLARE VARIABLE DADOS VARCHAR( 40 );


BEGIN
   select status1 from venda where codvenda = old.codvenda
   into :stat ;
   if (stat is null) then
   IF (OLD.CODVENDA IS NOT NULL) THEN
   IF (OLD.VALOR_TOTAL_NOTA <> NEW.VALOR_TOTAL_NOTA) THEN
   BEGIN
       /* Valores Pendentes desta VENDA */
       select sum(VALOR_PRIM_VIA), sum(VALORRECEBIDO), MAX(VIA) from RECEBIMENTO 
           where (CODVENDA = NEW.CODVENDA)
       INTO :VALOR, :VALOR_TOTAL, :PARC;
       if (valor <> new.VALOR_TOTAL_NOTA) then 
       IF ((VALOR - VALOR_TOTAL)  > 0) then
       BEGIN    
         VALOR = VALOR - VALOR_TOTAL;
         VALOR_TOTAL = VALOR + VALOR_TOTAL;
         VALORN = NEW.VALOR_TOTAL_NOTA - OLD.VALOR_PRODUTO;
          /* NEW.VALOR_FRETE + NEW.VALOR_SEGURO + NEW.OUTRAS_DESP + NEW.VALOR_IPI; */
         VALOR_TOTAL = VALOR_TOTAL + VALORN;
         VALOR = (VALOR / PARC);
         VALORN = (VALORN / PARC);
         VALOR = VALOR + VALORN;

         -- esse select é para quando alterar o valor da nota não alterar o receber (OX bike)

         select  DADOS FROM PARAMETRO where PARAMETRO = 'NFVALOR' AND DADOS = 'GERAVALORPARCIAL'
         into :DADOS ;
         if (DADOS is null)  then
         begin
          UPDATE RECEBIMENTO SET VALORTITULO = :VALOR_TOTAL, VALOR_RESTO = :VALOR 
          WHERE CODVENDA = NEW.CODVENDA and ((STATUS = '5-') OR (STATUS = '6-') OR (STATUS = '9-'));   
         end
       END
    END
END
