set term ^;
ALTER TRIGGER INCLUI_REC
AFTER INSERT
POSITION 0
AS
  DECLARE VARIABLE i integer;
  DECLARE VARIABLE status_venda char(2);
  DECLARE VARIABLE VLR_TITULO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PARCELA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PRIM_VIA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_JM DOUBLE PRECISION;
  DECLARE VARIABLE VLR_DESC DOUBLE PRECISION;
  DECLARE VARIABLE VLR_DESCa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_TITULOa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_RESTOa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PARCELAa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PRIM_VIAa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_JMa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_REC DOUBLE PRECISION;
  DECLARE VARIABLE mesAno varchar(6);
  DECLARE VARIABLE serie varchar(18);  
  Declare Variable codMov integer;
  Declare Variable codRec integer;
  DECLARE VARIABLE N_PARC INTEGER;
  DECLARE VARIABLE NATUREZA INTEGER;
  DECLARE VARIABLE CAIXA INTEGER;
  DECLARE VARIABLE DTAREC DATE;
  DECLARE VARIABLE MESMOTITULO CHAR(1);
  Declare Variable existeTitulo integer;
begin
   /* Vê se o cliente usa 1 título por venda                     */
   /* ou 1 título por mês(gera somente 1 título independente ,   */
   /* do número de vendas)                                        */
   
   SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'UNICOTITULO'
     INTO :MESMOTITULO;  
   IF (MESMOTITULO = 'S') THEN
   Begin
     /* É usado para gerar somente 1 título mês para o cliente  */
     /* todo movimento que o cliente tem no mês apenas 1 título */
     /* no contas a receber será criado                         */ 

     mesAno = UDF_STRZERO(UDF_MONTH(new.DATAVENCIMENTO),2) || UDF_YEAR(new.DATAVENCIMENTO);

     select serie from series where serie = :mesAno
       into :serie;
     if (serie is null) then
       insert into series(serie, ultimo_numero) values (:mesAno, 0);

     -- Verifico se já tem lançamento no mês para o Cliente
     Select FIRST 1 codVenda, CODRECEBIMENTO, VALOR_PRIM_VIA, VALOR_RESTO, 
            VALORTITULO, VALORRECEBIDO, 
            DESCONTO, JUROS
         from RECEBIMENTO where codCliente = new.CODCLIENTE and 
         dataVencimento = new.DATAVENCIMENTO and STATUS = '5-'
         AND formarecebimento <> '4' 
       INTO :existeTitulo, :codMov, :VLR_PRIM_VIAa, :VLR_RESTOa, 
           :VLR_TITULOa, :VLR_REC, :VLR_DESCa,:VLR_JMa;

     /* Fim da Busca se existe título */ 
     SELECT DISTINCT CODNATUREZA FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO 
      INTO :NATUREZA;
     if (NATUREZA = 3) then
     BEGIN
       i = 0;
       VLR_DESC = NEW.DESCONTO;
       if (VLR_DESC IS NULL) THEN
         VLR_DESC = 0;
       VLR_JM =  NEW.MULTA_JUROS;
       IF (VLR_JM is null) THEN
         VLR_JM = 0;
       VLR_RESTO =  ((NEW.VALOR - VLR_DESC + VLR_JM)- NEW.ENTRADA);
                /* alterado para aparecer a soma correta no grid*/
       VLR_PRIM_VIA = VLR_RESTO;
       VLR_TITULO = VLR_RESTO;

       N_PARC = NEW.N_PARCELA;
       if (NEW.ENTRADA > 0) then
       begin
         if (new.FORMARECEBIMENTO = '3') THEN
           status_venda = '1-';
         ELSE
           status_venda = '7-';
         VLR_RESTO =  NEW.VALOR;
         /* Não existe título */
         if (existeTitulo is null) then
         begin
           select gen_id(COD_AREC,1) FROM RDB$DATABASE  
             into :codRec;
           -- Coloquei o Desconto como 0(zero), pois ele já sai no valor_resto
           INSERT INTO RECEBIMENTO 
           (CODRECEBIMENTO, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
            CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
            , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS
            , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO ) 
           VALUES 
            (:CodRec, (NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, NEW.DATAVENDA,
            :status_venda, CAST((:i + 1) as CHAR(3)),NEW.FORMARECEBIMENTO, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.N_PARCELA,0,:VLR_JM,0,0,0, NEW.N_DOCUMENTO, 0, new.CAIXA, NEW.DATAVENDA);
           update venda set NUMEROBORDERO = :codRec WHERE CODVENDA = new.CODVENDA;
         end  
         else begin
            -- Retirei isso do update abaixo,pois, o desconto da venda já esta no valor Valor_resto
            --DESCONTO = :VLR_DESC + :VLR_DESCa
           /* Se existe ele é pendente então a trigger GERA_REC tab RECEBIMENTO faz o resto */ 
           update recebimento set valor_prim_via = :vlr_prim_viaa + :VLR_PRIM_VIA, 
              valor_RESTO = :VLR_RESTOa + :VLR_RESTO, VALORTITULO = :VLR_TITULO + :VLR_TITULOa,
              DESCONTO = 0 , JUROS = :VLR_JM + :VLR_JMa,
              VALORRECEBIDO = :VLR_REC + NEW.ENTRADA WHERE CODRECEBIMENTO = :codMov;
           update venda set NUMEROBORDERO = :codMov WHERE CODVENDA = new.CODVENDA; 
         end 
         i = 1;
         N_PARC = (NEW.N_PARCELA - 1);
       end
       while (i < (N_PARC + 1)) do
       begin
         if (NEW.STATUS = 0) then
         begin     
           status_venda = '5-';
           CAIXA = null;
           DTAREC = null; 
         end
         if (NEW.STATUS = 1) then
         begin
           status_venda = '7-';  
           caixa = new.caixa;
           DTAREC = NEW.DATAVENDA;
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
         /* Não existe título */
         if (existeTitulo is null) then
         begin
           select gen_id(COD_AREC,1) FROM RDB$DATABASE  
             into :codRec;
           INSERT INTO RECEBIMENTO 
             (CODRECEBIMENTO, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
             CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
             , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, VALORRECEBIDO
             , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA,N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO) 
           VALUES 
             (:CodREc, (NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, udf_IncMonth(NEW.DATAVENCIMENTO, (:i-1)),
             :status_venda, CAST((:i) as CHAR(3)),'1', NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
             'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.N_PARCELA,0,0,0,0,0,0, NEW.N_DOCUMENTO,0, :CAIXA, :DTAREC);
             update venda set NUMEROBORDERO = :codRec WHERE CODVENDA = new.CODVENDA;
         end
         else begin
           /* Se existe ele é pendente então a trigger GERA_REC tab RECEBIMENTO faz o resto */ 
           vlr_prim_viaa = vlr_prim_viaa + VLR_PRIM_VIA;
           update recebimento set valor_prim_via = :vlr_prim_viaa, 
              valor_RESTO = :VLR_RESTOa + :VLR_RESTO, VALORTITULO = :VLR_TITULO + :VLR_TITULOa,
              DESCONTO = 0 , JUROS = :VLR_JM + :VLR_JMa,
              VALORRECEBIDO = :VLR_REC + NEW.ENTRADA 
              WHERE CODRECEBIMENTO = :codMov;
           update venda set NUMEROBORDERO = :codMov WHERE CODVENDA = new.CODVENDA;
         end 
         i = i + 1;
       end
     end
   end
   IF ((MESMOTITULO IS NULL) OR (MESMOTITULO = 'N')) THEN   
   begin 

     /* Gera 1 título para cada venda */

     SELECT DISTINCT CODNATUREZA FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO 
      INTO :NATUREZA;
     if (NATUREZA = 3) then
     BEGIN
       i = 0;
       VLR_PRIM_VIA = NEW.VALOR;
       VLR_TITULO = NEW.VALOR;
       VLR_DESC = NEW.DESCONTO;
       VLR_JM =  NEW.MULTA_JUROS;
  
       VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA);
        
          /* alterado para aparecer a soma correta no grid*/
       VLR_PRIM_VIA = VLR_RESTO;
       VLR_TITULO = VLR_RESTO;

       N_PARC = NEW.N_PARCELA;
       if (NEW.ENTRADA > 0) then
       begin
         status_venda = '7-';
         VLR_RESTO =  NEW.VALOR;
         INSERT INTO RECEBIMENTO 
           (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
            CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
            , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS
            , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO ) 
         VALUES 
            ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, NEW.DATAVENDA,
            :status_venda, CAST((:i + 1) as CHAR(3)),NEW.FORMARECEBIMENTO, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.N_PARCELA,0,:VLR_JM,0,0,0, NEW.N_DOCUMENTO, 0, new.CAIXA, NEW.DATAVENDA);
         i = 1;
         N_PARC = (NEW.N_PARCELA - 1);
       end
       while (i < (N_PARC + 1)) do
       begin
         if (NEW.STATUS = 0) then
         begin     
           status_venda = '5-';
           CAIXA = null;
           DTAREC = null; 
         end
         if (NEW.STATUS = 1) then
         begin
           status_venda = '7-';  
           caixa = new.caixa;
           DTAREC = NEW.DATAVENDA;
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
           , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA,N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO) 
         VALUES 
           ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, udf_IncMonth(NEW.DATAVENCIMENTO, (:i-1)),
           :status_venda, CAST((:i) as CHAR(3)),'1', NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
           'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.N_PARCELA,0,0,0,0,0,0, NEW.N_DOCUMENTO,0, :CAIXA, :DTAREC);
           i = i + 1;    
       end
     end     
   end 
end
