Set term ^ ;
ALTER PROCEDURE  RELNATACAOIMPRIME3( DATAREL                          DATE
                                   , DATARELFIM                       DATE
                                   , GRUPOTURMA                       VARCHAR( 80 )
                                   , dia SMALLINT )
RETURNS ( DIASEMANA                        VARCHAR( 20 )
        , CODALUNO                         INTEGER
        , NOMEALUNO                        VARCHAR( 80 )
        , TURMA                            VARCHAR( 80 )
        , PRESENCA                         CHAR( 1 )
        , CODTURMA                         INTEGER
        , COLUNA                           SMALLINT
        , DIASEM                           SMALLINT
        , DATADIA                          DATE
        , PRIMDIA                          CHAR( 1 )
        , SEGUDIA                          CHAR( 1 )
        , TERCDIA                          CHAR( 1 )
        , QUARDIA                          CHAR( 1 )
        , QUINDIA                          CHAR( 1 )
        , DIA1                          SMALLINT
        , DIA2                          SMALLINT
        , DIA3                          SMALLINT
        , DIA4                          SMALLINT
        , DIA5                          SMALLINT

        , CONTALINHA                       SMALLINT
        , NumVaga smallint )
AS
  declare variable CT int;
  declare variable diaa smallint;
  declare variable dias smallint;
  declare variable nv smallint;
  declare variable vazio char(1);
begin
  diaa = 1;
  contaLinha = 0;
  numVaga = 0;
  coluna = 1;
  PrimDia = null;
  SeguDia = null;
  TercDia = null;
  quarDia = null;
  quindia = null; 

  --primDiaSemana = UDF_WEEKDAY(UDF_MONTHSTART(:dataRel)) + 1;
  CT = 0; -- usado para verificar se é turma diferente
  -- * While 1
  
  /*While (diaa < 8) do -- Percorre os Sete dias da Semana 
  begin */
    diaa = dia;  
    diaSem = diaa;
    contalinha = 0;
    numVaga = 0;
    nv = 0;
    for Select t.codTurma, t.NOMETURMA from ACADEMIATURMA t
       where t.GRUPOTURMA = :grupoTurma and t.DIASEMANA = :diaa
       order by t.CODTURMA 
       into :codTurma, :Turma
    do begin 
      vazio = 's';
      contaLinha = contaLinha  + 1;
      for Select ta.CODCLIENTE FROM ACADEMIATURMAALUNO ta 
         where ta.CODTURMA = :CODTURMA
         into :codAluno
      do begin        
      -- Limpo a variável para aluno novo
      PrimDia = null;
      SeguDia = null;
      TercDia = null;
      quarDia = null;
      quindia = null;
      ct = 0;
      nv = nv + 1;
      for SELECT CODALUNO, CODTURMA, DiaSem, diaSemana, NomeAluno
        , Presenca, Coluna, DataDia, dia
        FROM RELNATACAO(:dataRel, :dataRelFim, :grupoTurma, :diaSem)
        Where CodTurma = :codTurma and codAluno = :codAluno 
        order by diaSem, codTurma, codAluno, dataDia
      into :codAluno, :codTurma, :diaSem, :diaSemana, :nomeAluno
         , :Presenca, :Coluna, :DataDia, :dias
      do begin 
        ct = ct + 1;
        if (ct = 1) then  
        begin 
          primDia = Presenca; 
          dia1 = dias;
        end 
        if (ct = 2) then  
        begin 
          seguDia = Presenca;
          dia2 = dias;
        end 
        if (ct = 3) then  
        begin 
          tercDia = Presenca;
          dia3 = dias;
        end 
        if (ct = 4) then  
        begin 
          quarDia = Presenca;
          dia4 = dias;
        end 
        if (ct = 5) then  
        begin 
          quinDia = Presenca; 
          dia5 = dias;
        end 
      end
      /*select af.PRESENTE from ACADEMIAFREQUENCIA af 
        where af.CODTURMA = :codTurma and af.CODCLIENTE = :codAluno 
        and af.DATAFREQUENCIA = :datarel
          into :Presenca;   */
      numVaga = nv;
      ct = 0;
      diaSem = diaa;
      vazio = 'n';
      suspend; -- Imprime cada Aluno 
     end 
     if (vazio = 's') then 
     begin
      for SELECT CODALUNO, CODTURMA, DiaSem, diaSemana, NomeAluno
        , Presenca, Coluna, DataDia, dia
        FROM RELNATACAO(:dataRel, :dataRelFim, :grupoTurma, :diaSem)
        Where CodTurma = :codTurma
        order by diaSem, codTurma, codAluno, dataDia
      into :codAluno, :codTurma, :diaSem, :diaSemana, :nomeAluno
         , :Presenca, :Coluna, :DataDia, :dias
      do begin 
        ct = ct + 1;
        if (ct = 1) then  
        begin 
          primDia = Presenca; 
          dia1 = dias;
        end 
        if (ct = 2) then  
        begin 
          seguDia = Presenca;
          dia2 = dias;
        end 
        if (ct = 3) then  
        begin 
          tercDia = Presenca;
          dia3 = dias;
        end 
        if (ct = 4) then  
        begin 
          quarDia = Presenca;
          dia4 = dias;
        end 
        if (ct = 5) then  
        begin 
          quinDia = Presenca; 
          dia5 = dias;
        end 
      end 
       suspend;
     end 
    end -- fim Turma
    --diaa = diaa + 1;
  --end -- * Fim do While 1
end