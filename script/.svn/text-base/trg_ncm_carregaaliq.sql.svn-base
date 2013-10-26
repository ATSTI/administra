CREATE or alter TRIGGER CARREGA_ALIQ FOR NCM
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    select first 1 i.ALIQNAC, i.ALIQIMP from IBPT i
    where i.NCM = new.NCM
    into new.ALIQNAC, new.ALIQIMP;
    
    if (new.ALIQIMP is null) then
        new.ALIQIMP = 0;
    if (new.ALIQNAC is null) then
        new.ALIQNAC = 0;
        
END