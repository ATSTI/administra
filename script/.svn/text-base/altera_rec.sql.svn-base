CREATE OR ALTER TRIGGER ALTERA_REC FOR VENDA ACTIVE
AFTER UPDATE POSITION 0
as
  DECLARE VARIABLE i integer;
  DECLARE VARIABLE status_venda char(2);
  DECLARE VARIABLE VLR_TITULO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PARCELA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PRIM_VIA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_JM DOUBLE PRECISION;
  DECLARE VARIABLE VLR_DESC DOUBLE PRECISION;
  DECLARE VARIABLE N_PARC INTEGER;
  DECLARE VARIABLE CAIXA INTEGER;
  DECLARE VARIABLE tipoEmpresa varchar(30);  
begin
   SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'EMPRESA'
     INTO :tipoEmpresa;
   if (tipoEmpresa is null) then 
     tipoEmpresa = 'Todas';
   -- Se a empresa for de Logistica a Tela de Compra e Venda não gera 
   -- Contas a Pagar nem a Receber

   If (tipoEmpresa <> 'LOGISTICA') then
   begin 

  
  /* Se a mudanca foi de Status entao nao executa nada */
  if (NEW.STATUS <> 3) THEN
  begin
  /* Se o STATUS da Tab RECEBIMENTO for igaul a '7-', não é permitido fazer alteração */
  IF (EXISTS(SELECT STATUS FROM RECEBIMENTO WHERE CODVENDA = OLD.CODVENDA AND STATUS = '7-')) THEN
  begin
    if (new.numerobordero is null) then
      EXCEPTION altera_venda_n_permitido;
  end
  if (new.numerobordero is null) then
  begin 
    if ((NEW.NOTAFISCAL || NEW.SERIE) <> (OLD.NOTAFISCAL || OLD.SERIE)) then
    begin
      update RECEBIMENTO set 
        TITULO = (NEW.NOTAFISCAL || '-' || NEW.SERIE)
      where CODVENDA = NEW.CODVENDA;
    end
    if (NEW.DATAVENDA <> OLD.DATAVENDA) then
    begin
      update RECEBIMENTO set 
        EMISSAO = NEW.DATAVENDA
      where CODVENDA = NEW.CODVENDA;
    end
    if (NEW.CODCLIENTE <> OLD.CODCLIENTE) then
    begin
      update RECEBIMENTO set 
        CODCLIENTE = NEW.CODCLIENTE
      where CODVENDA = NEW.CODVENDA;
    end
  
    /* Alterando a data de Vencimento */

    if (NEW.DATAVENCIMENTO <> OLD.DATAVENCIMENTO) then
    begin
      if (NEW.N_PARCELA = 1) then
      begin
        update RECEBIMENTO set 
               DATAVENCIMENTO = NEW.DATAVENCIMENTO
        where CODVENDA = NEW.CODVENDA;
      end
      else
      begin
        i = 0;
        while (i < NEW.N_PARCELA) do
        begin
          update RECEBIMENTO set 
          DATAVENCIMENTO = udf_IncMonth(NEW.DATAVENCIMENTO, :i) 
          where CODVENDA = NEW.CODVENDA AND VIA = (:i + 1);
          i = i + 1;
        end
      end
    end

    /* Alterando a C. Custo */

    if (NEW.CODCCUSTO <> OLD.CODCCUSTO) then
    begin
      update RECEBIMENTO set 
        CODALMOXARIFADO = NEW.CODCCUSTO
      where CODVENDA = NEW.CODVENDA;
    end

    /* Alterando a CAIXA */
  
    if (NEW.CAIXA <> OLD.CAIXA) then
    begin
      update RECEBIMENTO set 
        CAIXA = NEW.CAIXA
      where CODVENDA = NEW.CODVENDA;
    end


    /* Alterando a N_DOCUMENTO */

    if (NEW.N_DOCUMENTO <> OLD.N_DOCUMENTO) then
    begin
      update RECEBIMENTO set 
        N_DOCUMENTO = NEW.N_DOCUMENTO
      where CODVENDA = NEW.CODVENDA;
    end

    /* Alterando a C. Vendedor */

    if (NEW.CODVENDEDOR <> OLD.CODVENDEDOR) then
    begin
      update RECEBIMENTO set 
        CODVENDEDOR = NEW.CODVENDEDOR
      where CODVENDA = NEW.CODVENDA;
    end

    /* Alterando o VALOR_PRIM_VIA */

    if ((NEW.VALOR - NEW.DESCONTO) <> (OLD.VALOR - OLD.DESCONTO)) then
    begin
    if (NEW.N_PARCELA = 1) then
    begin
      update RECEBIMENTO set 
             VALORTITULO = (NEW.VALOR - NEW.DESCONTO),
             VALOR_RESTO = (NEW.VALOR - NEW.DESCONTO),
             VALOR_RESTO_SST = (NEW.VALOR - NEW.DESCONTO),
             VALOR_PRIM_VIA = (NEW.VALOR - NEW.DESCONTO)
      where CODVENDA = NEW.CODVENDA AND STATUS = '5-';
    end
    else
    begin
      i = 1;
      while (i <= NEW.N_PARCELA) do
      begin
        update RECEBIMENTO set 
             VALORTITULO = (NEW.VALOR - NEW.DESCONTO)/NEW.N_PARCELA,
             VALOR_RESTO = (NEW.VALOR - NEW.DESCONTO)/NEW.N_PARCELA,
             VALOR_RESTO_SST = (NEW.VALOR - NEW.DESCONTO)/NEW.N_PARCELA,
             VALOR_PRIM_VIA = 0 
        where CODVENDA = NEW.CODVENDA AND STATUS = '5-' AND VIA = :i;
        i = i + 1;
      end
    end
    end

    /******************************************************************************************/
    /* Se houve alteração no número de parcelas então excluo o q existe e crio tudo novamente */
    /******************************************************************************************/
    IF (NEW.N_PARCELA <> OLD.N_PARCELA) THEN
    BEGIN
     DELETE FROM RECEBIMENTO WHERE CODVENDA = OLD.CODVENDA;
     i = 0;
     VLR_PRIM_VIA = NEW.VALOR;
     VLR_TITULO = NEW.VALOR;
     VLR_DESC = NEW.DESCONTO;
     VLR_JM =  NEW.MULTA_JUROS;
     VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA);
     N_PARC = NEW.N_PARCELA;
     if (NEW.ENTRADA > 0) then
     begin
       status_venda = '7-';
       INSERT INTO RECEBIMENTO 
         (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
         CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
         , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS
         , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA,N_DOCUMENTO, OUTRO_CREDITO, CAIXA) 
       VALUES 
         ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, NEW.DATAVENDA,
         :status_venda, CAST((:i + 1) as CHAR(3)),NEW.FORMARECEBIMENTO, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
         'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.N_PARCELA,:VLR_DESC,:VLR_JM,0,0,0, NEW.N_DOCUMENTO, 0, new.CAIXA);
       i = 1;
       N_PARC = (NEW.N_PARCELA - 1);
     end
     while (i < (N_PARC + 1)) do
     begin
       if (NEW.STATUS = 0) then
       begin     
         status_venda = '5-';
         CAIXA = null; 
       end
       if (NEW.STATUS = 1) then
       begin
         status_venda = '7-';  
         CAIXA = new.CAIXA;  
       end
       if ((i+1) > 1) then 
       begin
         VLR_PRIM_VIA = 0;
       end
       if (i = 0) then
       begin
         i = 1;
       end
       VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA)/N_PARC;
       INSERT INTO RECEBIMENTO 
         (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
         CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
         , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, VALORRECEBIDO
         , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, N_DOCUMENTO, OUTRO_CREDITO, CAIXA) 
       VALUES 
         ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, udf_IncMonth(NEW.DATAVENCIMENTO, (:i-1)),
         :status_venda, CAST((:i) as CHAR(3)),NEW.FORMARECEBIMENTO, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
         'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.N_PARCELA,0,0,0,0,0,0, NEW.N_DOCUMENTO, 0, :CAIXA);
       i = i + 1;    
     end
    END
  end
  else 
  begin 
    /* Existe NumeroBordero então é usado para o Saúde , gera só um título por mês */
    if (NEW.CODCLIENTE <> OLD.CODCLIENTE) then
    begin
      update RECEBIMENTO set 
        CODCLIENTE = NEW.CODCLIENTE
      where CODRECEBIMENTO = NEW.NUMEROBORDERO;
    end

    /* Alterando o VALOR_RESTO */
    if ((NEW.VALOR - NEW.DESCONTO) <> (OLD.VALOR - OLD.DESCONTO)) then
    begin
    if (NEW.N_PARCELA = 1) then
    begin
      update RECEBIMENTO set 
             VALOR_RESTO = VALOR_RESTO + ((NEW.VALOR - OLD.VALOR) - (NEW.DESCONTO - old.DESCONTO))
      where CODRECEBIMENTO = NEW.NUMEROBORDERO AND STATUS = '5-';
    end
    else
    begin
      i = 1;
      while (i <= NEW.N_PARCELA) do
      begin
        update RECEBIMENTO set 
               VALOR_RESTO = VALOR_RESTO + (((NEW.VALOR - OLD.VALOR) - (NEW.DESCONTO - old.DESCONTO))/NEW.N_PARCELA) 
        where CODRECEBIMENTO = NEW.NUMEROBORDERO AND STATUS = '5-' AND VIA = :i;
        i = i + 1;
      end
    end
    end
    /* Alterando o VALOR_PRIM_VIA */

    if ((NEW.VALOR - NEW.DESCONTO) <> (OLD.VALOR - OLD.DESCONTO)) then
    begin
    if (NEW.N_PARCELA = 1) then
    begin
      update RECEBIMENTO set 
             VALOR_PRIM_VIA = VALOR_PRIM_VIA + ((NEW.VALOR - OLD.VALOR) - (NEW.DESCONTO - old.DESCONTO))
      where CODRECEBIMENTO = NEW.NUMEROBORDERO AND STATUS = '5-';
    end
    else
    begin
      i = 1;
      while (i <= NEW.N_PARCELA) do
      begin
        update RECEBIMENTO set 
               VALOR_PRIM_VIA = VALOR_PRIM_VIA + (((NEW.VALOR - OLD.VALOR) - (NEW.DESCONTO - old.DESCONTO))/NEW.N_PARCELA) 
        where CODRECEBIMENTO = NEW.NUMEROBORDERO AND STATUS = '5-' AND VIA = :i;
        i = i + 1;
      end
    end
    end
    if ((NEW.VALOR - NEW.DESCONTO) <> (OLD.VALOR - OLD.DESCONTO)) then
    begin
      update RECEBIMENTO set 
        VALORTITULO = VALORTITULO + ((NEW.VALOR - OLD.VALOR) - (NEW.DESCONTO - old.DESCONTO))
      where CODRECEBIMENTO = NEW.NUMEROBORDERO AND STATUS = '5-';
    end

    /* Alterando a data de Vencimento */

    if (NEW.DATAVENCIMENTO <> OLD.DATAVENCIMENTO) then
    begin
      if (NEW.N_PARCELA = 1) then
      begin
        update RECEBIMENTO set 
               DATAVENCIMENTO = NEW.DATAVENCIMENTO
        where CODRECEBIMENTO = NEW.NUMEROBORDERO;
      end
      else
      begin
        i = 0;
        while (i < NEW.N_PARCELA) do
        begin
          update RECEBIMENTO set 
          DATAVENCIMENTO = udf_IncMonth(NEW.DATAVENCIMENTO, :i) 
          where CODRECEBIMENTO = NEW.NUMEROBORDERO AND VIA = (:i + 1);
          i = i + 1;
        end
      end
    end
    
  end
  end
  end -- Fim do If tipoEmpresa
end
