CREATE OR ALTER PROCEDURE RECIBO_RETIRA (
    pcod integer)
returns (
    codoc integer,
    coddetalhe integer,
    coddetalhe1 integer,
    codfir integer,
    nomeret varchar(60),
    nomedev varchar(60),
    ndocret varchar(100),
    dtprev date,
    dtret date,
    dtdev date,
    obsret varchar(60),
    obs blob sub_type 0 segment size 180,
    obsdev blob sub_type 0 segment size 180,
    tipo char(1))
as
declare variable j integer = 0;
declare variable n_copias integer = 2;
BEGIN
  FOR
    select CODOC,CODDETALHE,CODDETALHE, CODFIR, NOMERET, NDOCRET, DTPREV, DTRET,DTDEV, OBSRET, OBS ,OBSDEV, TIPO ,NOMEDEV from MOVDOCDET
    where CODDETALHE = :pcod
    INTO :CODOC,
         :CODDETALHE,
         :CODDETALHE1,
         :CODFIR,
         :NOMERET,
         :NDOCRET,
         :DTPREV,
         :DTRET,
         :DTDEV,
         :OBSRET,
         :OBS,
         :OBSDEV,
         :TIPO,
         :NOMEDEV
  DO
  BEGIN
    J = 0;
    WHILE (N_COPIAS > J) do
    begin
      CODDETALHE1 = CODDETALHE1 || CAST(J AS CHAR(1));
      SUSPEND;
      J = J + 1;
  END

  END
END
