/******************************************************************************/
/****              Generated by IBExpert 14/09/2022 16:41:59               ****/
/******************************************************************************/



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/


CREATE GENERATOR GEN_CTE_NFE_ID;

CREATE TABLE CTE_NFE (
    COD_CTE_NFE  INTEGER NOT NULL,
    CTE_NFE      INTEGER,
    CHAVE        VARCHAR(80),
    PIN          INTEGER,
    DPREV        DATE
);




/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE CTE_NFE ADD CONSTRAINT PK_CTE_NFE_0 PRIMARY KEY (COD_CTE_NFE);


/******************************************************************************/
/****                             Foreign Keys                             ****/
/******************************************************************************/

ALTER TABLE CTE_NFE ADD CONSTRAINT FK_CTE_NFE_0 FOREIGN KEY (CTE_NFE) REFERENCES CTE (COD_CTE) ON DELETE CASCADE ON UPDATE CASCADE;


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: CTE_NFE_BI */
CREATE OR ALTER TRIGGER CTE_NFE_BI FOR CTE_NFE
ACTIVE BEFORE INSERT POSITION 0
AS
DECLARE VARIABLE tmp DECIMAL(18,0);
BEGIN
  IF (NEW.COD_CTE_NFE IS NULL) THEN
    NEW.COD_CTE_NFE = GEN_ID(GEN_CTE_NFE_ID, 1);
  ELSE
  BEGIN
    tmp = GEN_ID(GEN_CTE_NFE_ID, 0);
    if (tmp < new.COD_CTE_NFE) then
      tmp = GEN_ID(GEN_CTE_NFE_ID, new.COD_CTE_NFE-tmp);
  END
END
^


SET TERM ; ^



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/
