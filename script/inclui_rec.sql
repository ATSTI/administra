CREATE OR ALTER TRIGGER INCLUI_REC FOR VENDA ACTIVE
AFTER INSERT POSITION 0
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
  DECLARE VARIABLE VLT DOUBLE PRECISION;
  DECLARE VARIABLE VLP DOUBLE PRECISION;
  DECLARE VARIABLE mesAno varchar(6);
  DECLARE VARIABLE serie varchar(18);
  Declare Variable codMov integer;
  Declare Variable codRec integer;
  DECLARE VARIABLE N_PARC INTEGER;
  DECLARE VARIABLE NATUREZA INTEGER;
  DECLARE VARIABLE CAIXA INTEGER;
  DECLARE VARIABLE DTAREC DATE;
  DECLARE VARIABLE DTAVENC DATE;
  DECLARE VARIABLE DTA_ALT INTEGER;  
  DECLARE VARIABLE MESMOTITULO CHAR(1);
  Declare Variable existeTitulo integer;
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
  declare variable forma char(1);
  DECLARE VARIABLE tipoEmpresa varchar(30);
begin
   i = 0;
   J = 0;
   dif = 0;
   forma = new.FORMARECEBIMENTO;
   if (new.FORMARECEBIMENTO is null) then
     forma = '1';
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
     
   if ((d2-d1)=(d3-d2)) then
   if (d1 = 0) then
     dif = 0;
     

   SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'EMPRESA'
     INTO :tipoEmpresa;
    if (tipoEmpresa is null) then
     tipoEmpresa = 'vazio';
   -- Se a empresa for de Logistica a Tela de Compra e Venda não gera
   -- Contas a Pagar nem a Receber
   If (tipoEmpresa <> 'LOGISTICA') then
   begin
   /* Ve se o cliente usa 1 ti­tulo por venda                     */
   /* ou 1 ti­tulo por mes(gera somente 1 titulo independente ,   */
   /* do numero de vendas)                                        */

   SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'UNICOTITULO'
     INTO :MESMOTITULO;
   IF (MESMOTITULO = 'S') THEN
   Begin
     /* Ã‰ usado para gerar somente 1 tÃ­tulo mÃªs para o cliente  */
     /* todo movimento que o cliente tem no mÃªs apenas 1 tÃ­tulo */
     /* no contas a receber serÃ¡ criado                         */

     mesAno = UDF_STRZERO(UDF_MONTH(new.DATAVENCIMENTO),2) || UDF_YEAR(new.DATAVENCIMENTO);

     select serie from series where serie = :mesAno
       into :serie;
     if (serie is null) then
       insert into series(serie, ultimo_numero) values (:mesAno, 0);

     -- Verifico se ja tem lancamento no mes para o Cliente
     Select FIRST 1 codVenda, CODRECEBIMENTO, VALOR_PRIM_VIA, VALOR_RESTO,
            VALORTITULO, VALORRECEBIDO,
            DESCONTO, JUROS
         from RECEBIMENTO where codCliente = new.CODCLIENTE and
         dataVencimento = new.DATAVENCIMENTO and STATUS = '5-'
         AND formarecebimento <> '4'
       INTO :existeTitulo, :codMov, :VLR_PRIM_VIAa, :VLR_RESTOa,
           :VLR_TITULOa, :VLR_REC, :VLR_DESCa,:VLR_JMa;

     /* Fim da Busca se existe ti­tulo */
     SELECT DISTINCT CODNATUREZA FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO
      INTO :NATUREZA;
     if (NATUREZA = 3) then
     BEGIN
       i = 0;
       VLR_PRIM_VIA = NEW.VALOR;
       VLR_TITULO = NEW.VALOR;
       VLR_DESC = NEW.DESCONTO;
       if (VLR_DESC IS NULL) THEN
         VLR_DESC = 0;
       VLR_JM =  NEW.MULTA_JUROS;
       IF (VLR_JM is null) THEN
         VLR_JM = 0;
       VLR_RESTO =  ((NEW.VALOR - VLR_DESC + VLR_JM)- NEW.ENTRADA);
       N_PARC = NEW.N_PARCELA;
       if (NEW.ENTRADA > 0) then
       begin
         if (new.FORMARECEBIMENTO = '3') THEN
           status_venda = '1-';
         ELSE
           status_venda = '7-';
         VLR_RESTO =  NEW.VALOR;
         /* Nao existe ti­tulo */
         if (existeTitulo is null) then
         begin
           select gen_id(COD_AREC,1) FROM RDB$DATABASE
             into :codRec;
           -- Coloquei o Desconto como 0(zero), pois ele ja sai no valor_resto
           INSERT INTO RECEBIMENTO
           (CODRECEBIMENTO, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO,
            CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
            , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS
            , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO, DATACONSOLIDA,
            SITUACAO, CODORIGEM)
           VALUES
            (:CodRec, (NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, NEW.DATAVENCIMENTO,
            :status_venda, CAST((:i + 1) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.N_PARCELA,0,:VLR_JM,0,0,0, NEW.N_DOCUMENTO, 0, new.CAIXA, NEW.DATAVENDA, new.DATAVENCIMENTO,
            0, NEW.CODORIGEM);
           update venda set NUMEROBORDERO = :codRec WHERE CODVENDA = new.CODVENDA;
         end
         else begin
            -- Retirei isso do update abaixo,pois, o desconto da venda jÃ¡ esta no valor Valor_resto
            --DESCONTO = :VLR_DESC + :VLR_DESCa
           /* Se existe ele e pendente entao a trigger GERA_REC tab RECEBIMENTO faz o resto */
           update recebimento set valor_prim_via = :vlr_prim_viaa + :VLR_PRIM_VIA,
              valor_RESTO = :VLR_RESTOa + :VLR_RESTO, VALORTITULO = :VLR_TITULO + :VLR_TITULOa,
              DESCONTO = 0 , JUROS = :VLR_JM + :VLR_JMa,
              VALORRECEBIDO = :VLR_REC + NEW.ENTRADA WHERE CODRECEBIMENTO = :codMov;
           update venda set NUMEROBORDERO = :codMov WHERE CODVENDA = new.CODVENDA;
         end
         i = 1;
         N_PARC = (NEW.N_PARCELA);
       end
       VLT = ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA);
       while (i < (N_PARC)) do
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
         VLP = UDF_ROUNDDEC((VLT/N_PARC),2);
         VLR_RESTO = VLP;
         VLT = VLT - VLP;
         /* Nao existe ti­tulo */
         if (existeTitulo is null) then
         begin
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
             dtaVenc = UDF_INCDAY(NEW.DATAVENDA, J);
             
           /*VERIFICA SE O VENCIMENTO � EM UM SABADO OU DOMINGO*/
           DTA_ALT = EXTRACT(WEEKDAY FROM :dtaVenc);
           IF (DTA_ALT = 0) then
             dtaVenc = UDF_INCDAY(dtaVenc, 1);
           IF (DTA_ALT = 6) then
             dtaVenc = UDF_INCDAY(dtaVenc, 2);
             
           select gen_id(COD_AREC,1) FROM RDB$DATABASE
             into :codRec;
           INSERT INTO RECEBIMENTO
             (CODRECEBIMENTO, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO,
             CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
             , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, VALORRECEBIDO
             , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA,N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO,
             SITUACAO, CODORIGEM)
           VALUES
             (:CodREc, (NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, :dtaVenc,
             :status_venda, CAST((:i+1) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,
             'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.N_PARCELA,0,0,0,0,0,0, NEW.N_DOCUMENTO,0, :CAIXA, :DTAREC,
             0, NEW.CODORIGEM);
             update venda set NUMEROBORDERO = :codRec WHERE CODVENDA = new.CODVENDA;
         end
         else begin
           /* Se existe ele e pendente entao a trigger GERA_REC tab RECEBIMENTO faz o resto */
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

     /* Gera 1 titulo para cada venda */

     SELECT DISTINCT CODNATUREZA FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO
      INTO :NATUREZA;
     if (NATUREZA = 3) then /* Venda ou NF*/
     BEGIN
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
         VLR_RESTO =  NEW.VALOR;
         INSERT INTO RECEBIMENTO
           (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO,
            CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
            , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS
            , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO, DATACONSOLIDA
            , SITUACAO, CODORIGEM)
         VALUES
            ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, NEW.DATAVENDA,
            :status_venda, CAST((:i + 1) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.N_PARCELA,0,:VLR_JM,0,0,0, NEW.N_DOCUMENTO, 0, new.CAIXA, new.DATAVENDA, NEW.DATAVENCIMENTO,
            0, NEW.CODORIGEM);
         i = 1;
         N_PARC = (NEW.N_PARCELA-1);
       end
       VLT = ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA);
       while (i < (N_PARC + 1)) do
       begin
         if (d1 >= 0) then
         begin
           j = d1;
           d1 = -1;
           dif = 0;
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
         else if (dif > 0) then
           j = (dif*(i+1));

		 if (NEW.STATUS = 0) then
         begin
           status_venda = '5-';
           CAIXA = null;
           DTAREC = null;
         end
         caixa = new.caixa;
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

         -- Se j = 0 então não usa prazo , usa a data Vencimento
         if (j = 0) then
         begin
           dtaVenc = UDF_INCMONTH(NEW.DATAVENCIMENTO, (i-1));
         end   
         else
           dtaVenc = UDF_INCDAY(NEW.DATAVENDA, J);
                   /*VERIFICA SE O VENCIMENTO � EM UM SABADO OU DOMINGO*/
          
         DTA_ALT = EXTRACT(WEEKDAY FROM :dtaVenc);
         IF (DTA_ALT = 0) then
           dtaVenc = UDF_INCDAY(dtaVenc, 1);
         IF (DTA_ALT = 6) then
           dtaVenc = UDF_INCDAY(dtaVenc, 2);
         
         --VLR_RESTO =  VLT/N_PARC;

         VLP = UDF_ROUNDDEC((VLT/((N_PARC-(i-1)))),2);
         VLR_RESTO = VLP;
         VLT = VLT - VLP;

         
         INSERT INTO RECEBIMENTO
           (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO,
           CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
           , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, VALORRECEBIDO
           , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA,N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO
           , SITUACAO, CODORIGEM)
         VALUES
           ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, :dtaVenc,
           :status_venda, CAST((:i) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,
           'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.N_PARCELA,0,0,0,0,0,0, NEW.N_DOCUMENTO,0, :CAIXA, :DTAREC,
           0, NEW.CODORIGEM);
           i = i + 1;
       end
     end
     if (NATUREZA = 10) then     /* Devolucao de Venda */
       update RECEBIMENTO r set r.DP = 0 WHERE r.CODCLIENTE = NEW.CODCLIENTE
         AND TITULO = cast(NEW.NOTAFISCAL as VARCHAR(15)) || '-' || new.SERIE  AND STATUS = '5-';
       execute procedure BAIXATITULOSREC(NEW.VALOR, 0,0,0,0,NEW.DATAVENDA
                                , NEW.DATAVENDA
                                , NEW.DATAVENDA
                                , '1'
                                , ''
                                , NEW.CAIXA
                                , NEW.CODCLIENTE
                                , '7-');
       update RECEBIMENTO r set r.DP = null WHERE r.CODCLIENTE = NEW.CODCLIENTE
         AND TITULO = cast(NEW.NOTAFISCAL as VARCHAR(15)) || '-' || new.SERIE;
     end
   end -- Fim do IF tipoEmpresa
end
