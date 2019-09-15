use dh_sistema;

/* Cláusula LIKE */

/* 1º método - utilizando coringa antes do caracter
indicamos que queremos buscar nomes finalizados com a letra O */
select * from alunos
where nome like '%o';

/* 2º método - utilizando coringa depois do caracter
indicamos que queremos buscar nomes iniciados com a letra P */
select * from alunos
where nome like 'p%';

/* 3º método - utilizando o caracter entre coringas
indicamos que queremos buscar nomes que possuam uma letra específica */
select * from alunos
where nome like '%n%';

/* 4º método - utilizando _ como um caracter desconhecido */
select * from alunos
where nome like '____';

/* Busca para exibir nomes com o segundo caracter sendo a letra A */
select * from alunos
where nome like '_a%';

/* Busca para exibir nomes com o último caracter sendo a letra D */
select * from alunos
where nome like '%d_';

/* Busca para exibir o primeiro caracter sendo P 
e o último caracter sendo O */
select * from alunos
where nome like 'p%o';

/* Busca para exibir apenas alunos que possuam gmail */
insert into alunos (nome, email, cpf) values ('Bira', 'bira@gmail.com', '98765432101');
select * from alunos
where email like '%gmail.com';

/* NOT LIKE - utilizando o caracter que não queremos
que o campo específico possua, neste caso estamos efetuando
uma consulta que retornará apenas alunos sem a letra O no nome */
select * from alunos
where nome not like '%o%';

/* Criando tabela test_salarios para trabalhar com funções de agregação */
create table teste_salario (
	id int(11) primary key auto_increment not null,
    nome varchar(20),
    valor decimal(10,2)
);

/* Inserindo registros na tabela teste_salario */
insert into teste_salario (nome, valor) values
('A', 2000), ('B', 4000), 
('C', 1000), ('D', 6000), 
('E', 15000), ('F', 12500.90);

/* COUNT() - retorna quantidade de registros em uma tabela */
select COUNT(*) from teste_salario;

/* MIN() - retorna o registro com valor mínimo em uma coluna */
select MIN(valor) from teste_salario;

/* MAX() - retorna o registro com maior valor em uma coluna */
select MAX(valor) from teste_salario;

/* SUM() - retorna a soma dos valores em uma coluna */
select SUM(valor) from teste_salario;

/* AVG() - retorna a média aritmética dos valores em uma coluna */
select AVG(valor) from teste_salario;

/* GROUP BY - retorna os registros agrupados por uma coluna específica */

/* Agrupando quantidade de alunos por turmas */
select id_turmas as turma, COUNT(*) as qtd_alunos from turmas_geradas
group by id_turmas;

/* Agrupando quantidade de professores lecionando nestas turmas */
select id_professores as professor, id_turmas as turma 
from turmas_geradas
group by id_professores, id_turmas;

/* Alias - Atribuindo apelido a uma coluna da nossa tabela 
para exibir no momento da consulta */

/* Atribuindo apelido turma para a coluna id_turmas e 
apelido professor para a coluna id_professores */
select id_turmas as turma, id_professores as professor
from turmas_geradas;

/* JOINS */

/* INNER JOIN - exibe registros que possuam 
valores correspondentes na tabela A e tabela B */

/* INNER JOIN - turmas_geradas e alunos */
select t.id_alunos, a.nome from turmas_geradas as t
inner join alunos as a on (t.id_alunos = a.id);

/* INNER JOIN - turmas_geradas e professores */
select t.id_professores, p.nome from turmas_geradas as t
inner join professores as p on (t.id_professores = p.id);

/* INNER JOIN - turmas_geradas e cursos */
select t.id_cursos, c.descricao from turmas_geradas as t
inner join cursos as c on (t.id_cursos = c.id);


/* INNER JOIN - turmas_geradas, cursos, professores, alunos, turmas */
select a.nome as Aluno, p.nome as Professor, 
c.descricao as Curso, tu.descricao as Turma
from turmas_geradas as t
inner join alunos as a on (t.id_alunos = a.id)
inner join professores as p on (t.id_professores = p.id)
inner join cursos as c on (t.id_cursos = c.id)
inner join turmas as tu on (t.id_turmas = tu.id);