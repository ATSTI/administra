

 drop trigger invent_estoque

-- drop procedure inventario_lanca

-- drop table inventario 

/*
create table produto_fornecedor (
codproduto integer not null, 
codfornecedor integer not null, 
codprodfornec varchar(30),
primary key (codproduto, codfornecedor))
*/
/*
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
, LOTE                   VARCHAR( 60 )
, DATAFABRICACAO         DATE
, DATAVENCIMENTO         DATE
, CONSTRAINT INTEG_383
    PRIMARY KEY ( CODIVENTARIO, CODPRODUTO )
)*/