SET TERM ^ ;

CREATE TRIGGER NAOPERMITE_NF FOR MOVIMENTO
ACTIVE BEFORE UPDATE OR DELETE POSITION 0
AS 
  Declare VARIABLE NFEnviada varchar(30);
  Declare VARIABLE codMov integer;
  Declare VARIABLE nf integer;
  Declare VARIABLE serie varchar(20);
BEGIN 
	/* Se existir NF ja enviada então nao permite alteração */ 
	select first 1 notafiscal, serie from venda where codmovimento = old.CODMOVIMENTO
        into :nf, :serie;
	Select first 1 n.PROTOCOLOENV from NOTAFISCAL n where n.NOTASERIE = :nf and n.SERIE = :serie
	into :nfEnviada;
	if (nfEnviada is not null) then 
	begin 
        EXCEPTION NAOPERMITEEDIT;
	end   
	select first 1 notafiscal, serie from compra where codmovimento = old.CODMOVIMENTO
        into :nf, :serie;
	Select first 1 n.PROTOCOLOENV from NOTAFISCAL n where n.NOTASERIE = :nf and n.SERIE = :serie
	into :nfEnviada;
	if (nfEnviada is not null) then 
	begin 
        EXCEPTION NAOPERMITEEDIT;
	end   
	
END^

SET TERM ; ^ 
