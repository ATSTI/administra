set term ^;
CREATE OR ALTER PROCEDURE PAG_TOTAIS(SITUACAO CHAR(2))
RETURNS ( TOTALTITULO                          DOUBLE PRECISION
        , TOTALPAGO                            DOUBLE PRECISION
        , TOTALPENDENTE                        DOUBLE PRECISION
   ,EMISSAO DATE
   ,DATAPAGAMENTO date
   ,DATAVENCIMENTO date
   ,TITULO VARCHAR(18)
   ,CODFORNECEDOR INTEGER
   ,CODALMOXARIFADO INTEGER, STATUS CHAR(2), VALORTITULO DOUBLE PRECISION,
   FORMAPAGAMENTO CHAR(1), 
    NOME VARCHAR(60), DP SMALLINT
        )
AS
  DECLARE VARIABLE TOT Double precision;
  DECLARE VARIABLE tit VARCHAR(18);
BEGIN 
  FOR SELECT sum(valorRecebido+juros), sum(valor_Resto-valorRecebido-desconto+juros), VALOR_PRIM_VIA, titulo, codFornecedor, 
     emissao, status, datavencimento, dataPagamento, CODALMOXARIFADO, FORMAPAGAMENTO, pl.NOME, dp
    from PAGAMENTO 
      left outer join PLANO pl on pl.CODIGO = CONTACREDITO
      WHERE ((STATUS = :SITUACAO) OR (:SITUACAO = '00')) 
      group by codFornecedor, emissao, titulo, status, datavencimento, dataPagamento, VALOR_PRIM_VIA, CODALMOXARIFADO, FORMAPAGAMENTO, pl.NOME
      order by codFornecedor, emissao, titulo, status desc
     INTO :TOTALPAGO, :TOTALPENDENTE, :TOT, :tit, :codFornecedor, :emissao, :sTatus, :DATAVENCIMENTO, :DATAPAGAMENTO, 
       :CODALMOXARIFADO, :FORMAPAGAMENTO , :NOME, :DP
  DO begin

     if (status <> '5-') then
       TOTALPENDENTE = 0; 
     if (tit <> titulo) then
     begin
       if (tot = 0) then
       begin
         for select valor_prim_via from Pagamento where codFornecedor = :codFornecedor and emissao = :emissao and 
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
     if (TOTALTITULO IS NULL) THEN
       TOTALTITULO = 0;
     if (TOTALPAGO IS NULL) THEN
       TOTALPAGO = 0;
     if (tot is null) then 
       tot = 0; 

     if (situacao = '7-') then
       TOTALPENDENTE = TOTALTITULO - TOTALPAGO;
     VALORTITULO = tot;
     
     suspend;
  end
end
