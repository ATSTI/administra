CREATE OR ALTER TRIGGER FRETE_NF FOR NOTAFISCAL ACTIVE
AFTER INSERT OR UPDATE POSITION 0
AS 
declare variable codm INTEGER;
declare variable coddet INTEGER;
declare variable det1 INTEGER;
declare variable det INTEGER;
declare variable FRETE double precision;
declare variable DESCONTO double precision;
declare variable OUTRAS double precision;
declare variable SEGURO double precision;
declare variable FRETE_UNIT double precision;
declare variable DESCONTO_UNIT double precision;
declare variable OUTRAS_UNIT double precision;
declare variable SEGURO_UNIT double precision;
declare variable FRETE_TOTAL double precision;
declare variable DESCONTO_TOTAL double precision;
declare variable OUTRAS_TOTAL double precision;
declare variable SEGURO_TOTAL double precision;
declare variable valtot double precision;
BEGIN
/*alter table MOVIMENTODETALHE add VALOR_DESCONTO double precision */
    if ((new.NATUREZA = 15) or (new.NATUREZA = 12) or (new.NATUREZA = 16)) then
    begin
        select v.CODMOVIMENTO from venda v
        where v.CODVENDA = new.CODVENDA
        into :codm;
    end
    else
    begin
        select c.CODMOVIMENTO from COMPRA c
        where c.CODCOMPRA = new.CODVENDA
        into :codm;
    end
   
   FRETE = new.VALOR_FRETE;
   DESCONTO = new.VALOR_DESCONTO;
   OUTRAS = new.OUTRAS_DESP;
   SEGURO = new.VALOR_SEGURO;

   if (frete is null) then
    frete = 0;
   if (desconto is null) then
    desconto = 0; 
   if (OUTRAS is null) then
    OUTRAS = 0; 
   if (SEGURO is null) then
    SEGURO = 0; 

   if ( new.VALOR_PRODUTO > 0) then
   begin
     Frete_UNIT = new.VALOR_FRETE / new.VALOR_PRODUTO;
     DESCONTO_UNIT = new.VALOR_DESCONTO / new.VALOR_PRODUTO;
     OUTRAS_UNIT = new.OUTRAS_DESP / new.VALOR_PRODUTO;
     SEGURO_UNIT = new.VALOR_SEGURO / new.VALOR_PRODUTO;
   end
   
   Frete_TOTAL = new.VALOR_FRETE;
   DESCONTO_TOTAL = new.VALOR_DESCONTO;
   OUTRAS_TOTAL = new.OUTRAS_DESP;
   SEGURO_TOTAL = new.VALOR_SEGURO;

   
   select count(md.CODDETALHE) from MOVIMENTODETALHE md
   where md.CODMOVIMENTO = :codm
   into :det;
   det1 = 1;
   for select md.CODDETALHE, (md.VALTOTAL) from MOVIMENTODETALHE md
   where md.CODMOVIMENTO = :codm
   into :coddet, :valtot
   do begin
	if ((valtot is null) or (valtot = 0)) then
		valtot = 1;
	if (inserting) then
	begin
	 update MOVIMENTODETALHE set FRETE = UDF_ROUNDDEC((:Frete_UNIT * :valtot), 2), valor_desconto = UDF_ROUNDDEC((:DESCONTO_UNIT * :valtot), 2), 
	 valor_outros = UDF_ROUNDDEC((:OUTRAS_UNIT * :valtot), 2), valor_SEGURO = UDF_ROUNDDEC((:SEGURO_UNIT * :valtot), 2) where CODDETALHE = :coddet;
	 if ( det = det1) then
	   update MOVIMENTODETALHE set FRETE = :Frete_TOTAL, valor_desconto = :DESCONTO_TOTAL, valor_seguro = :SEGURO_TOTAL, 
	   valor_outros = :OUTRAS_TOTAL where CODDETALHE = :coddet;
    end
	else
     if((old.VALOR_FRETE <> new.VALOR_FRETE) or (old.VALOR_DESCONTO <> new.VALOR_DESCONTO) or (old.VALOR_SEGURO <> new.VALOR_SEGURO) or (old.OUTRAS_DESP <> new.OUTRAS_DESP)) then
     begin
        update MOVIMENTODETALHE set FRETE = UDF_ROUNDDEC((:Frete_UNIT * :valtot), 2), valor_desconto = UDF_ROUNDDEC(((new.VALOR_DESCONTO * :valtot)/(new.VALOR_PRODUTO)), 2), 
        valor_outros = UDF_ROUNDDEC((:OUTRAS_UNIT * :valtot), 2), valor_SEGURO = UDF_ROUNDDEC((:SEGURO_UNIT * :valtot), 2)
        where CODDETALHE = :coddet;
        if ( det = det1) then
	      update MOVIMENTODETALHE set FRETE = :Frete_TOTAL, valor_desconto = :DESCONTO_TOTAL, valor_seguro = :SEGURO_TOTAL, 
	      valor_outros = :OUTRAS_TOTAL
	      where CODDETALHE = :coddet;
    end
    det1 = det1 +1;
    Frete_TOTAL   = Frete_TOTAL - UDF_ROUNDDEC((:Frete_UNIT * :valtot), 2);
    DESCONTO_TOTAL = DESCONTO_TOTAL - UDF_ROUNDDEC(((new.VALOR_DESCONTO * :valtot)/(new.VALOR_PRODUTO)), 2);
    OUTRAS_TOTAL = OUTRAS_TOTAL - UDF_ROUNDDEC((:OUTRAS_UNIT * :valtot), 2);
    SEGURO_TOTAL = SEGURO_TOTAL - UDF_ROUNDDEC((:SEGURO_UNIT * :valtot), 2);
    end
END