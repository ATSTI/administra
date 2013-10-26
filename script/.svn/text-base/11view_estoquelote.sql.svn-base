set term  ^ ;
CREATE OR ALTER PROCEDURE VIEW_ESTOQUELOTE (CODPRODUT INTEGER, LOTE_PESQ VARCHAR(30))
RETURNS
(CODPRO VARCHAR(30), 
CODPRODUTO INTEGER , 
PRODUTO VARCHAR(300),
LOTE VARCHAR(30),
ENTRADA double precision, 
SAIDA double precision,
saldo double precision,
datafabricacao date,
datavencimento date)
AS
begin 
  FOR SELECT DISTINCT P.CODPRO, Md.CODPRODUTO, p.PRODUTO, COALESCE(md.LOTE,0) LOTE
       FROM MOVIMENTO M, MOVIMENTODETALHE MD, PRODUTOS P 
      WHERE M.CODMOVIMENTO = md.CODMOVIMENTO 
        AND P.CODPRODUTO = md.CODPRODUTO
        AND ((MD.codproduto = :CODPRODUT) OR (:CODPRODUT = 0))
        AND ((md.LOTE = :LOTE_PESQ) OR (:LOTE_PESQ = '0'))
      GROUP BY P.CODPRO, Md.CODPRODUTO, p.PRODUTO, COALESCE(md.LOTE,0)
      INTO :codpro, :codproduto, :produto, :lote 
      DO BEGIN 
        For select SUM(m1.QUANTIDADE), m1.DTAFAB, m1.DTAVCTO FROM MOVIMENTODETALHE M1 
         WHERE M1.CODPRODUTO = :CODPRODUTO 
           AND M1.LOTE = :LOTE 
           AND M1.BAIXA = 0
         GROUP BY m1.DTAFAB, m1.DTAVCTO   
          INTO :ENTRADA,:datafabricacao, :datavencimento
        do begin   
          IF (ENTRADA IS NULL) THEN 
            ENTRADA = 0;
          
          select SUM(m2.QUANTIDADE) FROM MOVIMENTODETALHE M2 
           WHERE M2.CODPRODUTO = :CODPRODUTO 
             AND M2.LOTE = :LOTE 
             AND M2.BAIXA = 1
            INTO :SAIDA;
          
          IF (SAIDA IS NULL) THEN 
            SAIDA = 0;  
          
          SALDO = ENTRADA - SAIDA;  
          suspend;
          entrada = 0;
          saida = 0;   
      end    
  end 
end      
