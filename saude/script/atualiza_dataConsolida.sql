set term ^ ;
alter table PAGAMENTO add dataConsolida date^
alter table RECEBIMENTO add dataConsolida date^
commit ^
update PAGAMENTO p set p.dataconsolida = p.DATAPAGAMENTO^
commit ^
update RECEBIMENTO p set p.dataconsolida = p.DATARECEBIMENTO^
commit ^
