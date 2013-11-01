CREATE OR ALTER PROCEDURE FILTROPRODUTO (
    CCUSTO Integer,
    MARCA Varchar(30),
    CATEGORIA Varchar(30),
    FAMILIA Varchar(30),
    DTAINI Date,
    DTAFIM Date,
    codVendedor integer  )
RETURNS (
    CODPRO Varchar(15),
    PRODUTO Varchar(300),
    PRECOCUSTO Double precision,
    PRECOMEDIOVENDA Double precision,
    QTDEVENDA Double precision,
    VLRVENDATOTAL Double precision,
    RESULTADOPRODUTO Double precision,
    PERCENTUAL Double precision,
    Vendedor varchar(60) )
AS
DECLARE VARIABLE CP INTEGER;
 DECLARE VARIABLE TIPO SMALLINT;
 DECLARE VARIABLE QTDE DOUBLE PRECISION;
 DECLARE VARIABLE VLR DOUBLE PRECISION;
BEGIN
  VLRVENDATOTAL = 0;
  QTDEVENDA = 0;
  /* Seleciono os movimentos executados */ 
  FOR SELECT p.CODPRODUTO, p.CODPRO, p.PRODUTO
    FROM PRODUTOS p
    WHERE ((p.MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS DO CADASTRO'))
        and ((p.CATEGORIA = :CATEGORIA) OR (:CATEGORIA = 'TODAS AS CATEGORIAS CADASTRO'))     
        and ((p.FAMILIA = :FAMILIA) OR (:FAMILIA = 'TODAS AS FAMILIAS DO CADASTRO'))     
        order by p.CODPRODUTO
  INTO :CP, :CODPRO, :PRODUTO
  DO BEGIN
    /* Totais VENDA e ou Saídas        */
    FOR SELECT COALESCE(sum(md.QUANTIDADE), 0), COALESCE(SUM(md.VALTOTAL), 0), usr.NOMEUSUARIO
      FROM MOVIMENTO m
      inner join MOVIMENTODETALHE md on m.CODMOVIMENTO = md.CODMOVIMENTO
      inner join NATUREZAOPERACAO nt on nt.CODNATUREZA = m.CODNATUREZA
      inner join USUARIO usr on usr.CODUSUARIO = m.CODVENDEDOR 
      WHERE (nt.BAIXAMOVIMENTO = 1) 
        and (m.DATAMOVIMENTO BETWEEN :DTAINI AND :DTAFIM) 
        and (md.CODPRODUTO = :CP)
        and ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 999999)) 
        and ((m.CODVENDEDOR = :codVendedor) or (:codVendedor = 0))
      group by usr.NOMEUSUARIO
      INTO :QTDE, :VLR , :vendedor
    do begin
      QTDEVENDA = QTDEVENDA + QTDE;
      VLRVENDATOTAL = VLRVENDATOTAL + VLR;
    END
    /*VLRENTTOTAL = PRECOCUSTO * QUANTIDADEVENDA;*/
    IF ((QTDEVENDA > 0) AND (VLRVENDATOTAL > 0)) THEN
    begin
      PRECOMEDIOVENDA = VLRVENDATOTAL / QTDEVENDA;    
    END
    else
      PRECOMEDIOVENDA = 0;
    
    RESULTADOPRODUTO = VLRVENDATOTAL - (PRECOCUSTO * QTDEVENDA);
    IF (VLRVENDATOTAL > 0) THEN 
      PERCENTUAL = (RESULTADOPRODUTO/(PRECOCUSTO * QTDEVENDA)) * 100;
    else
      PERCENTUAL = 0;
      
    if (vlrVendaTotal > 0) then   
      suspend;
    qtdeVenda = 0;
    VLRVENDATOTAL = 0;
         
  END      
END

