CREATE OR ALTER PROCEDURE SPESTOQUEFILTRO (
    DTA1 date,
    DTA2 date,
    PROD1 integer,
    PROD2 integer,
    SUBGRUPO varchar(50),
    NATUREZA smallint,
    CCUSTO integer,
    MARCA varchar(50),
    LOTE varchar(60),
    GRUPOPROC varchar(50) )
RETURNS (
    CODPROD varchar(20),
    CODMOV integer,
    DATAMOVIMENTO date,
    CODPRODUTO integer,
    TIPOMOVIMENTO varchar(30),
    PRODUTO varchar(300),
    GRUPO varchar(30),
    SUBGRUPOPROD varchar(30),
    SALDOINIACUM double precision,
    ENTRADA double precision,
    SAIDA double precision,
    SALDOFIMACUM double precision,
    PRECOUNIT double precision,
    PRECOCUSTO double precision,
    PRECOCOMPRA double precision,
    PRECOVENDA double precision,
    VALORESTOQUE double precision,
    VALORVENDA double precision,
    LOTES varchar(60),
    CCUSTOS integer,
    DTAFAB date,
    DTAVCTO date,
    NF integer,
    CLIFOR varchar(60),
    CODLOTE integer,
    ANOTACOES varchar(100),
    APLICACAO varchar(30) )
