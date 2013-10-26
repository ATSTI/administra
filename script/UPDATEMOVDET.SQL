CREATE PROCEDURE updateMovDet
as
declare variable id integer;
declare variable prod varchar(300);
begin
  /* Procedure Text */
  for select CODPRODUTO, PRODUTO from produtos
   into :id, :prod
   do begin
       update movimentodetalhe set DESCPRODUTO = :prod
         where CODPRODUTO = :id;
   end
  suspend;
end
