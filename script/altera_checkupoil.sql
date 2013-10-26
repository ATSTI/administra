/* RODAR LISTAPRODUTO.sql  LISTAPRODUTOCLI.sql e SPESTOQUEFILTRO.SQL */


--ALTER TRIGGER ALTERA_PAG INACTIVE;

--select * from compra m where m.CODMOVIMENTO = 8;

--select * from movimento m where m.CODMOVIMENTO = 1611;

--ALTER TRIGGER ALTERA_PAG ACTIVE;

--select * from MOVIMENTODETALHE m where m.CODMOVIMENTO = 8

--select * from MOVIMENTO m order by m.CODMOVIMENTO
/*
delete from compra m where m.CODMOVIMENTO = 2334;
delete from movimento m where m.CODMOVIMENTO = 2334;


delete from venda m where m.CODMOVIMENTO = 2354;
delete from movimento m where m.CODMOVIMENTO = 2354;

delete from Venda m where m.CODMOVIMENTO = 2378;
delete from movimento m where m.CODMOVIMENTO = 2378;

delete from compra m where m.CODMOVIMENTO = 2362;
delete from movimento m where m.CODMOVIMENTO = 2362;
*/
--delete from estoquemes;

--update movimentodetalhe set status = null;




--  RODAR CORRIGEESTOQUEMES """"ate""""" 15/09/2011

--RODAR INVENTARIO  15/09/11

--select * from INVENTARIO i where i.CODIVENTARIO = '15_SET_2011a' and i.codpro = '820' order by i.CODPRODUTO;
--delete from INVENTARIO i where i.CODIVENTARIO = '15_SET_2011a'

--compra errada =  69172

--SELECT r.CODMOVIMENTO, r.DATAMOVIMENTO, r.CODCLIENTE, r.CODNATUREZA, r.STATUS, r.CODUSUARIO, r.CODVENDEDOR, r.CODALMOXARIFADO, r.CODFORNECEDOR, r.DATA_SISTEMA, r.COD_VEICULO, r.CONTROLE, r.OBS, r.TOTALMOVIMENTO, r.CODMOVRATEIO, r.VALORRATEIO, r.RATEIO, r.CONFERIDO, r.NFCOBRANCA, r.ORDEMATEND, r.NFREVENDA, r.CODORIGEM, r.KM, r.NFE, r.PRAZO_ENT, r.VAL_PROP, r.FORMA_PAG, r.VALOR_FRETE, r.DATA_ENTREGA, r.PRAZO_PAGAMENTO, r.USER_APROVA, r.CODTRANSP, r.TPFRETE, r.CODPEDIDO, r.CODCOTACAO, r.USUARIOLOGADO
--FROM MOVIMENTO r where r.CODMOVIMENTO = 1611

--select m.codmovimento, m.DATAMOVIMENTO, d.datacompra from movimento m, compra d  where d.CODMOVIMENTO = m.CODMOVIMENTO 
--and exists (select c.codmovimento from compra c where c.CODMOVIMENTO = m.CODMOVIMENTO and c.DATACOMPRA <> m.DATAMOVIMENTO)

--select m.codmovimento, m.DATAMOVIMENTO, d.datavenda from movimento m, venda d  where d.CODMOVIMENTO = m.CODMOVIMENTO and exists 
--(select c.codmovimento from venda c where  c.CODMOVIMENTO = m.CODMOVIMENTO and  c.DATAVENDA <> m.DATAMOVIMENTO);
/*
delete from venda v where v.CODMOVIMENTO = 2335;
delete from venda v where v.CODMOVIMENTO = 2361;
delete from compra v where v.CODMOVIMENTO = 2377;
delete from movimento v where v.CODMOVIMENTO = 2335;
delete from movimento v where v.CODMOVIMENTO = 2361;
delete from movimento v where v.CODMOVIMENTO = 2377;
select count(*) from MOVIMENTODETALHE md where md.CODMOVIMENTO = 2335;
  
select count(*) from MOVIMENTODETALHE md where md.CODMOVIMENTO = 2361;
*/
--select count(*) from MOVIMENTODETALHE md where md.CODMOVIMENTO = 2377;


--  RODAR CORRIGEESTOQUEMES """"depois de""""" 15/09/2011

