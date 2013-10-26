CREATE OR ALTER TRIGGER trgDataConsolidaRecI FOR RECEBIMENTO
ACTIVE BEFORE INSERT POSITION 0
AS 
BEGIN 
	/* se o título e pago e data consolida estiver null, então preenche */
    /* com a data do pagamento */ 
    if ((new.STATUS = '7-')  and (new.DATACONSOLIDA is null)) then 
      NEW.DATACONSOLIDA = new.DATARECEBIMENTO;
END