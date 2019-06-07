SET TERM ^ ;
ALTER PROCEDURE FLUXOCAIXALINHA (
    PDTA1 DATE,
    PDTA2 DATE )
RETURNS (
    DIA SMALLINT,
    MES SMALLINT,
    ANO SMALLINT,
    NOMECONTA VARCHAR(60),
    VALOR DOUBLE PRECISION,    
    VALOR_1 DOUBLE PRECISION,
    VALOR_2 DOUBLE PRECISION,
    VALOR_3 DOUBLE PRECISION,
    VALOR_4 DOUBLE PRECISION,
    VALOR_5 DOUBLE PRECISION,
    VALOR_6 DOUBLE PRECISION,
    VALOR_7 DOUBLE PRECISION,
    VALOR_8 DOUBLE PRECISION,
    VALOR_9 DOUBLE PRECISION,
    VALOR_10 DOUBLE PRECISION,
    VALOR_11 DOUBLE PRECISION,
    VALOR_12 DOUBLE PRECISION,
    TIPO VARCHAR(10) )
AS
declare variable formaRec char(1);
declare variable valorTotal double precision;
declare variable CAIXA varchar(80);
declare variable CODCAIXA smallint; 
declare variable VALORC double precision;
declare variable mes_ini smallint;
declare variable mes_fim smallint;
declare variable ano_ini smallint;
declare variable ano_fim smallint;
declare variable conta int;
declare variable data_r date;
declare variable VALOR_1F DOUBLE PRECISION;
declare variable VALOR_2F DOUBLE PRECISION;
declare variable VALOR_3F DOUBLE PRECISION;
declare variable VALOR_4F DOUBLE PRECISION;
declare variable VALOR_5F DOUBLE PRECISION;
declare variable VALOR_6F DOUBLE PRECISION;
declare variable VALOR_7F DOUBLE PRECISION;
declare variable VALOR_8F DOUBLE PRECISION;
declare variable VALOR_9F DOUBLE PRECISION;
declare variable VALOR_10F DOUBLE PRECISION;
declare variable VALOR_11F DOUBLE PRECISION;
declare variable VALOR_12F DOUBLE PRECISION;
declare variable VALOR_1r DOUBLE PRECISION;
declare variable VALOR_2r DOUBLE PRECISION;
declare variable VALOR_3r DOUBLE PRECISION;
declare variable VALOR_4r DOUBLE PRECISION;
declare variable VALOR_5r DOUBLE PRECISION;
declare variable VALOR_6r DOUBLE PRECISION;
declare variable VALOR_7r DOUBLE PRECISION;
declare variable VALOR_8r DOUBLE PRECISION;
declare variable VALOR_9r DOUBLE PRECISION;
declare variable VALOR_10r DOUBLE PRECISION;
declare variable VALOR_11r DOUBLE PRECISION;
declare variable VALOR_12r DOUBLE PRECISION;

