#!/bin/bash
su postgres
psql -d Prosys_Tic -c "CREATE  TYPE planilha_hora AS
        (id INT
        , data_apont CHAR(12)
        , data_apontd DATE   
        , horae1 DOUBLE PRECISION, horas1 DOUBLE PRECISION 
        , horae2 DOUBLE PRECISION, horas2 DOUBLE PRECISION
        , horae3 DOUBLE PRECISION, horas3 DOUBLE PRECISION
        , horae4 DOUBLE PRECISION, horas4 DOUBLE PRECISION
        , horae5 DOUBLE PRECISION, horas5 DOUBLE PRECISION
        , user_id INT
        , user_codigo character varying(64)
        , user_name character varying(128)
        , projeto character varying(128)
        , feriado CHAR(1)
        , embarcado CHAR(1)
        , retrabalho CHAR(1)
        , sobreaviso CHAR(1)
        , periculosidade CHAR(1)
        , justespecial CHAR(1)
        , externo CHAR(1)
        , jusmedica CHAR(1)
        );"
