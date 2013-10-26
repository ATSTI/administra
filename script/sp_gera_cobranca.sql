SET TERM ^ ;
ALTER PROCEDURE SP_GERA_COBRANCA (
    CODIGO Integer,
    EMISSAO Date,
    VENCIMENTO Date,
    USADATACADASTRO Char(1),
    USUARIOFEZLANCAMENTO Integer )
AS
declare variable valor_p double precision;
declare variable d double precision;
declare variable cod_b integer;
declare variable cod_c varchar(10);
declare variable v integer;
declare variable p integer;
declare variable cod_f integer;
declare variable cod_r integer;
declare variable cod_p integer;
declare variable dia smallint;
declare variable mes smallint;
declare variable ano smallint;
declare variable ccusto varchar(10);
declare variable serie char(1);
declare variable parc integer;
declare variable parcgera integer;
DECLARE VARIABLE CODMOV_NOVO INTEGER;
DECLARE VARIABLE CODDET_NOVO INTEGER;
declare variable codVendedor integer;
begin
   -- busca pela SERIE padrao usado na VENDA 
   Select udf_left(DADOS,1) FROM PARAMETRO WHERE PARAMETRO = 'SERIEPADRAO'
     Into :Serie;
   if (Serie is null) then 
     exception EXCEPTION_SERIEPADRAO;
    -- Código do Produto/Serviço (Exemplo: Mensalidade) Busca na Tabela CLIENTE em 
    -- qual Plano (Produto/Serviço) ele esta cadastrado
    select c.DESCONTO, c.CODBANCO, c.COD_FAIXA, c.PRAZORECEBIMENTO, c.GRUPO_CLIENTE, c.PARCELAGERADAS,
      c.CODUSUARIO, f.CODIGOS
      from CLIENTES c
      inner join FAIXA_ETARIA f on f.CODFAIXA = c.COD_FAIXA     
    where c.CODCLIENTE = :codigo
    into :D, :COD_B, :COD_F, :DIA, :ccusto, :parcgera, :codVendedor, :cod_p;

    if (parcgera is null) then 
      parcgera = 0;

    if (ccusto is null) then
      ccusto = '0';
    if (ccusto = '') then
      ccusto = '0';
      
    if (dia is null) then 
      dia = 10;

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

    -- Ve o Valor do ServiÃ§o a ser Cobrado 
    select VALORPARCELA, PARCELA from FAIXA_ETARIA where CODFAIXA = :COD_F
    into :VALOR_P, :parc;

    if (valor_p is null)  then
      valor_p = 0;

    if (D is not null) then
      VALOR_P = :VALOR_P * (1 - (D / 100));

    select max(CODRECEBIMENTO) from RECEBIMENTO where CODCLIENTE = :CODIGO
    into :COD_R;

    select CAST(VIA as integer), PARCELAS  from RECEBIMENTO where CODRECEBIMENTO = :COD_R
    into :V, :P;

    if (v is null) THEN
      v = 0;

    if (p is null) then
      p = 1;

    V = V + 1;
    
  if (cod_f > 0) then  -- se não tiver faixa não precisa imprimir
  begin   
    if (parcgera < parc) then
    if (valor_p > 0) then
    begin
      -- Alterei para fazer o insert na Movimento, MovDet e Venda direto.
    codmov_novo = GEN_ID("GENMOV",1);   
    
    insert into movimento (CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE, CODNATUREZA, STATUS,
      CODUSUARIO, CODVENDEDOR, CODALMOXARIFADO, codfornecedor) values (
      :codmov_novo, :emissao, :codigo, 3, 0, 
      :UsuarioFezLancamento, :codVendedor, :ccusto, 0);
    -- CodNatureza = 3 -> Venda
    coddet_novo = GEN_ID("GENMOVDET",1);   
    insert into movimentodetalhe (CODDETALHE, CODMOVIMENTO, CODPRODUTO, QUANTIDADE,
      PRECO, UN, BAIXA, QTDE_ALT) VALUES (
      :coddet_novo, :codmov_novo, :cod_p, 1, :valor_p, 'un', 0, 0);
    coddet_novo = GEN_ID("GENVENDA",1);   
    INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO,
      VALOR, CODUSUARIO, CODCCUSTO, SERIE, BANCO, CODVENDEDOR, 
      NOTAFISCAL, CONTROLE, STATUS, N_PARCELA, DATASISTEMA, DESCONTO, MULTA_JUROS, 
      ENTRADA, VALOR_FRETE, VALOR_ICMS, VALOR_IPI, VALOR_PAGAR, VALOR_SEGURO) 
      VALUES 
      (:coddet_novo, :codmov_novo, :CODIGO, :emissao, :Vencimento, 
      :valor_p, :UsuarioFezLancamento, :CCUSTO, :SERIE, 1, :CODVendedor, 
      :codDet_Novo, 0, 0, :parc, current_date, 0, 0,
       0,0,0,0,0,0);

    end
  end  
  cod_F = 0;
end

