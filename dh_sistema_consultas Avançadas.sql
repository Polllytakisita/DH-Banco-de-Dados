/* Criando um banco de dados */
create database dh_sistema;
/* Indicando qual banco de dados iremos trabalhar */
use dh_sistema;

/* Criando tabela Professores */
create table professores (
	id int(11) auto_increment primary key not null,
	nome varchar(30),
    email varchar(30),
    cpf char(11) unique
);

/* Criando tabela Alunos */
create table alunos (
	id int(11) auto_increment primary key not null,
	nome varchar(30),
    email varchar(30),
    cpf char(11) unique
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

/* Inserindo registros na tabela cursos, informando colunas e 
valores respectivos para estas colunas */
insert into cursos (descricao) values 
('UX'), ('Data Science'), ('Data Analytics'),
('Mobile Android'), ('Web Full Stack'), ('Mobiel IOS'), 
('GND'), ('Marketing Digital');

/* Inserindo registros na tabela professores, informando colunas e 
valores respectivos para estas colunas */
insert into professores (nome, email, cpf) values
('Marcelo', 'marcelo@digitalhouse.com', 11111111111),
('Victor', 'victor@digitalhouse.com', 22222222222),
('João', 'joao@digitalhouse.com', 33333333333),
('Caio', 'caio@digitalhouse.com', 44444444444),
('Felipe', 'felipe@digitalhouse.com', 55555555555),
('Hendy', 'hendy@digitalhouse.com', 66666666666),
('Jéssica', 'jessica@digitalhouse.com', 77777777777),
('Erica', 'fernando@digitalhouse.com', 88888888888),
('Thomaz', 'thomaz@digitalhouse.com', 99999999999),
('William', 'william@digitalhouse.com', 10101010101);

/* Inserindo registros na tabela alunos */
insert into alunos (nome, email, cpf) values 
('Leonardo', 'leonardo@aluno.com', 00000000001),
('Patrick', 'patrick@aluno.com', 00000000002),
('Poliana', 'poliana@aluno.com', 00000000003),
('Paulo', 'paulo@aluno.com', 00000000004),
('Lais', 'lais@aluno.com', 00000000005),
('Vinicius', 'vinicius@aluno.com', 00000000006),
('Cibele', 'cibele@aluno.com', 00000000007),
('Walburga', 'walburga@aluno.com', 00000000008),
('Sérgio', 'sergio@aluno.com', 00000000009),
('Jorge', 'jorge@aluno.com', 00000000010),
('Diogo', 'poliana@aluno.com', 00000000011),
('Fernando', 'fernando@aluno.com', 00000000012),
('Rodolfo', 'rodolfo@aluno.com', 00000000013),
('Juliano', 'juliano@aluno.com', 00000000014),
('Davi', 'davi@aluno.com', 00000000015),
('Rodrigo', 'rodrigo@aluno.com', 00000000016),
('Eduardo', 'eduardo@aluno.com', 00000000017),
('Renato', 'renato@aluno.com', 00000000018),
('Artur', 'artur@aluno.com', 00000000019),
('Irailton', 'irailton@aluno.com', 00000000020),
('Edney', 'edney@aluno.com', 00000000021),
('Marcelo', 'marcelo@aluno.com', 00000000022),
('Elba', 'elba@aluno.com', 00000000023),
('Harry', 'harry@aluno.com', 00000000024),
('Johnny', 'johnny@aluno.com', 00000000025),
('Jane', 'jane@aluno.com', 00000000026),
('Filomena', 'filomena@aluno.com', 00000000027),
('Abirosvaldo', 'abirosvaldo@aluno.com', 00000000028),
('Janaína', 'janaina@aluno.com', 00000000029),
('Juliana', 'juliana@aluno.com', 00000000030),
('Elton', 'elton@aluno.com', 00000000031),
('Ramiro', 'ramiro@aluno.com', 00000000032);

/* Inserindo registros na tabela turmas */
insert into turmas (descricao) values
('Full Stack 01'), ('Marketing Digital 01'),
('Full Stack Blend 01'), ('Marketing Digital Blend 01'),
('UX 01');

insert into turmas_geradas 
(id_alunos, id_professores, id_cursos, id_turmas) values
(1, 1, 2, 1), (2, 1, 2, 1), (3, 1, 2, 1), (4, 1, 2, 1),
(5, 1, 2, 1), (6, 1, 2, 1),
(7, 4, 8, 2), (8, 4, 8, 2), (9, 4, 8, 2), (10, 4, 8, 2),
(11, 4, 8, 2), (12, 4, 8, 2), (13, 2, 2, 3), (14, 2, 2, 3),
(15, 2, 2, 3), (16, 2, 2, 3), (17, 2, 2, 3), (18, 2, 2, 3),
(19, 5, 8, 4), (20, 5, 8, 4), (21, 5, 8, 4), (22, 5, 8, 4),
(23, 5, 8, 4), (24, 5, 8, 4), (25, 3, 1, 5), (26, 3, 1, 5),
(27, 3, 1, 5), (28, 3, 1, 5), (29, 3, 1, 5), (30, 3, 1, 5);
