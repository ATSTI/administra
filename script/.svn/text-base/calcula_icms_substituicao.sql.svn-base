ALTER PROCEDURE CALCULA_ICMS_SUBSTITUICAO (
    NUMERO_NF integer,
    UF varchar(2),
    CFOP varchar(20),
    VALORTOTAL double precision,
    NOTAFISCALVENDA integer,
    SERIE char(20),
    IPI double precision,
    ICMS_DESTACADO_DESC varchar(60),
    ICMS_DESTACADO_DESC2 varchar(100) )
AS
DECLARE VARIABLE ICMS_SUBST DOUBLE PRECISION; 
DECLARE VARIABLE ICMS_SUBST_IND DOUBLE PRECISION;
DECLARE VARIABLE ICMS_SUBST_IND_DESC DOUBLE PRECISION;
DECLARE VARIABLE PICMS_SUBST DOUBLE PRECISION;  -- Por Produto
DECLARE VARIABLE PICMS_SUBST_IND DOUBLE PRECISION; -- Por Produto
DECLARE VARIABLE PICMS_SUBST_IND_DESC DOUBLE PRECISION; -- Por Produto
DECLARE VARIABLE VALOR_SUB DOUBLE PRECISION;
DECLARE VARIABLE VALOR_RESTO DOUBLE PRECISION;
DECLARE VARIABLE VALOR_SUBDesc DOUBLE PRECISION;
DECLARE VARIABLE cormva DOUBLE PRECISION;
DECLARE VARIABLE VlrStr varchar(32);
DECLARE VARIABLE PercStr varchar(32);
DECLARE VARIABLE DataStr varchar(32);
DECLARE VARIABLE ViaStr varchar(2);
DECLARE VARIABLE ICMS_DESTACADO DOUBLE PRECISION;
DECLARE VARIABLE TipoST varchar(10);
Declare variable codMov INTEGER;
DECLARE VARIABLE outros DOUBLE PRECISION;
begin
  TipoST = 'CFOP';
  
  -- Inicio por PRODUTO
  -- Vejo no cadastro da ClassificaoFiscal se tem substituicao tributaria se 
  -- tiver o calculo Ã© por produto e nÃ£o pelo cfop 
  
  select first 1 ven.CODMOVIMENTO from VENDA ven where ven.NOTAFISCAL = :notafiscalVenda and ven.SERIE = :serie
    into :codMov;
  
  /*For Select cf.ICMS_SUBST, cf.ICMS_SUBST_IC, cf.ICMS_SUBST_IND from CLASSIFICACAOFISCAL cf
      inner join produtos prod on prod.CLASSIFIC_FISCAL = cf.CLASSIFICAO
      inner join MOVIMENTODETALHE md on md.CODPRODUTO = prod.CODPRODUTO
    where md.CODMOVIMENTO = :codMov
    into :PICMS_SUBST, :PICMS_SUBST_IND, :PICMS_SUBST_IND_DESC
    do begin
      if (PICMS_SUBST IS NULL) THEN 
        TipoST = 'PRODUTO';   
    end */
  -- fim por PRODUTO   
  --if (TipoST is null) then 
  --  tipoSt = 'CFOP';
  --update parametro set instrucoes = cast(:ipi as varchar(20)) where parametro = 'TESTE';
  if (TipoST = 'CFOP') then   -- Calculado pelo CFOP 
  begin 
    --update parametro set instrucoes = :tipoSt where parametro = 'TESTE';
   /* select first 1 e.DIVERSOS1, e.DIVERSOS2 || e.DIVERSOS3 from EMPRESA e
      into :icms_destacado_desc, :icms_destacado_desc2;  */  
  
  icms_subst = 0;

  SELECT FIRST 1 ei.ICMS_SUBSTRIB, ei.ICMS_SUBSTRIB_IC, ei.ICMS_SUBSTRIB_IND
    FROM ESTADO_ICMS  ei WHERE UF = :UF AND CFOP = :CFOP
    INTO :ICMS_SUBST, :ICMS_SUBST_IND, :ICMS_SUBST_IND_DESC;
    /* Busca os indices da TAB ESTADO_ICMS */
  if (ICMS_SUBST is null) then 
    icms_subst = 0;

  if (ICMS_SUBST > 0) then 
  begin       
      IF ((UF = 'SP') or (UF = 'BA') or (UF = 'MG') or (UF = 'RS') or (UF = 'RJ')) THEN
      BEGIN 
         --update parametro set instrucoes = 'aqui' where parametro = 'TESTE';
         if (icms_subst > 0) then 
           icms_subst = 1 + (icms_subst / 100);

           --update recebimento set historico =  historico || cast(:icms_subst as varchar(20)) where titulo = :notafiscalVenda || '-' || :serie and via = 1;

         if (ICMS_SUBST_IND is null) then 
           icms_subst_ind = 0;
         
         if (icms_subst_ind > 0) then 
           icms_subst_ind = icms_subst_ind / 100;


         if (ICMS_SUBST_IND_DESC is null) then 
           icms_subst_ind_desc = 0;

         if (icms_subst_ind_desc > 0) then 
           icms_subst_ind_desc = icms_subst_ind_desc / 100;
        --CORREÇÃO DO VALOR DO MVA QUANDO FOR PARA FORA DO ESTADO
        if (icms_subst_ind <> icms_subst_ind_desc)  then
         begin
            cormva = ((1-icms_subst_ind_desc)/ (1-icms_subst_ind));
            icms_subst = icms_subst * cormva;
            --icms_subst = UDF_ROUNDDEC((icms_subst-1)*100,2);
            --icms_subst = 1+(icms_subst/100);
         end        
           
          update parametro set instrucoes = cast(:VALORTOTAL as varchar(20)) where parametro = 'TESTE';

         VALOR_SUB = (:VALORTOTAL ) * UDF_ROUNDDEC(icms_subst, 4); 
         VALOR_SUBDesc = (VALORTOTAL - ipi) * icms_subst_ind_desc; 
         ICMS_SUBST = (Valor_SUB  * icms_subst_ind) - Valor_SubDesc;
         VALORTOTAL = VALORTOTAL + ICMS_SUBST;

         if (icms_subst > 0) then 
         begin 
         
           --update recebimento set historico =  historico || cast(:icms_subst as varchar(20))  || '1' where titulo = :notafiscalVenda || '-' || :serie and via = 1;
           /* Não usa mais, nao altera mais o campo Fatura na NF
           fatura = '';  
           For select UDF_DAY(dataVencimento) || '/' || UDF_MONTH(dataVencimento) || '/' || UDF_YEAR(dataVencimento)
                , via, valor_resto from RECEBIMENTO where  titulo = :notafiscalVenda || '-' || :serie
             into :DataStr, :ViaStr, :Valor_resto
             do begin
                fatura = fatura || :notafiscalVenda || '/' || viaStr || ' - ' || DataStr || ' - ';
                select * from FU_FORMATAR((:valor_resto + :icms_subst), '########.##0,00')
                  into :VlrStr;
                fatura = fatura || vlrStr;
             end  
           */
            update recebimento set valst = :icms_subst where titulo = :notafiscalVenda || '-' || :serie and via = 1;

           -- Pego os outros valores na NF para somar ao total 
           select sum(n.OUTRAS_DESP + n.VALOR_FRETE + n.VALOR_SEGURO) from notafiscal n where numnf = :numero_nf
             into :Outros;   
           valortotal = valortotal + Outros;
           
           UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :VALOR_SUB, VALOR_ICMS_SUBST = :ICMS_SUBST, 
              VALOR_TOTAL_NOTA = :VALORTOTAL --, CORPONF5 = :ICMS_DESTACADO_DESC, CORPONF6 = :ICMS_DESTACADO_DESC2
            
             where NUMNF = :NUMERO_NF;
         end
         else begin  
           --UPDATE NOTAFISCAL SET     VALOR_TOTAL_NOTA = :VALORTOTAL, CORPONF5 = :ICMS_DESTACADO_DESC, CORPONF6 = :ICMS_DESTACADO_DESC2
           -- where NUMNF = :NUMERO_NF;
         end  
         
       END
       ELSE BEGIN -- Fora de SP
         
       end
  end 
  end -- Fim do Calculo pelo CFOP
end