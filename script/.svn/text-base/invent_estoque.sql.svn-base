CREATE OR ALTER TRIGGER INVENT_ESTOQUE FOR INVENTARIO
ACTIVE BEFORE INSERT POSITION 0
AS 
declare variable qtde double precision;
declare variable mesAno Date;
declare variable ccusto integer;
declare variable lote varchar(60);
BEGIN 
  if (inserting) then 
  begin
    lote   = new.LOTE;
    if (lote is null) then 
      lote = '';
    
    ccusto = new.CODCCUSTO;
    if (ccusto is null) then 
      ccusto = 0;
    qtde = 0; 
	-- Preenche o campo ESTOQUE_ATUAL
    -- Ve o estoque atual
    IF (ccusto = 0) then 
    begin 
      if (lote = '') then
      begin  
        SELECT First 1 m.SALDOESTOQUE, m.MESANO FROM ESTOQUEMES M 
         WHERE m.MESANO <= UDF_MONTHSTART(UDF_YEAR(NEW.DATAIVENTARIO), UDF_MONTH(NEW.DATAIVENTARIO)) 
           AND m.CODPRODUTO = NEW.CODPRODUTO
         ORDER BY 2 DESC 
          into :qtde, :mesAno;
      end 
      if (lote <> '') then
      begin  
        SELECT First 1 m.SALDOESTOQUE, m.MESANO FROM ESTOQUEMES M 
         WHERE m.MESANO <= UDF_MONTHSTART(UDF_YEAR(NEW.DATAIVENTARIO), UDF_MONTH(NEW.DATAIVENTARIO)) 
           AND m.CODPRODUTO = NEW.CODPRODUTO
           AND m.LOTE = :lote
         ORDER BY 2 DESC 
          into :qtde, :mesAno;
      end        
             
    end      
    IF (ccusto > 0) then 
    begin 
      if (lote = '') then
      begin  
        SELECT first 1 m.SALDOESTOQUE, m.MESANO FROM ESTOQUEMES M 
         WHERE m.MESANO <= UDF_MONTHSTART(UDF_YEAR(NEW.DATAIVENTARIO), UDF_MONTH(NEW.DATAIVENTARIO)) 
           AND m.CODPRODUTO = NEW.CODPRODUTO
           AND m.CENTROCUSTO = NEW.CODCCUSTO
         ORDER BY 2 DESC 
          into :qtde, :mesAno; 
       end
      if (lote <> '') then
      begin  
        SELECT First 1 m.SALDOESTOQUE, m.MESANO FROM ESTOQUEMES M 
         WHERE m.MESANO <= UDF_MONTHSTART(UDF_YEAR(NEW.DATAIVENTARIO), UDF_MONTH(NEW.DATAIVENTARIO)) 
           AND m.CODPRODUTO = NEW.CODPRODUTO
           AND m.CENTROCUSTO = NEW.CODCCUSTO
           AND m.LOTE = :lote
         ORDER BY 2 DESC 
          into :qtde, :mesAno;
      end            
    end      

    if (qtde is null) then 
      qtde = 0;
    /*select SALDOFIM from SPESTOQUE (NEW.DATAIVENTARIO, NEW.DATAIVENTARIO, NEW.CODPRODUTO, NEW.CODPRODUTO,
       'TODOS OS GRUPOS CADASTRADOS NO SISTEMA', 
       'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA')
    into :qtde;   */
    NEW.ESTOQUE_ATUAL = :qtde;    
  end 
END 
