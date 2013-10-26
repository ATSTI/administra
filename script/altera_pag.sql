ALTER TRIGGER ALTERA_PAG
AFTER UPDATE
POSITION 0
AS  
  DECLARE VARIABLE CT_CLIENTE VARCHAR(20);
  DECLARE VARIABLE CT_CLIENTE_OLD VARCHAR(20);
  DECLARE VARIABLE i integer;  
  DECLARE VARIABLE CENTRO_CUSTO integer; 
  DECLARE VARIABLE CT_ESTOQUE VARCHAR(20);  
  DECLARE VARIABLE CT_CAIXA VARCHAR(20);  
  DECLARE VARIABLE CT_FORNECEDOR VARCHAR(20);  
  DECLARE VARIABLE QTDE_PROD DOUBLE PRECISION;  
  DECLARE VARIABLE TOTAL_QTDE DOUBLE PRECISION;  
  DECLARE VARIABLE VALOR_PROD DOUBLE PRECISION;  
  DECLARE VARIABLE VLR_TOTAL DOUBLE PRECISION;  
  DECLARE VARIABLE tipoEmpresa varchar(30);  
begin
   SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'EMPRESA'
     INTO :tipoEmpresa;
   -- Se a empresa for de Logistica a Tela de Compra e Venda não gera 
   -- Contas a Pagar nem a Receber

   If (tipoEmpresa <> 'LOGISTICA') then
   begin 

/* Se o STATUS da Tab PAGAMENTO for diferente de '5-', não é permitido fazer alteração */  
  IF (EXISTS(SELECT STATUS FROM PAGAMENTO WHERE CODCOMPRA = OLD.CODCOMPRA AND STATUS = '7-')) THEN  
    EXCEPTION altera_compra_n_permitido;  
  if (NEW.NOTAFISCAL <> OLD.NOTAFISCAL ) then  
    begin  
      update PAGAMENTO set   
        TITULO = NEW.NOTAFISCAL  
      where CODCOMPRA = NEW.CODCOMPRA;  
    end  
  if (NEW.DATACOMPRA <> OLD.DATACOMPRA) then  
    begin  
      update PAGAMENTO set   
        EMISSAO = NEW.DATACOMPRA  
      where CODCOMPRA = NEW.CODCOMPRA;  
    end  
  if (NEW.CODFORNECEDOR <> OLD.CODFORNECEDOR) then  
    begin  
      update PAGAMENTO set   
        CODFORNECEDOR = NEW.CODFORNECEDOR  
      where CODCOMPRA = NEW.CODCOMPRA; 
      /*************************************************************************************/  
    end  
    /* Alterando a data de Vencimento */  
    if (NEW.DATAVENCIMENTO <> OLD.DATAVENCIMENTO) then  
    begin  
      if (NEW.N_PARCELA = 1) then  
      begin  
        update PAGAMENTO set   
               DATAVENCIMENTO = NEW.DATAVENCIMENTO  
        where CODCOMPRA = NEW.CODCOMPRA;  
      end  
      else  
      begin  
        i = 0;  
        while (i < NEW.N_PARCELA) do  
        begin  
          update PAGAMENTO set   
          DATAVENCIMENTO = udf_IncMonth(NEW.DATAVENCIMENTO, :i),  
          PARCELAS = NEW.N_PARCELA    
          where CODCOMPRA = NEW.CODCOMPRA AND VIA = (:i + 1);  
          i = i + 1;  
        end  
      end  
    end  
  
  /* Alterando a C. Custo */  
  
  if (NEW.CODCCUSTO <> OLD.CODCCUSTO) then  
    begin  
      update PAGAMENTO set   
        CODALMOXARIFADO = NEW.CODCCUSTO  
      where CODCOMPRA = NEW.CODCOMPRA;  
    end  
  
  /* Alterando a C. Vendedor */  
  
  if (NEW.CODCOMPRADOR <> OLD.CODCOMPRADOR) then  
    begin  
      update PAGAMENTO set   
        CODCOMPRADOR = NEW.CODCOMPRADOR  
      where CODCOMPRA = NEW.CODCOMPRA;  
    end  

  /* Alterando a CAIXA */

  if (NEW.CAIXA <> OLD.CAIXA) then
    begin
      update PAGAMENTO set 
        CAIXA = NEW.CAIXA
      where CODCOMPRA = NEW.CODCOMPRA;
    end
 
 
  /* Alterando o VALOR_PRIM_VIA */  
  
  if ((NEW.VALOR - NEW.DESCONTO) <> (OLD.VALOR - OLD.DESCONTO)) then  
  begin  
    if (NEW.N_PARCELA = 1) then  
    begin  
      update PAGAMENTO set   
             VALOR_PRIM_VIA = (NEW.VALOR - NEW.DESCONTO)  
      where CODCOMPRA = NEW.CODCOMPRA AND STATUS = '5-';  
    end  
    else  
    begin  
      i = 1;  
      while (i <= NEW.N_PARCELA) do  
      begin  
        update PAGAMENTO set   
               VALOR_PRIM_VIA = ((NEW.VALOR - NEW.DESCONTO)/NEW.N_PARCELA)   
        where CODCOMPRA = NEW.CODCOMPRA AND STATUS = '5-' AND VIA = :i;  
        i = i + 1;  
      end  
    end  
  end  
  if ((NEW.VALOR - NEW.DESCONTO) <> (OLD.VALOR - OLD.DESCONTO)) then  
    begin  
      update PAGAMENTO set   
        VALORTITULO = (NEW.VALOR - NEW.DESCONTO)  
      where CODCOMPRA = NEW.CODCOMPRA AND STATUS = '5-';  
    end  
  
  /* Alterando o VALOR_RESTO */  
  
  if ((NEW.VALOR - NEW.DESCONTO) <> (OLD.VALOR - OLD.DESCONTO)) then  
  begin  
    if (NEW.N_PARCELA = 1) then  
    begin  
      update PAGAMENTO set   
             VALOR_RESTO = (NEW.VALOR - NEW.DESCONTO)  
      where CODCOMPRA = NEW.CODCOMPRA AND STATUS = '5-';  
    end  
    else  
    begin  
      i = 1;  
      while (i <= NEW.N_PARCELA) do  
      begin  
        update PAGAMENTO set   
               VALOR_RESTO = ((NEW.VALOR - NEW.DESCONTO)/NEW.N_PARCELA)   
        where CODCOMPRA = NEW.CODCOMPRA AND STATUS = '5-' AND VIA = :i;  
        i = i + 1;  
      end  
    end  
  end  
  end -- Fim do If tipoEmpresa
end
