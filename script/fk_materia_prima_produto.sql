alter table MATERIA_PRIMA
add constraint FK_MATERIA_PRIMA_PRODUTO
foreign key (CODPRODUTO) 
references PRODUTOS (CODPRODUTO)
on update cascade  
on delete NO ACTION 