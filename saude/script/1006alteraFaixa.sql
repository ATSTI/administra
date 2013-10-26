ALTER PROCEDURE  ALTERAFAIXA( DATAALTERACAO                    DATE
                            , GRUPOCLIENTE                     VARCHAR( 30 ) )
AS
DECLARE VARIABLE mesAniversario SMALLINT; 
DECLARE VARIABLE mesAtual SMALLINT; 
DECLARE VARIABLE idade SMALLINT; 
DECLARE VARIABLE faixaAtual SMALLINT;
DECLARE VARIABLE faixa SMALLINT;
DECLARE VARIABLE codcli INTEGER;
DECLARE VARIABLE valor DOUBLE PRECISION;
DECLARE VARIABLE desconto DOUBLE PRECISION;
DECLARE VARIABLE cliente VARCHAR(100);
DECLARE VARIABLE valorATUAL DOUBLE PRECISION;
BEGIN
  if (grupoCliente = 'ASH') then
  begin 
    mesAtual = udf_month(dataAlteracao);
    /* Lista todo mundo com suas respectivas idades e mês de aniversário */ 
    for SELECT UDF_MONTH(cli.DATANASC) as mesAniversario,  UDF_AGE(cli.DATANASC) as idade, cli.COD_FAIXA, cli.CODCLIENTE 
      from CLIENTES cli where cli.GRUPO_CLIENTE = :grupoCliente and status = 0
    into :mesAniversario, :idade, :faixaAtual, :codcli
    do BEGIN
      /* Verifica se o aniversário e no mês atual, se for verifica na tabela se trocou de faixa */
      if (mesAtual = mesAniversario) then
      BEGIN
        select fx.VALOR_PLANO from FAIXA_ETARIA fx
        where (fx.USO = :grupoCliente) and FX.CODIGOS = :FAIXAATUAL
        into :valorATUAL;            
        select fx.CODIGOS, fx.VALOR_PLANO, fx.DESCONTO from FAIXA_ETARIA fx
        where (fx.USO = :grupoCliente) and ((fx.IDADE_MAX + 1) > :idade) and ((fx.IDADE_MIN - 1) < :idade)
        into :faixa, :valor, :desconto;
      
        /* Se faixa diferente , altera o cadastro */
        if (faixa is not null) then
        if (faixa <> faixaAtual) then  
        begin 
          update CLIENTES cli  set cli.ANUIDADE = :valorATUAL , 
            cli.PARCELA = :FAIXA where cli.CODCLIENTE = :codcli;
          update CLIENTES cli  set cli.COD_FAIXA = :faixa , cli.MENSALIDADE = :valor , 
            cli.DESCONTO = :desconto, cli.DTAALTERA = CURRENT_DATE
          where cli.CODCLIENTE = :codcli;
        end
        faixa = null;
        valor = null;
        desconto = null;
      end 
    end
  end
  if (grupoCliente = 'PCMSO') then
  begin 
    /* Verifica o número de funcionários da empresa */
    for select count(cli.codcliente), cli.razaosocial from CLIENTES cli 
      where cli.GRUPO_CLIENTE = :grupoCliente and status = 0 group by cli.razaosocial
    into :idade, :cliente
    do begin
      select fx.CODIGOS, fx.VALOR_PLANO, fx.DESCONTO from FAIXA_ETARIA fx
        where (fx.USO = :grupoCliente) and ((fx.IDADE_MAX + 1) > :idade) and ((fx.IDADE_MIN - 1) < :idade)
        into :faixa, :valor, :desconto;
            
      if (valor is null) then
        valor = 0;
      if (desconto is null) then
        desconto = 0;
      /* Se faixa diferente , altera o cadastro #### veja o WHERE #### */
      update CLIENTES cli  set cli.COD_FAIXA = :faixa , cli.MENSALIDADE = :valor , 
        cli.DESCONTO = :desconto, cli.DTAALTERA = CURRENT_DATE
      where cli.RAZAOSOCIAL = :cliente and cli.segmento = 0 and ((cli.COD_FAIXA <> :faixa) OR (cli.COD_FAIXA IS NULL));
      faixa = null;
      valor = null;
      desconto = null;

    end

  end
   
  
END
