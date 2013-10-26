set term ^ ;
/*alter table PAGAMENTO add dataConsolida date^
alter table RECEBIMENTO add dataConsolida date^
commit ^*/
update PAGAMENTO p set p.dataconsolida = p.DATAPAGAMENTO^
commit ^
update RECEBIMENTO p set p.dataconsolida = p.DATARECEBIMENTO^
commit ^
update RECEBIMENTO r set r.VALOR_RESTO = r.VALORRECEBIDO WHERE STATUS = '7-'^
commit ^
update PAGAMENTO r set r.VALOR_RESTO = r.VALORRECEBIDO WHERE STATUS = '7-'^
commit ^
