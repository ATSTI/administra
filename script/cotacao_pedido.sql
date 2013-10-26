SET TERM ^ ;

CREATE OR ALTER TRIGGER COTACAO_PEDIDO FOR MOVIMENTODETALHE
ACTIVE BEFORE UPDATE POSITION 0
AS 
 DECLARE VARIABLE NAT SMALLINT;
BEGIN
  -- Quando o usuario entra com a quantidade recebida, menor q a quantidade total o sistema 
  -- gera outro lancamento na movimento detalhe
  if ((new.RECEBIDO > 0) and (new.RECEBIDO < old.QUANTIDADE)) then 
  begin 
    SELECT m.CODNATUREZA 
      FROM MOVIMENTO m 
     where m.CODMOVIMENTO = old.CODMOVIMENTO
    into :nat;
    if (nat = 5) then 
    begin 
      INSERT INTO MOVIMENTODETALHE (CODDETALHE, CODMOVIMENTO, CODALMOXARIFADO, CONTROLE, CODPRODUTO, QUANTIDADE, 
      PRECO, ICMS, UN, QTDE_ALT, BAIXA, COD_COMISSAO, LOTE, DTAFAB, DTAVCTO, 
      DESCPRODUTO, RECEBIDO)
      VALUES (gen_id(GENMOVDET, 1), old.CODMOVIMENTO, old.CODALMOXARIFADO, old.CONTROLE, old.CODPRODUTO, (old.QUANTIDADE-new.RECEBIDO), 
      old.PRECO, old.ICMS, old.UN, old.QTDE_ALT, old.BAIXA, old.COD_COMISSAO, old.LOTE, old.DTAFAB, old.DTAVCTO, 
      old.DESCPRODUTO, 0);
      new.STATUS = 1;
    end  
  end 
  if ((new.RECEBIDO > 0) and (new.RECEBIDO = old.QUANTIDADE)) then   
    new.STATUS = 1;
END^

SET TERM ; ^ 
