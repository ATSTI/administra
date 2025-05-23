ALTER PROCEDURE  SPESTOQUEFILTRO( DTA1                             DATE
                                , DTA2                             DATE
                                , PROD1                            INTEGER
                                , PROD2                            INTEGER
                                , SUBGRUPO                         VARCHAR( 50 )
                                , NATUREZA                         SMALLINT
                                , CCUSTO                           INTEGER
                                , MARCA                            VARCHAR( 50 )
                                , LOTE                             VARCHAR( 60 )
                                , GRUPOPROC                        VARCHAR( 50 ) )
RETURNS ( CODPROD                          VARCHAR( 20 )
        , CODMOV                           INTEGER
        , DATAMOVIMENTO                    DATE
        , CODPRODUTO                       INTEGER
        , TIPOMOVIMENTO                    VARCHAR( 30 )
        , PRODUTO                          VARCHAR( 300 )
        , GRUPO                            VARCHAR( 30 )
        , SUBGRUPOPROD                     VARCHAR( 30 )
        , SALDOINIACUM                     DOUBLE PRECISION
        , ENTRADA                          DOUBLE PRECISION
        , SAIDA                            DOUBLE PRECISION
        , SALDOFIMACUM                     DOUBLE PRECISION
        , PRECOUNIT                        DOUBLE PRECISION
        , PRECOCUSTO                       DOUBLE PRECISION
        , PRECOCOMPRA                      DOUBLE PRECISION
        , PRECOVENDA                       DOUBLE PRECISION
        , VALORESTOQUE                     DOUBLE PRECISION
        , VALORVENDA                       DOUBLE PRECISION
        , LOTES                            VARCHAR( 60 )
        , CCUSTOS                          INTEGER
        , DTAFAB                           DATE
        , DTAVCTO                          DATE
        , NF                               INTEGER
        , CLIFOR                           VARCHAR( 60 )
        , CODLOTE                          INTEGER
        , ANOTACOES                        VARCHAR( 100 )
        , GRADE                            VARCHAR( 100 )
        , APLICACAO                        VARCHAR( 30 ) )
