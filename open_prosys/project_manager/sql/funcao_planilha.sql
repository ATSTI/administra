/*SELECT DISTINCT b.date as data_lancamento, b.hours_in, b.hours_out, b.name as descricao
                FROM project_task_work b ORDER BY b.date, b.hours_in 
*/
--DROP  VIEW planilhahora ;
--drop function planilhahora();
--drop type planilha_hora;
/*
CREATE  TYPE planilha_hora AS
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

CREATE OR REPLACE FUNCTION planilhahora(integer, date) RETURNS SETOF planilha_hora AS
$$
DECLARE
        s planilha_hora%ROWTYPE;
        planrec RECORD;
        plandia RECORD;
        counter INT;
        id INT;  
BEGIN
        id := 1; 
        counter := 1;
        s.user_id := 0;
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
        FOR plandia IN SELECT DISTINCT b.date as data_lancamento, b.user_id
          , usuario.login as user_name, proj.name as projeto , rp.name nome_usuario
          , pt.name as task
                FROM project_task_work b, project_task pt, res_users usuario, project_project p
                  , account_analytic_account proj, res_partner rp  
                WHERE pt.id = b.task_id
                  AND b.user_id = usuario.id
                  and rp.id = usuario.partner_id
                  AND pt.project_id = p.id
                  AND p.analytic_account_id = proj.id  
                  AND b.user_id = $1 
                  AND b.date = $2
                ORDER BY  b.user_id, b.date desc LOOP
                
            counter :=1;
            s.id := id;
            s.task := plandia.task;
            s.user_id := plandia.user_id; 
            s.user_codigo := plandia.user_name;
            s.user_name := plandia.nome_usuario;
            s.projeto := plandia.projeto;
            FOR planrec IN SELECT DISTINCT b.date, to_char(b.date,'DD/MM/YYYY') as data_lancamento
                , b.date as data_lanc 
                , b.hours_in
                , b.hours_out 
                , b.sobreaviso
                , b.retrabalho
                , b.externo
                , b.periculosidade
                , b.embarcado
                , b.feriado
                , b.justmedica
                , b.justespecial 
                , substr(b.name,0,110) as apont
                , substr(b.detalhe,0,250) as apont_det
                FROM project_task_work b 
                WHERE b.date = plandia.data_lancamento 
                  AND b.user_id = plandia.user_id
                ORDER BY 1, b.hours_in LOOP
                s.apont := planrec.apont;
                s.apont_det := planrec.apont_det;
                s.data_apont := planrec.data_lancamento;
                IF (planrec.sobreaviso) THEN
                    s.sobreaviso := 'S';  
                END IF;
                IF (planrec.retrabalho) THEN
                    s.retrabalho := 'S';  
                END IF;
                IF (planrec.externo) THEN
                    s.externo := 'S';  
                END IF;
                IF (planrec.periculosidade) THEN
                    s.periculosidade := 'S';  
                END IF;
                IF (planrec.embarcado) THEN
                    s.embarcado := 'S';  
                END IF;
                IF (planrec.feriado) THEN
                    s.feriado := 'F';  
                END IF;
                IF (planrec.justmedica) THEN
                    s.jusmedica := 'S';  
                END IF;
                IF (planrec.justespecial) THEN
                    s.justespecial := 'S';  
                END IF;
                IF counter = 1 THEN
                   s.horae1 := planrec.hours_in;
                   s.horas1 := planrec.hours_out;
                END IF;
                IF counter = 2 THEN
                   s.horae2 := planrec.hours_in;
                   s.horas2 := planrec.hours_out;
                END IF;
                IF counter = 3 THEN
                   s.horae3 := planrec.hours_in;
                   s.horas3 := planrec.hours_out;
                END IF;
                IF counter = 4 THEN
                   s.horae4 := planrec.hours_in;
                   s.horas4 := planrec.hours_out;
                END IF;
                IF counter = 5 THEN
                   s.horae5 := planrec.hours_in;
                   s.horas5 := planrec.hours_out;
                END IF;
                
                counter := counter +1;
                s.data_apontd := planrec.data_lanc;
           END LOOP;
           RETURN NEXT s;
           id := id + 1;
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
           s.apont := '';
           s.apont_det := '';
           s.task := '';
           s.jusmedica := '';
           s.justespecial := '';
           s.feriado := '';
           s.retrabalho := '';
           s.embarcado := '';
           s.periculosidade := '';
           s.externo := '';
           s.sobreaviso := '';    
                  
        END LOOP;   
        --RETURN ;
END 
$$
LANGUAGE 'plpgsql';
 
SELECT * FROM planilhahora(4, '2015-04-01')


/*CREATE OR REPLACE VIEW prosys_planilha AS (
              SELECT id, to_char(data_apont,'DD/MM/YYYY') as name, horae1
              , horae2, horae3, horae4, horas1, horas2, horas3,horas4
              ,data_apontd, user_name, projeto
                  FROM planilhahora() )
*/
  --              select * from prosys_planilha  
                  