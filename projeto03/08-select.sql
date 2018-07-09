/*Busque todos os alunos que não tenham nenhuma matrícula nos cursos*/
select aluno.nome from aluno where not exists (select matricula.id from matricula where matricula.aluno_id = aluno.id);

-------------------------------------------------------------------------------------------------------------
/*Busque todos os alunos que não tiveram nenhuma matrícula no último ano, usando a instrução EXISTS*/
select a.nome from aluno a where not exists (
    select m.id from matricula m where a.id = m.id and M.DATA > (select sysdate - interval '1' year from dual));

-------------------------------------------------------------------------------------------------------------
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

-------------------------------------------------------------------------------------------------------------
/*Selecione o curso e as médias de notas, 
levando em conta somente alunos que tenham "Silva" ou "Santos" no sobrenome.*/
select c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id 
    join aluno a on a.id = r.aluno_id
    where a.nome like '%Silva%' or
    a.nome like '%Santos%'
group by c.nome;

-------------------------------------------------------------------------------------------------------------
/*Conte a quantidade de respostas por exercício*/
select e.pergunta ,count(r.id) from exercicio e
    join resposta r on (r.exercicio_id = e.id)
    group by e.pergunta; 
    
-------------------------------------------------------------------------------------------------------------
/*Pegue a resposta do exercício anterior, e ordene por número de respostas, em ordem decrescente.*/
select e.pergunta ,count(r.id) from exercicio e
    join resposta r on (r.exercicio_id = e.id)
    group by e.pergunta order by count(r.id) desc; 
    
-------------------------------------------------------------------------------------------------------------
/*Podemos agrupar por mais de um campo de uma só vez. 
Por exemplo, se quisermos a média de notas por aluno por curso*/
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
    join nota n on (n.id);

-------------------------------------------------------------------------------------------------------------
/*Devolva todos os alunos, cursos e a média de suas notas.
Lembre-se de agrupar por aluno e por curso. Filtre também pela nota*/
select a.id as aluno_id, c.id as curso_id, a.nome, a.email, c.nome as curso, avg(n.nota) as media 
    from nota n
    join resposta r on (r.id = n.resposta_id)
    join exercicio e on (e.id = r.exercicio_id)
    join secao s on (s.id = e.secao_id)
    join curso c on (c.id = s.curso_id)
    join aluno a on (a.id = r.aluno_id)
    group by a.nome, c.nome
    having avg(n.nota) < 5;
    
-------------------------------------------------------------------------------------------------------------
/*Exiba todos os cursos e a sua quantidade de matrículas. 
Mas exiba somente cursos que tenham mais de 1 matrícula.*/
select c.nome as curso, count(m.id) as qtd_matriculados from curso c
    inner join matricula m on (m.curso_id = c.id)
    group by c.nome
    having count(m.curso_id) > 1;

-------------------------------------------------------------------------------------------------------------
/*Exiba o nome do curso e a quantidade de seções que existe nele. 
Mostre só cursos com mais de 3 seções.*/
select c.nome as curso, count(s.id) as qtd_secao from curso c 
    join secao s on (s.curso_id = c.id)
    group by c.nome
    having count(s.id) > 3;

-------------------------------------------------------------------------------------------------------------
/*Exiba todos os tipos de matrícula que existem na tabela.*/
select distinct(tipo) from matricula;

-------------------------------------------------------------------------------------------------------------
/*Exiba todos os cursos e a sua quantidade de matrículas.
Mas filtre por matrículas dos tipos PF ou PJ.*/
select c.nome as curso, count(m.id) as quantidade from curso c 
    join matricula m on c.id = m.curso_id
    where m.tipo in ('PAGA_PF', 'PAGA_PJ')
    group by c.nome;
    
-------------------------------------------------------------------------------------------------------------
/*Traga todas os exercícios e a quantidade de respostas de cada uma.
Mas dessa vez, somente dos cursos com ID 1 e 3.*/
select e.pergunta, count(r.id) as quantidade from exercicio e 
    join resposta r on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on s.curso_id = c.id
    where c.id in (1,3)
    group by e.pergunta;

-------------------------------------------------------------------------------------------------------------
/*Exiba a média das notas por aluno por curso, além de 
uma coluna com a diferença entre a média do aluno e a média geral*/
select a.nome, c.nome, avg(n.nota) as media, 
    avg(n.nota) - (select avg(n.nota) from nota n) diferenca 
    from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
    join aluno a on a.id = r.aluno_id
    group by c.nome, a.nome;

-------------------------------------------------------------------------------------------------------------
/*Devolva a média de notas por aluno e a diferença para a média geral.
No entanto, exiba apenas alunos que tiveram alguma matrícula nos últimos 6 meses*/
select a.nome, c.nome, avg(n.nota) as media, avg(n.nota) - (select avg(n.nota) from nota n) as diferenca
    from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
    join aluno a on a.id = r.aluno_id
    where a.id in (select aluno_id from matricula where data > (select sysdate - interval '6' month from dual))
    group by c.nome, a.nome;

-------------------------------------------------------------------------------------------------------------
/*Exiba todos os alunos e suas possíveis respostas. 
Exiba todos os alunos, mesmo que eles não tenham respondido nenhuma pergunta.*/
select a.nome, r.resposta_dada from aluno a 
    left join resposta r on a.id = r.aluno_id;
    
-------------------------------------------------------------------------------------------------------------
/*Exiba agora todos os alunos e suas possíveis respostas para o exercício com ID = 1.*/
/*Exiba todos os alunos, até os que não responderam o exercício.*/
select a.nome, r.resposta_dada from aluno a 
    left join resposta r on a.id = r.aluno_id and r.exercicio_id = 1;
