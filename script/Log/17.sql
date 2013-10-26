set term ^;

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

CREATE OR ALTER TRIGGER IBE$NOTAFISCAL_AU FOR NOTAFISCAL
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'NOTAFISCAL', 'U', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'NUMNF', old.numnf);

  if ((old.notaserie is null and new.notaserie is not null) or
      (new.notaserie is null and old.notaserie is not null) or
      (new.notaserie is not null and old.notaserie is not null and new.notaserie <> old.notaserie)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOTASERIE', old.notaserie, new.notaserie);

  if ((old.natureza is null and new.natureza is not null) or
      (new.natureza is null and old.natureza is not null) or
      (new.natureza is not null and old.natureza is not null and new.natureza <> old.natureza)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NATUREZA', old.natureza, new.natureza);

  if ((old.dtaemissao is null and new.dtaemissao is not null) or
      (new.dtaemissao is null and old.dtaemissao is not null) or
      (new.dtaemissao is not null and old.dtaemissao is not null and new.dtaemissao <> old.dtaemissao)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DTAEMISSAO', old.dtaemissao, new.dtaemissao);

  if ((old.dtasaida is null and new.dtasaida is not null) or
      (new.dtasaida is null and old.dtasaida is not null) or
      (new.dtasaida is not null and old.dtasaida is not null and new.dtasaida <> old.dtasaida)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DTASAIDA', old.dtasaida, new.dtasaida);

  if ((old.notafiscal is null and new.notafiscal is not null) or
      (new.notafiscal is null and old.notafiscal is not null) or
      (new.notafiscal is not null and old.notafiscal is not null and new.notafiscal <> old.notafiscal)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOTAFISCAL', old.notafiscal, new.notafiscal);

  if ((old.horasaida is null and new.horasaida is not null) or
      (new.horasaida is null and old.horasaida is not null) or
      (new.horasaida is not null and old.horasaida is not null and new.horasaida <> old.horasaida)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'HORASAIDA', old.horasaida, new.horasaida);

  if ((old.base_icms is null and new.base_icms is not null) or
      (new.base_icms is null and old.base_icms is not null) or
      (new.base_icms is not null and old.base_icms is not null and new.base_icms <> old.base_icms)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BASE_ICMS', old.base_icms, new.base_icms);

  if ((old.valor_icms is null and new.valor_icms is not null) or
      (new.valor_icms is null and old.valor_icms is not null) or
      (new.valor_icms is not null and old.valor_icms is not null and new.valor_icms <> old.valor_icms)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_ICMS', old.valor_icms, new.valor_icms);

  if ((old.base_icms_subst is null and new.base_icms_subst is not null) or
      (new.base_icms_subst is null and old.base_icms_subst is not null) or
      (new.base_icms_subst is not null and old.base_icms_subst is not null and new.base_icms_subst <> old.base_icms_subst)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BASE_ICMS_SUBST', old.base_icms_subst, new.base_icms_subst);

  if ((old.valor_icms_subst is null and new.valor_icms_subst is not null) or
      (new.valor_icms_subst is null and old.valor_icms_subst is not null) or
      (new.valor_icms_subst is not null and old.valor_icms_subst is not null and new.valor_icms_subst <> old.valor_icms_subst)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_ICMS_SUBST', old.valor_icms_subst, new.valor_icms_subst);

  if ((old.valor_produto is null and new.valor_produto is not null) or
      (new.valor_produto is null and old.valor_produto is not null) or
      (new.valor_produto is not null and old.valor_produto is not null and new.valor_produto <> old.valor_produto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_PRODUTO', old.valor_produto, new.valor_produto);

  if ((old.valor_frete is null and new.valor_frete is not null) or
      (new.valor_frete is null and old.valor_frete is not null) or
      (new.valor_frete is not null and old.valor_frete is not null and new.valor_frete <> old.valor_frete)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_FRETE', old.valor_frete, new.valor_frete);

  if ((old.valor_seguro is null and new.valor_seguro is not null) or
      (new.valor_seguro is null and old.valor_seguro is not null) or
      (new.valor_seguro is not null and old.valor_seguro is not null and new.valor_seguro <> old.valor_seguro)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_SEGURO', old.valor_seguro, new.valor_seguro);

  if ((old.outras_desp is null and new.outras_desp is not null) or
      (new.outras_desp is null and old.outras_desp is not null) or
      (new.outras_desp is not null and old.outras_desp is not null and new.outras_desp <> old.outras_desp)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'OUTRAS_DESP', old.outras_desp, new.outras_desp);

  if ((old.valor_ipi is null and new.valor_ipi is not null) or
      (new.valor_ipi is null and old.valor_ipi is not null) or
      (new.valor_ipi is not null and old.valor_ipi is not null and new.valor_ipi <> old.valor_ipi)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_IPI', old.valor_ipi, new.valor_ipi);

  if ((old.valor_total_nota is null and new.valor_total_nota is not null) or
      (new.valor_total_nota is null and old.valor_total_nota is not null) or
      (new.valor_total_nota is not null and old.valor_total_nota is not null and new.valor_total_nota <> old.valor_total_nota)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_TOTAL_NOTA', old.valor_total_nota, new.valor_total_nota);

  if ((old.corponf1 is null and new.corponf1 is not null) or
      (new.corponf1 is null and old.corponf1 is not null) or
      (new.corponf1 is not null and old.corponf1 is not null and new.corponf1 <> old.corponf1)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CORPONF1', old.corponf1, new.corponf1);

  if ((old.corponf2 is null and new.corponf2 is not null) or
      (new.corponf2 is null and old.corponf2 is not null) or
      (new.corponf2 is not null and old.corponf2 is not null and new.corponf2 <> old.corponf2)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CORPONF2', old.corponf2, new.corponf2);

  if ((old.corponf3 is null and new.corponf3 is not null) or
      (new.corponf3 is null and old.corponf3 is not null) or
      (new.corponf3 is not null and old.corponf3 is not null and new.corponf3 <> old.corponf3)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CORPONF3', old.corponf3, new.corponf3);

  if ((old.corponf4 is null and new.corponf4 is not null) or
      (new.corponf4 is null and old.corponf4 is not null) or
      (new.corponf4 is not null and old.corponf4 is not null and new.corponf4 <> old.corponf4)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CORPONF4', old.corponf4, new.corponf4);

  if ((old.corponf5 is null and new.corponf5 is not null) or
      (new.corponf5 is null and old.corponf5 is not null) or
      (new.corponf5 is not null and old.corponf5 is not null and new.corponf5 <> old.corponf5)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CORPONF5', old.corponf5, new.corponf5);

  if ((old.corponf6 is null and new.corponf6 is not null) or
      (new.corponf6 is null and old.corponf6 is not null) or
      (new.corponf6 is not null and old.corponf6 is not null and new.corponf6 <> old.corponf6)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CORPONF6', old.corponf6, new.corponf6);

  if ((old.cfop is null and new.cfop is not null) or
      (new.cfop is null and old.cfop is not null) or
      (new.cfop is not null and old.cfop is not null and new.cfop <> old.cfop)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CFOP', old.cfop, new.cfop);

  if ((old.icms is null and new.icms is not null) or
      (new.icms is null and old.icms is not null) or
      (new.icms is not null and old.icms is not null and new.icms <> old.icms)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ICMS', old.icms, new.icms);

  if ((old.serie is null and new.serie is not null) or
      (new.serie is null and old.serie is not null) or
      (new.serie is not null and old.serie is not null and new.serie <> old.serie)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SERIE', old.serie, new.serie);

  if ((old.numrecibo is null and new.numrecibo is not null) or
      (new.numrecibo is null and old.numrecibo is not null) or
      (new.numrecibo is not null and old.numrecibo is not null and new.numrecibo <> old.numrecibo)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NUMRECIBO', old.numrecibo, new.numrecibo);

  if ((old.protocolocanc is null and new.protocolocanc is not null) or
      (new.protocolocanc is null and old.protocolocanc is not null) or
      (new.protocolocanc is not null and old.protocolocanc is not null and new.protocolocanc <> old.protocolocanc)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PROTOCOLOCANC', old.protocolocanc, new.protocolocanc);

  if ((old.notamae is null and new.notamae is not null) or
      (new.notamae is null and old.notamae is not null) or
      (new.notamae is not null and old.notamae is not null and new.notamae <> old.notamae)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOTAMAE', old.notamae, new.notamae);

  if ((old.valor_pis is null and new.valor_pis is not null) or
      (new.valor_pis is null and old.valor_pis is not null) or
      (new.valor_pis is not null and old.valor_pis is not null and new.valor_pis <> old.valor_pis)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_PIS', old.valor_pis, new.valor_pis);

  if ((old.valor_cofins is null and new.valor_cofins is not null) or
      (new.valor_cofins is null and old.valor_cofins is not null) or
      (new.valor_cofins is not null and old.valor_cofins is not null and new.valor_cofins <> old.valor_cofins)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_COFINS', old.valor_cofins, new.valor_cofins);

  if ((old.valor_desconto is null and new.valor_desconto is not null) or
      (new.valor_desconto is null and old.valor_desconto is not null) or
      (new.valor_desconto is not null and old.valor_desconto is not null and new.valor_desconto <> old.valor_desconto)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VALOR_DESCONTO', old.valor_desconto, new.valor_desconto);

  if ((old.idcomplementar is null and new.idcomplementar is not null) or
      (new.idcomplementar is null and old.idcomplementar is not null) or
      (new.idcomplementar is not null and old.idcomplementar is not null and new.idcomplementar <> old.idcomplementar)) then
     insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IDCOMPLEMENTAR', old.idcomplementar, new.idcomplementar);

  if ((old.xmlnfe is null and new.xmlnfe is not null) or
      (new.xmlnfe is null and old.xmlnfe is not null) or
      (new.xmlnfe is not null and old.xmlnfe is not null and new.xmlnfe <> old.xmlnfe)) then
     insert into ibe$log_blob_fields (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'XMLNFE', old.xmlnfe, new.xmlnfe);


end;
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER IBE$NOTAFISCAL_AD FOR NOTAFISCAL
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer;
begin
  tid = gen_id(ibe$log_tables_gen,1);

  insert into ibe$log_tables (id, table_name, operation, date_time, user_name)
         values (:tid, 'NOTAFISCAL', 'D', 'NOW', user);

  insert into ibe$log_keys (log_tables_id, key_field, key_value)
         values (:tid, 'NUMNF', old.numnf);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOTASERIE', old.notaserie, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NATUREZA', old.natureza, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DTAEMISSAO', old.dtaemissao, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DTASAIDA', old.dtasaida, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOTAFISCAL', old.notafiscal, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'HORASAIDA', old.horasaida, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BASE_ICMS', old.base_icms, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_ICMS', old.valor_icms, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BASE_ICMS_SUBST', old.base_icms_subst, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_ICMS_SUBST', old.valor_icms_subst, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_PRODUTO', old.valor_produto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_FRETE', old.valor_frete, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_SEGURO', old.valor_seguro, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'OUTRAS_DESP', old.outras_desp, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_IPI', old.valor_ipi, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_TOTAL_NOTA', old.valor_total_nota, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CORPONF1', old.corponf1, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CORPONF2', old.corponf2, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CORPONF3', old.corponf3, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CORPONF4', old.corponf4, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CORPONF5', old.corponf5, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CORPONF6', old.corponf6, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CFOP', old.cfop, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ICMS', old.icms, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SERIE', old.serie, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NUMRECIBO', old.numrecibo, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PROTOCOLOCANC', old.protocolocanc, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOTAMAE', old.notamae, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_PIS', old.valor_pis, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_COFINS', old.valor_cofins, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VALOR_DESCONTO', old.valor_desconto, null);

  insert into ibe$log_fields (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IDCOMPLEMENTAR', old.idcomplementar, null);

  insert into ibe$log_blob_fields (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'XMLNFE', old.xmlnfe, null);


end;
^

SET TERM ; ^