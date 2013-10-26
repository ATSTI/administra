CREATE OR ALTER PROCEDURE LANCA_ENT_SAIDA (
    TIPOLANC smallint,
    CODMOV integer,
    CODCLIFORN integer,
    DATA date,
    DATAVCTO date,
    CODUSUARIO smallint,
    CODCCUSTO integer,
    SERIE char(1),
    NSERIESAI integer,
    NSERIEENT varchar(10) )
AS
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE EXISTE INTEGER;
BEGIN
  /* Estes lançamentos são necessários para o sistema fazer o lançamento na tab MOVIMENTOCONT */
  /* LANCA ENTRADA NA TAB COMPRA */
  IF (TIPOLANC = 0) then
  BEGIN
     select c.CODCOMPRA from COMPRA c where c.CODMOVIMENTO = :CODMOV
     into :EXISTE;
     if (( EXISTE is null) or ( EXISTE = 0)) then
     begin
        INSERT INTO COMPRA (CODMOVIMENTO, CODFORNECEDOR, DATACOMPRA, DATAVENCIMENTO,
        DESCONTO, VALOR, ENTRADA, CODUSUARIO, CODCCUSTO, NOTAFISCAL) 
        VALUES (:CODMOV, :CODCLIFORN, 
        :DATAVCTO, :DATAVCTO, 0, 0, 0, :CODUSUARIO, :CODCCUSTO, :nSerieSai);
     end
  END
  /* LANCA SAIDA NA TAB SAIDA */
  IF (TIPOLANC = 1) then
  BEGIN
     select v.CODVENDA from VENDA v where v.CODMOVIMENTO = :CODMOV
     into :EXISTE;
     if (( EXISTE is null) or ( EXISTE = 0)) then
     begin
        CODIGO = GEN_ID("GENVENDA",1);   
        INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO,
        DESCONTO, VALOR, ENTRADA, CODUSUARIO, CODCCUSTO, SERIE, BANCO, CODVENDEDOR, NOTAFISCAL, CONTROLE) 
        VALUES 
        (:CODIGO, :CODMOV, :CODCLIFORN, 
        :DATA, :DATA, 0, 0, 0, :CODUSUARIO, :CODCCUSTO, :SERIE, 1, :CODUSUARIO, :nSerieSai, :nSerieEnt);
     end
  END
END

