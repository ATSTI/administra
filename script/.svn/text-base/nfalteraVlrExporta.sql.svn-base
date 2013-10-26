SET TERM ^ ;
ALTER PROCEDURE NFALTERAVLREXPORTA (
    DATA1 Date,
    DATA2 Date,
    PERCENTALTERA Double precision,
    ONDEALTERA Varchar(15) )
AS
declare variable nf integer;
declare variable mov integer;
begin
  if (percentaltera is null) then 
    percentAltera = 0;
  if (percentAltera > 0) then 
begin 
  percentAltera = (percentAltera / 100);
  for Select nf.NUMNF, v.CODMOVIMENTO from NOTAFISCAL nf, VENDA v
     where v.codVenda = nf.CODVENDA and (nf.DTAEMISSAO between :data1 and :data2) and (nf.status is null) 
    into :nf, :mov 
  do begin
    if (ondeAltera = 'PRECO') then 
    begin 
      update NOTAFISCAL nf set nf.VLRTOTALEXP = nf.VALOR_TOTAL_NOTA * :percentAltera
        where nf.NUMNF = :nf;
      update MOVIMENTODETALHE mnf set mnf.VLR_BASE = mnf.PRECO  * :percentAltera, 
        mnf.QTDE_NF = mnf.QUANTIDADE  
        where mnf.CODMOVIMENTO = :mov;
    end  
    if (ondeAltera = 'QUANTIDADE') then 
    begin 
      update NOTAFISCAL nf set nf.VLRTOTALEXP = nf.VALOR_TOTAL_NOTA * :percentAltera
        where nf.NUMNF = :nf;
      update MOVIMENTODETALHE mnf set mnf.QTDE_NF = mnf.QUANTIDADE  * :percentAltera, 
        mnf.VLR_BASE = mnf.PRECO
        where mnf.CODMOVIMENTO = :mov;
    end  
  end 
end
end^
SET TERM ; ^

GRANT EXECUTE
 ON PROCEDURE NFALTERAVLREXPORTA TO SYSDBA;


