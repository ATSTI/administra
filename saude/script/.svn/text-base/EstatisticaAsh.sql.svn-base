set term ^;
CREATE or alter PROCEDURE  ESTATISTICAASH( PDATA1                           DATE
                               , PDATA2                           DATE )
RETURNS ( DESPESA                          VARCHAR( 100 )
        , NAOIDENTIFICADO                  DOUBLE PRECISION
        , FAIXA1                           DOUBLE PRECISION
        , FAIXA2                           DOUBLE PRECISION
        , FAIXA3                           DOUBLE PRECISION
        , FAIXA4                           DOUBLE PRECISION
        , FAIXA5                           DOUBLE PRECISION
        , FAIXA6                           DOUBLE PRECISION
        , FAIXA7                           DOUBLE PRECISION
        , FAIXA8                           DOUBLE PRECISION
        , FAIXA9                           DOUBLE PRECISION
        , FAIXA10                          DOUBLE PRECISION
        , PARTICULAR                       DOUBLE PRECISION
        , IMPOSTO                          DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , GRUPO                            CHAR( 1 )
        , ORDEM                            CHAR( 2 ) )
AS
declare variable item integer;
  declare variable quemUsou integer;
  declare variable faixa smallint;
  declare variable tipo varchar(10);
  declare variable imprime smallint;
  declare variable valor double precision;
  declare variable DOACAO VARCHAR (50);


