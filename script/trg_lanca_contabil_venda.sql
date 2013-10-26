ALTER TRIGGER LANCA_CONTABIL_VENDA
AFTER INSERT
POSITION 1
AS
  DECLARE VARIABLE CT_CLIENTE VARCHAR(20);
  DECLARE VARIABLE CT_CAIXA VARCHAR(20);
begin
    IF (NEW.ENTRADA > 0) THEN
    BEGIN
      SELECT CONTA_CLIENTE FROM CLIENTES WHERE CODCLIENTE = NEW.CODCLIENTE
      INTO :CT_CLIENTE;
      /* ------------------------------------------------------------*/
      /* Fazendo o Lançamento a Crédito em Receitas de Vendas       */
      /* ------------------------------------------------------------*/
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORCREDITO, QTDECREDITO, VALORDEBITO, QTDEDEBITO)
      VALUES (NEW.CODORIGEM, 'VENDA', NEW.DATAVENDA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_CLIENTE,
      NEW.ENTRADA, 1,0,0);
      /* Se teve entrada lança o valor no caixa */
      /* Pegando a conta CAIXA */
      SELECT CONTA from PLANO WHERE CODIGO = NEW.CAIXA
      into :CT_CAIXA;
      /* ------------------------------------------------------------*/
      /* Fazendo o Lançamento a Débito no Caixa                      */
      /* ------------------------------------------------------------*/
      INSERT INTO MOVIMENTOCONT (CODORIGEM, TIPOORIGEM, DATA, CODUSUARIO, CODCCUSTO, CONTA,
      VALORDEBITO, QTDEDEBITO, VALORCREDITO, QTDECREDITO)
      VALUES (NEW.CODORIGEM, 'VENDA', NEW.DATAVENDA, NEW.CODUSUARIO, NEW.CODCCUSTO, :CT_CAIXA,
      NEW.ENTRADA, 1,0,0);
    END
end

