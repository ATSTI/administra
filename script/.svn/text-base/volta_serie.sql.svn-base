SET TERM ^ ;

CREATE TRIGGER VOLTA_SERIE FOR VENDA
ACTIVE AFTER UPDATE OR DELETE POSITION 0
AS 
declare variable nf integer;
BEGIN 
    if (UPDATING) then 
    begin 
        if ((new.NOTAFISCAL <> old.NOTAFISCAL) or (new.SERIE <> old.SERIE)) then 
        begin 
            /* VOLTA A SERIE PARA O ULTIMO NUMERO */
            SELECT MAX(v.NOTAFISCAL) FROM VENDA v WHERE v.SERIE = old.SERIE
            into :nf;
            update SERIES set ULTIMO_NUMERO = :nf  where  SERIE = old.SERIE;
        end    
    end    
    
    if (DELETING) then 
    begin 
        /* VOLTA A SERIE PARA O ULTIMO NUMERO */
        SELECT MAX(v.NOTAFISCAL) FROM VENDA v WHERE v.SERIE = old.SERIE
        into :nf;
        update SERIES set ULTIMO_NUMERO = :nf  where  SERIE = old.SERIE;
    end    
END^

SET TERM ; ^ 
