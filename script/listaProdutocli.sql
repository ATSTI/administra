set term ^ ;
CREATE OR ALTER PROCEDURE LISTAPRODUTOCLI(
  CODP INTEGER,
  CODPROD VARCHAR(15) CHARACTER SET WIN1252,
  GP VARCHAR(30) CHARACTER SET WIN1252,
  SUBGP VARCHAR(30) CHARACTER SET WIN1252,
  MC VARCHAR(30) CHARACTER SET WIN1252,
  cli integer,
  APLICACAO VARCHAR(30) CHARACTER SET WIN1252,
  LOCAL INTEGER
)

RETURNS(
  CODPRODUTO INTEGER,
  COD_BARRA VARCHAR(20) CHARACTER SET WIN1252,
  CODPRO VARCHAR(15) CHARACTER SET WIN1252,
  PRODUTO VARCHAR(300) CHARACTER SET WIN1252,
  PRECO_VENDA DOUBLE PRECISION,
  PRECO_COMPRAULTIMO DOUBLE PRECISION,
  QTDE_PCT DOUBLE PRECISION,
  UNIDADEMEDIDA CHAR(2) CHARACTER SET WIN1252,
  GRUPO VARCHAR(30) CHARACTER SET WIN1252,
  SUBGRUPO VARCHAR(30) CHARACTER SET WIN1252,
  MARCA VARCHAR(30) CHARACTER SET WIN1252,
  ESTOQUEATUAL DOUBLE PRECISION,
  PEDIDO DOUBLE PRECISION,
  CODALMOXARIFADO INTEGER,
  ICMS DOUBLE PRECISION,
  IPI DOUBLE PRECISION,
  TIPO VARCHAR(10) CHARACTER SET WIN1252,
  LOCALIZACAO VARCHAR(50) CHARACTER SET WIN1252,
  LOTES CHAR(1) CHARACTER SET WIN1252,
  PESO_QTDE DOUBLE PRECISION,
  PRECO_COMPRAMEDIO DOUBLE PRECISION,
  MARGEM DOUBLE PRECISION,
  CODIGO VARCHAR(15) CHARACTER SET WIN1252,
  USO VARCHAR(150) CHARACTER SET WIN1252,
  USA CHAR(3) CHARACTER SET WIN1252,
  COD_COMISSAO INTEGER,
  RATEIO CHAR(1) CHARACTER SET WIN1252,
  CONTA_DESPESA VARCHAR(15) CHARACTER SET WIN1252,
  APLICACAO_PRODUTO VARCHAR(30)  CHARACTER SET WIN1252,
  OBS VARCHAR(300)  CHARACTER SET WIN1252,
  ORIGEM VARCHAR(15) CHARACTER SET WIN1252,
  NCM VARCHAR(8) CHARACTER SET WIN1252
  )
AS
declare variable precoVenda double PRECISION;
  declare variable CustoMateriaPrima double PRECISION;
  declare variable precoc double PRECISION;
  declare variable tipoPreco char(1);
  declare variable tipoPrecoParametro Varchar(20);
  declare variable usaListaTerceiros char(1);
  declare variable precocliente double PRECISION;
  declare variable CCusto INTEGER;
  declare variable CCustoV INTEGER;
  declare variable usaListaPreco char(1);
  declare variable pdv char(1);
  declare variable CodLista INTEGER;
  declare variable CodListaCli INTEGER;
  declare variable PrecoCustoFixo char(1);
