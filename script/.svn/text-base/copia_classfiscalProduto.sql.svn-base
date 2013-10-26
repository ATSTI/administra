SET TERM ^ ;

--execute PROCEDURE copia_classfiscalProduto(1, 'RAÇÃO PARA GATO') 

CREATE OR ALTER PROCEDURE copia_classfiscalProduto 
 ( produto integer, GRUPO VARCHAR(60) ) 
AS 
DECLARE VARIABLE codP Integer;
DECLARE VARIABLE CFOP Varchar(30); 
DECLARE VARIABLE UF char(2);
DECLARE VARIABLE  ICMS_SUBST double precision;
DECLARE VARIABLE  ICMS_SUBST_IC double precision;
DECLARE VARIABLE  ICMS_SUBST_IND double precision;
DECLARE VARIABLE  ICMS double precision;
DECLARE VARIABLE  ICMS_BASE double precision;
DECLARE VARIABLE  CST char(3);
DECLARE VARIABLE  IPI  double precision;
DECLARE VARIABLE  CSOSN char(3); 
BEGIN
  if (grupo is null) then 
    grupo = '';
  SELECT CFOP, UF, ICMS_SUBST, ICMS_SUBST_IC, ICMS_SUBST_IND, ICMS, ICMS_BASE, CST, IPI, CSOSN FROM CLASSIFICACAOFISCALPRODUTO 
   WHERE COD_PROD = :produto
    into :CFOP, :UF, :ICMS_SUBST, :ICMS_SUBST_IC, :ICMS_SUBST_IND, :ICMS, :ICMS_BASE, :CST, :IPI, :CSOSN;

  if (grupo <> '') then 
  begin 
    FOR SELECT p.CODPRODUTO FROM PRODUTOS P WHERE p.FAMILIA = :grupo and not exists(select cod_prod from CLASSIFICACAOFISCALPRODUTO cl 
      where cl.COD_PROD = p.CODPRODUTO)
    into :codP 
    do begin      
      INSERT INTO CLASSIFICACAOFISCALPRODUTO (COD_PROD, CFOP, UF, ICMS_SUBST, ICMS_SUBST_IC, ICMS_SUBST_IND, ICMS, ICMS_BASE, CST, IPI, CSOSN)
      VALUES (:CodP, :CFOP, :UF, :ICMS_SUBST, :ICMS_SUBST_IC, :ICMS_SUBST_IND, :ICMS, :ICMS_BASE, :CST, :IPI, :CSOSN);
    end   
  end
END^

SET TERM ; ^