begin
  /* Loop pelo Produtos , cada produto vai ser utilizado pra ver se tem despesa pra ele*/
  grupo = '1';
  imprime = 0;
  imposto = 0;

 SELECT sum(c.DESCONTO)
       FROM  compra c 
       where c.DATAVENCIMENTO between :pData1 and :pData2   
      into :Imposto;

  For Select CODPRODUTO , PRO_COD  FROM PRODUTOS order by pro_cod
   into :item , :ORDEM
  do begin 
    faixa1 = 0;
    faixa2 = 0;
    faixa3 = 0;
    faixa4 = 0;
    faixa5 = 0;
    faixa6 = 0;
    faixa7 = 0;
    faixa8 = 0;
    faixa9 = 0;
    faixa10 = 0;
    particular = 0;
    total = 0;
    naoIdentificado = 0;
   
   
 /* Busco os Lançamentos dos Pagamentos */
    For SELECT d.codAlmoxarifado, p.Produto, sum(d.VALTOTAL) as VALOR       
       FROM MOVIMENTO a, MOVIMENTODETALHE d, PRODUTOS p 
       inner join compra c on c.CODMOVIMENTO = a.CODMOVIMENTO       
       where d.codmovimento = a.CODMOVIMENTO 
       and p.codproduto = d.codproduto 
       and a.CODNATUREZA = 4 and d.codproduto = :item 
       and c.DATAVENCIMENTO between :pData1 and :pData2 and d.CODALMOXARIFADO IS NOT NULL 
        and a.CODFORNECEDOR is not null 
       group by d.codAlmoxarifado, p.Produto order by d.codAlmoxarifado 
       into :quemUsou, :DESPESA, :valor 
    do begin 
      Select c.COD_FAIXA, c.GRUPO_CLIENTE , c.RAZAOSOCIAL from clientes c where c.codCliente = :quemUsou
        into :faixa, :tipo ,:DOACAO; 
        if ((faixa is null) and (tipo is null)) then  
        begin 
          naoIdentificado = naoIdentificado + valor; 
          imprime = 1;
        end 
      
      IF (DOACAO = 'ASH') then
        tipo = 'ASH';   

      if (tipo = 'ASH') then 
      begin  
      if (faixa = 1) then 
      begin 
        faixa1 = faixa1 + valor; 
        imprime = 1;
      end 
      if (faixa = 2) then 
      begin 
        faixa2 = faixa2 + valor; 
        imprime = 1;
      end 
      if (faixa = 3) then 
      begin 
        faixa3 = faixa3 + valor; 
        imprime = 1;
      end 
      if (faixa = 4) then 
      begin 
        faixa4 = faixa4 + valor; 
        imprime = 1;
      end 
      if (faixa = 5) then 
      begin 
        faixa5 = faixa5 + valor; 
        imprime = 1;
      end 
      if (faixa = 6) then 
      begin 
        faixa6 = faixa6 + valor; 
        imprime = 1;
      end 
      if (faixa = 7) then 
      begin 
        faixa7 = faixa7 + valor; 
        imprime = 1;
      end 
      if (faixa = 8) then 
      begin 
        faixa8 = faixa8 + valor; 
        imprime = 1;
      end 
      if (faixa = 9) then 
      begin 
        faixa9 = faixa9 + valor; 
        imprime = 1;
      end 
      if (faixa = 10) then 
      begin 
        faixa10 = faixa10 + valor; 
        imprime = 1;
      end 
      end -- fim IF TIPO = ASH
      IF (tipo = 'PARTICULAR') then 
      begin
        particular = particular + valor;
        imprime = 1; 
      end          
    end --Fim dos Loop para os lançamentos
    if (imprime = 1) then 
    begin 
      total = naoIdentificado+faixa1+faixa2+faixa3+faixa4+faixa5+faixa6+faixa7+faixa8+faixa9+faixa10+particular;
      Suspend; 
    end 
    imprime = 0;
    total = 0;
  end -- Fim do Loop nos produtos 
  despesa = '';
  -- ##################### REEMBOLSOS #########################
  grupo = '0';
  faixa1 = null;
  faixa2 = null;
  faixa3 = null;
  faixa4 = null;
  faixa5 = null;
  faixa6 = null;
  faixa7 = null;
  faixa8 = null;
  faixa9 = null;
  faixa10 = null;
  particular = null;
  total = null;

 
  Suspend;
  despesa = '';
  Suspend;
  despesa = 'REEMBOLSOS :';
  Suspend;
  /* Loop pelo Produtos , cada produto vai ser utilizado pra ver se tem despesa pra ele*/
  grupo = '2';

  imprime = 0;

  --For Select CODPRODUTO FROM PRODUTOS order by pro_cod
  -- into :item
  --do begin 
  -- ### Só Preciso do Reembolso para Sócios ###############################
  begin -- apenas abro um bloco, pois, nao preciso do For acima
  item = 632; -- Reembolso para Sócios
    faixa1 = 0;
    faixa2 = 0;
    faixa3 = 0;
    faixa4 = 0;
    faixa5 = 0;
    faixa6 = 0;
    faixa7 = 0;
    faixa8 = 0;
    faixa9 = 0;
    faixa10 = 0;
    particular = 0;
    total = 0;
  /* Busco os Lançamentos dos Reembolsos */
    For SELECT CAST(d.CONTROLE as INTEGER), sum(d.PRECO * d.quantidade * (-1)) as VALOR      
       ,p.Produto FROM MOVIMENTO a, MOVIMENTODETALHE d, PRODUTOS p 
       inner join VENDA v on v.CODMOVIMENTO = a.CODMOVIMENTO
       inner join RECEBIMENTO rec on rec.CODRECEBIMENTO = v.NUMEROBORDERO      
       where d.codmovimento = a.CODMOVIMENTO 
       and p.codproduto = d.codproduto 
       and a.CODNATUREZA = 3 and ((d.codproduto = :item) OR (d.CODPRODUTO = 1353)or(UDF_LEFT(d.LOTE,3)='210')) 
       and v.DATAVENCIMENTO between :pData1 and :pData2 and d.CONTROLE IS NOT NULL 
       group by  p.Produto ,d.CONTROLE order by p.Produto
       into :quemUsou, :valor, :DESPESA 
    do begin 
      Select c.COD_FAIXA, c.GRUPO_CLIENTE from clientes c where c.codCliente = :quemUsou
        into :faixa, :tipo; 
     /* for Select FAMILIA ,PRO_COD FROM PRODUTOS WHERE CODPRO = :DESPESA order by pro_cod
        into :DESPESA , :ORDEM
      
      do begin */
      if (tipo = 'ASH') then 
      begin  
      if (faixa = 1) then 
      begin 
        faixa1 = faixa1 + valor; 
        imprime = 1;
      end 
      if (faixa = 2) then 
      begin 
        faixa2 = faixa2 + valor; 
        imprime = 1;
      end 
      if (faixa = 3) then 
      begin 
        faixa3 = faixa3 + valor; 
        imprime = 1;
      end 
      if (faixa = 4) then 
      begin 
        faixa4 = faixa4 + valor; 
        imprime = 1;
      end 
      if (faixa = 5) then 
      begin 
        faixa5 = faixa5 + valor; 
        imprime = 1;
      end 
      if (faixa = 6) then 
      begin 
        faixa6 = faixa6 + valor; 
        imprime = 1;
      end 
      if (faixa = 7) then 
      begin 
        faixa7 = faixa7 + valor; 
        imprime = 1;
      end 
      if (faixa = 8) then 
      begin 
        faixa8 = faixa8 + valor; 
        imprime = 1;
      end 
      if (faixa = 9) then 
      begin 
        faixa9 = faixa9 + valor; 
        imprime = 1;
      end 
      if (faixa = 10) then 
      begin 
        faixa10 = faixa10 + valor; 
        imprime = 1;
      end 
      end -- fim IF TIPO = ASH
      IF (tipo = 'PARTICULAR') then 
      begin
        particular = particular + valor;
        imprime = 1; 
      end          
      total = faixa1+faixa2+faixa3+faixa4+faixa5+faixa6+faixa7+faixa8+faixa9+faixa10+particular;
      Suspend; 
      total = 0;
      faixa1 = 0;
      faixa2 = 0;
      faixa3 = 0;
      faixa4 = 0;
      faixa5 = 0;
      faixa6 = 0;
      faixa7 = 0;
      faixa8 = 0;
      faixa9 = 0;
      faixa10 = 0;
      particular = 0;
--    end --Fim do Loop em Produtos
    end --Fim dos Loop para os lançamentos
  end 
end

