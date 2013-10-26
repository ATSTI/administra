set term ^;

CREATE TABLE FATURAMENTO (
    ID_GUIAS                        INTEGER NOT NULL,
    REGISTRO_ANS                    VARCHAR(6),
    NUMERO_GUIA                     VARCHAR(20),
    DATA_EMISSAO                    DATE,
    NUMERO_CARTAO_BENEFICIARIO      VARCHAR(20),
    NOME_PLANO                      VARCHAR(40),
    VALIDADE_CARTEIRA               DATE,
    NOME_BENEFICIARIO               VARCHAR(70),
    NUMERO_CARTAO_NACIONAL          VARCHAR(15),
    CODIGO_OPERADORA                VARCHAR(14),
    NOME_CONTRATADO                 VARCHAR(70),
    CODIGO_CNES                     VARCHAR(7),
    LOGRADOURO                      VARCHAR(3),
    NOME_LOGRADOURO                 VARCHAR(40),
    NUMERO                          VARCHAR(5),
    COMPLEMENTO                     VARCHAR(15),
    MUNICIPIO                       VARCHAR(40),
    SIGLA                           VARCHAR(2),
    CODIGO_MUNICIPIO                VARCHAR(10),
    CEP                             VARCHAR(8),
    NOME_EXECUTANTE                 VARCHAR(70),
    SIGLA_CONSELHO                  VARCHAR(7),
    NUMERO_PROFISSIONAL             VARCHAR(15),
    SIGLA_UNIDADE                   VARCHAR(2),
    CODIGO_ESPECIALIDADE            VARCHAR(5),
    CODIGO_DOENCA                   VARCHAR(1),
    TEMPO_DOENCA                    VARCHAR(1),
    ACIDENTE_TRABALHO               INTEGER,
    CODIGO_CID10_1                  VARCHAR(5),
    CODIGO_CID10_2                  VARCHAR(5),
    CODIGO_CID10_3                  VARCHAR(5),
    CODIGO_CID10_4                  VARCHAR(5),
    DATA_ATENDIMENTO                DATE,
    CODIGO_PROCEDIMENTOS            VARCHAR(2),
    CODIGO_PROCEDIMENTOS_REALIZADO  VARCHAR(10),
    TIPO_CONSULTA                   VARCHAR(1),
    TIPO_SAIDA                      INTEGER,
    OBSERVACAO                      VARCHAR(240),
    CODIGO_PRESTADORA               VARCHAR(14),
    CARATER_SOLICITACAO             VARCHAR(50),
    NUMERO_CARTEIRA                 VARCHAR(20),
    TIPO_GUIA                       VARCHAR(20),
    DATA_AUT                        DATE,
    SENHA                           VARCHAR(10),
    DATA_VAL_SENHA                  DATE,
    NAOPERADORA                     VARCHAR(14),
    NOME_PRESTADOR                  VARCHAR(70),
    NOME_EXECUTANTE1                VARCHAR(70),
    SIGLA_CONSELHO1                 VARCHAR(7),
    NUMERO_PROFISSIONAL1            VARCHAR(15),
    SIGLA_UNIDADE1                  VARCHAR(2),
    CODIGO_ESPECIALIDADE1           VARCHAR(5),
    CODIGO_CNES1                    VARCHAR(7),
    LOGRADOURO1                     VARCHAR(3),
    NOME_LOGRADOURO1                VARCHAR(40),
    NUMERO1                         VARCHAR(5),
    COMPLEMENTO1                    VARCHAR(15),
    MUNICIPIO1                      VARCHAR(40),
    SIGLA1                          VARCHAR(2),
    CODIGO_MUNICIPIO1               VARCHAR(10),
    CEP1                            VARCHAR(8),
    CODCLIENTE                      INTEGER ,
    TIPO_FATURA                     INTEGER ,
    NUMERO_GUIA_PRESTADOR           VARCHAR(20),

    TOTAL_GERAL_GUIA DOUBLE PRECISION

 


);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

///ALTER TABLE FATURAMENTO ADD CONSTRAINT PK_FATURAMENTO_1 PRIMARY KEY (ID_GUIAS);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/
