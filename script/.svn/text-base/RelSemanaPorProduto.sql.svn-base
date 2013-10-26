CREATE OR ALTER PROCEDURE RelSemanaPorProduto(
    SEMAN Smallint,
    MESAN Smallint,
    ANO Integer )
RETURNS (
    FAM_PROD Varchar(300),
    QTDE1 Double precision,
    TOTAL1 Double precision,
    QTDE2 Double precision,
    TOTAL2 Double precision,
    QTDE3 Double precision,
    TOTAL3 Double precision,
    QTDE4 Double precision,
    TOTAL4 Double precision,
    SEMANA Integer,
    MES Integer )
AS
DECLARE VARIABLE PRODUTO INTEGER;
BEGIN
  FOR SELECT sum(det.QUANTIDADE), sum(det.VALTOTAL), pro.PRODUTO, det.CODPRODUTO
    FROM VENDA ven 
    inner join MOVIMENTODETALHE det on det.CODMOVIMENTO = ven.CODMOVIMENTO 
    inner join PRODUTOS pro on pro.CODPRODUTO = det.CODPRODUTO 
    inner join SEMANA sema on sema.DATA = ven.DATAVENDA 
      where (((sema.SEMANA = :SEMAN) or (:SEMAN = 100)) and ((sema.MES = :MESAN) or (:MESAN = 100))
      and (ven.STATUS = 0) and (sema.ANO = :ANO))
    group by pro.PRODUTO, det.CODPRODUTO order by pro.PRODUTO
  INTO :QTDE1, :TOTAL1, :FAM_PROD, :PRODUTO 
  do
  begin
    IF (QTDE1 IS NULL) THEN
      QTDE1 = 0;
    IF (TOTAL1 IS NULL) THEN
      TOTAL1 = 0;
    SELECT sum(det.QUANTIDADE),  sum(det.VALTOTAL)
    FROM VENDA ven 
    inner join MOVIMENTODETALHE det on det.CODMOVIMENTO = ven.CODMOVIMENTO 
    inner join PRODUTOS pro on pro.CODPRODUTO = det.CODPRODUTO 
    inner join SEMANA sema on sema.DATA = ven.DATAVENDA 
      where (((sema.SEMANA = :SEMAN) or (:SEMAN = 100)) and ((sema.MES = :MESAN) or (:MESAN = 100))
      and (ven.STATUS = 0) and (sema.ANO = (:ANO - 1)) 
      AND (det.CODPRODUTO = :PRODUTO))
    INTO :QTDE2, :TOTAL2;
    IF (QTDE2 IS NULL) THEN
      QTDE2 = 0;
    IF (TOTAL2 IS NULL) THEN
      TOTAL2 = 0;
    /* Ano Penultimo */
    SELECT sum(det.QUANTIDADE), sum(det.VALTOTAL)
    FROM VENDA ven 
    inner join MOVIMENTODETALHE det on det.CODMOVIMENTO = ven.CODMOVIMENTO 
    inner join PRODUTOS pro on pro.CODPRODUTO = det.CODPRODUTO 
    inner join SEMANA sema on sema.DATA = ven.DATAVENDA 
      where (((sema.SEMANA = :SEMAN) or (:SEMAN = 100)) and ((sema.MES = :MESAN) or (:MESAN = 100))
      and (ven.STATUS = 0) and (sema.ANO = (:ANO - 2)) 
      AND (det.CODPRODUTO = :PRODUTO))
    INTO :QTDE3, :TOTAL3;
    IF (QTDE3 IS NULL) THEN
      QTDE3 = 0;
    IF (TOTAL3 IS NULL) THEN
      TOTAL3 = 0;
    /* Ano Atual  det.CODPRODUTO = :PRODUTO  */
    SELECT sum(det.QUANTIDADE),  sum(det.VALTOTAL)
    FROM VENDA ven 
    inner join MOVIMENTODETALHE det on det.CODMOVIMENTO = ven.CODMOVIMENTO 
    inner join PRODUTOS pro on pro.CODPRODUTO = det.CODPRODUTO 
    inner join SEMANA sema on sema.DATA = ven.DATAVENDA 
      where (((sema.SEMANA = :SEMAN) or (:SEMAN = 100)) and ((sema.MES = :MESAN) or (:MESAN = 100))
      and (ven.STATUS = 0) and (sema.ANO = (:ANO - 3))
      AND (det.CODPRODUTO = :PRODUTO))
    INTO :QTDE4, :TOTAL4;
    IF (QTDE4 IS NULL) THEN
      QTDE4 = 0;
    IF (TOTAL4 IS NULL) THEN
      TOTAL4 = 0;
    SEMANA = :SEMAN;
    MES = :MESAN;
    Suspend;
  end
end