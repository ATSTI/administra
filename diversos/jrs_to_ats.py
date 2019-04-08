# -*- encoding: utf-8 -*-

import fdb
import datetime

con = fdb.connect(dsn='/home/publico/bd/INTEGRAW.FDB', user='sysdba', password='xl04pq21')
con_2 = fdb.connect(dsn='/home/publico/bd/sge_macenas_matriz.fdb', user='sysdba', password='xl04pq21')

# Abre conexao com o banco da Sao Pedro Treino:
cur = con.cursor()

# Abre conexao com o banco da Sao Pedro Fiscal:
cur2 = con_2.cursor()


######## IMPORTAR CLIENTES

# Execute the SELECT statement:
cur.execute("select r.CODCLI as codcli, r.FANTASIA, r.FIRMA, r.CONTATO, r.TPFJ,\
    r.CNPJ, r.INSC, 0, 0, Null,\
    r.DTABERT, 1, 1 as Status, Null,\
    1 from CADCLI r  ")
 
#import pudb; pu.db

for row in cur.fetchall():
    cadastra = 0
    print 'Código : %s , Nome : %s.' % (row[0], row[1])
    # ver se existe o cliente no BD 2
    sql = 'SELECT codcliente from clientes where codcliente = %s' % (str(row[0]))
    cur2.execute(sql)   
    if not len(cur2.fetchall()):
        cadastra += 1
        contato = ''
        if row[3]:
            contato = row[3]
        cnpj = ''
        if row[5]:
            cnpj = row[5]
        ie = ''    
        if row[6]:
            ie = row[6]
        limite = 0.0    
        if row[9]:
            limite = row[9]
        banco = 1
        if row[13]:
            banco = row[13]
        if row[4] == 'J':
            tipo = 1
            tipofiscal = 'J'
        else:
            tipo = 0 # pessoa fisica
            tipofiscal = '9'
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])
        
        insere = 'insert into clientes (\
        CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, CONTATO, TIPOFIRMA,\
        CNPJ, INSCESTADUAL, SEGMENTO, REGIAO, LIMITECREDITO,\
        DATACADASTRO, CODUSUARIO, STATUS, CODBANCO, CODFISCAL)\
        values (%s, \'%s\', \'%s\', \'%s\', %s,\
        \'%s\', \'%s\', %s, %s, %s,\
        \'%s\', %s, %s, %s, \'%s\')'\
        % (str(row[0]), row[1], row[2], contato, tipo,\
        cnpj, ie, row[7], row[8], limite,\
        '01.01.2015', row[11], row[12], banco, tipofiscal)
        cur2.execute(insere)  

if cadastra > 0:
    print ' Cadastrado %s clientes' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit()  



                
######## FIM DO IMPORTA ENDEREÇOCLIENTE

######## IMPORTAR ENDERECOCLIENTES

# Execute the SELECT statement:
cur.execute ("select r.CODCLI as codcli, r.ENDER, r.BAIRRO, r.COMPLEND, r.CID,\
    r.EST, r.CEP, r.FONE, r.FONE2,\
    r.FAX, r.EMAIL, r.DDD, r.DDD2, r.DDDFAX, 'Brasil' as PAIS \
    from cadcli r ")
 


