SET TERM ^ ;

CREATE TRIGGER IBE$MOVIMENTOCONT_AI FOR MOVIMENTOCONT
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTOCONT', 'I', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODCONT', new.codcont);

  if (new.codcont is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODCONT', null, new.codcont);

  if (new.codorigem is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODORIGEM', null, new.codorigem);

  if (new.data is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATA', null, new.data);

  if (new.codusuario is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODUSUARIO', null, new.codusuario);

  if (new.conta is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CONTA', null, new.conta);

  if (new.valorcredito is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALORCREDITO', null, new.valorcredito);

  if (new.valordebito is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALORDEBITO', null, new.valordebito);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER IBE$MOVIMENTOCONT_AU FOR MOVIMENTOCONT
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTOCONT', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODCONT', old.codcont);

  if ((old.codcont is null and new.codcont is not null) or
      (new.codcont is null and old.codcont is not null) or
      (new.codcont is not null and old.codcont is not null and new.codcont <> old.codcont)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODCONT', old.codcont, new.codcont);

  if ((old.codorigem is null and new.codorigem is not null) or
      (new.codorigem is null and old.codorigem is not null) or
      (new.codorigem is not null and old.codorigem is not null and new.codorigem <> old.codorigem)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODORIGEM', old.codorigem, new.codorigem);

  if ((old.data is null and new.data is not null) or
      (new.data is null and old.data is not null) or
      (new.data is not null and old.data is not null and new.data <> old.data)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATA', old.data, new.data);

  if ((old.codusuario is null and new.codusuario is not null) or
      (new.codusuario is null and old.codusuario is not null) or
      (new.codusuario is not null and old.codusuario is not null and new.codusuario <> old.codusuario)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODUSUARIO', old.codusuario, new.codusuario);

  if ((old.conta is null and new.conta is not null) or
      (new.conta is null and old.conta is not null) or
      (new.conta is not null and old.conta is not null and new.conta <> old.conta)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CONTA', old.conta, new.conta);

  if ((old.valorcredito is null and new.valorcredito is not null) or
      (new.valorcredito is null and old.valorcredito is not null) or
      (new.valorcredito is not null and old.valorcredito is not null and new.valorcredito <> old.valorcredito)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALORCREDITO', old.valorcredito, new.valorcredito);

  if ((old.valordebito is null and new.valordebito is not null) or
      (new.valordebito is null and old.valordebito is not null) or
      (new.valordebito is not null and old.valordebito is not null and new.valordebito <> old.valordebito)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALORDEBITO', old.valordebito, new.valordebito);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER IBE$MOVIMENTOCONT_AD FOR MOVIMENTOCONT
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTOCONT', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODCONT', old.codcont);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODCONT', old.codcont, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODORIGEM', old.codorigem, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATA', old.data, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODUSUARIO', old.codusuario, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CONTA', old.conta, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALORCREDITO', old.valorcredito, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALORDEBITO', old.valordebito, null);


end;
^

SET TERM ; ^

