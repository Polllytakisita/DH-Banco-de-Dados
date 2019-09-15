/* Indicando qual banco de dados iremos trabalhar */
use dh_sistema;

/* Criando tabela testes */
create table testes (
	id int(11) primary key auto_increment not null,
    namea varchar(20),
    aok varchar(20)
);

/* Alter table - ADD - adicionando coluna nova a uma tabela existente */
alter table testes add email varchar(20);

/* Descrever informações da tabela */
describe testes;

/* Alter table - MODIFY - alterando tipo primitivo de uma coluna */
alter table testes modify aok integer(9);

/* Alter table - CHANGE - alterando nome da coluna e tipo primitivo */
alter table testes change aok telefone integer(9);

/* Alter table - CHANGE - alterando nome da coluna e tipo primitivo */
alter table testes change namea name varchar(20);

/* Alter table - RENAME to - alterando nome da tabela testes para usuarios */
alter table testes rename to usuarios;

/* Alter table - DROP - eliminando coluna de uma tabela */
alter table usuarios drop telefone;

/* Inserindo registros na tabela cursos, informando colunas e 
valores respectivos para estas colunas */
insert into cursos (descricao) values 
('Mobile IOS'), ('Data Analytics'), ('GND'), ('Marketing Digital');

/* Alterando tipo primitivo da coluna cpf para char */
alter table professores modify cpf char(11);

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

/* Alterando tipo primitido da coluna cpf para char */
alter table alunos modify cpf char(11);

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
(5, 1, 2, 1), (6, 1, 2, 1), (7, 4, 8, 2), (8, 4, 8, 2),
(9, 4, 8, 2), (10, 4, 8, 2), (11, 4, 8, 2), (12, 4, 8, 2),
(13, 2, 2, 3), (14, 2, 2, 3), (15, 2, 2, 3), (16, 2, 2, 3), 
(17, 2, 2, 3), (18, 2, 2, 3), (19, 5, 8, 4), (20, 5, 8, 4),
(21, 5, 8, 4), (22, 5, 8, 4), (23, 5, 8, 4), (24, 5, 8, 4),
(25, 3, 1, 5), (26, 3, 1, 5), (27, 3, 1, 5), (28, 3, 1, 5), 
(29, 3, 1, 5), (30, 3, 1, 5);

/* inserindo registro na tabela usuarios */
insert into usuarios (name, email) values
('De', 'de@gmail.com'), ('Do', 'do@gmail');

/* Alterando registros - UPDATE */
/* Desta forma altera todos os registros da tabela usuarios
, de modo que a coluna name de todos registro passará a ser Abirosvaldo */
update usuarios set name = 'Abirosvaldo';

/* Altera apenas o registro que foi indicado na cláusula where */
update usuarios set name = 'Abiro',
email = 'osvaldo@gmail.com' where id = 1;

update usuarios set name = 'Bira',
email = 'bira@gmail.com' where id = 2;

/* Excluindo resgistros - DELETE */
/* Desta forma exclui todos registros da tabela usuários */
delete from usuarios;

/* Desta forma exclui apenas registro indicado na cláusula where */
delete from usuarios where id = 3;

/* Excluindo todos registros da tabela e resetando a mesma */
truncate usuarios;

/* Exibindo / Listando registros - SELECT */

/* Listando todas colunas de uma tabela */
select * from professores;

/* Listando apenas campos informados de uma tabela */
select nome, cpf from professores;

/* Listando registros utilizando cláusula WHERE - que 
indica o filtro que queremos criar para nossa consulta */
select * from alunos
where (id <= 5) or (id >= 10 and id <= 15) or (id >= 25 and id <= 30);

/* BETWEEN - indicamos um intervalo entre dois valores
para efetuar nossa consulta */
select * from alunos
where id <= 5 or (id between 10 and 15) or (id between 25 and 30);

/* IN - Indicamos os valores que serão exibidos na consulta */
select * from alunos where id in (1,3,5,7,9);

/* LIMT - Indicamos quantidade de registros
que serão exibidos na consulta */
select * from alunos limit 2;

/* ORDER BY - Indicamos que queremos ordenar
 os registros de forma crescente / decrescente 
 ou alfabética. */
 
 /* ORDER BY ASC - ordena de forma crescente 
 (select comum já ordena desta forma como um padrão) */
 select * from alunos
 order by id asc;
 
 /* ORDER BY DESC - ordena de forma decrescente */
 select * from alunos
 order by id desc;
 
 /* Ordenando de forma alfabética - ASC */
 select * from alunos
 order by nome asc;
 
  /* Ordenando de forma alfabética - DESC */
 select * from alunos
 order by nome desc;
 
 /* Exibindo último registro da tabela com ORDER BY e LIMIT */
 select * from alunos
 order by id desc
 limit 1;