SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$COMPRA_AI FOR COMPRA
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPRA', 'I', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODCOMPRA', new.codcompra);

  if (new.codfornecedor is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODFORNECEDOR', null, new.codfornecedor);

  if (new.datacompra is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATACOMPRA', null, new.datacompra);

  if (new.datavencimento is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATAVENCIMENTO', null, new.datavencimento);

  if (new.codcomprador is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODCOMPRADOR', null, new.codcomprador);

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


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$COMPRA_AU FOR COMPRA
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPRA', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODCOMPRA', old.codcompra);

  if ((old.codfornecedor is null and new.codfornecedor is not null) or
      (new.codfornecedor is null and old.codfornecedor is not null) or
      (new.codfornecedor is not null and old.codfornecedor is not null and new.codfornecedor <> old.codfornecedor)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODFORNECEDOR', old.codfornecedor, new.codfornecedor);

  if ((old.datacompra is null and new.datacompra is not null) or
      (new.datacompra is null and old.datacompra is not null) or
      (new.datacompra is not null and old.datacompra is not null and new.datacompra <> old.datacompra)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATACOMPRA', old.datacompra, new.datacompra);

  if ((old.datavencimento is null and new.datavencimento is not null) or
      (new.datavencimento is null and old.datavencimento is not null) or
      (new.datavencimento is not null and old.datavencimento is not null and new.datavencimento <> old.datavencimento)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATAVENCIMENTO', old.datavencimento, new.datavencimento);

  if ((old.codcomprador is null and new.codcomprador is not null) or
      (new.codcomprador is null and old.codcomprador is not null) or
      (new.codcomprador is not null and old.codcomprador is not null and new.codcomprador <> old.codcomprador)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODCOMPRADOR', old.codcomprador, new.codcomprador);

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


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$COMPRA_AD FOR COMPRA
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPRA', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODCOMPRA', old.codcompra);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODFORNECEDOR', old.codfornecedor, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATACOMPRA', old.datacompra, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATAVENCIMENTO', old.datavencimento, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODCOMPRADOR', old.codcomprador, null);

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


end;
^

SET TERM ; ^