for row in cur.fetchall():
    cadastra = 0
    print 'Código : %s , Nome : %s.' % (row[0], row[1])
    # ver se existe o cliente no BD 2
    sql = 'SELECT codcliente from ENDERECOCLIENTE where codcliente = %s' % (str(row[0]))
    cur2.execute(sql)   
    if not len(cur2.fetchall()):
        cadastra += 1
        insere = 'insert into ENDERECOCLIENTE (CODCLIENTE, TIPOEND, PAIS'
        ins_vl = ') VALUES(' + str(row[0]) + ', 0, \'Brasil\''
            	
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])    
        
        if row[1]:
            insere += ', LOGRADOURO'
            ender = row[1]
            rua = ender
            numero = ender.find(",")
            if row[0] == 50:
                import pudb; pu.db
            if numero > 0:
                rua = ender[:numero]
                numero = ender[numero+1:len(ender)]
                ins_vl += (', \'%s\'') %(rua)
                if len(numero):
                    insere += ', NUMERO'
                    ins_vl += (', \'%s\'') %(numero)
            else:
                ins_vl += (', \'%s\'') %(rua)
            
        if row[2]:
            insere += ', BAIRRO'
            ins_vl += (', \'%s\'') %(row[2])
             
        if row[3]:
            insere += ', COMPLEMENTO'
            ins_vl += (', \'%s\'') %(row[3])
        
        if row[4]:
            insere += ', CIDADE'
            ins_vl += (', \'%s\'') %(row[4])
        
        if row[5]:
            insere += ', UF'
            ins_vl += (', \'%s\'') %(row[5])

        if row[6]:
            insere += ', CEP'
            ins_vl += (', \'%s\'') %(row[6])

        if row[7]:
            insere += ', TELEFONE'
            ins_vl += (', \'%s\'') %(row[7][:10])

        if row[8]:
            insere += ', TELEFONE1'
            ins_vl += (', \'%s\'') %(row[8][:10])

        if row[9]:
            insere += ', TELEFONE2'
            ins_vl += (', \'%s\'') %(row[9][:10])
            
        if row[10]:
            insere += ', E_MAIL'
            ins_vl += (', \'%s\'') %(row[10])

        if row[11]:
            insere += ', DDD'
            ins_vl += (', \'%s\'') %(row[11])

        if row[12]:
            insere += ', DDD1'
            ins_vl += (', \'%s\'') %(row[12])

        if row[13]:
            insere += ', DDD2'
            ins_vl += (', \'%s\'') %(row[13])
            
        """            
           , , TIPOEND, DDD, DDD1, DDD2, PAIS)\
           values (%s, \'%s\', \'%s\', \'%s\', \'%s\',\
           \'%s\', \'%s\', \'%s\', \'%s\',\
           \'%s\', \'%s\',0, \'%s\', \'%s\',\'%s\',\'%s\')'\
           % (row[0], ender, bairro, compl, cid, \
           uf,cep, fone, fone1, \
           fax, email, ddd,ddd2, dddfax,row[14])
        """
        insere = insere + ins_vl + ')'   
        cur2.execute(insere)  

if cadastra > 0:
    print ' Endereco Cadastrado %s clientes' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit()


#FIM IMPORTA ENDERECOCLIENTE

######## IMPORTAR GRUPO / SUBGRUPO
cur.execute("select codgru, descr from cadgru")
for row in cur.fetchall():
    cadastra = 0
    sql = 'SELECT cod_familia from familiaprodutos where cod_familia = %s' % (str(row[0]))
    cur2.execute(sql)   
    if not len(cur2.fetchall()):
        insere = 'INSERT INTO FAMILIAPRODUTOS (COD_FAMILIA, DESCFAMILIA) ' \
            'values ( %s, \'%s\')' %(str(row[0]), row[1])
        cur2.execute(insere)
con_2.commit()
print 'Feito Grupo.'


cur.execute("select distinct p.codfam, p.codgru, g.DESCR " \
   "from cadpro p , cadfam g where g.CODFAM = p.CODFAM order by p.codgru")
for row in cur.fetchall():
    cadastra = 0
    sql = 'SELECT cod_categoria from categoriaproduto where cod_categoria = %s' % (str(row[0]))
    cur2.execute(sql)   
    if not len(cur2.fetchall()):
        print 'Inserindo %s, grupo: %s.' %(row[2], row[1])
        insere = 'INSERT INTO CATEGORIAPRODUTO (COD_CATEGORIA, COD_FAMILIA, DESCCATEGORIA) ' \
            'values ( %s, %s, \'%s\')' %(str(row[0]), str(row[1]), row[2])
        cur2.execute(insere)
con_2.commit()
print 'Feito Sub-Grupo.'

######## IMPORTAR PRODUTOS 
cur.execute("select p.CODP, p.CODUNI, p.DESCR, p.VRCUSTO, p.CODREF,\
     p.VRVENDA, ipi.CLASIPI as NCM, p.VRCUSTO_COMPRA , cg.DESCR, cf.DESCR \
      from CADPRO p , CADIPI ipi, CADGRU cg, CADFAM cf \
     where p.CODIPI = ipi.CODIPI \
       and p.CODGRU = cg.CODGRU \
       and p.CODFAM = cf.CODFAM \
     ")

