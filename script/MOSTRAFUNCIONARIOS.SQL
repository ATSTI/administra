CREATE OR ALTER PROCEDURE MOSTRAFUNCIONARIOS (
    DATAPRESENCA Date )
RETURNS (
    CODIGO Integer,
    NOME Varchar(100) )
AS
declare variable codigofrequencia integer;
declare variable nomefun varchar(100);
declare variable cargo varchar(100);
BEGIN
  SELECT first 1 DADOS FROM PARAMETRO where PARAMETRO = 'CARGO/FUNCAO'
  into :cargo;
  
  for select CODCLIENTE, NOMECLIENTE from CLIENTES WHERE STATUS = 'S' 
   and  CARGOFUNCAO = :cargo
  into :codigo, :nomefun do begin
    nome = nomefun;
    for select cod_frequencia from FREQUENCIA where cod_funcionario = :codigo
      and data = :datapresenca
    into :codigofrequencia
    do begin
    end
    if (:codigofrequencia is null) then
     suspend;
   codigofrequencia = null;
  END
END