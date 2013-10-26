CREATE DOMAIN T_FISCAL AS char(1) COLLATE WIN1252;

commit;

create table TIPO_FISCAL(
    CODFISCAL T_FISCAL not null primary key,
    DESCRICAO varchar(60) not null);

commit;

INSERT INTO TIPO_FISCAL (CODFISCAL, DESCRICAO) VALUES ('F', 'Físico Contribuinte');
INSERT INTO TIPO_FISCAL (CODFISCAL, DESCRICAO) VALUES ('J', 'Jurídico Contribuinte');
INSERT INTO TIPO_FISCAL (CODFISCAL, DESCRICAO) VALUES ('G', 'Físico Não Contribuinte');
INSERT INTO TIPO_FISCAL (CODFISCAL, DESCRICAO) VALUES ('K', 'Jurídico Não Contribuinte');
INSERT INTO TIPO_FISCAL (CODFISCAL, DESCRICAO) VALUES ('H', 'Físico Simples');
INSERT INTO TIPO_FISCAL (CODFISCAL, DESCRICAO) VALUES ('L', 'Jurídico Simples');

commit;

ALTER TABLE CLIENTES add CODFISCAL T_FISCAL;
alter table CLIENTES add constraint FK_TFISCAL2 foreign key (CODFISCAL)  references TIPO_FISCAL (CODFISCAL) on update NO ACTION on delete NO ACTION;
ALTER TABLE FORNECEDOR add CODFISCAL T_FISCAL;
alter table FORNECEDOR add constraint FK_TFISCAL3 foreign key (CODFISCAL)  references TIPO_FISCAL (CODFISCAL) on update NO ACTION on delete NO ACTION;
ALTER TABLE ESTADO_ICMS add CODFISCAL T_FISCAL;
alter table ESTADO_ICMS add constraint FK_TFISCAL foreign key (CODFISCAL) references TIPO_FISCAL (CODFISCAL) on update NO ACTION on delete NO ACTION;
ALTER TRIGGER CNPJ_REPETIDO INACTIVE;

commit;

update ESTADO_ICMS set CODFISCAL = UDF_LEFT(PESSOA, 1);
update CLIENTES c Set c.codfiscal = 'F' where c.TIPOFIRMA = 0;
update CLIENTES c Set c.codfiscal = 'J' where c.TIPOFIRMA = 1;
update FORNECEDOR c Set c.codfiscal = 'F' where c.TIPOFIRMA = 0;
update FORNECEDOR c Set c.codfiscal = 'J' where c.TIPOFIRMA = 1;
ALTER TRIGGER CNPJ_REPETIDO ACTIVE;

commit;