begin
  /* SALDOS 24/05/2019 */
  valorTotal = 0;
  valorC = 0;
  ano_ini = EXTRACT(YEAR FROM :PDTA1);
  ano_fim = EXTRACT(YEAR FROM :PDTA1);
  mes_ini = 1;
  mes_fim = EXTRACT(MONTH FROM :PDTA2);
  /*Pegando os Saldos de Caixas/Bancos */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CAIXA'
  Into :Caixa;
  While ((ano_ini-1) < ano_fim) do
  begin 
    While ((mes_ini-1) < 12) do
    BEGIN
      data_r = TRIM(Cast(mes_ini as VarChar(2))) || '-01-' || Cast(ano_ini as VarChar(4));
      for select VALOR from SP_MOV_CAIXA((:data_r),(:data_r),0) where ordem = 0
      into :valorc
      do BEGIN
      end
      if (mes_ini = 1) then valor_1 = valorc;
      if (mes_ini = 2) then valor_2 = valorc;
      if (mes_ini = 3) then valor_3 = valorc;
      if (mes_ini = 4) then valor_4 = valorc;
      if (mes_ini = 5) then valor_5 = valorc;
      if (mes_ini = 6) then valor_6 = valorc;
      if (mes_ini = 7) then valor_7 = valorc;
      if (mes_ini = 8) then valor_8 = valorc;
      if (mes_ini = 9) then valor_9 = valorc;
      if (mes_ini = 10) then valor_10 = valorc;
      if (mes_ini = 11) then valor_11 = valorc;
      if (mes_ini = 12) then valor_12 = valorc;
      NOMECONTA = 'Saldo Inicial';
      tipo = '1';
      dia = 0;
      mes_ini = mes_ini + 1;
    end   
    if (valor_2 is null) then 
      valor_2 = valor_1;
    if (valor_3 is null) then 
      valor_3 = valor_2;
    if (valor_4 is null) then 
      valor_4 = valor_3;
    if (valor_5 is null) then 
      valor_5 = valor_4;
    if (valor_6 is null) then 
      valor_6 = valor_5;
    if (valor_7 is null) then 
      valor_7 = valor_6;
    if (valor_8 is null) then 
      valor_8 = valor_7;
    if (valor_9 is null) then 
      valor_9 = valor_8;
    if (valor_10 is null) then 
      valor_10 = valor_9;
    if (valor_11 is null) then 
      valor_11 = valor_10;
    if (valor_12 is null) then 
      valor_12 = valor_11;
    Suspend;
    ano_ini = ano_ini +1;
  end 
  
  if (valor_1 is not null) then valor_1f = valor_1;
  if (valor_2 is not null) then valor_2f = valor_2;
  if (valor_3 is not null) then valor_3f = valor_3;
  if (valor_4 is not null) then valor_4f = valor_4;
  if (valor_5 is not null) then valor_5f = valor_5;
  if (valor_6 is not null) then valor_6f = valor_6;
  if (valor_7 is not null) then valor_7f = valor_7;
  if (valor_8 is not null) then valor_8f = valor_8;  
  if (valor_9 is not null) then valor_9f = valor_9;  
  if (valor_10 is not null) then valor_10f = valor_10;  
  if (valor_11 is not null) then valor_11f = valor_11;  
  if (valor_12 is not null) then valor_12f = valor_12;  
  
  NOMECONTA = 'ENTRADAS';
  tipo = '1';
  valor_1 = Null;
  valor_2 = Null;
  valor_3 = Null;
  valor_4 = Null;
  valor_5 = Null;
  valor_6 = Null;
  valor_7 = Null;
  valor_8 = Null;
  valor_9 = Null;
  valor_10 = Null;
  valor_11 = Null;
  valor_12 = Null;
  suspend;  
  
  -- faz o RECEBIMENTO - PAGAMENTO
  valor_1r = 0;
  valor_2r = 0;
  valor_3r = 0;
  valor_4r = 0;
  valor_5r = 0;
  valor_6r = 0;
  valor_7r = 0;
  valor_8r = 0;
  valor_9r = 0;
  valor_10r = 0;
  valor_11r = 0;
  valor_12r = 0;  
  
  ano_ini = EXTRACT(YEAR FROM :PDTA1);
  ano_fim = EXTRACT(YEAR FROM :PDTA1);
  mes_ini = EXTRACT(MONTH FROM :PDTA1);
  mes_fim = EXTRACT(MONTH FROM :PDTA2);
  /* Fluxo de Caixa em linha*/
  /* Receitas (RECEBIMENTO)*/
  for Select sum(mes1) as Mes1, sum(mes2) as Mes2, sum(mes3) as Mes3, sum(mes4) as Mes4, sum(mes5) as Mes5
    ,sum(mes6) as Mes6, sum(mes7) as Mes7,sum(mes8) as Mes8, sum(mes9) as Mes9,sum(mes10) as Mes10
    ,sum(mes11) as Mes11,sum(mes12) as Mes12
    from (
      select  
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 1 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES1, 
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 2 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES2,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 3 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES3, 
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 4 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES4,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 5 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES5,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 6 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES6,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 7 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES7,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 8 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES8,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 9 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES9,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 10 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES10,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 11 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES11,
        CASE EXTRACT(MONTH FROM DATARECEBIMENTO) WHEN 12 THEN SUM(VALORRECEBIDO) ELSE 0 END AS MES12
      FROM RECEBIMENTO 
      WHERE EXTRACT(YEAR FROM DATARECEBIMENTO) BETWEEN :ano_ini and :ano_fim
        AND STATUS = '7-'
      group by EXTRACT(MONTH FROM DATARECEBIMENTO))
  INTO :valor_1,:valor_2,:valor_3,:valor_4,:valor_5,:valor_6,:valor_7,:valor_8,
    :valor_9,:valor_10,:valor_11,:valor_12 
  do begin
    tipo = '2';
    nomeconta = '+ Recebido de Vendas';
    if (valor_1 > 0) then valor_1f = valor_1f + valor_1;
    if (valor_2 > 0) then valor_2f = valor_2f + valor_2;
    if (valor_3 > 0) then valor_3f = valor_3f + valor_3;
    if (valor_4 > 0) then valor_4f = valor_4f + valor_4;
    if (valor_5 > 0) then valor_5f = valor_5f + valor_5;
    if (valor_6 > 0) then valor_6f = valor_6f + valor_6;
    if (valor_7 > 0) then valor_7f = valor_7f + valor_7;
    if (valor_8 > 0) then valor_8f = valor_8f + valor_8;
    if (valor_9 > 0) then valor_9f = valor_9f + valor_9;
    if (valor_10 > 0) then valor_10f = valor_10f + valor_10;
    if (valor_11 > 0) then valor_11f = valor_11f + valor_11;
    if (valor_12 > 0) then valor_12f = valor_12f + valor_12;
    
    if (valor_1 > 0) then valor_1r = valor_1r + valor_1;
    if (valor_2 > 0) then valor_2r = valor_2r + valor_2;
    if (valor_3 > 0) then valor_3r = valor_3r + valor_3;
    if (valor_4 > 0) then valor_4r = valor_4r + valor_4;
    if (valor_5 > 0) then valor_5r = valor_5r + valor_5;
    if (valor_6 > 0) then valor_6r = valor_6r + valor_6;
    if (valor_7 > 0) then valor_7r = valor_7r + valor_7;
    if (valor_8 > 0) then valor_8r = valor_8r + valor_8;
    if (valor_9 > 0) then valor_9r = valor_9r + valor_9;
    if (valor_10 > 0) then valor_10r = valor_10r + valor_10;
    if (valor_11 > 0) then valor_11r = valor_11r + valor_11;
    if (valor_12 > 0) then valor_12r = valor_12r + valor_12;    
    Suspend;
  end       

  NOMECONTA = 'SAIDAS';
  tipo = '3';
  valor_1 = Null;
  valor_2 = Null;
  valor_3 = Null;
  valor_4 = Null;
  valor_5 = Null;
  valor_6 = Null;
  valor_7 = Null;
  valor_8 = Null;
  valor_9 = Null;
  valor_10 = Null;
  valor_11 = Null;
  valor_12 = Null;
  suspend;

  /* Despesas(PAGAMENTO POR COMPRA) */
  --, p.formaPagamento
  for Select sum(mes1) as Mes1, sum(mes2) as Mes2, sum(mes3) as Mes3, sum(mes4) as Mes4, sum(mes5) as Mes5
    ,sum(mes6) as Mes6, sum(mes7) as Mes7,sum(mes8) as Mes8, sum(mes9) as Mes9,sum(mes10) as Mes10
    ,sum(mes11) as Mes11,sum(mes12) as Mes12
    from (
      select  
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 1 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES1, 
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 2 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES2,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 3 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES3, 
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 4 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES4,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 5 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES5,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 6 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES6,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 7 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES7,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 8 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES8,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 9 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES9,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 10 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES10,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 11 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES11,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 12 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES12
      FROM PAGAMENTO p
      inner join compra on compra.codCompra = p.CODCOMPRA
      WHERE EXTRACT(YEAR FROM p.dataPagamento) BETWEEN :ano_ini and :ano_fim
        AND p.STATUS = '7-'
      group by EXTRACT(MONTH FROM p.dataPagamento))
  INTO :valor_1,:valor_2,:valor_3,:valor_4,:valor_5,:valor_6,:valor_7,:valor_8,
      :valor_9,:valor_10,:valor_11,:valor_12 
  do begin
    tipo = '3';
    NOMECONTA = '- Pagamento de Compras';
    if (valor_1 > 0) then valor_1f = valor_1f - valor_1;
    if (valor_2 > 0) then valor_2f = valor_2f - valor_2;
    if (valor_3 > 0) then valor_3f = valor_3f - valor_3;
    if (valor_4 > 0) then valor_4f = valor_4f - valor_4;
    if (valor_5 > 0) then valor_5f = valor_5f - valor_5;
    if (valor_6 > 0) then valor_6f = valor_6f - valor_6;
    if (valor_7 > 0) then valor_7f = valor_7f - valor_7;
    if (valor_8 > 0) then valor_8f = valor_8f - valor_8;
    if (valor_9 > 0) then valor_9f = valor_9f - valor_9;   
    if (valor_10 > 0) then valor_10f = valor_10f - valor_10;
    if (valor_11 > 0) then valor_11f = valor_11f - valor_11;
    if (valor_12 > 0) then valor_12f = valor_12f - valor_12;     
    
    if (valor_1 > 0) then valor_1r = valor_1r - valor_1;
    if (valor_2 > 0) then valor_2r = valor_2r - valor_2;
    if (valor_3 > 0) then valor_3r = valor_3r - valor_3;
    if (valor_4 > 0) then valor_4r = valor_4r - valor_4;
    if (valor_5 > 0) then valor_5r = valor_5r - valor_5;
    if (valor_6 > 0) then valor_6r = valor_6r - valor_6;
    if (valor_7 > 0) then valor_7r = valor_7r - valor_7;
    if (valor_8 > 0) then valor_8r = valor_8r - valor_8;
    if (valor_9 > 0) then valor_9r = valor_9r - valor_9;
    if (valor_10 > 0) then valor_10r = valor_10r - valor_10;
    if (valor_11 > 0) then valor_11r = valor_11r - valor_11;
    if (valor_12 > 0) then valor_12r = valor_12r - valor_12;    
    
    Suspend;
  end      


  /* Despesas(PAGAMENTO POR DESPESA) */  
  for Select nome, sum(mes1) as Mes1, sum(mes2) as Mes2, sum(mes3) as Mes3, sum(mes4) as Mes4, sum(mes5) as Mes5
    ,sum(mes6) as Mes6, sum(mes7) as Mes7,sum(mes8) as Mes8, sum(mes9) as Mes9,sum(mes10) as Mes10
    ,sum(mes11) as Mes11,sum(mes12) as Mes12   
    from (
      select pln.NOME,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 1 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES1, 
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 2 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES2,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 3 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES3, 
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 4 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES4,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 5 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES5,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 6 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES6,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 7 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES7,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 8 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES8,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 9 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES9,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 10 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES10,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 11 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES11,
        CASE EXTRACT(MONTH FROM p.dataPagamento) WHEN 12 THEN SUM(p.VALORRECEBIDO) ELSE 0 END AS MES12
      FROM PAGAMENTO p, PLANO pl
      inner join plano pln on pln.conta = SUBSTRING(pl.conta from 1 for 8)
      WHERE p.CONTACREDITO = pl.CODIGO 
        AND EXTRACT(YEAR FROM dataPagamento) BETWEEN :ano_ini and :ano_fim
        AND p.STATUS = '7-'
      group by EXTRACT(MONTH FROM p.dataPagamento), pln.NOME) group by nome
  INTO :nomeConta, :valor_1,:valor_2,:valor_3,:valor_4,:valor_5,:valor_6,:valor_7,:valor_8,
       :valor_9,:valor_10,:valor_11,:valor_12 
  do begin
    nomeConta = '- ' || nomeConta;
    tipo = '4';
    if (valor_1 > 0) then valor_1f = valor_1f - valor_1;
    if (valor_2 > 0) then valor_2f = valor_2f - valor_2;
    if (valor_3 > 0) then valor_3f = valor_3f - valor_3;
    if (valor_4 > 0) then valor_4f = valor_4f - valor_4;
    if (valor_5 > 0) then valor_5f = valor_5f - valor_5;
    if (valor_6 > 0) then valor_6f = valor_6f - valor_6;
    if (valor_7 > 0) then valor_7f = valor_7f - valor_7;
    if (valor_8 > 0) then valor_8f = valor_8f - valor_8;
    if (valor_9 > 0) then valor_9f = valor_9f - valor_9;   
    if (valor_10 > 0) then valor_10f = valor_10f - valor_10;
    if (valor_11 > 0) then valor_11f = valor_11f - valor_11;
    if (valor_12 > 0) then valor_12f = valor_12f - valor_12;     

    if (valor_1 > 0) then valor_1r = valor_1r - valor_1;
    if (valor_2 > 0) then valor_2r = valor_2r - valor_2;
    if (valor_3 > 0) then valor_3r = valor_3r - valor_3;
    if (valor_4 > 0) then valor_4r = valor_4r - valor_4;
    if (valor_5 > 0) then valor_5r = valor_5r - valor_5;
    if (valor_6 > 0) then valor_6r = valor_6r - valor_6;
    if (valor_7 > 0) then valor_7r = valor_7r - valor_7;
    if (valor_8 > 0) then valor_8r = valor_8r - valor_8;
    if (valor_9 > 0) then valor_9r = valor_9r - valor_9;
    if (valor_10 > 0) then valor_10r = valor_10r - valor_10;
    if (valor_11 > 0) then valor_11r = valor_11r - valor_11;
    if (valor_12 > 0) then valor_12r = valor_12r - valor_12;    

    suspend;
  end
  NOMECONTA = '= Restultado:';
  tipo = '3';
  valor_1 = valor_1r;
  valor_2 = valor_2r;
  valor_3 = valor_3r;
  valor_4 = valor_4r;
  valor_5 = valor_5r;
  valor_6 = valor_6r;
  valor_7 = valor_7r;
  valor_8 = valor_8r;
  valor_9 = valor_9r;
  valor_10 = valor_10r;
  valor_11 = valor_11r;
  valor_12 = valor_12r;
  suspend;  
  valor_1 = valor_1f;
  valor_2 = valor_2f;
  valor_3 = valor_3f;
  valor_4 = valor_4f;
  valor_5 = valor_5f;
  valor_6 = valor_6f;
  valor_7 = valor_7f;
  valor_8 = valor_8f;
  valor_9 = valor_9f;
  valor_10 = valor_10f;
  valor_11 = valor_11f;
  valor_12 = valor_12f;
  tipo = '4';
  NOMECONTA = '= Saldo Final';
  Suspend;  
  
  /*                        */
  /* FUTURO                 */
  /*                        */
  
  NOMECONTA = '';
  tipo = '0';
  valor_1 = Null;
  valor_2 = Null;
  valor_3 = Null;
  valor_4 = Null;
  valor_5 = Null;
  valor_6 = Null;
  valor_7 = Null;
  valor_8 = Null;
  valor_9 = Null;
  valor_10 = Null;
  valor_11 = Null;
  valor_12 = Null;
  suspend;
  NOMECONTA = 'PREVISTO:';
  tipo = '91';
  valor_1 = Null;
  valor_2 = Null;
  valor_3 = Null;
  valor_4 = Null;
  valor_5 = Null;
  valor_6 = Null;
  valor_7 = Null;
  valor_8 = Null;
  valor_9 = Null;
  valor_10 = Null;
  valor_11 = Null;
  valor_12 = Null;
  suspend;  
  /* Receitas (RECEBIMENTO)*/
  for Select sum(mes1) as Mes1, sum(mes2) as Mes2, sum(mes3) as Mes3, sum(mes4) as Mes4, sum(mes5) as Mes5
    ,sum(mes6) as Mes6, sum(mes7) as Mes7,sum(mes8) as Mes8, sum(mes9) as Mes9,sum(mes10) as Mes10
    ,sum(mes11) as Mes11,sum(mes12) as Mes12
    from (
      select  
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 1 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES1, 
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 2 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES2,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 3 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES3, 
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 4 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES4,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 5 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES5,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 6 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES6,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 7 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES7,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 8 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES8,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 9 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES9,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 10 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES10,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 11 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES11,
        CASE EXTRACT(MONTH FROM dataVencimento) WHEN 12 THEN SUM(VALOR_RESTO) ELSE 0 END AS MES12
      FROM RECEBIMENTO 
      WHERE EXTRACT(YEAR FROM dataVencimento) BETWEEN :ano_ini and :ano_fim
        AND STATUS = '5-'
      group by EXTRACT(MONTH FROM dataVencimento))
  INTO :valor_1,:valor_2,:valor_3,:valor_4,:valor_5,:valor_6,:valor_7,:valor_8,
    :valor_9,:valor_10,:valor_11,:valor_12 
  do begin
    tipo = '6';
    nomeconta = '+ Vendas a Receber';
    if (valor_1 > 0) then valor_1f = valor_1f + valor_1;
    if (valor_2 > 0) then valor_2f = valor_2f + valor_2;
    if (valor_3 > 0) then valor_3f = valor_3f + valor_3;
    if (valor_4 > 0) then valor_4f = valor_4f + valor_4;
    if (valor_5 > 0) then valor_5f = valor_5f + valor_5;
    if (valor_6 > 0) then valor_6f = valor_6f + valor_6;
    if (valor_7 > 0) then valor_7f = valor_7f + valor_7;
    if (valor_8 > 0) then valor_8f = valor_8f + valor_8;
    if (valor_9 > 0) then valor_9f = valor_9f + valor_9;  
    if (valor_10 > 0) then valor_10f = valor_10f + valor_10;
    if (valor_11 > 0) then valor_11f = valor_11f + valor_11;
    if (valor_12 > 0) then valor_12f = valor_12f + valor_12;      
    Suspend;
  end       

  /* Despesas(PAGAMENTO POR COMPRA) */
  --, p.formaPagamento
  for Select sum(mes1) as Mes1, sum(mes2) as Mes2, sum(mes3) as Mes3, sum(mes4) as Mes4, sum(mes5) as Mes5
    ,sum(mes6) as Mes6, sum(mes7) as Mes7,sum(mes8) as Mes8, sum(mes9) as Mes9,sum(mes10) as Mes10
    ,sum(mes11) as Mes11,sum(mes12) as Mes12
    from (
      select  
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 1 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES1, 
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 2 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES2,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 3 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES3, 
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 4 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES4,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 5 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES5,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 6 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES6,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 7 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES7,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 8 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES8,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 9 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES9,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 10 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES10,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 11 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES11,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 12 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES12
      FROM PAGAMENTO p
      inner join compra on compra.codCompra = p.CODCOMPRA
      WHERE EXTRACT(YEAR FROM p.DATAVENCIMENTO) BETWEEN :ano_ini and :ano_fim
        AND p.STATUS = '5-'
      group by EXTRACT(MONTH FROM p.dataVencimento))
  INTO :valor_1,:valor_2,:valor_3,:valor_4,:valor_5,:valor_6,:valor_7,:valor_8,
      :valor_9,:valor_10,:valor_11,:valor_12 
  do begin
    tipo = '7';
    NOMECONTA = '- Compras a Pagar';
    if (valor_1 > 0) then valor_1f = valor_1f - valor_1;
    if (valor_2 > 0) then valor_2f = valor_2f - valor_2;
    if (valor_3 > 0) then valor_3f = valor_3f - valor_3;
    if (valor_4 > 0) then valor_4f = valor_4f - valor_4;
    if (valor_5 > 0) then valor_5f = valor_5f - valor_5;
    if (valor_6 > 0) then valor_6f = valor_6f - valor_6;
    if (valor_7 > 0) then valor_7f = valor_7f - valor_7;
    if (valor_8 > 0) then valor_8f = valor_8f - valor_8;
    if (valor_9 > 0) then valor_9f = valor_9f - valor_9; 
    if (valor_10 > 0) then valor_10f = valor_10f - valor_10;
    if (valor_11 > 0) then valor_11f = valor_11f - valor_11;
    if (valor_12 > 0) then valor_12f = valor_12f - valor_12;       
    Suspend;
  end      

  /* Despesas(PAGAMENTO POR DESPESA) */  
  for Select nome, sum(mes1) as Mes1, sum(mes2) as Mes2, sum(mes3) as Mes3, sum(mes4) as Mes4, sum(mes5) as Mes5
    ,sum(mes6) as Mes6, sum(mes7) as Mes7,sum(mes8) as Mes8, sum(mes9) as Mes9,sum(mes10) as Mes10
    ,sum(mes11) as Mes11,sum(mes12) as Mes12   
    from (
      select pln.NOME,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 1 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES1, 
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 2 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES2,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 3 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES3, 
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 4 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES4,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 5 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES5,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 6 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES6,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 7 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES7,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 8 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES8,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 9 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES9,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 10 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES10,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 11 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES11,
        CASE EXTRACT(MONTH FROM p.dataVencimento) WHEN 12 THEN SUM(p.VALOR_RESTO) ELSE 0 END AS MES12
      FROM PAGAMENTO p, PLANO pl
      inner join plano pln on pln.conta = SUBSTRING(pl.conta from 1 for 8)
      WHERE p.CONTACREDITO = pl.CODIGO 
      AND EXTRACT(YEAR FROM DATAVENCIMENTO) BETWEEN :ano_ini and :ano_fim
      AND STATUS = '5-'
      group by EXTRACT(MONTH FROM p.dataVencimento), pln.NOME) group by nome
  INTO :nomeConta, :valor_1,:valor_2,:valor_3,:valor_4,:valor_5,:valor_6,:valor_7,:valor_8,
       :valor_9,:valor_10,:valor_11,:valor_12 
  do begin
    nomeConta = '- ' || nomeConta;
    tipo = '8';
    if (valor_1 > 0) then valor_1f = valor_1f - valor_1;
    if (valor_2 > 0) then valor_2f = valor_2f - valor_2;
    if (valor_3 > 0) then valor_3f = valor_3f - valor_3;
    if (valor_4 > 0) then valor_4f = valor_4f - valor_4;
    if (valor_5 > 0) then valor_5f = valor_5f - valor_5;
    if (valor_6 > 0) then valor_6f = valor_6f - valor_6;
    if (valor_7 > 0) then valor_7f = valor_7f - valor_7;
    if (valor_8 > 0) then valor_8f = valor_8f - valor_8;
    if (valor_9 > 0) then valor_9f = valor_9f - valor_9;  
    if (valor_10 > 0) then valor_10f = valor_10f - valor_10;
    if (valor_11 > 0) then valor_11f = valor_11f - valor_11;
    if (valor_12 > 0) then valor_12f = valor_12f - valor_12;      
    suspend;
  end  
  valor_1 = valor_1f;
  valor_2 = valor_2f;
  valor_3 = valor_3f;
  valor_4 = valor_4f;
  valor_5 = valor_5f;
  valor_6 = valor_6f;
  valor_7 = valor_7f;
  valor_8 = valor_8f;
  valor_9 = valor_9f;
  valor_10 = valor_10f;
  valor_11 = valor_11f;
  valor_12 = valor_12f;
  tipo = '4';
  NOMECONTA = '= Total Previsto';
  Suspend;  
end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE FLUXOCAIXALINHA TO  SYSDBA;

