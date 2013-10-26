ALTER PROCEDURE  SPGERAMENSALIDADE( CODIGO                           INTEGER
                                  , EMISSAO                          DATE
                                  , VENCIMENTO                       DATE
                                  , USADATACADASTRO                  CHAR( 1 ) )
AS
DECLARE VARIABLE VALOR_P DOUBLE PRECISION;
DECLARE VARIABLE D DOUBLE PRECISION;
DECLARE VARIABLE COD_B INTEGER;
DECLARE VARIABLE COD_C VARCHAR(10);
DECLARE VARIABLE PRAZAO VARCHAR(50);
DECLARE VARIABLE V INTEGER;
DECLARE VARIABLE P INTEGER;
DECLARE VARIABLE COD_F INTEGER;
DECLARE VARIABLE COD_R INTEGER;
DECLARE VARIABLE DIA SMALLINT;
DECLARE VARIABLE mes SMALLINT;
DECLARE VARIABLE ano SMALLINT;
declare variable ccusto varchar(10);
declare variable ccusto1 varchar(10);
declare variable codProd integer;
declare variable codSoc integer;
DECLARE VARIABLE qtdeFuncionario INTEGER;
DECLARE VARIABLE VIAGEM CHAR(1);
Declare variable dataBusca date;

begin

    select DESCONTO, CODBANCO, COD_FAIXA, PRAZORECEBIMENTO, GRUPO_CLIENTE, RAZAOSOCIAL from CLIENTES where CODCLIENTE = :codigo
    into :D, :COD_B, :COD_F, :DIA, :ccusto, :PRAZAO;

    ccusto1 = ccusto;
    if (ccusto is null) then
      ccusto = '0';
    if (ccusto = '') then
      ccusto = '0';
    if (ccusto = 'ASH') then
      ccusto = '51';
    if (ccusto = 'PCMSO') then
      ccusto = '52';
   

    IF (usaDataCadastro = 'S') THEN
    begin
      mes = UDF_MONTH(vencimento); 
      ano = UDF_YEAR(vencimento);
      if (dia is not null) THEN
        vencimento = UDF_ENCDATE(ano, mes, dia);
    end

    select CODIGO_CEDENTE from BANCO where CODBANCO = :COD_B
    into :COD_C;
    
    if (cod_c is null) THEN 
      cod_c = codigo;    

    if (ccusto = '51') then
    For select sum(case when emviagem = 'S' then (faixa.VALOR_PLANO * 0.25) else faixa.VALOR_PLANO end) from CLIENTES cli, FAIXA_ETARIA faixa 
      where faixa.CODIGOS = cli.COD_FAIXA and cli.STATUS = 0
      AND cli.RAZAOSOCIAL = :PRAZAO AND cli.GRUPO_CLIENTE = :CCUSTO1 and faixa.USO = :CCUSTO1
    into :VALOR_P
    do begin
      VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      codSoc = CODIGO;
      if (D is not null) then
      begin 
        VALOR_P = :VALOR_P * (1 - (D / 100));
        VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      end
      select first 1 CODPRODUTO FROM PRODUTOS WHERE PRODUTO LIKE 'MENSALIDADE'
        into :codProd;

       -- codProd = null;
       -- Verifico se não foi lançado mensalidade neste vencimento
       Select ven.codVenda from Venda ven, MovimentoDetalhe movd where movd.codMovimento = ven.codMovimento and
         codCliente = :CODIGO and movd.codProduto = :codProd and ven.DATAVENCIMENTO = :vencimento 
       into :V;
      
      if (V is null) then
      begin
        
        -- Emissao, Data Vencimento, Cód. Cliente, Cód.Cliente
        execute procedure lancaReceitaSaude(:EMISSAO, :VENCIMENTO, :CODIGO, :CodSoc, :codProd, null, null, 
        0, :VALOR_P, 0, null, :cCusto, null, null);
      end
   end
    if (ccusto = '52') then
    begin
      databusca = cast((udf_month(:vencimento)-1) || '/15/' || udf_year(:vencimento) as date);
    For select faixa.VALOR_PLANO, cli.codCliente from CLIENTES cli, FAIXA_ETARIA faixa 
      where faixa.CODIGOS = cli.COD_FAIXA and (cli.STATUS = 0)
      AND cli.RAZAOSOCIAL = :PRAZAO AND cli.GRUPO_CLIENTE = :CCUSTO1 and faixa.USO = :CCUSTO1 and cli.SEGMENTO = 0
       
    into :VALOR_P, :codSoc
    do begin
      
      select count(cli.codcliente) from CLIENTES cli 
        where cli.RazaoSocial = :PRAZAO and cli.GRUPO_CLIENTE = :CCUSTO1 and ((cli.STATUS = 0) or ((cli.STATUS = 1) 
        and (cli.DATARESC > :dataBusca))) and cli.segmento = 1 and (cli.datacadastro <= :dataBusca)
      into :qtdeFuncionario;

      if (D is not null) then
      begin 
        VALOR_P = (VALOR_P * QtdeFUNCIONARIO) * (1 - (D / 100));
        VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      end 
      if (D is null) then
      begin
        valor_p = (VALOR_P * QtdeFUNCIONARIO);
        VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      end 

      select first 1 CODPRODUTO FROM PRODUTOS WHERE PRODUTO LIKE 'MENSALIDADE'
        into :codProd;

       -- codProd = null;
       -- Verifico se não foi lançado mensalidade neste vencimento
       Select ven.codVenda from Venda ven, MovimentoDetalhe movd where movd.codMovimento = ven.codMovimento and
         codCliente = :CODIGO and movd.codProduto = :codProd and ven.DATAVENCIMENTO = :vencimento and movd.CONTROLE = :codSoc
       into :V;
      
      if (V is null) then
      begin
        
        -- Emissao, Data Vencimento, Cód. Cliente, Cód.Cliente
        execute procedure lancaReceitaSaude(:EMISSAO, :VENCIMENTO, :CODIGO, :CodSoc, :codProd, null, null, 
        0, :VALOR_P, 0, null, :cCusto, null, null);
      end
   end
  end --fim pcmso
end
