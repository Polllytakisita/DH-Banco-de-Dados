/* Criando um banco de dados */
create database dh_sistema;

/* Indicando qual banco de dados iremos trabalhar */
use dh_sistema;

/* Criando tabela Professores */
create table professores (
	id int(11) auto_increment primary key not null,
	nome varchar(30),
    email varchar(30),
    cpf int(11) unique
);

/* Criando tabela Alunos */
create table alunos (
	id int(11) auto_increment primary key not null,
	nome varchar(30),
    email varchar(30),
    cpf int(11) unique
);

/* Criando tabela Cursos */
create table cursos (
	id int(11) auto_increment primary key not null,
    descricao varchar(30)
);

/* Criando tabela Turmas */
create table turmas (
	id int(11) auto_increment primary key not null,
    descricao varchar(30)
);

/* Criando tabela Turmas_geradas */
create table turmas_geradas(
	id int(11) auto_increment primary key not null,
    id_alunos int(11),
    id_professores int(11),
    id_cursos int(11),
    id_turmas int(11)
);

/* Adicionando chave estrangeira na coluna id_alunos */
alter table turmas_geradas add foreign key (id_alunos)
references alunos (id);

/* Adicionando chave estrangeira na coluna id_professores */
alter table turmas_geradas add foreign key (id_professores)
references professores (id);

/* Adicionando chave estrangeira na coluna id_cursos */
alter table turmas_geradas add foreign key (id_cursos)
references cursos (id);

/* Adicionando chave estrangeira na coluna id_turmas */
alter table turmas_geradas add foreign key (id_turmas)
references turmas (id);

/* Excluindo tabela turmas_geradas */
drop table turmas_geradas;

/* Excluindo um banco de dados */
drop database dh_sistema;