begin
  -- versao 2.0.0.20
    CCusto = 0;
    pdv = 'N';
        
    SELECT CAST(D1 AS INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CENTROCUSTO'
    INTO :CCusto;
    
    PrecoCustoFixo = 'N';
    SELECT CASE WHEN D1 = 'PRECOCUSTOFIXO' THEN 'S' ELSE 'N' END FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
    INTO PrecoCustoFixo;    

    SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'PDV'
    INTO :PDV;
    
    if (pdv is null) then 
      pdv = 'N';
    
    if (ccusto is null) then 
      CCusto = 0;
    
    CCustoV = CCusto;
    
    usaListaPreco = 'N';  
    -- SE USA LISTA de PRECO e TEM UMA ATIVA ENTAO SO BUSCA LA
    SELECT first 1 r.CODLISTA, 'S' as usaLista
      FROM LISTAPRECO_VENDA r 
     WHERE r.DATAFINAL >= current_date    
       AND r.VALIDADE >= current_date
       AND ((r.NOMELISTA = :APLICACAO) OR (:APLICACAO = 'TODASAPLICACOES'))
      INTO :codLista, :usaListaPreco; 
    if (usaListaPreco = 'S') then  
    begin  
      codListaCli = 0;
      select NUMERO from CLIENTES where codcliente = :CLI 
       into :codListaCli;
       
       if (codListaCli is null) then 
         codListaCli = 0;

       if (codListaCli > 0) then   
         codLista = codListaCli;        
         
       if (codListaCli = 0) then 
       begin
         -- busca a lista padrao    
         select D4 from parametro where parametro = 'LISTAPRECO' 
           INTO :codLista; 
       end   
       
      for SELECT r.CODPRODUTO, p.CODPRO, p.COD_BARRA, r.PRODUTO, p.QTDE_PCT, p.UNIDADEMEDIDA, 
        p.familia, p.categoria, p.marca, p.codalmoxarifado, p.icms, p.tipo, p.localizacao,
        p.LOTES, r.MARGEMMAX, r.PRECOVENDA VALOR_PRAZO, 'DESCRICAO USO' as DESCRICAO, 
        '1' as CODIGO, p.USA, p.COD_COMISSAO, p.RATEIO, p.CONTA_DESPESA, p.PESO_QTDE, p.IPI, p.VALORUNITARIOATUAL, p.CLASSIFIC_FISCAL,
        p.OBS, p.ESTOQUEATUAL, p.PRECOMEDIO, p.ORIGEM, p.NCM 
        FROM LISTAPRECO_VENDADET r, PRODUTOS p 
       WHERE r.CODPRODUTO = p.CODPRODUTO
         AND r.CODLISTA = :codLista  
         AND ((p.CODPRO = :codProd) OR (:codProd = 'TODOSPRODUTOS'))
         and ((p.CODPRODUTO = :codP) or (:codP = 0))
         and ((p.FAMILIA = :gp) or (:gp = 'TODOSGRUPOS'))
         and ((p.CATEGORIA = :subgp) or (:subgp = 'TODOSSUBGRUPOS'))
         and ((p.MARCA = :mc) OR (:mc = 'TODASMARCAS'))
         and ((p.CLASSIFIC_FISCAL = :Aplicacao) OR (:Aplicacao = 'TODASAPLICACOES'))
         and ((p.CODALMOXARIFADO = :Local) OR (:Local = 0))      
        into :codProduto, :codPro, :cod_barra, :produto, :qtde_pct, :unidadeMedida,
       :grupo, :subGrupo, :marca, :codAlmoxarifado, :icms, :tipo, :localizacao, :lotes, :margem,
       :precoVenda, :uso , :codigo, :usa, :cod_comissao, :rateio , :conta_despesa, :peso_qtde, 
       :ipi, :precoc, :aplicacao_produto, :obs, :estoqueAtual, :preco_compraMedio, :origem, :ncm
       do begin
       
         /* deixa lento
         -- 09/10/17 coloquei isto na soperfil estava dando erro no estoque 
         select coalesce(ev.SALDOFIMACUM,0)
          from ESTOQUE_VIEW_CUSTO(current_date, :codProduto, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
          into :ESTOQUEATUAL;        
          */
       
         tipoPreco = 'F'; 
         if (codAlmoxarifado is null) then 
            codAlmoxarifado = 0;

         cCustoV = codAlmoxarifado;
          
         preco_compraUltimo = precoc;     
          
         Preco_venda = precoVenda;
         if (preco_venda is null) then
           preco_venda = 0;

         if (margem is null) then
           margem = 0;
      
         IF (PRECOC IS NULL) THEN 
           PRECOC = 0;  
        
         select sum(quantidade) from MOVIMENTODETALHE d
          inner join movimento m on m.CODMOVIMENTO = d.CODMOVIMENTO
          where codProduto = :codProduto and m.STATUS = 1
           into :pedido;
         
         if (pedido is null) then
           pedido = 0;

         if (preco_compraMedio is null) then
           preco_compraMedio = 0;
      
         IF (PRECO_COMPRAMEDIO = 0) THEN 
           PRECO_COMPRAMEDIO = PRECOC;  

         if (preco_compraUltimo is null) then
           preco_compraUltimo = 0;

         if (estoqueAtual is null) THEN
           estoqueAtual = 0;

         estoqueAtual = estoqueAtual - pedido;
         
         if (PrecoCustoFixo = 'S') then 
         begin
           preco_compraUltimo = preco_compraMedio;
         end         
         
         suspend;
         CCustoV = CCusto;
         preco_compraMedio = 0;
         preco_compraUltimo = 0;
         estoqueAtual = 0;
       end 
    end  -- fim do IF usaListaPreco = S  




    if (usaListaPreco = 'N') then  
    begin  
    /* Verificando que tipo de Preco e usado pelo Cliente  (Preco Medio ou o ultimo   */
    /* Preco no calculo do estoque)                                                   */
    SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
    INTO :tipoPrecoParametro;

    SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'LISTAPRECO'
    INTO :usaListaTerceiros;
    if (usaListaTerceiros is null) then
      usaListaTerceiros = 'N';
  for select p.codProduto, p.CODPRO, p.cod_barra, p.produto, p.qtde_pct, p.unidademedida,
    p.familia, p.categoria, p.marca, p.codalmoxarifado, p.icms, p.tipo, p.localizacao,
    p.LOTES, p.margem, p.VALOR_PRAZO, p.TIPOPRECOVENDA, uso.DESCRICAO, cod.CODIGO, p.USA,
    p.COD_COMISSAO, p.RATEIO, p.CONTA_DESPESA, p.PESO_QTDE, p.IPI, p.VALORUNITARIOATUAL, p.CLASSIFIC_FISCAL,
     p.OBS, p.ESTOQUEATUAL, COALESCE(p.PRECOMEDIO,0), p.ORIGEM, p.NCM
    from produtos p
    left outer join USO_PRODUTO uso  on uso.COD_PRODUTO = p.CODPRODUTO
    left outer join CODIGOS cod on cod.COD_PRODUTO = p.CODPRODUTO
    where ((p.CODPRO = :codProd) OR (:codProd = 'TODOSPRODUTOS'))
      and ((p.CODPRODUTO = :codP) or (:codP = 0))
      and ((p.FAMILIA = :gp) or (:gp = 'TODOSGRUPOS'))
      and ((p.CATEGORIA = :subgp) or (:subgp = 'TODOSSUBGRUPOS'))
      and ((p.MARCA = :mc) OR (:mc = 'TODASMARCAS'))
      and ((p.CLASSIFIC_FISCAL = :Aplicacao) OR (:Aplicacao = 'TODASAPLICACOES'))
      and ((p.CODALMOXARIFADO = :Local) OR (:Local = 0))      
      --and ((p.PRODUTO = :ProdutoDesc) or (:ProdutoDesc = 'TODOSPRODUTOS'))
      --and ((p.COD_BARRA = :codBarra) OR (:codBarra = 'CODIGOBARRA'))
      --and ((p.TIPO = :tipoProduto) OR (:tipoProduto = 'TODOSTIPOS'))
  into :codProduto, :codPro, :cod_barra, :produto, :qtde_pct, :unidadeMedida,
    :grupo, :subGrupo, :marca, :codAlmoxarifado, :icms, :tipo, :localizacao, :lotes, :margem,
    :precoVenda, :tipoPreco, :uso , :codigo, :usa, :cod_comissao, :rateio , :conta_despesa, :peso_qtde, 
    :ipi, :precoc, :aplicacao_produto, :obs, :estoqueAtual, :preco_compraMedio, :origem, :ncm 
  do begin
  
    if (codAlmoxarifado is null) then 
      codAlmoxarifado = 0;
      
    if (precoc is null) then 
      precoc = 0;  
      
    --if (codAlmoxarifado > 0) then 
    cCustoV = codAlmoxarifado;
  
    /* deixa lento 
    -- 09/10/17 coloquei isto na soperfil estava dando erro no estoque 
    select coalesce(ev.SALDOFIMACUM,0)
      from ESTOQUE_VIEW_CUSTO(current_date, :codProduto, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev 
      into :ESTOQUEATUAL;           
    */  
    
    preco_compraUltimo = precoc;     
          
    Preco_venda = precoVenda;
    if (preco_venda is null) then
      preco_venda = 0;

    if (margem is null) then
      margem = 0;
      
    IF (PRECOC IS NULL) THEN 
      PRECOC = 0;  

    --if (usaListaTerceiros = 'N') then
    if (pdv = 'N') then 
    begin
      select sum(quantidade) from MOVIMENTODETALHE d
        inner join movimento m on m.CODMOVIMENTO = d.CODMOVIMENTO
        where codProduto = :codProduto and m.STATUS = 1
    into :pedido;
    end 
    if (pedido is null) then
      pedido = 0;

    if (preco_compraMedio is null) then
      preco_compraMedio = 0;
      
    IF (PRECO_COMPRAMEDIO = 0) THEN 
      PRECO_COMPRAMEDIO = PRECOC;  

    if (preco_compraUltimo is null) then
      preco_compraUltimo = 0;

    if (estoqueAtual is null) THEN
      estoqueAtual = 0;

    estoqueAtual = estoqueAtual - pedido;
    if (usaListaTerceiros = 'N') then
    if (tipoPrecoParametro = 'PRECOMEDIO') then
    begin
      if (margem > 0) then
        Preco_venda = preco_compraMedio * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPrecoParametro = 'ULTIMOPRECO') then
    begin
      if (preco_compraUltimo > 0) then
      if (margem > 0) then
        Preco_venda = preco_compraUltimo * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPrecoParametro = 'NAOALTERA') then
    begin
      if (precoVenda > 0) then
        Preco_venda = precoVenda;
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco = 'F') then  -- Preco de Venda que estao no cadastro Produto;
    begin
      if (precoVenda > 0) then
        Preco_venda = precoVenda;
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco = 'M') then -- Preco de Venda = Precoo Medio de Compra * Margem;
    begin
      if (preco_compraMedio > 0) then
      if (margem > 0) then
        Preco_venda = preco_compraMedio * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco = 'U') then -- Preco de Venda = Preco Ultima Compra * Margem;
    begin
      if (preco_compraUltimo > 0) then
      if (margem > 0) then
        Preco_venda = preco_compraUltimo * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco is null) then  -- Preco de Venda que esta no cadastro Produto;
    begin
      if (precoVenda > 0) then
        Preco_venda = precoVenda;
    end

    /* O custo do produto e baseado em cima das materias primas */
    if (pdv = 'N') then 
    begin

      for select sum(m.QTDEUSADA * (case when p.VALORUNITARIOATUAL is null then p.PRECOMEDIO
       when p.VALORUNITARIOATUAL = 0 then p.PRECOMEDIO
       else p.VALORUNITARIOATUAL end ))
      from MATERIA_PRIMA m
        inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODMP
        where m.CODPRODUTO = :codProduto
      into :custoMateriaPrima
      do begin 
        if (custoMateriaPrima is null) then 
          custoMateriaPrima = 0;
        if (custoMateriaPrima > 0) then         
          preco_compraMedio = custoMateriaPrima;
      end
    end

    if (preco_compraUltimo = 0) then
      preco_compraUltimo = precoc;
    if (preco_compraMedio = 0) then
      preco_compraMedio = precoc;

    if (usaListaTerceiros = 'S') then
    begin
      select FIRST 1 l.PRECOLISTA, l.DESCR FROM listapreco l where l.codfornecedor = :cli and l.codProduto = :codProduto
      into :precocliente, :produto;
      if (precocliente is null) then
         precocliente = 0;
      if (precocliente > 0) then
       Preco_venda = precocliente;
      precocliente = 0;
    end
    if (preco_compraMedio is null) then
      preco_compraMedio = 0;
    suspend;
    CCustoV = CCusto;
    preco_compraMedio = 0;
    preco_compraUltimo = 0;
    estoqueAtual = 0;
  end
  end -- fim do if  usaListaPreco = N
end
