SET TERM ^ ;

CREATE or ALTER TRIGGER Altera_numNF FOR NOTAFISCAL
ACTIVE AFTER UPDATE POSITION 0
AS 
DECLARE VARIABLE FATURA INTEGER; 
DECLARE VARIABLE SERIE CHAR(10); 
BEGIN
  /* Quando o Numero da NF e alterado , faz a alteracao na VENDA e por tabela no RECEBIMENTO */
  if ((new.NOTASERIE <> old.NOTASERIE) or (new.SERIE <> old.SERIE)) then 
  begin 
    update venda set NOTAFISCAL = new.NOTASERIE, SERIE = new.SERIE where NOTAFISCAL = old.NOTASERIE and SERIE = old.SERIE;
  end  
END^

SET TERM ; ^ 