AS
DECLARE VARIABLE CODNATU SMALLINT;
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE ENTRAEM DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTPRECO DOUBLE PRECISION = 0;
DECLARE VARIABLE CUSTOEM DOUBLE PRECISION = 0;
DECLARE VARIABLE COMPRAEM DOUBLE PRECISION = 0;
DECLARE VARIABLE COMPRAQT DOUBLE PRECISION = 0;
DECLARE VARIABLE COMPRAVR DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTSAI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOINI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOFIM DOUBLE PRECISION = 0;
DECLARE VARIABLE AcumulaQtde DOUBLE PRECISION = 0;
DECLARE VARIABLE AcumulaVlr DOUBLE PRECISION = 0;
DECLARE VARIABLE VLR DOUBLE PRECISION = 0;
DECLARE VARIABLE VLREM DOUBLE PRECISION = 0;
DECLARE VARIABLE CODPRODU INTEGER = 0;
DECLARE VARIABLE IMPRIME CHAR(1);
declare variable datanf date;
declare variable dataEstoqueMes date;
DECLARE VARIABLE CODDET INTEGER = 0;
BEGIN 
  /* versao 2.0.0.20 */
  /* MOVIMENTO DE MATERIAIS */
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
  COMPRAQT = 0;
  COMPRAVR = 0;
  
  if (CCUSTO = 0) then 
    CCUSTO = 1;
  /* PEGO A LISTA DOS PRODUTOS QUE TIVERAM MOVIMENTO  */
  FOR SELECT distinct CODPROD, CODMOV, TIPOMOVIMENTO, PRODUTO, GRUPO, SUBGRUPOPROD, codlote, Datanf, CODNATU, 
     LOTES, DTAFAB, DTAVCTO, CCUSTOS, ANOTACOES, CODPRODUTO, PRECOUNIT, VALORVENDA , CODPRODUTO, GRADE
        FROM LISTASPESTOQUEFILTRO(:DTA1, :DTA2, :PROD1, :PROD2, :SUBGRUPO, :NATUREZA, :CCUSTO
             ,:MARCA, :LOTE, :GRUPOPROC) ev
       order by codprod ,datanf , TIPOMOVIMENTO, codnatu desc ,codlote  
        INTO :CODPROD, :CODMOV, :TIPOMOVIMENTO, :PRODUTO, :GRUPO, :SUBGRUPOPROD, :codlote, :Datanf, :CODNATU, 
             :LOTES, :DTAFAB, :DTAVCTO, :CCUSTOS, :ANOTACOES, :CODPRODUTO, :PRECOUNIT , :VALORVENDA, :codProduto, :GRADE
  DO BEGIN
    precounit = 0;
    /* SO PEGA UMA VEZ O ESTOQUE INICIAL */
    if (CODPRODU <> codproduto) then /* IF 1 - SO ENTRA AQUI SE MUDAR O PRODUTO */
    begin 
      PRECOCUSTO = PRECOUNIT;
      PRECOCOMPRA = PRECOUNIT;  
      COMPRAQT = 0;
      COMPRAVR = 0;
      dataEstoqueMes = '01.01.01';
      VLREM = 0;
      ENTRAEM = 0;
            

      /* SALDOS ANTERIORES DE ENTRADA E SAIDA  */
      SELECT FIRST 1 (EM.QTDECOMPRA+em.QTDEENTRADA) TOTALENTRADA, em.PRECOCUSTO, em.MESANO FROM ESTOQUEMES EM 
       WHERE em.MESANO < :DTA1 
         AND em.CODPRODUTO = :CODPRODUTO
         AND ((em.CENTROCUSTO = :CCUSTO) OR (:CCUSTO = 1))
         AND ((em.LOTE is null) or ((em.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))) 
       ORDER BY em.MESANO DESC
        INTO :ENTRAEM, :VLREM, :dataEstoqueMEs;
        precocusto = vlrem;
        if (entraem is null) then 
          entraem = 0;
          
        if (dataEstoqueMes is null) then 
          dataEstoqueMes = '01.01.01';  
          
      /* SALDO INICIAL DO ESTOQUE  */
      /* Qtde Inicial ENTRADA e PRECO CUSTO */
      FOR SELECT SUM(movdet.QUANTIDADE), sum((coalesce(movdet.VLR_BASE, movdet.PRECO)*movdet.QUANTIDADE)+(coalesce(movdet.VIPI,0)+coalesce(movdet.FRETE,0)+coalesce(movdet.ICMS_SUBST,0)))
            FROM COMPRA c, MOVIMENTO mov, NATUREZAOPERACAO natu, MOVIMENTODETALHE movdet 
           WHERE c.CODMOVIMENTO = mov.CODMOVIMENTO 
             AND natu.CODNATUREZA = mov.CODNATUREZA 
             AND mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
             AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
             AND ((movdet.LOTE is null) or ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')))
             AND movdet.CODPRODUTO = :CODPRODUTO 
             AND natu.BAIXAMOVIMENTO = 0 
             AND movdet.BAIXA is not null  
             AND c.DATACOMPRA  BETWEEN UDF_INCDAY(:dataEstoqueMEs,1) and UDF_INCDAY(:DTA1,-1) 
            INTO :ENTRA, :VLR
      DO BEGIN     
        ENTRA = ENTRA + ENTRAEM;
        VLR = VLR + VLREM;
        if ((ENTRA > 0) AND (VLR > 0)) then 
          PRECOCUSTO = VLR / ENTRA;
        PRECOUNIT = PRECOCUSTO;    
        IF (ENTRA IS NULL) THEN 
          ENTRA = 0;  
        TOTENTRA = TOTENTRA + ENTRA;   
      END
      IF (ENTRA IS NULL) THEN 
      BEGIN
        ENTRA = 0;
        TOTENTRA = TOTENTRA + ENTRAEM;
      END
      if ((Entra = 0) and (entraEM > 0)) then 
      begin 
        totentra = totentra + entraEm;
      end
      
      /* Preco da Ultima Compra */
      
      FOR SELECT FIRST 1 coalesce(coalesce(movdet.VLR_BASE,0)+((coalesce(movdet.VIPI,0)+coalesce(movdet.FRETE,0)+coalesce(movdet.ICMS_SUBST,0))
         /coalesce(movdet.QUANTIDADE,1)),0)
            FROM COMPRA c, MOVIMENTO mov, MOVIMENTODETALHE movdet
           WHERE c.CODMOVIMENTO = mov.CODMOVIMENTO
             AND mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
             AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
             AND ((movdet.LOTE is null) or ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')))
             AND movdet.CODPRODUTO = :CODPRODUTO 
             AND mov.CODNATUREZA = 4
             AND movdet.BAIXA is not null  
             AND c.DATACOMPRA  < :DTA1 
             AND movdet.QUANTIDADE > 0
           ORDER BY c.DATACOMPRA DESC   
            INTO :PRECOCOMPRA
      DO BEGIN
        
      END
      /* Qtde Inicial SAIDA */
      FOR SELECT SUM(movdet.QUANTIDADE), sum(coalesce(movdet.VLR_BASE, movdet.PRECO) * movdet.QUANTIDADE) 
            FROM VENDA v, MOVIMENTO mov, NATUREZAOPERACAO natu , MOVIMENTODETALHE movdet
           WHERE v.CODMOVIMENTO = mov.CODMOVIMENTO 
             AND natu.CODNATUREZA = mov.CODNATUREZA  
             AND mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
             AND v.DATAVENDA  < :DTA1
             AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  
             AND ((movdet.LOTE is null) or ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')))
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
      
      CUSTOEM = 0;
      COMPRAEM = 0;
      
      if (ccusto = 1) then 
      begin
        select d1 from parametro where  parametro = 'CENTROCUSTO'
        into :ccusto;
      end
      
      select first 1 em.PRECOCOMPRA, em.PRECOCUSTO from ESTOQUEMES em 
       where em.MESANO = UDF_INCDAY(:dta1, -1) 
         and em.CODPRODUTO = :prod1
         and em.CENTROCUSTO = :ccusto
        into :COMPRAEM, :CUSTOEM;
  
      if (CUSTOEM IS NULL) THEN     
        CUSTOEM = 0;    
      if (COMPRAEM IS NULL) THEN     
        COMPRAEM = 0;    
      
      if (CUSTOEM > 0) then 
      begin
        PRECOCUSTO = CUSTOEM;
        PRECOUNIT = CUSTOEM;
      end        
      ACUMULAVLR  = PRECOCUSTO * SALDOINI;   
      ENTRA = 0;
      SAI = 0;
      TOTENTRA = 0;
      TOTSAI = 0;
      TOTPRECO = 0;
      /*VALORESTOQUE = ACUMULAVLR; */
      /*SUSPEND; */
      
    end  /* FIM IF -- CALCULA ESTOQUE INICIAL E PRECO INICIAL, SO FAZ UMA VEZ POR PRODUTO */

    IF (LOTES IS NULL) THEN
      LOTES = 'TODOS OS LOTES SISTEMA';                          

    IF (CODNATU IS NULL) THEN 
      CODNATU = 9;
            
    if ((codnatu = 0)  or (codnatu = 1)) then 
    begin 
      IMPRIME = 'N';
      /*anotacoes = ' aqui ' || codnatu; */
      /*suspend;  */
      CUSTOEM = 0;
      IF (CODNATU = 0) THEN 
      BEGIN
        /* Entrada */
        TOTENTRA = 0;
        TOTPRECO = 0;
        IMPRIME = 'S';              
        For SELECT sum(movdet.QUANTIDADE), sum((coalesce(movdet.VLR_BASE, movdet.PRECO) * movdet.QUANTIDADE)+(coalesce(movdet.VIPI,0)+coalesce(movdet.FRETE,0)+coalesce(movdet.ICMS_SUBST,0)))
                 ,coalesce(movdet.VLR_BASE, movdet.PRECO)
                 ,mov.DATAMOVIMENTO, movdet.CODDETALHE
              FROM MOVIMENTO mov, MOVIMENTODETALHE movdet 
             WHERE movdet.CODMOVIMENTO = mov.CODMOVIMENTO 
               AND mov.CODMOVIMENTO = :CODMOV 
               AND movdet.CODPRODUTO = :CODPRODUTO  
               AND movdet.BAIXA is not null 
               AND ((movdet.LOTE is null) or ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA')))
             GROUP BY movdet.CODDETALHE, mov.DATAMOVIMENTO, movdet.VLR_BASE,movdet.PRECO
             ORDER BY codDetalhe                  
              INTO :ENTRA, :VLR, :PRECOCOMPRA, :DATAMOVIMENTO, :CODDET
        do begin
          if (ENTRA IS NULL) then
            ENTRA = 0;
          COMPRAQT = COMPRAQT + ENTRA;  
          COMPRAVR = COMPRAVR + VLR;  
          TOTENTRA = TOTENTRA + ENTRA; /* Quantidade Entrou */
          TOTPRECO = TOTPRECO + VLR; /* Quantidade Entrou */
          /* PRIMEIRO VEJO O VALORDOESTOQUE ANTERIOIR ACUMULADO ANTES DESTA ENTRADA  */
          /*VALORESTOQUE = SALDOFIMACUM * PRECOCUSTO;           */
                 
          IF ((TOTENTRA > 0) AND (TOTPRECO > 0)) THEN   
            PRECOCUSTO = TOTPRECO/TOTENTRA; /* Preco Custo Desta Entrada */
            
          /*anotacoes = ' acumula ' || acumulaqtde || '-' || acumulavlr; */
          /*suspend;           */
          /* CALCULAR PRECO MEDIO   */
          IF ((ACUMULAQTDE + TOTENTRA) > 0) THEN 
          begin
            if ((acumulavlr > 0) and (acumulaqtde > 0)) then 
              PRECOCUSTO = (ACUMULAVLR + TOTPRECO)/(ACUMULAQTDE + TOTENTRA);                    
          end  
            
          PRECOUNIT = PRECOCUSTO;  
                 
          VALORVENDA = PRECOCOMPRA; /* Valor Ultima Compra (COMPRA/VENDA no Filtro) */
                   
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
    end /* FIM ENTRADAS   */
    
    
    /* Saida */
    IF (CODNATU = 1) THEN 
    BEGIN
      TOTSAI = 0;
      IMPRIME = 'S';
      FOR SELECT SUM(movdet.QUANTIDADE),sum(coalesce(movdet.VLR_BASE, movdet.PRECO) * movdet.QUANTIDADE)
           ,mov.DATAMOVIMENTO, coalesce(movdet.VLR_BASE, movdet.PRECO), movdet.CODDETALHE
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov
           WHERE movdet.CODMOVIMENTO = mov.CODMOVIMENTO
             AND movdet.CODMOVIMENTO = :CODMOV 
             AND movdet.CODPRODUTO = :CODPRODUTO   
             AND movdet.BAIXA is not null 
             AND ((movdet.LOTE is null) or ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA')))
           group by movdet.CODDETALHE, mov.DATAMOVIMENTO, movdet.VLR_BASE , movdet.PRECO
           order by movdet.CODDETALHE
            INTO :SAI, :VLR, :DATAMOVIMENTO, :VALORVENDA, :CODDET
      do begin
        if (sai is null) then 
          sai = 0;
        if (VLR is null) then 
          VLR = 0;
        TOTSAI = TOTSAI + SAI;  
        PRECOVENDA = VALORVENDA;
        
        /*anotacoes = 'natu = 1' || codnatu; */
        /*suspend; */
      end
      SAIDA = TOTSAI;
      ACUMULAQTDE = ACUMULAQTDE - SAIDA;
      ACUMULAVLR  = PRECOCUSTO * ACUMULAQTDE;
      
      /*anotacoes = 'saiu do for ' || codnatu; */
      /*suspend; */
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
    /*ENTRADA = TOTENTRA; */
    /*SAIDA = TOTSAI; */
      /* IF ((SALDOINI > 0) OR (SALDOFIM > 0) OR (ENTRADA > 0)  */
    SALDOFIM = SALDOINI + ENTRADA - SAIDA;
    IF (CODPRODU <> CODPRODUTO) THEN
      SALDOFIMACUM = SALDOFIM;    
 
    if (PRECOUNIT = 0) THEN 
      PRECOUNIT = PRECOCUSTO;
    VALORESTOQUE = SALDOFIMACUM * PRECOCUSTO;     
       
    IF (PRECOUNIT IS NULL) THEN   
      PRECOUNIT = PRECOCUSTO;
    
    IF ((COMPRAQT > 0) AND (COMPRAVR > 0)) THEN   
      PRECOCOMPRA = COMPRAVR/COMPRAQT; /* Preco Medio COMPRA     */
    
    IF (IMPRIME = 'S') THEN 
    begin
      /*IF ((CCUSTO = CCUSTOS) OR (CCUSTO = 1)) then */
      /* if ((LOTE = LOTES) OR (LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')) then */
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
    /*SUSPEND; */
    /*IF (CODPRODU <> CODPRODUTO) THEN     */
  END
  WHEN GDSCODE arith_except DO
  BEGIN
    /*SALDOFIMACUM = 99999999;     */
    /*precocompra = 0; */
    exception erro_proc ' ####  Erro no PRODUTO ****** ' || :codprod || ' ******. ####';
    /*suspend;   */
    exit; 
  END
  
END
