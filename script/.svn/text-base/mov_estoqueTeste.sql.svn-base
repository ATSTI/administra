SET TERM ^ ;

CREATE OR ALTER PROCEDURE MOV_ESTOQUETESTE 
 (codproduto integer) 
RETURNS 
 ( TesteValor           char(1),    -- Testa tab MOVIMENTODETALHE
   TesteEstoque         char(1),    -- Testa tab MOVIMENTODETALHE
   TestePrecoMedio      char(1),    -- Testa tab MOVIMENTODETALHE
   TesteEstoqueProd     char(1),    -- Testa tab PRODUTOS
   TestePrecoMedioProd  char(1),    -- Testa tab PRODUTOS
   debugar              varchar(300),
   Estoque              double PRECISION,
   PrecoMedio           double PRECISION, 
   VlrEstoque           double PRECISION 
   )
AS 
DECLARE VARIABLE EstoqueAtual       double PRECISION; 
DECLARE VARIABLE PrecoMedioAtual    double PRECISION; 
DECLARE VARIABLE VlrEstoqueAtual    double PRECISION; 
DECLARE VARIABLE EstoqueNovo        double PRECISION; 
DECLARE VARIABLE PrecoMedioNovo     double PRECISION; 
DECLARE VARIABLE VlrEstoqueNovo     double PRECISION; 
DECLARE VARIABLE EstoqueInserido    double PRECISION; 
DECLARE VARIABLE PrecoMedioInserido double PRECISION; 
DECLARE VARIABLE VlrEstoqueInserido double PRECISION; 
DECLARE VARIABLE DINI               Date;
DECLARE VARIABLE DFIM               Date;
BEGIN
    -- Apago o teste se ja foi feito
    Delete from Compra where codCompra = 9111333;
    Delete from MOVIMENTODETALHE where codMovimento = 911122201;
    Delete from Movimento where codMovimento = 9111222;

    DIni = CURRENT_DATE - 60;
    DFim = CURRENT_DATE;
    /* Testa a trigger Mov_estoque se esta atualizando corretamente os dados do estoque */ 
  
    -- Pego o estoque atual e preco medio antes deste movimento
    select first 1 md.PRECOCUSTO, md.QTDEESTOQUE from MOVIMENTO m , MOVIMENTODETALHE md where md.CODMOVIMENTO = m.CODMOVIMENTO 
        and md.CODPRODUTO = :codProduto  and m.DATAMOVIMENTO > :DIni order by m.DATAMOVIMENTO desc, m.CODMOVIMENTO desc
    into :PrecoMedioAtual, :EstoqueAtual;
    
    if (PrecoMedioAtual is null) then 
        PrecoMedioAtual = 0;

    if (EstoqueAtual is null) then 
        EstoqueAtual = 0;

    vlrEstoqueAtual = EstoqueAtual * PrecoMedioAtual;
    
    
    Estoque     = EstoqueAtual;
    PrecoMedio  = PrecoMEdioAtual;
    VlrEstoque  = vlrEstoqueAtual;
    Debugar     = 'Valores Antes da Inserir'; 
    Suspend;
    
    -- Inserindo uma Entrada (Compra) 
    INSERT INTO MOVIMENTO (CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE, CODNATUREZA, STATUS, CODUSUARIO, CODVENDEDOR, CODALMOXARIFADO, CODFORNECEDOR,
        DATA_SISTEMA)
        VALUES (9111222, :DFim, 0, 4, 0, 1, 1, 51, 0, :DFim);
    
    INSERT INTO MOVIMENTODETALHE (CODDETALHE, CODMOVIMENTO, CODPRODUTO, QUANTIDADE, PRECO, ICMS, UN, QTDE_ALT)
        VALUES (911122201, 9111222, :CodProduto, 100, 10, 0, 'kg', 0);
    
    INSERT INTO COMPRA (CODCOMPRA, CODMOVIMENTO, CODFORNECEDOR, DATACOMPRA, DATAVENCIMENTO, CODCOMPRADOR, STATUS, CODUSUARIO, 
        DATASISTEMA, VALOR, NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, FORMAPAGAMENTO, ENTRADA)
        VALUES (9111333, 9111222, 0, :DFim, :DFim + 30, 1, 0, 1, :DFim, 1000, 9111333, '', 0, 51, 1, 1, 0);
    
    EstoqueNovo     = EstoqueAtual + 100;
    VlrEstoqueNovo  = VlrEstoqueAtual + 1000;
    PrecoMedioNovo  = VlrEstoqueNovo / EstoqueNovo;
    
    Estoque     = EstoqueNovo;
    PrecoMedio  = PrecoMedioNovo;
    VlrEstoque  = VlrEstoqueNovo;
    Debugar     = 'Valores Inseridos Novos'; 
    Suspend;

    -- Pega os valores atualizados do estoque MOVIMENTODETALHE
    select first 1 md.PRECOCUSTO, md.QTDEESTOQUE from MOVIMENTO m , MOVIMENTODETALHE md where md.CODMOVIMENTO = m.CODMOVIMENTO 
        and md.CODPRODUTO = :codProduto  and m.DATAMOVIMENTO = :DFim
    into :PrecoMedioInserido, :EstoqueInserido;
    
    if (PrecoMedioInserido is null) then 
        PrecoMedioInserido = 0;

    if (EstoqueInserido is null) then 
        EstoqueInserido = 0;

    vlrEstoqueInserido = EstoqueInserido * PrecoMedioInserido;

    Estoque     = EstoqueInserido;
    PrecoMedio  = PrecoMEdioInserido;
    VlrEstoque  = vlrEstoqueInserido;
    Debugar     = 'Valores Atualizado do Estoque'; 
    Suspend;
    Estoque     = 0;
    PrecoMedio  = 0;
    VlrEstoque  = 0;
    Debugar     = '';

    TestePrecoMedio = 'N';
    if (PrecoMedioInserido = PrecoMedioNovo) then 
        TestePrecoMedio = 'S';
    
    TesteEstoque = 'N';
    if (EstoqueInserido = EstoqueNovo) then 
        TesteEstoque = 'S';
    
    TesteValor = 'N';
    --Debugar     = 'vlrIns - ' || Cast(UDF_ROUNDDEC(vlrEstoqueInserido, 2) as varchar(10)) || ' vlrNovo - ' || Cast(UDF_ROUNDDEC(VlrEstoqueNovo,2) as varchar(10));
    if (UDF_ROUNDDEC(vlrEstoqueInserido, 2) = UDF_ROUNDDEC(VlrEstoqueNovo,2)) then 
        TesteValor = 'S';

    -- Pega os valores atualizados do estoque PRODUTOS
    PrecoMedioInserido = 0;
    EstoqueInserido = 0;

    select p.PRECOMEDIO, p.ESTOQUEATUAL from PRODUTOS p where p.CODPRODUTO = :codProduto 
    into :PrecoMedioInserido, :EstoqueInserido;
    
    if (PrecoMedioInserido is null) then 
        PrecoMedioInserido = 0;

    if (EstoqueInserido is null) then 
        EstoqueInserido = 0;

    vlrEstoqueInserido = EstoqueInserido * PrecoMedioInserido;

    TestePrecoMedioProd = 'N';
    if (UDF_ROUNDDEC(PrecoMedioInserido,2) = UDF_ROUNDDEC(PrecoMedioNovo,2)) then 
        TestePrecoMedioProd = 'S';
    
    TesteEstoqueProd = 'N';
    if (EstoqueInserido = EstoqueNovo) then 
        TesteEstoqueProd = 'S';
       
    debugar = 'Teste Inserindo';    
    suspend;
    
    TestePrecoMedioProd = '';
    TesteEstoqueProd    = '';
    TesteValor          = '';
    TesteEstoque        = '';
    TestePrecoMedio     = '';
    -- ############# Teste Editando ###########
    
    UPDATE MOVIMENTODETALHE  SET QUANTIDADE = 150 WHERE CODDETALHE = 911122201;

    EstoqueNovo     = EstoqueNovo + 50;
    VlrEstoqueNovo  = VlrEstoqueNovo + 500;
    PrecoMedioNovo  = VlrEstoqueNovo / EstoqueNovo;
       
    -- Pega os valores atualizados do estoque MOVIMENTODETALHE
    select first 1 md.PRECOCUSTO, md.QTDEESTOQUE from MOVIMENTO m , MOVIMENTODETALHE md where md.CODMOVIMENTO = m.CODMOVIMENTO 
        and md.CODPRODUTO = :codProduto  and m.DATAMOVIMENTO = :DFim
    into :PrecoMedioInserido, :EstoqueInserido;
    
    if (PrecoMedioInserido is null) then 
        PrecoMedioInserido = 0;

    if (EstoqueInserido is null) then 
        EstoqueInserido = 0;

    vlrEstoqueInserido = EstoqueInserido * PrecoMedioInserido;

    Estoque     = EstoqueInserido;
    PrecoMedio  = PrecoMEdioInserido;
    VlrEstoque  = vlrEstoqueInserido;
    Debugar     = 'Valores Atualizado do Estoque'; 
    Suspend;
    Estoque     = 0;
    PrecoMedio  = 0;
    VlrEstoque  = 0;
    Debugar     = '';

    TestePrecoMedio = 'N';
    if (PrecoMedioInserido = PrecoMedioNovo) then 
        TestePrecoMedio = 'S';
    
    TesteEstoque = 'N';
    if (EstoqueInserido = EstoqueNovo) then 
        TesteEstoque = 'S';
    
    TesteValor = 'N';
    --Debugar     = 'vlrIns - ' || Cast(UDF_ROUNDDEC(vlrEstoqueInserido, 2) as varchar(10)) || ' vlrNovo - ' || Cast(UDF_ROUNDDEC(VlrEstoqueNovo,2) as varchar(10));
    if (UDF_ROUNDDEC(vlrEstoqueInserido, 2) = UDF_ROUNDDEC(VlrEstoqueNovo,2)) then 
        TesteValor = 'S';

    -- Pega os valores atualizados do estoque PRODUTOS
    PrecoMedioInserido = 0;
    EstoqueInserido = 0;

    select p.PRECOMEDIO, p.ESTOQUEATUAL from PRODUTOS p where p.CODPRODUTO = :codProduto 
    into :PrecoMedioInserido, :EstoqueInserido;
    
    if (PrecoMedioInserido is null) then 
        PrecoMedioInserido = 0;

    if (EstoqueInserido is null) then 
        EstoqueInserido = 0;

    vlrEstoqueInserido = EstoqueInserido * PrecoMedioInserido;

    TestePrecoMedioProd = 'N';
    if (UDF_ROUNDDEC(PrecoMedioInserido,2) = UDF_ROUNDDEC(PrecoMedioNovo,2)) then 
        TestePrecoMedioProd = 'S';
    
    TesteEstoqueProd = 'N';
    if (EstoqueInserido = EstoqueNovo) then 
        TesteEstoqueProd = 'S';
       
    debugar = 'Teste Alterando Quantidade';    
    suspend;    
    
END^

SET TERM ; ^
