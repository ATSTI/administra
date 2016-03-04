
CREATE or alter TRIGGER OS_EXCLUIR FOR OS_DET   ACTIVE
BEFORE DELETE
AS
declare variable status CHAR(1);
BEGIN
  Select STATUS from os where os.CODOS = old.ID_OS
    into :status; 
  if (status = 'F') then 
  begin 
    EXCEPTION NAO_PODE_EXCLUIR ' OS ja finalizada.';
  end  
END