for row in cur.fetchall():
    cadastra = 0
    sql = 'SELECT codproduto from produtos where codproduto = %s' % (str(row[0]))
    cur2.execute(sql)
    #import pudb;pu.db
    if not len(cur2.fetchall()):
        cadastra += 1
        vlr_custo = '0'
        if row[7]:
            vlr_custo = str(row[7])
        insere = 'INSERT INTO PRODUTOS (CODPRODUTO, UNIDADEMEDIDA, PRODUTO, PRECOMEDIO, CODPRO,\
           TIPOPRECOVENDA, ORIGEM, VALOR_PRAZO, NCM, VALORUNITARIOATUAL) VALUES ( \
           %s, \'%s\', \'%s\', %s, \'%s\', \
           \'U\', 0, %s, \'%s\', %s)' \
           % (row[0], row[1], row[2], str(row[3]), row[4], \
           str(row[5]), row[6], vlr_custo)
        print insere 
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])
        cur2.execute(insere)
    else:
        insere = 'UPDATE PRODUTOS SET MARGEM = 100, FAMILIA = \'%s\', \
           CATEGORIA = \'%s\' WHERE CODPRODUTO = %s' \
           % (row[8], row[9], row[0])
        print insere 
        print ' Atualizando : %s - %s' % (str(row[0]), row[1])
        cur2.execute(insere)

if cadastra > 0:
    print ' Cadastrado %s produtos.' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit() 

######## IMPORTAR FORNECEDOR

