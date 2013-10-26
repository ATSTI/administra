CREATE OR ALTER TRIGGER DELETAMOVPAGTO FOR MOVIMENTO
ACTIVE AFTER INSERT
POSITION 1
AS
DECLARE VARIABLE vCODDETALHE INTEGER;
BEGIN
  /* Trigger body */
  if (new.STATUS = 2) then /* Se status 2 Venda foi cancelada */
  begin
     for select mov.CODDETALHE from MOVIMENTODETALHE mov
      where mov.CODMOVIMENTO = new.CODMOVIMENTO
     into :vCODDETALHE
     do begin
          DELETE FROM PAGAMENTO where CODORIGEM = :vCODDETALHE;
     end
  end
END

