CREATE OR ALTER PROCEDURE MATERIAPRIMA_CUSTO
RETURNS (
    CODPROD integer,
    CODMAT integer,
    CODPRODPRO varchar(30),
    CODPRODMAT varchar(30),
    QTDE double precision,
    CUSTOUNIT double precision,
    CUSTOTOT double precision,
    PRODUTO varchar(300),
    MATPRIMA varchar(300) )
AS
BEGIN
  /* Relatorio com os materiais principais e 
     materias primas com o respectivo preco de custo */
  
  -- Pego todos materiais que tem materia prima cadastrado 
  for select distinct p.codproduto, p.PRODUTO, p.CODPRO 
        from produtos p, MATERIA_PRIMA m 
       where p.CODPRODUTO = m.CODPRODUTO
         and ((p.USA is null) or (p.USA = 'S')) 
        into :codProd, :Produto, :codProdPro
  do begin         
    -- busco a materia prima   
    for SELECT r.CODPRODMP, r.QTDEUSADA, p.PRODUTO, p.CODPRO, p.PRECOMEDIO
          FROM MATERIA_PRIMA r, PRODUTOS p
         WHERE r.CODPRODMP  = p.CODPRODUTO 
           AND r.CODPRODUTO = :codProd 
          INTO :codMat, :qtde, :matPrima, :codProdMat, :custoUnit
    do begin
      custoTot = custoUnit * qtde;  
      suspend;  
    end 
  end           
END