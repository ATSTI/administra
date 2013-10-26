SET TERM ^ ;

CREATE OR ALTER PROCEDURE CONTAS
 (DINi Date, DFim Date) 
RETURNS 
 (  CliCod         Integer, 
    CliNome        VARCHAR(60),
    ForCod         Integer, 
    ForNome        VARCHAR(60),    
    Hist          Varchar(200),
    VlrCredito    Double PRECISION,
    VlrDebito     Double PRECISION,
    VlrTotalCli     Double PRECISION,
    VlrTotal     Double PRECISION)
AS 
BEGIN
    VlrTotal = 0;
    /* Lista os Clientes e Valores Recebidos 
     Fornecedores e Valores Pagos  */ 
    For Select r.CODCLIENTE, c.NOMECLIENTE, c.CODRESPONSAVEL, Sum(R.VALORRECEBIDO) From RECEBIMENTO r 
        inner join CLIENTES c on c.CODCLIENTE = r.CODCLIENTE
        Where r.DATARECEBIMENTO BETWEEN :DIni and :DFim
        Group by    r.CODCLIENTE, c.NOMECLIENTE, c.CODRESPONSAVEL order by 2, 1
        Into :CliCod, :CliNome, :ForCod, :VlrCredito
    do begin 
        VlrDebito = 0;
        VlrTotalCli = 0;        
        if (not ForCod is null) then 
        begin   
            Select f.NOMEFORNECEDOR, Sum(p.VALORRECEBIDO) From PAGAMENTO p 
                inner join FORNECEDOR f on f.CODFORNECEDOR = p.CODFORNECEDOR
                Where p.DATAPAGAMENTO BETWEEN :DIni and :DFim and p.CODFORNECEDOR = :ForCod 
                Group by  f.NOMEFORNECEDOR
                Into :ForNome, :VlrDebito;
        end         
        VlrTotalCli = VlrCredito - VlrDebito;
        VlrTotal = VlrTotal + VlrCredito;
        Suspend; 
        ForNome = null;
    end
    CliCod = null;
    CliNome = Null;
    For Select f.CODFORNECEDOR, f.NOMEFORNECEDOR from FORNECEDOR f where not exists (select c.CODRESPONSAVEL from CLIENTES c 
        where f.CODFORNECEDOR = c.CODRESPONSAVEL) 
        into :ForCod, :ForNome
    do begin     
        Select Sum(p.VALORRECEBIDO) From PAGAMENTO p 
            Where p.DATAPAGAMENTO BETWEEN :DIni and :DFim and p.CODFORNECEDOR = :ForCod 
        Into :VlrDebito;
        VlrTotal = VlrTotal - VlrDebito;
        VlrCredito = 0;
        Suspend; 
    end
    
END^

SET TERM ; ^
