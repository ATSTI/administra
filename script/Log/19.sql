SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$RECEBIMENTO_AI FOR RECEBIMENTO
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'RECEBIMENTO', 'I', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODRECEBIMENTO', new.codrecebimento);

  if (new.titulo is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TITULO', null, new.titulo);

  if (new.emissao is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'EMISSAO', null, new.emissao);

  if (new.datavencimento is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATAVENCIMENTO', null, new.datavencimento);

  if (new.datarecebimento is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATARECEBIMENTO', null, new.datarecebimento);

  if (new.caixa is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CAIXA', null, new.caixa);

  if (new.contadebito is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CONTADEBITO', null, new.contadebito);

  if (new.contacredito is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CONTACREDITO', null, new.contacredito);

  if (new.status is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STATUS', null, new.status);

  if (new.formarecebimento is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FORMARECEBIMENTO', null, new.formarecebimento);

  if (new.databaixa is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DATABAIXA', null, new.databaixa);

  if (new.historico is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'HISTORICO', null, new.historico);

  if (new.codalmoxarifado is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODALMOXARIFADO', null, new.codalmoxarifado);

  if (new.codvendedor is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODVENDEDOR', null, new.codvendedor);

  if (new.codusuario is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODUSUARIO', null, new.codusuario);

  if (new.valorrecebido is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALORRECEBIDO', null, new.valorrecebido);

  if (new.juros is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'JUROS', null, new.juros);

  if (new.desconto is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCONTO', null, new.desconto);

  if (new.perda is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PERDA', null, new.perda);

  if (new.troca is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TROCA', null, new.troca);

  if (new.funrural is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FUNRURAL', null, new.funrural);

  if (new.valor_prim_via is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALOR_PRIM_VIA', null, new.valor_prim_via);

  if (new.valor_resto is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALOR_RESTO', null, new.valor_resto);

  if (new.valortitulo is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALORTITULO', null, new.valortitulo);

  if (new.codorigem is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODORIGEM', null, new.codorigem);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$RECEBIMENTO_AU FOR RECEBIMENTO
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'RECEBIMENTO', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODRECEBIMENTO', old.codrecebimento);

  if ((old.titulo is null and new.titulo is not null) or
      (new.titulo is null and old.titulo is not null) or
      (new.titulo is not null and old.titulo is not null and new.titulo <> old.titulo)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TITULO', old.titulo, new.titulo);

  if ((old.emissao is null and new.emissao is not null) or
      (new.emissao is null and old.emissao is not null) or
      (new.emissao is not null and old.emissao is not null and new.emissao <> old.emissao)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'EMISSAO', old.emissao, new.emissao);

  if ((old.datavencimento is null and new.datavencimento is not null) or
      (new.datavencimento is null and old.datavencimento is not null) or
      (new.datavencimento is not null and old.datavencimento is not null and new.datavencimento <> old.datavencimento)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATAVENCIMENTO', old.datavencimento, new.datavencimento);

  if ((old.datarecebimento is null and new.datarecebimento is not null) or
      (new.datarecebimento is null and old.datarecebimento is not null) or
      (new.datarecebimento is not null and old.datarecebimento is not null and new.datarecebimento <> old.datarecebimento)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATARECEBIMENTO', old.datarecebimento, new.datarecebimento);

  if ((old.caixa is null and new.caixa is not null) or
      (new.caixa is null and old.caixa is not null) or
      (new.caixa is not null and old.caixa is not null and new.caixa <> old.caixa)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CAIXA', old.caixa, new.caixa);

  if ((old.contadebito is null and new.contadebito is not null) or
      (new.contadebito is null and old.contadebito is not null) or
      (new.contadebito is not null and old.contadebito is not null and new.contadebito <> old.contadebito)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CONTADEBITO', old.contadebito, new.contadebito);

  if ((old.contacredito is null and new.contacredito is not null) or
      (new.contacredito is null and old.contacredito is not null) or
      (new.contacredito is not null and old.contacredito is not null and new.contacredito <> old.contacredito)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CONTACREDITO', old.contacredito, new.contacredito);

  if ((old.status is null and new.status is not null) or
      (new.status is null and old.status is not null) or
      (new.status is not null and old.status is not null and new.status <> old.status)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STATUS', old.status, new.status);

  if ((old.formarecebimento is null and new.formarecebimento is not null) or
      (new.formarecebimento is null and old.formarecebimento is not null) or
      (new.formarecebimento is not null and old.formarecebimento is not null and new.formarecebimento <> old.formarecebimento)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FORMARECEBIMENTO', old.formarecebimento, new.formarecebimento);

  if ((old.databaixa is null and new.databaixa is not null) or
      (new.databaixa is null and old.databaixa is not null) or
      (new.databaixa is not null and old.databaixa is not null and new.databaixa <> old.databaixa)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DATABAIXA', old.databaixa, new.databaixa);

  if ((old.historico is null and new.historico is not null) or
      (new.historico is null and old.historico is not null) or
      (new.historico is not null and old.historico is not null and new.historico <> old.historico)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'HISTORICO', old.historico, new.historico);

  if ((old.codalmoxarifado is null and new.codalmoxarifado is not null) or
      (new.codalmoxarifado is null and old.codalmoxarifado is not null) or
      (new.codalmoxarifado is not null and old.codalmoxarifado is not null and new.codalmoxarifado <> old.codalmoxarifado)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODALMOXARIFADO', old.codalmoxarifado, new.codalmoxarifado);

  if ((old.codvendedor is null and new.codvendedor is not null) or
      (new.codvendedor is null and old.codvendedor is not null) or
      (new.codvendedor is not null and old.codvendedor is not null and new.codvendedor <> old.codvendedor)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODVENDEDOR', old.codvendedor, new.codvendedor);

  if ((old.codusuario is null and new.codusuario is not null) or
      (new.codusuario is null and old.codusuario is not null) or
      (new.codusuario is not null and old.codusuario is not null and new.codusuario <> old.codusuario)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODUSUARIO', old.codusuario, new.codusuario);

  if ((old.valorrecebido is null and new.valorrecebido is not null) or
      (new.valorrecebido is null and old.valorrecebido is not null) or
      (new.valorrecebido is not null and old.valorrecebido is not null and new.valorrecebido <> old.valorrecebido)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALORRECEBIDO', old.valorrecebido, new.valorrecebido);

  if ((old.juros is null and new.juros is not null) or
      (new.juros is null and old.juros is not null) or
      (new.juros is not null and old.juros is not null and new.juros <> old.juros)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'JUROS', old.juros, new.juros);

  if ((old.desconto is null and new.desconto is not null) or
      (new.desconto is null and old.desconto is not null) or
      (new.desconto is not null and old.desconto is not null and new.desconto <> old.desconto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCONTO', old.desconto, new.desconto);

  if ((old.perda is null and new.perda is not null) or
      (new.perda is null and old.perda is not null) or
      (new.perda is not null and old.perda is not null and new.perda <> old.perda)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PERDA', old.perda, new.perda);

  if ((old.troca is null and new.troca is not null) or
      (new.troca is null and old.troca is not null) or
      (new.troca is not null and old.troca is not null and new.troca <> old.troca)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TROCA', old.troca, new.troca);

  if ((old.funrural is null and new.funrural is not null) or
      (new.funrural is null and old.funrural is not null) or
      (new.funrural is not null and old.funrural is not null and new.funrural <> old.funrural)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FUNRURAL', old.funrural, new.funrural);

  if ((old.valor_prim_via is null and new.valor_prim_via is not null) or
      (new.valor_prim_via is null and old.valor_prim_via is not null) or
      (new.valor_prim_via is not null and old.valor_prim_via is not null and new.valor_prim_via <> old.valor_prim_via)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_PRIM_VIA', old.valor_prim_via, new.valor_prim_via);

  if ((old.valor_resto is null and new.valor_resto is not null) or
      (new.valor_resto is null and old.valor_resto is not null) or
      (new.valor_resto is not null and old.valor_resto is not null and new.valor_resto <> old.valor_resto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_RESTO', old.valor_resto, new.valor_resto);

  if ((old.valortitulo is null and new.valortitulo is not null) or
      (new.valortitulo is null and old.valortitulo is not null) or
      (new.valortitulo is not null and old.valortitulo is not null and new.valortitulo <> old.valortitulo)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALORTITULO', old.valortitulo, new.valortitulo);

  if ((old.codorigem is null and new.codorigem is not null) or
      (new.codorigem is null and old.codorigem is not null) or
      (new.codorigem is not null and old.codorigem is not null and new.codorigem <> old.codorigem)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODORIGEM', old.codorigem, new.codorigem);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$RECEBIMENTO_AD FOR RECEBIMENTO
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'RECEBIMENTO', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODRECEBIMENTO', old.codrecebimento);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TITULO', old.titulo, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'EMISSAO', old.emissao, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATAVENCIMENTO', old.datavencimento, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATARECEBIMENTO', old.datarecebimento, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CAIXA', old.caixa, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CONTADEBITO', old.contadebito, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CONTACREDITO', old.contacredito, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STATUS', old.status, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FORMARECEBIMENTO', old.formarecebimento, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DATABAIXA', old.databaixa, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'HISTORICO', old.historico, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODALMOXARIFADO', old.codalmoxarifado, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODVENDEDOR', old.codvendedor, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODUSUARIO', old.codusuario, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALORRECEBIDO', old.valorrecebido, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'JUROS', old.juros, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCONTO', old.desconto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PERDA', old.perda, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TROCA', old.troca, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FUNRURAL', old.funrural, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_PRIM_VIA', old.valor_prim_via, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_RESTO', old.valor_resto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALORTITULO', old.valortitulo, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODORIGEM', old.codorigem, null);


end;
^

SET TERM ; ^