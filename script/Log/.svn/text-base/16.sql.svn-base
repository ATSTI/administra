set term ^;

CREATE OR ALTER TRIGGER IBE$MOVIMENTODETALHE_AI FOR MOVIMENTODETALHE
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTODETALHE', 'I', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODDETALHE', new.coddetalhe);

  if (new.codproduto is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODPRODUTO', null, new.codproduto);

  if (new.quantidade is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'QUANTIDADE', null, new.quantidade);

  if (new.preco is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECO', null, new.preco);

  if (new.qtde_alt is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'QTDE_ALT', null, new.qtde_alt);

  if (new.baixa is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAIXA', null, new.baixa);

  if (new.lote is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'LOTE', null, new.lote);

  if (not (new.descproduto is null)) then
    insert into ibe$log_blob_fields (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'DESCPRODUTO',null, new.descproduto);

  if (new.cst is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CST', null, new.cst);

  if (new.valor_icms is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALOR_ICMS', null, new.valor_icms);

  if (new.vlr_base is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VLR_BASE', null, new.vlr_base);

  if (new.codigo is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO', null, new.codigo);

  if (new.icms_subst is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ICMS_SUBST', null, new.icms_subst);

  if (new.icms_substd is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ICMS_SUBSTD', null, new.icms_substd);

  if (new.vlr_baseicms is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VLR_BASEICMS', null, new.vlr_baseicms);

  if (new.pipi is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PIPI', null, new.pipi);

  if (new.vipi is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VIPI', null, new.vipi);

  if (new.cfop is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CFOP', null, new.cfop);

  if (new.frete is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FRETE', null, new.frete);

  if (new.csosn is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CSOSN', null, new.csosn);

  if (new.valor_desconto is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALOR_DESCONTO', null, new.valor_desconto);

  if (new.recebido is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'RECEBIDO', null, new.recebido);

  if (new.valor_seguro is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALOR_SEGURO', null, new.valor_seguro);

  if (new.valor_outros is not null) then
    insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VALOR_OUTROS', null, new.valor_outros);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$MOVIMENTODETALHE_AU FOR MOVIMENTODETALHE
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTODETALHE', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODDETALHE', old.coddetalhe);

  if ((old.codproduto is null and new.codproduto is not null) or
      (new.codproduto is null and old.codproduto is not null) or
      (new.codproduto is not null and old.codproduto is not null and new.codproduto <> old.codproduto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODPRODUTO', old.codproduto, new.codproduto);

  if ((old.quantidade is null and new.quantidade is not null) or
      (new.quantidade is null and old.quantidade is not null) or
      (new.quantidade is not null and old.quantidade is not null and new.quantidade <> old.quantidade)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'QUANTIDADE', old.quantidade, new.quantidade);

  if ((old.preco is null and new.preco is not null) or
      (new.preco is null and old.preco is not null) or
      (new.preco is not null and old.preco is not null and new.preco <> old.preco)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECO', old.preco, new.preco);

  if ((old.qtde_alt is null and new.qtde_alt is not null) or
      (new.qtde_alt is null and old.qtde_alt is not null) or
      (new.qtde_alt is not null and old.qtde_alt is not null and new.qtde_alt <> old.qtde_alt)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'QTDE_ALT', old.qtde_alt, new.qtde_alt);

  if ((old.baixa is null and new.baixa is not null) or
      (new.baixa is null and old.baixa is not null) or
      (new.baixa is not null and old.baixa is not null and new.baixa <> old.baixa)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAIXA', old.baixa, new.baixa);

  if ((old.lote is null and new.lote is not null) or
      (new.lote is null and old.lote is not null) or
      (new.lote is not null and old.lote is not null and new.lote <> old.lote)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'LOTE', old.lote, new.lote);

  if ((old.descproduto is null and new.descproduto is not null) or
      (new.descproduto is null and old.descproduto is not null) or
      (new.descproduto is not null and old.descproduto is not null and new.descproduto <> old.descproduto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCPRODUTO', old.descproduto, new.descproduto);

  if ((old.cst is null and new.cst is not null) or
      (new.cst is null and old.cst is not null) or
      (new.cst is not null and old.cst is not null and new.cst <> old.cst)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CST', old.cst, new.cst);

  if ((old.valor_icms is null and new.valor_icms is not null) or
      (new.valor_icms is null and old.valor_icms is not null) or
      (new.valor_icms is not null and old.valor_icms is not null and new.valor_icms <> old.valor_icms)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_ICMS', old.valor_icms, new.valor_icms);

  if ((old.vlr_base is null and new.vlr_base is not null) or
      (new.vlr_base is null and old.vlr_base is not null) or
      (new.vlr_base is not null and old.vlr_base is not null and new.vlr_base <> old.vlr_base)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VLR_BASE', old.vlr_base, new.vlr_base);

  if ((old.codigo is null and new.codigo is not null) or
      (new.codigo is null and old.codigo is not null) or
      (new.codigo is not null and old.codigo is not null and new.codigo <> old.codigo)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO', old.codigo, new.codigo);

  if ((old.icms_subst is null and new.icms_subst is not null) or
      (new.icms_subst is null and old.icms_subst is not null) or
      (new.icms_subst is not null and old.icms_subst is not null and new.icms_subst <> old.icms_subst)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ICMS_SUBST', old.icms_subst, new.icms_subst);

  if ((old.icms_substd is null and new.icms_substd is not null) or
      (new.icms_substd is null and old.icms_substd is not null) or
      (new.icms_substd is not null and old.icms_substd is not null and new.icms_substd <> old.icms_substd)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ICMS_SUBSTD', old.icms_substd, new.icms_substd);

  if ((old.vlr_baseicms is null and new.vlr_baseicms is not null) or
      (new.vlr_baseicms is null and old.vlr_baseicms is not null) or
      (new.vlr_baseicms is not null and old.vlr_baseicms is not null and new.vlr_baseicms <> old.vlr_baseicms)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VLR_BASEICMS', old.vlr_baseicms, new.vlr_baseicms);

  if ((old.pipi is null and new.pipi is not null) or
      (new.pipi is null and old.pipi is not null) or
      (new.pipi is not null and old.pipi is not null and new.pipi <> old.pipi)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PIPI', old.pipi, new.pipi);

  if ((old.vipi is null and new.vipi is not null) or
      (new.vipi is null and old.vipi is not null) or
      (new.vipi is not null and old.vipi is not null and new.vipi <> old.vipi)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VIPI', old.vipi, new.vipi);

  if ((old.cfop is null and new.cfop is not null) or
      (new.cfop is null and old.cfop is not null) or
      (new.cfop is not null and old.cfop is not null and new.cfop <> old.cfop)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CFOP', old.cfop, new.cfop);

  if ((old.frete is null and new.frete is not null) or
      (new.frete is null and old.frete is not null) or
      (new.frete is not null and old.frete is not null and new.frete <> old.frete)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FRETE', old.frete, new.frete);

  if ((old.csosn is null and new.csosn is not null) or
      (new.csosn is null and old.csosn is not null) or
      (new.csosn is not null and old.csosn is not null and new.csosn <> old.csosn)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CSOSN', old.csosn, new.csosn);

  if ((old.valor_desconto is null and new.valor_desconto is not null) or
      (new.valor_desconto is null and old.valor_desconto is not null) or
      (new.valor_desconto is not null and old.valor_desconto is not null and new.valor_desconto <> old.valor_desconto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_DESCONTO', old.valor_desconto, new.valor_desconto);

  if ((old.recebido is null and new.recebido is not null) or
      (new.recebido is null and old.recebido is not null) or
      (new.recebido is not null and old.recebido is not null and new.recebido <> old.recebido)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'RECEBIDO', old.recebido, new.recebido);

  if ((old.valor_seguro is null and new.valor_seguro is not null) or
      (new.valor_seguro is null and old.valor_seguro is not null) or
      (new.valor_seguro is not null and old.valor_seguro is not null and new.valor_seguro <> old.valor_seguro)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_SEGURO', old.valor_seguro, new.valor_seguro);

  if ((old.valor_outros is null and new.valor_outros is not null) or
      (new.valor_outros is null and old.valor_outros is not null) or
      (new.valor_outros is not null and old.valor_outros is not null and new.valor_outros <> old.valor_outros)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_OUTROS', old.valor_outros, new.valor_outros);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$MOVIMENTODETALHE_AD FOR MOVIMENTODETALHE
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'MOVIMENTODETALHE', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'CODDETALHE', old.coddetalhe);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODPRODUTO', old.codproduto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'QUANTIDADE', old.quantidade, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECO', old.preco, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'QTDE_ALT', old.qtde_alt, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAIXA', old.baixa, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'LOTE', old.lote, null);

  insert into ibe$log_blob_fields (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'DESCPRODUTO', old.descproduto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CST', old.cst, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_ICMS', old.valor_icms, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VLR_BASE', old.vlr_base, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO', old.codigo, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ICMS_SUBST', old.icms_subst, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ICMS_SUBSTD', old.icms_substd, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VLR_BASEICMS', old.vlr_baseicms, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PIPI', old.pipi, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VIPI', old.vipi, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CFOP', old.cfop, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FRETE', old.frete, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CSOSN', old.csosn, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_DESCONTO', old.valor_desconto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'RECEBIDO', old.recebido, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_SEGURO', old.valor_seguro, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_OUTROS', old.valor_outros, null);


end;
^

SET TERM ; ^