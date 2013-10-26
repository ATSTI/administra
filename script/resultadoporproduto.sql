CREATE OR ALTER PROCEDURE  RESULTADOPORPRODUTO( CCUSTO                           INTEGER
                                    , MARCA                            VARCHAR( 30 )
                                    , CATEGORIA                        VARCHAR( 30 )
                                    , FAMILIA                          VARCHAR( 30 )
                                    , DTAINI                           DATE
                                    , DTAFIM                           DATE )
RETURNS ( CODPRO                           VARCHAR( 15 )
        , PRODUTO                          VARCHAR( 300 )
        , PRECOCUSTO                       DOUBLE PRECISION
        , PRECOMEDIOVENDA                  DOUBLE PRECISION
        , QTDEVENDA                        DOUBLE PRECISION
        , QTDEENT                          DOUBLE PRECISION
        , VLRENTTOTAL                      DOUBLE PRECISION
        , VLRVENDATOTAL                    DOUBLE PRECISION
        , RESULTADOPRODUTO                 DOUBLE PRECISION
        , PERCENTUAL                       DOUBLE PRECISION )
AS
DECLARE VARIABLE CP INTEGER;
 DECLARE VARIABLE TIPO SMALLINT;
 DECLARE VARIABLE QTDE DOUBLE PRECISION;
 DECLARE VARIABLE VLR DOUBLE PRECISION;
BEGIN
  VLRENTTOTAL = 0;
  QTDEENT = 0;
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
    /* Totais Compra e ou Entradas        */
    FOR SELECT sum(md.QUANTIDADE), SUM(md.VALTOTAL)
      FROM MOVIMENTO m, MOVIMENTODETALHE md, NATUREZAOPERACAO nt
      WHERE (m.CODMOVIMENTO = md.CODMOVIMENTO) and 
        (nt.CODNATUREZA = m.CODNATUREZA) and (nt.BAIXAMOVIMENTO = 0) and 
        (m.DATAMOVIMENTO BETWEEN :DTAINI AND :DTAFIM) and md.CODPRODUTO = :CP
        and ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 999999)) 
      INTO :QTDE, :VLR 
    do begin
      /* Totais Compra e ou Entradas        */
      QTDEENT = QTDEENT + QTDE;
      VLRENTTOTAL = VLRENTTOTAL + VLR;
      PRECOCUSTO = VLRENTTOTAL / QTDEENT;
    END
    /* Totais VENDA e ou Saídas        */
    FOR SELECT sum(md.QUANTIDADE), SUM(md.VALTOTAL)
      FROM MOVIMENTO m, MOVIMENTODETALHE md, NATUREZAOPERACAO nt
      WHERE (m.CODMOVIMENTO = md.CODMOVIMENTO) and 
        (nt.CODNATUREZA = m.CODNATUREZA) and (nt.BAIXAMOVIMENTO = 1) and 
        (m.DATAMOVIMENTO BETWEEN :DTAINI AND :DTAFIM) and md.CODPRODUTO = :CP
        and ((m.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 999999)) 
      INTO :QTDE, :VLR 
    do begin
      QTDEVENDA = QTDEVENDA + QTDE;
      VLRVENDATOTAL = VLRVENDATOTAL + VLR;
    END
    /*VLRENTTOTAL = PRECOCUSTO * QUANTIDADEVENDA;*/
    IF ((QTDEVENDA > 0) AND (VLRVENDATOTAL > 0)) THEN
    begin
      PRECOMEDIOVENDA = VLRVENDATOTAL / QTDEVENDA;    
    END
    
    RESULTADOPRODUTO = VLRVENDATOTAL - (PRECOCUSTO * QTDEVENDA);
    IF ((VLRVENDATOTAL > 0) AND (VLRENTTOTAL > 0)) THEN 
      PERCENTUAL = (RESULTADOPRODUTO/(PRECOCUSTO * QTDEVENDA)) * 100;
    if ((VLRENTTOTAL IS NOT NULL)  or (VLRVENDATOTAL IS NOT NULL)) THEN  
      suspend;
    qtdeEnt = 0;
    qtdeVenda = 0;
    VLRENTTOTAL = 0;
    VLRVENDATOTAL = 0;
         
  END      
END