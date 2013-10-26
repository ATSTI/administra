CREATE OR ALTER PROCEDURE  GERA_REC_DUPLICATAS( N_TITULO                         VARCHAR( 18 )
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
DECLARE VARIABLE VLR_REC DOUBLE PRECISION;
DECLARE VARIABLE COD_VEND SMALLINT;
DECLARE VARIABLE COD_CD INTEGER;
DECLARE VARIABLE COD_CCRE INTEGER;
DECLARE VARIABLE SERIE CHARACTER(2);
DECLARE VARIABLE NUM_DUP INTEGER;
DECLARE VARIABLE TIT VARCHAR( 18 );
begin
    status_venda = '5-';
    if (caixa is null) THEN 
       caixa = 33;
     /* Pegando os dados do título lançado - pego só do primeiro pq os campos não são importantes*/
     SELECT FIRST 1 CODVENDA, CODUSUARIO, CODALMOXARIFADO, CAIXA, 
        CODVENDEDOR, CONTADEBITO, CONTACREDITO, TITULO
     FROM RECEBIMENTO 
     where (DP = 0) AND (CODCLIENTE = :COD_CLIENTE)
     INTO :V_CODORIGEM, :COD_US, :COD_CC, :COD_CAIXA , 
              :COD_VEND, :COD_CD, :COD_CCRE, :TIT;

     if (v_codorigem is null) then  -- Não encontrou na busca acima
     begin
       select first 1 v.codVenda from venda v where (v.NOTAFISCAL || '-' || v.SERIE = :N_Titulo) and 
       v.CODCLIENTE = :cod_cliente and v.DATAVENDA = :dt_emissao
       into :v_codOrigem;
     end 
      i = 0;
      VLR_PRIM_VIA = V_VLRTITULO;
      N_PARC = PARC;

      SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'SERIEDUPLICATA'
      INTO :SERIE;

      -- Qdo é gerado nota fiscal este campo vem com o número dela
      if ((SERIE IS NULL) and (TipoNovoDoc = 'DUPLICATA')) then 
      begin 
        /* Buscando a numeracao da duplicata */
        SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'SERIEDUPLICATA'
        INTO :SERIE;
        IF (SERIE IS NULL) THEN
           INSERT INTO PARAMETRO (PARAMETRO, DADOS) VALUES ('SERIEDUPLICATA','D');
        SELECT ULTIMO_NUMERO FROM SERIES WHERE SERIE = :SERIE
        INTO :NUM_DUP;
        IF (NUM_DUP IS NULL) THEN 
        BEGIN
          INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES ('D', 1);
          NUM_DUP = 1;
        END
        NUM_DUP = NUM_DUP + 1;
        N_TITULO = CAST(NUM_DUP AS VARCHAR(10)) || '-' || SERIE; 
      end 
      else begin 
        Select ULTIMO_NUMERO FROM SERIES WHERE SERIE = :SERIE 
          into :NUM_DUP; 
        NUM_DUP = NUM_DUP + 1;
        N_TITULO = CAST(NUM_DUP AS VARCHAR(10)) || '-' || SERIE; 
      end
      --if (TipoNovoDoc = 'DUPLICATA') then 
      --  N_TITULO = tit; 
      while (i < :PARC) do
      begin
        forma = '1';
        if (tipoCobranca = 'CARTEIRA') then
          status_venda = '9-';
        if (tipoCobranca = 'DESCONTO') then
        begin 
          status_venda = '7-';
          COD_CAIXA = CAIXA;
          forma = '5';
        end 
          if ((i+1) > 1) then 
         begin
            VLR_PRIM_VIA = 0;
         end
         VLR_RESTO =  ((V_VLRTITULO - V_DESCONTO + V_JUROS) - V_VLRRECEBIDO)/N_PARC;

          UPDATE RECEBIMENTO SET DUP_REC_NF = :TIPONOVODOC, DP = null, STATUS = '10'
          , VALORRECEBIDO = VALOR_RESTO WHERE DP = 0;
          vlr_rec = 0;
         if (status_venda = '7-') then 
           vlr_rec = vlr_resto;

         INSERT INTO RECEBIMENTO 
           (CODVENDA, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS 
           , VIA, FORMARECEBIMENTO, CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
           , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS 
           , CAIXA, CONTADEBITO, CONTACREDITO, TITULO, DP, DATARECEBIMENTO, DATACONSOLIDA, VALORRECEBIDO
           , outro_credito, outro_debito)
         VALUES 
            (:V_CODORIGEM, (:N_TITULO), :DATA_EMISSAO, :COD_CLIENTE, udf_IncMonth(:DATA_VENC, :i),
            :status_venda, CAST((:i + 1) as CHAR(3)), :forma, :COD_CC, :COD_VEND, :COD_US,  
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :V_VLRTITULO, :PARC
            , :COD_CAIXA, :COD_CD, :COD_CCRE, :N_TITULO, 0, :dataRec, :dataRec, :vlr_rec,0,0);
          --UPDATE SERIES SET ULTIMO_NUMERO =  :NUM_DUP WHERE SERIE = :SERIE;
         i = i + 1;    
      end
    UPDATE SERIES SET ULTIMO_NUMERO = :NUM_DUP WHERE SERIE = :SERIE; 
          
end
