/*Busque todos os alunos que não tenham nenhuma matrícula nos cursos*/
select aluno.nome from aluno where not exists (select matricula.id from matricula where matricula.aluno_id = aluno.id);

/*Busque todos os alunos que não tiveram nenhuma matrícula no último ano, usando a instrução EXISTS*/
select a.nome from aluno a where not exists (
    select m.id from matricula m where a.id = m.id and M.DATA > (select sysdate - interval '1' year from dual));

/*Busque todos os alunos que não tiveram nenhuma matrícula no ano de 2015, usando a instrução EXISTS*/
select a.nome from aluno a where not exists ( select m.id from matricula m 
    where m.aluno_id = a.id and m.data < '01-01-2015' );

-------------------------------------------------------------------------------------------------------------
/*Exiba a média das notas por curso.*/
select c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
group by c.nome;

/*Selecione o curso e as médias de notas, levando em conta somente alunos que tenham "Silva" ou "Santos" no sobrenome.*/
select c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id 
    join aluno a on a.id = r.aluno_id
    where a.nome like '%Silva%' or
    a.nome like '%Santos%'
group by c.nome;

/*Conte a quantidade de respostas por exercício*/
select e.pergunta ,count(r.id) from exercicio e
    join resposta r on (r.exercicio_id = e.id)
    group by e.pergunta; 
    
/*Pegue a resposta do exercício anterior, e ordene por número de respostas, em ordem decrescente.*/
select e.pergunta ,count(r.id) from exercicio e
    join resposta r on (r.exercicio_id = e.id)
    group by e.pergunta order by count(r.id) desc; 
    
/*Podemos agrupar por mais de um campo de uma só vez. Por exemplo, se quisermos a média de notas por aluno por curso*/
select a.nome, c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
    join aluno a on a.id = r.aluno_id
group by a.nome, c.nome;

-------------------------------------------------------------------------------------------------------------
select a.nome, c.nome, avg(n.nota) as media from aluno a 
    join resposta r on (r.id = n.reposta_id) 
    join exercicio e on(e.id = r.exercicio_id)
    join secao s on (s.id = e.secao_id)
    join curso c on (c.id = s.curso_id) 
    join nota n on (n.id)




