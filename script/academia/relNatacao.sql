SET TERM ^ ;
ALTER PROCEDURE RELNATACAO (
    DATAREL Date,
    DATARELFIM Date,
    GRUPOTURMA Varchar(80), diaSema smallInt)
RETURNS (
    DIASEMANA Varchar(20),
    CODALUNO Integer,
    NOMEALUNO Varchar(80),
    TURMA Varchar(80),
    PRESENCA Char(1),
    CODTURMA Integer,
    COLUNA Smallint,
    diaSem Smallint,
    dia Smallint,
    DATADIA Date,
    CONTALINHA Smallint,
    NUMVAGA Smallint  )
AS
  declare variable CT int;
begin
  contaLinha = 0;
  numVaga = 0;
  coluna = 1;
  CT = 0; -- usado para verificar se é turma diferente

  While (dataRel < (dataRelFim+1)) do
  begin 
    dataDia = dataRel;
    -- Vejo que dia da Semana é
    diaSem = UDF_WEEKDAY(:dataRel) + 1;
    dia = UDF_DAY(:dataRel);
    DiaSemana = '';

    -- Percorre todas as turmas com exceção das que tem o diaSemana = 0(todos os dias)
    -- * For 1
    if (diaSema = diaSem) then 
    begin 
      for select t.codTurma, t.numVaga, t.nomeTurma, t.DIASEMANA 
        from ACADEMIATURMA t where  t.GRUPOTURMA = :GrupoTurma and t.DIASEMANA > 0 
          and t.DIASEMANA = :diaSema
          order by t.DIASEMANA, t.CODTURMA
          into :codTurma, :numVaga, :Turma, :diaSem
      do begin 
      if (diaSem = 2) then -- Segunda
      begin 
        DiaSemana = 'Seg';
      end 
      if (diaSem = 3) then -- Segunda
      begin 
        DiaSemana = 'Ter';
      end 
      if (diaSem = 4) then -- Segunda
      begin 
        DiaSemana = 'Qua';
      end 
      if (diaSem = 5) then -- Segunda
      begin 
        DiaSemana = 'Qui';
      end 
      if (diaSem = 6) then -- Segunda
      begin 
        DiaSemana = 'Sex';
      end 
      if (diaSem = 7) then -- Segunda
      begin 
        DiaSemana = 'Sab';
      end 
      if (diaSem = 1) then -- Segunda
      begin 
        DiaSemana = 'Domingo';
      end 

      -- ** For 2
      for select ta.codCliente, a.nomeCliente
        from ACADEMIATURMAALUNO ta  
        inner join CLIENTES a on a.CODCLIENTE = ta.CODCLIENTE    
        where  ta.CODTURMA = :codTurma order by ta.CODTURMA, ta.CODCLIENTE
        into :codAluno, :NomeAluno
      do begin
        -- Pegando a Presença se dia procurado for menor ou igual ao dia atual
        if (dataRel <= current_date) then 
        begin   
          select af.PRESENTE from ACADEMIAFREQUENCIA af 
            where af.CODTURMA = :codTurma and af.CODCLIENTE = :codAluno 
            and af.DATAFREQUENCIA = :datarel
          into :Presenca;       
          if (:Presenca is null) then 
            Presenca = 'F';
        end 
        else begin -- Se é dia futuro o campo presença fica Nulo
           Presenca = '';
        end  
        if ((CT = 0) or (CT = CodTurma)) Then 
        begin 
          coluna = coluna;
        end 
        else begin  
          coluna = coluna + 1;
          if (coluna = 4) then 
            coluna = 1;
        end
        suspend;
        CT = codTurma; 
        contaLinha = contaLinha + 1;
        Presenca = null;
      end 
      -- ** Fim
      -- Procurando por reposição
      for select af.PRESENTE, a.nomeCliente,a.CODCLIENTE from ACADEMIAFREQUENCIA af 
        inner join CLIENTES a on a.CODCLIENTE = af.CODCLIENTE
        where af.CODTURMA = :codTurma 
        and af.DATAFREQUENCIA = :datarel and af.PRESENTE = 'R'
      into :Presenca, :NomeAluno,:codAluno
      do begin 
        suspend;
        contaLinha = contaLinha + 1;
        Presenca = null;
      end

      While (contaLinha < (numVaga)) do
      begin
        nomeAluno = null;
        codAluno = null;
        presenca = null;
        suspend;    
        contaLinha = contaLinha + 1;
      end 
      contaLinha = 0;
    end
    end 
    -- * Fim
    dataRel = dataRel + 1; 
  end -- Fim do While 
end^
SET TERM ; ^


GRANT EXECUTE
 ON PROCEDURE RELNATACAO TO  SYSDBA;

