SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$MOVIMENTO_AI FOR MOVIMENTO
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTO', 'I', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODMOVIMENTO', new.codmovimento);

  if (new.datamovimento is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATAMOVIMENTO', null, new.datamovimento);

  if (new.codcliente is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODCLIENTE', null, new.codcliente);

  if (new.codnatureza is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODNATUREZA', null, new.codnatureza);

  if (new.status is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STATUS', null, new.status);

  if (new.codusuario is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODUSUARIO', null, new.codusuario);

  if (new.codvendedor is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODVENDEDOR', null, new.codvendedor);

  if (new.codalmoxarifado is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODALMOXARIFADO', null, new.codalmoxarifado);

  if (new.codfornecedor is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODFORNECEDOR', null, new.codfornecedor);

  if (new.cod_veiculo is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COD_VEICULO', null, new.cod_veiculo);

  if (new.controle is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CONTROLE', null, new.controle);

  if (new.obs is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'OBS', null, new.obs);

  if (new.codorigem is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODORIGEM', null, new.codorigem);

  if (new.nfe is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NFE', null, new.nfe);

  if (new.codtransp is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODTRANSP', null, new.codtransp);

  if (new.codpedido is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODPEDIDO', null, new.codpedido);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$MOVIMENTO_AU FOR MOVIMENTO
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTO', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODMOVIMENTO', old.codmovimento);

  if ((old.datamovimento is null and new.datamovimento is not null) or
      (new.datamovimento is null and old.datamovimento is not null) or
      (new.datamovimento is not null and old.datamovimento is not null and new.datamovimento <> old.datamovimento)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATAMOVIMENTO', old.datamovimento, new.datamovimento);

  if ((old.codcliente is null and new.codcliente is not null) or
      (new.codcliente is null and old.codcliente is not null) or
      (new.codcliente is not null and old.codcliente is not null and new.codcliente <> old.codcliente)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODCLIENTE', old.codcliente, new.codcliente);

  if ((old.codnatureza is null and new.codnatureza is not null) or
      (new.codnatureza is null and old.codnatureza is not null) or
      (new.codnatureza is not null and old.codnatureza is not null and new.codnatureza <> old.codnatureza)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODNATUREZA', old.codnatureza, new.codnatureza);

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

  if ((old.codvendedor is null and new.codvendedor is not null) or
      (new.codvendedor is null and old.codvendedor is not null) or
      (new.codvendedor is not null and old.codvendedor is not null and new.codvendedor <> old.codvendedor)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODVENDEDOR', old.codvendedor, new.codvendedor);

  if ((old.codalmoxarifado is null and new.codalmoxarifado is not null) or
      (new.codalmoxarifado is null and old.codalmoxarifado is not null) or
      (new.codalmoxarifado is not null and old.codalmoxarifado is not null and new.codalmoxarifado <> old.codalmoxarifado)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODALMOXARIFADO', old.codalmoxarifado, new.codalmoxarifado);

  if ((old.codfornecedor is null and new.codfornecedor is not null) or
      (new.codfornecedor is null and old.codfornecedor is not null) or
      (new.codfornecedor is not null and old.codfornecedor is not null and new.codfornecedor <> old.codfornecedor)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODFORNECEDOR', old.codfornecedor, new.codfornecedor);

  if ((old.cod_veiculo is null and new.cod_veiculo is not null) or
      (new.cod_veiculo is null and old.cod_veiculo is not null) or
      (new.cod_veiculo is not null and old.cod_veiculo is not null and new.cod_veiculo <> old.cod_veiculo)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COD_VEICULO', old.cod_veiculo, new.cod_veiculo);

  if ((old.controle is null and new.controle is not null) or
      (new.controle is null and old.controle is not null) or
      (new.controle is not null and old.controle is not null and new.controle <> old.controle)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CONTROLE', old.controle, new.controle);

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

  if ((old.nfe is null and new.nfe is not null) or
      (new.nfe is null and old.nfe is not null) or
      (new.nfe is not null and old.nfe is not null and new.nfe <> old.nfe)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NFE', old.nfe, new.nfe);

  if ((old.codtransp is null and new.codtransp is not null) or
      (new.codtransp is null and old.codtransp is not null) or
      (new.codtransp is not null and old.codtransp is not null and new.codtransp <> old.codtransp)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODTRANSP', old.codtransp, new.codtransp);

  if ((old.codpedido is null and new.codpedido is not null) or
      (new.codpedido is null and old.codpedido is not null) or
      (new.codpedido is not null and old.codpedido is not null and new.codpedido <> old.codpedido)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODPEDIDO', old.codpedido, new.codpedido);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$MOVIMENTO_AD FOR MOVIMENTO
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTO', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODMOVIMENTO', old.codmovimento);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATAMOVIMENTO', old.datamovimento, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODCLIENTE', old.codcliente, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODNATUREZA', old.codnatureza, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STATUS', old.status, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODUSUARIO', old.codusuario, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODVENDEDOR', old.codvendedor, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODALMOXARIFADO', old.codalmoxarifado, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODFORNECEDOR', old.codfornecedor, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COD_VEICULO', old.cod_veiculo, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CONTROLE', old.controle, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'OBS', old.obs, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODORIGEM', old.codorigem, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NFE', old.nfe, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODTRANSP', old.codtransp, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODPEDIDO', old.codpedido, null);


end;
^

SET TERM ; ^