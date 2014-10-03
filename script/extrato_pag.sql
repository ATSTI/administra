Set term ^ ;
CREATE OR ALTER PROCEDURE EXTRATO_PAG (
    DTAINI Date,
    DTAFIM Date,
    COD_FOR Integer,
    COD_CCUSTO Smallint,
    COD_CONTA Integer,
    COD_CAIXA Smallint )
RETURNS (
    DTAEMISSAO Date,
    DTAVENC Date,
    DTAPAGTO Date,
    CODFORN Integer,
    FORNECEDOR Varchar(100),
    DESCRICAO Varchar(200),
    CONTADESPESA Varchar(300),
    VALORTITULO Double precision,
    VALORPAGO Double precision,
    SALDO Double precision,
    CAIXA Varchar(200),
    CODCONTA Varchar(25),
    TITULO VARCHAR(35) )
AS
DECLARE VARIABLE CCAIXA INTEGER;
DECLARE VARIABLE CCONTABIL INTEGER;
BEGIN
  /* Algo parecido com Holerit*/
  SALDO = 0;
  valorpago = 0;
  /* Lista os lancamentos a pagar */
  FOR SELECT pag.DATAVENCIMENTO, pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, 
    sum(pag.valor_RESTO), pag.CONTACREDITO, pag.TITULO, pag.EMISSAO, sum(coalesce(pag.VALORRECEBIDO,0))
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATAVENCIMENTO BETWEEN :DTAINI AND :DTAFIM 
    and ((pag.CODFORNECEDOR = :cod_for) or (:cod_for = 9999999))
    and ((pag.CODALMOXARIFADO = :COD_CCUSTO) or (:COD_CCUSTO = 0))
    and ((pag.CONTACREDITO = :COD_CONTA) or (:COD_CONTA = 9999999))
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
     group by pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, pag.DATAVENCIMENTO,  
       pag.CONTACREDITO, pag.TITULO, pag.EMISSAO
    order by pag.CODFORNECEDOR, pag.DATAVENCIMENTO
  INTO  :DTAVENC, :CODFORN, :FORNECEDOR, :VALORTITULO, :CCONTABIL, :TITULO, :DTAEMISSAO, :VALORPAGO
  DO BEGIN
    FORNECEDOR = CAST(:CODFORN AS VARCHAR(5)) || '-' ||  :FORNECEDOR;
    SELECT COALESCE(CODREDUZIDO, '0') || '-' || NOME, COALESCE(CODREDUZIDO, '0') FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTADESPESA, :CODCONTA;
    -- CONTADESPESA = CODCONTA || '-' || UDF_TRIM(CONTADESPESA);
   
    SELECT NOME FROM PLANO WHERE CODIGO = :CCAIXA
    INTO :CAIXA;
    
    SALDO = VALORTITULO - valorPago;
      
    --SUSPEND;
    /*descricao = null;
    ccontabil = null;
    caixa     = null;
    valorTitulo = 0;*/
    /* Exibe os descontos feitos por lançamento */
    /*FOR SELECT pag.DATAPAGAMENTO, pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, 
      pag.HISTORICO, pag.VALORRECEBIDO, pag.CONTACREDITO
      FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
      and pag.DATAVENCIMENTO BETWEEN :DTAINI AND :DTAFIM 
      and (pag.CODFORNECEDOR = :codforn)
      and ((pag.CODALMOXARIFADO = :COD_CCUSTO) or (:COD_CCUSTO = 0))
      and ((pag.CONTACREDITO = :COD_CONTA) or (:COD_CONTA = 9999999))
      and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
      and (pag.TITULO = :TITULO)
      and (pag.VALORRECEBIDO > 0)
       order by pag.CODFORNECEDOR, pag.DATAPAGAMENTO
    INTO  :DTAPAGTO, :CODFORN, :FORNECEDOR, :DESCRICAO, :VALORPAGO, :CCONTABIL
    DO BEGIN
      FORNECEDOR = CAST(:CODFORN AS VARCHAR(5)) || '-' ||  :FORNECEDOR;
      SALDO = SALDO - VALORPAGO;
    
      
      
    end*/     
    SUSPEND;
      descricao = null;
      ccontabil = null;
      caixa     = null;
      valorpago = 0;
    --SALDO = 0;
    
  END
  
  
END