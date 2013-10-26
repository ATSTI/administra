CREATE OR ALTER PROCEDURE  CANCELABAIXAPAG( FORNECEDOR                          INTEGER )
AS
DECLARE VARIABLE CODPAG INTEGER;
BEGIN
  FOR SELECT CODPAGAMENTO FROM PAGAMENTO WHERE CODFORNECEDOR = :FORNECEDOR AND DP = 0 
     AND STATUS IN ('7-', '1-', '2-', '13', '9-') -- busco pelos títulos a Cancelar
  INTO :CODPAG
  DO BEGIN
       UPDATE PAGAMENTO SET
          STATUS = '5-'
          , VALOR_RESTO = VALORRECEBIDO + DESCONTO + PERDA
          , VALORRECEBIDO = 0
          , FORMAPAGAMENTO = 1
          , DATABAIXA = null
          , DATAPAGAMENTO = null
          , DATACONSOLIDA = null
          , N_DOCUMENTO = null
          , CAIXA = null
          , FUNRURAL = 0
          , JUROS = 0
          , DESCONTO = 0
          , PERDA = 0
        WHERE CODPAGAMENTO = :CODPAG;
        -- Excluo o título gerado pela baixa q está sendo cancelada.
        -- Nao estou excluindo mais, pois, o valor resto agora só tem o valor q foi pago 
        -- DELETE FROM PAGAMENTO WHERE CODORIGEM = :CODPAG AND STATUS = '5-';
  END
END
