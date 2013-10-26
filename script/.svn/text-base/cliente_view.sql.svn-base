CREATE VIEW CLIENTE_VIEW ( 
  CODCLIENTE , 
  NOMECLIENTE, 
  RAZAOSOCIAL, 
  TIPOFIRMA  ,
  CNPJ       ,
  INSCESTADUAL,
  STATUS      ,   
  ENDERECO    ,
  NUMERO      ,
  FONE        ,
  FONE1       ,
  FONE2       ,
  BAIRRO      ,
  COD_IBGE    ,
  CIDADE      ,
  UF          ,
  COMPLEMENTO ,
  DADOSADICIONAIS,
  EMAIL          ,
  PAIS           ,
  TIPO_ENDERECO  
)
AS
select c.CODCLIENTE, c.NOMECLIENTE, c.RAZAOSOCIAL, c.TIPOFIRMA, 
  c.CNPJ, c.INSCESTADUAL, c.STATUS, 
  ed.LOGRADOURO, ed.NUMERO, (ed.DDD || '-' || ed.TELEFONE) FONE1, (ed.DDD1 || '-' || ed.TELEFONE1) FONE2, 
  (ed.DDD2 || '-' || ed.TELEFONE2) FONE3, ed.BAIRRO, ed.CD_IBGE, ed.CIDADE, ed.UF, 
  ed.COMPLEMENTO, ed.DADOSADICIONAIS, 
  ed.E_MAIL, ed.PAIS, ed.TIPOEND  
  from clientes c , ENDERECOCLIENTE ed 
 where c.CODCLIENTE = ed.CODCLIENTE;

