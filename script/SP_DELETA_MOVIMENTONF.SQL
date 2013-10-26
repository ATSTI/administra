Set term ^ ;
CREATE OR ALTER PROCEDURE SP_DELETA_MOVIMENTONF
as
declare variable codigo integer;
begin
  /* Procedure Text */
  for select mf.codmovimento from movimentonf  mf where not exists
    (select numnf from notafiscal nf where nf.numnf = mf.codmovimento)
   into :codigo
   do begin
      delete from movimentonf where codmovimento = :codigo;
   end

end
