SET TERM ^ ;

CREATE or alter TRIGGER PROIBEEDIT_NF FOR VENDA
ACTIVE BEFORE UPDATE OR DELETE POSITION 0
AS 
  Declare VARIABLE NFEnviada varchar(30);
BEGIN 
	/* Se existir NF ja enviada então nao permite alteração */ 
	Select first 1 n.PROTOCOLOENV from NOTAFISCAL n where n.NOTASERIE = old.NOTAFISCAL and n.SERIE = old.SERIE
	into :nfEnviada;
	if (nfEnviada is not null) then 
	begin 
        EXCEPTION NAOPERMITEEDIT;
	end   
END^

SET TERM ; ^ 
