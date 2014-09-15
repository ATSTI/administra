Create or ALTER PROCEDURE GERA_NF_VENDA (
    CLIENTE integer,
    DTEMISSAO date,
    DTVCTO date,
    SERIE char(8),
    NUMERO varchar(7),
    CODMOV integer )
AS
declare variable codRec integer;
  declare variable codNF integer;
  declare variable codVen integer;
  declare variable rcodVen integer;
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
  declare variable pesoLiq DOUBLE PRECISION;
  declare variable pesoTotal DOUBLE PRECISION;
  declare variable pesoLiqTotal DOUBLE PRECISION;
  declare variable un char(2);
  declare variable uf char(2);
  declare variable cst char(5);
  declare variable cstProd char(5);
  declare variable descP varchar(300);
  declare variable obsP varchar(300);
  declare variable cfop varchar(30);
  declare variable cfop_outros varchar(30);
  declare variable cfop_ varchar(30);  
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
  declare variable ncm_dadosadicionais varchar(20);
  declare variable ncm varchar(20);
  declare variable nitemped integer;
  declare variable indpag integer;
  declare variable VLR_BASE double precision;
  declare variable rPARCELAS integer;
  declare variable rDATAVENCIMENTO date; 
  declare variable rDATARECEBIMENTO date;
  declare variable rCAIXA smallint;
  declare variable suframa smallint;
  declare variable rVIA char(4);
  declare variable rFORMARECEBIMENTO char(1);
  declare variable rDATABAIXA date;
  declare variable rVALORRECEBIDO double precision;
  declare variable rVALOR_PRIM_VIA double precision;
  declare variable rVALOR_RESTO double precision;
  declare variable rVALORTITULO   double precision;
  declare variable vDesconto   double precision;
  declare variable vDescontoProd   double precision;
  declare variable vVendaTotal   double precision;
  declare variable levaDesc char(1);
  declare variable arredondar DOUBLE PRECISION;
