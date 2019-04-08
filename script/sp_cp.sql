ALTER PROCEDURE  SP_CP( PCOMPRA                          INTEGER )
RETURNS ( PARCELA                          VARCHAR( 150 )
        , PARCELA01                        VARCHAR( 150 )
        , PARCELA02                        VARCHAR( 150 )
        , PARCELA03                        VARCHAR( 150 )
        , PARCELA04                        VARCHAR( 150 )
        , PARCELA05                        VARCHAR( 150 )
        , PARCELA06                        VARCHAR( 150 )
        , PARCELA07                        VARCHAR( 150 )
        , PARCELA08                        VARCHAR( 150 )
        , PARCELA09                        VARCHAR( 150 )
        , PARCELA10                        VARCHAR( 150 )
        , PARCELA11                        VARCHAR( 150 )
        , PARCELA12                        VARCHAR( 150 ) )
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

  for select TITULO,DATAVENCIMENTO,VALORTITULO,VALOR_RESTO,VALORRECEBIDO,VIA,DATAPAGAMENTO, CASE STATUS
   WHEN '5-' THEN 'Pendente' WHEN '7-' THEN 'Recebido' WHEN '1-' THEN 'Aguardando' end as Situacao
  from PAGAMENTO WHERE (CODCOMPRA = :PCOMPRA) ORDER BY DATAVENCIMENTO

  into :tit,:venc,:valor_n,:valor_r,:valor_p,:parc,:data,:status
  do begin
    IF (I = 1) THEN
    begin
      PARCELA = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA = PARCELA || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA = PARCELA || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 2) THEN
    begin
      PARCELA01 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA01 = PARCELA01 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA01 = PARCELA01 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 3) THEN
    begin
      PARCELA02 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA02 = PARCELA02 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA02 = PARCELA02 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 4) THEN
    begin
      PARCELA03 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA03 = PARCELA03 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA03 = PARCELA03 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 5) THEN
    begin
      PARCELA04 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA04 = PARCELA04 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA04 = PARCELA04 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 6) THEN
    begin
      PARCELA05 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA05 = PARCELA05 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA05 = PARCELA05 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 7) THEN
    begin
      PARCELA06 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA06 = PARCELA06 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA06 = PARCELA06 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end


    IF (I = 8) THEN
    begin
      PARCELA07 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA07 = PARCELA07 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA07 = PARCELA07 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 9) THEN
    begin
      PARCELA08 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA08 = PARCELA08 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA08 = PARCELA08 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

     IF (I = 10) THEN
    begin
      PARCELA09 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA09 = PARCELA09 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA09 = PARCELA09 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

     IF (I = 11) THEN
    begin
      PARCELA10 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA10 = PARCELA10 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA10 = PARCELA10 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

     IF (I = 12) THEN
    begin
      PARCELA11 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA11 = PARCELA11 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA11 = PARCELA11 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end


    IF (I = 13) THEN
    begin
      PARCELA12 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA12 = PARCELA12 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA12 = PARCELA12 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end
    I = I + 1;

    end
  suspend;
end
