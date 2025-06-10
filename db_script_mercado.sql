show databases;

create database db_script_mercado;

use db_script_mercado;

show tables;

create table tbl_cliente(
id_cliente int primary key auto_increment,
nome varchar(100) not null,
telefone varchar(20),
email varchar(225)
);
create table tbl_fornecedor(
id_fornecedor int primary key auto_increment,
nome_fornecedor varchar(45) not null,
cnpj float not null,
endereco varchar(45) not null
);
create table tbl_pedidos(
id_pedidos int primary key auto_increment,
valor_total float not null,
status_pedido varchar(45) not null,
data_pedidos date not null
);
create table tbl_pedidos_cliente(
  id int not null primary key auto_increment,
  id_cliente int not null,
  id_pedido int not null
  );
 alter table tbl_pedidos_cliente add constraint foreign key(id_cliente)references tbl_cliente(id_cliente);
  
create table tbl_telefone(
id_telefone int primary key auto_increment,
telefone varchar(11) not null,
id_cliente varchar(45) not null
);
 create table tbl_telefone_cliente(
 id int not null primary key auto_increment,
 id_telefone int not null,
 id_cliente int not null
 );
 alter table tbl_telefone_cliente add constraint foreign key(id_cliente)references tbl_cliente(id_cliente);
 
 create table tbl_endereco(
 id_endereco int primary key auto_increment,
 logradouro varchar(45) not null,
 cep varchar(45) not null,
 bairro varchar(45) not null,
 cidade varchar(45) not null,
 estado varchar(45) not null
 );
 create table tbl_endereco_cliente(
 id int not null primary key auto_increment,
 id_cliente int not null,
 id_endereco int not null
 );
 alter table tbl_endereco_cliente add constraint foreign key(id_cliente)references tbl_cliente(id_cliente);
 
 create table tbl_email(
 id_email int primary key auto_increment,
 email varchar(225)not null
 );
 
 create table tbl_cliente_email(
 id int not null primary key auto_increment,
 id_cliente int not null,
 id_email int not null
 );
 alter table tbl_cliente_email add constraint foreign key(id_cliente)references tbl_cliente(id_cliente);
 
 create table tbl_produto(
 id_produto int primary key auto_increment,
 nome varchar(20) not null,
 descricao varchar(45) not null,
 preco int not null
 );
 
 create table tbl_produto_fornecedor(
 id int not null primary key auto_increment,
 id_fornecedor int not null,
 id_produto int not null
 );
 alter table tbl_produto_fornecedor add constraint foreign key(id_fornecedor)references tbl_fornecedor(id_fornecedor);
 
 create table tbl_estoque(
 id_estoque int not null primary key auto_increment,
 prateleira varchar(45) not null,
 lote_produto int not null
 );
 
 create table tbl_estoque_produto(
 id int not null primary key auto_increment,
 id_estoque int not null,
 id_produto int not null
 );
 alter table tbl_estoque_produto add constraint foreign key(id_produto)references tbl_produto(id_produto);
 
 create table tbl_forma_de_pagamento(
 id_pagamento int not null primary key auto_increment,
 pedido varchar(45) not null,
 data_pagamento varchar(45) not null,
 status_pagamento varchar(45) not null,
 valor int not null
 );
 
 create table tbl_forma_de_pagamento_cliente(
 id int not null primary key auto_increment,
 id_forma_de_pagamento int not null,
 id_cliente int not null
);
	alter table tbl_forma_de_pagamento_cliente add constraint foreign key(id_cliente)references tbl_cliente(id_cliente);
    
create table tbl_vendas(
id_vendas int not null primary key auto_increment,
data_venda date not null,
valor_total float not null
);
    
create table tbl_forma_de_pagamento_vendas(
id int not null primary key auto_increment,
id_forma_de_pagamento int not null,
id_vendas int not null
);
    alter table tbl_forma_de_pagamento_vendas add constraint foreign key(id_forma_de_pagamento) references tbl_forma_de_pagamento(id_forma_de_pagamento);
    
create table tbl_colaborador(
id_colaborador int not null primary key auto_increment,
cargo varchar(15) not null,
nome varchar(45) not null,
data_colaboracao date not null
);

create table tbl_colaborador_vendas(
id int not null primary key auto_increment,
id_colaborador int not null,
id_vendas int not null
);
	alter table tbl_colaborador_vendas add constraint foreign key(id_vendas) references tbl_vendas(id_vendas);
    
create table tbl_contato(
id_contato int not null primary key auto_increment,
nome_cliente varchar(45) not null,
nome_colaborador varchar(45) not null
);

create table tbl_contato_colaborador(
id int not null primary key auto_increment,
id_contato int not null,
id_colaborador int not null
);
	alter table tbl_contato_colaborador add constraint foreign key(id_colaborador) references tbl_colaborador(id_colaborador); 




    
    
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 

 
 
 
 
 

















