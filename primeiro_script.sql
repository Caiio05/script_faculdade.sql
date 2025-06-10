Show databases;

create database db_sistema_de_pedidos  


use database db_sistema_de_pedidos;

show tables;

create table tbl_cor( id int,not null,primary key 
nome_cor varchar(45),not null,unique indexes(id));

create table tbl_produto ( id int not null primary key auto_increment
	nome(varchar 10) not null,
    descricao(varchar 45) text
    valor_compra float,not null
    valor_venda float,
    qtde int,not null
    
    unique index(id)
   )

# criacao de relacionamento entre as tabelas
create table  tbl_cor_produto(
id int not null primary key auto_increment
id cor int not null
id produto int not null
 constraint produto_produto_cor
 foreign key id produto
 references produto.id,
constraint FK cor_produto_cor
foreign key (id_cor)
references tbl_cor (id)

unique index(id)

)
desc tbl_cor




