set term ^ ;
create or alter procedure lancamentos
    -- Usado para mostrar Relatório
    (DTA1 Date,
    DTA2 Date,
    DTAV1 Date,
    DTAV2 Date,
    CLIENTE Integer,
    CLIENTEPROC Integer,
    CONTADEBITO Integer,
    FORNECEDOR Integer,
    CODCCUSTO Integer )
RETURNS (
    COL1 Varchar(200),
    COL2 Varchar(200),
    data1 date,
    data2 date,
    valor double Precision,
    Formato char(1),
    LinhaVazia char(1),
    ordem Varchar(15),
    tipoLinha Varchar(15),
   codCli integer
)
as
 DECLARE VARIABLE TOTAL Double precision;
 declare variable nomeccusto varchar(15);
 declare variable datavencimento DATE;
begin 
  -- 1ª Linha
  -- Código e Nome do Titular/Empresa 
     if (codccusto = 51) then
       nomeccusto = 'ASH';
     if (codccusto = 52) then
       nomeccusto = 'PCMSO';
  For Select 'Cliente : ' ||  RA || '-' || RAZAOSOCIAL, codCliente from Clientes 
    where segmento = 0 and ((codCliente = :cliente) or (:cliente = 0)) and STATUS = 0 
      and grupo_cliente = :nomeccusto order by RA
  into :col1, :codCli
  do begin 
     total = 0;
     --Formato Negrito
     Formato = 'N';
     tipoLinha = 'DADOS';
     -- Imprime
     suspend; 
     -- Título da Linha Totais
     col1 = null;
     tipoLinha = 'TITULO1';
     Suspend;
 
    --Buscando os Totais  
     for SELECT  vence, codConta || '-' || conta,sum(vlrRec), ordem  
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :CodCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO) group by ordem, vence, codConta, conta 
        into : Data2, :col1, :valor, :ordem
     do begin
       Formato = 'S';
       tipoLinha = 'DADOS';
       Total = Total + Valor;
       Suspend; 
     end  
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;
     --Imprime Totais
     col1 = 'TOTAL .... ';
     valor = total; 
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;      
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;

     -- Título da Linha Lançamentos
     col1 = null;
     valor = null;
     tipoLinha = 'TITULO2';
     Formato = 'S';
     Suspend;
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;

 
   
     -- Imprimindo todos os lançamentos
     for SELECT emissao, codConta || '-' || conta, ordem,vlrRec, 
        udf_copy(codDependente, 6, udf_len(codDependente)) || '-' || assocDependente   
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :codCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO) where codConta <> '744' 
         order by ordem, emissao, vence, codConta, conta 
        into :data1, :col2, :ordem,:valor, :col1 
     do begin
       Formato = 'S';
       tipoLinha = 'DADOS2';
       Suspend;        
     end 
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;
     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;

     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = 'TOTAL DESTA EMPRESA';
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     suspend;

     -- Linha Vazia
     data1 = null;
     data2 = null;
     col1 = '     Quantidade de Procedimentos';
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;




     --Buscando os Totais  
     for SELECT '     ' || UDF_STRZERO(cast(count(codConta) as Char(3)),3) || ' - ' || conta,sum(vlrRec), ordem  
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :CodCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO) group by ordem, codConta, conta 
        into  :col1, :valor, :ordem 
     do begin
       Formato = 'S';
       tipoLinha = 'DADOS';
       Total = Total + Valor;
       Suspend; 
     end  
     total = null;
     valor = null;  

     for SELECT distinct vence 
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :CodCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO)
    order by vence, codConta, conta 
        into  :data2
     do begin
       tipoLinha = 'VENCIMENTO';
       col1 = '---';
       col1 = '---';
       Suspend; 
     end  
      data2 = null;
  
  end
end 
