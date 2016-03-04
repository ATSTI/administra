set term ^ ;
CREATE OR ALTER TRIGGER INVENT_ESTOQUE_ATUALIZA FOR INVENTARIO ACTIVE
BEFORE UPDATE POSITION 1
AS 
declare variable qtde double precision;
declare variable mesAno Date;
declare variable ccusto integer;
declare variable lote varchar(60);
BEGIN 
  if ((UPDATING) AND (old.SITUACAO = 'V')) then 
  begin
    lote   = new.LOTE;
    if (lote is null) then 
      lote = '0';
    if (lote = '') then 
      lote = '0';
    --if (lote = '0') then 
    --  lote = 'TODOS OS LOTES CADASTRADOS NO SISTEMA';    
    ccusto = new.CODCCUSTO;
    if (ccusto is null) then 
      ccusto = 0;
    qtde = 0; 
	-- Preenche o campo ESTOQUE_ATUAL
    -- Ve o estoque atual
     
    select coalesce(ev.SALDOFIMACUM,0)
       from ESTOQUE_VIEW_CUSTO(new.DATAIVENTARIO, new.CODPRODUTO, :ccusto, :lote) ev           
     into :qtde;

    if (qtde is null) then 
      qtde = 0;
    NEW.ESTOQUE_ATUAL = :qtde;    
  end 
END
