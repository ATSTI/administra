 --drop trigger invent_estoque

 --drop procedure inventario_lanca

 --drop table inventario 


CREATE TABLE INVENTARIO (
  CODIVENTARIO           VARCHAR( 40 )          NOT NULL
, DATAIVENTARIO          DATE
, CODPRODUTO             INTEGER                NOT NULL
, CODPRO                 VARCHAR( 15 )
, SITUACAO               CHAR( 1 )
, DATAEXECUTADO          DATE
, ESTOQUE_ATUAL          DOUBLE PRECISION   
, QTDE_INVENTARIO        DOUBLE PRECISION   
, UN                     CHAR( 3 )
, CODCCUSTO              INTEGER
, LOTE                   VARCHAR( 60 ) not null
, DATAFABRICACAO         DATE
, DATAVENCIMENTO         DATE
, 
    PRIMARY KEY ( CODIVENTARIO, CODPRODUTO, LOTE )
)
