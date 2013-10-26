CREATE OR ALTER PROCEDURE IMPRIMEVENDA(pCod integer, pData Date)
RETURNS (
  CODPRODUTO INTEGER,
  DESCRICAO VARCHAR(300),
  QUTDE DOUBLE PRECISION,
  VARLORUNIT DOUBLE PRECISION,
  VARLORTOTAL DOUBLE PRECISION,
  IDMOV INTEGER)
AS
DECLARE VARIABLE vCodVenda Integer;
DECLARE VARIABLE vCodmov Integer;
DECLARE VARIABLE vCodAlm Integer;
DECLARE VARIABLE vCodSUITE Integer;
DECLARE VARIABLE vCodSUITE1 Integer;
DECLARE VARIABLE vCodSERVICO Integer;
BEGIN
  /* Procedure body */
  /* Pego o Codigo do Produto Hospedagem para não sair no relatorio */
  select cast(DADOS as integer), Cast(D1 as integer) from PARAMETRO where PARAMETRO = 'CODIGOSUITES'
  into :vCodSUITE, :vCodSUITE1;
  /* Pego o Codigo do Produto Prestação de serviço para não sair no relatorio */
  select cast(DADOS as integer) from PARAMETRO where PARAMETRO = 'PRESTACAOSERVICO'
  into :vCodSERVICO;

  For Select rec.CODVENDA, vd.CODMOVIMENTO FROM RECEBIMENTO rec
  inner join VENDA vd on vd.CODVENDA = rec.CODVENDA
  where ((rec.CODORIGEM = :pCod) or (:pCod = 9999999))
     and (rec.DATAVENCIMENTO = :pData)
  into :vCodVenda, :vCodmov do
  begin
     for select mov.CODPRODUTO, mov.CODALMOXARIFADO, mov.DESCPRODUTO, Sum(mov.QUANTIDADE), SUM(mov.PRECO) , SUM(mov.VALTOTAL)
     FROM MOVIMENTODETALHE mov  where mov.CODMOVIMENTO = :vCodmov group by mov.CODPRODUTO, mov.CODALMOXARIFADO, mov.DESCPRODUTO
     into :CODPRODUTO, :vCodAlm, :DESCRICAO, :QUTDE, :VARLORUNIT, :VARLORTOTAL DO
     begin
       if ((CODPRODUTO <> vCodSUITE) and (CODPRODUTO <> vCodSUITE1) and (CODPRODUTO <> vCodSERVICO)) then
       if (vCodAlm = 0) then
         suspend;
     end
  end  
END
;
