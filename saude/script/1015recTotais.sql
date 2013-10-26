set term ^;
CREATE OR ALTER PROCEDURE REC_TOTAIS(SITUACAO CHAR(2))
RETURNS ( TOTALTITULO                          DOUBLE PRECISION
        , TOTALRECEBIDO                            DOUBLE PRECISION
        , TOTALPENDENTE                          DOUBLE PRECISION
        ,EMISSAO DATE
        ,DATARECEBIMENTO date
        ,DATAVENCIMENTO date
        ,TITULO VARCHAR(18)
        ,CODCLIENTE INTEGER
        ,CODALMOXARIFADO INTEGER, STATUS CHAR(2)
        ,FORMARECEBIMENTO CHAR(1)
        ,CAIXA SMALLINT
        , GERABOL                          CHAR( 1 )
        , GERAENV                          CHAR( 1 )
        , GERAAVISO                        CHAR( 1 )
        , EMVIAGEM                         CHAR( 1 )
        )
AS
  DECLARE VARIABLE TOT Double precision;
  DECLARE VARIABLE TOTALREC Double precision = 0;
  DECLARE VARIABLE tit VARCHAR(18);
BEGIN 
  Titulo = '';
  FOR SELECT sum(valorRecebido+juros), sum(valor_Resto-valorRecebido-REC.desconto+juros), VALOR_PRIM_VIA, titulo, REC.codcliente, 
     emissao, REC.status, datavencimento, datarecebimento, CODALMOXARIFADO, FORMARECEBIMENTO, CAIXA , GERABOL , GERAENV, GERAAVISO, EMVIAGEM
     from RECEBIMENTO REC  INNER JOIN CLIENTES CLI ON CLI.CODCLIENTE = REC.CODCLIENTE WHERE ((REC.STATUS = :SITUACAO) OR (:SITUACAO = '00')) 
      group by REC.codcliente, emissao, titulo, REC.status, datavencimento, datarecebimento, VALOR_PRIM_VIA, CODALMOXARIFADO, FORMARECEBIMENTO, caixa
      , GERABOL , GERAENV, GERAAVISO, EMVIAGEM
      order by REC.codcliente, emissao, titulo, REC.status desc
     INTO :TOTALRECEBIDO, :TOTALPENDENTE, :TOT, :tit, :codCliENTE, :emissao, :sTatus, :DATAVENCIMENTO, :DATARECEBIMENTO, :CODALMOXARIFADO, :FORMARECEBIMENTO , :CAIXA
     ,:GERABOL , :GERAENV, :GERAAVISO, :EMVIAGEM
  DO begin
     if (status <> '5-') then
       TOTALPENDENTE = 0; 
     if (tit <> titulo) then
     begin
       if (tot = 0) then
       begin
         for select valor_prim_via from recebimento where codcliente = :codCliENTE and emissao = :emissao and 
           titulo = :tit and valor_prim_via > 0.09
         into :tot
         do begin
         end 
       end
       /*else
        tot = 0;*/
     end
     else 
       tot = 0; 
     TOTALTITULO = tot;
     titulo = :tit;
     if (situacao = '7-') then
       TOTALPENDENTE = TOTALTITULO - TOTALRECEBIDO;
     suspend;
  end
end
