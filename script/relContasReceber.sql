CREATE OR ALTER PROCEDURE  RELCONTASRECEBER
RETURNS ( STATUS                           VARCHAR( 2 )
        , STATUSP                          VARCHAR( 15 )
        , DATARECEBIMENTO                  DATE
        , VALORRECEBIDO                    DOUBLE PRECISION
        , VIA                              CHAR( 10 )
        , N_DOCUMENTO                      VARCHAR( 20 )
        , EMISSAO                          DATE
        , CODRECEBIMENTO                   INTEGER
        , TITULO                           VARCHAR( 30 )
        , DATAVENCIMENTO                   DATE
        , VALOR_RESTO                      DOUBLE PRECISION
        , VALORTITULO                      DOUBLE PRECISION
        , DESCONTO                         DOUBLE PRECISION
        , SALDO                            DOUBLE PRECISION
        , VALORREC                         DOUBLE PRECISION
        , NOMECLIENTE                      VARCHAR( 60 )
        , CODCLIENTE                       INTEGER
        , HISTORICO                        VARCHAR( 150 )
        , CODMOVIMENTO                     INTEGER
        , RAZAOSOCIAL                      VARCHAR( 60 )
        , CAIXA                            INTEGER
        , CODALMOXARIFADO                  INTEGER
        , CODVENDEDOR                      INTEGER
        , CODVENDA                         INTEGER
        , DP                               INTEGER
        , BL                               INTEGER
        , DUP_REC_NF                       VARCHAR( 15 )
        , VALOR_PRIM_VIA                   DOUBLE PRECISION
        , FORMARECEBIMENTO                 CHAR( 1 ) 
        , DESCONTADO                       CHAR( 1 )
        , CONTACREDITO                     INTEGER
         , DATACONSOLIDA                   DATE,
         CODIGOBOLETO varchar(20)
)
        
AS
declare variable tituloatual varchar(20);
declare variable vlrRec  DOUBLE PRECISION;
declare variable vlrJuros DOUBLE PRECISION;
declare variable vlrMulta  DOUBLE PRECISION;
declare variable vlrPerda  DOUBLE PRECISION;
declare variable vlrDesc  DOUBLE PRECISION;
begin
  -- versao 2.0.0.20
   tituloAtual = 'vazio';
   valorTitulo = 0;
     for SELECT rec.STATUS, rec.DATARECEBIMENTO, rec.DATACONSOLIDA
      , rec.VALORRECEBIDO, rec.JUROS, rec.FUNRURAL, rec.PERDA, rec.DESCONTO
      , rec.DESCONTO
      , UDF_PADL(CAST(UDF_TRIM(rec.VIA) AS VARCHAR(3)),0,3) || '/'|| 
      CAST(UDF_PADL(rec.PARCELAS,0,3) as varchar(3)) as VIA
      , rec.N_DOCUMENTO, rec.EMISSAO, rec.CODRECEBIMENTO
      , rec.TITULO, rec.DATAVENCIMENTO, rec.VALOR_RESTO
      , cli.NOMECLIENTE
      ,rec.CODCLIENTE, rec.HISTORICO 
      ,CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' WHEN '7-' THEN 'RECEBIDO'
      WHEN '8-' THEN 'CRED. DUVIDOSO' WHEN '9-' THEN 'EM COBRANCA' 
      WHEN '10' THEN 'NOVO TITULO' WHEN '3-' THEN 'PROTESTO' ELSE 'OUTROS' END AS STATUSP 
      , cli.RAZAOSOCIAL, rec.CAIXA, rec.CODALMOXARIFADO
      , rec.CODVENDEDOR, rec.DP, rec.DUP_REC_NF, rec.CODVENDA, rec.FORMARECEBIMENTO ,rec.BL, rec.DESCONTADO, rec.CONTACREDITO
      ,rec.VALOR_PRIM_VIA, rec.CODIGOBOLETO
      FROM RECEBIMENTO rec 
      inner join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE       
      left outer join venda v on v.CODVENDA = rec.CODVENDA 
      where rec.STATUS <> 'NF'
      group by 
        rec.CODCLIENTE
        ,cli.NOMECLIENTE 
        , rec.TITULO,  rec.EMISSAO
        , rec.DATAVENCIMENTO, rec.DATACONSOLIDA, rec.CODRECEBIMENTO,  rec.VALOR_RESTO, 
        rec.STATUS, rec.DATARECEBIMENTO, rec.VALORRECEBIDO
        , rec.VIA, rec.N_DOCUMENTO 
        , rec.HISTORICO, rec.DESCONTO, rec.JUROS, rec.FUNRURAL, rec.PARCELAS, rec.PERDA
        , cli.RAZAOSOCIAL, rec.CAIXA, rec.CODALMOXARIFADO
        , rec.CODVENDEDOR, rec.DP, rec.DUP_REC_NF, rec.CODVENDA, rec.FORMARECEBIMENTO ,rec.BL, rec.DESCONTADO, rec.CONTACREDITO,rec.VALOR_PRIM_VIA, rec.CODIGOBOLETO
      into :status, :dataRecebimento, :DATACONSOLIDA, :vlrrec, :vlrJuros, :vlrMulta, :vlrPerda, :vlrDesc, :desconto,  :via
        , :N_documento, :emissao, :codRecebimento
        , :titulo, :dataVencimento, :valor_resto 
        , :nomeCliente, :codCliente, :historico, :statusP
        , :razaoSocial,  :caixa, codAlmoxarifado
        , :codVendedor, :DP, :DUP_REC_NF, :codVenda, :FORMARECEBIMENTO ,:BL, :DESCONTADO, :CONTACREDITO, valorTitulo, :CODIGOBOLETO
      do
      begin

        if (codVenda is null) then  
          codVenda = 0;
     
        if (codVenda > 0) then 
          SELECT First 1 v.CODMOVIMENTO 
          FROM Venda v
            where v.CODVENDA = :codVenda 
            into :codMovimento;     
      
        if (via = '01/01') then
        begin 
          valor_prim_via = valorTitulo;
          saldo = valorTitulo;
        end  

        if (vlrRec is null) then 
          vlrRec = 0;
        if (vlrJuros is null) THEN  
          vlrJuros = 0;
          
        if (vlrMulta is null) then 
          vlrMulta = 0;
          
        if (vlrPerda is null) then 
          vlrPerda = 0;
          
        if (vlrDesc is null) then 
          vlrDesc = 0;
                  
        valorrecebido = vlrrec + vlrJuros + vlrMulta;
         -- retirei isto da linha acima 25032014:    - vlrPerda - vlrDesc
        if (valorrecebido < 0) then 
          valorRecebido = (-1) * valorrecebido;
        if (DESCONTADO = 'S') then
          StatusP = 'DESCONTADO';
        if (valorRecebido is null) THEN 
          valorRecebido = 0;
        saldo = saldo - valorRecebido;
        if (tituloAtual = titulo) then  
          valorTitulo = null;
        valorRec = valor_resto - valorRecebido + vlrJuros + vlrMulta - vlrPerda - vlrDesc;
        suspend;
        tituloAtual = titulo;
        dataRecebimento = null;
        valorRecebido = 0;
        historico = null;
        n_documento = null; 
        codVenda = null;
        codMovimento = null;
		CODIGOBOLETO = null;
      end
   end
