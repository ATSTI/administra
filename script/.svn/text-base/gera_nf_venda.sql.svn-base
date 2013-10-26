set term ^ ;
create or alter procedure gera_nf_venda(cliente integer, dtEmissao date,
  dtVcto date, serie char(8), numero varchar(7), codMov integer)
as
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
  declare variable vIpiT DOUBLE PRECISION;
  declare variable vFreteT DOUBLE PRECISION;
  declare variable vSeguroT DOUBLE PRECISION;
  declare variable vIcmsT DOUBLE PRECISION;
  declare variable vIcmsSubst DOUBLE PRECISION;
  declare variable vOutrosT DOUBLE PRECISION;
  declare variable pesoUn DOUBLE PRECISION;
  declare variable pesoTotal DOUBLE PRECISION;
  declare variable un char(2);
  declare variable uf char(2);
  declare variable cst char(5);
  declare variable cstProd char(5);
  declare variable descP varchar(300);
  declare variable obsP varchar(300);
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
  declare variable CORPONF5 Varchar(200);
  declare variable CORPONF6 Varchar(200);
  declare variable FONE Varchar(15);
  declare variable FONE2 Varchar(15);
  declare variable FAX Varchar(15);
  declare variable CONTATO Varchar(40);
  declare variable CEP Varchar(15);
  declare variable BAIRRO Varchar(40);
  declare variable PRAZO Varchar(40);
  declare variable CODNATUREZA smallint;
  declare variable CFOP_CLI char(4);  
  declare variable TPFRETE char(1);
  declare variable TF char(1);
  declare variable tFRETE integer;
  declare variable CODTRANSPORTADORA INTEGER;
  declare variable Entrada double precision;
  declare variable xped varchar(20);
  declare variable nitemped integer;
  declare variable indpag integer;
  declare variable CSTIPI double precision;
  declare variable CSTPIS double precision;
  declare variable CSTCOFINS double precision;
  declare variable PPIS double precision;
  declare variable PCOFINS double precision;
  declare variable VALOR_PIS double precision;
  declare variable VALOR_COFINS double precision;
  declare variable II double precision;
  declare variable BCII double precision;
  declare variable VALOR_OUTROS double precision;
  declare variable VALOR_SEGURO double precision;
  declare variable VALOR_DESCONTO double precision;
  declare variable STFRETE double precision;
  declare variable BCFRETE double precision;
  declare variable CSOSN double precision;
  declare variable ICMSFRETE double precision;
  declare variable BCSTFRETE double precision;
  declare variable VIPI double precision;
  declare variable PIPI double precision;
  declare variable VLR_BASEICMS double precision;
  declare variable ICMS_SUBST double precision;
  declare variable ICMS_SUBSTD double precision;
  declare variable VALOR_ICMS double precision;
