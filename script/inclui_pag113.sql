CREATE OR ALTER TRIGGER INCLUI_PAG FOR COMPRA ACTIVE
AFTER INSERT POSITION 0
AS
  DECLARE VARIABLE i integer;
  DECLARE VARIABLE status_venda char(2);
  DECLARE VARIABLE VLR_TITULO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PARCELA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PRIM_VIA DOUBLE PRECISION;
  DECLARE VARIABLE N_PARC INTEGER;
  DECLARE VARIABLE CAIXA INTEGER;
  DECLARE VARIABLE DTAPAG DATE; 
  DECLARE VARIABLE tipoNatureza smallint;
  DECLARE VARIABLE tipoEmpresa varchar(30);  
  DECLARE VARIABLE d1 smallint;
  DECLARE VARIABLE d2 smallint;
  DECLARE VARIABLE d3 smallint;
  DECLARE VARIABLE d4 smallint;
  DECLARE VARIABLE d5 smallint;
  DECLARE VARIABLE d6 smallint;
  DECLARE VARIABLE d7 smallint;
  DECLARE VARIABLE d8 smallint;
  Declare variable dif1 smallint;
  Declare variable dif2 smallint;
  Declare variable dif3 smallint;
  Declare variable dif smallint;
  Declare variable j smallint;
  DECLARE VARIABLE DTAVENC DATE;
  Declare variable forma char(1);
  declare variable DTA_ALT INTEGER;
