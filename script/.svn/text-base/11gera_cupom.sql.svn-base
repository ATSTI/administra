set term ^ ;
CREATE OR ALTER PROCEDURE GERA_CUPOM (
    CODMOV integer )
AS
declare variable dtEmissao date;
  declare variable dtvcto date;
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
  declare variable numero Varchar(15);
  declare variable serie Varchar(15);
  declare variable CODNATUREZA smallint;
  declare variable CFOP_CLI char(4);
  declare variable formarecebimento char(1);
  declare variable TF char(1);
  declare variable PRAZO Varchar(40);
  declare variable CODTRANSPORTADORA INTEGER;
  declare variable Entrada double precision;
  declare variable VLR_BASE double precision;
  declare variable vDesconto   double precision;
  declare variable Cliente   INTEGER;
begin 

   Select first 1 mov.CODNATUREZA
    from movimento mov 
   where mov.CONTROLE = :codMov and mov.CODNATUREZA = 7
    into :CODNATUREZA;
  if(CODNATUREZA is null) then
  begin    
    -- CFOP Padrao
    SELECT DADOS, D1 FROM PARAMETRO WHERE PARAMETRO = 'CFOP'
      INTO :cfop, cfop_outros;

    select first 1 ende.uf, m.CODCLIENTE, cli.CFOP, cli.codfiscal from ENDERECOCLIENTE ende
    inner join MOVIMENTO m on m.CODCLIENTE = ende.CODCLIENTE
    inner join CLIENTES cli on cli.CODCLIENTE = ende.CODCLIENTE
     where m.CODMOVIMENTO = :CODMOV and ende.TIPOEND = 0
      into :uf, :cliente, :cfop_cli, :TF;
    
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

    select GEN_ID(GENMOV, 1) from RDB$DATABASE
      into :codMovNovo;

    for Select mov.CODALMOXARIFADO, mov.CODUSUARIO, mov.CODVENDEDOR, ven.N_PARCELA, ven.PRAZO, ven.VALOR_FRETE, ven.ENTRADA, ven.CODVENDA , ven.DESCONTO, ven.FORMARECEBIMENTO
    from movimento mov 
    inner join venda ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO 
    where mov.CODMOVIMENTO = :codMov
    into :codCCusto, :codUser, :codVendedor, :np, :PRAZO, :vFreteT, :entrada, :rcodven , :vDesconto, :formaRecebimento
    do 
    begin 
      insert into movimento (codmovimento, codcliente, codAlmoxarifado, codUsuario, codVendedor, dataMovimento, status, codNatureza, controle, data_sistema) 
      values (:codMovNovo, :Cliente, :codCCusto, :codUser, :codVendedor, current_date, 0, 7, :codMov, current_date);  
    end 
    -- localiza o mov. detalhe
    for select  md.QTDE_ALT, md.CODPRODUTO, md.QUANTIDADE, md.UN, md.PRECO, md.DESCPRODUTO
      , md.ICMS, prod.BASE_ICMS, prod.CST, md.OBS, md.CFOP, md.vlr_base
      from MOVIMENTODETALHE md
      inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO
      where md.CODMOVIMENTO = :codMov
    into :desconto, :codProduto, :qtde, :un, :preco, :descP, :icms, :baseIcms, :cstProd, :obsp, :cfop, :vlr_base
    do begin 
        
    if(:cfop = '') then
        cfop = :cfop_;
    if(:cfop is null) then
        cfop = :cfop_;

      insert into MOVIMENTODETALHE (codDetalhe, codMovimento, codProduto, quantidade, preco, un, descProduto, icms, valor_icms, cst, vlr_base, OBS, CFOP) 
      values(gen_id(GENMOVDET, 1), :codMovNovo, :codProduto, :qtde, :preco, :un, :descP, :icms, :valoricms, :cst, :vlr_base, :obsp, :cfop);  
      
      total = total + (qtde * :vlr_base);
      totalIcms = totalIcms + :valoricms;
    end 

    preco = total;
    total = total + vSeguroT + vOutrosT + vIcmsT + vFreteT; 
    
    select v.NOTAFISCAL, v.SERIE from VENDA v
    where v.CODMOVIMENTO = :codMov
    into :numero, :serie;
    
    
    select GEN_ID(GENVENDA, 1) from RDB$DATABASE
    into :codVen;
  
    INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO
     , VALOR, NOTAFISCAL, SERIE, DESCONTO, CODCCUSTO, N_PARCELA, FORMARECEBIMENTO
     , MULTA_JUROS, APAGAR, VALOR_PAGAR, ENTRADA, VALOR_ICMS, VALOR_FRETE
     , VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, STATUS, Banco, CODUSUARIO, CODVENDEDOR, DataSistema, PRAZO)
     VALUES (:codVen, :codMovNovo, :Cliente, current_date, current_date, :total, :numero, :serie, 0, :codCCusto, :np, :formaRecebimento,  0, 0, :total, :entrada, :vIcmsT, :vFreteT
     , :vSeguroT, :vOutrosT, :vIpiT, 0, 1, :codUser, :codVendedor, CURRENT_DATE, :PRAZO);

    
  end
end