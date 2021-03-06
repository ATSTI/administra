SET TERM ^ ;

CREATE OR ALTER  TRIGGER TRG_DATAINVALIDA FOR MOVIMENTO
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
BEGIN 
	/* Nao deixa inserir Movimento com data inferior a '01/01/01' */ 
	if (NEW.DATAMOVIMENTO < '01/01/01') then 
        exception DATAINVALIDA;
END^

CREATE TRIGGER TRG_DATAINVALIDAV FOR VENDA
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
BEGIN 
	/* Nao deixa inserir Movimento com data inferior a '01/01/01' */ 
	if (NEW.DATAVENDA < '01/01/01') then 
        exception DATAINVALIDA;
END^

CREATE TRIGGER TRG_DATAINVALIDAC FOR COMPRA
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS 
BEGIN 
	/* Nao deixa inserir Movimento com data inferior a '01/01/01' */ 
	if (NEW.DATACOMPRA < '01/01/01') then 
        exception DATAINVALIDA;
END^


SET TERM ; ^ 
