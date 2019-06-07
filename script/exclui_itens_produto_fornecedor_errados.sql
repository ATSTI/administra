delete from produto_fornecedor pf 
where not exists (select codproduto from produtos p where pf.codproduto = p.codproduto) order by pf.codproduto
