CREATE OR ALTER PROCEDURE MATERIAPRIMA_CUSTO
RETURNS (
    CODPROD integer,
    CODMAT integer,
    CODPRODPRO varchar(30),
    CODPRODMAT varchar(30),
    QTDE double precision,
    CUSTOUNIT double precision,
    CUSTOTOT double precision,
    PRODUTO varchar(600),
    MATPRIMA varchar(800) )
AS
BEGIN
  /* Relatorio com os materiais principais e 
     materias primas com o respectivo preco de custo */
  
  -- Pego todos materiais que tem materia prima cadastrado 
  for select distinct p.codproduto, p.PRODUTO || ' - ' || coalesce(p.OBS, ''), p.CODPRO 
        from produtos p, MATERIA_PRIMA m 
       where p.CODPRODUTO = m.CODPRODUTO
         and ((p.USA is null) or (p.USA = 'S')) 
        into :codProd, :Produto, :codProdPro
  do begin         
    -- busco a materia prima   
    for SELECT r.CODPRODMP, r.QTDEUSADA, p.PRODUTO || ' - ' || coalesce(p.OBS, ''), p.CODPRO, COALESCE(p.VALORUNITARIOATUAL, coalesce(p.PRECOMEDIO,0)) 
          FROM MATERIA_PRIMA r, PRODUTOS p
         WHERE r.CODPRODMP  = p.CODPRODUTO 
           AND r.CODPRODUTO = :codProd 
          INTO :codMat, :qtde, :matPrima, :codProdMat, :custoUnit
    do begin
      if ( qtde is null) then 
         qtde = 0;
      if (custoUnit is null) then 
        custoUnit = 0; 
      custoTot = custoUnit * qtde;  
      if (custoTot = 0) then
      begin
         SELECT sum(coalesce(r.QTDEUSADA,0) * COALESCE(p.VALORUNITARIOATUAL, coalesce(p.PRECOMEDIO,0)))
          FROM MATERIA_PRIMA r, PRODUTOS p
         WHERE r.CODPRODMP  = p.CODPRODUTO 
           AND r.CODPRODUTO = :codMat
         into :custoUnit;  
         if (custoUnit is null) then 
           custoUnit = 0; 
         if ((custoUnit > 0) and (qtde > 0)) then  
           custoTot = :custoUnit * :qtde;  
      end 
      suspend;  
    end 
  end           
END