begin 
  -- versao 2.0.0.20
  vDesconto = 0;
  levaDesc = 'N';
  suframa = 0;
  select pmt.CONFIGURADO from parametro pmt where pmt.PARAMETRO = 'NF_DESCONTO'
    into :levaDesc;
    
  if (levaDesc is null) then 
    levaDesc = 'N';  

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
    ncm_dadosadicionais = null;
    corponf1 = null;

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
  
    select cli.CFOP, cli.codfiscal, udf_len(cli.suframa) from CLIENTES cli
     where cli.CODCLIENTE  = :cliente
      into :cfop_cli, :TF, :suframa;
    if (suframa is null) then 
      suframa = 0;  
    
    cfop_ = cfop;
    if (uf <> 'SP') then 
    begin
      cfop = cfop_outros;
      cfop_ = cfop;
    end
    
    if (cfop_cli <> '')then
    begin
      cfop = cfop_cli;
      cfop_ = cfop;
    end

    SELECT FIRST 1 ICMS, REDUCAO
      FROM ESTADO_ICMS WHERE UF = :uf AND CFOP = :cfop
      INTO :vIcmsT, :baseIcms;

    -- pega numero do novo movimento
    select GEN_ID(GENMOV, 1) from RDB$DATABASE
      into :codMovNovo;

    -- insiro o Movimento   
    for Select mov.CODALMOXARIFADO, mov.CODUSUARIO, mov.CODVENDEDOR, ven.N_PARCELA, ven.PRAZO, 
               ven.VALOR_FRETE, mov.CODTRANSP, mov.TPFRETE, ven.ENTRADA, mov.CODPEDIDO, ven.CODVENDA , ven.DESCONTO, (ven.VALOR + ven.DESCONTO) TOT
          from movimento mov 
         inner join venda ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO 
         where mov.CODMOVIMENTO = :codMov
          into :codCCusto, :codUser, :codVendedor, :np, :PRAZO, :vFreteT, :CODTRANSPORTADORA, :tpfrete, :entrada, :xped, :rcodven , :vDesconto, :vVendaTotal
    do begin 
      insert into movimento (codmovimento, codcliente, codAlmoxarifado, codUsuario
      , codVendedor, dataMovimento, status, codNatureza, controle, codtransp) 
      values (:codMovNovo, :Cliente, :codCCusto, :codUser 
        , :codVendedor, :dtEmissao, 0, 15, :codMov, :CODTRANSPORTADORA);  
    end 
    pesoTotal = 0;
    pesoLiqTotal = 0;
    nitemped = 0;
    if (vVendaTotal is null) then 
      vVendaTotal = 0;
    -- localiza o mov. detalhe
    for select  md.QTDE_ALT, md.CODPRODUTO, md.QUANTIDADE, md.UN, md.PRECO, md.DESCPRODUTO
      , md.ICMS, prod.BASE_ICMS, prod.PESO_QTDE, prod.PESO_LIQ, prod.CST, md.OBS, md.CFOP, md.vlr_base, prod.NCM
      from MOVIMENTODETALHE md
      inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO
      where md.CODMOVIMENTO = :codMov
    into :desconto, :codProduto, :qtde, :un, :preco, :descP, :icms, :baseIcms, :pesoUn, :pesoLiq, :cstProd, :obsp, :cfop, :vlr_base, :ncm
    do begin 
      nitemped = nitemped + 1;
      if (ncm_dadosadicionais is null) then 
        ncm_dadosadicionais = :ncm;

      if (pesoUn is null) then 
        pesoUn = 0;
      if (pesoLiq is null) then 
        pesoLiq = 0;
      pesoTotal = pesoTotal + (:pesoUn * :qtde);
      pesoLiqTotal = pesoLiqTotal + (:pesoLiq * :qtde);
      if (:icms > 0) then 
        tBaseIcms = tBaseIcms + (preco * qtde);
        
      if(:cfop = '') then
        cfop = :cfop_;
      if(:cfop is null) then
        cfop = :cfop_;

      vDescontoProd = 0;
      if (levaDesc = 'N') then 
      begin 
        vDescontoProd = 0;  -- ((:qtde * :preco)*(:desconto/100));  25/08/2014 Carlos
        desconto = 0; -- 25/08/2014 Carlos
        preco = :vlr_base;
        if (suframa > 0) then 
        begin 
          if (vDesconto > 0) then -- coloca o desconto da venda na Nota 
          begin 
            if (vVendaTotal > 0) then 
            begin 
	          select cast(d5 as integer) from PARAMETRO where PARAMETRO = 'EMPRESA'
              into :arredondar;
       
              if (arredondar is null) then 
		        arredondar = 2;    
		
              vDescontoProd = UDF_ROUNDDEC(((:preco*:qtde)*((:vDesconto / :vVendaTotal))), :arredondar);
	          --desconto = (:vDesconto / :vVendaTotal)*100;
            end  
          end     
        end 
      end  
      if (levaDesc = 'S') then 
      begin 
	    select cast(d5 as integer) from PARAMETRO where PARAMETRO = 'EMPRESA'
         into :arredondar;
       
        if (arredondar is null) then 
		  arredondar = 2;    
		
        if (desconto > 0) then
        begin  
	      vDescontoProd = UDF_ROUNDDEC(((:PRECO*:qtde)*(:desconto/100)), :arredondar);
        end
        vlr_base = preco;
        vDesconto = vDesconto + vDescontoProd; 
        desconto = 0;
      end
      if (vDescontoProd is null) then 
        vDescontoProd = 0;
      
      insert into MOVIMENTODETALHE (codDetalhe, codMovimento, codProduto, quantidade
       , preco, un, descProduto, icms, valor_icms, cst, qtde_alt, VALOR_DESCONTO, vlr_base, II, BCII, OBS, NITEMPED, PEDIDO, CFOP) 
      values(gen_id(GENMOVDET, 1), :codMovNovo, :codProduto, :qtde
       , :preco, :un, :descP, :icms, :valoricms, :cst,  :desconto, :vDescontoProd, :vlr_base, 0, 0, :obsp, :nitemped, :xped, :cfop);  
      total = total + (qtde * :vlr_base);
      totalIcms = totalIcms + :valoricms;
    end 
    vIcmsT = 0; 
    if (vFreteT is null) then
      vFreteT = 0;
    -- Buscando a numeracao da duplicata
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
      FROM CLASSIFICACAOFISCALNCM ei 
     where ei.CFOP = :cfop 
       and ei.UF = :uf 
       and ei.CODFISCAL = :TF
       and ei.NCM = :ncm_dadosadicionais       
      into :CORPONF1, :CORPONF2, :CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6;
      
     if (UDF_TRIM(corponf1) = '') then 
       CORPONF1 = null;           
      
     if (corponf1 is null) then 
     begin  
       SELECT FIRST 1 UDF_LEFT(ei.DADOSADC1,200), UDF_LEFT(ei.DADOSADC2,200), UDF_LEFT(ei.DADOSADC3,200), 
        UDF_LEFT(ei.DADOSADC4,200), UDF_LEFT(ei.DADOSADC5,75), UDF_LEFT(ei.DADOSADC6,75) 
        FROM ESTADO_ICMS ei where ei.CFOP = :cfop and ei.UF = :uf and ei.CODFISCAL = :TF
        into :CORPONF1, :CORPONF2, :CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6;
     end

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
    if (TFRETE > 0) then
	  TFRETE = TFRETE -1;	  
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


    if(:cfop = '') then
        cfop = :cfop_;
    if(:cfop is null) then
        cfop = :cfop_;
                
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
    , :CORPONF1, :CORPONF2, :CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6, :pesoTotal, :pesoLiqTotal
    , :serie, :UF, :vDesconto, 0, 0, :indpag);
 
    For SELECT r.PARCELAS,       r.DATAVENCIMENTO, r.DATARECEBIMENTO,  
               r.CAIXA,          r.VIA,           r.FORMARECEBIMENTO, 
               r.DATABAIXA,      r.VALORRECEBIDO, r.VALOR_PRIM_VIA, r.VALOR_RESTO, 
               r.VALORTITULO
          FROM RECEBIMENTO r 
         WHERE r.CODVENDA = :rcodven
          INTO :rPARCELAS,  :rDATAVENCIMENTO, :rDATARECEBIMENTO, :rCAIXA, :rVIA, :rFORMARECEBIMENTO, 
               :rDATABAIXA, :rVALORRECEBIDO, :rVALOR_PRIM_VIA, :rVALOR_RESTO, :rVALORTITULO
    do begin        
       INSERT INTO RECEBIMENTO (CODRECEBIMENTO,       TITULO,        EMISSAO,        CODCLIENTE,    DATAVENCIMENTO,
                                DATARECEBIMENTO,      CAIXA,         STATUS,         VIA,           FORMARECEBIMENTO, 
                                DATABAIXA,            CODVENDA,      CODALMOXARIFADO,CODVENDEDOR,   CODUSUARIO, 
                                DATASISTEMA,          VALORRECEBIDO, JUROS,          DESCONTO,      PERDA, 
                                TROCA,                FUNRURAL,      VALOR_PRIM_VIA, VALOR_RESTO,   VALORTITULO, 
                                OUTRO_CREDITO,        OUTRO_DEBITO,  PARCELAS)
                    VALUES (GEN_ID(COD_AREC,1),        CAST(:numero as Varchar(10)) || '-NF',      :dtEmissao,     :Cliente,      :rDATAVENCIMENTO, 
                                :rDATARECEBIMENTO,    :rCAIXA,       'NF',           :rVIA,         :rFORMARECEBIMENTO, 
                                :rDATABAIXA,          :codVen,       :codCCusto,     :codVendedor,  :codUser,
                                current_date,         :rVALORRECEBIDO, 0,             0,             0,              
                                0,                     0,            :rVALOR_PRIM_VIA,:rVALOR_RESTO, :rVALORTITULO,
                                0,                     0,            :rPARCELAS); 
    end
 
    -- Faco um select para saber o valor gerado da nf, pois, existe uma trigger q muda o vlr
    -- da nf qdo esta e parcelada (dnz)
    select valor_total_nota from notafiscal where numnf = :codnf
    into :total;

    EXECUTE PROCEDURE CALCULA_ICMS(:codNF, :uf, :cfop, :vFreteT, :vSeguroT, 
       :vOutrosT, :total, 'N', 0, 0);
  end
end
