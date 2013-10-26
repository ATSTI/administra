CREATE OR ALTER TRIGGER CORRIGE_VALOR_FATURA FOR RECEBIMENTO ACTIVE
BEFORE UPDATE POSITION 0
AS 
BEGIN 
    if (old.VALOR_RESTO_SST is null)then
    begin
        if (new.STATUS = '5-') then
            new.VALOR_RESTO_SST = old.VALOR_RESTO;
        if (new.STATUS = '7-') then
            new.VALOR_RESTO_SST = old.VALORRECEBIDO;
    end
    if(new.VALST is null) then
        new.VALST = 0;
    if ( ((new.VALST <> old.VALST) or (old.VALOR_RESTO_SST <> new.VALOR_RESTO_SST))and (new.STATUS = '5-') ) then
        new.VALOR_RESTO = (new.VALST + new.VALOR_RESTO_SST);
    if ((new.VALST = 0) and (new.STATUS = '5-') ) then
        new.VALOR_RESTO = new.VALOR_RESTO_SST;

END