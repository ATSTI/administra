CREATE OR ALTER PROCEDURE RELCOMPRAPRODUTOMES (
    ANO Integer )
RETURNS (
    FAM_PROD Varchar(300),
    MES1 Double precision,
    MES2 Double precision,
    MES3 Double precision,
    MES4 Double precision,
    MES5 Double precision,
    MES6 Double precision,
    MES7 Double precision,
    MES8 Double precision,
    MES9 Double precision,
    MES10 Double precision,
    MES11 Double precision,
    MES12 Double precision,
    TOTAL Double precision )
AS
declare variable codpro integer;
Declare Variable mes smallint;
Declare Variable qtde Double precision;
BEGIN
  FOR Select codProduto, PRODUTO from produtos order by PRODUTO
    into :codPro, :FAM_PROD
  do begin  
    mes1 = 0;
    mes2 = 0;
    mes3 = 0;
    mes4 = 0;
    mes5 = 0;
    mes6 = 0;
    mes7 = 0;
    mes8 = 0;
    mes9 = 0;
    mes10 = 0;
    mes11 = 0;
    mes12 = 0;
    total = 0;
    FOR SELECT sum(det.QUANTIDADE), sema.MES
      FROM COMPRA ven 
      inner join MOVIMENTODETALHE det on det.CODMOVIMENTO = ven.CODMOVIMENTO 
      inner join SEMANA sema on sema.DATA = ven.DATACOMPRA 
      where (det.CODPRODUTO = :codPro) and (ven.STATUS = 0) and (sema.ANO = :ANO)
        group by sema.MES 
    INTO :qtde, :MES 
    do
    begin
      IF (QTDE IS NULL) THEN
        QTDE = 0;
      total = total + qtde;
      if (mes = 1) then 
      begin
        mes1 = mes1 + qtde; 
      end   
      if (mes = 2) then 
      begin
        mes2 = mes2 + qtde; 
      end   
      if (mes = 3) then 
      begin
        mes3 = mes3 + qtde; 
      end   
      if (mes = 4) then 
      begin
        mes4 = mes4 + qtde; 
      end   
      if (mes = 5) then 
      begin
        mes5 = mes5 + qtde; 
      end   
      if (mes = 6) then 
      begin
        mes6 = mes6 + qtde; 
      end   
      if (mes = 7) then 
      begin
        mes7 = mes7 + qtde; 
      end   
      if (mes = 8) then 
      begin
        mes8 = mes8 + qtde; 
      end   
      if (mes = 9) then 
      begin
        mes9 = mes9 + qtde; 
      end   
      if (mes = 10) then 
      begin
        mes10 = mes10 + qtde; 
      end   
      if (mes = 11) then 
      begin
        mes11 = mes11 + qtde; 
      end   
      if (mes = 12) then 
      begin
        mes12 = mes12 + qtde; 
      end   

    end
    if (total > 0) then 
      suspend;
  end  --Fim for Produto
end