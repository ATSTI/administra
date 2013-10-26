CREATE OR ALTER TRIGGER GERA_VALOR FOR NOTAFISCAL
ACTIVE AFTER INSERT
POSITION 0
AS
  declare variable parametro varchar(15);
  declare variable prazo varchar(40);
  declare variable titulo varchar(40);
  declare variable parc SMALLINT;
  declare variable via SMALLINT;
  declare variable total  double PRECISION;
  declare variable precoProd  double PRECISION;
  declare variable codMov INTEGER;
  declare variable p INTEGER;
  declare variable NumParc smallint;
  declare variable codcli INTEGER;
  declare variable codrec INTEGER;
  declare variable desconto DOUBLE PRECISION;
  declare variable d9 DOUBLE PRECISION;
  declare variable parcPrim DOUBLE PRECISION;
  declare variable parcResto DOUBLE PRECISION;
  declare variable vlrTit DOUBLE PRECISION;
  declare variable vlrParc DOUBLE PRECISION;
  declare variable numParcTotal SMALLINT;
BEGIN
    vlrParc = 0;
    vlrTit = 0;
    parcPrim = 0; 
    parcResto = 0;
    /* Valor de cada item para nota fiscal                   */
    /* Se configurado na tabela parametro a variavel NFVALOR */
    /* entao o sistema usa o valor proporcional para a nota  */
    select parametro from parametro where parametro = 'NFVALOR'
    into :parametro;
    if (new.natureza = 15) then
    if (parametro is not null) then
    begin
    
      Select n_parcela, codmovimento, prazo, NOTAFISCAL || '-' || SERIE, codcliente from venda where codVenda = new.CODVENDA
      into :parc, :codMov, :prazo, :titulo, :codcli;
      
      select first 1 cast(p.d9 as integer), valor from PARAMETRO p  where p.PARAMETRO = :Prazo
      into :d9, :numParc; 
      
      if (d9 is null) then 
        d9 = 0;
      
      if (d9 <> 999) then -- Se = "N" não faz nada.
      begin  
        /* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx*/
        if ((d9 = 0) or (d9 > 10)) then 
        begin 
            for select m.QTDE_ALT, m.CODPRODUTO from MOVIMENTODETALHE m where m.CODMOVIMENTO = :codMov
                and m.preco > 0
            into :desconto, :p
            do begin
                if (desconto is null) then
                    desconto = 0;
                if (desconto > 0) then
                    desconto = 1 - (desconto / 100);
                if (desconto = 0) then
                    desconto = 1;
                update MOVIMENTODETALHE md set  md.VLR_BASE = UDF_ROUNDDEC((md.PRECO/:parc),2) * :desconto
                    where md.CODMOVIMENTO = :codMov and md.CODPRODUTO = :p
                    and md.preco > 0; 
            end
            select sum(m.quantidade * m.VLR_BASE) from MOVIMENTODETALHE m where m.CODMOVIMENTO = :codMov
            into :total ;
            if (total <> new.VALOR_TOTAL_NOTA) then
            begin
                total = UDF_ROUNDDEC(:total,2);
                update NOTAFISCAL set VALOR_PRODUTO = :total , VALOR_TOTAL_NOTA = :total
                where NUMNF = new.NUMNF;
            end   
        end
        /* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx*/
        else begin  -- USANDO O PARAMETRO D9 para GERAR AS PARCELAS E TITULOS
            d9 = d9/10;
            
            for select m.QTDE_ALT, m.CODPRODUTO, m.PRECO from MOVIMENTODETALHE m where m.CODMOVIMENTO = :codMov
                and m.preco > 0
            into :desconto, :p, :precoProd
            do begin
                if (desconto is null) then
                    desconto = 0;
                if (desconto > 0) then
                    desconto = 1 - (desconto / 100);
                if (desconto = 0) then
                    desconto = 1;
                total = UDF_ROUNDDEC(((:precoProd * :d9) * :desconto), 2);    
                update MOVIMENTODETALHE md set  md.VLR_BASE = :total
                    where md.CODMOVIMENTO = :codMov and md.CODPRODUTO = :p
                    and md.preco > 0; 
            end
            select sum(m.quantidade * m.VLR_BASE) from MOVIMENTODETALHE m where m.CODMOVIMENTO = :codMov
                into :total ;
            total = UDF_ROUNDDEC(:total,2);
            if (total <> new.VALOR_TOTAL_NOTA) then
                update NOTAFISCAL set VALOR_PRODUTO = :total , VALOR_TOTAL_NOTA = :total
                where NUMNF = new.NUMNF;
                parcPrim = total;        
            for select codrecebimento, VALOR_PRIM_VIA, via from recebimento where titulo = :titulo and codcliente = :codcli order by via
                into :codrec, :vlrTit, :via
            do begin
                if (vlrParc = 0) then
                begin  
                    vlrParc = vlrTit - parcPrim; 
                end  
                if (via = 1) then 
                    parcResto = parcPrim;        
                if (via > 1) then 
                    parcResto = vlrParc/(numParc-1);     
             
                parcResto = UDF_ROUNDDEC(:parcResto,2);
           
                update recebimento a set valor_resto = :parcResto , VALORTITULO = :vlrTit where codrecebimento = :codRec;
            end 
            
            -- Quando so tem uma parcela o sistema tem que criar a parte nao especial
            Select first 1 r.PARCELAS, (r.VALOR_PRIM_VIA - r.VALOR_RESTO) from RECEBIMENTO r  where titulo = :titulo and codcliente = :codcli order by via
               into :numParcTotal, :vlrParc;
            if (numParcTotal = 1) then 
            begin     
                Insert into RECEBIMENTO (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, DATARECEBIMENTO, CAIXA, CONTADEBITO, 
                    CONTACREDITO, STATUS, VIA, FORMARECEBIMENTO, DATABAIXA, HISTORICO, CODVENDA, CODALMOXARIFADO, CODVENDEDOR, 
                    CODUSUARIO, N_DOCUMENTO, DATASISTEMA, VALORRECEBIDO, JUROS, DESCONTO, PERDA, TROCA, FUNRURAL, VALOR_PRIM_VIA, 
                    VALOR_RESTO, VALORTITULO, OUTRO_CREDITO, OUTRO_DEBITO, PARCELAS, DUP_REC_NF, NF, DP, BL, CODORIGEM, 
                    CODIGO_DE_BARRAS, IMAGE_COD_BARRAS, DV, NOMEARQUIVORETORNO, DATACONSOLIDA, SITUACAOCHEQUE, BANCO, AGENCIA, 
                    CONTA, GERARQREM, DATAGERARQREM, SELECIONOU, DESCONTADO, SITUACAO)  
                    select TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, DATARECEBIMENTO, CAIXA, CONTADEBITO, 
                    CONTACREDITO, STATUS, 2, FORMARECEBIMENTO, DATABAIXA, HISTORICO, CODVENDA, CODALMOXARIFADO, CODVENDEDOR, 
                    CODUSUARIO, N_DOCUMENTO, DATASISTEMA, VALORRECEBIDO, JUROS, DESCONTO, PERDA, TROCA, FUNRURAL, 0, 
                    :vlrParc, VALORTITULO, OUTRO_CREDITO, OUTRO_DEBITO, PARCELAS, DUP_REC_NF, NF, DP, BL, CODORIGEM, 
                    CODIGO_DE_BARRAS, IMAGE_COD_BARRAS, DV, NOMEARQUIVORETORNO, DATACONSOLIDA, SITUACAOCHEQUE, BANCO, AGENCIA, 
                    CONTA, GERARQREM, DATAGERARQREM, SELECIONOU, DESCONTADO, SITUACAO 
                    from RECEBIMENTO WHERE  titulo = :titulo and codcliente = :codcli and via = 1;
                    
                -- Atualiza a primeira via para BL = 1 para sair na nf_fatura     
                UPDATE RECEBIMENTO set BL = 1 where titulo = :titulo and codcliente = :codcli and via = 1;
            end 
        end    
      end 
      /* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx*/
   end 
END
