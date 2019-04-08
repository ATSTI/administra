CREATE OR ALTER PROCEDURE MATERIA_PRIMA_ITENS(codMov integer, pUso varchar(20))
RETURNS 
 (CODPRODMP INTEGER, 
  USAPRECO VARCHAR(20),
  TOTAL DOUBLE PRECISION,
  qt1 DOUBLE PRECISION,
  qt2 DOUBLE PRECISION,
  usado DOUBLE PRECISION,
  qt DOUBLE PRECISION)
AS 
DECLARE VARIABLE sub_prod integer; 
DECLARE VARIABLE qtde double PRECISION; 
BEGIN
  -- versao 2.0.0.20
  for select  mt.CODPRODMP, mt.USAPRECO,
      sum(mt.qtdeusada * movd.QUANTIDADE), mt.qtdeusada , movd.QUANTIDADE
    from MOVIMENTODETALHE movd 
    left outer join MATERIA_PRIMA mt on movd.CODPRODUTO = mt.CODPRODUTO 
   where movd.CODMOVIMENTO = :codMov
     and  mt.TIPOUSO = :PUSO
   group by mt.CODPRODMP, mt.USAPRECO, mt.qtdeusada , movd.QUANTIDADE
   into :codPRodMp, :usaPreco, :total , :usado, :qt
   do begin 
     qt1 = total;
     suspend;
     -- ve se existe subproduto com materiaprima 
     for select  mt.CODPRODMP, mt.USAPRECO,
        (mt.qtdeusada * :qt1), mt.qtdeusada , :qt1
       from MOVIMENTODETALHE movd 
       left outer join MATERIA_PRIMA mt on movd.CODPRODUTO = mt.CODPRODUTO 
      where mt.CODPRODUTO = :codProdMP
        and  mt.TIPOUSO = :PUSO
      group by mt.CODPRODMP, mt.USAPRECO, mt.qtdeusada , :qtde
      into :codPRodMp, :usaPreco, :total , :usado, :qt
      do begin 
        qt2 = total;
        suspend;
        -- ve se existe subproduto com materiaprima 
        for select  mt.CODPRODMP, mt.USAPRECO,
          (mt.qtdeusada * :qt2), mt.qtdeusada , :qt2
          from MOVIMENTODETALHE movd 
          left outer join MATERIA_PRIMA mt on movd.CODPRODUTO = mt.CODPRODUTO 
         where mt.CODPRODUTO = :codProdMP
           and  mt.TIPOUSO = :PUSO
         group by mt.CODPRODMP, mt.USAPRECO, mt.qtdeusada , :qtde
         into :codPRodMp, :usaPreco, :total , :usado, :qt
        do begin 
          suspend;
        end      
      end 
   end 
END
