CREATE OR ALTER trigger usaproduto for listapreco
active before update position 0
as
declare variable CODP integer;
declare variable MARGEM double precision;
declare variable MARCA varchar(30); 
declare variable FAM varchar(30);
declare variable CAT varchar(30);
declare variable CODFAM integer;
declare variable ALTERADOMARGEM varchar(3) = 'NAO';
begin  
   if ((new.USAPRODUTO = 'SIM') and (old.USAPRODUTO = 'SIM')) then
      ALTERADOMARGEM = 'SIM';
   if (old.margem = new.margem) then
   if (new.USAPRODUTO = 'SIM') then
   begin
        /*  Insere o produto na tabela produtos quando este está marcado que
        USA = SIM ou remove quando está marcado que USA = NÃO */
        -- se não for dijo o parametro é o campo CODIGO
        if ((new.fornecedor <> 'DIJO') OR (new.fornecedor IS NULL)) then
        begin
          select CODPRODUTO, MARGEM from PRODUTOS where CODPRO = old.CODIGO and marca = old.fornecedor
          into :CODP, :MARGEM;
        end
        else
        begin
          -- se for DIJO o parametro tem que ser o PRO_COD
          select CODPRODUTO, MARGEM from PRODUTOS where PRO_COD = old.pro_cod
          into :CODP, :MARGEM;
        end
        if (ALTERADOMARGEM <> 'SIM') then
        begin
          -- Trata o item MARGEM  
          if (MARGEM <> old.MARGEM) then
             MARGEM = MARGEM;       
          if (MARGEM is null) then
             MARGEM = 50;
          if (MARGEM = 0) then
             MARGEM = 50;
        end
        else begin
          ALTERADOMARGEM = 'NAO';       
        end

        if (CODP is null) then
        begin
           -- PRODUTO NOVO --------------------------------------------------------------------------------------------
           -- BUSCA PELA MARCA, FAMILIA E CATEGORIAPRODUTO
           select DESCMARCAS from MARCA where DESCMARCAS = old.FORNECEDOR
           into :MARCA;
           if (MARCA is null) then
           if (old.FORNECEDOR IS NOT NULL) THEN
             insert into MARCA (DESCMARCAS) values(old.FORNECEDOR);
           if (new.GRUPO is not null) then
           begin
              select DESCFAMILIA, COD_FAMILIA from FAMILIAPRODUTOS where DESCFAMILIA = old.GRUPO
              into :FAM, :CODFAM;
              if (FAM is null) then
              begin
                  insert into FAMILIAPRODUTOS (DESCFAMILIA) values(old.GRUPO);
                  select COD_FAMILIA from FAMILIAPRODUTOS where DESCFAMILIA = old.GRUPO
                  into :CODFAM;
              end
           end
           if (old.SUBGRUPO is not null) then
           begin
               select DESCCATEGORIA from CATEGORIAPRODUTO where DESCCATEGORIA = old.SUBGRUPO
               into :CAT;
               if (CAT is null) then
                  insert into CATEGORIAPRODUTO (DESCCATEGORIA, COD_FAMILIA) values (old.SUBGRUPO, :CODFAM);
           end
           CODP = gen_id("GEN_PROD",1);

           insert into PRODUTOS (
              PRODUTO, CODPRO, COD_BARRA, VALOR_PRAZO, FAMILIA, CATEGORIA,
              MARCA, UNIDADEMEDIDA, ESTOQUEMAXIMO, ESTOQUEMINIMO, ESTOQUEATUAL,
              ESTOQUEREPOSICAO, VALORUNITARIOATUAL, VALOR_PRAZO, VALORUNITARIOANTERIOR,
              ICMS, IPI, PRECOMEDIO, QTDE_PCT, PESO_QTDE, DATACADASTRO, MARGEM, RATEIO,
              TIPO, BASE_ICMS, CODFORN, CODPRODUTO, PRO_COD)
              values (
              new.DESCR, old.CODIGO, old.CODBARRA, old.PRECOVENDA, old.GRUPO, old.SUBGRUPO,
              old.FORNECEDOR, old.UNIDADE, 0, 0, 0, 0, (old.PRECOVENDA/(1+(:MARGEM/100))),
              old.PRECOVENDA, 0, 0, 0, 0, 1, 0, current_timestamp, 50, 'N', 'PROD', 100, 0, :CODP, new.pro_cod);
              new.CODPRODUTO = CODP;
        end
        else
        begin
          -- FIM - PRODUTO NOVO -------------------------------------------------------------------------------------
          -- ATUALIZACAO DE PRODUTOS Q JA EXISTAM
         if ((new.fornecedor <> 'DIJO') or (old.fornecedor <> 'DIJO') ) then
         begin
           --  O PROBLEMA ESTÁ AQUI NA MARGEM
          if ((old.MARGEM = MARGEM) or (new.MARGEM = MARGEM)) then
          begin
            update PRODUTOS set VALORUNITARIOANTERIOR = VALORUNITARIOATUAL,
            VALORUNITARIOATUAL = new.PRECOLISTA, VALOR_PRAZO = new.PRECOVENDA,
            MARCA = new.fornecedor,  PRODUTO = new.descr where CODPRODUTO = :CODP;
            new.CODPRODUTO = CODP;
          end
          if ((new.PRECOLISTA <> old.PRECOLISTA ) or (new.PRECOVENDA <> old.PRECOVENDA )) then
          begin
            update PRODUTOS set VALORUNITARIOANTERIOR = VALORUNITARIOATUAL,
            VALORUNITARIOATUAL = new.PRECOLISTA, VALOR_PRAZO = new.PRECOVENDA,
            MARCA = new.FORNECEDOR, PRODUTO = new.descr where CODPRODUTO = :CODP;
            new.CODPRODUTO = CODP;
          end
         end
         if ((new.fornecedor = 'DIJO') or (old.fornecedor = 'DIJO') ) then
         begin
            --if (new.precovenda <> old.precovenda) then
              update PRODUTOS set VALORUNITARIOANTERIOR = VALORUNITARIOATUAL,
                VALORUNITARIOATUAL = new.PRECOLISTA, VALOR_PRAZO = new.PRECOVENDA,
                  MARCA = new.FORNECEDOR where CODPRODUTO = :CODP;
                    new.CODPRODUTO = CODP;
         end
        end
        --end do for
   end
   -- Remove o produto caso seja marcado como USA='NÃO'
   if (new.USAPRODUTO = 'NAO') then
   begin
       new.CODPRODUTO = null;
   end 
end
