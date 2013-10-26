CREATE OR ALTER PROCEDURE inventario_lanca
 (listaInventario varchar(80)) 
 Returns (msg varchar(100))
AS 
  declare variable codProd integer;
  declare variable codMov integer;  
  declare variable codMovDet integer;  
  declare variable nSerie integer;    
  declare variable dtaInvent date;
  declare variable estoq double precision;
  declare variable qtde double precision;  
  declare variable qtdeMov double precision;  
  declare variable un char(3);
  declare variable GeraMov char(1);
BEGIN
  geraMov = 'N';
  
  -- Faz o Lancamento do Inventario
  For Select i.CODPRODUTO, i.DATAIVENTARIO, i.ESTOQUE_ATUAL, i.QTDE_INVENTARIO, i.UN 
     from INVENTARIO i 
    where i.SITUACAO        = 'A' 
      and i.CODIVENTARIO    = :listaInventario 
      and i.QTDE_INVENTARIO > 0
      and i.ESTOQUE_ATUAL   > i.QTDE_INVENTARIO
  into :codProd, :dtaInvent, :estoq, :qtde, :un
  do begin
    -- Ve se precisa de atualizacao
    if (geraMov = 'N') then 
    begin
      SELECT GEN_ID(GENMOV, 1) FROM RDB$DATABASE
        into :codMov;  

      --necessita fazer uma SAIDA no estoque 
      INSERT INTO MOVIMENTO (
           CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE,      CODNATUREZA, STATUS, 
           CODUSUARIO,   CODVENDEDOR,   CODALMOXARIFADO, DATA_SISTEMA)
         VALUES (
           :codMov,      CURRENT_DATE,  0,               2,           0,       
           1,            1,             0,               CURRENT_DATE );
      geraMov = 'S';     
    end 
    qtdeMov = estoq - qtde;
            
    SELECT GEN_ID(GENMOVDET, 1) FROM RDB$DATABASE
         into :codMovDet;     
            
    INSERT INTO MOVIMENTODETALHE (
         CODDETALHE, CODMOVIMENTO, CODPRODUTO, QUANTIDADE,    
         PRECO,      ICMS,         UN,         QTDE_ALT)  
      VALUES (    
         :codMovDet, :codMov,      :codProd,   :qtdeMov, 
         0,           0,           :un,        0
      );


      SELECT s.ULTIMO_NUMERO FROM SERIES s WHERE SERIE = 'O'
        into :nSerie;
      
      nSerie = nSerie + 1;
      
      EXECUTE PROCEDURE LANCA_ENT_SAIDA (1, :codMov, 0, CURRENT_DATE, CURRENT_DATE,
          1, 0, 'O', :nSerie, null); 
          
      UPDATE SERIES set ULTIMO_NUMERO = :nSerie WHERE SERIE = 'O';      
      
  end

  -- Coloco a Lista com Status = GERADA
  UPDATE INVENTARIO SET SITUACAO = 'G' 
   WHERE CODIVENTARIO      = :listaInventario  
     and ESTOQUE_ATUAL     > QTDE_INVENTARIO
     and SITUACAO          = 'A' ;        

  geraMov = 'N';
  
  -- Faz o Lancamento do Inventario
  For Select i.CODPRODUTO, i.DATAIVENTARIO, i.ESTOQUE_ATUAL, i.QTDE_INVENTARIO, i.UN 
     from INVENTARIO i 
    where i.SITUACAO        = 'A' 
      and i.CODIVENTARIO    = :listaInventario 
      and i.QTDE_INVENTARIO > 0
      and i.ESTOQUE_ATUAL   < i.QTDE_INVENTARIO
  into :codProd, :dtaInvent, :estoq, :qtde, :un
  do begin
    -- Ve se precisa de atualizacao
    if (geraMov = 'N') then 
    begin
      SELECT GEN_ID(GENMOV, 1) FROM RDB$DATABASE
        into :codMov;  

      --necessita fazer uma ENTRADA no estoque 
      INSERT INTO MOVIMENTO (
           CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE,      CODNATUREZA, STATUS, 
           CODUSUARIO,   CODVENDEDOR,   CODALMOXARIFADO, DATA_SISTEMA)
         VALUES (
           :codMov,      CURRENT_DATE,  0,               1,           0,       
           1,            1,             0,               CURRENT_DATE );
      geraMov = 'S';     
    end 
  
    qtdeMov = qtde - estoq;
            
    SELECT GEN_ID(GENMOVDET, 1) FROM RDB$DATABASE
       into :codMovDet;     
            
    INSERT INTO MOVIMENTODETALHE (
        CODDETALHE, CODMOVIMENTO, CODPRODUTO, QUANTIDADE,    
        PRECO,      ICMS,         UN,         QTDE_ALT)  
        VALUES (    
           :codMovDet, :codMov,      :codProd,   :qtdeMov, 
           0,           0,           :un,        0
        );


    SELECT s.ULTIMO_NUMERO FROM SERIES s WHERE SERIE = 'I'
       into :nSerie;
        
    nSerie = nSerie + 1;
        
    EXECUTE PROCEDURE LANCA_ENT_SAIDA (0, :codMov, 0, CURRENT_DATE, CURRENT_DATE,
       1, 0, 'I', :nSerie, null); 
          
    UPDATE SERIES set ULTIMO_NUMERO = :nSerie WHERE SERIE = 'I';  

  end 
  -- coloca a lista com Status = GERADA
  UPDATE INVENTARIO SET SITUACAO = 'G'    
    WHERE CODIVENTARIO      = :listaInventario  
      and SITUACAO          = 'A' ;        
  
  execute procedure CORRIGEESTOQUE(:codProd, :codProd, current_date, current_date , 'N');
END