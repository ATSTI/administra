create or ALTER PROCEDURE  BOLETO( BANCO                            VARCHAR( 18 )
                       , NUMERO_CONTA                     VARCHAR( 10 ) )
RETURNS ( DATADOC                          DATE
        , DATAPROCESSAMENTO                DATE
        , CODCLIENTE                       INTEGER
        , RAZAOSOCIAL                      VARCHAR( 100 )
        , CNPJ                             VARCHAR( 18 )
        , IE                               VARCHAR( 24 )
        , ENDERECO                         VARCHAR( 200 )
        , BAIRRO                           VARCHAR( 60 )
        , VALOR                            DOUBLE PRECISION
        , AGENCIA                          VARCHAR( 10 )
        , DIGITOAGENCIA                    CHAR( 1 )
        , CONTA                            VARCHAR( 10 )
        , DIGITOCONTA                      CHAR( 1 )
        , DATAREC                          DATE
        , NUMERO                           VARCHAR( 30 )
        , CIDADE                           VARCHAR( 40 )
        , UF                               CHAR( 2 )
        , CEP                              VARCHAR( 10 )
        , TIPO                             SMALLINT
        , EMPRESA                          VARCHAR( 80 )
        , CNPJ_CPF                         VARCHAR( 20 )
        , INST1                            VARCHAR( 100 )
        , INST2                            VARCHAR( 100 )
        , NUMTITULO                        VARCHAR( 18 )
        , CARTEIRA                         CHAR( 3 )
        , CODIGO_CEDENTE                   VARCHAR( 10 )
        , DESCPRODUTO                      VARCHAR( 300 )
        , BL                               INTEGER
        , CODRECEBIMENTO                   INTEGER )
AS
DECLARE VARIABLE codcli Integer; 
DECLARE VARIABLE codVENDA Integer; 
       
BEGIN
  Select  ban.CODIGO_AGENCIA , BAN.DIGITO_AGENCIA , ban.NUMERO_CONTA , ban.DIGITO_CONTA , ban.INSTRUCAO1, ban.INSTRUCAO2 ,ban.CARTEIRA , ban.CODIGO_CEDENTE  FROM BANCO ban
  where ban.BANCO = :BANCO AND NUMERO_CONTA = :NUMERO_CONTA 
  into :agencia ,:digitoagencia ,:conta ,:digitoconta , :inst1 ,:inst2 , :carteira ,:codigo_cedente  ; 

  Select e.RAZAO , udf_digits(e.CNPJ_CPF)  from EMPRESA e
  into :Empresa , :CNPJ_CPF  ;
 
  For Select rec.CODCLIENTE, rec.EMISSAO, rec.VALOR_RESTO,rec.DATAVENCIMENTO , udf_digits(rec.TITULO),CODVENDA , BL ,CODRECEBIMENTO FROM RECEBIMENTO rec where rec.DP = 1
  into :codCli, :DATADOC, :VALOR ,:DATAREC ,:NUMTITULO ,:CODVENDA , :BL , :CODRECEBIMENTO 

  do begin 
    DataProcessamento = DataDoc;
    Select c.codcliente, c.RAZAOSOCIAL, udf_digits(c.CNPJ), udf_digits(c.INSCESTADUAL) ,c.TIPOFIRMA from CLIENTES c 
      where c.CODCLIENTE = :codCli
      into :codCliente, :RazaoSocial, :CNPJ, :IE ,:Tipo;
 /*
  FOR select  movd.descproduto  
    from venda ven
    left join  movimentodetalhe movd on ven.codmovimento = movd.codmovimento 
    WHERE VEN.CODVENDA = :CODVENDA
    INTO :DESCPRODUTO 
  do begin
 */

    select first 1 e.LOGRADOURO,e.COMPLEMENTO , e.BAIRRO ,e.CIDADE ,e.UF , udf_digits(e.CEP) from ENDERECOCLIENTE e 

      where e.CODCLIENTE = :codCliente and e.TIPOEND = 0
      into :Endereco, :Numero, :Bairro , :Cidade , :UF , CEP ;
    suspend;
 --- end
  end 
END
