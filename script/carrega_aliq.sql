set term ^;
ALTER TRIGGER CARREGA_ALIQ
BEFORE INSERT
POSITION 0
AS
BEGIN
    -- 04-01-2018
    select first 1 COALESCE(i.ALIQNAC,0), COALESCE(i.ALIQIMP,0), COALESCE(i.ESTADUAL,0), 
      COALESCE(i.MUNICIPAL,0) from IBPT i
    where i.NCM = new.NCM
    into new.ALIQNAC, new.ALIQIMP, new.ESTADUAL, new.MUNICIPAL;
    
    if (new.ALIQIMP is null) then
        new.ALIQIMP = 0;
    if (new.ALIQNAC is null) then
        new.ALIQNAC = 0;
    if (new.ESTADUAL is null) then
        new.ESTADUAL = 0;
    if (new.MUNICIPAL is null) then
        new.MUNICIPAL = 0;

        
END
