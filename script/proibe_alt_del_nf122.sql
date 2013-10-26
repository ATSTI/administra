CREATE OR ALTER TRIGGER PROIBE_ALT_DEL_NF FOR NOTAFISCAL ACTIVE
BEFORE UPDATE OR DELETE POSITION 0
as 
BEGIN 
	if ( (old.PROTOCOLOENV is not null) and (new.PROTOCOLOENV is not null) ) then
		if (old.PROTOCOLOCANC = new.PROTOCOLOCANC) then
                  if (old.STATUS = new.STATUS) then
			exception ALTERA_NFE;
END