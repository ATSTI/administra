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
    FORNECEDOR Varchar(60),
    DESCRICAO Varchar(150),
    CONTADESPESA Varchar(200),
    VALORTITULO Double precision,
    VALORPAGO Double precision,
    SALDO Double precision,
    CAIXA Varchar(60),
    CODCONTA Varchar(15),
    TITULO VARCHAR(25) )
AS
DECLARE VARIABLE CCAIXA INTEGER;
DECLARE VARIABLE CCONTABIL INTEGER;
BEGIN
  /* Algo parecido com Holerit*/
  SALDO = 0;
  valorpago = 0;
  /* Lista os lancamentos a pagar */
  FOR SELECT pag.DATAVENCIMENTO, pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, 
    sum(pag.valor_RESTO), pag.CONTACREDITO, pag.TITULO, pag.EMISSAO
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATAVENCIMENTO BETWEEN :DTAINI AND :DTAFIM 
    and ((pag.CODFORNECEDOR = :cod_for) or (:cod_for = 9999999))
    and ((pag.CODALMOXARIFADO = :COD_CCUSTO) or (:COD_CCUSTO = 0))
    and ((pag.CONTACREDITO = :COD_CONTA) or (:COD_CONTA = 9999999))
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
     group by pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, pag.DATAVENCIMENTO,  
       pag.CONTACREDITO, pag.TITULO, pag.EMISSAO
    order by pag.CODFORNECEDOR, pag.DATAVENCIMENTO
  INTO  :DTAVENC, :CODFORN, :FORNECEDOR, :VALORTITULO, :CCONTABIL, :TITULO, :DTAVENC
  DO BEGIN
    FORNECEDOR = CAST(:CODFORN AS VARCHAR(5)) || '-' ||  :FORNECEDOR;
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTADESPESA, :CODCONTA;
    CONTADESPESA = CODCONTA || '-' || CONTADESPESA;
    SELECT NOME FROM PLANO WHERE CODIGO = :CCAIXA
    INTO :CAIXA;
    
    SALDO = SALDO + VALORTITULO;
      
    SUSPEND;
    descricao = null;
    ccontabil = null;
    caixa     = null;
    valorTitulo = 0;
    /* Exibe os descontos feitos por lançamento */
    FOR SELECT pag.DATAPAGAMENTO, pag.CODFORNECEDOR, forn.NOMEFORNECEDOR, 
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
    
      SALDO = SALDO - VALORPAGO;
    
      SUSPEND;
      descricao = null;
      ccontabil = null;
      caixa     = null;
      valorpago = 0;
    end     
    --SALDO = 0;
    
  END
  
  
END