CREATE OR ALTER PROCEDURE IMPRIMECOMISSAO(
  PTIPO VARCHAR(50) CHARACTER SET WIN1252,
  PCODCAIXA INTEGER,
  PDATACAIXA DATE)
RETURNS(
  DESCRICAO VARCHAR(300) CHARACTER SET WIN1252,
  NOMEFUNCIONARIO VARCHAR(100) CHARACTER SET WIN1252,
  VARLORCOMISSAO DOUBLE PRECISION,
  TIPO CHAR(1) CHARACTER SET WIN1252,
  TOTALCOLABORADOR DOUBLE PRECISION,
  TOTALGERAL DOUBLE PRECISION,
  CODCOLABORADOR INTEGER)
AS
DECLARE VARIABLE vCodFor Integer;
DECLARE VARIABLE vCodCli Integer;
DECLARE VARIABLE vStatus CHAR( 2 );
DECLARE VARIABLE vCodPag Integer;
DECLARE VARIABLE vCodOrigem integer;
DECLARE VARIABLE vNomeColaborador VARCHAR(100);
DECLARE VARIABLE vTOTAL DOUBLE PRECISION;
--DECLARE VARIABLE vTOTALDESPESA DOUBLE PRECISION;
BEGIN
  /* Procedure body */
  TOTALGERAL = 0;
  For Select CODFORNECEDOR, CODCLIENTE, NOME_FUNCIONARIO FROM FUNCIONARIO where FUNCAO_CARGO = :ptipo
  into :vCodFor, :vCodCli, :vNomeColaborador do
  begin
    NOMEFUNCIONARIO = '';
    TOTALCOLABORADOR = 0;
    -- Retorna Despesas COMISSÕES
    for select VALOR_RESTO, STATUS, CODPAGAMENTO, CODORIGEM from PAGAMENTO
     where ((CODORIGEM1 = :pCodCaixa) or (:pCodCaixa = 9999999))
     and (CODFORNECEDOR = :vCodFor) /*and (DATAVENCIMENTO = :pDataCaixa)*/
    into :VARLORCOMISSAO, :vStatus, :vCodPag, :vCodOrigem do
    begin
      TOTALCOLABORADOR = TOTALCOLABORADOR + VARLORCOMISSAO;
      TOTALGERAL = TOTALGERAL + VARLORCOMISSAO;
      CODCOLABORADOR = vCodFor;
      if (vNomeColaborador <> NOMEFUNCIONARIO) then
        NOMEFUNCIONARIO = vNomeColaborador;
      else
        NOMEFUNCIONARIO = Null;
      if (vCodOrigem is null) then
        vCodOrigem = 0;
      if (vCodOrigem > 0) THEN
      begin
         select movd.DESCPRODUTO from MOVIMENTODETALHE movd where movd.CODDETALHE = :vCodOrigem
         into :DESCRICAO;
      end
      TIPO = 'D';
      vTOTAL = TOTALGERAL;
      suspend;
    end -- For Pagamento
    -- Retorna Receitas Gastos do Colaborador
    for select VALOR_RESTO, STATUS, CODRECEBIMENTO, CODORIGEM from RECEBIMENTO
     where ((CODORIGEM = :pCodCaixa) or (:pCodCaixa = 9999999))
     and (CODCLIENTE = :vCodCli) /*and (DATAVENCIMENTO = :pDataCaixa)*/
    into :VARLORCOMISSAO, :vStatus, :vCodPag, :vCodOrigem do
    begin
      TOTALCOLABORADOR = TOTALCOLABORADOR - VARLORCOMISSAO;
      TOTALGERAL = TOTALGERAL - VARLORCOMISSAO;
      CODCOLABORADOR = vCodCli;
      if (vNomeColaborador <> NOMEFUNCIONARIO) then
        NOMEFUNCIONARIO = vNomeColaborador;
      else
        NOMEFUNCIONARIO = Null;
      if (vCodOrigem is null) then
        vCodOrigem = 0;
      if (vCodOrigem > 0) THEN
      begin
         select movd.DESCPRODUTO from MOVIMENTODETALHE movd where movd.CODDETALHE = :vCodOrigem
         into :DESCRICAO;
      end
      TIPO = 'R';
      suspend;
    end -- For Recebimento

  end  -- For Funcionarios
  --SUSPEND;
END;
