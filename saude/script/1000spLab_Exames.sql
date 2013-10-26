SET TERM ^ ;

CREATE OR ALTER PROCEDURE LAB_EXAMES (dtexame DATE , codcli INTEGER)  

returns (
    datacoleta date,
    tipoexame varchar(100),
    nomecliente varchar(50),
    nome_reprfor varchar(60),
    resultado1 varchar(30),
    obs varchar(200),
    desc1 varchar(80),
    desc2 varchar(80),
    desc3 varchar(80),
    desc4 varchar(80),
    desc5 varchar(80),
    desc6 varchar(80)

     )
as
declare variable DESCR varchar(80);
BEGIN
  FOR
     Select DESCRICAO,DESC1,DESC2,DESC3,DESC4,DESC5,DESC6 from DADOS_COMBOS where USO = 'EXAMES'  
   INTO :DESCR ,:DESC1 , :DESC2, :DESC3, :DESC4, :DESC5, :DESC6
   DO
BEGIN
   
  FOR
    select lab.dataentregamaterial, lab.tipoexame, 'Nome : ' || cli.nomecliente, 'Dr : ' || rep.nome_reprfor, resu.resultado1,'Obs : ' || resu.obs
    from repr_fornecedor rep
       inner join labexame lab on (rep.cod_reprfor = lab.medicosolicitante)
       left outer join labexameresultado resu on (lab.codexame = resu.codexame)
       inner join clientes cli on (lab.codcliente = cli.codcliente)
    where 
       (
          (lab.situacao = 'FINALIZADO')
       and 
          (tipoexame = :DESCR )
       and 
          (lab.codcliente = :codcli)
       and
          (lab.dataentregamaterial = :dtexame) 
       )
    INTO :DATACOLETA,
         :TIPOEXAME,
         :NOMECLIENTE,
         :NOME_REPRFOR,
         :RESULTADO1,
         :OBS
  DO
  BEGIN
    SUSPEND;
  END
END
END^
