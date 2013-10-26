create or ALTER PROCEDURE LISTA_ESTOQUE (
    MES date )
RETURNS (
    CODPRODUTO integer,
    COD_BARRA varchar(20),
    CODPRO varchar(15),
    PRODUTO varchar(300),
    PRECO_VENDA double precision,
    PRECO_COMPRAULTIMO double precision,
    QTDE_PCT double precision,
    UNIDADEMEDIDA char(2),
    GRUPO varchar(30),
    SUBGRUPO varchar(30),
    MARCA varchar(30),
    ESTOQUEATUAL double precision,
    PEDIDO double precision,
    CODALMOXARIFADO integer,
    ICMS double precision,
    IPI double precision,
    TIPO varchar(10),
    LOCALIZACAO varchar(50),
    LOTES char(1),
    PESO_QTDE double precision,
    PRECO_COMPRAMEDIO double precision,
    MARGEM double precision,
    CODIGO varchar(15),
    USO varchar(150),
    USA char(3),
    COD_COMISSAO integer,
    RATEIO char(1),
    CONTA_DESPESA varchar(15),
    APLICACAO_PRODUTO varchar(30),
    MESANO date,
    ESTOQUEMAXIMO double precision,
    ESTOQUEMINIMO double precision,
    ESTOQUEREPOSICAO double precision,
    LOTE varchar(60) )
