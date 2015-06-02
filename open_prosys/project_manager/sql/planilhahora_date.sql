--drop function planilhahora_date();
--drop TYPE planilha_hora_d 

/*
CREATE  TYPE planilha_hora_d AS
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
        , task character varying(128)
        , apont character varying(128)
        , apont_det character varying(256)
        , feriado CHAR(1)
        , embarcado CHAR(1)
        , retrabalho CHAR(1)
        , sobreaviso CHAR(1)
        , periculosidade CHAR(1)
        , justespecial CHAR(1)
        , externo CHAR(1)
        , jusmedica CHAR(1)
        );
  */     

CREATE OR REPLACE FUNCTION planilhahora_date() RETURNS SETOF planilha_hora_d AS
$$
DECLARE
        s planilha_hora_d%ROWTYPE;
        planrec RECORD;
        plandia RECORD;
        planx RECORD;
        counter INT;
BEGIN
  counter := 1;
  FOR plandia IN SELECT DISTINCT b.user_id, min(b.date) as dt_ini, max(b.date) as dt_max 
    FROM project_task_work b 
  -- WHERE USER_ID = 4
  GROUP BY b.user_id
  ORDER BY  b.user_id LOOP
      FOR planrec IN SELECT generate_series(plandia.dt_ini, plandia.dt_max, '1 day')::date d 
      LOOP
         s.data_apontd := planrec.d;
         s.data_apont := to_char(planrec.d,'DD/MM/YYYY');
         s.id := counter;
         FOR planx IN select id, data_apont, data_apontd, user_id, user_name 
           ,horae1, horae2, horae3, horae4, horae5, horas1, horas2, horas3, horas4, horas5
           ,jusmedica, justespecial, feriado, retrabalho, embarcado, periculosidade
           ,externo ,sobreaviso, user_codigo, projeto, task, apont, apont_det
           from planilhahora(plandia.user_id, planrec.d)
           LOOP
             s.projeto := planx.projeto;
             s.user_codigo := planx.user_codigo;
             s.apont := planx.apont;
             s.apont_det := planx.apont_det;
             s.task := planx.task;
             s.data_apont := planx.data_apont;
             s.data_apontd := planx.data_apontd; 
             s.user_id := planx.user_id;
             s.user_name := planx.user_name;
             s.horae1 := planx.horae1;
             s.horae2 := planx.horae2;
             s.horae3 := planx.horae3;
             s.horae4 := planx.horae4;
             s.horae5 := planx.horae5;
             s.horas1 := planx.horas1;
             s.horas2 := planx.horas2;
             s.horas3 := planx.horas3;
             s.horas4 := planx.horas4;
             s.horas5 := planx.horas5;
             s.jusmedica := planx.jusmedica;
             s.justespecial := planx.justespecial;
             s.feriado := planx.feriado;
             s.retrabalho := planx.retrabalho;
             s.embarcado := planx.embarcado;
             s.periculosidade := planx.periculosidade;
             s.externo := planx.externo;
             s.sobreaviso := planx.sobreaviso; 
              
           END LOOP;
           RETURN NEXT s;
           counter := counter + 1;
           s.horae1 := 0;
           s.horae2 := 0;
           s.horae3 := 0;
           s.horae4 := 0;
           s.horae5 := 0;
           s.horas1 := 0;
           s.horas2 := 0;
           s.horas3 := 0;
           s.horas4 := 0;
           s.horas5 := 0;
           s.jusmedica := '';
           s.justespecial := '';
           s.feriado := '';
           s.retrabalho := '';
           s.embarcado := '';
           s.periculosidade := '';
           s.externo := '';
           s.sobreaviso := '';       
           s.task := '';
           s.apont := '';
           s.apont_det := '';
           s.projeto := '';
         END LOOP;
       RETURN next s;
      END LOOP;
   RETURN;   
END;
$$
LANGUAGE 'plpgsql';
 
SELECT * FROM planilhahora_date() order by user_id
