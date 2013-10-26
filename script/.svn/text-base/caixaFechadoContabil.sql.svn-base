CREATE OR ALTER TRIGGER CaixaFechadoContabil FOR MOVIMENTOCONT
 ACTIVE 
 BEFORE UPDATE or DELETE or INSERT 
 POSITION 0
AS 
  declare variable situacao char(1);
BEGIN 
  situacao = 'G'; 
  if (UPDATING) then 
  begin 
    select first 1 cc.situacao from caixa_controle cc
      inner join PLANO pl on pl.CODIGO = cc.CODCAIXA
      where pl.CONTA = new.CONTA
      and cc.SITUACAO = 'F' and cc.DATAFECHAMENTO >= new.DATA
      order by cc.DATAFECHAMENTO desc
    into :situacao;
      /*update CAIXA_CONTROLE set TESTE = ' old status :' || old.STATUS || ' new status :' || new.STATUS
        || ' new.DATAREC :' || new.DATARECEBIMENTO || ' Sit. :' || :situacao || ' Caixa :' || new.CAIXA;*/
  end 
  if (INSERTING) then 
  begin
    select first 1 cc.situacao from caixa_controle cc
      inner join PLANO pl on pl.CODIGO = cc.CODCAIXA
      where pl.CONTA = new.CONTA
      and cc.SITUACAO = 'F' and cc.DATAFECHAMENTO >= new.DATA
      order by cc.DATAFECHAMENTO desc
      into :situacao;
      /*update CAIXA_CONTROLE set TESTE = ' new status :' || new.STATUS
        || ' new.DATAREC :' || new.DATAPAGAMENTO || ' Sit. :' || :situacao || ' Caixa :' || new.CAIXA;*/
  end 
  if (DELETING) then 
  begin
    select first 1 cc.situacao from caixa_controle cc
      inner join PLANO pl on pl.CODIGO = cc.CODCAIXA
      where pl.CONTA = old.CONTA
      and cc.SITUACAO = 'F' and cc.DATAFECHAMENTO >= old.DATA
      order by cc.DATAFECHAMENTO desc
      into :situacao;
      /*update CAIXA_CONTROLE set TESTE = ' old status :' || old.STATUS
        || ' old.DATAREC :' || old.DATARECEBIMENTO || ' Sit. :' || :situacao || ' Caixa :' || old.CAIXA;*/
  end 
  if (situacao = 'F') then 
    exception CAIXAFECHADO; 
END