SET TERM ^ ;
CREATE OR ALTER PROCEDURE MOVIMENTO_BAYER (
    DATAINI date,
    DATAFIM date )
RETURNS (
    NATUREZA char(1),
    FILIAL char(1),
    CFOP varchar(4),
    QUANTIDADE double precision,
    CODPRO varchar(20),
    DATA varchar(8),
    LOTE char(1),
    NUMNF varchar(10),
    CIDADE varchar(60),
    UF varchar(2),
    NOME varchar(60),
    PRECOUNITARIO double precision,
    CPF_CNPJ varchar(18),
    MOV_CANCELADA char(1) )
AS
DECLARE VARIABLE nat integer; 
DECLARE VARIABLE codmov integer;
DECLARE VARIABLE movnf integer;
DECLARE VARIABLE natnf integer;
DECLARE VARIABLE codnf integer;
DECLARE VARIABLE protocolo varchar(20);
DECLARE VARIABLE datamov date;
DECLARE VARIABLE codprod integer;

BEGIN
    lote = '-';
    FILIAL = '1';
    for select m.CODMOVIMENTO, m.CODNATUREZA, md.CFOP, md.QUANTIDADE, p.CODPRO, UDF_ROUNDDEC(md.VLR_BASE, 2),  md.CODPRODUTO from MOVIMENTO m
    inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO
    inner join PRODUTOS p on p.CODPRODUTO = md.CODPRODUTO
    where p.MARCA = 'BAYER' and (m.CODNATUREZA = 3 or m.CODNATUREZA = 4) and not md.BAIXA is null and m.DATAMOVIMENTO between :DATAINI and :DATAFIM
    order by m.CODMOVIMENTO
    into :codmov, :nat, :CFOP, :QUANTIDADE, :CODPRO, :PRECOUNITARIO, :codprod
    do begin
        PRECOUNITARIO = UDF_ROUNDDEC(:PRECOUNITARIO, 2);
        protocolo = '';
        if(nat = 3) then
        begin
            natureza = 'S';
            select first 1 v.DATAVENDA, v.NOTAFISCAL, ec.CIDADE, ec.UF, c.RAZAOSOCIAL, c.CNPJ 
            from VENDA v
            inner join CLIENTES c on c.CODCLIENTE = v.CODCLIENTE
            inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = c.CODCLIENTE
            where v.CODMOVIMENTO = :codmov and ec.TIPOEND = 0
            into :datamov, :NUMNF, :CIDADE, :UF, :NOME, :CPF_CNPJ;
        end
        else if(nat = 4) then
        begin
            natureza = 'E';
            MOV_CANCELADA = 'N';  
            protocolo = '';
            select first 1 c.DATACOMPRA, c.NOTAFISCAL, ef.CIDADE, ef.UF, f.RAZAOSOCIAL, f.CNPJ 
            from COMPRA c
            inner join FORNECEDOR f on c.CODFORNECEDOR = f.CODFORNECEDOR
            inner join ENDERECOFORNECEDOR ef on ef.CODFORNECEDOR = c.CODFORNECEDOR
            where c.CODMOVIMENTO = :codmov and ef.TIPOEND = 0
            into :datamov, :NUMNF, :CIDADE, :UF, :NOME, :CPF_CNPJ;
        end
        
        select first 1 m.CODMOVIMENTO, m.CODNATUREZA 
        from MOVIMENTO m 
        where m.CONTROLE = cast(:codmov as varchar(10))
        into :movnf, natnf;
        
        if (nat = 3) then
        begin
            select first 1 nf.PROTOCOLOCANC, md.CFOP from NOTAFISCAL nf
            inner join VENDA v on v.CODVENDA = nf.CODVENDA
            inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = v.CODMOVIMENTO
            where v.CODMOVIMENTO = :movnf and md.CODPRODUTO = :codprod
            into :protocolo, :CFOP;
            if(protocolo is null) then
                MOV_CANCELADA = 'N';
            else
                MOV_CANCELADA = 'S';
        end
        
        if (not datamov is null) then
        begin
            data = extract(year from datamov) || iif(extract(month from datamov ) < 10, '0' || extract(month from datamov), extract(month from datamov)) || iif( extract(day from datamov) < 10, '0' || extract(day from datamov), extract(day from datamov));
        
        --if ((not protocolo is null ) or (nat = 4)) then
            suspend;
        end
    
    end

END
