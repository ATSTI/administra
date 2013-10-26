CREATE OR ALTER TRIGGER estoqueFechado FOR MOVIMENTO
ACTIVE BEFORE INSERT OR UPDATE OR DELETE POSITION 0
AS 
  declare variable situacao char(1);
BEGIN 
  /* Se na Tabela Estoque_FECHADO estiver fechado para esta data */
  /* o sistema não permitira lançamentos                         */
  situacao = 'G'; 
  if (UPDATING) then 
    select first 1 situacao from estoque_controle where datafechamento >= new.DATAMOVIMENTO
      order by datafechamento desc
    into :situacao;
  if (INSERTING) then 
    select first 1 situacao from estoque_controle where datafechamento >= new.DATAMOVIMENTO
      order by datafechamento desc
    into :situacao;
  if (DELETING) then 
    select first 1 situacao from estoque_controle where datafechamento >= old.DATAMOVIMENTO
      order by datafechamento desc
    into :situacao;

  if (situacao = 'F') then 
    exception ESTOQUEFECHADO;       
END
