show databases;

create database db_sistema_faculdade;

 use db_sistema_faculdade;

show tables;

create table tbl_aluno(
id_aluno int primary key not null auto_increment,
nome_aluno varchar(10) not null,
data_nascimento date not null,
cpf float not null,
endereço varchar(45) not null
);

create table tbl_curso(
id_curso int primary key not null auto_increment,
nome_curso varchar(45) not null,
duração varchar (45) not null
);

create table tbl_telefone(
id_telefone int primary key not null auto_increment,
telefone varchar(11) not null
);

create table tbl_aluno_telefone(
id int primary key not null auto_increment,
id_aluno int not null,
id_telefone int not null
);
alter table tbl_aluno_telefone add constraint foreign key(id_aluno) references tbl_aluno(id_aluno);

create table tbl_professor(
id_professor int primary key not null auto_increment,
nome_professor varchar(45) not null,
email varchar(225) not null,
cpf float not null,
displina varchar(45) not null,
telefone varchar(11) not null,
cargo varchar(45) not null
);

create table tbl_aluno_professor(
id int primary key not null auto_increment,
id_aluno int not null,
id_professor int not null
);
alter table tbl_aluno_professor add constraint foreign key(id_aluno) references tbl_aluno(id_aluno);

create table tbl_turma(
id_turma int primary key not null auto_increment,
N_da_sala decimal not null,
semestre decimal not null
);

create table tbl_aluno_turma(
id int primary key not null auto_increment,
id_aluno int not null,
id_turma int not null
);
alter table tbl_aluno_turma add constraint foreign key (id_aluno) references tbl_aluno(id_aluno);
 
create table tbl_notas(
id_notas int primary key not null auto_increment,
nota_final float not null,
frequencia_aluno varchar(45) not null
);
 
 create table tbl_aluno_notas(
 id int primary key not null auto_increment,
 id_aluno int not null,
 id_turma int not null
 );
 alter table tbl_aluno_notas add constraint foreign key(id_aluno) references tbl_aluno(id_aluno);
 
 create table tbl_disciplina(
 id_disciplina int primary key not null auto_increment,
 nome_disciplina varchar(45) not null,
 carga_horaria varchar(45) not null
 );
 
 create table tbl_curso_disciplina(
 id int primary key not null auto_increment,
 id_curso int not null,
 id_disciplina int not null
 );
 alter table tbl_curso_disciplina add constraint foreign key(id_curso) references tbl_curso(id_curso);
 
 
 
 

 
 
 
 













