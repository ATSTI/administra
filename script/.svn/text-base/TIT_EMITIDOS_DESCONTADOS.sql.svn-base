CREATE OR ALTER PROCEDURE TIT_EMITIDOS_DESCONTADOS (
    dataini date,
    datafin date)
returns (
    emitidos integer,
    val_bruto double precision,
    descontados integer,
    rec_descontados double precision,
    liquido double precision)
as
BEGIN
  FOR
    select count(recebimento.emissao ) as descontados ,  sum(recebimento.valor_resto)as val_bruto
    from recebimento
    where recebimento.emissao between :dataini and :datafin
    INTO :emitidos,:val_bruto
  DO
  BEGIN
    FOR
      select count( recebimento.titulo ) descontados , sum(recebimento.valorrecebido) as rec_descontados
      from parametro
      inner join plano on (parametro.dados = plano.conta)
      inner join recebimento on (plano.codigo = recebimento.caixa)
      where recebimento.datarecebimento between :dataini and :datafin
        and parametro.parametro = 'TITULODESCONTADO'
      INTO :descontados ,:rec_descontados
    DO
    BEGIN
      if(rec_descontados is null)then
      rec_descontados = 0;
      liquido = val_bruto - rec_descontados ;
      SUSPEND;
    END
  END

END
