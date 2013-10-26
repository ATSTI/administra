ALTER TRIGGER LANCA_CONTABIL_COMPRA
AFTER INSERT
POSITION 1
AS
  DECLARE VARIABLE CT_FORN VARCHAR(20);
  DECLARE VARIABLE CT_CAIXA VARCHAR(20);
begin
    IF (NEW.ENTRADA > 0) THEN
    BEGIN
      SELECT CONTA_FORNECEDOR FROM FORNECEDOR WHERE CODFORNECEDOR = NEW.CODFORNECEDOR
      INTO :CT_FORN;
      /* ------------------------------------------------------------*/
      /* Fazendo o Lançamento a DéBito em Receitas de Vendas       */
      /* ------------------------------------------------------------*/
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORCREDITO, QTDECREDITO, VALORDEBITO, QTDEDEBITO)
      VALUES (NEW.CODORIGEM, 'COMPRA', NEW.DATACOMPRA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_FORN,
      0, 0,NEW.ENTRADA,1);
      /* Se teve entrada lança o valor no caixa */
      /* Pegando a conta CAIXA */
      SELECT CONTA from PLANO WHERE CODIGO = NEW.CAIXA
      into :CT_CAIXA;
      /* ------------------------------------------------------------*/
      /* Fazendo o Lançamento a Crédito no Caixa                      */
      /* ------------------------------------------------------------*/
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORDEBITO, QTDEDEBITO, VALORCREDITO, QTDECREDITO)
      VALUES (NEW.CODORIGEM, 'COMPRA', NEW.DATACOMPRA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_CAIXA,
      0, 0,NEW.ENTRADA,1);
    END
end

