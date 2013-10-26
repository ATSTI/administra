CREATE OR ALTER PROCEDURE IMPRIMESUITES(
  PCOD INTEGER,
  PDATA DATE)
RETURNS(
  DESCRICAO VARCHAR(300) CHARACTER SET WIN1252,
  SUITE VARCHAR(200) CHARACTER SET WIN1252,
  VARLORSUITE DOUBLE PRECISION,
  PERIODOINI TIMESTAMP,
  PERIODOFIM TIMESTAMP)
AS
DECLARE VARIABLE vCodVenda Integer;
DECLARE VARIABLE vCodmov Integer;
DECLARE VARIABLE vCodAlm Integer;
BEGIN
  /* Procedure body */
  For Select rec.CODVENDA, vd.CODMOVIMENTO FROM RECEBIMENTO rec inner join VENDA vd on vd.CODVENDA = rec.CODVENDA
  where ((rec.CODORIGEM = :pCod) or (:pCod = 9999999)) and (rec.DATAVENCIMENTO = :pData)
  into :vCodVenda, :vCodmov do
  begin
     for select movd.CODALMOXARIFADO, movd.DESCPRODUTO, movd.VALTOTAL, movd.PERIODOINI,
      (case when (movd.PERIODOINI is not null) then udf_IncMinute(movd.PERIODOINI, prod.QTDE_PCT)  end)
     FROM MOVIMENTODETALHE movd inner join PRODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO
     where CODMOVIMENTO = :vCodmov
     into :vCodAlm, :DESCRICAO, :VARLORSUITE, :PERIODOINI, :PERIODOFIM  DO
     begin
       Select NOME FROM PLANO Where CODIGO = :vCodAlm
       into :SUITE;
       if (vCodAlm > 0) then
         suspend;
     end
  end
END;
