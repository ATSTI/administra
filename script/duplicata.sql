set term ^ ;
CREATE OR ALTER PROCEDURE DUPLICATA(PCOD INTEGER)
RETURNS(
  codVenda Integer,
  codCliente Integer,
  Emissao Date, 
  DataVencimento date, 
  valor_resto double precision,  
  titulo varchar(30),
  via char(2),
  razaoSocial varchar(60),
  nomeCliente varchar(60),
  cnpj varchar(30),
  inscestadual varchar(30),
  tipofirma SMALLINT, 
  numnf integer,
  parcelas SMALLINT,
  extenso VARCHAR(200)
)
as
begin   
  for select rec.CODVENDA,
          rec.CODCLIENTE,
          rec.EMISSAO,
          rec.DATAVENCIMENTO,
          rec.VALOR_RESTO,
          rec.TITULO,
          rec.VIA, 
          cli.RAZAOSOCIAL,
          cli.NOMECLIENTE,
          cli.CNPJ,
          cli.INSCESTADUAL, 
          cli.TIPOFIRMA , nf.numnf, rec.PARCELAS
        from RECEBIMENTO rec 
            Left outer join  CLIENTES cli 
            on cli.CODCLIENTE=rec.CODCLIENTE 
            left outer join notafiscal nf on nf.codvenda = rec.codvenda 
        where rec.CODVENDA = :PCOD and rec.STATUS <> '7-'
        into :codVenda, :codCliente, :emissao, :dataVencimento, :valor_resto
        , :titulo, :via, :razaoSocial, :nomeCliente, :cnpj, :inscEstadual, 
        :tipoFirma, :numnf, :parcelas 
     do begin 
       select * from NUMERO_POR_EXTENSO(:valor_resto)
         into :extenso;
       suspend; 
     end 
end          