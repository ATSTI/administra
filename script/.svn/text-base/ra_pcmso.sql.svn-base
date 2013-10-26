create or alter procedure ra_pcmso(RAZAOSOCIAL VARCHAR(80))
returns(
   novoRa Varchar(15)
)
as
  declare variable ra varchar(15);
  declare variable novo varchar(15);
  declare variable teste char(1);
  declare variable raAtual integer;
begin 
  teste = 'N';
  -- Busca o último RA usado 
  select  max(cast(ra as integer)) from CLIENTES where grupo_cliente = 'PCMSO'
   and razaosocial = :RAZAOSOCIAL
  into :raAtual;
  ra = cast(raAtual as Varchar(15));
  if (udf_len(ra) > 5) then 
    teste = 'S';
  
  if (teste = 'S') then  -- Já possui funcionarios
  begin 
    novo = udf_right(ra,4); -- Pega os últimos 4 digitos
    raAtual = cast(novo as integer) + 1; -- Soma + 1
    novo = cast(raAtual as Varchar(4));  
    novoRa = udf_left(ra,5) || udf_strzero(novo,4); --Junta o Código da Empresa com o Funcionario.
  end 
  else begin 
    novo = '1'; 
    novoRa = udf_left(ra,5) || udf_strzero(novo,4);
  end 
  if (novoRa is null) then
    novoRa = '0';
  suspend;
end
