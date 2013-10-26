SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$PRODUTOS_AI FOR PRODUTOS
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUTOS', 'I', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODPRODUTO', new.codproduto);

  if (new.valorunitarioatual is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALORUNITARIOATUAL', null, new.valorunitarioatual);

  if (not (new.produto is null)) then
    insert into ibe$log_blob_fields (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'PRODUTO',null, new.produto);

  if (new.precomedio is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECOMEDIO', null, new.precomedio);

  if (new.cod_barra is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COD_BARRA', null, new.cod_barra);

  if (new.valor_prazo is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALOR_PRAZO', null, new.valor_prazo);

  if (new.tipo is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TIPO', null, new.tipo);

  if (new.codpro is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODPRO', null, new.codpro);

  if (new.margem is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MARGEM', null, new.margem);

  if (new.usa is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'USA', null, new.usa);

  if (new.tipoprecovenda is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TIPOPRECOVENDA', null, new.tipoprecovenda);

  if (new.ncm is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NCM', null, new.ncm);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$PRODUTOS_AU FOR PRODUTOS
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUTOS', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODPRODUTO', old.codproduto);

  if ((old.valorunitarioatual is null and new.valorunitarioatual is not null) or
      (new.valorunitarioatual is null and old.valorunitarioatual is not null) or
      (new.valorunitarioatual is not null and old.valorunitarioatual is not null and new.valorunitarioatual <> old.valorunitarioatual)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALORUNITARIOATUAL', old.valorunitarioatual, new.valorunitarioatual);

  if ((old.produto is null and new.produto is not null) or
      (new.produto is null and old.produto is not null) or
      (new.produto is not null and old.produto is not null and new.produto <> old.produto)) then
     insert into ibe$log_blob_fields (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'PRODUTO', old.produto, new.produto);

  if ((old.precomedio is null and new.precomedio is not null) or
      (new.precomedio is null and old.precomedio is not null) or
      (new.precomedio is not null and old.precomedio is not null and new.precomedio <> old.precomedio)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECOMEDIO', old.precomedio, new.precomedio);

  if ((old.cod_barra is null and new.cod_barra is not null) or
      (new.cod_barra is null and old.cod_barra is not null) or
      (new.cod_barra is not null and old.cod_barra is not null and new.cod_barra <> old.cod_barra)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COD_BARRA', old.cod_barra, new.cod_barra);

  if ((old.valor_prazo is null and new.valor_prazo is not null) or
      (new.valor_prazo is null and old.valor_prazo is not null) or
      (new.valor_prazo is not null and old.valor_prazo is not null and new.valor_prazo <> old.valor_prazo)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_PRAZO', old.valor_prazo, new.valor_prazo);

  if ((old.tipo is null and new.tipo is not null) or
      (new.tipo is null and old.tipo is not null) or
      (new.tipo is not null and old.tipo is not null and new.tipo <> old.tipo)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TIPO', old.tipo, new.tipo);

  if ((old.codpro is null and new.codpro is not null) or
      (new.codpro is null and old.codpro is not null) or
      (new.codpro is not null and old.codpro is not null and new.codpro <> old.codpro)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODPRO', old.codpro, new.codpro);

  if ((old.margem is null and new.margem is not null) or
      (new.margem is null and old.margem is not null) or
      (new.margem is not null and old.margem is not null and new.margem <> old.margem)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MARGEM', old.margem, new.margem);

  if ((old.usa is null and new.usa is not null) or
      (new.usa is null and old.usa is not null) or
      (new.usa is not null and old.usa is not null and new.usa <> old.usa)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'USA', old.usa, new.usa);

  if ((old.tipoprecovenda is null and new.tipoprecovenda is not null) or
      (new.tipoprecovenda is null and old.tipoprecovenda is not null) or
      (new.tipoprecovenda is not null and old.tipoprecovenda is not null and new.tipoprecovenda <> old.tipoprecovenda)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TIPOPRECOVENDA', old.tipoprecovenda, new.tipoprecovenda);

  if ((old.ncm is null and new.ncm is not null) or
      (new.ncm is null and old.ncm is not null) or
      (new.ncm is not null and old.ncm is not null and new.ncm <> old.ncm)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NCM', old.ncm, new.ncm);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$PRODUTOS_AD FOR PRODUTOS
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUTOS', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODPRODUTO', old.codproduto);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALORUNITARIOATUAL', old.valorunitarioatual, null);

  insert into ibe$log_blob_fields (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'PRODUTO', old.produto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECOMEDIO', old.precomedio, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COD_BARRA', old.cod_barra, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_PRAZO', old.valor_prazo, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TIPO', old.tipo, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODPRO', old.codpro, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MARGEM', old.margem, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'USA', old.usa, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TIPOPRECOVENDA', old.tipoprecovenda, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NCM', old.ncm, null);


end;
^

SET TERM ; ^