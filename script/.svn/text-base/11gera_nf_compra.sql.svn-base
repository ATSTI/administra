set term ^ ;
create or ALTER PROCEDURE GERA_NF_COMPRA (
    FORNECEDOR integer,
    DTEMISSAO date,
    DTVCTO date,
    SERIE char(8),
    NUMERO varchar(7),
    CODMOV integer )
AS
declare variable codRec integer;
  declare variable codNF integer;
  declare variable codVen integer;
  declare variable codMovNovo integer;
  declare variable codCCusto integer;
  declare variable codUser integer;
  declare variable codVendedor integer;
  declare variable codProduto integer;
  declare variable qtde double PRECISION;
  declare variable desconto double PRECISION;
  declare variable preco DOUBLE PRECISION;
  declare variable total DOUBLE PRECISION;
  declare variable icms DOUBLE PRECISION;
  declare variable tBaseicms DOUBLE PRECISION;
  declare variable baseIcms DOUBLE PRECISION;
  declare variable valorIcms DOUBLE PRECISION;
  declare variable totalIcms DOUBLE PRECISION;
  declare variable vFrete DOUBLE PRECISION;
  declare variable vSeguro DOUBLE PRECISION;
  declare variable vIcms DOUBLE PRECISION;
  declare variable vOutros DOUBLE PRECISION;
  declare variable vIpi DOUBLE PRECISION;
  declare variable vFreteT DOUBLE PRECISION;
  declare variable vSeguroT DOUBLE PRECISION;
  declare variable vIcmsT DOUBLE PRECISION;
  declare variable vIcmsSubst DOUBLE PRECISION;
  declare variable vOutrosT DOUBLE PRECISION;
  declare variable vIpiT DOUBLE PRECISION;
  declare variable pesoUn DOUBLE PRECISION;
  declare variable pesoTotal DOUBLE PRECISION;
  declare variable un char(2);
  declare variable uf char(2);
  declare variable cst char(5);
  declare variable cstProd char(5);
  declare variable descP varchar(300);
  declare variable cfop varchar(30);
  declare variable cfop_outros varchar(30);
  declare variable np SMALLINT;
  declare variable CODTRANSP Integer;
  declare variable NOMETRANSP Varchar(50);
  declare variable PLACATRANSP Varchar(8);
  declare variable CNPJ_CPF Varchar(20);
  declare variable END_TRANSP Varchar(80);
  declare variable CIDADE_TRANSP Varchar(50);
  declare variable UF_VEICULO_TRANSP Char(2);
  declare variable UF_TRANSP Char(2);
  declare variable FRETE Char(1);
  declare variable INSCRICAOESTADUAL Varchar(20);
  declare variable CORPONF1 Varchar(200);
  declare variable CORPONF2 Varchar(200);
  declare variable CORPONF3 Varchar(200);
  declare variable CORPONF4 Varchar(200);
  declare variable CORPONF5 Varchar(75);
  declare variable CORPONF6 Varchar(75);
  declare variable FONE Varchar(15);
  declare variable FONE2 Varchar(15);
  declare variable FAX Varchar(15);
  declare variable CONTATO Varchar(40);
  declare variable CEP Varchar(15);
  declare variable BAIRRO Varchar(40);
  declare variable PRAZO Varchar(40);
  declare variable CODNATUREZA smallint;
