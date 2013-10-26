SET TERM ^ ;

CREATE OR ALTER PROCEDURE ATUALIZA_GENERATORS
AS
DECLARE VARIABLE SQL VARCHAR(100);
DECLARE VARIABLE I INTEGER;
begin

  select Max(CODRECEBIMENTO) FROM RECEBIMENTO
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR COD_AREC TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(CODBANCO) FROM BANCO
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_BANCO TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;



  select Max(CODCLIENTE) FROM CLIENTES
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_CLI TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(COD_VEICULO) FROM veiculo
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_CLI_VEI TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(CODATUALIZA) FROM ATUALIZA
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_ATUALIZA TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(CODENDERECO) FROM enderecocliente
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_CLI_END TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;



  select Max(COD_REPRCLI) FROM repr_cliente
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_CLI_REP TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(COD_CODIGO) FROM CODIGOS
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_CODTERC TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(COD_REPRFOR) FROM repr_fornecedor
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_FOR_REP TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(CODLOTE) FROM LOTES
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_LOTE TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;



  select Max(COD_USO) FROM uso_produto
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_USOPROD TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(CODVENDA) FROM VENDA
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GENVENDA TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;



  select Max(CODMOVIMENTO) FROM MOVIMENTO
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GENMOV TO ' || CAST(I as VARCHAR( 10));
    EXECUTE STATEMENT SQL;



  select Max(CODDETALHE) FROM MOVIMENTODETALHE
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GENMOVDET TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;



  select Max(CODFORNECEDOR) FROM FORNECEDOR
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_FOR TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;


  select Max(CODENDERECO) FROM ENDERECOFORNECEDOR
  into :i;
   if (i is null) then
    i = 0;

    SQL='SET GENERATOR GEN_FOR_END TO ' || CAST(I as VARCHAR( 10 ));
    EXECUTE STATEMENT SQL;

  suspend;
end
