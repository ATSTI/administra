#!/bin/bash
su postgres
psql -d Prosys_Tic -c "CREATE OR REPLACE FUNCTION planilhahora() RETURNS SETOF planilha_hora AS
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
                FROM project_task_work b, project_task pt, res_users usuario, project_project p
                  , account_analytic_account proj, res_partner rp  
                WHERE pt.id = b.task_id
                  AND pt.user_id = usuario.id
                  and rp.id = usuario.partner_id
                  AND pt.project_id = p.id
                  AND p.analytic_account_id = proj.id  
                ORDER BY  b.user_id, b.date desc LOOP
                
            counter :=1;
            s.id := id;
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
                FROM project_task_work b 
                WHERE b.date = plandia.data_lancamento 
                  AND b.user_id = plandia.user_id
                ORDER BY 1, b.hours_in LOOP
                
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
           s.jusmedica := '';
           s.justespecial := '';
           s.feriado := '';
           s.retrabalho := '';
           s.embarcado := '';
           s.periculosidade := '';
           s.externo := '';
           s.sobreaviso := '';           
        END LOOP;   
        RETURN;
END 
$$
LANGUAGE 'plpgsql';
 
SELECT * FROM planilhahora()
"
