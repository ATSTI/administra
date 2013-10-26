ALTER PROCEDURE CANCELABAIXAREC (
    CLIENTE Integer )
AS
DECLARE VARIABLE CODREC INTEGER;
BEGIN
  FOR SELECT CODRECEBIMENTO FROM RECEBIMENTO WHERE CODCLIENTE = :CLIENTE AND DP = 0 
     AND STATUS IN ('7-', '1-', '2-', '13', '9-') -- busco pelos títulos a Cancelar
  INTO :CODREC
  DO BEGIN
       UPDATE RECEBIMENTO SET
          STATUS = '5-'
          , VALOR_RESTO = VALORRECEBIDO + DESCONTO + PERDA 
          , VALORRECEBIDO = 0
          , FORMARECEBIMENTO = 1
          , DATABAIXA = null
          , DATARECEBIMENTO = null
          , DATACONSOLIDA = null
          , N_DOCUMENTO = null
          , CAIXA = null
          , FUNRURAL = 0
          , JUROS = 0
          , DESCONTO = 0
          , PERDA = 0
        WHERE CODRECEBIMENTO = :CODREC;
        -- Excluo o título gerado pela baixa q está sendo cancelada.
        -- Não Excluo mais, pois, o valor_Resto só vai trazer o valor desta via
        -- DELETE FROM RECEBIMENTO WHERE CODORIGEM = :CODREC AND STATUS = '5-';
  END
END