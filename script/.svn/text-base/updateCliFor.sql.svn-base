CREATE OR ALTER TRIGGER updateCliFor FOR FUNCIONARIO
ACTIVE BEFORE UPDATE
POSITION 0
AS
declare variable codcli integer;
BEGIN
  /* Trigger body */
  IF (new.clifor = 'S') THEN
  begin
     select codcliente from clientes where CODCLIENTE = new.CODCLIENTE
     into :codcli;
     if (codcli is null) then
     begin
       new.CODCLIENTE = gen_id(GEN_CLI, 1);
       new.CODFORNECEDOR = gen_id(GEN_FOR, 1);
       /* Inseri Cliente */
       Insert into CLIENTES (CODCLIENTE,NOMECLIENTE,RAZAOSOCIAL,TIPOFIRMA,SEGMENTO,DATACADASTRO,STATUS,CODUSUARIO,REGIAO)
                      Values(new.CODCLIENTE,new.NOME_FUNCIONARIO,new.NOME_FUNCIONARIO,0,1,CURRENT_DATE,1,1,0);
       /* Inseri Fornecedor */
       Insert into FORNECEDOR(CODFORNECEDOR,NOMEFORNECEDOR,RAZAOSOCIAL,TIPOFIRMA,SEGMENTO,DATACADASTRO,STATUS,CODUSUARIO, REGIAO)
                       Values(new.CODFORNECEDOR,new.NOME_FUNCIONARIO,new.NOME_FUNCIONARIO,0,1,CURRENT_DATE,1,1,0);
     end
  end
  if (old.NOME_FUNCIONARIO <> new.NOME_FUNCIONARIO) then
    if (new.clifor = 'S') then
    begin
      select codcliente from clientes where CODCLIENTE = new.CODCLIENTE
      into :codcli;
      if (codcli is null) then
      begin
        UPDATE CLIENTES SET NOMECLIENTE = new.NOME_FUNCIONARIO, RAZAOSOCIAL = new.NOME_FUNCIONARIO;
        UPDATE FORNECEDOR SET NOMEFORNECEDOR = new.NOME_FUNCIONARIO, RAZAOSOCIAL = new.NOME_FUNCIONARIO;
      end
   end
END