begin 

    Select first 1 mov.CODNATUREZA
    from movimento mov 
    where mov.CONTROLE = :codMov and mov.CODNATUREZA = 20
    into :CODNATUREZA;
    if(CODNATUREZA is null) then
    begin    
  vFreteT = 0;
  vIcmsT = 0;
  vIpiT = 0;
  vSeguroT = 0;
  vOutrosT = 0; 

  tBaseIcms = 0;
  total = 0;
  valorIcms = 0;
  icms = 0;
  totalIcms = 0;
 
  /* CFOP Padrao */
  SELECT DADOS, D1 FROM PARAMETRO WHERE PARAMETRO = 'CFOP'
    INTO :cfop, cfop_outros;

  select first 1 ende.uf from ENDERECOFORNECEDOR ende
    where ende.CODFORNECEDOR = :FORNECEDOR and ende.TIPOEND = 0
  into :uf;

  if (uf <> 'SP') then 
    cfop = cfop_outros;

  SELECT FIRST 1 ICMS, REDUCAO
  FROM ESTADO_ICMS WHERE UF = :uf AND CFOP = :cfop
      INTO :vIcmsT, :baseIcms;

  /* pega número do novo movimento */
  select GEN_ID(GENMOV, 1) from RDB$DATABASE
  into :codMovNovo;

  /* insiro o Movimento    */
  for Select mov.CODALMOXARIFADO, mov.CODUSUARIO, mov.CODVENDEDOR, ven.N_PARCELA, ven.PRAZO, ven.VALOR_FRETE
    from movimento mov 
    inner join COMPRA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO 
    where mov.CODMOVIMENTO = :codMov
  into :codCCusto, :codUser, :codVendedor, :np, :PRAZO, :vFreteT
  do begin 
    insert into movimento (codmovimento, codcliente, CODFORNECEDOR, codAlmoxarifado, codUsuario
      , codVendedor, dataMovimento, status, codNatureza, controle) 
    values (:codMovNovo, 0,  :FORNECEDOR, :codCCusto, :codUser 
        , :codVendedor, :dtEmissao, 0, 20, :codMov);  
  end 
    pesoTotal = 0;
    /* localiza o mov. detalhe */
    for select  md.QTDE_ALT, md.CODPRODUTO, md.QUANTIDADE, md.UN, md.PRECO, md.DESCPRODUTO
      , md.ICMS, prod.BASE_ICMS, prod.PESO_QTDE , prod.CST   , 
      md.CFOP
      from MOVIMENTODETALHE md
      inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO
      where md.CODMOVIMENTO = :codMov
    into :desconto, :codProduto, :qtde, :un, :preco, :descP, :icms, :baseIcms, :pesoUn, :cstProd
      ,:cfop
    do begin 
     if (pesoUn is null) then 
        pesoUn = 0;
      pesoTotal = pesoTotal + (:pesoUn * :qtde);
      /*if (:icms > 0) then 
        tBaseIcms = tBaseIcms + (preco * qtde);
      
      cst = '000';
      if (icms is null) then 
         icms = vIcmsT;
      
      if (icms is null) then 
      begin  
        cst = '041';
      end        

      if ((baseIcms = 100) and (icms > 0)) then 
      begin  
        cst = '000';
      end        
      if (icms = 0) then 
      begin  
        cst = '040';
      end        
      if ((baseICMS < 100) and (baseICMS > 0) and (icms > 0)) then 
      begin
        cst = '020'; 
      end 

      if ((cstProd is not null) or (cstProd <> '')) then 
        cst = cstProd;

      if (icms is null) then 
        icms = 0;
      if (baseIcms is null) then 
        baseIcms = 0;
      */   
      /* Calculo ICMS  
      if (uf = 'SP') then 
      begin 
        valoricms = (preco * qtde) * (baseIcms / 100) * (icms / 100); 
        
      end */ 
      /* Calculo ICMS outros ESTADOS  */
      /*if (uf <> 'SP') then 
      begin 
   
        if (baseIcms is null) then 
          baseIcms = 0;

        valoricms = (preco * qtde) * (baseIcms / 100) * (icms / 100); 
      end */ 
          
      insert into MOVIMENTODETALHE (codDetalhe, codMovimento, codProduto, quantidade
       , preco, un, descProduto, qtde_alt, bcii, ii, cfop) 
      values(gen_id(GENMOVDET, 1), :codMovNovo, :codProduto, :qtde
       , :preco, :un, :descP, :desconto, 0, 0, :cfop);  
      total = total + (qtde * (:preco*(1-(:desconto/100))));/*((:PRECO/:np) * :desconto)); --((:PRECO/:np) * :desconto) */
      --totalIcms = totalIcms + :valoricms;
    end 
    vIcmsT = 0; 

  /* Buscando a numeracao da duplicata */
  preco = total;
  total = total + vSeguroT + vOutrosT + vIpiT + vIcmsT + vFreteT; 

  select GEN_ID(GEN_COD_COMPRA, 1) from RDB$DATABASE
  into :codVen;
  
  INSERT INTO compra (CODCOMPRA, CODMOVIMENTO, CODFORNECEDOR, DATACOMPRA, DATAVENCIMENTO
    , VALOR, NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, FORMAPAGAMENTO
    , MULTA_JUROS, APAGAR, VALOR_PAGAR, ENTRADA, VALOR_ICMS, VALOR_FRETE
    , VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, STATUS, Banco, CODUSUARIO, CODCOMPRADOR, DataSistema, PRAZO)
     VALUES (:codVen, :codMovNovo, :FORNECEDOR, :dtEmissao, :dtVcto
    , :total, :numero, :serie, 0, :codCCusto, :np, 1,  0, 0, :total, 0, :vIcmsT, :vFreteT
    ,:vSeguroT, :vOutrosT, :vIpiT, 0, 1, :codUser, :codVendedor, CURRENT_DATE, :PRAZO);

  if (tBaseIcms = 0) then 
  begin
    tBaseIcms = 0; 
  end 

  select first 1 t.CODTRANSP, t.NOMETRANSP, t.PLACATRANSP, t.CNPJ_CPF, t.END_TRANSP
   , t.CIDADE_TRANSP, t.UF_VEICULO_TRANSP, t.UF_TRANSP, t.FRETE, t.INSCRICAOESTADUAL
   , t.CORPONF1, t.CORPONF2, t.CORPONF3, t.CORPONF4, t.CORPONF5, t.CORPONF6
   , t.FONE, t.FONE2, t.FAX, t.CONTATO, t.CEP, t.BAIRRO
   from TRANSPORTADORA t inner join FORNECEDOR c on c.CODTRANSP = t.CODTRANSP
    where c.CODFORNECEDOR = :FORNECEDOR
  into :CODTRANSP, :NOMETRANSP, :PLACATRANSP, :CNPJ_CPF, :END_TRANSP
    , :CIDADE_TRANSP, :UF_VEICULO_TRANSP, :UF_TRANSP, :FRETE, :INSCRICAOESTADUAL
    , :CORPONF1, :CORPONF2, :CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6
    , :FONE, :FONE2, :FAX, :CONTATO, :CEP, :BAIRRO;
  
  select GEN_ID(GEN_NF, 1) from RDB$DATABASE
  into :codNF;

  INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NATUREZA, codVenda, codCliente, cfop
    , valor_total_nota, dtaEmissao, VALOR_ICMS, BASE_ICMS_SUBST, VALOR_ICMS_SUBST
    , VALOR_FRETE, VALOR_PRODUTO, VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, BASE_ICMS, NOTAFISCAL
    , NOMETRANSP, PLACATRANSP, CNPJ_CPF, END_TRANSP
    , CIDADE_TRANSP, UF_VEICULO_TRANSP, UF_TRANSP, FRETE, INSCRICAOESTADUAL
    , CORPONF1, CORPONF2, CORPONF3, CORPONF4, CORPONF5, CORPONF6, PESOBRUTO, PESOLIQUIDO 
    ,SERIE, UF, VALOR_DESCONTO, II, BCII)
    VALUES (:numero, :codNF, 20, :codVen, :FORNECEDOR, :cfop
    , :total, :dtEmissao, :totalIcms, 0 , 0
    , :vFreteT, :preco, :vSeguroT, :vOutrosT, :vIpiT, :tBaseIcms ,:numero
    , :NOMETRANSP, :PLACATRANSP, :CNPJ_CPF, :END_TRANSP
    , :CIDADE_TRANSP, :UF_VEICULO_TRANSP, :UF_TRANSP, :FRETE, :INSCRICAOESTADUAL
    , :CORPONF1, :CORPONF2, :CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6, :pesoTotal, :pesoTotal
    , :serie, :UF, 0, 0, 0);
 
   /* Faço um select para saber o valor gerado da nf, pois, existe uma trigger q muda o vlr */
   /* da nf qdo esta e parcelada (dnz) */
   select valor_total_nota from notafiscal where numnf = :codnf
    into :total;
   /*
   EXECUTE PROCEDURE CALCULA_ICMS(:codNF, :uf, :cfop, :vFreteT, :vSeguroT, 
       :vOutrosT, :total, 'N', 0, 0);*/
end

end