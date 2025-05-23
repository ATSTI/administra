/******************************************************************************/
/****              Generated by IBExpert 12/06/2024 16:36:35               ****/
/******************************************************************************/



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/



CREATE TABLE MDFE_COMP_FRETE (
    MDFE              INTEGER NOT NULL,
    TP_COMP           CHAR(2) NOT NULL,
    VALOR_COMPONENTE  DOUBLE PRECISION,
    COMP_DESCRICAO    VARCHAR(40)
);




/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE MDFE_COMP_FRETE ADD PRIMARY KEY (MDFE, TP_COMP);


/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/