"""
# Execute the SELECT statement:
cur.execute("select r.CODFORNECEDOR, r.NOMEFORNECEDOR, r.RAZAOSOCIAL, r.CONTATO, r.TIPOFIRMA,\
    r.CNPJ, r.INSCESTADUAL, r.SEGMENTO, r.REGIAO, r.LIMITECREDITO,\
    r.DATACADASTRO, r.CODUSUARIO, r.STATUS, r.PRAZOPAGAMENTO \
    from fornecedor r where r.CODFORNECEDOR > 1135")
 
#import pudb; pu.db

for row in cur.fetchall():
    cadastra = 0
    print 'Código : %s , Nome : %s.' % (row[0], row[1])
    # ver se existe o cliente no BD 2
    sql = 'SELECT codfornecedor from fornecedor where codfornecedor = %s' % (str(row[0]))
    cur2.execute(sql)   
    if not len(cur2.fetchall()):
        cadastra += 1
        contato = ''
        if row[3]:
            contato = row[3]
        cnpj = ''
        if row[5]:
            cnpj = row[5]
        ie = ''    
        if row[6]:
            ie = row[6]
        limite = 0.0    
        if row[9]:
            limite = row[9]
       
            	
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])
        
        insere = 'insert into fornecedor (\
        CODFORNECEDOR, NOMEFORNECEDOR, RAZAOSOCIAL, CONTATO, TIPOFIRMA,\
        CNPJ, INSCESTADUAL, SEGMENTO, REGIAO, LIMITECREDITO,\
        DATACADASTRO, CODUSUARIO, STATUS)\
        values (%s, \'%s\', \'%s\', \'%s\', %s,\
        \'%s\', \'%s\', %s, %s, %s,\
        \'%s\', %s, %s)' \
        % (str(row[0]), row[1], row[2], contato, row[4],\
        cnpj, ie, row[7], row[8], limite,\
        str('01.01.2015'), row[11], row[12])
        cur2.execute(insere)  

if cadastra > 0:
    print ' Cadastrado %s fornecedor' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit()                  
######## FIM DO IMPORTA FORNECEDORES


######## IMPORTAR MOVIMENTO
cur.execute("select CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE, CODNATUREZA, STATUS, CODUSUARIO \
        from movimento where codmovimento > 52579  AND CODNATUREZA IN (4, 7)")  

for row in cur.fetchall():
    cadastra = 0
    sql = 'SELECT codmovimento from movimento where codmovimento = %s' % (str(row[0]))
    cur2.execute(sql)   
    #import pudb;pu.db
    if not len(cur2.fetchall()):
        cadastra += 1
        data_t = row[1]
        #data_ini = str(data_t.month).zfill(2) + '.' + str(data_t.day).zfill(2) + '.' + str(data_t.year) 
        insere = 'INSERT INTO MOVIMENTO (CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE, CODNATUREZA, STATUS, CODUSUARIO) \
           VALUES (%s, \'%s\', %s, %s, %s, %s )'\
           % (row[0], data_t, row[2], row[3], row[4], row[5])
        print insere 
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])
        cur2.execute(insere)  

if cadastra > 0:
    print ' Cadastrado %s movimentos.' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit() 

######## FIM DO IMPORTA MOVIMENTO


######## IMPORTAR MOVIMENTODETALHE
cur.execute("select md.CODDETALHE, md.CODMOVIMENTO, md.CODPRODUTO, coalesce(md.QUANTIDADE,0), md.baixa, coalesce(md.PRECO,0) \
        from movimento m, movimentodetalhe md where md.codmovimento = m.codmovimento \
        and md.codmovimento > 52579 and m.codnatureza in (4,7) and (md.codproduto is not null) and (baixa is not null)")  

for row in cur.fetchall():
    cadastra = 0
    sql = 'SELECT coddetalhe from movimentodetalhe where coddetalhe = %s' % (str(row[0]))
    cur2.execute(sql)   
    #import pudb;pu.db
    if not len(cur2.fetchall()):
        cadastra += 1
        data_t = row[1]
        #data_ini = str(data_t.month).zfill(2) + '.' + str(data_t.day).zfill(2) + '.' + str(data_t.year) 
        insere = 'INSERT INTO MOVIMENTODETALHE (CODDETALHE, CODMOVIMENTO, CODPRODUTO, QUANTIDADE, BAIXA, PRECO) \
           VALUES (%s, %s, %s, %s, \'%s\',%s)'\
           % (row[0], row[1], row[2], row[3], row[4], row[5])
        print insere 
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])
        cur2.execute(insere)  
        total = cadastra % 500
        if total == 0:
            con_2.commit()

if cadastra > 0:
    print ' Cadastrado %s movimento detalhe.' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit() 

######## FIM DO IMPORTA MOVIMENTODETALHE

print 'FINALIZADO A IMPORTACAO.'


######## IMPORTAR COMPRAS
cur.execute("select c.CODCOMPRA, c.CODMOVIMENTO, c.CODFORNECEDOR, c.DATACOMPRA, c.DATAVENCIMENTO, c.STATUS, c.NOTAFISCAL \
        from compra c, movimento m where m.codmovimento = c.codmovimento and c.codmovimento > 52579  AND m.CODNATUREZA IN (4, 7)")  

for row in cur.fetchall():
    cadastra = 0
    sql = 'SELECT codcompra from compra where codcompra = %s' % (str(row[0]))
    cur2.execute(sql)   
    #import pudb;pu.db
    if not len(cur2.fetchall()):
        cadastra += 1
        data_t = row[3]
        #data_ini = str(data_t.month).zfill(2) + '.' + str(data_t.day).zfill(2) + '.' + str(data_t.year) 
        insere = 'INSERT INTO COMPRA (CODCOMPRA, CODMOVIMENTO, CODFORNECEDOR, DATACOMPRA, DATAVENCIMENTO, STATUS, NOTAFISCAL) \
           VALUES (%s, %s, %s, \'%s\', \'%s\', %s, %s )'\
           % (row[0], row[1], row[2], data_t, row[4], row[5], row[6]) 
        print insere 
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])
        cur2.execute(insere)  

if cadastra > 0:
    print ' Cadastrado %s compras.' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit() 

######## FIM DO IMPORTA COMPRAS

######## IMPORTAR VENDAS
cur.execute("select v.CODVENDA, v.CODMOVIMENTO, v.CODCLIENTE,  v.DATAVENDA, v.DATAVENCIMENTO, v.STATUS, v.NOTAFISCAL \
        from venda v, movimento m where m.codmovimento = v.codmovimento and v.codmovimento > 52579  AND m.CODNATUREZA IN (4, 7)")  

for row in cur.fetchall():
    cadastra = 0
    sql = 'SELECT codvenda from venda where codvenda = %s' % (str(row[0]))
    cur2.execute(sql)   
    #import pudb;pu.db
    if not len(cur2.fetchall()):
        cadastra += 1
        data_t = row[3]
        #data_ini = str(data_t.month).zfill(2) + '.' + str(data_t.day).zfill(2) + '.' + str(data_t.year) 
        insere = 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO, STATUS, NOTAFISCAL) \
           VALUES (%s, %s, %s, \'%s\', \'%s\', %s, %s )'\
           % (row[0], row[1], row[2], data_t, row[4], row[5], row[6])
        print insere 
        print ' Cadastrando : %s - %s' % (str(row[0]), row[1])
        cur2.execute(insere)  

if cadastra > 0:
    print ' Cadastrado %s vendas.' % (str(cadastra))
else:
    print 'Nenhum cadastro a ser feito.'
con_2.commit() 

######## FIM DO IMPORTA VENDAS
"""