begin
   i = 0;
   j = 0;

   forma = new.FORMAPAGAMENTO;
   if (new.FORMAPAGAMENTO is null) then 
     forma = '1';
   
   select codNatureza from movimento where codmovimento = new.CODMOVIMENTO
     into :tipoNatureza;

   SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'EMPRESA'
     INTO :tipoEmpresa;
   if (tipoEmpresa is null) then   
     tipoEmpresa = 'vazio';
   -- Se a empresa for de Logistica a Tela de Compra e Venda não gera 
   -- Contas a Pagar nem a Receber
   SELECT D1, D2, D3, D4, D5, D6, D7, D8 FROM PARAMETRO
     WHERE DADOS = 'PRAZO' and PARAMETRO = NEW.PRAZO
     INTO :D1, :D2, :D3, :D4, :D5, :D6, :D7, :D8;
   if (d1 is null) then d1 = 0;
   if (d2 is null) then d2 = 0;
   if (d3 is null) then d3 = 0;
   if (d4 is null) then d4 = 0;
   if (d5 is null) then d5 = 0;
   if (d6 is null) then d6 = 0;
   if (d7 is null) then d7 = 0;
   if (d8 is null) then d8 = 0;
   if ((d2-d1)=(d3-d2)) then 
   if ((d1-0) = (d2-d1)) then 
     dif = d2-d1;
   
   If (tipoEmpresa <> 'LOGISTICA') then
   begin 

   VLR_PRIM_VIA = (NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS);
   VLR_TITULO = (NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS);
   VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS));
   N_PARC = NEW.N_PARCELA;

   if (tipoNatureza = 9) then -- E devolucao de Compra
   begin
     update PAGAMENTO p set p.DP = 0 WHERE p.CODFORNECEDOR = NEW.CODFORNECEDOR 
        AND TITULO = NEW.NOTAFISCAL AND STATUS = '5-'; 
     execute procedure BAIXATITULOSPAG(NEW.VALOR, 0,0,0,0,NEW.DATACOMPRA
                                , NEW.DATACOMPRA
                                , NEW.DATACOMPRA
                                , '1'
                                , ''
                                , NEW.CAIXA
                                , NEW.CODFORNECEDOR
                                , '7-', NEW.CODUSUARIO);
   end   
   if (tipoNatureza = 4) then -- E Compra 
   begin
   if (NEW.ENTRADA > 0) then
   begin
     status_venda = '7-';
     VLR_RESTO = NEW.VALOR; 
     INSERT INTO PAGAMENTO
       (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, 
       STATUS , VIA, FORMAPAGAMENTO, CODCOMPRA , CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO
       , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, JUROS, 
        DESCONTO, PERDA, FUNRURAL, DATAPAGAMENTO, PARCELAS, TROCA, CAIXA, N_DOCUMENTO, DATACONSOLIDA) 
     VALUES 
       (NEW.NOTAFISCAL, NEW.DATACOMPRA, NEW.CODFORNECEDOR, udf_IncMonth(NEW.DATAVENCIMENTO, :i),
       :status_venda, CAST((:i + 1) as CHAR(3)), :forma, NEW.CODCOMPRA, NEW.CODCCUSTO, NEW.CODCOMPRADOR, NEW.CODUSUARIO,  
       cast('NOW' as date), :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.MULTA_JUROS, 
       0, 0, 0, NEW.DATAVENCIMENTO, NEW.N_PARCELA,0, new.CAIXA, NEW.N_DOCUMENTO, new.DATAVENCIMENTO);
     i = 1;
     N_PARC = (NEW.N_PARCELA - 1);
   end
   while (i < NEW.N_PARCELA) do
   begin
     if (NEW.STATUS = 0) then
     begin     
       status_venda = '5-';
       CAIXA = null;
       DTAPAG = null;
     end
     if (NEW.STATUS = 1) then
     begin
       status_venda = '7-';  
       CAIXA = new.CAIXA; 
       DTAPAG = new.DATACOMPRA;
     end
     if ((i+1) > 1) then 
     begin
       VLR_PRIM_VIA = 0;
     end
     VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA)/N_PARC;
     if (tipoNatureza = 9) then -- E devolucao
     begin
       VLR_RESTO = NEW.VALOR*(-1);
     end

     if (dif > 0) then 
       j = (dif*(i+1));
     else if ((d1 = 0) and (i = 0)) then
     begin
        j = d1;
        d1 = 0;
     end	   
     else if (d1 > 0) then 
     begin 
       j = d1;   
       d1 = 0;
     end 
     else if (d2 > 0) then 
     begin 
       j = d2;   
       d2 = 0;
     end 
     else if (d3 > 0) then 
     begin 
       j = d3;   
       d3 = 0;
     end 
     else if (d4 > 0) then 
     begin 
       j = d4;   
       d4 = 0;
     end 
     else if (d5 > 0) then 
     begin 
       j = d5;   
       d5 = 0;
     end 
     else if (d6 > 0) then 
     begin 
       j = d6;   
       d6 = 0;
     end 
     else if (d7 > 0) then 
     begin 
       j = d7;   
       d7 = 0;
     end 
     else if (d8 > 0) then 
     begin 
       j = d8;   
       d8 = 0;
     end 

     -- Se j = 0 então não usa prazo , usa a data Vencimento     
     if (j = 0) then 
       dtaVenc = UDF_INCMONTH(NEW.DATAVENCIMENTO, i);
     else
       dtaVenc = UDF_INCDAY(NEW.DATACOMPRA, J);
       
            
    DTA_ALT = EXTRACT(WEEKDAY FROM :dtaVenc);
    IF (DTA_ALT = 0) then
        dtaVenc = UDF_INCDAY(dtaVenc, 1);
    IF (DTA_ALT = 6) then
        dtaVenc = UDF_INCDAY(dtaVenc, 2);

     INSERT INTO PAGAMENTO
       (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO,
       CODCOMPRA , CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO
       , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, JUROS 
       , DESCONTO, PERDA, FUNRURAL, PARCELAS, TROCA,CAIXA, DATAPAGAMENTO, N_DOCUMENTO) 
     VALUES 
       (NEW.NOTAFISCAL, NEW.DATACOMPRA, NEW.CODFORNECEDOR, :dtaVenc, :status_venda, CAST((:i + 1) as CHAR(3)), :forma, 
       NEW.CODCOMPRA, NEW.CODCCUSTO, NEW.CODCOMPRADOR, NEW.CODUSUARIO,  
       cast('NOW' as date), :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, 0, new.MULTA_JUROS,
       0,0,0, NEW.N_PARCELA,0, :CAIXA, :DTAPAG, NEW.N_DOCUMENTO);
     i = i + 1;    
   end
   end /* Fim do IF CodNatureza = 9 ou = 2 */
  end -- Fim do IF TipoEmpresa
end