AS
declare variable precovenda double precision;
declare variable precoc double precision;
declare variable customateriaprima double precision;
declare variable tipopreco char(1);
declare variable tipoprecoparametro varchar(20);
declare variable usalistaterceiros char(1);
declare variable ccusto integer;
declare variable jaimprimiu char(1);
declare variable prodimpresso integer;
begin
    CCusto = 0;
    jaImprimiu = 'N';
    prodImpresso = 0;
    
    SELECT CAST(D1 AS INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CENTROCUSTO'
    INTO :CCusto;
    
    if (ccusto is null) then 
      CCusto = 0;
    
    
    /* Verificando que tipo de Preco e usado pelo Cliente  (Preco Medio ou o ultimo   */
    /* Preco no calculo do estoque)                                                   */
    SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
    INTO :tipoPrecoParametro;

    SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'PRECOLISTA'
    INTO :usaListaTerceiros;
    if (usaListaTerceiros is null) then
      usaListaTerceiros = 'N';
  For Select distinct q.CODPRODUTO, q.MESANO from ESTOQUEMES q where q.MESANO between (:MES-40) and :MES order by q.CODPRODUTO, q.MESANO desc 
    into :codProduto, :mesAno
  do begin
    if (prodImpresso <> codProduto) then 
      jaImprimiu = 'N';
    else   
      jaImprimiu = 'S';
          
    if (jaImprimiu = 'N') then 
    begin
      prodImpresso = codProduto; 
      for select p.CODPRO, p.cod_barra, p.produto, p.qtde_pct, p.unidademedida,
        p.familia, p.categoria, p.marca, p.codalmoxarifado, p.icms, p.tipo, p.localizacao,
        p.LOTES, p.margem, p.VALOR_PRAZO, p.TIPOPRECOVENDA, uso.DESCRICAO, cod.CODIGO, p.USA,
        p.COD_COMISSAO, p.RATEIO, p.CONTA_DESPESA, p.PESO_QTDE, p.IPI, p.VALORUNITARIOATUAL, p.CLASSIFIC_FISCAL,
        p.estoquemaximo,p.estoqueminimo ,p.estoquereposicao
      from produtos p
      left outer join USO_PRODUTO uso  on uso.COD_PRODUTO = p.CODPRODUTO
      left outer join CODIGOS cod on cod.COD_PRODUTO = p.CODPRODUTO
      where p.CODPRODUTO = :codProduto
      into :codPro, :cod_barra, :produto, :qtde_pct, :unidadeMedida,
        :grupo, :subGrupo, :marca, :codAlmoxarifado, :icms, :tipo, :localizacao, :lotes, :margem,
        :precoVenda, :tipoPreco, :uso , :codigo, :usa, :cod_comissao, :rateio , :conta_despesa,
        :peso_qtde, :ipi, :precoc, :Aplicacao_Produto , :estoquemaximo, :estoqueminimo, :estoquereposicao
      do begin
  
      if (codAlmoxarifado is null) then 
        codAlmoxarifado = 0;
      
      if (codAlmoxarifado > 0) then 
        cCusto = codAlmoxarifado;
  
      Preco_venda = precoVenda;
      if (preco_venda is null) then
        preco_venda = 0;

      if (margem is null) then
        margem = 0;

      if (usaListaTerceiros = 'N') then
      select sum(quantidade) from MOVIMENTODETALHE d
       inner join movimento m on m.CODMOVIMENTO = d.CODMOVIMENTO
       where codProduto = :codProduto and m.STATUS = 1
        into :pedido;
      
      if (pedido is null) then
        pedido = 0;

      if (usaListaTerceiros = 'N') then
      begin
        if (CCusto = 0) then 
        begin 
          For select m.PRECOCUSTO, m.SALDOESTOQUE, m.PRECOCOMPRA ,m.mesano ,m.lote  from ESTOQUEMES m
               where m.CODPRODUTO = :codProduto and m.MESANO = :mesAno
                into :preco_compraMedio, :estoqueAtual, :preco_compraUltimo , :mesano ,:lote
            do begin
              if (preco_compraMedio is null) then
                preco_compraMedio = 0;
        
              if (preco_compraUltimo is null) then
                preco_compraUltimo = 0;
        
              if (estoqueAtual is null) THEN
                estoqueAtual = 0;
        
              /*estoqueAtual = estoqueAtual - pedido; */
              if (usaListaTerceiros = 'N') then
                if (tipoPrecoParametro = 'PRECOMEDIO') then
                begin
                  if ((margem > 0) and (preco_compraMedio > 0)) then
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
                if (tipoPreco = 'F') then  /* Preco de Venda que estÃ¡ no cadastro Produto; */
                begin
                  if (precoVenda > 0) then
                    Preco_venda = precoVenda;
                end
        
              if (usaListaTerceiros = 'N') then
                if (tipoPreco = 'M') then /* Preco de Venda = PreÃ§o MÃ©dio de Compra * Margem; */
                begin
                  if (preco_compraMedio > 0) then
                    if (margem > 0) then
                      Preco_venda = preco_compraMedio * (1 + (margem / 100));
                end
        
              if (usaListaTerceiros = 'N') then
                if (tipoPreco = 'U') then /* Preco de Venda = PreÃ§o Ultima Compra * Margem; */
                begin
                  if (preco_compraUltimo > 0) then
                    if (margem > 0) then
                      Preco_venda = preco_compraUltimo * (1 + (margem / 100));
                end
        
              if (usaListaTerceiros = 'N') then
                if (tipoPreco is null) then  /* Preco de Venda que está no cadastro Produto; */
                begin
                  if (precoVenda > 0) then
                    Preco_venda = precoVenda;
                end
                
                
                
              if (preco_compraMedio is null) then
                preco_compraMedio = precoc;
                
                
              if (preco_compraMedio = 0) then
                preco_compraMedio = custoMateriaPrima;
        
              if (preco_compraUltimo = 0) then
                preco_compraUltimo = precoc;
              if (preco_compraMedio = 0) then
                preco_compraMedio = precoc;
              suspend;
              preco_compraMedio = 0;
              preco_compraUltimo = 0;
              estoqueAtual = 0;
            end
        end 
        else begin 
          for select m.PRECOCUSTO, m.SALDOESTOQUE, m.PRECOCOMPRA , m.mesano ,m.lote  from ESTOQUEMES m
            where m.CODPRODUTO = :codProduto and m.MESANO = :mesAno
              and m.CENTROCUSTO = :CCusto
            order by m.MESANO DESC
          into :preco_compraMedio, :estoqueAtual, :preco_compraUltimo , :mesano ,:lote
          do begin
            if (preco_compraMedio is null) then
              preco_compraMedio = precoc;
        
            if (preco_compraUltimo is null) then
              preco_compraUltimo = 0;
        
            if (estoqueAtual is null) THEN
              estoqueAtual = 0;
        
            /*estoqueAtual = estoqueAtual - pedido; */
            if (usaListaTerceiros = 'N') then
            if (tipoPrecoParametro = 'PRECOMEDIO') then
            begin
              if ((margem > 0) and (preco_compraMedio > 0)) then
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
            if (tipoPreco = 'F') then  /* Preco de Venda que estÃ¡ no cadastro Produto; */
            begin
              if (precoVenda > 0) then
                Preco_venda = precoVenda;
            end
        
            if (usaListaTerceiros = 'N') then
            if (tipoPreco = 'M') then /* Preco de Venda = PreÃ§o MÃ©dio de Compra * Margem; */
            begin
              if (preco_compraMedio > 0) then
              if (margem > 0) then
                Preco_venda = preco_compraMedio * (1 + (margem / 100));
            end
        
            if (usaListaTerceiros = 'N') then
            if (tipoPreco = 'U') then /* Preco de Venda = PreÃ§o Ultima Compra * Margem; */
            begin
              if (preco_compraUltimo > 0) then
              if (margem > 0) then
                Preco_venda = preco_compraUltimo * (1 + (margem / 100));
            end
        
            if (usaListaTerceiros = 'N') then
            if (tipoPreco is null) then  /* Preco de Venda que está no cadastro Produto; */
            begin
              if (precoVenda > 0) then
                Preco_venda = precoVenda;
            end
            if (preco_compraMedio = 0) then
              preco_compraMedio = custoMateriaPrima;
        
            if (preco_compraUltimo = 0) then
              preco_compraUltimo = precoc;
            if (preco_compraMedio = 0) then
              preco_compraMedio = precoc;
              
            if (preco_compraMedio is null) then
              preco_compraMedio = precoc;
              
              
            suspend;
            preco_compraMedio = 0;
            preco_compraUltimo = 0;
            estoqueAtual = 0;
           end
        end   
      end 
    end
  end  
  end   /* Ja Imprimiu  */
  /*else begin
    --if ( 
  end */   
end