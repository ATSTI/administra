SET TERM ^ ;
CREATE PROCEDURE COMISSAO_OS
RETURNS (
    CODCLIENTE integer,
    DATAVENDA date,
    CODMOVIMENTO integer,
    NOTAFISCAL integer,
    CODVENDA integer,
    CODUSUARIO integer,
    CONTROLE varchar(30),
    RAZAOSOCIAL varchar(60),
    NOME_FUNCIONARIO varchar(60),
    VALOR_COMISSAO double precision,
    VALORCOMISSAO double precision,
    OBS varchar(300),
    VALOR double precision,
    VALOR_P double precision,
    ID_OS integer,
    UN char(3),
    TIPO varchar(20) )
AS
declare variable coddet integer;
declare variable   V    double precision;
BEGIN
  valor_p = 0;
  v = 0;
  for select distinct rec.CODCLIENTE, rec.DATAVENDA, rec.CODMOVIMENTO, rec.NOTAFISCAL, rec.CODVENDA,
    rec.CONTROLE, cli.RAZAOSOCIAL
   from VENDA rec
   inner join movimento m on m.CODMOVIMENTO = rec.CODMOVIMENTO
   left outer join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE 
  where m.CODNATUREZA = 3 
  into :CODCLIENTE, :DATAVENDA, :CODMOVIMENTO, :NOTAFISCAL, :CODVENDA, :CONTROLE, :RAZAOSOCIAL
  do begin
    
    for select distinct osd.CODUSUARIO, func.NOME_FUNCIONARIO, func.valor_comissao, p.PRODUTO, p.TIPO, p.UNIDADEMEDIDA, osd.ID_OS, 
     p.VALORCOMISSAO , mv.CODDETALHE
     from movimento m 
    inner join movimentodetalhe mv on mv.codmovimento = m.codmovimento
    inner join os_det osd on osd.id_os_det = mv.codigo
    inner join PRODUTOS p on p.codproduto = mv.codproduto 
     left outer join FUNCIONARIO func on osd.CODUSUARIO = func.COD_FUNCIONARIO 
    where m.codnatureza = 3 
      and m.CODMOVIMENTO = :codMovimento
      and p.UNIDADEMEDIDA <> 'TC'
    group by osd.CODUSUARIO, func.NOME_FUNCIONARIO, func.valor_comissao, p.PRODUTO, p.TIPO, p.UNIDADEMEDIDA, osd.ID_OS, p.VALORCOMISSAO, mv.CODDETALHE
     into :CODUSUARIO, :NOME_FUNCIONARIO, :valor_comissao, :obs, :tipo, :un, :ID_OS, :valorcomissao, :coddet
    do begin 
      /* busco pelo valor das pecas */
      valor = 0;
      if (tipo = 'SERV') then 
      begin 
        select md.VALTOTAL VALOR
          from movimentodetalhe md 
         inner join PRODUTOS p on p.codproduto = md.codproduto          
         where md.CODDETALHE = :coddet
           and p.UNIDADEMEDIDA <> 'TC'
           and p.TIPO = 'SERV'
          into :valor;
      end     
      /* busco pelo valor das pecas */
      select md.VALTOTAL VALOR
       from movimentodetalhe md 
      inner join PRODUTOS p on p.codproduto = md.codproduto 
      where  md.CODDETALHE = :coddet
        and p.UNIDADEMEDIDA <> 'TC'
       into :v ;
       if (v is null) then 
         v = 0;
       VALOR_P = v;
    suspend;
    
    end     
   /* suspend; */
 
  end       
END^
SET TERM ; ^

GRANT EXECUTE
 ON PROCEDURE COMISSAO_OS TO  SYSDBA;

