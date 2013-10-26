set term ^;
/*
create table guiatransporte (
  id_guia integer not null primary key,
  conhecimento integer,
  natop varchar(60),
  codigo varchar(20),
  emissaolocal varchar(60),
  cod_cliente integer,
  cod_consignatario integer,
  cod_redespacho integer,  
  pago Char(1),
  apagar char(1),
  id_transportadora integer,
  basecalculo double precision,
  aliquota double precision,
  icms double precision,
  fretepesovolume varchar(20),
  fretevalor double precision,
  cadsce varchar(15),
  despacho varchar(15),
  pedagio double precision,
  outroes double precision,
  totalprestacao double precision,
  coleta varchar(100),
  Entrega varchar(100),
  obs varchar(300),
  data Date)
^

alter table notafiscal add id_guia integer ^*/

create generator gen_guia^
