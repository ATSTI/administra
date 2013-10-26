SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$VENDA_AI FOR VENDA
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'VENDA', 'I', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODVENDA', new.codvenda);

  if (new.codcliente is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODCLIENTE', null, new.codcliente);

  if (new.datavenda is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATAVENDA', null, new.datavenda);

  if (new.datavencimento is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATAVENCIMENTO', null, new.datavencimento);

  if (new.codvendedor is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODVENDEDOR', null, new.codvendedor);

  if (new.status is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STATUS', null, new.status);

  if (new.codusuario is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODUSUARIO', null, new.codusuario);

  if (new.notafiscal is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOTAFISCAL', null, new.notafiscal);

  if (new.serie is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SERIE', null, new.serie);

  if (new.codccusto is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODCCUSTO', null, new.codccusto);

  if (new.obs is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'OBS', null, new.obs);

  if (new.codorigem is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODORIGEM', null, new.codorigem);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$VENDA_AU FOR VENDA
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'VENDA', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODVENDA', old.codvenda);

  if ((old.codcliente is null and new.codcliente is not null) or
      (new.codcliente is null and old.codcliente is not null) or
      (new.codcliente is not null and old.codcliente is not null and new.codcliente <> old.codcliente)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODCLIENTE', old.codcliente, new.codcliente);

  if ((old.datavenda is null and new.datavenda is not null) or
      (new.datavenda is null and old.datavenda is not null) or
      (new.datavenda is not null and old.datavenda is not null and new.datavenda <> old.datavenda)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATAVENDA', old.datavenda, new.datavenda);

  if ((old.datavencimento is null and new.datavencimento is not null) or
      (new.datavencimento is null and old.datavencimento is not null) or
      (new.datavencimento is not null and old.datavencimento is not null and new.datavencimento <> old.datavencimento)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATAVENCIMENTO', old.datavencimento, new.datavencimento);

  if ((old.codvendedor is null and new.codvendedor is not null) or
      (new.codvendedor is null and old.codvendedor is not null) or
      (new.codvendedor is not null and old.codvendedor is not null and new.codvendedor <> old.codvendedor)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODVENDEDOR', old.codvendedor, new.codvendedor);

  if ((old.status is null and new.status is not null) or
      (new.status is null and old.status is not null) or
      (new.status is not null and old.status is not null and new.status <> old.status)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STATUS', old.status, new.status);

  if ((old.codusuario is null and new.codusuario is not null) or
      (new.codusuario is null and old.codusuario is not null) or
      (new.codusuario is not null and old.codusuario is not null and new.codusuario <> old.codusuario)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODUSUARIO', old.codusuario, new.codusuario);

  if ((old.notafiscal is null and new.notafiscal is not null) or
      (new.notafiscal is null and old.notafiscal is not null) or
      (new.notafiscal is not null and old.notafiscal is not null and new.notafiscal <> old.notafiscal)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOTAFISCAL', old.notafiscal, new.notafiscal);

  if ((old.serie is null and new.serie is not null) or
      (new.serie is null and old.serie is not null) or
      (new.serie is not null and old.serie is not null and new.serie <> old.serie)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SERIE', old.serie, new.serie);

  if ((old.codccusto is null and new.codccusto is not null) or
      (new.codccusto is null and old.codccusto is not null) or
      (new.codccusto is not null and old.codccusto is not null and new.codccusto <> old.codccusto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODCCUSTO', old.codccusto, new.codccusto);

  if ((old.obs is null and new.obs is not null) or
      (new.obs is null and old.obs is not null) or
      (new.obs is not null and old.obs is not null and new.obs <> old.obs)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'OBS', old.obs, new.obs);

  if ((old.codorigem is null and new.codorigem is not null) or
      (new.codorigem is null and old.codorigem is not null) or
      (new.codorigem is not null and old.codorigem is not null and new.codorigem <> old.codorigem)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODORIGEM', old.codorigem, new.codorigem);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$VENDA_AD FOR VENDA
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'VENDA', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODVENDA', old.codvenda);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODCLIENTE', old.codcliente, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATAVENDA', old.datavenda, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATAVENCIMENTO', old.datavencimento, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODVENDEDOR', old.codvendedor, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STATUS', old.status, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODUSUARIO', old.codusuario, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOTAFISCAL', old.notafiscal, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SERIE', old.serie, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODCCUSTO', old.codccusto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'OBS', old.obs, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODORIGEM', old.codorigem, null);


end;
^

SET TERM ; ^

