set term ^;
CREATE OR ALTER TRIGGER TRG_GERACOMISSAO FOR VENDA
ACTIVE AFTER INSERT
POSITION 1
AS
DECLARE VARIABLE vConta VARCHAR(40);
DECLARE VARIABLE vConfigurado CHAR(1);
DECLARE VARIABLE vCodProduto INTEGER;
DECLARE VARIABLE vCodColaborador INTEGER;
DECLARE VARIABLE vCodColaborador1 INTEGER;
DECLARE VARIABLE vCodVendedor INTEGER;
DECLARE VARIABLE vCodFornecedor INTEGER;
DECLARE VARIABLE vComissao DOUBLE PRECISION;
DECLARE VARIABLE vCaixa INTEGER;
DECLARE VARIABLE vCod INTEGER;
DECLARE VARIABLE vCod1 INTEGER;
DECLARE VARIABLE I integer;
DECLARE VARIABLE STATUS_VENDA CHAR(2);
DECLARE VARIABLE VLR_TITULO DOUBLE PRECISION;
DECLARE VARIABLE TOTAL_COMISSAO DOUBLE PRECISION;
BEGIN
  /* Trigger body */
  TOTAL_COMISSAO = 0;
  vCodVendedor = new.CODVENDEDOR;
  -- Pego a Conta Despesa para Comissão
  select CONFIGURADO, DADOS from PARAMETRO where PARAMETRO = 'COMISSAO VENDA'
  into :vConfigurado, :vConta;
  select CODIGO FROM PLANO where CONTA = :vConta
  into :vCaixa;
  /*  Se Configurado = S gerar despesa */
  if (vConfigurado = 'S') then
  begin  /* Faço um varredura na tabela Movimentodetalhe em busca de comissão */
   For select distinct CODIGO1 FROM MOVIMENTODETALHE where CODMOVIMENTO = new.CODMOVIMENTO and PAGOUCOMISSAO is null
   into :vCod1 do
   begin
     if (vCod1 is null) then
       vcod1 = 0;
     if (vCod1 > 0) then
     BEGIN
         For select CODPRODUTO, CODIGO, CODIGO1, VALTOTAL  FROM MOVIMENTODETALHE
           where CODMOVIMENTO = new.CODMOVIMENTO and PAGOUCOMISSAO is NULL and CODIGO1 = :vCod1
         into :vCodProduto, :vCodColaborador, :vCodColaborador1, :VLR_TITULO do
         begin  -- se colaborador não for nullo calculo a Comissão
            if (vCodColaborador is null) then
              vCodColaborador = 0;
            if (vCodColaborador1 is null) then
              vCodColaborador1 = 0;
            if (vCodColaborador1 > 0) then
            begin  -- Vejo se tem o Produto para esse colaborador na tabela COMISSAOCOLABORADOR
              select CODFORNECEDOR FROM FUNCIONARIO where COD_FUNCIONARIO = :vCodColaborador1
              into :vCodFornecedor;
              if (vCodFornecedor is null) then
                  vCodFornecedor = 0;
              if (vCodFornecedor > 0) then
              begin
                  select VALORCOMISSAO from COMISSAOCOLABORADOR where COD_COLABORADOR = :vCodColaborador1
                    and COD_PRODUTO = :vCodProduto
                  into :vComissao;
                  if (vComissao is null) then
                    vComissao = 0;
                  if (vComissao > 0) then
                  begin
                     TOTAL_COMISSAO =  vComissao;
                  end
                  ELSE
                  begin -- se não tiver na tabela COMISSAOCOLABORADOR busco na tabela PRODUTOS
                     select valorcomissao from PRODUTOS where CODPRODUTO = :vCodProduto
                     into :vComissao;
                     if (vComissao is null) then
                       vComissao = 0;
                     if (vComissao > 0) then
                       TOTAL_COMISSAO =  vComissao;
                     end
                  END
              END
            end -- Colaborador 1
            if (vCodColaborador > 0) then
            begin  -- Vejo se tem o Produto para esse colaborador na tabela COMISSAOCOLABORADOR
              select CODFORNECEDOR FROM FUNCIONARIO where COD_FUNCIONARIO = :vCodColaborador
              into :vCodFornecedor;
              if (vCodFornecedor is null) then
                  vCodFornecedor = 0;
              if (vCodFornecedor > 0) then
              begin
                  select VALORCOMISSAO from COMISSAOCOLABORADOR where COD_COLABORADOR = :vCodColaborador
                    and COD_PRODUTO = :vCodProduto
                  into :vComissao;
                  if (vComissao is null) then
                    vComissao = 0;
                  if (vComissao > 0) then
                  begin
                     TOTAL_COMISSAO =  vComissao;
                  end
                  ELSE
                  begin -- se não tiver na tabela COMISSAOCOLABORADOR busco na tabela PRODUTOS
                     select valorcomissao from PRODUTOS where CODPRODUTO = :vCodProduto
                     into :vComissao;
                     if (vComissao is null) then
                       vComissao = 0;
                     if (vComissao > 0) then
                       TOTAL_COMISSAO =  vComissao;
                     end
                  END
              END
            end -- GARÇON
         END -- For Itens da Venda
     END
     -- INSERIR Despesas
     if (vCod1 > 0) then
     begin
         INSERT INTO PAGAMENTO
           (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO,
           CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO, DATASISTEMA, VALOR_PRIM_VIA,
           VALOR_RESTO, VALORTITULO, JUROS, DESCONTO, PERDA, FUNRURAL, PARCELAS,
           TROCA, CAIXA, N_DOCUMENTO, DATACONSOLIDA, CONTACREDITO, CODORIGEM)
         VALUES
           (NEW.NOTAFISCAL, NEW.DATAVENDA, :vCodFornecedor, NEW.DATAVENCIMENTO,'5-',
           CAST(1 as CHAR(3)), '1', 51, 1, 1, cast('NOW' as date)
           , :TOTAL_COMISSAO, :TOTAL_COMISSAO, :TOTAL_COMISSAO, 0, 0, 0, 0,
           1,0, new.CAIXA, NEW.N_DOCUMENTO, new.DATAVENCIMENTO, :vCaixa, new.CODVENDA);
         TOTAL_COMISSAO = 0;
     END
   end
END
