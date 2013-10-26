set term ^;
CREATE OR ALTER PROCEDURE  AVISO_ASH( DTA1                             DATE
                            , DTA2                             DATE
                            , DTAV1                            DATE
                            , DTAV2                            DATE
                            , CLIENTE                          INTEGER
                            , CLIENTEPROC                      INTEGER
                            , CONTADEBITO                      INTEGER
                            , FORNECEDOR                       INTEGER
                            , CODCCUSTO                        INTEGER )
RETURNS ( COL1                             VARCHAR( 200 )
        , COL2                             VARCHAR( 200 )
        , DATA1                            DATE
        , DATA2                            DATE
        , VALOR                            DOUBLE PRECISION
        , FORMATO                          CHAR( 1 )
        , LINHAVAZIA                       CHAR( 1 )
        , ORDEM                            VARCHAR( 15 )
        , TIPOLINHA                        VARCHAR( 15 )
        , CODCLI                           INTEGER )
AS
DECLARE VARIABLE TOTAL Double precision;
 declare variable nomeccusto varchar(15);
 declare variable datavencimento DATE;
 DECLARE VARIABLE mesAniversario SMALLINT;
 DECLARE VARIABLE mesAtual SMALLINT;
 DECLARE VARIABLE idade SMALLINT;
 DECLARE VARIABLE faixaAtual SMALLINT;  
begin 
  -- 1ª Linha
  -- Código e Nome do Titular/Empresa 
     if (codccusto = 51) then
       nomeccusto = 'ASH';
     if (codccusto = 52) then
       nomeccusto = 'PCMSO';

    For Select RAZAOSOCIAL, codCliente from Clientes
    where segmento = 0 and ((codCliente = :cliente) or (:cliente = 0)) and STATUS = 0 
      and grupo_cliente = :nomeccusto order by RA
  into :col1, :codCli
  do begin 

    -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = ''; -- Se precisar apague esses tra�os e coloque ponto.
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;

     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = ''; -- Se precisar apague esses tra�os e coloque ponto.
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;

     total = 0;

     --Formato Negrito
     Formato = 'N';
     tipoLinha = 'DADOS';
     -- Imprime
     suspend; -- COMENTEI PRA N�O APARECER O NOME POIS JA APARECE EM CIMA
     -- Título da Linha Totais
     col1 = null;
     tipoLinha = 'TITULO1';
     Suspend;
     --Buscando os Totais  
     --for SELECT emissao, vence, codConta || '-' || conta,sum(vlrRec), ordem  --- tirei o codigo
     for SELECT emissao, vence, conta,sum(vlrRec), ordem  
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :CodCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO) group by ordem, emissao, vence, codConta, conta 
        into :data1, Data2, :col1, :valor, :ordem
     do begin
       Formato = 'S';
       tipoLinha = 'DADOS';
       Total = Total + Valor;
       datavencimento = data2;
       Suspend; 
     end  
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;
     --Imprime Totais
     col1 = 'TOTAL .... ';
     valor = total; 
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;      
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;

     -- Título da Linha Lançamentos
     col1 = null;
     valor = null;
     tipoLinha = 'TITULO2';
     Formato = 'S';
     Suspend;
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;

     
     -- Imprimindo todos os lançamentos
     for SELECT emissao, conta ||'//'||HIST, ordem,vlrRec, 
      --  udf_copy(codDependente, 7, udf_len(codDependente)) || '-' || assocDependente   
        assocDependente   
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :codCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO) where codConta <> '744' 
         order by ordem, emissao, vence, codConta, conta 
        into :data1, :col2, :ordem,:valor, :col1 
     do begin
       Formato = 'S';
       tipoLinha = 'DADOS2';
       Suspend;        
     end 
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;

 
    -- Imprimi os Debitos atrazados.

    For SELECT VALOR_RESTO , DATAVENCIMENTO FROM RECEBIMENTO where CODCLIENTE = :codCli and status = '5-' AND VALOR_RESTO > 0 AND DATAVENCIMENTO < :DTAV1
    INTO :VALOR , :DATA1 

     DO BEGIN
     tipoLinha = 'TITULOS';
     SUSPEND;
     data1 = null;
     valor = null;
     end 

    -- Linha Data Vencimento

    tipoLinha = 'VENCIMENTO';
    data2 = datavencimento ; 
    -- Linha Vazia
    data1 = null;
    col1 = null;
    col2 = null;
    ordem = null;
    valor = null;
    suspend;
    data2 = null;

    -- Linha Aniversario

--   mesAtual = udf_month(DTA1) 
   for SELECT UDF_MONTH(cli.DATANASC) as mesAniversario,  UDF_AGE(cli.DATANASC) as idade, cli.COD_FAIXA, cli.CODCLIENTE 
     from CLIENTES cli where CODCLIENTE = :codCli and status = 0
    into :mesAniversario, :idade, :faixaAtual, :codcli
   do begin
   tipoLinha = 'ANIVERSARIO';
--   valor = mesAniversario;
   suspend; 
--   valor = NULL;
   end
  end
end
