CREATE OR ALTER PROCEDURE GERA_NF (
    CLIENTE Integer,
    DTEMISSAO Date,
    DTVCTO Date,
    SERIE Char(2),
    NUMERO Varchar(7) )
AS
declare variable codRec integer;
  declare variable codMov integer;
  declare variable codVen integer;
  declare variable codNf integer;
  declare variable codMovNovo integer;
  declare variable codCCusto integer;
  declare variable codUser integer;
  declare variable codVendedor integer;
  declare variable codProduto integer;
  declare variable qtde double PRECISION;
  declare variable preco DOUBLE PRECISION;
  declare variable total DOUBLE PRECISION;
  declare variable icms DOUBLE PRECISION;
  declare variable icmsProd DOUBLE PRECISION;
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
  declare variable vOutrosT DOUBLE PRECISION;
  declare variable vIpiT DOUBLE PRECISION;
  declare variable un char(2);
  declare variable uf char(2);
  declare variable cst char(5);
  declare variable descP varchar(300);
  declare variable cfop varchar(30);
  declare variable cfop_outros varchar(30);
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

  update series set ULTIMO_NUMERO = :numero where SERIE = :serie;
  
  -- CFOP Padrao
  SELECT DADOS, D1 FROM PARAMETRO WHERE PARAMETRO = 'CFOP'
    INTO :cfop, cfop_outros;

  select first 1 ende.uf from ENDERECOCLIENTE ende
    where ende.CODCLIENTE = :cliente and ende.TIPOEND = 0
  into :uf;

  if (uf <> 'SP') then 
    cfop = cfop_outros;
  -- pega número do novo movimento
  select GEN_ID(GENMOV, 1) from RDB$DATABASE
  into :codMovNovo;

  -- pego os dados do primeiro título selecionado para inserir o novo movimento 
  SELECT First 1 ven.codmovimento FROM RECEBIMENTO rec 
    inner join VENDA ven on ven.CODVENDA = rec.CODVENDA
    WHERE rec.CODCLIENTE = :CLIENTE AND DP = 0 
     AND rec.STATUS IN ('5-', '9-') order by rec.CODRECEBIMENTO -- busco pelos tÃ­tulos a baixar
  INTO :codMov; 
  -- insiro o Movimento   
  for Select mov.CODALMOXARIFADO, mov.CODUSUARIO, mov.CODVENDEDOR
    from movimento mov 
    where mov.CODMOVIMENTO = :codMov
  into :codCCusto, :codUser, :codVendedor
  do begin 
    insert into movimento (codmovimento, codcliente, codAlmoxarifado, codUsuario
      , codVendedor, dataMovimento, status, codNatureza) 
    values (:codMovNovo, :Cliente, :codCCusto, :codUser 
        , :codVendedor, :dtEmissao, 0, 12);  
  end 

  -- Pego os títulos selecionados para inser os itens 
  FOR SELECT rec.CODRECEBIMENTO, ven.codmovimento, ven.VALOR_FRETE, ven.VALOR_ICMS,
    ven.VALOR_IPI, ven.VALOR_SEGURO, ven.OUTRAS_DESP FROM RECEBIMENTO rec 
    inner join VENDA ven on ven.CODVENDA = rec.CODVENDA
    WHERE rec.CODCLIENTE = :CLIENTE AND DP = 0 
     AND rec.STATUS IN ('5-', '9-') order by rec.CODRECEBIMENTO -- busco pelos tÃ­tulos a baixar
  INTO :codRec, :codMov, :vFrete, :vIcms, :vIpi, :vSeguro, :vOutros 
  do begin   
    if (vFrete is null) then 
      vFrete = 0; 
    vFreteT = vFreteT + vFrete;
    if (vIcms is null) then 
      vIcms = 0; 
    vIcmsT = vIcmsT + vIcms;
    if (vIpi is null) then 
      vIpi = 0; 
    vIpiT = vIpiT + vIpi;
    if (vSeguro is null) then 
      vSeguro = 0; 
    vSeguroT = vSeguroT + vSeguro;
    if (vOutros is null) then 
      vOutros = 0; 
    vOutrosT = vOutrosT + vOutros; 
    -- localiza o mov. detalhe
    for select md.CODPRODUTO, md.QUANTIDADE, md.UN, md.PRECO, md.DESCPRODUTO
      , prod.ICMS, prod.BASE_ICMS, md.ICMS     
      from MOVIMENTODETALHE md
      inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO
      where md.CODMOVIMENTO = :codMov
    into :codProduto, :qtde, :un, :preco, :descP, :icmsProd, :baseIcms, :icms
    do begin 
      if (icmsProd is null) then 
        icmsProd = 0;
      if (icms is null) then 
        icms = 0;
      if ((icms = 0) and (icmsProd > 0)) then 
        icms = icmsProd;
      if (:icms > 0) then 
        tBaseIcms = tBaseIcms + (preco * qtde);
      -- codigo cst   
      cst = '000';
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

      if (icms is null) then 
        icms = 0;
      if (baseIcms is null) then 
        baseIcms = 0;

      -- Calculo ICMS 
      if (uf = 'SP') then 
      begin 
        valoricms = (preco * qtde) * (baseIcms / 100) * (icms / 100); 
        --tBaseIcms = tBaseIcms + (icms/100);
      end  
      -- Calculo ICMS outros ESTADOS 
      if (uf <> 'SP') then 
      begin 
        select icms, reducao from ESTADO_ICMS where uf = :uf and cfop = :cfop
        into :icms, :baseIcms;
        if (icms is null) then 
          icms = 0;
    
        if (baseIcms is null) then 
          baseIcms = 0;

        valoricms = (preco * qtde) * (baseIcms / 100) * (icms / 100); 
        --tBaseIcms = tBaseIcms + (icms/100);
      end  
          
      insert into MOVIMENTODETALHE (codDetalhe, codMovimento, codProduto, quantidade
       , preco, un, descProduto, icms, valor_icms, cst) 
      values(gen_id(GENMOVDET, 1), :codMovNovo, :codProduto, :qtde
       , :preco, :un, :descP, :icms, :valoricms, :cst);  
      total = total + (qtde * preco);
      totalIcms = totalIcms + :valoricms;
    end 
  end 
  

  /* Buscando a numeracao da duplicata */
  /*SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'SERIENF'
  INTO :SERIE;
  IF (SERIE IS NULL) THEN
    INSERT INTO PARAMETRO (PARAMETRO, DADOS) VALUES ('SERIENF','N');
  SELECT ULTIMO_NUMERO FROM SERIES WHERE SERIE = :SERIE
    INTO :NUM_DUP;
  IF (NUM_DUP IS NULL) THEN 
  BEGIN
    INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES ('N', 1);
    NUM_DUP = 1;
  END
  NUM_DUP = NUM_DUP + 1;  */
  preco = total;
  total = total + vSeguroT + vOutrosT + vIpiT + vIcmsT + vFreteT; 

  select GEN_ID(GENVENDA, 1) from RDB$DATABASE
  into :codVen;
  
  INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO
    , VALOR, NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, FORMARECEBIMENTO
    , MULTA_JUROS, APAGAR, VALOR_PAGAR, ENTRADA, VALOR_ICMS, VALOR_FRETE
    , VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, STATUS, Banco, CODUSUARIO, CODVENDEDOR, DataSistema)
     VALUES (:codVen, :codMovNovo, :Cliente, :dtEmissao, :dtVcto
    , :total, :numero, :serie, 0, :codCCusto, 1, 1,  0, :total, :total, 0, :vIcmsT, :vFreteT
    ,:vSeguroT, :vOutrosT, :vIpiT, 0, 1, :codUser, :codVendedor, CURRENT_DATE);

  if (tBaseIcms = 0) then 
  begin
    tBaseIcms = 0; 
  end 
  /*if (tBaseIcms > 0) then
  begin 
    tBaseIcms = totalIcms/tBaseIcms;
  end */
  select GEN_ID(GEN_NF, 1) from RDB$DATABASE
  into :codNF;

  INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NATUREZA, codVenda, codCliente, cfop
    , valor_total_nota, dtaEmissao, VALOR_ICMS, BASE_ICMS_SUBST, VALOR_ICMS_SUBST
    , VALOR_FRETE, VALOR_PRODUTO, VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, BASE_ICMS, NOTAFISCAL
    , SERIE,UF, VALOR_DESCONTO)
    VALUES (:numero, :CodNF, 12, :codVen, :Cliente, :cfop
    , :total, :dtEmissao, :totalIcms, 0 , 0
    , :vFreteT, :preco, :vSeguroT, :vOutrosT, :vIpiT, :tBaseIcms ,:numero,:serie, :uf, 0);
 
   EXECUTE PROCEDURE CALCULA_ICMS(:codNF, :uf, :cfop, :vFreteT, :vSeguroT, 
       :vOutrosT, :total, 'N', 0, 0);

  execute procedure GERA_REC_DUPLICATAS(:numero || '-' || :serie, :dtEmissao, :cliente, :dtEmissao, :dtVcto
      , 1, :total, 0, 0, 0, 'NOTAFISCAL', null, null, :numero || '-' || :serie); 

end 