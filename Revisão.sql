use dh_sistema;

/* INNER JOIN - Exibe registros que possuam correspondência */

/* Neste caso queremos registros que possuam correspondência 
entre a coluna id_alunos da tabela turmas_geradas e a coluna id
da tabela alunos */

/* turmas_geradas INNER JOIN alunos */
select tg.id_alunos, a.nome from turmas_geradas as tg
inner join alunos as a on (tg.id_alunos = a.id);

/* LEFT JOIN - Exibe todos os registros da tabela A
ou tabela que está a esquerda na query e exibe o
que existir de correspondência na tabela a direita */

/* No left join a tabela que esta a esquerda no select 
que é a tabela alunos, irá exibir todas as informações
mesmo que não tenha aluno com o id vinculado na tabela
turmas_geradas */

/* alunos LEFT JOIN turmas_geradas */
select a.nome, tg.id_alunos from alunos as a
left join turmas_geradas as tg on (a.id = tg.id_alunos);

/* RIGHT JOIN - Exibe todos os registros da tabela B
ou tabela que está a direita na query e exibe o que 
existir de correspondência na tabela a esqueda */

use dh_sistema;

/* INNER JOIN - Exibe registros que possuam correspondência */

/* Neste caso queremos registros que possuam correspondência 
entre a coluna id_alunos da tabela turmas_geradas e a coluna id
da tabela alunos */

/* turmas_geradas INNER JOIN alunos */
select tg.id_alunos, a.nome from turmas_geradas as tg
inner join alunos as a on (tg.id_alunos = a.id);

/* LEFT JOIN - Exibe todos os registros da tabela A
ou tabela que está a esquerda na query e exibe o
que existir de correspondência na tabela a direita */

/* No left join a tabela que esta a esquerda no select 
que é a tabela alunos, irá exibir todas as informações
mesmo que não tenha aluno com o id vinculado na tabela
turmas_geradas */

/* alunos LEFT JOIN turmas_geradas */
select a.nome, tg.id_alunos from alunos as a
left join turmas_geradas as tg on (a.id = tg.id_alunos);

/* RIGHT JOIN - Exibe todos os registros da tabela B
ou tabela que está a direita na query e exibe o que 
existir de correspondência na tabela a esqueda */

/* No right join a tabela que esta a direita no select 
que é a tabela turmas_geradas, irá exibir todas as informações
mesmo que não tenha aluno com o id vinculado na tabela
alunos */

/* alunos RIGHT JOIN turmas_geradas */
select tg.id_alunos, a.nome from alunos as a 
right join turmas_geradas as tg on (a.id = tg.id_alunos);

/* para termos resultado no right join iremos adicionar um aluno
para futuramente vincular este aluno a um registro na tabela
turmas_geradas */
insert into alunos (nome, email, cpf)
values ('Abigail', 'abigail@gmail.com', '12345678910');

/* iremos verificar o último registro inserido na tabela alunos */
select * from alunos 
order by id desc 
limit 1;

/* inserindo registro na tabelas turmas_geradas */
insert into turmas_geradas 
(id_alunos, id_professores, id_cursos, id_turmas)
values (35, 1, 1, 1);

/* desativar verificação de chave estrangeira */
set foreign_key_checks = 0;

/* excluindo registro da tabela alunos após 
desativar verificação de chave estrangeira */
delete from alunos where id = 35;

/* alunos RIGHT JOIN turmas_geradas */
select tg.id_alunos, a.nome from alunos as a 
right join turmas_geradas as tg on (a.id = tg.id_alunos);

/* REVISÂO GERAL */

/* Criando Banco de Dados */
create database biblioteca;

/* Indicando qual Banco de Dados iremos utilizar */
use biblioteca;

/* Criando tabela Autores */
create table autores (
	id int(11) primary key not null auto_increment,
    nome varchar(50),
    nacionalidade varchar(50)
);

/* Criando tabela Generos */
create table generos (
	id int(11) primary key not null auto_increment,
	descricao varchar(30)
);

/* Criando tabela Livros */
create table livros (
	id int(11) primary key not null auto_increment,
    titulo varchar(50),
    id_autor int(11),
    id_genero int(11),
    foreign key (id_autor) references autores(id),
	foreign key (id_genero) references generos(id)
);

/* Inserindo registros na tabela Autores */
insert into autores (nome, nacionalidade) values 
('Abirosvaldo', 'Jamaica'), ('Marley', 'Inglaterra'),
('Carlos', 'Argentina'), ('Pablo', 'Venezuela'),
('Washington', 'Brasileiro'), ('Rotscniv', 'Holanda');

/* Inserindo registros na tabela Generos */
insert into generos (descricao) values
('Investigação Criminal'), ('Terror'), ('Suspense'),
('Ficção Científica'), ('Ação'), ('Aventura');

/* Inserindo registros na tabela Livros */
insert into livros (titulo, id_autor, id_genero) values
('Alquimista', 1, 1), ('100 anos de solidão', 2, 2), 
('A sútil arte de ligar o foda-se', 3, 3),
('A menina que roubava livros', 4, 4), 
('Senhor dos Anéis', 5, 5), ('300', 6, 6),
('Teste', 7, 7), ('Teste 2', 8, 8);

/* INNER JOIN - livros x autores x generos */
select l.titulo, a.nome, a.nacionalidade, g.descricao from livros l
inner join autores a on (l.id_autor = a.id)
inner join generos g on (l.id_genero = g.id);

/* LEFT JOIN - generos x livros */
select g.descricao, l.id_genero from generos g
left join livros l on (g.id = l.id_genero);

/* RIGHT JOIN - generos x livros */
select g.descricao, l.id_genero from generos g
right join livros l on (g.id = l.id_genero);