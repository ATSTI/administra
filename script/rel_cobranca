set term ^ ;
CREATE OR ALTER PROCEDURE REL_COBRANCA (
    CODID integer,
    N_COPIAS integer,
    DTA1 date,
    DTA2 date
    )
RETURNS (
    CODCLI Integer,
    NOMECLI Varchar(60),
    RAZAO Varchar(60),
    titulo Varchar(120),
    DTAVENCIMENTO Date,
    TOTALDEVE Double precision, 
    codMovimento integer,
    cnpj varchar(30),
    datavenda date, 
    quantidade double precision,
    preco double precision, 
    produto varchar(300),
    codpro varchar(30)
    
    )
AS
DECLARE VARIABLE CODMOV INTEGER;
DECLARE VARIABLE CODMOVDET INTEGER;
DECLARE VARIABLE J INTEGER = 0;
DECLARE VARIABLE TIPOPROD CHAR(7);
DECLARE VARIABLE TIT VARCHAR(7);
DECLARE VARIABLE VALOR DOUBLE PRECISION;

BEGIN
   titulo = '';
   codMov = 0;
   totaldeve = 0;
   --Total Geral :
   SELECT SUM(rec.VALOR_RESTO)
      FROM RECEBIMENTO rec 
     WHERE ((rec.codcliente = :codid) or (:codid = 9999999)) and (rec.EMISSAO between :DTA1 and :DTA2) and (rec.DP = 1)
      into :totaldeve;
     
    FOR SELECT rec.CODCLIENTE, SUM(rec.VALOR_RESTO), rec.TITULO, ven.DATAVENDA 
      FROM RECEBIMENTO rec 
      inner join VENDA ven on rec.CODVENDA = ven.CODVENDA
      WHERE ((rec.codcliente = :codid) or (:codid = 9999999)) and (rec.EMISSAO between :DTA1 and :DTA2) and (rec.DP = 1)
      GROUP BY rec.CODCLIENTE, ven.CODMOVIMENTO, rec.TITULO, ven.DATAVENDA 
       into :codcli, :valor, :tit, :datavenda
      DO BEGIN --1
         if (titulo = '') then 
           titulo = tit;
         else 
           titulo = titulo || ', ' || tit;  
         select c.RAZAOSOCIAL, c.NOMECLIENTE, c.CNPJ from CLIENTES c where c.CODCLIENTE = :codcli
           into :RAZAO, :NOMECLI, :cnpj;
         
         /*if (codMov <> codMovimento) then
         begin -- 2  
         
            for select  p.produto, p.codpro, sum(md.quantidade), sum(md.VLR_BASE*md.QUANTIDADE)
             from movimentodetalhe md 
            inner join produtos p on p.CODPRODUTO = md.CODPRODUTO        
            where md.CODMOVIMENTO = :codmovimento
            group by p.produto, p.codpro 
             into :produto, :codpro,:quantidade, :valor
            do begin --3
           */ 
               if (UDF_DAY(current_date) > 10 ) then
               begin
                 DTAVENCIMENTO = UDF_INCMONTH(current_date, 1);
               end
               else
                  DTAVENCIMENTO = current_date;
           /*    
            end -- 3 
            codMov = codMovimento;
            
         END --2*/
         
      end --1   
               J = 0;
               WHILE (N_COPIAS > J) do
               begin
                  NOMECLI = NOMECLI || CAST(J AS CHAR(1));
                  SUSPEND; 
                  J = J + 1; 
               END
      
END
