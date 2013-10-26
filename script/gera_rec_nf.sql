CREATE OR ALTER PROCEDURE  GERA_REC_nf( N_TITULO                         VARCHAR( 18 )
                                    , DT_EMISSAO                       DATE
                                    , COD_CLIENTE                      INTEGER
                                    , DATA_EMISSAO                     DATE
                                    , DATA_VENC                        DATE
                                    , PARC                             INTEGER
                                    , V_VLRTITULO                      DOUBLE PRECISION
                                    , V_VLRRECEBIDO                    DOUBLE PRECISION
                                    , V_DESCONTO                       DOUBLE PRECISION
                                    , V_JUROS                          DOUBLE PRECISION
                                    , TIPOCOBRANCA VARCHAR(15)
                                    , CAIXA SMALLINT
                                    , DataRec date
                                    , TIPONOVODOC VARCHAR(15) 
)
AS
DECLARE VARIABLE I INTEGER;
DECLARE VARIABLE STATUS_VENDA CHAR(2);
DECLARE VARIABLE Forma CHAR(1);
DECLARE VARIABLE N_PARC INTEGER;
DECLARE VARIABLE V_CODORIGEM INTEGER;
DECLARE VARIABLE COD_US SMALLINT;
DECLARE VARIABLE COD_CC INTEGER;
DECLARE VARIABLE COD_CAIXA SMALLINT;
DECLARE VARIABLE COD_FORN INTEGER;
DECLARE VARIABLE VLR_PRIM_VIA DOUBLE PRECISION;
DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
DECLARE VARIABLE COD_VEND SMALLINT;
DECLARE VARIABLE COD_CD INTEGER;
DECLARE VARIABLE COD_CCRE INTEGER;
DECLARE VARIABLE SERIE CHARACTER(2);
DECLARE VARIABLE NUM_DUP INTEGER;
begin
    if (caixa is null) THEN 
       caixa = 33;
     /* Pegando os dados do título lançado - pego só do primeiro pq os campos não são importantes*/
     SELECT CODVENDA, CODUSUARIO, CODALMOXARIFADO, CAIXA, 
        CODVENDEDOR, CONTADEBITO, CONTACREDITO
     FROM RECEBIMENTO 
     where ((TITULO = :N_TITULO) AND (EMISSAO = :DT_EMISSAO) AND (CODCLIENTE = :COD_CLIENTE) AND VIA = 1) 
     INTO :V_CODORIGEM, :COD_US, :COD_CC, :COD_CAIXA , 
              :COD_VEND, :COD_CD, :COD_CCRE;
      i = 0;
      VLR_PRIM_VIA = V_VLRTITULO;
      N_PARC = PARC;
      /* Buscando a numeracao da duplicata */
      SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'SERIENF'
      INTO :SERIE;
      IF (SERIE IS NULL) THEN
          INSERT INTO PARAMETRO (PARAMETRO, DADOS) VALUES ('SERIENF','N');
      SELECT ULTIMO_NUMERO FROM SERIES WHERE SERIE = :SERIE
      INTO :NUM_DUP;
      IF (NUM_DUP IS NULL) THEN 
      BEGIN
         INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES ('N', 1);
         NUM_DUP = 1;
      END
      NUM_DUP = NUM_DUP + 1;
      N_TITULO = CAST(NUM_DUP AS VARCHAR(10)) || '-' || SERIE; 
      while (i < :PARC) do
      begin
        forma = '1';
        status_venda = '5-';
        COD_CAIXA = CAIXA;
        if ((i+1) > 1) then 
        begin
          VLR_PRIM_VIA = 0;
        end
        VLR_RESTO =  ((V_VLRTITULO - V_DESCONTO + V_JUROS) - V_VLRRECEBIDO)/N_PARC;
        INSERT INTO RECEBIMENTO 
           (CODVENDA, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS 
           , VIA, FORMARECEBIMENTO, CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
           , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS 
           , CAIXA, CONTADEBITO, CONTACREDITO, TITULO, DP, DATARECEBIMENTO, DATACONSOLIDA)
         VALUES 
            (:V_CODORIGEM, (:N_TITULO), :DATA_EMISSAO, :COD_CLIENTE, udf_IncMonth(:DATA_VENC, :i),
            :status_venda, CAST((:i + 1) as CHAR(3)), :forma, :COD_CC, :COD_VEND, :COD_US,  
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :V_VLRTITULO, :PARC
            , :COD_CAIXA, :COD_CD, :COD_CCRE, :N_TITULO, :NUM_DUP, :dataRec, :dataRec);
          UPDATE SERIES SET ULTIMO_NUMERO =  :NUM_DUP WHERE SERIE = :SERIE;
          UPDATE RECEBIMENTO SET DUP_REC_NF = :TIPONOVODOC, DP = :NUM_DUP, STATUS = '10'  WHERE DP = 0;
         i = i + 1;    
      end
end