begin 

  Select first 1 mov.CODNATUREZA
    from movimento mov 
   where mov.CONTROLE = :codMov and mov.CODNATUREZA = 15
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
 
    -- CFOP Padrao
    SELECT DADOS, D1 FROM PARAMETRO WHERE PARAMETRO = 'CFOP'
      INTO :cfop, cfop_outros;

    select first 1 ende.uf from ENDERECOCLIENTE ende
     where ende.CODCLIENTE = :cliente and ende.TIPOEND = 0
      into :uf;
  
    select cli.CFOP, cli.codfiscal from CLIENTES cli
     where cli.CODCLIENTE  = :cliente
      into :cfop_cli, :TF;
    
    if (uf <> 'SP') then 
      cfop = cfop_outros;
    
    if (cfop_cli <> '')then
      cfop = cfop_cli;

    SELECT FIRST 1 ICMS, REDUCAO
      FROM ESTADO_ICMS WHERE UF = :uf AND CFOP = :cfop
      INTO :vIcmsT, :baseIcms;

    -- pega número do novo movimento
    select GEN_ID(GENMOV, 1) from RDB$DATABASE
      into :codMovNovo;

    -- insiro o Movimento   
    for Select mov.CODALMOXARIFADO, mov.CODUSUARIO, mov.CODVENDEDOR, ven.N_PARCELA, ven.PRAZO, 
               ven.VALOR_FRETE, mov.CODTRANSP, mov.TPFRETE, ven.ENTRADA, mov.CODPEDIDO
          from movimento mov 
         inner join venda ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO 
         where mov.CODMOVIMENTO = :codMov
          into :codCCusto, :codUser, :codVendedor, :np, :PRAZO, :vFreteT, :CODTRANSPORTADORA, :tpfrete, :entrada, :xped
    do begin 
      insert into movimento (codmovimento, codcliente, codAlmoxarifado, codUsuario
      , codVendedor, dataMovimento, status, codNatureza, controle, codtransp) 
      values (:codMovNovo, :Cliente, :codCCusto, :codUser 
        , :codVendedor, :dtEmissao, 0, 15, :codMov, :CODTRANSPORTADORA);  
    end 
    pesoTotal = 0;
    nitemped = 0;
    -- localiza o mov. detalhe
    for select  md.QTDE_ALT, md.CODPRODUTO, md.QUANTIDADE, md.UN, md.PRECO, md.DESCPRODUTO
      , md.ICMS, prod.BASE_ICMS, prod.PESO_QTDE , prod.CST, md.OBS
      , md.CSTIPI, md.CSTPIS, md.CSTCOFINS, md.PPIS, md.PCOFINS, md.VALOR_PIS, md.VALOR_COFINS, md.II, md.BCII
      , md.VALOR_OUTROS, md.VALOR_SEGURO, md.VALOR_DESCONTO, md.STFRETE, md.BCFRETE, md.FRETE, md.CSOSN, md.ICMSFRETE
      , md.BCSTFRETE, md.CFOP, md.VIPI, md.PIPI, md.VLR_BASEICMS, md.ICMS_SUBST, md.ICMS_SUBSTD, md.VALOR_ICMS, md.CST
      from MOVIMENTODETALHE md
      inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO
      where md.CODMOVIMENTO = :codMov
    into :desconto,     :codProduto,   :qtde,           :un,      :preco,       :descP,     :icms,         :baseIcms, 
         :pesoUn,       :cstProd,      :obsp,
         :CSTIPI,       :CSTPIS,       :CSTCOFINS,      :PPIS,    :PCOFINS,     :VALOR_PIS, :VALOR_COFINS, :II, 
         :VALOR_OUTROS, :VALOR_SEGURO, :VALOR_DESCONTO, :STFRETE, :BCFRETE,     :FRETE,     :CSOSN,        :ICMSFRETE,
         :BCSTFRETE,    :CFOP,         :VIPI,           :PIPI,    :VLR_BASEICMS,:ICMS_SUBST,:ICMS_SUBSTD,  :VALOR_ICMS,
         :CST,          :BCII 
    do begin 
      nitemped = nitemped + 1;

     if (pesoUn is null) then 
        pesoUn = 0;
      pesoTotal = pesoTotal + (:pesoUn * :qtde);
      if (:icms > 0) then 
        tBaseIcms = tBaseIcms + (preco * qtde);
      -- codigo cst   
      /*cst = '000';
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
        cst = cstProd;*/

      if (icms is null) then 
        icms = 0;
      if (baseIcms is null) then 
        baseIcms = 0;

      -- Calculo ICMS 
      if (uf = 'SP') then 
      begin 
        valoricms = (preco * qtde) * (baseIcms / 100) * (icms / 100); 
      end  
      if (uf <> 'SP') then 
      begin 
    
        if (baseIcms is null) then 
          baseIcms = 0;
        valoricms = (preco * qtde) * (baseIcms / 100) * (icms / 100); 
      end  
          
      insert into MOVIMENTODETALHE (codDetalhe, codMovimento, codProduto, quantidade
       , preco, un, descProduto, icms, valor_icms, qtde_alt, vlr_base, II, BCII, OBS, NITEMPED, PEDIDO
       ,CSTIPI, CSTPIS, CSTCOFINS, PPIS, PCOFINS, VALOR_PIS, VALOR_COFINS 
      , VALOR_OUTROS, VALOR_SEGURO, VALOR_DESCONTO, STFRETE, BCFRETE, FRETE, CSOSN, ICMSFRETE
      , BCSTFRETE, CFOP, VIPI, PIPI, VLR_BASEICMS, ICMS_SUBST, ICMS_SUBSTD, CST
       ) 
      values(gen_id(GENMOVDET, 1), :codMovNovo, :codProduto, :qtde
       , :preco, :un, :descP, :icms, :VALOR_ICMS,  :desconto, (:preco-((:preco)*(:desconto/100))), 
       :II, :BCII, :obsp, :nitemped, :xped, 
       :CSTIPI,       :CSTPIS,       :CSTCOFINS,      :PPIS,    :PCOFINS,     :VALOR_PIS, :VALOR_COFINS, 
       :VALOR_OUTROS, :VALOR_SEGURO, :VALOR_DESCONTO, :STFRETE, :BCFRETE,     :FRETE,     :CSOSN,        :ICMSFRETE,
       :BCSTFRETE,    :CFOP,         :VIPI,           :PIPI,    :VLR_BASEICMS,:ICMS_SUBST,:ICMS_SUBSTD, :cst
       );  
      total = total + (qtde * (:preco*(1-(:desconto/100))));
      totalIcms = totalIcms + :valoricms;
    end 
    vIcmsT = 0; 
    if (vFreteT is null) then
      vFreteT = 0;
    /* Buscando a numeracao da duplicata */
    preco = total;
    total = total + vSeguroT + vOutrosT + vIpiT + vIcmsT + vFreteT; 

    select GEN_ID(GENVENDA, 1) from RDB$DATABASE
    into :codVen;
  
    INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO
     , VALOR, NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, FORMARECEBIMENTO
     , MULTA_JUROS, APAGAR, VALOR_PAGAR, ENTRADA, VALOR_ICMS, VALOR_FRETE
     , VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, STATUS, Banco, CODUSUARIO, CODVENDEDOR, DataSistema, PRAZO)
     VALUES (:codVen, :codMovNovo, :Cliente, :dtEmissao, :dtVcto
     , :total, :numero, :serie, 0, :codCCusto, :np, 1,  0, 0, :total, :entrada, :vIcmsT, :vFreteT
     ,:vSeguroT, :vOutrosT, :vIpiT, 0, 1, :codUser, :codVendedor, CURRENT_DATE, :PRAZO);

    if (tBaseIcms = 0) then 
    begin
      tBaseIcms = 0; 
    end
  
    if (:total = :entrada) then
      indpag = 0;
    else
      indpag = 1;
  
    SELECT FIRST 1 UDF_LEFT(ei.DADOSADC1,200), UDF_LEFT(ei.DADOSADC2,200), UDF_LEFT(ei.DADOSADC3,200), 
      UDF_LEFT(ei.DADOSADC4,200), UDF_LEFT(ei.DADOSADC5,75), UDF_LEFT(ei.DADOSADC6,75) 
      FROM ESTADO_ICMS ei where ei.CFOP = :cfop and ei.UF = :uf and ei.CODFISCAL = :TF
      into :CORPONF1, :CORPONF2, :CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6;

    if(:CODTRANSPORTADORA is null) then
    begin
      select first 1 t.CODTRANSP, t.NOMETRANSP, t.PLACATRANSP, t.CNPJ_CPF, t.END_TRANSP
        , t.CIDADE_TRANSP, t.UF_VEICULO_TRANSP, t.UF_TRANSP, t.FRETE, t.INSCRICAOESTADUAL
        , t.FONE, t.FONE2, t.FAX, t.CONTATO, t.CEP, t.BAIRRO
       from TRANSPORTADORA t inner join CLIENTES c on c.COD_TRANPORTADORA = t.CODTRANSP
      where c.CODCLIENTE = :Cliente
       into :CODTRANSP, :NOMETRANSP, :PLACATRANSP, :CNPJ_CPF, :END_TRANSP
          , :CIDADE_TRANSP, :UF_VEICULO_TRANSP, :UF_TRANSP, :TFRETE, :INSCRICAOESTADUAL
          , :FONE, :FONE2, :FAX, :CONTATO, :CEP, :BAIRRO;
    end
    else begin
      select first 1 t.NOMETRANSP, t.PLACATRANSP, t.CNPJ_CPF, t.END_TRANSP
        , t.CIDADE_TRANSP, t.UF_VEICULO_TRANSP, t.UF_TRANSP, t.INSCRICAOESTADUAL
       from TRANSPORTADORA t
      where t.CODTRANSP = :CODTRANSPORTADORA
       into :NOMETRANSP, :PLACATRANSP, :CNPJ_CPF, :END_TRANSP
          , :CIDADE_TRANSP, :UF_VEICULO_TRANSP, :UF_TRANSP, :INSCRICAOESTADUAL;
    end
  
    select GEN_ID(GEN_NF, 1) from RDB$DATABASE
    into :codNF;
  
    if( TPFRETE = '0') then
      TFRETE = 0;
    if( TPFRETE = '1') then
      TFRETE = 1;
    if( TPFRETE = '2') then
      TFRETE = 2;
    if( TPFRETE = '3') then
      TFRETE = 3;   

    INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NATUREZA, codVenda, codCliente, cfop
      , valor_total_nota, dtaEmissao, VALOR_ICMS, BASE_ICMS_SUBST, VALOR_ICMS_SUBST
      , VALOR_FRETE, VALOR_PRODUTO, VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, BASE_ICMS, NOTAFISCAL
      , NOMETRANSP, PLACATRANSP, CNPJ_CPF, END_TRANSP , CIDADE_TRANSP, UF_VEICULO_TRANSP
      , UF_TRANSP, FRETE, INSCRICAOESTADUAL, CORPONF1, CORPONF2, CORPONF3, CORPONF4, CORPONF5
      , CORPONF6, PESOBRUTO, PESOLIQUIDO, SERIE, UF, VALOR_DESCONTO, II, BCII, INDPAG)
    VALUES (:numero, :codNF, 15, :codVen, :Cliente, :cfop
    , :total, :dtEmissao, :totalIcms, 0 , 0
    , :vFreteT, :preco, :vSeguroT, :vOutrosT, :vIpiT, :tBaseIcms ,:numero
    , :NOMETRANSP, :PLACATRANSP, :CNPJ_CPF, :END_TRANSP
    , :CIDADE_TRANSP, :UF_VEICULO_TRANSP, :UF_TRANSP, :TFRETE, :INSCRICAOESTADUAL
    , :CORPONF1, :CORPONF2, :CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6, :pesoTotal, :pesoTotal
    , :serie, :UF, 0, 0, 0, :indpag);
 
    -- Faço um select para saber o valor gerado da nf, pois, existe uma trigger q muda o vlr
    -- da nf qdo esta e parcelada (dnz)
    select valor_total_nota from notafiscal where numnf = :codnf
    into :total;

    EXECUTE PROCEDURE CALCULA_ICMS(:codNF, :uf, :cfop, :vFreteT, :vSeguroT, 
       :vOutrosT, :total, 'N', 0, 0);
  end
end 