AS
DECLARE VARIABLE CODNATU SMALLINT;
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTSAI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOINI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOFIM DOUBLE PRECISION = 0;
DECLARE VARIABLE AcumulaQtde DOUBLE PRECISION = 0;
DECLARE VARIABLE AcumulaVlr DOUBLE PRECISION = 0;
DECLARE VARIABLE VLR DOUBLE PRECISION = 0;
DECLARE VARIABLE CODPRODU INTEGER = 0;
DECLARE VARIABLE IMPRIME CHAR(1);
declare variable datanf date;
DECLARE VARIABLE CODDET INTEGER = 0;
BEGIN
  -- MOVIMENTO DE MATERIAIS
  saida = 0;
  CODPRODU = 0;
  PRECOCUSTO = 0;
  PRECOCOMPRA = 0;
  VALORVENDA = 0;
  PRECOVENDA = 0;
  ENTRA = 0;
  SAI = 0;
  ACUMULAQTDE = 0;
  ACUMULAVLR = 0;
  TOTENTRA = 0;
  TOTSAI   = 0;
  ENTRADA  = 0;
  SAIDA    = 0;
  
  if (CCUSTO = 0) then 
    CCUSTO = 1;
  -- PEGO A LISTA DOS PRODUTOS QUE TIVERAM MOVIMENTO 
  FOR SELECT distinct CODPROD, CODMOV, TIPOMOVIMENTO, PRODUTO, GRUPO, SUBGRUPOPROD, codlote, Datanf, CODNATU, 
     LOTES, DTAFAB, DTAVCTO, CCUSTOS, ANOTACOES, CODPRODUTO, PRECOUNIT, VALORVENDA , CODPRODUTO
        FROM LISTASPESTOQUEFILTRO(:DTA1, :DTA2, :PROD1, :PROD2, :SUBGRUPO, :NATUREZA, :CCUSTO
             ,:MARCA, :LOTE, :GRUPOPROC) ev
       order by codprod ,datanf , TIPOMOVIMENTO, codnatu desc ,codlote  
        INTO :CODPROD, :CODMOV, :TIPOMOVIMENTO, :PRODUTO, :GRUPO, :SUBGRUPOPROD, :codlote, :Datanf, :CODNATU, 
             :LOTES, :DTAFAB, :DTAVCTO, :CCUSTOS, :ANOTACOES, :CODPRODUTO, :PRECOUNIT , :VALORVENDA, :codProduto
  DO BEGIN
    -- SO PEGA UMA VEZ O ESTOQUE INICIAL
    if (CODPRODU <> codproduto) then -- IF 1 - SO ENTRA AQUI SE MUDAR O PRODUTO
    begin 
      PRECOCUSTO = PRECOUNIT;
      PRECOCOMPRA = PRECOUNIT;

      -- SALDOS ANTERIORES DE ENTRADA E SAIDA 
           
      -- SALDO INICIAL DO ESTOQUE 
      -- Qtde Inicial ENTRADA e PRECO CUSTO
      FOR SELECT SUM(movdet.QUANTIDADE), sum(movdet.VLR_BASE*movdet.QUANTIDADE)
            FROM COMPRA c, MOVIMENTO mov, NATUREZAOPERACAO natu, MOVIMENTODETALHE movdet 
           WHERE c.CODMOVIMENTO = mov.CODMOVIMENTO 
             AND natu.CODNATUREZA = mov.CODNATUREZA 
             AND mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
             AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
             AND ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
             AND movdet.CODPRODUTO = :CODPRODUTO 
             AND natu.BAIXAMOVIMENTO = 0 
             AND movdet.BAIXA is not null  
             AND c.DATACOMPRA  < :DTA1 
            INTO :ENTRA, :VLR
      DO BEGIN
        if ((ENTRA > 0) AND (VLR > 0)) then 
          PRECOCUSTO = VLR / ENTRA;
        PRECOUNIT = PRECOCUSTO;    
        IF (ENTRA IS NULL) THEN 
          ENTRA = 0;  
        TOTENTRA = TOTENTRA + ENTRA;   
      END
      
      -- Preco da Ultima Compra
      FOR SELECT FIRST 1 movdet.VLR_BASE
            FROM COMPRA c, MOVIMENTO mov, MOVIMENTODETALHE movdet
           WHERE c.CODMOVIMENTO = mov.CODMOVIMENTO
             AND mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
             AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
             and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
             AND movdet.CODPRODUTO = :CODPRODUTO 
             AND mov.CODNATUREZA = 4
             AND movdet.BAIXA is not null  
             AND c.DATACOMPRA  < :DTA1 
           ORDER BY c.DATACOMPRA DESC   
            INTO :PRECOCOMPRA
      DO BEGIN
        
      END
      
      -- Qtde Inicial SAIDA
      FOR SELECT SUM(movdet.QUANTIDADE), sum(movdet.VLR_BASE * movdet.QUANTIDADE) 
            FROM VENDA v, MOVIMENTO mov, NATUREZAOPERACAO natu , MOVIMENTODETALHE movdet
           WHERE v.CODMOVIMENTO = mov.CODMOVIMENTO 
             AND natu.CODNATUREZA = mov.CODNATUREZA  
             AND mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
             AND v.DATAVENDA  < :DTA1
             AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
             AND ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
             AND movdet.CODPRODUTO = :CODPRODUTO 
             AND natu.BAIXAMOVIMENTO = 1 
             AND movdet.BAIXA is not null 
            INTO :SAI, :VLR
      DO BEGIN
        if ((SAI > 0) AND (VLR > 0)) then 
          PRECOVENDA = VLR/SAI; 
        IF (SAI IS NULL) THEN 
          SAI = 0;  
        TOTSAI = TOTSAI + SAI;   
      END
      SALDOINI = TOTENTRA - TOTSAI;
      SALDOINIACUM = SALDOINI;  
      ACUMULAQTDE = SALDOINI;
      ACUMULAVLR  = PRECOCUSTO * SALDOINI;   
      ENTRA = 0;
      SAI = 0;
      TOTENTRA = 0;
      TOTSAI = 0;
      
    end  -- FIM IF 1

    IF (LOTES IS NULL) THEN
      LOTES = 'TODOS OS LOTES SISTEMA';                          

    IF (CODNATU IS NULL) THEN 
      CODNATU = 9;
            
    if ((codnatu = 0)  or (codnatu = 1)) then 
    begin 
      IMPRIME = 'N';
      --anotacoes = ' aqui ' || codnatu;
      --suspend; 
      IF (CODNATU = 0) THEN 
      BEGIN
        -- Entrada
        TOTENTRA = 0;
        IMPRIME = 'S';              
        For SELECT sum(movdet.QUANTIDADE), sum(movdet.VLR_BASE * movdet.QUANTIDADE), movdet.VLR_BASE
                 ,mov.DATAMOVIMENTO, movdet.CODDETALHE
              FROM MOVIMENTO mov, MOVIMENTODETALHE movdet 
             WHERE movdet.CODMOVIMENTO = mov.CODMOVIMENTO 
               AND mov.CODMOVIMENTO = :CODMOV 
               AND movdet.CODPRODUTO = :CODPRODUTO  
               AND movdet.BAIXA is not null 
               AND ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
             GROUP BY movdet.CODDETALHE, mov.DATAMOVIMENTO, movdet.VLR_BASE
             ORDER BY codDetalhe                  
              INTO :ENTRA, :VLR, :PRECOCOMPRA, :DATAMOVIMENTO, :CODDET
        do begin
          if (ENTRA IS NULL) then
            ENTRA = 0;
            
          TOTENTRA = TOTENTRA + ENTRA; -- Quantidade Entrou
          
          -- PRIMEIRO VEJO O VALORDOESTOQUE ANTERIOIR ACUMULADO ANTES DESTA ENTRADA 
          --VALORESTOQUE = SALDOFIMACUM * PRECOCUSTO;          
                 
          IF ((ENTRA > 0) AND (VLR > 0)) THEN   
            PRECOCUSTO = VLR/ENTRA; -- Preco Custo Desta Entrada
            
          --anotacoes = ' acumula ' || acumulaqtde || '-' || acumulavlr;
          --suspend;          
          -- CALCULAR PRECO MEDIO  
          IF ((ACUMULAQTDE + ENTRADA) > 0) THEN 
            PRECOCUSTO = (ACUMULAVLR + VLR)/(ACUMULAQTDE + ENTRA);                    
            
          PRECOUNIT = PRECOCUSTO;  
                 
          VALORVENDA = PRECOCOMPRA; -- Valor Ultima Compra (COMPRA/VENDA no Filtro)
                   
        end  
        ENTRADA = TOTENTRA;
        ACUMULAQTDE = ACUMULAQTDE + ENTRADA;
        ACUMULAVLR  = PRECOCUSTO * ACUMULAQTDE;

        for SELECT forn.RAZAOSOCIAL, com.NOTAFISCAL FROM COMPRA com, FORNECEDOR forn 
             WHERE com.CODFORNECEDOR = forn.CODFORNECEDOR and  com.CODMOVIMENTO = :CODMOV
              INTO :CLIFOR, :NF
        do begin
        end
      END
    end -- FIM ENTRADAS  
      
    -- Saida
    IF (CODNATU = 1) THEN 
    BEGIN
      TOTSAI = 0;
      IMPRIME = 'S';
      FOR SELECT SUM(movdet.QUANTIDADE),sum(movdet.VLR_BASE * movdet.QUANTIDADE)
           ,mov.DATAMOVIMENTO, movdet.VLR_BASE, movdet.CODDETALHE
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov
           WHERE movdet.CODMOVIMENTO = mov.CODMOVIMENTO
             AND movdet.CODMOVIMENTO = :CODMOV 
             AND movdet.CODPRODUTO = :CODPRODUTO   
             AND movdet.BAIXA is not null 
             AND ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
           group by movdet.CODDETALHE, mov.DATAMOVIMENTO, movdet.VLR_BASE 
           order by movdet.CODDETALHE
            INTO :SAI, :VLR, :DATAMOVIMENTO, :VALORVENDA, :CODDET
      do begin
        if (sai is null) then 
          sai = 0;
        if (VLR is null) then 
          VLR = 0;
        TOTSAI = TOTSAI + SAI;  
        PRECOVENDA = VALORVENDA;
        
        --anotacoes = 'natu = 1' || codnatu;
        --suspend;
      end
      SAIDA = TOTSAI;
      ACUMULAQTDE = ACUMULAQTDE - SAIDA;
      ACUMULAVLR  = PRECOCUSTO * ACUMULAQTDE;
      
      --anotacoes = 'saiu do for ' || codnatu;
      --suspend;
      For SELECT cli.RAZAOSOCIAL, ven.NOTAFISCAL FROM VENDA ven, CLIENTES cli 
           WHERE ven.CODCLIENTE = cli.Codcliente and  ven.CODMOVIMENTO = :CODMOV
            INTO :CLIFOR, :NF
      do begin
      end
    END
    IF (CODPRODU = CODPRODUTO) THEN
    BEGIN 
      SALDOINIACUM = SALDOFIMACUM;
      SALDOFIMACUM = SALDOINIACUM + ENTRADA - SAIDA;
    END  
    IF (CODPRODU <> CODPRODUTO) THEN
      SALDOINIACUM = SALDOINI;
    --ENTRADA = TOTENTRA;
    --SAIDA = TOTSAI;
      -- IF ((SALDOINI > 0) OR (SALDOFIM > 0) OR (ENTRADA > 0) 
    SALDOFIM = SALDOINI + ENTRADA - SAIDA;
    IF (CODPRODU <> CODPRODUTO) THEN
      SALDOFIMACUM = SALDOFIM;
    
    if (PRECOUNIT = 0) THEN 
      PRECOUNIT = PRECOCUSTO;
    --  VALORESTOQUE = SALDOFIMACUM * PRECOCUSTO;
    --else   
    --  VALORESTOQUE = SALDOFIMACUM * PRECOCOMPRA;  
    --IF (VALORESTOQUE = 0) THEN 
    VALORESTOQUE = SALDOFIMACUM * PRECOCUSTO;  
      
       
    IF (PRECOUNIT IS NULL) THEN   
      PRECOUNIT = PRECOCUSTO;
                     
    IF (IMPRIME = 'S') THEN 
    begin
      --IF ((CCUSTO = CCUSTOS) OR (CCUSTO = 1)) then
      -- if ((LOTE = LOTES) OR (LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')) then
      SUSPEND;
    end
    NF      = null;
    SAIDA   = 0;
    ENTRADA = 0; 
    CODNATU = null;
    CODPRODU = CODPRODUTO;
    if (CODPRODU <> CODPRODUTO) then 
      VALORESTOQUE = 0;
    PRECOUNIT = 0;
    --IF (CODPRODU <> CODPRODUTO) THEN    
  END
END
