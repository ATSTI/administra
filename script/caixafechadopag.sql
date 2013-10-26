CREATE OR ALTER TRIGGER CAIXAFECHADOPAG ACTIVE
BEFORE UPDATE OR DELETE OR INSERT POSITION 0
AS 
  declare variable situacao char(1);
BEGIN 
  situacao = 'G'; 
  if (UPDATING) then 
  begin 
    if ((old.STATUS = '7-') and (new.STATUS = old.STATUS)) then 
    begin     
      select first 1 cc.situacao from caixa_controle cc where cc.codcaixa = new.Caixa 
        and cc.SITUACAO = 'F' and cc.DATAFECHAMENTO >= new.DATAPAGAMENTO
        order by cc.DATAFECHAMENTO desc
      into :situacao;
      /*update CAIXA_CONTROLE set TESTE = ' old status :' || old.STATUS || ' new status :' || new.STATUS
        || ' new.DATAREC :' || new.DATARECEBIMENTO || ' Sit. :' || :situacao || ' Caixa :' || new.CAIXA;*/
    end 
  end 
  if (INSERTING) then 
  begin
    if (new.STATUS = '7-') then 
    begin     
      select first 1 cc.situacao from caixa_controle cc where cc.codcaixa = new.Caixa 
        and cc.SITUACAO = 'F' and cc.DATAFECHAMENTO >= new.DATAPAGAMENTO
        order by cc.DATAFECHAMENTO desc
      into :situacao;
      /*update CAIXA_CONTROLE set TESTE = ' new status :' || new.STATUS
        || ' new.DATAREC :' || new.DATAPAGAMENTO || ' Sit. :' || :situacao || ' Caixa :' || new.CAIXA;*/
    end  
  end 
  if (DELETING) then 
  begin
    if (old.STATUS = '7-') then 
    begin     
      select first 1 cc.situacao from caixa_controle cc where cc.codcaixa = old.Caixa 
        and cc.SITUACAO = 'F' and cc.DATAFECHAMENTO >= old.DATAPAGAMENTO
        order by cc.DATAFECHAMENTO desc
      into :situacao;
      /*update CAIXA_CONTROLE set TESTE = ' old status :' || old.STATUS
        || ' old.DATAREC :' || old.DATARECEBIMENTO || ' Sit. :' || :situacao || ' Caixa :' || old.CAIXA;*/
    end 
  end 
  if (situacao = 'F') then 
    exception CAIXAFECHADO; 
END