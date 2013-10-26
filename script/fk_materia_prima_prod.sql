alter table MATERIA_PRIMA
add constraint FK_MATERIA_PRIMA_PROD
foreign key (CODPRODMP) 
references PRODUTOS (CODPRODUTO)
on update cascade  
on delete NO ACTION 