SET TERM ^ ;
ALTER PROCEDURE SP_CR (
    PVENDA Integer )
RETURNS (
    PARCELA Varchar(150),
    PARCELA1 Varchar(150),
    PARCELA2 Varchar(150),
    PARCELA3 Varchar(150),
    PARCELA4 Varchar(150),
    PARCELA5 Varchar(150),
    PARCELA6 Varchar(150),
    PARCELA7 Varchar(150),
    PARCELA8 Varchar(150),
    PARCELA9 Varchar(150),
    PARCELA10 Varchar(150) )
AS
DECLARE VARIABLE I INTEGER;
DECLARE VARIABLE TIT VARCHAR( 18 );
DECLARE VARIABLE VENC DATE;
DECLARE VARIABLE VALOR_N DOUBLE PRECISION;
DECLARE VARIABLE VALOR_R DOUBLE PRECISION;
DECLARE VARIABLE VALOR_P DOUBLE PRECISION;
DECLARE VARIABLE PARC INTEGER;
DECLARE VARIABLE DATA DATE;
DECLARE VARIABLE STATUS VARCHAR(30);
begin
  /* Procedure Text */

   I = 1;

  for select TITULO,DATAVENCIMENTO,VALORTITULO,VALOR_RESTO,VALORRECEBIDO,VIA,DATARECEBIMENTO, CASE STATUS
   WHEN '5-' THEN 'Pendente' WHEN '7-' THEN 'Recebido' WHEN '1-' THEN 'Aguardando' end as Situacao
  from RECEBIMENTO WHERE (CODVENDA = :PVENDA) ORDER BY VIA

  into :tit,:venc,:valor_n,:valor_r,:valor_p,:parc,:data,:status
  do begin
    IF (I = 1) THEN
    begin
      PARCELA = tit || '-' || parc; 
      PARCELA = PARCELA || ' ' || UDF_PADL(extract(day from venc),0,2) || '/' || UDF_PADL(extract(month from venc),0,2)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA = PARCELA || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA = PARCELA || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 2) THEN
    begin
      PARCELA1 = tit || '-' || parc;
      PARCELA1 = PARCELA1 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA1 = PARCELA1 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA1 = PARCELA1 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 3) THEN
    begin
      PARCELA2 = tit || '-' || parc;
      PARCELA2 = PARCELA2 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA2 = PARCELA2 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA2 = PARCELA2 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 4) THEN
    begin
      PARCELA3 = tit || '-' || parc;
      PARCELA3 = PARCELA3 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA3 = PARCELA3 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA3 = PARCELA3 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 5) THEN
    begin
      PARCELA4 = tit || '-' || parc;
      PARCELA4 = PARCELA4 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA4 = PARCELA4 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA4 = PARCELA4 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 6) THEN
    begin
      PARCELA5 = tit || '-' || parc;
      PARCELA5 = PARCELA5 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA5 = PARCELA5 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA5 = PARCELA5 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 7) THEN
    begin
      PARCELA6 = tit || '-' || parc;
      PARCELA6 = PARCELA6 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA6 = PARCELA6 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA6 = PARCELA6 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 8) THEN
    begin
      PARCELA7 = tit || '-' || parc;
      PARCELA7 = PARCELA7 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA7 = PARCELA7 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA7 = PARCELA7 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 9) THEN
    begin
      PARCELA8 = tit || '-' || parc;
      PARCELA8 = PARCELA8 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA8 = PARCELA8 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA8 = PARCELA8 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 10) THEN
    begin
      PARCELA9 = tit || '-' || parc;
      PARCELA9 = PARCELA9 || ' ' || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA9 = PARCELA9 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA9 = PARCELA9 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end


    IF (I = 11) THEN
    begin
      PARCELA10 = tit || '-' || parc;
      PARCELA10 = PARCELA10 || extract(day from venc) || '/' || extract(month from venc)   
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA10 = PARCELA10 || '    ' || cast(valor_p as numeric(9,2)) || '    ' --|| parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA10 = PARCELA10 || '    ' || cast(valor_r as numeric(9,2)) || '    ' --|| parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    I = I + 1;

    end
  suspend;
end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE SP_CR TO  SYSDBA;

